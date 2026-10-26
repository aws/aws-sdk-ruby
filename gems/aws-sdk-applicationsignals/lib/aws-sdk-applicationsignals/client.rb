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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:applicationsignals)

module Aws::ApplicationSignals
  # An API client for Aws::ApplicationSignals.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ApplicationSignals
    @identifier = :applicationsignals

    add_plugin(::Aws::ApplicationSignals::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ApplicationSignals::EndpointProvider)
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

    # Deletes multiple instrumentation configurations in a single request.
    # Supports two mutually exclusive selection methods:
    # - By scope: Delete all configurations matching a Service + Environment + InstrumentationType
    # - By ARN list: Delete specific configurations by providing a list of resource ARNs
    # @param [Hash, Types::BatchDeleteInstrumentationConfigurationsRequest] params
    # @option params [Types::BatchDeleteDeletionTarget] :deletion_target
    #   The deletion target - either bulk by scope or targeted by ARN list.
    # @example Request syntax with placeholder values
    #   params = {
    #     deletion_target: { # required
    #       # One of:
    #       scope: {
    #         service: "String", # required
    #         environment: "String", # required
    #         instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #       },
    #       resource_arns: {
    #         resource_arns: ["String"], # required
    #         instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.batch_delete_instrumentation_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted_count: 1, # required
    #     successful_deletions: [ # required
    #       {
    #         resource_arn: "String",
    #         signal_type: "String",
    #         location_hash: "String"
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         resource_arn: "String", # required
    #         code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "AccessDeniedException", "InternalServiceException"], # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteInstrumentationConfigurationsResponse]
    def batch_delete_instrumentation_configurations(params = {}, options = {})
      request = build_request(:batch_delete_instrumentation_configurations, params)
      request.send_request(options)
    end

    # <p>Use this operation to retrieve one or more <i>service level objective (SLO) budget reports</i>.</p> <p>An <i>error budget</i> is the amount of time or requests in an unhealthy state that your service can accumulate during an interval before your overall SLO budget health is breached and the SLO is considered to be unmet. For example, an SLO with a threshold of 99.95% and a monthly interval translates to an error budget of 21.9 minutes of downtime in a 30-day month.</p> <p>Budget reports include a health indicator, the attainment value, and remaining budget.</p> <p>For more information about SLO error budgets, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html#CloudWatch-ServiceLevelObjectives-concepts"> SLO concepts</a>.</p>
    # @param [Hash, Types::BatchGetServiceLevelObjectiveBudgetReportInput] params
    # @option params [Time] :timestamp
    #   <p>The date and time that you want the report to be for. It is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
    # @option params [Array<String>] :slo_ids
    #   <p>An array containing the IDs of the service level objectives that you want to include in the report.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     timestamp: Time.now, # required
    #     slo_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_service_level_objective_budget_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     timestamp: Time.now, # required
    #     reports: [ # required
    #       {
    #         arn: "ServiceLevelObjectiveArn", # required
    #         name: "ServiceLevelObjectiveName", # required
    #         evaluation_type: "PeriodBased" # One of: ["PeriodBased", "RequestBased"],
    #         budget_status: "OK" # One of: ["OK", "WARNING", "BREACHED", "INSUFFICIENT_DATA"], # required
    #         attainment: 1.0,
    #         total_budget_seconds: 1,
    #         budget_seconds_remaining: 1,
    #         total_budget_requests: 1,
    #         budget_requests_remaining: 1,
    #         sli: {
    #           sli_metric: { # required
    #             key_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             operation_name: "OperationName",
    #             metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #             metric_data_queries: [ # required
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ],
    #             dependency_config: {
    #               dependency_key_attributes: { # required
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               },
    #               dependency_operation_name: "OperationName", # required
    #             },
    #             metric_source: {
    #               metric_source_key_attributes: { # required
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               },
    #               metric_source_attributes: {
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               }
    #             },
    #             composite_sli_config: {
    #               selection_config: { # required
    #                 type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #                 pattern: "SelectionPattern"
    #               },
    #               components: [{
    #                 # One of:
    #                 operation_name: "OperationName"
    #               }]
    #             }
    #           },
    #           metric_threshold: 1.0, # required
    #           comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"], # required
    #         },
    #         request_based_sli: {
    #           request_based_sli_metric: { # required
    #             key_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             operation_name: "OperationName",
    #             metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #             total_request_count_metric: [ # required
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ],
    #             monitored_request_count_metric: { # required
    #               # One of:
    #               good_count_metric: [
    #                 {
    #                   id: "MetricId", # required
    #                   metric_stat: {
    #                     metric: { # required
    #                       namespace: "Namespace",
    #                       metric_name: "MetricName",
    #                       dimensions: [
    #                         {
    #                           name: "DimensionName", # required
    #                           value: "DimensionValue", # required
    #                         }
    #                       ]
    #                     },
    #                     period: 1, # required
    #                     stat: "Stat", # required
    #                     unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                   },
    #                   expression: "MetricExpression",
    #                   label: "MetricLabel",
    #                   return_data: false,
    #                   period: 1,
    #                   account_id: "AccountId"
    #                 }
    #               ],
    #               bad_count_metric: [
    #                 {
    #                   id: "MetricId", # required
    #                   metric_stat: {
    #                     metric: { # required
    #                       namespace: "Namespace",
    #                       metric_name: "MetricName",
    #                       dimensions: [
    #                         {
    #                           name: "DimensionName", # required
    #                           value: "DimensionValue", # required
    #                         }
    #                       ]
    #                     },
    #                     period: 1, # required
    #                     stat: "Stat", # required
    #                     unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                   },
    #                   expression: "MetricExpression",
    #                   label: "MetricLabel",
    #                   return_data: false,
    #                   period: 1,
    #                   account_id: "AccountId"
    #                 }
    #               ]
    #             },
    #             dependency_config: {
    #               dependency_key_attributes: { # required
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               },
    #               dependency_operation_name: "OperationName", # required
    #             },
    #             metric_source: {
    #               metric_source_key_attributes: { # required
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               },
    #               metric_source_attributes: {
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               }
    #             },
    #             composite_sli_config: {
    #               selection_config: { # required
    #                 type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #                 pattern: "SelectionPattern"
    #               },
    #               components: [{
    #                 # One of:
    #                 operation_name: "OperationName"
    #               }]
    #             }
    #           },
    #           metric_threshold: 1.0,
    #           comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #         },
    #         goal: {
    #           interval: {
    #             # One of:
    #             rolling_interval: {
    #               duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #               duration: 1, # required
    #             },
    #             calendar_interval: {
    #               start_time: Time.now, # required
    #               duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #               duration: 1, # required
    #             }
    #           },
    #           attainment_goal: 1.0,
    #           warning_threshold: 1.0
    #         }
    #       }
    #     ],
    #     errors: [ # required
    #       {
    #         name: "ServiceLevelObjectiveName", # required
    #         arn: "ServiceLevelObjectiveArn", # required
    #         error_code: "ServiceLevelObjectiveBudgetReportErrorCode", # required
    #         error_message: "ServiceLevelObjectiveBudgetReportErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetServiceLevelObjectiveBudgetReportOutput]
    def batch_get_service_level_objective_budget_report(params = {}, options = {})
      request = build_request(:batch_get_service_level_objective_budget_report, params)
      request.send_request(options)
    end

    # <p>Add or remove time window exclusions for one or more Service Level Objectives (SLOs).</p>
    # @param [Hash, Types::BatchUpdateExclusionWindowsInput] params
    # @option params [Array<String>] :slo_ids
    #   <p>The list of SLO IDs to add or remove exclusion windows from.</p>
    # @option params [Array<Types::ExclusionWindow>] :add_exclusion_windows
    #   <p>A list of exclusion windows to add to the specified SLOs. You can add up to 10 exclusion windows per SLO.</p>
    # @option params [Array<Types::ExclusionWindow>] :remove_exclusion_windows
    #   <p>A list of exclusion windows to remove from the specified SLOs. The window configuration must match an existing exclusion window.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     slo_ids: ["String"], # required
    #     add_exclusion_windows: [
    #       {
    #         window: { # required
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         },
    #         start_time: Time.now,
    #         recurrence_rule: {
    #           expression: "Expression", # required
    #         },
    #         reason: "ExclusionReason"
    #       }
    #     ],
    #     remove_exclusion_windows: [
    #       {
    #         window: { # required
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         },
    #         start_time: Time.now,
    #         recurrence_rule: {
    #           expression: "Expression", # required
    #         },
    #         reason: "ExclusionReason"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_exclusion_windows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slo_ids: ["String"], # required
    #     errors: [ # required
    #       {
    #         slo_id: "ServiceLevelObjectiveId", # required
    #         error_code: "ExclusionWindowErrorCode", # required
    #         error_message: "ExclusionWindowErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateExclusionWindowsOutput]
    def batch_update_exclusion_windows(params = {}, options = {})
      request = build_request(:batch_update_exclusion_windows, params)
      request.send_request(options)
    end

    # <p>Creates a dynamic instrumentation configuration for a specific code or endpoint location within a service and environment. Configurations are immutable after creation.</p> <p>For <code>BREAKPOINT</code> type configurations, they expire after 24 hours unless a shorter expiration is provided. For <code>PROBE</code> type configurations, they persist until explicitly deleted; an expiration cannot be set for <code>PROBE</code> configurations.</p> <p>If a configuration already exists for the same service, environment, signal type, and location, this operation returns a conflict instead of overwriting it. Use attribute filters and capture settings to control where the instrumentation runs and which data is collected.</p>
    # @param [Hash, Types::CreateInstrumentationConfigurationRequest] params
    # @option params [String] :instrumentation_type
    #   Type of instrumentation: BREAKPOINT (temporary) or PROBE (permanent)
    # @option params [String] :service
    #   <p>The name of the service to instrument. This should match the <code>service.name</code> resource attribute reported by the application.</p>
    # @option params [String] :environment
    #   <p>The environment that the service is running in, such as <code>eks:cluster-prod/namespace</code> or <code>ec2:production</code>.</p>
    # @option params [String] :signal_type
    #   <p>The telemetry signal type to emit for this instrumentation. The supported value is <code>SNAPSHOT</code>.</p>
    # @option params [Types::Location] :location
    #   <p>The location where instrumentation should be applied. Specify a <code>CodeLocation</code> for code-level instrumentation.</p>
    # @option params [String] :description
    #   <p>An optional short description (up to 50 characters) that explains the purpose of this instrumentation.</p>
    # @option params [Time] :expires_at
    #   For BREAKPOINT: optional, defaults to 24 hours, must be between 5 min and 24 hours.
    #   For PROBE: not supported. PROBE configurations are permanent and persist until explicitly deleted.
    # @option params [Array<Hash<String, String>>] :attribute_filters
    #   <p>Client-side filters that target specific instances. Each object in the array is AND-matched on its keys, and multiple objects are OR-matched to decide where to apply the instrumentation.</p>
    # @option params [Types::CaptureConfiguration] :capture_configuration
    #   <p>Specifies what to capture when the instrumentation point is hit. Specify <code>CodeCapture</code> for code-level capture settings.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An optional list of key-value pairs to associate with the instrumentation configuration. Tags can help you organize and categorize your resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #     service: "String", # required
    #     environment: "String", # required
    #     signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #     location: { # required
    #       # One of:
    #       code_location: {
    #         language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #         code_unit: "String",
    #         class_name: "String",
    #         method_name: "String",
    #         file_path: "String", # required
    #         line_number: 1
    #       }
    #     },
    #     description: "String",
    #     expires_at: Time.now,
    #     attribute_filters: [
    #       {
    #         "String" => "String"
    #       }
    #     ],
    #     capture_configuration: { # required
    #       # One of:
    #       code_capture: {
    #         capture_arguments: ["String"],
    #         capture_return: false,
    #         capture_stack_trace: false,
    #         capture_locals: ["String"],
    #         capture_limits: { # required
    #           max_hits: 1,
    #           max_string_length: 1,
    #           max_collection_width: 1,
    #           max_collection_depth: 1,
    #           max_stack_frames: 1,
    #           max_stack_trace_size: 1,
    #           max_object_depth: 1,
    #           max_fields_per_object: 1
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_instrumentation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #     service: "String", # required
    #     environment: "String", # required
    #     signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #     location: { # required
    #       # One of:
    #       code_location: {
    #         language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #         code_unit: "String",
    #         class_name: "String",
    #         method_name: "String",
    #         file_path: "String", # required
    #         line_number: 1
    #       }
    #     },
    #     location_hash: "String", # required
    #     description: "String",
    #     expires_at: Time.now,
    #     attribute_filters: [
    #       {
    #         "String" => "String"
    #       }
    #     ],
    #     capture_configuration: { # required
    #       # One of:
    #       code_capture: {
    #         capture_arguments: ["String"],
    #         capture_return: false,
    #         capture_stack_trace: false,
    #         capture_locals: ["String"],
    #         capture_limits: { # required
    #           max_hits: 1,
    #           max_string_length: 1,
    #           max_collection_width: 1,
    #           max_collection_depth: 1,
    #           max_stack_frames: 1,
    #           max_stack_trace_size: 1,
    #           max_object_depth: 1,
    #           max_fields_per_object: 1
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     arn: "InstrumentationConfigurationArn", # required
    #   }
    # @return [Types::CreateInstrumentationConfigurationResponse]
    def create_instrumentation_configuration(params = {}, options = {})
      request = build_request(:create_instrumentation_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a service level objective (SLO), which can help you ensure that your critical business operations are meeting customer expectations. Use SLOs to set and track specific target levels for the reliability and availability of your applications and services. SLOs use service level indicators (SLIs) to calculate whether the application is performing at the level that you want.</p> <p>Create an SLO to set a target for a service or operation’s availability or latency. CloudWatch measures this target frequently you can find whether it has been breached. </p> <p>The target performance quality that is defined for an SLO is the <i>attainment goal</i>.</p> <p>You can set SLO targets for your applications that are discovered by Application Signals, using critical metrics such as latency and availability. You can also set SLOs against any CloudWatch metric or math expression that produces a time series.</p> <note> <p>You can't create an SLO for a service operation that was discovered by Application Signals until after that operation has reported standard metrics to Application Signals.</p> </note> <p>When you create an SLO, you specify whether it is a <i>period-based SLO</i> or a <i>request-based SLO</i>. Each type of SLO has a different way of evaluating your application's performance against its attainment goal.</p> <ul> <li> <p>A <i>period-based SLO</i> uses defined <i>periods</i> of time within a specified total time interval. For each period of time, Application Signals determines whether the application met its goal. The attainment rate is calculated as the <code>number of good periods/number of total periods</code>.</p> <p>For example, for a period-based SLO, meeting an attainment goal of 99.9% means that within your interval, your application must meet its performance goal during at least 99.9% of the time periods.</p> </li> <li> <p>A <i>request-based SLO</i> doesn't use pre-defined periods of time. Instead, the SLO measures <code>number of good requests/number of total requests</code> during the interval. At any time, you can find the ratio of good requests to total requests for the interval up to the time stamp that you specify, and measure that ratio against the goal set in your SLO.</p> </li> </ul> <p>After you have created an SLO, you can retrieve error budget reports for it. An <i>error budget</i> is the amount of time or amount of requests that your application can be non-compliant with the SLO's goal, and still have your application meet the goal.</p> <ul> <li> <p>For a period-based SLO, the error budget starts at a number defined by the highest number of periods that can fail to meet the threshold, while still meeting the overall goal. The <i>remaining error budget</i> decreases with every failed period that is recorded. The error budget within one interval can never increase.</p> <p>For example, an SLO with a threshold that 99.95% of requests must be completed under 2000ms every month translates to an error budget of 21.9 minutes of downtime per month.</p> </li> <li> <p>For a request-based SLO, the remaining error budget is dynamic and can increase or decrease, depending on the ratio of good requests to total requests.</p> </li> </ul> <p>For more information about SLOs, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-ServiceLevelObjectives.html"> Service level objectives (SLOs)</a>. </p> <p>When you perform a <code>CreateServiceLevelObjective</code> operation, Application Signals creates the <i>AWSServiceRoleForCloudWatchApplicationSignals</i> service-linked role, if it doesn't already exist in your account. This service- linked role has the following permissions:</p> <ul> <li> <p> <code>xray:GetServiceGraph</code> </p> </li> <li> <p> <code>logs:StartQuery</code> </p> </li> <li> <p> <code>logs:GetQueryResults</code> </p> </li> <li> <p> <code>cloudwatch:GetMetricData</code> </p> </li> <li> <p> <code>cloudwatch:ListMetrics</code> </p> </li> <li> <p> <code>tag:GetResources</code> </p> </li> <li> <p> <code>autoscaling:DescribeAutoScalingGroups</code> </p> </li> </ul>
    # @param [Hash, Types::CreateServiceLevelObjectiveInput] params
    # @option params [String] :name
    #   <p>A name for this SLO.</p>
    # @option params [String] :description
    #   <p>An optional description for this SLO.</p>
    # @option params [Types::ServiceLevelIndicatorConfig] :sli_config
    #   <p>If this SLO is a period-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p> <p>You can't specify both <code>RequestBasedSliConfig</code> and <code>SliConfig</code> in the same operation.</p>
    # @option params [Types::RequestBasedServiceLevelIndicatorConfig] :request_based_sli_config
    #   <p>If this SLO is a request-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p> <p>You can't specify both <code>RequestBasedSliConfig</code> and <code>SliConfig</code> in the same operation.</p>
    # @option params [Types::Goal] :goal
    #   <p>This structure contains the attributes that determine the goal of the SLO.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to associate with the SLO. You can associate as many as 50 tags with an SLO. To be able to associate tags with the SLO when you create the SLO, you must have the <code>cloudwatch:TagResource</code> permission.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p>
    # @option params [Array<Types::BurnRateConfiguration>] :burn_rate_configurations
    #   <p>Use this array to create <i>burn rates</i> for this SLO. Each burn rate is a metric that indicates how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    # @option params [Boolean] :create_recommended_slo
    #   <p>Set this to <code>true</code> to create a recommended SLO out of the box. When set to <code>true</code>, you don't need to specify the <code>MetricThreshold</code> or <code>ComparisonOperator</code> in the <code>SliConfig</code> or <code>RequestBasedSliConfig</code>. The default value is <code>false</code>.</p> <p>This is supported for SLOs on a service, service operation, or a dependency.</p>
    # @option params [Boolean] :auto_investigation_enabled
    #   Indicates whether DevOps Agent will automatically investigate this SLO when it is breached
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceLevelObjectiveName", # required
    #     description: "ServiceLevelObjectiveDescription",
    #     sli_config: {
    #       sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #         metric_name: "MetricName",
    #         statistic: "ServiceLevelIndicatorStatistic",
    #         period_seconds: 1,
    #         metric_source: {
    #           metric_source_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           metric_source_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           }
    #         },
    #         metric_data_queries: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   }
    #                 ]
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId"
    #           }
    #         ],
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #         composite_sli_config: {
    #           selection_config: { # required
    #             type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #             pattern: "SelectionPattern"
    #           },
    #           components: [{
    #             # One of:
    #             operation_name: "OperationName"
    #           }]
    #         }
    #       },
    #       metric_threshold: 1.0,
    #       comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #     },
    #     request_based_sli_config: {
    #       request_based_sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #         total_request_count_metric: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   }
    #                 ]
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId"
    #           }
    #         ],
    #         monitored_request_count_metric: {
    #           # One of:
    #           good_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           bad_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ]
    #         },
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #         metric_source: {
    #           metric_source_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           metric_source_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           }
    #         },
    #         metric_name: "MetricName",
    #         composite_sli_config: {
    #           selection_config: { # required
    #             type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #             pattern: "SelectionPattern"
    #           },
    #           components: [{
    #             # One of:
    #             operation_name: "OperationName"
    #           }]
    #         }
    #       },
    #       metric_threshold: 1.0,
    #       comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #     },
    #     goal: {
    #       interval: {
    #         # One of:
    #         rolling_interval: {
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         },
    #         calendar_interval: {
    #           start_time: Time.now, # required
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         }
    #       },
    #       attainment_goal: 1.0,
    #       warning_threshold: 1.0
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     burn_rate_configurations: [
    #       {
    #         look_back_window_minutes: 1, # required
    #       }
    #     ],
    #     create_recommended_slo: false,
    #     auto_investigation_enabled: false
    #   }
    #   options = {}
    #   response = client.create_service_level_objective(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slo: { # required
    #       arn: "ServiceLevelObjectiveArn", # required
    #       name: "ServiceLevelObjectiveName", # required
    #       description: "ServiceLevelObjectiveDescription",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       sli: {
    #         sli_metric: { # required
    #           key_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           operation_name: "OperationName",
    #           metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #           metric_data_queries: [ # required
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           dependency_config: {
    #             dependency_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             dependency_operation_name: "OperationName", # required
    #           },
    #           metric_source: {
    #             metric_source_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             metric_source_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             }
    #           },
    #           composite_sli_config: {
    #             selection_config: { # required
    #               type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #               pattern: "SelectionPattern"
    #             },
    #             components: [{
    #               # One of:
    #               operation_name: "OperationName"
    #             }]
    #           }
    #         },
    #         metric_threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"], # required
    #       },
    #       request_based_sli: {
    #         request_based_sli_metric: { # required
    #           key_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           operation_name: "OperationName",
    #           metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #           total_request_count_metric: [ # required
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           monitored_request_count_metric: { # required
    #             # One of:
    #             good_count_metric: [
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ],
    #             bad_count_metric: [
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ]
    #           },
    #           dependency_config: {
    #             dependency_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             dependency_operation_name: "OperationName", # required
    #           },
    #           metric_source: {
    #             metric_source_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             metric_source_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             }
    #           },
    #           composite_sli_config: {
    #             selection_config: { # required
    #               type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #               pattern: "SelectionPattern"
    #             },
    #             components: [{
    #               # One of:
    #               operation_name: "OperationName"
    #             }]
    #           }
    #         },
    #         metric_threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #       },
    #       evaluation_type: "PeriodBased" # One of: ["PeriodBased", "RequestBased"],
    #       goal: { # required
    #         interval: {
    #           # One of:
    #           rolling_interval: {
    #             duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #             duration: 1, # required
    #           },
    #           calendar_interval: {
    #             start_time: Time.now, # required
    #             duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #             duration: 1, # required
    #           }
    #         },
    #         attainment_goal: 1.0,
    #         warning_threshold: 1.0
    #       },
    #       burn_rate_configurations: [
    #         {
    #           look_back_window_minutes: 1, # required
    #         }
    #       ],
    #       metric_source_type: "ServiceOperation" # One of: ["ServiceOperation", "CloudWatchMetric", "ServiceDependency", "AppMonitor", "Canary", "Service"],
    #       auto_investigation_enabled: false
    #     }
    #   }
    # @return [Types::CreateServiceLevelObjectiveOutput]
    def create_service_level_objective(params = {}, options = {})
      request = build_request(:create_service_level_objective, params)
      request.send_request(options)
    end

    # <p>Deletes the grouping configuration for this account. This removes all custom grouping attribute definitions that were previously configured.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_grouping_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupingConfigurationOutput]
    def delete_grouping_configuration(params = {}, options = {})
      request = build_request(:delete_grouping_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified instrumentation configuration. SDKs remove the instrumentation during their next sync after the configuration is deleted or expires.</p>
    # @param [Hash, Types::DeleteInstrumentationConfigurationRequest] params
    # @option params [String] :instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to identify the configuration to delete.
    # @option params [String] :service
    #   Service name for the instrumentation configuration.
    # @option params [String] :environment
    #   Environment name for the instrumentation configuration.
    # @option params [String] :signal_type
    #   Signal type for the instrumentation configuration.
    # @option params [Types::LocationIdentifier] :location_identifier
    #   Location identifier - either full code location or a pre-computed hash.
    # @example Request syntax with placeholder values
    #   params = {
    #     instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #     service: "String", # required
    #     environment: "String", # required
    #     signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #     location_identifier: { # required
    #       # One of:
    #       code_location: {
    #         language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #         code_unit: "String",
    #         class_name: "String",
    #         method_name: "String",
    #         file_path: "String", # required
    #         line_number: 1
    #       },
    #       location_hash: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.delete_instrumentation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_status: "DELETED" # One of: ["DELETED"], # required
    #   }
    # @return [Types::DeleteInstrumentationConfigurationResponse]
    def delete_instrumentation_configuration(params = {}, options = {})
      request = build_request(:delete_instrumentation_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified service level objective.</p>
    # @param [Hash, Types::DeleteServiceLevelObjectiveInput] params
    # @option params [String] :id
    #   <p>The ARN or name of the service level objective to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ServiceLevelObjectiveId", # required
    #   }
    #   options = {}
    #   response = client.delete_service_level_objective(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceLevelObjectiveOutput]
    def delete_service_level_objective(params = {}, options = {})
      request = build_request(:delete_service_level_objective, params)
      request.send_request(options)
    end

    # <p>Returns the details of a single instrumentation configuration identified by service, environment, signal type, and location. Use this to audit or display configuration details.</p>
    # @param [Hash, Types::GetInstrumentationConfigurationRequest] params
    # @option params [String] :instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to identify the configuration to retrieve.
    # @option params [String] :service
    #   Service name for the instrumentation configuration.
    # @option params [String] :environment
    #   Environment name for the instrumentation configuration.
    # @option params [String] :signal_type
    #   Signal type for the instrumentation configuration.
    # @option params [Types::LocationIdentifier] :location_identifier
    #   Location identifier - either full code location or a pre-computed hash.
    # @example Request syntax with placeholder values
    #   params = {
    #     instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #     service: "String", # required
    #     environment: "String", # required
    #     signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #     location_identifier: { # required
    #       # One of:
    #       code_location: {
    #         language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #         code_unit: "String",
    #         class_name: "String",
    #         method_name: "String",
    #         file_path: "String", # required
    #         line_number: 1
    #       },
    #       location_hash: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.get_instrumentation_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: { # required
    #       instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #       service: "String", # required
    #       environment: "String", # required
    #       signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #       location: { # required
    #         # One of:
    #         code_location: {
    #           language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #           code_unit: "String",
    #           class_name: "String",
    #           method_name: "String",
    #           file_path: "String", # required
    #           line_number: 1
    #         }
    #       },
    #       location_hash: "String", # required
    #       description: "String",
    #       expires_at: Time.now,
    #       attribute_filters: [
    #         {
    #           "String" => "String"
    #         }
    #       ],
    #       capture_configuration: { # required
    #         # One of:
    #         code_capture: {
    #           capture_arguments: ["String"],
    #           capture_return: false,
    #           capture_stack_trace: false,
    #           capture_locals: ["String"],
    #           capture_limits: { # required
    #             max_hits: 1,
    #             max_string_length: 1,
    #             max_collection_width: 1,
    #             max_collection_depth: 1,
    #             max_stack_frames: 1,
    #             max_stack_trace_size: 1,
    #             max_object_depth: 1,
    #             max_fields_per_object: 1
    #           }
    #         }
    #       },
    #       created_at: Time.now, # required
    #       arn: "InstrumentationConfigurationArn", # required
    #     }
    #   }
    # @return [Types::GetInstrumentationConfigurationResponse]
    def get_instrumentation_configuration(params = {}, options = {})
      request = build_request(:get_instrumentation_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the status history for a single instrumentation configuration during a specified time range. The response lists when the configuration was ACTIVE, READY, ERROR, or DISABLED.</p> <p>If no status or time window is provided, the operation defaults to ACTIVE events from the last hour.</p>
    # @param [Hash, Types::GetInstrumentationConfigurationStatusRequest] params
    # @option params [String] :instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to identify the configuration to retrieve.
    # @option params [String] :service
    #   Service name for the instrumentation configuration.
    # @option params [String] :environment
    #   Environment name for the instrumentation configuration.
    # @option params [String] :signal_type
    #   Signal type for the instrumentation configuration.
    # @option params [Types::LocationIdentifier] :location_identifier
    #   Location identifier - either full code location or a pre-computed hash.
    # @option params [String] :status
    #   <p>The single status to query for. If omitted, only <code>ACTIVE</code> status events are returned.</p>
    # @option params [Time] :start_time
    #   <p>The start of the time range to retrieve status events for. <code>StartTime</code> and <code>EndTime</code> must both be provided together or both be omitted. When both are omitted, the time range defaults to the last hour.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time range to retrieve status events for. <code>StartTime</code> and <code>EndTime</code> must both be provided together or both be omitted. When both are omitted, the time range defaults to the last hour.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of status events to return in one call. The default is 60.</p>
    # @option params [String] :next_token
    #   <p>Use the token returned by a previous call to retrieve the next page of status events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #     service: "String", # required
    #     environment: "String", # required
    #     signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #     location_identifier: { # required
    #       # One of:
    #       code_location: {
    #         language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #         code_unit: "String",
    #         class_name: "String",
    #         method_name: "String",
    #         file_path: "String", # required
    #         line_number: 1
    #       },
    #       location_hash: "String"
    #     },
    #     status: "READY" # One of: ["READY", "ERROR", "ACTIVE", "DISABLED"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_instrumentation_configuration_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: "String", # required
    #     environment: "String", # required
    #     signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #     location: { # required
    #       # One of:
    #       code_location: {
    #         language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #         code_unit: "String",
    #         class_name: "String",
    #         method_name: "String",
    #         file_path: "String", # required
    #         line_number: 1
    #       }
    #     },
    #     status: "READY" # One of: ["READY", "ERROR", "ACTIVE", "DISABLED"], # required
    #     events: [ # required
    #       {
    #         time: Time.now, # required
    #         error_cause: "FILE_NOT_FOUND" # One of: ["FILE_NOT_FOUND", "METHOD_NOT_FOUND", "LINE_NOT_EXECUTABLE", "OVERLOADED_METHODS", "LANGUAGE_MISMATCH", "RUNTIME_ERROR"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetInstrumentationConfigurationStatusResponse]
    def get_instrumentation_configuration_status(params = {}, options = {})
      request = build_request(:get_instrumentation_configuration_status, params)
      request.send_request(options)
    end

    # <p>Returns information about a service discovered by Application Signals.</p>
    # @param [Hash, Types::GetServiceInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Hash<String, String>] :key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: { # required
    #       key_attributes: { # required
    #         "KeyAttributeName" => "KeyAttributeValue"
    #       },
    #       attribute_maps: [
    #         {
    #           "String" => "String"
    #         }
    #       ],
    #       service_groups: [
    #         {
    #           group_name: "GroupName", # required
    #           group_value: "GroupValue", # required
    #           group_source: "GroupSource", # required
    #           group_identifier: "GroupIdentifier", # required
    #         }
    #       ],
    #       metric_references: [ # required
    #         {
    #           namespace: "Namespace", # required
    #           metric_type: "MetricType", # required
    #           dimensions: [
    #             {
    #               name: "DimensionName", # required
    #               value: "DimensionValue", # required
    #             }
    #           ],
    #           metric_name: "MetricName", # required
    #           account_id: "AwsAccountId"
    #         }
    #       ],
    #       log_group_references: [
    #         {
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         }
    #       ]
    #     },
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     log_group_references: [
    #       {
    #         "KeyAttributeName" => "KeyAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::GetServiceOutput]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Returns information about one SLO created in the account. </p>
    # @param [Hash, Types::GetServiceLevelObjectiveInput] params
    # @option params [String] :id
    #   <p>The ARN or name of the SLO that you want to retrieve information about. You can find the ARNs of SLOs by using the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListServiceLevelObjectives.html">ListServiceLevelObjectives</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ServiceLevelObjectiveId", # required
    #   }
    #   options = {}
    #   response = client.get_service_level_objective(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slo: { # required
    #       arn: "ServiceLevelObjectiveArn", # required
    #       name: "ServiceLevelObjectiveName", # required
    #       description: "ServiceLevelObjectiveDescription",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       sli: {
    #         sli_metric: { # required
    #           key_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           operation_name: "OperationName",
    #           metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #           metric_data_queries: [ # required
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           dependency_config: {
    #             dependency_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             dependency_operation_name: "OperationName", # required
    #           },
    #           metric_source: {
    #             metric_source_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             metric_source_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             }
    #           },
    #           composite_sli_config: {
    #             selection_config: { # required
    #               type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #               pattern: "SelectionPattern"
    #             },
    #             components: [{
    #               # One of:
    #               operation_name: "OperationName"
    #             }]
    #           }
    #         },
    #         metric_threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"], # required
    #       },
    #       request_based_sli: {
    #         request_based_sli_metric: { # required
    #           key_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           operation_name: "OperationName",
    #           metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #           total_request_count_metric: [ # required
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           monitored_request_count_metric: { # required
    #             # One of:
    #             good_count_metric: [
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ],
    #             bad_count_metric: [
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ]
    #           },
    #           dependency_config: {
    #             dependency_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             dependency_operation_name: "OperationName", # required
    #           },
    #           metric_source: {
    #             metric_source_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             metric_source_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             }
    #           },
    #           composite_sli_config: {
    #             selection_config: { # required
    #               type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #               pattern: "SelectionPattern"
    #             },
    #             components: [{
    #               # One of:
    #               operation_name: "OperationName"
    #             }]
    #           }
    #         },
    #         metric_threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #       },
    #       evaluation_type: "PeriodBased" # One of: ["PeriodBased", "RequestBased"],
    #       goal: { # required
    #         interval: {
    #           # One of:
    #           rolling_interval: {
    #             duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #             duration: 1, # required
    #           },
    #           calendar_interval: {
    #             start_time: Time.now, # required
    #             duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #             duration: 1, # required
    #           }
    #         },
    #         attainment_goal: 1.0,
    #         warning_threshold: 1.0
    #       },
    #       burn_rate_configurations: [
    #         {
    #           look_back_window_minutes: 1, # required
    #         }
    #       ],
    #       metric_source_type: "ServiceOperation" # One of: ["ServiceOperation", "CloudWatchMetric", "ServiceDependency", "AppMonitor", "Canary", "Service"],
    #       auto_investigation_enabled: false
    #     }
    #   }
    # @return [Types::GetServiceLevelObjectiveOutput]
    def get_service_level_objective(params = {}, options = {})
      request = build_request(:get_service_level_objective, params)
      request.send_request(options)
    end

    # <p>Returns a list of audit findings that provide automated analysis of service behavior and root cause analysis. These findings help identify the most significant observations about your services, including performance issues, anomalies, and potential problems. The findings are generated using heuristic algorithms based on established troubleshooting patterns.</p>
    # @param [Hash, Types::ListAuditFindingsInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve audit findings for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code> </p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve audit findings for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code> </p>
    # @option params [Array<String>] :auditors
    #   <p>A list of auditor names to filter the findings by. Only findings generated by the specified auditors will be returned.</p> <p>The following auditors are available for configuration:</p> <ul> <li> <p> <code>slo</code> - SloAuditor: Identifies SLO violations and detects breached thresholds during the Assessment phase.</p> </li> <li> <p> <code>operation_metric</code> - OperationMetricAuditor: Detects anomalies in service operation metrics from Application Signals RED metrics during the Assessment phase</p> <note> <p>Anomaly detection is not supported for sparse metrics (those missing more than 80% of datapoints within the given time period).</p> </note> </li> <li> <p> <code>service_quota</code> - ServiceQuotaAuditor: Monitors resource utilization against service quotas during the Assessment phase</p> </li> <li> <p> <code>trace</code> - TraceAuditor: Performs deep-dive analysis of distributed traces, correlating traces with breached SLOs or abnormal RED metrics during the Analysis phase</p> </li> <li> <p> <code>dependency_metric</code> - CriticalPathAuditor: Analyzes service dependency impacts and maps dependency relationships from Application Signals RED metrics during the Analysis phase</p> </li> <li> <p> <code>top_contributor</code> - TopContributorAuditor: Identifies infrastructure-level contributors to issues by analyzing EMF logs of Application Signals RED metrics during the Analysis phase</p> </li> <li> <p> <code>log</code> - LogAuditor: Extracts insights from application logs, categorizing error types and ranking severity by frequency during the Analysis phase</p> </li> <li> <p> <code>change_indicator</code> - ChangeIndicatorAuditor: Detects change events (deployments, configuration changes) that occurred within 10 minutes before and during a detected anomaly, and surfaces them as findings with deployment timestamps in the Analysis phase. When changes are detected, the <code>top_contributor</code> auditor skips its analysis to avoid redundancy.</p> </li> </ul> <note> <p> <code>InitAuditor</code> and <code>Summarizer</code> auditors are not configurable as they are automatically triggered during the audit process.</p> </note>
    # @option params [Array<Types::AuditTarget>] :audit_targets
    #   <p>A list of audit targets to filter the findings by. You can specify services, SLOs, or service operations to limit the audit findings to specific entities.</p>
    # @option params [String] :detail_level
    #   <p>The level of details of the audit findings. Supported values: <code>BRIEF</code>, <code>DETAILED</code>.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of audit findings.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of audit findings to return in one operation. If you omit this parameter, the default of 10 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     auditors: ["String"],
    #     audit_targets: [ # required
    #       {
    #         type: "String", # required
    #         data: { # required
    #           # One of:
    #           service: {
    #             type: "String",
    #             name: "String",
    #             environment: "String",
    #             aws_account_id: "String"
    #           },
    #           slo: {
    #             slo_name: "String",
    #             slo_arn: "String"
    #           },
    #           service_operation: {
    #             service: {
    #               type: "String",
    #               name: "String",
    #               environment: "String",
    #               aws_account_id: "String"
    #             },
    #             operation: "String",
    #             metric_type: "String"
    #           },
    #           canary: {
    #             canary_name: "String", # required
    #           }
    #         }
    #       }
    #     ],
    #     detail_level: "BRIEF" # One of: ["BRIEF", "DETAILED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_audit_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     audit_findings: [ # required
    #       {
    #         key_attributes: { # required
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         auditor_results: [
    #           {
    #             auditor: "String",
    #             description: "String",
    #             data: {
    #               "String" => "String"
    #             },
    #             severity: "CRITICAL" # One of: ["CRITICAL", "HIGH", "MEDIUM", "LOW", "NONE"]
    #           }
    #         ],
    #         operation: "String",
    #         metric_graph: {
    #           metric_data_queries: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           start_time: Time.now,
    #           end_time: Time.now
    #         },
    #         dependency_graph: {
    #           nodes: [
    #             {
    #               key_attributes: { # required
    #                 "KeyAttributeName" => "KeyAttributeValue"
    #               },
    #               name: "String", # required
    #               node_id: "String", # required
    #               operation: "String",
    #               type: "String",
    #               duration: 1.0,
    #               status: "String"
    #             }
    #           ],
    #           edges: [
    #             {
    #               source_node_id: "String",
    #               destination_node_id: "String",
    #               duration: 1.0,
    #               connection_type: "INDIRECT" # One of: ["INDIRECT", "DIRECT"]
    #             }
    #           ]
    #         },
    #         type: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuditFindingsOutput]
    def list_audit_findings(params = {}, options = {})
      request = build_request(:list_audit_findings, params)
      request.send_request(options)
    end

    # <p>Returns a list of change events for a specific entity, such as deployments, configuration changes, or other state-changing activities. This operation helps track the history of changes that may have affected service performance.</p>
    # @param [Hash, Types::ListEntityEventsInput] params
    # @option params [Hash<String, String>] :entity
    #   <p>The entity for which to retrieve change events. This specifies the service, resource, or other entity whose event history you want to examine.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> <li> <p> <code>AwsAccountId</code> specifies the account where this object is in.</p> </li> </ul> <p>Below is an example of a service.</p> <p> <code>{ "Type": "Service", "Name": "visits-service", "Environment": "petclinic-test" }</code> </p> <p>Below is an example of a resource.</p> <p> <code>{ "Type": "AWS::Resource", "ResourceType": "AWS::DynamoDB::Table", "Identifier": "Customers" }</code> </p>
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve change events for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example: <code>1698778057</code> </p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve change events for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example: <code>1698778057</code> </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of change events to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of change events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity: { # required
    #       "KeyAttributeName" => "KeyAttributeValue"
    #     },
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_entity_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     change_events: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         account_id: "AwsAccountId", # required
    #         region: "String", # required
    #         entity: { # required
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         change_event_type: "DEPLOYMENT" # One of: ["DEPLOYMENT", "CONFIGURATION"], # required
    #         event_id: "String", # required
    #         user_name: "String",
    #         event_name: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEntityEventsOutput]
    def list_entity_events(params = {}, options = {})
      request = build_request(:list_entity_events, params)
      request.send_request(options)
    end

    # <p>Returns the current grouping configuration for this account, including all custom grouping attribute definitions that have been configured. These definitions determine how services are logically grouped based on telemetry attributes, Amazon Web Services tags, or predefined mappings.</p>
    # @param [Hash, Types::ListGroupingAttributeDefinitionsInput] params
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of grouping attribute definitions.</p>
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID to retrieve grouping attribute definitions for. Use this when accessing grouping configurations from a different account in cross-account monitoring scenarios.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include grouping attributes from source accounts in the returned data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     aws_account_id: "AwsAccountId",
    #     include_linked_accounts: false
    #   }
    #   options = {}
    #   response = client.list_grouping_attribute_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grouping_attribute_definitions: [ # required
    #       {
    #         grouping_name: "GroupingString", # required
    #         grouping_source_keys: ["GroupingString"],
    #         default_grouping_value: "GroupingString"
    #       }
    #     ],
    #     updated_at: Time.now,
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListGroupingAttributeDefinitionsOutput]
    def list_grouping_attribute_definitions(params = {}, options = {})
      request = build_request(:list_grouping_attribute_definitions, params)
      request.send_request(options)
    end

    # <p>Returns all active instrumentation configurations for a service and environment. SDKs use this operation to sync configurations and apply client-side filters locally.</p> <p>Include the previous <code>SyncedAt</code> value to perform incremental syncs. When no changes are detected, the response sets <code>Changed</code> to <code>false</code> and omits configuration details.</p>
    # @param [Hash, Types::ListInstrumentationConfigurationsRequest] params
    # @option params [String] :service
    #   <p>The name of the service to retrieve instrumentation configurations for.</p>
    # @option params [String] :environment
    #   <p>The environment that the service is running in.</p>
    # @option params [String] :instrumentation_type
    #   Type of instrumentation configuration (BREAKPOINT or PROBE).
    #   Required to determine which backing store to query.
    # @option params [Time] :synced_at
    #   <p>The timestamp from the last successful sync. When provided, the response returns <code>Changed</code> as <code>false</code> if nothing is new since this time, or returns the latest configurations when changes exist.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of configurations to return in one call. The default is 50 and the maximum is 100.</p>
    # @option params [String] :next_token
    #   <p>Use the token returned by a previous call to retrieve the next page of configurations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "String", # required
    #     environment: "String", # required
    #     instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #     synced_at: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_instrumentation_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: "String", # required
    #     environment: "String", # required
    #     changed: false, # required
    #     latest_configurations: [
    #       {
    #         instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #         signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #         location: { # required
    #           # One of:
    #           code_location: {
    #             language: "Java" # One of: ["Java", "Python", "Javascript"], # required
    #             code_unit: "String",
    #             class_name: "String",
    #             method_name: "String",
    #             file_path: "String", # required
    #             line_number: 1
    #           }
    #         },
    #         location_hash: "String", # required
    #         description: "String",
    #         expires_at: Time.now,
    #         attribute_filters: [
    #           {
    #             "String" => "String"
    #           }
    #         ],
    #         capture_configuration: { # required
    #           # One of:
    #           code_capture: {
    #             capture_arguments: ["String"],
    #             capture_return: false,
    #             capture_stack_trace: false,
    #             capture_locals: ["String"],
    #             capture_limits: { # required
    #               max_hits: 1,
    #               max_string_length: 1,
    #               max_collection_width: 1,
    #               max_collection_depth: 1,
    #               max_stack_frames: 1,
    #               max_stack_trace_size: 1,
    #               max_object_depth: 1,
    #               max_fields_per_object: 1
    #             }
    #           }
    #         },
    #         created_at: Time.now, # required
    #         arn: "InstrumentationConfigurationArn", # required
    #       }
    #     ],
    #     synced_at: Time.now, # required
    #     sync_interval: 1, # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::InstrumentationConfigurationsPage]
    def list_instrumentation_configurations(params = {}, options = {})
      request = build_request(:list_instrumentation_configurations, params)
      request.send_request(options)
    end

    # <p>Returns a list of service dependencies of the service that you specify. A dependency is an infrastructure component that an operation of this service connects with. Dependencies can include Amazon Web Services services, Amazon Web Services resources, and third-party services. </p>
    # @param [Hash, Types::ListServiceDependenciesInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested end time will be rounded to the nearest hour.</p>
    # @option params [Hash<String, String>] :key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service dependencies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     service_dependencies: [ # required
    #       {
    #         operation_name: "OperationName", # required
    #         dependency_key_attributes: { # required
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         dependency_operation_name: "OperationName", # required
    #         metric_references: [ # required
    #           {
    #             namespace: "Namespace", # required
    #             metric_type: "MetricType", # required
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ],
    #             metric_name: "MetricName", # required
    #             account_id: "AwsAccountId"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceDependenciesOutput]
    def list_service_dependencies(params = {}, options = {})
      request = build_request(:list_service_dependencies, params)
      request.send_request(options)
    end

    # <p>Returns the list of dependents that invoked the specified service during the provided time range. Dependents include other services, CloudWatch Synthetics canaries, and clients that are instrumented with CloudWatch RUM app monitors.</p>
    # @param [Hash, Types::ListServiceDependentsInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Hash<String, String>] :key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service dependents.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_dependents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     service_dependents: [ # required
    #       {
    #         operation_name: "OperationName",
    #         dependent_key_attributes: { # required
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         dependent_operation_name: "OperationName",
    #         metric_references: [ # required
    #           {
    #             namespace: "Namespace", # required
    #             metric_type: "MetricType", # required
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ],
    #             metric_name: "MetricName", # required
    #             account_id: "AwsAccountId"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceDependentsOutput]
    def list_service_dependents(params = {}, options = {})
      request = build_request(:list_service_dependents, params)
      request.send_request(options)
    end

    # <p>Retrieves all exclusion windows configured for a specific SLO.</p>
    # @param [Hash, Types::ListServiceLevelObjectiveExclusionWindowsInput] params
    # @option params [String] :id
    #   <p>The ID of the SLO to list exclusion windows for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used. </p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ServiceLevelObjectiveId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_level_objective_exclusion_windows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exclusion_windows: [ # required
    #       {
    #         window: { # required
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         },
    #         start_time: Time.now,
    #         recurrence_rule: {
    #           expression: "Expression", # required
    #         },
    #         reason: "ExclusionReason"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceLevelObjectiveExclusionWindowsOutput]
    def list_service_level_objective_exclusion_windows(params = {}, options = {})
      request = build_request(:list_service_level_objective_exclusion_windows, params)
      request.send_request(options)
    end

    # <p>Returns a list of SLOs created in this account.</p>
    # @param [Hash, Types::ListServiceLevelObjectivesInput] params
    # @option params [Hash<String, String>] :key_attributes
    #   <p>You can use this optional field to specify which services you want to retrieve SLO information for.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    # @option params [String] :operation_name
    #   <p>The name of the operation that this SLO is associated with.</p>
    # @option params [Types::DependencyConfig] :dependency_config
    #   <p>Identifies the dependency using the <code>DependencyKeyAttributes</code> and <code>DependencyOperationName</code>. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service level objectives.</p>
    # @option params [Array<String>] :metric_source_types
    #   <p>Use this optional field to only include SLOs with the specified metric source types in the output. Supported types are:</p> <ul> <li> <p>Service operation</p> </li> <li> <p>Service dependency</p> </li> <li> <p>Service</p> </li> <li> <p>CloudWatch metric</p> </li> <li> <p>AppMonitor</p> </li> <li> <p>Canary</p> </li> </ul>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include SLO from source accounts in the returned data. </p> <p>When you are monitoring an account, you can use Amazon Web Services account ID in <code>KeyAttribute</code> filter for service source account and <code>SloOwnerawsaccountID</code> for SLO source account with <code>IncludeLinkedAccounts</code> to filter the returned data to only a single source account. </p>
    # @option params [String] :slo_owner_aws_account_id
    #   <p>SLO's Amazon Web Services account ID.</p>
    # @option params [Types::MetricSource] :metric_source
    #   <p>Identifies the metric source to filter SLOs by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key_attributes: {
    #       "KeyAttributeName" => "KeyAttributeValue"
    #     },
    #     operation_name: "OperationName",
    #     dependency_config: {
    #       dependency_key_attributes: { # required
    #         "KeyAttributeName" => "KeyAttributeValue"
    #       },
    #       dependency_operation_name: "OperationName", # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     metric_source_types: ["ServiceOperation" # One of: ["ServiceOperation", "CloudWatchMetric", "ServiceDependency", "AppMonitor", "Canary", "Service"]],
    #     include_linked_accounts: false,
    #     slo_owner_aws_account_id: "AwsAccountId",
    #     metric_source: {
    #       metric_source_key_attributes: { # required
    #         "KeyAttributeName" => "KeyAttributeValue"
    #       },
    #       metric_source_attributes: {
    #         "KeyAttributeName" => "KeyAttributeValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_service_level_objectives(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slo_summaries: [
    #       {
    #         arn: "ServiceLevelObjectiveArn", # required
    #         name: "ServiceLevelObjectiveName", # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         operation_name: "OperationName",
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #         created_time: Time.now,
    #         evaluation_type: "PeriodBased" # One of: ["PeriodBased", "RequestBased"],
    #         metric_source_type: "ServiceOperation" # One of: ["ServiceOperation", "CloudWatchMetric", "ServiceDependency", "AppMonitor", "Canary", "Service"],
    #         metric_source: {
    #           metric_source_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           metric_source_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           }
    #         },
    #         composite_sli_config: {
    #           selection_config: { # required
    #             type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #             pattern: "SelectionPattern"
    #           },
    #           components: [{
    #             # One of:
    #             operation_name: "OperationName"
    #           }]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceLevelObjectivesOutput]
    def list_service_level_objectives(params = {}, options = {})
      request = build_request(:list_service_level_objectives, params)
      request.send_request(options)
    end

    # <p>Returns a list of the <i>operations</i> of this service that have been discovered by Application Signals. Only the operations that were invoked during the specified time range are returned.</p>
    # @param [Hash, Types::ListServiceOperationsInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested end time will be rounded to the nearest hour.</p>
    # @option params [Hash<String, String>] :key_attributes
    #   <p>Use this field to specify which service you want to retrieve information for. You must specify at least the <code>Type</code>, <code>Name</code>, and <code>Environment</code> attributes.</p> <p>This is a string-to-string map. It can include the following fields.</p> <ul> <li> <p> <code>Type</code> designates the type of object this is.</p> </li> <li> <p> <code>ResourceType</code> specifies the type of the resource. This field is used only when the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Name</code> specifies the name of the object. This is used only if the value of the <code>Type</code> field is <code>Service</code>, <code>RemoteService</code>, or <code>AWS::Service</code>.</p> </li> <li> <p> <code>Identifier</code> identifies the resource objects of this resource. This is used only if the value of the <code>Type</code> field is <code>Resource</code> or <code>AWS::Resource</code>.</p> </li> <li> <p> <code>Environment</code> specifies the location where this object is hosted, or what it belongs to.</p> </li> </ul>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     key_attributes: { # required
    #       "KeyAttributeName" => "KeyAttributeValue"
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_service_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     service_operations: [ # required
    #       {
    #         name: "OperationName", # required
    #         metric_references: [ # required
    #           {
    #             namespace: "Namespace", # required
    #             metric_type: "MetricType", # required
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ],
    #             metric_name: "MetricName", # required
    #             account_id: "AwsAccountId"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceOperationsOutput]
    def list_service_operations(params = {}, options = {})
      request = build_request(:list_service_operations, params)
      request.send_request(options)
    end

    # <p>Returns information about the last deployment and other change states of services. This API provides visibility into recent changes that may have affected service performance, helping with troubleshooting and change correlation.</p>
    # @param [Hash, Types::ListServiceStatesInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve service state information for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code>.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve service state information for. When used in a raw HTTP Query API, it is formatted as epoch time in seconds. For example, <code>1698778057</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of service states to return in one operation. If you omit this parameter, the default of 20 is used.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service states.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include service states from source accounts in the returned data.</p>
    # @option params [String] :aws_account_id
    #   <p>The Amazon Web Services account ID to filter service states by. Use this to limit results to services from a specific account.</p>
    # @option params [Array<Types::AttributeFilter>] :attribute_filters
    #   <p>A list of attribute filters to narrow down the services. You can filter by platform, environment, or other service attributes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     include_linked_accounts: false,
    #     aws_account_id: "AwsAccountId",
    #     attribute_filters: [
    #       {
    #         attribute_filter_name: "AttributeFilterName", # required
    #         attribute_filter_values: ["AttributeFilterValue"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_service_states(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     service_states: [ # required
    #       {
    #         attribute_filters: [
    #           {
    #             attribute_filter_name: "AttributeFilterName", # required
    #             attribute_filter_values: ["AttributeFilterValue"], # required
    #           }
    #         ],
    #         service: { # required
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         latest_change_events: [ # required
    #           {
    #             timestamp: Time.now, # required
    #             account_id: "AwsAccountId", # required
    #             region: "String", # required
    #             entity: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             change_event_type: "DEPLOYMENT" # One of: ["DEPLOYMENT", "CONFIGURATION"], # required
    #             event_id: "String", # required
    #             user_name: "String",
    #             event_name: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServiceStatesOutput]
    def list_service_states(params = {}, options = {})
      request = build_request(:list_service_states, params)
      request.send_request(options)
    end

    # <p>Returns a list of services that have been discovered by Application Signals. A service represents a minimum logical and transactional unit that completes a business function. Services are discovered through Application Signals instrumentation.</p>
    # @param [Hash, Types::ListServicesInput] params
    # @option params [Time] :start_time
    #   <p>The start of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time period to retrieve information about. When used in a raw HTTP Query API, it is formatted as be epoch time in seconds. For example: <code>1698778057</code> </p> <p>Your requested start time will be rounded to the nearest hour.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used. </p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of services.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to include services from source accounts in the returned data. </p>
    # @option params [String] :aws_account_id
    #   <p>Amazon Web Services Account ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     include_linked_accounts: false,
    #     aws_account_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     service_summaries: [ # required
    #       {
    #         key_attributes: { # required
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         attribute_maps: [
    #           {
    #             "String" => "String"
    #           }
    #         ],
    #         metric_references: [ # required
    #           {
    #             namespace: "Namespace", # required
    #             metric_type: "MetricType", # required
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ],
    #             metric_name: "MetricName", # required
    #             account_id: "AwsAccountId"
    #           }
    #         ],
    #         service_groups: [
    #           {
    #             group_name: "GroupName", # required
    #             group_value: "GroupValue", # required
    #             group_source: "GroupSource", # required
    #             group_identifier: "GroupIdentifier", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicesOutput]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a CloudWatch resource. Tags can be assigned to service level objectives.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to view tags for.</p> <p>The ARN format of an Application Signals SLO is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Creates or updates the grouping configuration for this account. This operation allows you to define custom grouping attributes that determine how services are logically grouped based on telemetry attributes, Amazon Web Services tags, or predefined mappings. These grouping attributes can then be used to organize and filter services in the Application Signals console and APIs.</p>
    # @param [Hash, Types::PutGroupingConfigurationInput] params
    # @option params [Array<Types::GroupingAttributeDefinition>] :grouping_attribute_definitions
    #   <p>An array of grouping attribute definitions that specify how services should be grouped. Each definition includes a friendly name, source keys to derive the grouping value from, and an optional default value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     grouping_attribute_definitions: [ # required
    #       {
    #         grouping_name: "GroupingString", # required
    #         grouping_source_keys: ["GroupingString"],
    #         default_grouping_value: "GroupingString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_grouping_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     grouping_configuration: { # required
    #       grouping_attribute_definitions: [ # required
    #         {
    #           grouping_name: "GroupingString", # required
    #           grouping_source_keys: ["GroupingString"],
    #           default_grouping_value: "GroupingString"
    #         }
    #       ],
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::PutGroupingConfigurationOutput]
    def put_grouping_configuration(params = {}, options = {})
      request = build_request(:put_grouping_configuration, params)
      request.send_request(options)
    end

    # <p>Reports the status of one or more instrumentation configurations from SDK instances. Use this to record when configurations become ready, hit errors, become active, or are disabled by limits.</p> <p>Report <code>READY</code>, <code>ERROR</code>, and <code>DISABLED</code> when the status changes. Report <code>ACTIVE</code> periodically (for example, every minute) while instrumentation is running.</p>
    # @param [Hash, Types::ReportInstrumentationConfigurationStatusRequest] params
    # @option params [String] :service
    #   <p>The service that the reported configurations belong to.</p>
    # @option params [String] :environment
    #   <p>The environment that the service is running in.</p>
    # @option params [Array<Types::InstrumentationConfigurationStatusReport>] :configurations
    #   <p>An array of configuration status reports (up to 100) that include the instrumentation type, signal type, location hash, status, timestamp, and optional error cause.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "String", # required
    #     environment: "String", # required
    #     configurations: [ # required
    #       {
    #         instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #         signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #         location_hash: "String", # required
    #         status: "READY" # One of: ["READY", "ERROR", "ACTIVE", "DISABLED"], # required
    #         time: Time.now, # required
    #         error_cause: "FILE_NOT_FOUND" # One of: ["FILE_NOT_FOUND", "METHOD_NOT_FOUND", "LINE_NOT_EXECUTABLE", "OVERLOADED_METHODS", "LANGUAGE_MISMATCH", "RUNTIME_ERROR"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.report_instrumentation_configuration_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: "String", # required
    #     environment: "String", # required
    #     unprocessed_status_events: [ # required
    #       {
    #         instrumentation_type: "BREAKPOINT" # One of: ["BREAKPOINT", "PROBE"], # required
    #         signal_type: "SNAPSHOT" # One of: ["SNAPSHOT"], # required
    #         location_hash: "String", # required
    #         status: "READY" # One of: ["READY", "ERROR", "ACTIVE", "DISABLED"], # required
    #         time: Time.now, # required
    #         failed_reason: "THROTTLED" # One of: ["THROTTLED", "INTERNAL_ERROR", "VALIDATION_ERROR"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ReportInstrumentationConfigurationStatusResponse]
    def report_instrumentation_configuration_status(params = {}, options = {})
      request = build_request(:report_instrumentation_configuration_status, params)
      request.send_request(options)
    end

    # <p>Enables this Amazon Web Services account to be able to use CloudWatch Application Signals by creating the <i>AWSServiceRoleForCloudWatchApplicationSignals</i> service-linked role. This service- linked role has the following permissions:</p> <ul> <li> <p> <code>xray:GetServiceGraph</code> </p> </li> <li> <p> <code>logs:StartQuery</code> </p> </li> <li> <p> <code>logs:GetQueryResults</code> </p> </li> <li> <p> <code>cloudwatch:GetMetricData</code> </p> </li> <li> <p> <code>cloudwatch:ListMetrics</code> </p> </li> <li> <p> <code>tag:GetResources</code> </p> </li> <li> <p> <code>autoscaling:DescribeAutoScalingGroups</code> </p> </li> </ul> <p>A service-linked CloudTrail event channel is created to process CloudTrail events and return change event information. This includes last deployment time, userName, eventName, and other event metadata.</p> <p>After completing this step, you still need to instrument your Java and Python applications to send data to Application Signals. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Application-Signals-Enable.html"> Enabling Application Signals</a>.</p>
    # @param [Hash, Types::StartDiscoveryInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.start_discovery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartDiscoveryOutput]
    def start_discovery(params = {}, options = {})
      request = build_request(:start_discovery, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch resource, such as a service level objective.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p> <p>You can use the <code>TagResource</code> action with an alarm that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a CloudWatch resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to set tags for.</p> <p>The ARN format of an Application Signals SLO is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value pairs to associate with the alarm.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch resource that you want to delete tags from.</p> <p>The ARN format of an Application Signals SLO is <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:slo:<i>slo-name</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates an existing service level objective (SLO). If you omit parameters, the previous values of those parameters are retained. </p> <p>You cannot change from a period-based SLO to a request-based SLO, or change from a request-based SLO to a period-based SLO.</p>
    # @param [Hash, Types::UpdateServiceLevelObjectiveInput] params
    # @option params [String] :id
    #   <p>The Amazon Resource Name (ARN) or name of the service level objective that you want to update.</p>
    # @option params [String] :description
    #   <p>An optional description for the SLO.</p>
    # @option params [Types::ServiceLevelIndicatorConfig] :sli_config
    #   <p>If this SLO is a period-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p>
    # @option params [Types::RequestBasedServiceLevelIndicatorConfig] :request_based_sli_config
    #   <p>If this SLO is a request-based SLO, this structure defines the information about what performance metric this SLO will monitor.</p> <p>You can't specify both <code>SliConfig</code> and <code>RequestBasedSliConfig</code> in the same operation.</p>
    # @option params [Types::Goal] :goal
    #   <p>A structure that contains the attributes that determine the goal of the SLO. This includes the time period for evaluation and the attainment threshold.</p>
    # @option params [Array<Types::BurnRateConfiguration>] :burn_rate_configurations
    #   <p>Use this array to create <i>burn rates</i> for this SLO. Each burn rate is a metric that indicates how fast the service is consuming the error budget, relative to the attainment goal of the SLO.</p>
    # @option params [Boolean] :auto_investigation_enabled
    #   Indicates whether DevOps Agent will automatically investigate this SLO when it is breached
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ServiceLevelObjectiveId", # required
    #     description: "ServiceLevelObjectiveDescription",
    #     sli_config: {
    #       sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #         metric_name: "MetricName",
    #         statistic: "ServiceLevelIndicatorStatistic",
    #         period_seconds: 1,
    #         metric_source: {
    #           metric_source_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           metric_source_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           }
    #         },
    #         metric_data_queries: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   }
    #                 ]
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId"
    #           }
    #         ],
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #         composite_sli_config: {
    #           selection_config: { # required
    #             type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #             pattern: "SelectionPattern"
    #           },
    #           components: [{
    #             # One of:
    #             operation_name: "OperationName"
    #           }]
    #         }
    #       },
    #       metric_threshold: 1.0,
    #       comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #     },
    #     request_based_sli_config: {
    #       request_based_sli_metric_config: { # required
    #         key_attributes: {
    #           "KeyAttributeName" => "KeyAttributeValue"
    #         },
    #         operation_name: "OperationName",
    #         metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #         total_request_count_metric: [
    #           {
    #             id: "MetricId", # required
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "Namespace",
    #                 metric_name: "MetricName",
    #                 dimensions: [
    #                   {
    #                     name: "DimensionName", # required
    #                     value: "DimensionValue", # required
    #                   }
    #                 ]
    #               },
    #               period: 1, # required
    #               stat: "Stat", # required
    #               unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId"
    #           }
    #         ],
    #         monitored_request_count_metric: {
    #           # One of:
    #           good_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           bad_count_metric: [
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ]
    #         },
    #         dependency_config: {
    #           dependency_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           dependency_operation_name: "OperationName", # required
    #         },
    #         metric_source: {
    #           metric_source_key_attributes: { # required
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           metric_source_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           }
    #         },
    #         metric_name: "MetricName",
    #         composite_sli_config: {
    #           selection_config: { # required
    #             type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #             pattern: "SelectionPattern"
    #           },
    #           components: [{
    #             # One of:
    #             operation_name: "OperationName"
    #           }]
    #         }
    #       },
    #       metric_threshold: 1.0,
    #       comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #     },
    #     goal: {
    #       interval: {
    #         # One of:
    #         rolling_interval: {
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         },
    #         calendar_interval: {
    #           start_time: Time.now, # required
    #           duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #           duration: 1, # required
    #         }
    #       },
    #       attainment_goal: 1.0,
    #       warning_threshold: 1.0
    #     },
    #     burn_rate_configurations: [
    #       {
    #         look_back_window_minutes: 1, # required
    #       }
    #     ],
    #     auto_investigation_enabled: false
    #   }
    #   options = {}
    #   response = client.update_service_level_objective(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slo: { # required
    #       arn: "ServiceLevelObjectiveArn", # required
    #       name: "ServiceLevelObjectiveName", # required
    #       description: "ServiceLevelObjectiveDescription",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       sli: {
    #         sli_metric: { # required
    #           key_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           operation_name: "OperationName",
    #           metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #           metric_data_queries: [ # required
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           dependency_config: {
    #             dependency_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             dependency_operation_name: "OperationName", # required
    #           },
    #           metric_source: {
    #             metric_source_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             metric_source_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             }
    #           },
    #           composite_sli_config: {
    #             selection_config: { # required
    #               type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #               pattern: "SelectionPattern"
    #             },
    #             components: [{
    #               # One of:
    #               operation_name: "OperationName"
    #             }]
    #           }
    #         },
    #         metric_threshold: 1.0, # required
    #         comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"], # required
    #       },
    #       request_based_sli: {
    #         request_based_sli_metric: { # required
    #           key_attributes: {
    #             "KeyAttributeName" => "KeyAttributeValue"
    #           },
    #           operation_name: "OperationName",
    #           metric_type: "LATENCY" # One of: ["LATENCY", "AVAILABILITY"],
    #           total_request_count_metric: [ # required
    #             {
    #               id: "MetricId", # required
    #               metric_stat: {
    #                 metric: { # required
    #                   namespace: "Namespace",
    #                   metric_name: "MetricName",
    #                   dimensions: [
    #                     {
    #                       name: "DimensionName", # required
    #                       value: "DimensionValue", # required
    #                     }
    #                   ]
    #                 },
    #                 period: 1, # required
    #                 stat: "Stat", # required
    #                 unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ],
    #           monitored_request_count_metric: { # required
    #             # One of:
    #             good_count_metric: [
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ],
    #             bad_count_metric: [
    #               {
    #                 id: "MetricId", # required
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "Namespace",
    #                     metric_name: "MetricName",
    #                     dimensions: [
    #                       {
    #                         name: "DimensionName", # required
    #                         value: "DimensionValue", # required
    #                       }
    #                     ]
    #                   },
    #                   period: 1, # required
    #                   stat: "Stat", # required
    #                   unit: "Microseconds" # One of: ["Microseconds", "Milliseconds", "Seconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #                 },
    #                 expression: "MetricExpression",
    #                 label: "MetricLabel",
    #                 return_data: false,
    #                 period: 1,
    #                 account_id: "AccountId"
    #               }
    #             ]
    #           },
    #           dependency_config: {
    #             dependency_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             dependency_operation_name: "OperationName", # required
    #           },
    #           metric_source: {
    #             metric_source_key_attributes: { # required
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             },
    #             metric_source_attributes: {
    #               "KeyAttributeName" => "KeyAttributeValue"
    #             }
    #           },
    #           composite_sli_config: {
    #             selection_config: { # required
    #               type: "EXPLICIT" # One of: ["EXPLICIT", "PREFIX", "REGEX"], # required
    #               pattern: "SelectionPattern"
    #             },
    #             components: [{
    #               # One of:
    #               operation_name: "OperationName"
    #             }]
    #           }
    #         },
    #         metric_threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualTo" # One of: ["GreaterThanOrEqualTo", "GreaterThan", "LessThan", "LessThanOrEqualTo"]
    #       },
    #       evaluation_type: "PeriodBased" # One of: ["PeriodBased", "RequestBased"],
    #       goal: { # required
    #         interval: {
    #           # One of:
    #           rolling_interval: {
    #             duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #             duration: 1, # required
    #           },
    #           calendar_interval: {
    #             start_time: Time.now, # required
    #             duration_unit: "MINUTE" # One of: ["MINUTE", "HOUR", "DAY", "MONTH"], # required
    #             duration: 1, # required
    #           }
    #         },
    #         attainment_goal: 1.0,
    #         warning_threshold: 1.0
    #       },
    #       burn_rate_configurations: [
    #         {
    #           look_back_window_minutes: 1, # required
    #         }
    #       ],
    #       metric_source_type: "ServiceOperation" # One of: ["ServiceOperation", "CloudWatchMetric", "ServiceDependency", "AppMonitor", "Canary", "Service"],
    #       auto_investigation_enabled: false
    #     }
    #   }
    # @return [Types::UpdateServiceLevelObjectiveOutput]
    def update_service_level_objective(params = {}, options = {})
      request = build_request(:update_service_level_objective, params)
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
      context[:gem_name] = 'aws-sdk-applicationsignals'
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
