# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:devopsguru)

module Aws::DevOpsGuru
  # An API client for Aws::DevOpsGuru.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CapstoneControlPlaneService
    @identifier = :devopsguru

    add_plugin(::Aws::DevOpsGuru::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DevOpsGuru::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p> Adds a notification channel to DevOps Guru. A notification channel is used to notify you
    # 			about important DevOps Guru events, such as when an insight is generated. </p>
    #          <p>If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission 
    # 				to send it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. 
    # 				For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html">Permissions 
    # 				for Amazon SNS topics</a>.</p>
    #          <p>If you use an Amazon SNS topic that is encrypted by an Amazon Web Services Key Management Service customer-managed key (CMK), then you must add permissions 
    # 				to the CMK. For more information, see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html">Permissions for 
    # 				Amazon Web Services KMS–encrypted Amazon SNS topics</a>.</p>
    # @param [Hash, Types::AddNotificationChannelRequest] params
    # @option params [Types::NotificationChannelConfig] :config
    #   <p> A <code>NotificationChannelConfig</code> object that specifies what type of
    #   			notification channel to add. The one 
    #         	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     config: { # required
    #       sns: { # required
    #         topic_arn: "TopicArn"
    #       },
    #       filters: {
    #         severities: ["LOW" # One of: ["LOW", "MEDIUM", "HIGH"]],
    #         message_types: ["NEW_INSIGHT" # One of: ["NEW_INSIGHT", "CLOSED_INSIGHT", "NEW_ASSOCIATION", "SEVERITY_UPGRADED", "NEW_RECOMMENDATION"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_notification_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "NotificationChannelId", # required
    #   }
    # @return [Types::AddNotificationChannelResponse]
    def add_notification_channel(params = {}, options = {})
      request = build_request(:add_notification_channel, params)
      request.send_request(options)
    end

    # <p>Deletes the insight along with the associated anomalies, events and recommendations.</p>
    # @param [Hash, Types::DeleteInsightRequest] params
    # @option params [String] :id
    #   <p>The ID of the insight.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "InsightId", # required
    #   }
    #   options = {}
    #   response = client.delete_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInsightResponse]
    def delete_insight(params = {}, options = {})
      request = build_request(:delete_insight, params)
      request.send_request(options)
    end

    # <p> Returns the number of open reactive insights, the number of open proactive insights,
    # 			and the number of metrics analyzed in your Amazon Web Services account. Use these numbers to gauge the
    # 			health of operations in your Amazon Web Services account. </p>
    # @param [Hash, Types::DescribeAccountHealthRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     open_reactive_insights: 1, # required
    #     open_proactive_insights: 1, # required
    #     metrics_analyzed: 1, # required
    #     resource_hours: 1, # required
    #     analyzed_resource_count: 1
    #   }
    # @return [Types::DescribeAccountHealthResponse]
    def describe_account_health(params = {}, options = {})
      request = build_request(:describe_account_health, params)
      request.send_request(options)
    end

    # <p> For the time range passed in, returns the number of open reactive insight that were
    # 			created, the number of open proactive insights that were created, and the Mean Time to Recover (MTTR) for all
    # 			closed reactive insights. </p>
    # @param [Hash, Types::DescribeAccountOverviewRequest] params
    # @option params [Time] :from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    # @option params [Time] :to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_time: Time.now, # required
    #     to_time: Time.now
    #   }
    #   options = {}
    #   response = client.describe_account_overview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reactive_insights: 1, # required
    #     proactive_insights: 1, # required
    #     mean_time_to_recover_in_milliseconds: 1, # required
    #   }
    # @return [Types::DescribeAccountOverviewResponse]
    def describe_account_overview(params = {}, options = {})
      request = build_request(:describe_account_overview, params)
      request.send_request(options)
    end

    # <p> Returns details about an anomaly that you specify using its ID. </p>
    # @param [Hash, Types::DescribeAnomalyRequest] params
    # @option params [String] :id
    #   <p> The ID of the anomaly. </p>
    # @option params [String] :account_id
    #   <p>The ID of the member account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "AnomalyId", # required
    #     account_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.describe_anomaly(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_anomaly: {
    #       id: "AnomalyId",
    #       severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #       status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #       update_time: Time.now,
    #       anomaly_time_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       },
    #       anomaly_reported_time_range: {
    #         open_time: Time.now, # required
    #         close_time: Time.now
    #       },
    #       prediction_time_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       },
    #       source_details: {
    #         cloud_watch_metrics: [
    #           {
    #             metric_name: "CloudWatchMetricsMetricName",
    #             namespace: "CloudWatchMetricsNamespace",
    #             dimensions: [
    #               {
    #                 name: "CloudWatchMetricsDimensionName",
    #                 value: "CloudWatchMetricsDimensionValue"
    #               }
    #             ],
    #             stat: "Sum" # One of: ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"],
    #             unit: "CloudWatchMetricsUnit",
    #             period: 1,
    #             metric_data_summary: {
    #               timestamp_metric_value_pair_list: [
    #                 {
    #                   timestamp: Time.now,
    #                   metric_value: 1.0
    #                 }
    #               ],
    #               status_code: "Complete" # One of: ["Complete", "InternalError", "PartialData"]
    #             }
    #           }
    #         ],
    #         performance_insights_metrics: [
    #           {
    #             metric_display_name: "PerformanceInsightsMetricDisplayName",
    #             unit: "PerformanceInsightsMetricUnit",
    #             metric_query: {
    #               metric: "PerformanceInsightsMetricName",
    #               group_by: {
    #                 group: "PerformanceInsightsMetricGroup",
    #                 dimensions: ["PerformanceInsightsMetricDimension"],
    #                 limit: 1
    #               },
    #               filter: {
    #                 "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #               }
    #             },
    #             reference_data: [
    #               {
    #                 name: "PerformanceInsightsReferenceName",
    #                 comparison_values: {
    #                   reference_scalar: {
    #                     value: 1.0
    #                   },
    #                   reference_metric: {
    #                     metric_query: {
    #                       metric: "PerformanceInsightsMetricName",
    #                       group_by: {
    #                         group: "PerformanceInsightsMetricGroup",
    #                         dimensions: ["PerformanceInsightsMetricDimension"],
    #                         limit: 1
    #                       },
    #                       filter: {
    #                         "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ],
    #             stats_at_anomaly: [
    #               {
    #                 type: "PerformanceInsightsStatType",
    #                 value: 1.0
    #               }
    #             ],
    #             stats_at_baseline: [
    #               {
    #                 type: "PerformanceInsightsStatType",
    #                 value: 1.0
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       associated_insight_id: "InsightId",
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       },
    #       limit: 1.0,
    #       source_metadata: {
    #         source: "AnomalySource",
    #         source_resource_name: "ResourceName",
    #         source_resource_type: "ResourceType"
    #       },
    #       anomaly_resources: [
    #         {
    #           name: "ResourceName",
    #           type: "ResourceType"
    #         }
    #       ],
    #       description: "AnomalyDescription"
    #     },
    #     reactive_anomaly: {
    #       id: "AnomalyId",
    #       severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #       status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #       anomaly_time_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       },
    #       anomaly_reported_time_range: {
    #         open_time: Time.now, # required
    #         close_time: Time.now
    #       },
    #       source_details: {
    #         cloud_watch_metrics: [
    #           {
    #             metric_name: "CloudWatchMetricsMetricName",
    #             namespace: "CloudWatchMetricsNamespace",
    #             dimensions: [
    #               {
    #                 name: "CloudWatchMetricsDimensionName",
    #                 value: "CloudWatchMetricsDimensionValue"
    #               }
    #             ],
    #             stat: "Sum" # One of: ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"],
    #             unit: "CloudWatchMetricsUnit",
    #             period: 1,
    #             metric_data_summary: {
    #               timestamp_metric_value_pair_list: [
    #                 {
    #                   timestamp: Time.now,
    #                   metric_value: 1.0
    #                 }
    #               ],
    #               status_code: "Complete" # One of: ["Complete", "InternalError", "PartialData"]
    #             }
    #           }
    #         ],
    #         performance_insights_metrics: [
    #           {
    #             metric_display_name: "PerformanceInsightsMetricDisplayName",
    #             unit: "PerformanceInsightsMetricUnit",
    #             metric_query: {
    #               metric: "PerformanceInsightsMetricName",
    #               group_by: {
    #                 group: "PerformanceInsightsMetricGroup",
    #                 dimensions: ["PerformanceInsightsMetricDimension"],
    #                 limit: 1
    #               },
    #               filter: {
    #                 "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #               }
    #             },
    #             reference_data: [
    #               {
    #                 name: "PerformanceInsightsReferenceName",
    #                 comparison_values: {
    #                   reference_scalar: {
    #                     value: 1.0
    #                   },
    #                   reference_metric: {
    #                     metric_query: {
    #                       metric: "PerformanceInsightsMetricName",
    #                       group_by: {
    #                         group: "PerformanceInsightsMetricGroup",
    #                         dimensions: ["PerformanceInsightsMetricDimension"],
    #                         limit: 1
    #                       },
    #                       filter: {
    #                         "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #                       }
    #                     }
    #                   }
    #                 }
    #               }
    #             ],
    #             stats_at_anomaly: [
    #               {
    #                 type: "PerformanceInsightsStatType",
    #                 value: 1.0
    #               }
    #             ],
    #             stats_at_baseline: [
    #               {
    #                 type: "PerformanceInsightsStatType",
    #                 value: 1.0
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       associated_insight_id: "InsightId",
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       },
    #       type: "CAUSAL" # One of: ["CAUSAL", "CONTEXTUAL"],
    #       name: "AnomalyName",
    #       description: "AnomalyDescription",
    #       causal_anomaly_id: "AnomalyId",
    #       anomaly_resources: [
    #         {
    #           name: "ResourceName",
    #           type: "ResourceType"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeAnomalyResponse]
    def describe_anomaly(params = {}, options = {})
      request = build_request(:describe_anomaly, params)
      request.send_request(options)
    end

    # <p>Returns the integration status of services that are integrated with DevOps Guru as Consumer
    # 			via EventBridge. The one service that can be integrated with DevOps Guru is Amazon CodeGuru
    # 			Profiler, which can produce proactive recommendations which can be stored and viewed in
    # 			DevOps Guru.</p>
    # @param [Hash, Types::DescribeEventSourcesConfigRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_event_sources_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_sources: {
    #       amazon_code_guru_profiler: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeEventSourcesConfigResponse]
    def describe_event_sources_config(params = {}, options = {})
      request = build_request(:describe_event_sources_config, params)
      request.send_request(options)
    end

    # <p> Returns the most recent feedback submitted in the current Amazon Web Services account and Region.
    # 		</p>
    # @param [Hash, Types::DescribeFeedbackRequest] params
    # @option params [String] :insight_id
    #   <p> The ID of the insight for which the feedback was provided. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId"
    #   }
    #   options = {}
    #   response = client.describe_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_feedback: {
    #       id: "InsightId",
    #       feedback: "VALID_COLLECTION" # One of: ["VALID_COLLECTION", "RECOMMENDATION_USEFUL", "ALERT_TOO_SENSITIVE", "DATA_NOISY_ANOMALY", "DATA_INCORRECT"]
    #     }
    #   }
    # @return [Types::DescribeFeedbackResponse]
    def describe_feedback(params = {}, options = {})
      request = build_request(:describe_feedback, params)
      request.send_request(options)
    end

    # <p> Returns details about an insight that you specify using its ID. </p>
    # @param [Hash, Types::DescribeInsightRequest] params
    # @option params [String] :id
    #   <p> The ID of the insight. </p>
    # @option params [String] :account_id
    #   <p>The ID of the member account in the organization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "InsightId", # required
    #     account_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.describe_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_insight: {
    #       id: "InsightId",
    #       name: "InsightName",
    #       severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #       status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #       insight_time_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       },
    #       prediction_time_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       },
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       },
    #       ssm_ops_item_id: "SsmOpsItemId",
    #       description: "InsightDescription"
    #     },
    #     reactive_insight: {
    #       id: "InsightId",
    #       name: "InsightName",
    #       severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #       status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #       insight_time_range: {
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       },
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       },
    #       ssm_ops_item_id: "SsmOpsItemId",
    #       description: "InsightDescription"
    #     }
    #   }
    # @return [Types::DescribeInsightResponse]
    def describe_insight(params = {}, options = {})
      request = build_request(:describe_insight, params)
      request.send_request(options)
    end

    # <p>Returns active insights, predictive insights, and resource hours analyzed in last
    # 			hour.</p>
    # @param [Hash, Types::DescribeOrganizationHealthRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"]
    #   }
    #   options = {}
    #   response = client.describe_organization_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     open_reactive_insights: 1, # required
    #     open_proactive_insights: 1, # required
    #     metrics_analyzed: 1, # required
    #     resource_hours: 1, # required
    #   }
    # @return [Types::DescribeOrganizationHealthResponse]
    def describe_organization_health(params = {}, options = {})
      request = build_request(:describe_organization_health, params)
      request.send_request(options)
    end

    # <p>Returns an overview of your organization's history based on the specified time range.
    # 			The overview includes the total reactive and proactive insights.</p>
    # @param [Hash, Types::DescribeOrganizationOverviewRequest] params
    # @option params [Time] :from_time
    #   <p> The start of the time range passed in. The start time granularity is at the day
    #   			level. The floor of the start time is used. Returned information occurred after this
    #   			day. </p>
    # @option params [Time] :to_time
    #   <p> The end of the time range passed in. The start time granularity is at the day level.
    #   			The floor of the start time is used. Returned information occurred before this day. If
    #   			this is not specified, then the current day is used. </p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_time: Time.now, # required
    #     to_time: Time.now,
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"]
    #   }
    #   options = {}
    #   response = client.describe_organization_overview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reactive_insights: 1, # required
    #     proactive_insights: 1, # required
    #   }
    # @return [Types::DescribeOrganizationOverviewResponse]
    def describe_organization_overview(params = {}, options = {})
      request = build_request(:describe_organization_overview, params)
      request.send_request(options)
    end

    # <p>Provides an overview of your system's health. If additional member accounts are part
    # 			of your organization, you can filter those accounts using the <code>AccountIds</code>
    # 			field.</p>
    # @param [Hash, Types::DescribeOrganizationResourceCollectionHealthRequest] params
    # @option params [String] :organization_resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account.</p>
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     organization_resource_collection_type: "AWS_CLOUD_FORMATION" # One of: ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_ACCOUNT", "AWS_TAGS"], # required
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #     next_token: "UuidNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_organization_resource_collection_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_formation: [
    #       {
    #         stack_name: "StackName",
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1,
    #           mean_time_to_recover_in_milliseconds: 1
    #         },
    #         analyzed_resource_count: 1
    #       }
    #     ],
    #     service: [
    #       {
    #         service_name: "API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"],
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1
    #         },
    #         analyzed_resource_count: 1
    #       }
    #     ],
    #     account: [
    #       {
    #         account_id: "AwsAccountId",
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1
    #         }
    #       }
    #     ],
    #     next_token: "UuidNextToken",
    #     tags: [
    #       {
    #         app_boundary_key: "AppBoundaryKey",
    #         tag_value: "TagValue",
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1,
    #           mean_time_to_recover_in_milliseconds: 1
    #         },
    #         analyzed_resource_count: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeOrganizationResourceCollectionHealthResponse]
    def describe_organization_resource_collection_health(params = {}, options = {})
      request = build_request(:describe_organization_resource_collection_health, params)
      request.send_request(options)
    end

    # <p> Returns the number of open proactive insights, open reactive insights, and the Mean Time to Recover (MTTR)
    # 			for all closed insights in resource collections in your account. You specify the type of
    # 			Amazon Web Services resources collection. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    # @param [Hash, Types::DescribeResourceCollectionHealthRequest] params
    # @option params [String] :resource_collection_type
    #   <p> An Amazon Web Services resource collection type. This type specifies how analyzed Amazon Web Services resources
    #   			are defined. The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #             Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #         	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_collection_type: "AWS_CLOUD_FORMATION" # One of: ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_TAGS"], # required
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.describe_resource_collection_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloud_formation: [
    #       {
    #         stack_name: "StackName",
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1,
    #           mean_time_to_recover_in_milliseconds: 1
    #         },
    #         analyzed_resource_count: 1
    #       }
    #     ],
    #     service: [
    #       {
    #         service_name: "API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"],
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1
    #         },
    #         analyzed_resource_count: 1
    #       }
    #     ],
    #     next_token: "UuidNextToken",
    #     tags: [
    #       {
    #         app_boundary_key: "AppBoundaryKey",
    #         tag_value: "TagValue",
    #         insight: {
    #           open_proactive_insights: 1,
    #           open_reactive_insights: 1,
    #           mean_time_to_recover_in_milliseconds: 1
    #         },
    #         analyzed_resource_count: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeResourceCollectionHealthResponse]
    def describe_resource_collection_health(params = {}, options = {})
      request = build_request(:describe_resource_collection_health, params)
      request.send_request(options)
    end

    # <p> Returns the integration status of services that are integrated with DevOps Guru.
    # 			The one service that can be integrated with DevOps Guru 
    #       	is Amazon Web Services Systems Manager, which can be used to create an OpsItem for each generated insight. </p>
    # @param [Hash, Types::DescribeServiceIntegrationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_service_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_integration: {
    #       ops_center: {
    #         opt_in_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       logs_anomaly_detection: {
    #         opt_in_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       kms_server_side_encryption: {
    #         kms_key_id: "KMSKeyId",
    #         opt_in_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         type: "CUSTOMER_MANAGED_KEY" # One of: ["CUSTOMER_MANAGED_KEY", "AWS_OWNED_KMS_KEY"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeServiceIntegrationResponse]
    def describe_service_integration(params = {}, options = {})
      request = build_request(:describe_service_integration, params)
      request.send_request(options)
    end

    # <p>Returns an estimate of the monthly cost for DevOps Guru to analyze your Amazon Web Services resources.
    # 			For more information, 
    # 			see <a href="https://docs.aws.amazon.com/devops-guru/latest/userguide/cost-estimate.html">Estimate your 
    # 			Amazon DevOps Guru costs</a> and 
    # 			<a href="http://aws.amazon.com/devops-guru/pricing/">Amazon DevOps Guru pricing</a>.</p>
    # @param [Hash, Types::GetCostEstimationRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.get_cost_estimation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_collection: {
    #       cloud_formation: {
    #         stack_names: ["StackName"]
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: "AppBoundaryKey", # required
    #           tag_values: ["TagValue"], # required
    #         }
    #       ]
    #     },
    #     status: "ONGOING" # One of: ["ONGOING", "COMPLETED"],
    #     costs: [
    #       {
    #         type: "ResourceType",
    #         state: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         count: 1,
    #         unit_cost: 1.0,
    #         cost: 1.0
    #       }
    #     ],
    #     time_range: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     },
    #     total_cost: 1.0,
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::GetCostEstimationResponse]
    def get_cost_estimation(params = {}, options = {})
      request = build_request(:get_cost_estimation, params)
      request.send_request(options)
    end

    # <p> Returns lists Amazon Web Services resources that are of the specified resource collection type.
    # 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. </p>
    # @param [Hash, Types::GetResourceCollectionRequest] params
    # @option params [String] :resource_collection_type
    #   <p> The type of Amazon Web Services resource collections to return. The one valid value is
    #   				<code>CLOUD_FORMATION</code> for Amazon Web Services CloudFormation stacks. </p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_collection_type: "AWS_CLOUD_FORMATION" # One of: ["AWS_CLOUD_FORMATION", "AWS_SERVICE", "AWS_TAGS"], # required
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.get_resource_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_collection: {
    #       cloud_formation: {
    #         stack_names: ["StackName"]
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: "AppBoundaryKey", # required
    #           tag_values: ["TagValue"], # required
    #         }
    #       ]
    #     },
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::GetResourceCollectionResponse]
    def get_resource_collection(params = {}, options = {})
      request = build_request(:get_resource_collection, params)
      request.send_request(options)
    end

    # <p> Returns a list of the anomalies that belong to an insight that you specify using its
    # 			ID. </p>
    # @param [Hash, Types::ListAnomaliesForInsightRequest] params
    # @option params [String] :insight_id
    #   <p> The ID of the insight. The returned anomalies belong to this insight. </p>
    # @option params [Types::StartTimeRange] :start_time_range
    #   <p> A time range used to specify when the requested anomalies started. All returned
    #   			anomalies started during this time range. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    # @option params [Types::ListAnomaliesForInsightFilters] :filters
    #   <p>
    #   			Specifies one or more service names that are used to list anomalies. 
    #   		</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId", # required
    #     start_time_range: {
    #       from_time: Time.now,
    #       to_time: Time.now
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     account_id: "AwsAccountId",
    #     filters: {
    #       service_collection: {
    #         service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.list_anomalies_for_insight(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_anomalies: [
    #       {
    #         id: "AnomalyId",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         update_time: Time.now,
    #         anomaly_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         anomaly_reported_time_range: {
    #           open_time: Time.now, # required
    #           close_time: Time.now
    #         },
    #         prediction_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         source_details: {
    #           cloud_watch_metrics: [
    #             {
    #               metric_name: "CloudWatchMetricsMetricName",
    #               namespace: "CloudWatchMetricsNamespace",
    #               dimensions: [
    #                 {
    #                   name: "CloudWatchMetricsDimensionName",
    #                   value: "CloudWatchMetricsDimensionValue"
    #                 }
    #               ],
    #               stat: "Sum" # One of: ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"],
    #               unit: "CloudWatchMetricsUnit",
    #               period: 1,
    #               metric_data_summary: {
    #                 timestamp_metric_value_pair_list: [
    #                   {
    #                     timestamp: Time.now,
    #                     metric_value: 1.0
    #                   }
    #                 ],
    #                 status_code: "Complete" # One of: ["Complete", "InternalError", "PartialData"]
    #               }
    #             }
    #           ],
    #           performance_insights_metrics: [
    #             {
    #               metric_display_name: "PerformanceInsightsMetricDisplayName",
    #               unit: "PerformanceInsightsMetricUnit",
    #               metric_query: {
    #                 metric: "PerformanceInsightsMetricName",
    #                 group_by: {
    #                   group: "PerformanceInsightsMetricGroup",
    #                   dimensions: ["PerformanceInsightsMetricDimension"],
    #                   limit: 1
    #                 },
    #                 filter: {
    #                   "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #                 }
    #               },
    #               reference_data: [
    #                 {
    #                   name: "PerformanceInsightsReferenceName",
    #                   comparison_values: {
    #                     reference_scalar: {
    #                       value: 1.0
    #                     },
    #                     reference_metric: {
    #                       metric_query: {
    #                         metric: "PerformanceInsightsMetricName",
    #                         group_by: {
    #                           group: "PerformanceInsightsMetricGroup",
    #                           dimensions: ["PerformanceInsightsMetricDimension"],
    #                           limit: 1
    #                         },
    #                         filter: {
    #                           "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #                         }
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               stats_at_anomaly: [
    #                 {
    #                   type: "PerformanceInsightsStatType",
    #                   value: 1.0
    #                 }
    #               ],
    #               stats_at_baseline: [
    #                 {
    #                   type: "PerformanceInsightsStatType",
    #                   value: 1.0
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         associated_insight_id: "InsightId",
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         limit: 1.0,
    #         source_metadata: {
    #           source: "AnomalySource",
    #           source_resource_name: "ResourceName",
    #           source_resource_type: "ResourceType"
    #         },
    #         anomaly_resources: [
    #           {
    #             name: "ResourceName",
    #             type: "ResourceType"
    #           }
    #         ],
    #         description: "AnomalyDescription"
    #       }
    #     ],
    #     reactive_anomalies: [
    #       {
    #         id: "AnomalyId",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         anomaly_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         anomaly_reported_time_range: {
    #           open_time: Time.now, # required
    #           close_time: Time.now
    #         },
    #         source_details: {
    #           cloud_watch_metrics: [
    #             {
    #               metric_name: "CloudWatchMetricsMetricName",
    #               namespace: "CloudWatchMetricsNamespace",
    #               dimensions: [
    #                 {
    #                   name: "CloudWatchMetricsDimensionName",
    #                   value: "CloudWatchMetricsDimensionValue"
    #                 }
    #               ],
    #               stat: "Sum" # One of: ["Sum", "Average", "SampleCount", "Minimum", "Maximum", "p99", "p90", "p50"],
    #               unit: "CloudWatchMetricsUnit",
    #               period: 1,
    #               metric_data_summary: {
    #                 timestamp_metric_value_pair_list: [
    #                   {
    #                     timestamp: Time.now,
    #                     metric_value: 1.0
    #                   }
    #                 ],
    #                 status_code: "Complete" # One of: ["Complete", "InternalError", "PartialData"]
    #               }
    #             }
    #           ],
    #           performance_insights_metrics: [
    #             {
    #               metric_display_name: "PerformanceInsightsMetricDisplayName",
    #               unit: "PerformanceInsightsMetricUnit",
    #               metric_query: {
    #                 metric: "PerformanceInsightsMetricName",
    #                 group_by: {
    #                   group: "PerformanceInsightsMetricGroup",
    #                   dimensions: ["PerformanceInsightsMetricDimension"],
    #                   limit: 1
    #                 },
    #                 filter: {
    #                   "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #                 }
    #               },
    #               reference_data: [
    #                 {
    #                   name: "PerformanceInsightsReferenceName",
    #                   comparison_values: {
    #                     reference_scalar: {
    #                       value: 1.0
    #                     },
    #                     reference_metric: {
    #                       metric_query: {
    #                         metric: "PerformanceInsightsMetricName",
    #                         group_by: {
    #                           group: "PerformanceInsightsMetricGroup",
    #                           dimensions: ["PerformanceInsightsMetricDimension"],
    #                           limit: 1
    #                         },
    #                         filter: {
    #                           "PerformanceInsightsMetricFilterKey" => "PerformanceInsightsMetricFilterValue"
    #                         }
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               stats_at_anomaly: [
    #                 {
    #                   type: "PerformanceInsightsStatType",
    #                   value: 1.0
    #                 }
    #               ],
    #               stats_at_baseline: [
    #                 {
    #                   type: "PerformanceInsightsStatType",
    #                   value: 1.0
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         associated_insight_id: "InsightId",
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         type: "CAUSAL" # One of: ["CAUSAL", "CONTEXTUAL"],
    #         name: "AnomalyName",
    #         description: "AnomalyDescription",
    #         causal_anomaly_id: "AnomalyId",
    #         anomaly_resources: [
    #           {
    #             name: "ResourceName",
    #             type: "ResourceType"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListAnomaliesForInsightResponse]
    def list_anomalies_for_insight(params = {}, options = {})
      request = build_request(:list_anomalies_for_insight, params)
      request.send_request(options)
    end

    # <p>
    # 			Returns the list of log groups that contain log anomalies. 
    # 		</p>
    # @param [Hash, Types::ListAnomalousLogGroupsRequest] params
    # @option params [String] :insight_id
    #   <p>
    #   			The ID of the insight containing the log groups.
    #   		</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId", # required
    #     max_results: 1,
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.list_anomalous_log_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     insight_id: "InsightId", # required
    #     anomalous_log_groups: [ # required
    #       {
    #         log_group_name: "LogGroupName",
    #         impact_start_time: Time.now,
    #         impact_end_time: Time.now,
    #         number_of_log_lines_scanned: 1,
    #         log_anomaly_showcases: [
    #           {
    #             log_anomaly_classes: [
    #               {
    #                 log_stream_name: "LogStreamName",
    #                 log_anomaly_type: "KEYWORD" # One of: ["KEYWORD", "KEYWORD_TOKEN", "FORMAT", "HTTP_CODE", "BLOCK_FORMAT", "NUMERICAL_POINT", "NUMERICAL_NAN", "NEW_FIELD_NAME"],
    #                 log_anomaly_token: "LogAnomalyToken",
    #                 log_event_id: "LogEventId",
    #                 explanation: "Explanation",
    #                 number_of_log_lines_occurrences: 1,
    #                 log_event_timestamp: Time.now
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListAnomalousLogGroupsResponse]
    def list_anomalous_log_groups(params = {}, options = {})
      request = build_request(:list_anomalous_log_groups, params)
      request.send_request(options)
    end

    # <p> Returns a list of the events emitted by the resources that are evaluated by DevOps Guru.
    # 			You can use filters to specify which events are returned. </p>
    # @param [Hash, Types::ListEventsRequest] params
    # @option params [Types::ListEventsFilters] :filters
    #   <p> A <code>ListEventsFilters</code> object used to specify which events to return.
    #   		</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: { # required
    #       insight_id: "InsightId",
    #       event_time_range: {
    #         from_time: Time.now, # required
    #         to_time: Time.now, # required
    #       },
    #       event_class: "INFRASTRUCTURE" # One of: ["INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"],
    #       event_source: "EventSource",
    #       data_source: "AWS_CLOUD_TRAIL" # One of: ["AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"],
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     account_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.list_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         id: "EventId",
    #         time: Time.now,
    #         event_source: "EventSource",
    #         name: "EventName",
    #         data_source: "AWS_CLOUD_TRAIL" # One of: ["AWS_CLOUD_TRAIL", "AWS_CODE_DEPLOY"],
    #         event_class: "INFRASTRUCTURE" # One of: ["INFRASTRUCTURE", "DEPLOYMENT", "SECURITY_CHANGE", "CONFIG_CHANGE", "SCHEMA_CHANGE"],
    #         resources: [
    #           {
    #             type: "EventResourceType",
    #             name: "EventResourceName",
    #             arn: "EventResourceArn"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListEventsResponse]
    def list_events(params = {}, options = {})
      request = build_request(:list_events, params)
      request.send_request(options)
    end

    # <p> Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    # 			returned by their start time and status (<code>ONGOING</code>, <code>CLOSED</code>, or
    # 				<code>ANY</code>). </p>
    # @param [Hash, Types::ListInsightsRequest] params
    # @option params [Types::ListInsightsStatusFilter] :status_filter
    #   <p> A filter used to filter the returned insights by their status. You can specify one
    #   			status filter. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status_filter: { # required
    #       ongoing: {
    #         type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #       },
    #       closed: {
    #         type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now
    #         }
    #       },
    #       any: {
    #         type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.list_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_insights: [
    #       {
    #         id: "InsightId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         prediction_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         },
    #         associated_resource_arns: ["ResourceArn"]
    #       }
    #     ],
    #     reactive_insights: [
    #       {
    #         id: "InsightId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         },
    #         associated_resource_arns: ["ResourceArn"]
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListInsightsResponse]
    def list_insights(params = {}, options = {})
      request = build_request(:list_insights, params)
      request.send_request(options)
    end

    # <p>
    # 			Returns the list of all log groups that are being monitored and tagged by DevOps Guru.
    # 		</p>
    # @param [Hash, Types::ListMonitoredResourcesRequest] params
    # @option params [Types::ListMonitoredResourcesFilters] :filters
    #   <p>
    #   			Filters to determine which monitored resources you want to retrieve. You can filter by resource type or resource permission status.
    #   		</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       resource_permission: "FULL_PERMISSION" # One of: ["FULL_PERMISSION", "MISSING_PERMISSION"], # required
    #       resource_type_filters: ["LOG_GROUPS" # One of: ["LOG_GROUPS", "CLOUDFRONT_DISTRIBUTION", "DYNAMODB_TABLE", "EC2_NAT_GATEWAY", "ECS_CLUSTER", "ECS_SERVICE", "EKS_CLUSTER", "ELASTIC_BEANSTALK_ENVIRONMENT", "ELASTIC_LOAD_BALANCER_LOAD_BALANCER", "ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER", "ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP", "ELASTICACHE_CACHE_CLUSTER", "ELASTICSEARCH_DOMAIN", "KINESIS_STREAM", "LAMBDA_FUNCTION", "OPEN_SEARCH_SERVICE_DOMAIN", "RDS_DB_INSTANCE", "RDS_DB_CLUSTER", "REDSHIFT_CLUSTER", "ROUTE53_HOSTED_ZONE", "ROUTE53_HEALTH_CHECK", "S3_BUCKET", "SAGEMAKER_ENDPOINT", "SNS_TOPIC", "SQS_QUEUE", "STEP_FUNCTIONS_ACTIVITY", "STEP_FUNCTIONS_STATE_MACHINE"]], # required
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.list_monitored_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitored_resource_identifiers: [ # required
    #       {
    #         monitored_resource_name: "MonitoredResourceName",
    #         type: "ResourceType",
    #         resource_permission: "FULL_PERMISSION" # One of: ["FULL_PERMISSION", "MISSING_PERMISSION"],
    #         last_updated: Time.now,
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListMonitoredResourcesResponse]
    def list_monitored_resources(params = {}, options = {})
      request = build_request(:list_monitored_resources, params)
      request.send_request(options)
    end

    # <p> Returns a list of notification channels configured for DevOps Guru. Each notification
    # 			channel is used to notify you when DevOps Guru generates an insight that contains information
    # 			about how to improve your operations. The one 
    #       	supported notification channel is Amazon Simple Notification Service (Amazon SNS). </p>
    # @param [Hash, Types::ListNotificationChannelsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.list_notification_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channels: [
    #       {
    #         id: "NotificationChannelId",
    #         config: {
    #           sns: { # required
    #             topic_arn: "TopicArn"
    #           },
    #           filters: {
    #             severities: ["LOW" # One of: ["LOW", "MEDIUM", "HIGH"]],
    #             message_types: ["NEW_INSIGHT" # One of: ["NEW_INSIGHT", "CLOSED_INSIGHT", "NEW_ASSOCIATION", "SEVERITY_UPGRADED", "NEW_RECOMMENDATION"]]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListNotificationChannelsResponse]
    def list_notification_channels(params = {}, options = {})
      request = build_request(:list_notification_channels, params)
      request.send_request(options)
    end

    # <p>Returns a list of insights associated with the account or OU Id.</p>
    # @param [Hash, Types::ListOrganizationInsightsRequest] params
    # @option params [Types::ListInsightsStatusFilter] :status_filter
    #   <p> A filter used by <code>ListInsights</code> to specify which insights to return.
    #   		</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The ID of the organizational unit.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status_filter: { # required
    #       ongoing: {
    #         type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #       },
    #       closed: {
    #         type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #         end_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now
    #         }
    #       },
    #       any: {
    #         type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #         start_time_range: { # required
    #           from_time: Time.now,
    #           to_time: Time.now
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     account_ids: ["AwsAccountId"],
    #     organizational_unit_ids: ["OrganizationalUnitId"],
    #     next_token: "UuidNextToken"
    #   }
    #   options = {}
    #   response = client.list_organization_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_insights: [
    #       {
    #         id: "InsightId",
    #         account_id: "AwsAccountId",
    #         organizational_unit_id: "OrganizationalUnitId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         prediction_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         }
    #       }
    #     ],
    #     reactive_insights: [
    #       {
    #         id: "InsightId",
    #         account_id: "AwsAccountId",
    #         organizational_unit_id: "OrganizationalUnitId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         }
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListOrganizationInsightsResponse]
    def list_organization_insights(params = {}, options = {})
      request = build_request(:list_organization_insights, params)
      request.send_request(options)
    end

    # <p> Returns a list of a specified insight's recommendations. Each recommendation includes
    # 			a list of related metrics and a list of related events. </p>
    # @param [Hash, Types::ListRecommendationsRequest] params
    # @option params [String] :insight_id
    #   <p> The ID of the requested insight. </p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [String] :locale
    #   <p>A locale that specifies the language to use for recommendations.</p>
    # @option params [String] :account_id
    #   <p>The ID of the Amazon Web Services account. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_id: "InsightId", # required
    #     next_token: "UuidNextToken",
    #     locale: "DE_DE" # One of: ["DE_DE", "EN_US", "EN_GB", "ES_ES", "FR_FR", "IT_IT", "JA_JP", "KO_KR", "PT_BR", "ZH_CN", "ZH_TW"],
    #     account_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.list_recommendations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendations: [
    #       {
    #         description: "RecommendationDescription",
    #         link: "RecommendationLink",
    #         name: "RecommendationName",
    #         reason: "RecommendationReason",
    #         related_events: [
    #           {
    #             name: "RecommendationRelatedEventName",
    #             resources: [
    #               {
    #                 name: "RecommendationRelatedEventResourceName",
    #                 type: "RecommendationRelatedEventResourceType"
    #               }
    #             ]
    #           }
    #         ],
    #         related_anomalies: [
    #           {
    #             resources: [
    #               {
    #                 name: "RecommendationRelatedAnomalyResourceName",
    #                 type: "RecommendationRelatedAnomalyResourceType"
    #               }
    #             ],
    #             source_details: [
    #               {
    #                 cloud_watch_metrics: [
    #                   {
    #                     metric_name: "RecommendationRelatedCloudWatchMetricsSourceMetricName",
    #                     namespace: "RecommendationRelatedCloudWatchMetricsSourceNamespace"
    #                   }
    #                 ]
    #               }
    #             ],
    #             anomaly_id: "AnomalyId"
    #           }
    #         ],
    #         category: "RecommendationCategory"
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::ListRecommendationsResponse]
    def list_recommendations(params = {}, options = {})
      request = build_request(:list_recommendations, params)
      request.send_request(options)
    end

    # <p> Collects customer feedback about the specified insight. </p>
    # @param [Hash, Types::PutFeedbackRequest] params
    # @option params [Types::InsightFeedback] :insight_feedback
    #   <p> The feedback from customers is about the recommendations in this insight. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     insight_feedback: {
    #       id: "InsightId",
    #       feedback: "VALID_COLLECTION" # One of: ["VALID_COLLECTION", "RECOMMENDATION_USEFUL", "ALERT_TOO_SENSITIVE", "DATA_NOISY_ANOMALY", "DATA_INCORRECT"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutFeedbackResponse]
    def put_feedback(params = {}, options = {})
      request = build_request(:put_feedback, params)
      request.send_request(options)
    end

    # <p> Removes a notification channel from DevOps Guru. A notification channel is used to notify
    # 			you when DevOps Guru generates an insight that contains information about how to improve your
    # 			operations. </p>
    # @param [Hash, Types::RemoveNotificationChannelRequest] params
    # @option params [String] :id
    #   <p> The ID of the notification channel to be removed. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "NotificationChannelId", # required
    #   }
    #   options = {}
    #   response = client.remove_notification_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveNotificationChannelResponse]
    def remove_notification_channel(params = {}, options = {})
      request = build_request(:remove_notification_channel, params)
      request.send_request(options)
    end

    # <p> Returns a list of insights in your Amazon Web Services account. You can specify which insights are
    # 			returned by their start time, one or more statuses (<code>ONGOING</code> or <code>CLOSED</code>), one or more severities
    # 				(<code>LOW</code>, <code>MEDIUM</code>, and <code>HIGH</code>), and type
    # 				(<code>REACTIVE</code> or <code>PROACTIVE</code>). </p>
    #          <p> Use the <code>Filters</code> parameter to specify status and severity search
    # 			parameters. Use the <code>Type</code> parameter to specify <code>REACTIVE</code> or
    # 				<code>PROACTIVE</code> in your search. </p>
    # @param [Hash, Types::SearchInsightsRequest] params
    # @option params [Types::StartTimeRange] :start_time_range
    #   <p> The start of the time range passed in. Returned insights occurred after this time.
    #   		</p>
    # @option params [Types::SearchInsightsFilters] :filters
    #   <p> A <code>SearchInsightsFilters</code> object that is used to set the severity and
    #   			status filters on your insight search. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [String] :type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     start_time_range: { # required
    #       from_time: Time.now,
    #       to_time: Time.now
    #     },
    #     filters: {
    #       severities: ["LOW" # One of: ["LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ONGOING" # One of: ["ONGOING", "CLOSED"]],
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       },
    #       service_collection: {
    #         service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #   }
    #   options = {}
    #   response = client.search_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_insights: [
    #       {
    #         id: "InsightId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         prediction_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         },
    #         associated_resource_arns: ["ResourceArn"]
    #       }
    #     ],
    #     reactive_insights: [
    #       {
    #         id: "InsightId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         },
    #         associated_resource_arns: ["ResourceArn"]
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::SearchInsightsResponse]
    def search_insights(params = {}, options = {})
      request = build_request(:search_insights, params)
      request.send_request(options)
    end

    # <p> Returns a list of insights in your organization. You can specify which insights are
    # 			returned by their start time, one or more statuses (<code>ONGOING</code>,
    # 				<code>CLOSED</code>, and <code>CLOSED</code>), one or more severities
    # 				(<code>LOW</code>, <code>MEDIUM</code>, and <code>HIGH</code>), and type
    # 				(<code>REACTIVE</code> or <code>PROACTIVE</code>). </p>
    #          <p> Use the <code>Filters</code> parameter to specify status and severity search
    # 			parameters. Use the <code>Type</code> parameter to specify <code>REACTIVE</code> or
    # 				<code>PROACTIVE</code> in your search. </p>
    # @param [Hash, Types::SearchOrganizationInsightsRequest] params
    # @option params [Array<String>] :account_ids
    #   <p>The ID of the Amazon Web Services account. </p>
    # @option params [Types::StartTimeRange] :start_time_range
    #   <p> A time range used to specify when the behavior of an insight or anomaly started.
    #   		</p>
    # @option params [Types::SearchOrganizationInsightsFilters] :filters
    #   <p> A <code>SearchOrganizationInsightsFilters</code> object that is used to set the
    #   			severity and status filters on your insight search. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve 
    #      the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    # @option params [String] :type
    #   <p> The type of insights you are searching for (<code>REACTIVE</code> or
    #   				<code>PROACTIVE</code>). </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_ids: ["AwsAccountId"], # required
    #     start_time_range: { # required
    #       from_time: Time.now,
    #       to_time: Time.now
    #     },
    #     filters: {
    #       severities: ["LOW" # One of: ["LOW", "MEDIUM", "HIGH"]],
    #       statuses: ["ONGOING" # One of: ["ONGOING", "CLOSED"]],
    #       resource_collection: {
    #         cloud_formation: {
    #           stack_names: ["StackName"]
    #         },
    #         tags: [
    #           {
    #             app_boundary_key: "AppBoundaryKey", # required
    #             tag_values: ["TagValue"], # required
    #           }
    #         ]
    #       },
    #       service_collection: {
    #         service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "UuidNextToken",
    #     type: "REACTIVE" # One of: ["REACTIVE", "PROACTIVE"], # required
    #   }
    #   options = {}
    #   response = client.search_organization_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proactive_insights: [
    #       {
    #         id: "InsightId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         prediction_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         },
    #         associated_resource_arns: ["ResourceArn"]
    #       }
    #     ],
    #     reactive_insights: [
    #       {
    #         id: "InsightId",
    #         name: "InsightName",
    #         severity: "LOW" # One of: ["LOW", "MEDIUM", "HIGH"],
    #         status: "ONGOING" # One of: ["ONGOING", "CLOSED"],
    #         insight_time_range: {
    #           start_time: Time.now, # required
    #           end_time: Time.now
    #         },
    #         resource_collection: {
    #           cloud_formation: {
    #             stack_names: ["StackName"]
    #           },
    #           tags: [
    #             {
    #               app_boundary_key: "AppBoundaryKey", # required
    #               tag_values: ["TagValue"], # required
    #             }
    #           ]
    #         },
    #         service_collection: {
    #           service_names: ["API_GATEWAY" # One of: ["API_GATEWAY", "APPLICATION_ELB", "AUTO_SCALING_GROUP", "CLOUD_FRONT", "DYNAMO_DB", "EC2", "ECS", "EKS", "ELASTIC_BEANSTALK", "ELASTI_CACHE", "ELB", "ES", "KINESIS", "LAMBDA", "NAT_GATEWAY", "NETWORK_ELB", "RDS", "REDSHIFT", "ROUTE_53", "S3", "SAGE_MAKER", "SNS", "SQS", "STEP_FUNCTIONS", "SWF"]]
    #         },
    #         associated_resource_arns: ["ResourceArn"]
    #       }
    #     ],
    #     next_token: "UuidNextToken"
    #   }
    # @return [Types::SearchOrganizationInsightsResponse]
    def search_organization_insights(params = {}, options = {})
      request = build_request(:search_organization_insights, params)
      request.send_request(options)
    end

    # <p>Starts the creation of an estimate of the monthly cost to analyze your Amazon Web Services
    # 			resources.</p>
    # @param [Hash, Types::StartCostEstimationRequest] params
    # @option params [Types::CostEstimationResourceCollectionFilter] :resource_collection
    #   <p>The collection of Amazon Web Services resources used to create a monthly DevOps Guru cost estimate.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token used to identify each cost estimate request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_collection: { # required
    #       cloud_formation: {
    #         stack_names: ["StackName"]
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: "AppBoundaryKey", # required
    #           tag_values: ["TagValue"], # required
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_cost_estimation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartCostEstimationResponse]
    def start_cost_estimation(params = {}, options = {})
      request = build_request(:start_cost_estimation, params)
      request.send_request(options)
    end

    # <p>Enables or disables integration with a service that can be integrated with DevOps Guru. The
    # 			one service that can be integrated with DevOps Guru is Amazon CodeGuru Profiler, which
    # 			can produce proactive recommendations which can be stored and viewed in DevOps Guru.</p>
    # @param [Hash, Types::UpdateEventSourcesConfigRequest] params
    # @option params [Types::EventSourcesConfig] :event_sources
    #   <p>Configuration information about the integration of DevOps Guru as the Consumer via
    #   			EventBridge with another AWS Service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_sources: {
    #       amazon_code_guru_profiler: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_sources_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEventSourcesConfigResponse]
    def update_event_sources_config(params = {}, options = {})
      request = build_request(:update_event_sources_config, params)
      request.send_request(options)
    end

    # <p> Updates the collection of resources that DevOps Guru analyzes.
    # 			The two types of Amazon Web Services resource collections supported are Amazon Web Services CloudFormation stacks and 
    #           Amazon Web Services resources that contain the same Amazon Web Services tag. DevOps Guru can be configured to analyze 
    #       	the Amazon Web Services resources that are defined in the stacks or that are tagged using the same tag <i>key</i>. You can specify up to 500 Amazon Web Services CloudFormation stacks. This method also creates the IAM role required for
    # 			you to use DevOps Guru. </p>
    # @param [Hash, Types::UpdateResourceCollectionRequest] params
    # @option params [String] :action
    #   <p> Specifies if the resource collection in the request is added or deleted to the
    #   			resource collection. </p>
    # @option params [Types::UpdateResourceCollectionFilter] :resource_collection
    #   <p> Contains information used to update a collection of Amazon Web Services resources. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "ADD" # One of: ["ADD", "REMOVE"], # required
    #     resource_collection: { # required
    #       cloud_formation: {
    #         stack_names: ["StackName"]
    #       },
    #       tags: [
    #         {
    #           app_boundary_key: "AppBoundaryKey", # required
    #           tag_values: ["TagValue"], # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_resource_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceCollectionResponse]
    def update_resource_collection(params = {}, options = {})
      request = build_request(:update_resource_collection, params)
      request.send_request(options)
    end

    # <p> Enables or disables integration with a service that can be integrated with DevOps Guru. The
    # 			one service that can be integrated with DevOps Guru is Amazon Web Services Systems Manager, which can be used to create
    # 			an OpsItem for each generated insight. </p>
    # @param [Hash, Types::UpdateServiceIntegrationRequest] params
    # @option params [Types::UpdateServiceIntegrationConfig] :service_integration
    #   <p> An <code>IntegratedServiceConfig</code> object used to specify the integrated service
    #   			you want to update, and whether you want to update it to enabled or disabled. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_integration: { # required
    #       ops_center: {
    #         opt_in_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       logs_anomaly_detection: {
    #         opt_in_status: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       kms_server_side_encryption: {
    #         kms_key_id: "KMSKeyId",
    #         opt_in_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         type: "CUSTOMER_MANAGED_KEY" # One of: ["CUSTOMER_MANAGED_KEY", "AWS_OWNED_KMS_KEY"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_service_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateServiceIntegrationResponse]
    def update_service_integration(params = {}, options = {})
      request = build_request(:update_service_integration, params)
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
      context[:gem_name] = 'aws-sdk-devopsguru'
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
    end
  end
end
