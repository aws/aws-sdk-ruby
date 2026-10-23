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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:rum)

module Aws::RUM
  # An API client for Aws::RUM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RUM
    @identifier = :rum

    add_plugin(::Aws::RUM::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::RUM::EndpointProvider)
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

    # <p>Specifies the extended metrics and custom metrics that you want a CloudWatch RUM app monitor to send to a destination. Valid
    #          destinations include CloudWatch and Evidently.</p>
    #          <p>By default, RUM app monitors send some metrics to CloudWatch. These default metrics
    #          are listed in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html">CloudWatch metrics that you can collect 
    #             with CloudWatch RUM</a>.</p>
    #          <p>In addition to these default metrics, you can choose to send extended metrics, custom
    #          metrics, or both.</p>
    #          <ul>
    #             <li>
    #                <p>Extended metrics let you send metrics with additional dimensions that aren't included in the
    #                default metrics. You can also send extended metrics to both Evidently and CloudWatch. The valid dimension names for the additional dimensions for extended
    #                metrics are <code>BrowserName</code>, <code>CountryCode</code>,
    #                   <code>DeviceType</code>, <code>FileType</code>, <code>OSName</code>, and
    #                   <code>PageId</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html">
    #                   Extended metrics that you can send to CloudWatch and CloudWatch
    #                   Evidently</a>.</p>
    #             </li>
    #             <li>
    #                <p>Custom metrics are metrics that you define. You can send custom metrics to CloudWatch.
    #                   CloudWatch Evidently, or both. With custom metrics, you can use any metric
    #                name and namespace. To derive the metrics, you can use any custom events, built-in
    #                events, custom attributes, or default attributes. </p>
    #                <p>You can't send custom metrics to the <code>AWS/RUM</code> namespace. You must send custom metrics to a 
    #                custom namespace that you define. The namespace that you use can't start with <code>AWS/</code>. 
    #                CloudWatch RUM prepends <code>RUM/CustomMetrics/</code> to the custom namespace that you define, 
    #                so the final namespace for your metrics in CloudWatch is 
    #          <code>RUM/CustomMetrics/<i>your-custom-namespace</i>
    #                   </code>.</p>
    #             </li>
    #          </ul>
    #          <p>The maximum number of metric definitions that you can specify in one 
    #          <code>BatchCreateRumMetricDefinitions</code> operation is 200.</p>
    #          <p>The maximum number of metric definitions that one destination can contain is 2000.</p>
    #          <p>Extended metrics sent to CloudWatch and RUM custom metrics are charged as CloudWatch custom metrics. Each combination of additional dimension name and dimension
    #          value counts as a custom metric. For more information, see 
    #          <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p>
    #          <p>You must have
    #          already created a destination for the metrics before you send them. For more information, see 
    #          <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html">PutRumMetricsDestination</a>.</p>
    #          <p>If some metric definitions specified in a <code>BatchCreateRumMetricDefinitions</code> operations are not valid,
    #       those metric definitions fail and return errors, but all valid metric definitions in the same operation still succeed.</p>
    # @param [Hash, Types::BatchCreateRumMetricDefinitionsInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the CloudWatch RUM app monitor that is to send the metrics.</p>
    # @option params [String] :destination
    #   <p>The destination to send the metrics to. Valid values are <code>CloudWatch</code> and
    #               <code>Evidently</code>. If you specify <code>Evidently</code>, you must also specify the
    #            Amazon Resource Name (ARN) of the CloudWatchEvidently experiment that will receive
    #            the metrics and an IAM role that has permission to write to the
    #            experiment.</p>
    # @option params [String] :destination_arn
    #   <p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is 
    #            <code>CloudWatch</code>, do not use this parameter.</p>
    #            <p>This parameter specifies the ARN of the Evidently experiment that is to receive the metrics. You must have already defined this 
    #            experiment as a valid destination. For more information, see <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html">PutRumMetricsDestination</a>.</p>
    # @option params [Array<Types::MetricDefinitionRequest>] :metric_definitions
    #   <p>An array of structures which define the metrics that you want to send.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "MetricDestination", # required
    #     destination_arn: "DestinationArn",
    #     metric_definitions: [ # required
    #       {
    #         name: "MetricName", # required
    #         value_key: "ValueKey",
    #         unit_label: "UnitLabel",
    #         dimension_keys: {
    #           "DimensionKey" => "DimensionName"
    #         },
    #         event_pattern: "EventPattern",
    #         namespace: "Namespace"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_rum_metric_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         metric_definition: { # required
    #           name: "MetricName", # required
    #           value_key: "ValueKey",
    #           unit_label: "UnitLabel",
    #           dimension_keys: {
    #             "DimensionKey" => "DimensionName"
    #           },
    #           event_pattern: "EventPattern",
    #           namespace: "Namespace"
    #         },
    #         error_code: "String", # required
    #         error_message: "String", # required
    #       }
    #     ],
    #     metric_definitions: [
    #       {
    #         metric_definition_id: "MetricDefinitionId", # required
    #         name: "MetricName", # required
    #         value_key: "ValueKey",
    #         unit_label: "UnitLabel",
    #         dimension_keys: {
    #           "DimensionKey" => "DimensionName"
    #         },
    #         event_pattern: "EventPattern",
    #         namespace: "Namespace"
    #       }
    #     ]
    #   }
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/BatchCreateRumMetricDefinitions.html API Reference
    # @return [Types::BatchCreateRumMetricDefinitionsOutput]
    def batch_create_rum_metric_definitions(params = {}, options = {})
      request = build_request(:batch_create_rum_metric_definitions, params)
      request.send_request(options)
    end

    # <p>Removes the specified metrics from being sent to an extended metrics destination.</p>
    #          <p>If some metric definition IDs specified in a <code>BatchDeleteRumMetricDefinitions</code> operations are not valid,
    #          those metric definitions fail and return errors, but all valid metric definition IDs in the same operation are still 
    #          deleted.</p>
    #          <p>The maximum number of metric definitions that you can specify in one 
    #          <code>BatchDeleteRumMetricDefinitions</code> operation is 200.</p>
    # @param [Hash, Types::BatchDeleteRumMetricDefinitionsInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the CloudWatch RUM app monitor that is sending these metrics.</p>
    # @option params [String] :destination
    #   <p>Defines the destination where you want to stop sending the specified metrics. Valid values are <code>CloudWatch</code> and
    #            <code>Evidently</code>. If
    #            you specify <code>Evidently</code>, you must also specify the ARN of the CloudWatchEvidently experiment that is to 
    #            be the destination and an IAM role that has permission to write to the experiment.</p>
    # @option params [String] :destination_arn
    #   <p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is 
    #            <code>CloudWatch</code>, do not use this parameter. </p>
    #            <p>This parameter specifies
    #            the ARN of the Evidently experiment that was receiving the metrics that are being deleted.</p>
    # @option params [Array<String>] :metric_definition_ids
    #   <p>An array of structures which define the metrics that you want to stop sending.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "MetricDestination", # required
    #     destination_arn: "DestinationArn",
    #     metric_definition_ids: ["MetricDefinitionId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_rum_metric_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [ # required
    #       {
    #         metric_definition_id: "MetricDefinitionId", # required
    #         error_code: "String", # required
    #         error_message: "String", # required
    #       }
    #     ],
    #     metric_definition_ids: ["MetricDefinitionId"]
    #   }
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/BatchDeleteRumMetricDefinitions.html API Reference
    # @return [Types::BatchDeleteRumMetricDefinitionsOutput]
    def batch_delete_rum_metric_definitions(params = {}, options = {})
      request = build_request(:batch_delete_rum_metric_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of metrics and dimensions that a RUM app monitor is sending to a single destination.</p>
    # @param [Hash, Types::BatchGetRumMetricDefinitionsInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the CloudWatch RUM app monitor that is sending the metrics.</p>
    # @option params [String] :destination
    #   <p>The type of destination that you want to view metrics for. Valid values are <code>CloudWatch</code> 
    #            and <code>Evidently</code>.</p>
    # @option params [String] :destination_arn
    #   <p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is 
    #            <code>CloudWatch</code>, do not use this parameter.</p>
    #            <p>This parameter
    #            specifies the ARN of the Evidently experiment that corresponds to the destination.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. The default is 50. The maximum that you can 
    #            specify is 100.</p>
    #            <p>To retrieve the remaining results, make another call with the returned 
    #            <code>NextToken</code> value. </p>
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "MetricDestination", # required
    #     destination_arn: "DestinationArn",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.batch_get_rum_metric_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_definitions: [
    #       {
    #         metric_definition_id: "MetricDefinitionId", # required
    #         name: "MetricName", # required
    #         value_key: "ValueKey",
    #         unit_label: "UnitLabel",
    #         dimension_keys: {
    #           "DimensionKey" => "DimensionName"
    #         },
    #         event_pattern: "EventPattern",
    #         namespace: "Namespace"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/BatchGetRumMetricDefinitions.html API Reference
    # @return [Types::BatchGetRumMetricDefinitionsOutput]
    def batch_get_rum_metric_definitions(params = {}, options = {})
      request = build_request(:batch_get_rum_metric_definitions, params)
      request.send_request(options)
    end

    # <p>Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that
    #       data to RUM. The data includes performance and reliability information such as page load time, client-side errors, 
    #       and user behavior.</p>
    #          <p>You use this operation only to create a new app monitor. To update an existing app monitor, use <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html">UpdateAppMonitor</a> instead.</p>
    #          <p>After you create an app monitor, sign in to the CloudWatch RUM console to get 
    #          the JavaScript code snippet to add to your web application. For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html">How do I find a code snippet
    #          that I've already generated?</a>
    #          </p>
    # @param [Hash, Types::CreateAppMonitorInput] params
    # @option params [String] :name
    #   <p>A name for the app monitor.</p>
    # @option params [String] :domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    # @option params [Array<String>] :domain_list
    #   <p>
    #            List the domain names for which your application has administrative authority. The <code>CreateAppMonitor</code> requires either the domain or the domain list.
    #         </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the app monitor.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #            permissions by granting a user
    #            permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with an app monitor.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @option params [Types::AppMonitorConfiguration] :app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor. If you are using 
    #            Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the 
    #            Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own 
    #            authorization method. For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html">Authorize your application
    #               to send data to Amazon Web Services</a>.</p>
    #            <p>If you omit this argument, the sample rate used for RUM is set to 10% of the user sessions.</p>
    # @option params [Boolean] :cw_log_enabled
    #   <p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM 
    #            sends a copy of this telemetry data to Amazon CloudWatch Logs
    #            in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
    #            Amazon CloudWatch Logs charges.</p>
    #            <p>If you omit this parameter, the default is <code>false</code>.</p>
    # @option params [Types::CustomEvents] :custom_events
    #   <p>Specifies whether this app monitor allows the web client to define and send
    #            custom events. If you omit this parameter, custom events are <code>DISABLED</code>.</p>
    #            <p>For more information about custom events, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html">Send custom events</a>.</p>
    # @option params [Types::DeobfuscationConfiguration] :deobfuscation_configuration
    #   <p>
    #            A structure that contains the configuration for how an app monitor can deobfuscate stack traces.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #     domain: "AppMonitorDomain",
    #     domain_list: ["AppMonitorDomain"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     app_monitor_configuration: {
    #       identity_pool_id: "IdentityPoolId",
    #       excluded_pages: ["Url"],
    #       included_pages: ["Url"],
    #       favorite_pages: ["String"],
    #       session_sample_rate: 1.0,
    #       guest_role_arn: "Arn",
    #       allow_cookies: false,
    #       telemetries: ["Telemetry"],
    #       enable_x_ray: false
    #     },
    #     cw_log_enabled: false,
    #     custom_events: {
    #       status: "CustomEventsStatus"
    #     },
    #     deobfuscation_configuration: {
    #       java_script_source_maps: {
    #         status: "DeobfuscationStatus", # required
    #         s3_uri: "DeobfuscationS3Uri"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_app_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AppMonitorId"
    #   }
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html API Reference
    # @return [Types::CreateAppMonitorOutput]
    def create_app_monitor(params = {}, options = {})
      request = build_request(:create_app_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes an existing app monitor. This immediately stops the collection of data.</p>
    # @param [Hash, Types::DeleteAppMonitorInput] params
    # @option params [String] :name
    #   <p>The name of the app monitor to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #   }
    #   options = {}
    #   response = client.delete_app_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppMonitorOutput]
    def delete_app_monitor(params = {}, options = {})
      request = build_request(:delete_app_monitor, params)
      request.send_request(options)
    end

    # <p>Removes the association of a resource-based policy from an app monitor.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :name
    #   <p>The app monitor that you want to remove the resource policy from.</p>
    # @option params [String] :policy_revision_id
    #   <p>Specifies a specific policy revision to delete. Provide a <code>PolicyRevisionId</code> to ensure an atomic delete operation. 
    #            If the revision ID that you provide doesn't match the latest policy revision ID, the request will be rejected with an <code>InvalidPolicyRevisionIdException</code> error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a destination for CloudWatch RUM extended metrics, so that the specified app monitor stops
    #          sending extended metrics to that destination.</p>
    # @param [Hash, Types::DeleteRumMetricsDestinationInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the app monitor that is sending metrics to the destination that you want to delete.</p>
    # @option params [String] :destination
    #   <p>The type of destination to delete. Valid values are <code>CloudWatch</code> and <code>Evidently</code>.</p>
    # @option params [String] :destination_arn
    #   <p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is 
    #            <code>CloudWatch</code>, do not use this parameter. This parameter
    #            specifies the ARN of the Evidently experiment that corresponds to the destination to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "MetricDestination", # required
    #     destination_arn: "DestinationArn"
    #   }
    #   options = {}
    #   response = client.delete_rum_metrics_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRumMetricsDestinationOutput]
    def delete_rum_metrics_destination(params = {}, options = {})
      request = build_request(:delete_rum_metrics_destination, params)
      request.send_request(options)
    end

    # <p>Retrieves the complete configuration information for one app monitor.</p>
    # @param [Hash, Types::GetAppMonitorInput] params
    # @option params [String] :name
    #   <p>The app monitor to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #   }
    #   options = {}
    #   response = client.get_app_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_monitor: {
    #       name: "AppMonitorName",
    #       domain: "AppMonitorDomain",
    #       domain_list: ["AppMonitorDomain"],
    #       id: "AppMonitorId",
    #       created: "ISOTimestampString",
    #       last_modified: "ISOTimestampString",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       state: "StateEnum",
    #       app_monitor_configuration: {
    #         identity_pool_id: "IdentityPoolId",
    #         excluded_pages: ["Url"],
    #         included_pages: ["Url"],
    #         favorite_pages: ["String"],
    #         session_sample_rate: 1.0,
    #         guest_role_arn: "Arn",
    #         allow_cookies: false,
    #         telemetries: ["Telemetry"],
    #         enable_x_ray: false
    #       },
    #       data_storage: {
    #         cw_log: {
    #           cw_log_enabled: false,
    #           cw_log_group: "String"
    #         }
    #       },
    #       custom_events: {
    #         status: "CustomEventsStatus"
    #       },
    #       deobfuscation_configuration: {
    #         java_script_source_maps: {
    #           status: "DeobfuscationStatus", # required
    #           s3_uri: "DeobfuscationS3Uri"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetAppMonitorOutput]
    def get_app_monitor(params = {}, options = {})
      request = build_request(:get_app_monitor, params)
      request.send_request(options)
    end

    # <p>Retrieves the raw performance events that RUM has collected from your web application,
    #          so that you can do your own processing or analysis of this data.</p>
    # @param [Hash, Types::GetAppMonitorDataInput] params
    # @option params [String] :name
    #   <p>The name of the app monitor that collected the data that you want to retrieve.</p>
    # @option params [Types::TimeRange] :time_range
    #   <p>A structure that defines the time range that you want to retrieve results from.</p>
    # @option params [Array<Types::QueryFilter>] :filters
    #   <p>An array of structures that you can use to filter the results to those that match one or
    #            more sets of key-value pairs that you specify.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. </p>
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #     time_range: { # required
    #       after: 1, # required
    #       before: 1
    #     },
    #     filters: [
    #       {
    #         name: "QueryFilterKey",
    #         values: ["QueryFilterValue"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_app_monitor_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: ["EventData"],
    #     next_token: "Token"
    #   }
    # @return [Types::GetAppMonitorDataOutput]
    def get_app_monitor_data(params = {}, options = {})
      request = build_request(:get_app_monitor_data, params)
      request.send_request(options)
    end

    # <p>Use this operation to retrieve information about a resource-based policy that is attached to an app monitor.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :name
    #   <p>The name of the app monitor that is associated with the resource-based policy that you want to view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_document: "String",
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns a list of the Amazon CloudWatch RUM app monitors in the account.</p>
    # @param [Hash, Types::ListAppMonitorsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. The default is 50. The maximum that you can 
    #         specify is 100.</p>
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_app_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     app_monitor_summaries: [
    #       {
    #         name: "AppMonitorName",
    #         id: "AppMonitorId",
    #         created: "ISOTimestampString",
    #         last_modified: "ISOTimestampString",
    #         state: "StateEnum"
    #       }
    #     ]
    #   }
    # @return [Types::ListAppMonitorsOutput]
    def list_app_monitors(params = {}, options = {})
      request = build_request(:list_app_monitors, params)
      request.send_request(options)
    end

    # <p>Returns a list of destinations that you have created to receive RUM extended metrics, 
    #          for the specified app monitor.</p>
    #          <p>For more information about extended metrics, see <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_AddRumMetrcs.html">AddRumMetrics</a>.</p>
    # @param [Hash, Types::ListRumMetricsDestinationsInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the app monitor associated with the destinations that you want to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. The default is 50. The maximum that you can 
    #            specify is 100.</p>
    #            <p>To retrieve the remaining results, make another call with the returned 
    #            <code>NextToken</code> value. </p>
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_rum_metrics_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destinations: [
    #       {
    #         destination: "MetricDestination",
    #         destination_arn: "DestinationArn",
    #         iam_role_arn: "IamRoleArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRumMetricsDestinationsOutput]
    def list_rum_metrics_destinations(params = {}, options = {})
      request = build_request(:list_rum_metrics_destinations, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a CloudWatch RUM resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Use this operation to assign a resource-based policy to a CloudWatch RUM app monitor to control access to it. Each app monitor can 
    #          have one resource-based policy. The maximum size of the policy is 4 KB. To learn more about using resource policies with RUM, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html">Using resource-based policies with CloudWatch RUM</a>.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :name
    #   <p>The name of the app monitor that you want to apply this resource-based policy to. To find the names of your app monitors, you can use
    #            the <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_ListAppMonitors.html">ListAppMonitors</a> operation.</p>
    # @option params [String] :policy_document
    #   <p>The JSON to use as the resource policy. The document can be up to 4 KB in size. For more information about the contents and syntax 
    #            for this policy, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html">Using resource-based policies with CloudWatch RUM</a>.</p>
    # @option params [String] :policy_revision_id
    #   <p>A string value that you can use to conditionally update your policy. You can provide the revision ID of your existing policy to make mutating requests against that policy.</p>
    #            <p>When you assign a policy revision ID, then later requests about that policy will be rejected with an <code>InvalidPolicyRevisionIdException</code> error
    #            if they don't provide the correct current revision ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #     policy_document: "String", # required
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_document: "String",
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Sends telemetry events about your application performance and user behavior to CloudWatch RUM. The code 
    #       snippet that RUM generates for you to add to your application includes <code>PutRumEvents</code> operations to 
    #       send this data to RUM.</p>
    #          <p>Each <code>PutRumEvents</code> operation can send a batch of events from one user session.</p>
    # @param [Hash, Types::PutRumEventsInput] params
    # @option params [String] :id
    #   <p>The ID of the app monitor that is sending this data.</p>
    # @option params [String] :batch_id
    #   <p>A unique identifier for this batch of RUM event data.</p>
    # @option params [Types::AppMonitorDetails] :app_monitor_details
    #   <p>A structure that contains information about the app monitor that collected this telemetry information.</p>
    # @option params [Types::UserDetails] :user_details
    #   <p>A structure that contains information about the user session that this batch of events was collected from.</p>
    # @option params [Array<Types::RumEvent>] :rum_events
    #   <p>An array of structures that contain the telemetry event data.</p>
    # @option params [String] :alias
    #   <p>If the app monitor uses a resource-based policy that requires <code>PutRumEvents</code> requests to specify a certain alias,
    #            specify that alias here. This alias will be compared to the <code>rum:alias</code> context key in the resource-based policy.  For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html">Using resource-based policies with CloudWatch RUM</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "AppMonitorId", # required
    #     batch_id: "String", # required
    #     app_monitor_details: { # required
    #       name: "String",
    #       id: "String",
    #       version: "String"
    #     },
    #     user_details: { # required
    #       user_id: "String",
    #       session_id: "String"
    #     },
    #     rum_events: [ # required
    #       {
    #         id: "String", # required
    #         timestamp: Time.now, # required
    #         type: "String", # required
    #         metadata: "JsonValue",
    #         details: "JsonValue", # required
    #       }
    #     ],
    #     alias: "Alias"
    #   }
    #   options = {}
    #   response = client.put_rum_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutRumEventsOutput]
    def put_rum_events(params = {}, options = {})
      request = build_request(:put_rum_events, params)
      request.send_request(options)
    end

    # <p>Creates or updates a destination to receive extended metrics from CloudWatch RUM. You can send
    #          extended metrics to CloudWatch or to a CloudWatch Evidently experiment.</p>
    #          <p>For more information about extended metrics, see <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricDefinitions.html">BatchCreateRumMetricDefinitions</a>.</p>
    # @param [Hash, Types::PutRumMetricsDestinationInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the CloudWatch RUM app monitor that will send the metrics.</p>
    # @option params [String] :destination
    #   <p>Defines the destination to send the metrics to. Valid values are <code>CloudWatch</code> and
    #            <code>Evidently</code>. If
    #            you specify <code>Evidently</code>, you must also specify the ARN of the CloudWatchEvidently experiment that is to 
    #            be the destination and an IAM role that has permission to write to the experiment.</p>
    # @option params [String] :destination_arn
    #   <p>Use this parameter only if <code>Destination</code> is <code>Evidently</code>. This parameter specifies
    #         the ARN of the Evidently experiment that will receive the extended metrics.</p>
    # @option params [String] :iam_role_arn
    #   <p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is 
    #            <code>CloudWatch</code>, don't use this parameter.</p>
    #            <p>This parameter specifies
    #            the ARN of an IAM role that RUM will assume to write to the Evidently 
    #            experiment that you are sending metrics to. This role must have permission to write to that experiment.</p>
    #            <p>If you specify this parameter, you must be signed on to a role that has <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html">PassRole</a> permissions attached to it, to allow
    #            the role to be passed. The <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html#managed-policies-cloudwatch-RUM">
    #               CloudWatchAmazonCloudWatchRUMFullAccess</a>
    #             policy doesn't include <code>PassRole</code>
    #            permissions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "MetricDestination", # required
    #     destination_arn: "DestinationArn",
    #     iam_role_arn: "IamRoleArn"
    #   }
    #   options = {}
    #   response = client.put_rum_metrics_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/PutRumMetricsDestination.html API Reference
    # @return [Types::PutRumMetricsDestinationOutput]
    def put_rum_metrics_destination(params = {}, options = {})
      request = build_request(:put_rum_metrics_destination, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource. Currently, 
    #        the only resources that 
    #        can be tagged app monitors.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #        permissions by granting a user
    #        permission to access or change only resources with certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags. 
    #        If you specify a new tag key for the resource, 
    #        this tag is appended to the list of tags associated
    #        with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces
    #        the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch RUM resource that you're adding tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch RUM resource that you're removing tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing app monitor. When you use this operation, only the parts of the app monitor
    #          configuration that you specify in this operation are changed. For any parameters that you omit, the existing
    #          values are kept.</p>
    #          <p>You can't use this operation to change the tags of an existing app monitor. To change the tags of an existing app monitor, use
    #          <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    #          <p>To create a new app monitor, use <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html">CreateAppMonitor</a>.</p>
    #          <p>After you update an app monitor, sign in to the CloudWatch RUM console to get 
    #          the updated JavaScript code snippet to add to your web application. For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html">How do I find a code snippet
    #             that I've already generated?</a>
    #          </p>
    # @param [Hash, Types::UpdateAppMonitorInput] params
    # @option params [String] :name
    #   <p>The name of the app monitor to update.</p>
    # @option params [String] :domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    # @option params [Array<String>] :domain_list
    #   <p>
    #            List the domain names for which your application has administrative authority. The <code>UpdateAppMonitor</code> allows either the domain or the domain list.
    #         </p>
    # @option params [Types::AppMonitorConfiguration] :app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor. If you are using 
    #            Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the 
    #            Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own 
    #            authorization method. For more information, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-get-started-authorization.html">Authorize your application
    #               to send data to Amazon Web Services</a>.</p>
    # @option params [Boolean] :cw_log_enabled
    #   <p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM 
    #            sends a copy of this telemetry data to Amazon CloudWatch Logs
    #            in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
    #            Amazon CloudWatch Logs charges.</p>
    # @option params [Types::CustomEvents] :custom_events
    #   <p>Specifies whether this app monitor allows the web client to define and send
    #            custom events. The default is for custom events to be <code>DISABLED</code>.</p>
    #            <p>For more information about custom events, see 
    #            <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-custom-events.html">Send custom events</a>.</p>
    # @option params [Types::DeobfuscationConfiguration] :deobfuscation_configuration
    #   <p>
    #            A structure that contains the configuration for how an app monitor can deobfuscate stack traces.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AppMonitorName", # required
    #     domain: "AppMonitorDomain",
    #     domain_list: ["AppMonitorDomain"],
    #     app_monitor_configuration: {
    #       identity_pool_id: "IdentityPoolId",
    #       excluded_pages: ["Url"],
    #       included_pages: ["Url"],
    #       favorite_pages: ["String"],
    #       session_sample_rate: 1.0,
    #       guest_role_arn: "Arn",
    #       allow_cookies: false,
    #       telemetries: ["Telemetry"],
    #       enable_x_ray: false
    #     },
    #     cw_log_enabled: false,
    #     custom_events: {
    #       status: "CustomEventsStatus"
    #     },
    #     deobfuscation_configuration: {
    #       java_script_source_maps: {
    #         status: "DeobfuscationStatus", # required
    #         s3_uri: "DeobfuscationS3Uri"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_app_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAppMonitorOutput]
    def update_app_monitor(params = {}, options = {})
      request = build_request(:update_app_monitor, params)
      request.send_request(options)
    end

    # <p>Modifies one existing metric definition for CloudWatch RUM extended metrics. For 
    #          more information about extended metrics, see <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html">BatchCreateRumMetricsDefinitions</a>.</p>
    # @param [Hash, Types::UpdateRumMetricDefinitionInput] params
    # @option params [String] :app_monitor_name
    #   <p>The name of the CloudWatch RUM app monitor that sends these metrics.</p>
    # @option params [String] :destination
    #   <p>The destination to send the metrics to. Valid values are <code>CloudWatch</code> and <code>Evidently</code>. If
    #            you specify <code>Evidently</code>, you must also specify the ARN of the CloudWatchEvidently experiment 
    #            that will receive
    #            the metrics and an IAM role that has permission to write to the experiment.</p>
    # @option params [String] :destination_arn
    #   <p>This parameter is required if <code>Destination</code> is <code>Evidently</code>. If <code>Destination</code> is 
    #            <code>CloudWatch</code>, do not use this parameter.</p>
    #            <p>This parameter specifies the ARN of the Evidently experiment that is to receive the metrics. You must have already defined this 
    #            experiment as a valid destination. For more information, see <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html">PutRumMetricsDestination</a>.</p>
    # @option params [Types::MetricDefinitionRequest] :metric_definition
    #   <p>A structure that contains the new definition that you want to use for this metric.</p>
    # @option params [String] :metric_definition_id
    #   <p>The ID of the metric definition to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_monitor_name: "AppMonitorName", # required
    #     destination: "MetricDestination", # required
    #     destination_arn: "DestinationArn",
    #     metric_definition: { # required
    #       name: "MetricName", # required
    #       value_key: "ValueKey",
    #       unit_label: "UnitLabel",
    #       dimension_keys: {
    #         "DimensionKey" => "DimensionName"
    #       },
    #       event_pattern: "EventPattern",
    #       namespace: "Namespace"
    #     },
    #     metric_definition_id: "MetricDefinitionId", # required
    #   }
    #   options = {}
    #   response = client.update_rum_metric_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/UpdateRumMetricDefinitions.html API Reference
    # @return [Types::UpdateRumMetricDefinitionOutput]
    def update_rum_metric_definition(params = {}, options = {})
      request = build_request(:update_rum_metric_definition, params)
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
      context[:gem_name] = 'aws-sdk-rum'
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
