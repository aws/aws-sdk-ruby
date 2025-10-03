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
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::CloudWatch
  # An API client for Aws::CloudWatch.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::GraniteServiceVersion20100801

    add_plugin(::Aws::CloudWatch::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::QueryProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudWatch::EndpointProvider)
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Deletes the specified alarms. You can delete up to 100 alarms in one operation.
    #             However, this total can include no more than one composite alarm. For example, you could
    #             delete 99 metric alarms and one composite alarms with one operation, but you can't
    #             delete two composite alarms with one operation.</p>
    #          <p> If you specify any incorrect alarm names, the alarms you specify with correct names are still deleted. Other syntax errors might result
    #             in no alarms being deleted. To confirm that alarms were deleted successfully, you can use the
    #             <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> operation after using <code>DeleteAlarms</code>.</p>
    #          <note>
    #             <p>It is possible to create a loop or cycle of composite alarms, where composite
    #                 alarm A depends on composite alarm B, and composite alarm B also depends on
    #                 composite alarm A. In this scenario, you can't delete any composite alarm that is
    #                 part of the cycle because there is always still a composite alarm that depends on
    #                 that alarm that you want to delete.</p>
    #             <p>To get out of such a situation, you must break the cycle by changing the rule of
    #                 one of the composite alarms in the cycle to remove a dependency that creates the
    #                 cycle. The simplest change to make to break a cycle is to change the
    #                 <code>AlarmRule</code> of one of the alarms to <code>false</code>. </p>
    #             <p>Additionally, the evaluation of composite alarms stops if CloudWatch
    #                 detects a cycle in the evaluation path. </p>
    #          </note>
    # @param [Hash, Types::DeleteAlarmsInput] params
    # @option params [Array<String>] :alarm_names
    #   <p>The alarms to be deleted. Do not enclose the alarm names in quote marks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_names: ["AlarmName"], # required
    #   }
    #   options = {}
    #   response = client.delete_alarms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_alarms(params = {}, options = {})
      request = build_request(:delete_alarms, params)
      request.send_request(options)
    end

    # <p> Deletes the specified anomaly detection model from your account. For more information
    #             about how to delete an anomaly detection model, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Anomaly_Detection_Alarm.html#Delete_Anomaly_Detection_Model">Deleting an anomaly detection model</a> in the <i>CloudWatch User
    #             Guide</i>. </p>
    # @param [Hash, Types::DeleteAnomalyDetectorInput] params
    # @option params [String] :namespace
    #   <p>The namespace associated with the anomaly detection model to delete.</p>
    # @option params [String] :metric_name
    #   <p>The metric name associated with the anomaly detection model to delete.</p>
    # @option params [Array<Types::Dimension>] :dimensions
    #   <p>The metric dimensions associated with the anomaly detection model to delete.</p>
    # @option params [String] :stat
    #   <p>The statistic associated with the anomaly detection model to delete.</p>
    # @option params [Types::SingleMetricAnomalyDetector] :single_metric_anomaly_detector
    #   <p>A single metric anomaly detector to be deleted.</p>
    #            <p>When using <code>SingleMetricAnomalyDetector</code>, you cannot include the following
    #               parameters in the same operation:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Dimensions</code>,</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MetricName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Namespace</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stat</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>the <code>MetricMathAnomalyDetector</code> parameters of
    #                       <code>DeleteAnomalyDetectorInput</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Instead, specify the single metric anomaly detector attributes as part of the
    #               <code>SingleMetricAnomalyDetector</code> property.</p>
    # @option params [Types::MetricMathAnomalyDetector] :metric_math_anomaly_detector
    #   <p>The metric math anomaly detector to be deleted.</p>
    #            <p>When using <code>MetricMathAnomalyDetector</code>, you cannot include following
    #               parameters in the same operation:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Dimensions</code>,</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MetricName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Namespace</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stat</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>the <code>SingleMetricAnomalyDetector</code> parameters of
    #                       <code>DeleteAnomalyDetectorInput</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Instead, specify the metric math anomaly detector attributes as part of the
    #               <code>MetricMathAnomalyDetector</code> property.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     stat: "AnomalyDetectorMetricStat",
    #     single_metric_anomaly_detector: {
    #       account_id: "AccountId",
    #       namespace: "Namespace",
    #       metric_name: "MetricName",
    #       dimensions: [
    #         {
    #           name: "DimensionName", # required
    #           value: "DimensionValue", # required
    #         }
    #       ],
    #       stat: "AnomalyDetectorMetricStat"
    #     },
    #     metric_math_anomaly_detector: {
    #       metric_data_queries: [
    #         {
    #           id: "MetricId", # required
    #           metric_stat: {
    #             metric: { # required
    #               namespace: "Namespace",
    #               metric_name: "MetricName",
    #               dimensions: [
    #                 {
    #                   name: "DimensionName", # required
    #                   value: "DimensionValue", # required
    #                 }
    #               ]
    #             },
    #             period: 1, # required
    #             stat: "Stat", # required
    #             unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #           },
    #           expression: "MetricExpression",
    #           label: "MetricLabel",
    #           return_data: false,
    #           period: 1,
    #           account_id: "AccountId"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.delete_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAnomalyDetectorOutput]
    def delete_anomaly_detector(params = {}, options = {})
      request = build_request(:delete_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Deletes all dashboards that you specify. You can specify up to 100 dashboards to
    #             delete. If there is an error during this call, no dashboards are deleted.</p>
    # @param [Hash, Types::DeleteDashboardsInput] params
    # @option params [Array<String>] :dashboard_names
    #   <p>The dashboards to be deleted. This parameter is required.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_names: ["DashboardName"], # required
    #   }
    #   options = {}
    #   response = client.delete_dashboards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDashboardsOutput]
    def delete_dashboards(params = {}, options = {})
      request = build_request(:delete_dashboards, params)
      request.send_request(options)
    end

    # <p>Permanently deletes the specified Contributor Insights rules.</p>
    #          <p>If you create a rule, delete it, and then re-create it with the same name, historical
    #             data from the first time the rule was created might not be available.</p>
    # @param [Hash, Types::DeleteInsightRulesInput] params
    # @option params [Array<String>] :rule_names
    #   <p>An array of the rule names to delete. If you need to find out the names of your rules,
    #               use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html">DescribeInsightRules</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_names: ["InsightRuleName"], # required
    #   }
    #   options = {}
    #   response = client.delete_insight_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         failure_resource: "FailureResource",
    #         exception_type: "ExceptionType",
    #         failure_code: "FailureCode",
    #         failure_description: "FailureDescription"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteInsightRulesOutput]
    def delete_insight_rules(params = {}, options = {})
      request = build_request(:delete_insight_rules, params)
      request.send_request(options)
    end

    # <p>Permanently deletes the metric stream that you specify.</p>
    # @param [Hash, Types::DeleteMetricStreamInput] params
    # @option params [String] :name
    #   <p>The name of the metric stream to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MetricStreamName", # required
    #   }
    #   options = {}
    #   response = client.delete_metric_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMetricStreamOutput]
    def delete_metric_stream(params = {}, options = {})
      request = build_request(:delete_metric_stream, params)
      request.send_request(options)
    end

    # <p>Returns the information of the current alarm contributors that are in <code>ALARM</code> state. This operation returns details about the individual time series that contribute to the alarm's state.</p>
    # @param [Hash, Types::DescribeAlarmContributorsInput] params
    # @option params [String] :alarm_name
    #   <p>The name of the alarm for which to retrieve contributor information.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to indicate that there is more data available.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "AlarmName", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_alarm_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm_contributors: [ # required
    #       {
    #         contributor_id: "ContributorId", # required
    #         contributor_attributes: { # required
    #           "AttributeName" => "AttributeValue"
    #         },
    #         state_reason: "StateReason", # required
    #         state_transitioned_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAlarmContributorsOutput]
    def describe_alarm_contributors(params = {}, options = {})
      request = build_request(:describe_alarm_contributors, params)
      request.send_request(options)
    end

    # <p>Retrieves the history for the specified alarm. You can filter the results by date
    #             range or item type. If an alarm name is not specified, the histories for either all
    #             metric alarms or all composite alarms are returned.</p>
    #          <p>CloudWatch retains the history of an alarm even if you delete the alarm.</p>
    #          <p>To use this operation and return information about a composite alarm, you must be
    #             signed on with the <code>cloudwatch:DescribeAlarmHistory</code> permission that is
    #             scoped to <code>*</code>. You can't return information about composite alarms if your
    #             <code>cloudwatch:DescribeAlarmHistory</code> permission has a narrower scope.</p>
    # @param [Hash, Types::DescribeAlarmHistoryInput] params
    # @option params [String] :alarm_name
    #   <p>The name of the alarm.</p>
    # @option params [String] :alarm_contributor_id
    #   <p>The unique identifier of a specific alarm contributor to filter the alarm history results.</p>
    # @option params [Array<String>] :alarm_types
    #   <p>Use this parameter to specify whether you want the operation to return metric alarms
    #               or composite alarms. If you omit this parameter, only metric alarms are returned.</p>
    # @option params [String] :history_item_type
    #   <p>The type of alarm histories to retrieve.</p>
    # @option params [Time] :start_date
    #   <p>The starting date to retrieve alarm history.</p>
    # @option params [Time] :end_date
    #   <p>The ending date to retrieve alarm history.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of alarm history records to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to indicate that there is more data
    #               available.</p>
    # @option params [String] :scan_by
    #   <p>Specified whether to return the newest or oldest alarm history first. Specify
    #               <code>TimestampDescending</code> to have the newest event history returned first,
    #               and specify <code>TimestampAscending</code> to have the oldest history returned
    #               first.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "AlarmName",
    #     alarm_contributor_id: "ContributorId",
    #     alarm_types: ["CompositeAlarm" # One of: ["CompositeAlarm", "MetricAlarm"]],
    #     history_item_type: "ConfigurationUpdate" # One of: ["ConfigurationUpdate", "StateUpdate", "Action", "AlarmContributorStateUpdate", "AlarmContributorAction"],
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     max_records: 1,
    #     next_token: "NextToken",
    #     scan_by: "TimestampDescending" # One of: ["TimestampDescending", "TimestampAscending"]
    #   }
    #   options = {}
    #   response = client.describe_alarm_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm_history_items: [
    #       {
    #         alarm_name: "AlarmName",
    #         alarm_contributor_id: "ContributorId",
    #         alarm_type: "CompositeAlarm" # One of: ["CompositeAlarm", "MetricAlarm"],
    #         timestamp: Time.now,
    #         history_item_type: "ConfigurationUpdate" # One of: ["ConfigurationUpdate", "StateUpdate", "Action", "AlarmContributorStateUpdate", "AlarmContributorAction"],
    #         history_summary: "HistorySummary",
    #         history_data: "HistoryData",
    #         alarm_contributor_attributes: {
    #           "AttributeName" => "AttributeValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAlarmHistoryOutput]
    def describe_alarm_history(params = {}, options = {})
      request = build_request(:describe_alarm_history, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified alarms. You can filter the results by specifying a prefix
    #             for the alarm name, the alarm state, or a prefix for any action.</p>
    #          <p>To use this operation and return information about composite alarms, you must be
    #             signed on with the <code>cloudwatch:DescribeAlarms</code> permission that is scoped to
    #             <code>*</code>. You can't return information about composite alarms if your
    #             <code>cloudwatch:DescribeAlarms</code> permission has a narrower scope.</p>
    # @param [Hash, Types::DescribeAlarmsInput] params
    # @option params [Array<String>] :alarm_names
    #   <p>The names of the alarms to retrieve information about.</p>
    # @option params [String] :alarm_name_prefix
    #   <p>An alarm name prefix. If you specify this parameter, you receive information about
    #               all alarms that have names that start with this prefix.</p>
    #            <p>If this parameter is specified, you cannot specify
    #               <code>AlarmNames</code>.</p>
    # @option params [Array<String>] :alarm_types
    #   <p>Use this parameter to specify whether you want the operation to return metric alarms
    #               or composite alarms. If you omit this parameter, only metric alarms are returned, even
    #               if composite alarms exist in the account.</p>
    #            <p>For example, if you omit this parameter or specify <code>MetricAlarms</code>, the
    #               operation returns only a list of metric alarms. It does not return any composite alarms,
    #               even if composite alarms exist in the account.</p>
    #            <p>If you specify <code>CompositeAlarms</code>, the operation returns only a list of
    #               composite alarms, and does not return any metric alarms.</p>
    # @option params [String] :children_of_alarm_name
    #   <p>If you use this parameter and specify the name of a composite alarm, the operation
    #               returns information about the "children" alarms of the alarm you specify. These are the
    #               metric alarms and composite alarms referenced in the <code>AlarmRule</code> field of the
    #               composite alarm that you specify in <code>ChildrenOfAlarmName</code>. Information about
    #               the composite alarm that you name in <code>ChildrenOfAlarmName</code> is not
    #               returned.</p>
    #            <p>If you specify <code>ChildrenOfAlarmName</code>, you cannot specify any other
    #               parameters in the request except for <code>MaxRecords</code> and <code>NextToken</code>.
    #               If you do so, you receive a validation error.</p>
    #            <note>
    #               <p>Only the <code>Alarm Name</code>, <code>ARN</code>, <code>StateValue</code>
    #                   (OK/ALARM/INSUFFICIENT_DATA), and <code>StateUpdatedTimestamp</code> information are
    #                   returned by this operation when you use this parameter. To get complete information
    #                   about these alarms, perform another <code>DescribeAlarms</code> operation and
    #                   specify the parent alarm names in the <code>AlarmNames</code> parameter.</p>
    #            </note>
    # @option params [String] :parents_of_alarm_name
    #   <p>If you use this parameter and specify the name of a metric or composite alarm, the
    #               operation returns information about the "parent" alarms of the alarm you specify. These
    #               are the composite alarms that have <code>AlarmRule</code> parameters that reference the
    #               alarm named in <code>ParentsOfAlarmName</code>. Information about the alarm that you
    #               specify in <code>ParentsOfAlarmName</code> is not returned.</p>
    #            <p>If you specify <code>ParentsOfAlarmName</code>, you cannot specify any other
    #               parameters in the request except for <code>MaxRecords</code> and <code>NextToken</code>.
    #               If you do so, you receive a validation error.</p>
    #            <note>
    #               <p>Only the Alarm Name and ARN are returned by this operation when you use this
    #                   parameter. To get complete information about these alarms, perform another
    #                   <code>DescribeAlarms</code> operation and specify the parent alarm names in the
    #                   <code>AlarmNames</code> parameter.</p>
    #            </note>
    # @option params [String] :state_value
    #   <p>Specify this parameter to receive information only about alarms that are currently
    #               in the state that you specify.</p>
    # @option params [String] :action_prefix
    #   <p>Use this parameter to filter the results of the operation to only those alarms that
    #               use a certain alarm action. For example, you could specify the ARN of an SNS topic to
    #               find all alarms that send notifications to that topic.</p>
    # @option params [Integer] :max_records
    #   <p>The maximum number of alarm descriptions to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to indicate that there is more data
    #               available.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_names: ["AlarmName"],
    #     alarm_name_prefix: "AlarmNamePrefix",
    #     alarm_types: ["CompositeAlarm" # One of: ["CompositeAlarm", "MetricAlarm"]],
    #     children_of_alarm_name: "AlarmName",
    #     parents_of_alarm_name: "AlarmName",
    #     state_value: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"],
    #     action_prefix: "ActionPrefix",
    #     max_records: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_alarms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     composite_alarms: [
    #       {
    #         actions_enabled: false,
    #         alarm_actions: ["ResourceName"],
    #         alarm_arn: "AlarmArn",
    #         alarm_configuration_updated_timestamp: Time.now,
    #         alarm_description: "AlarmDescription",
    #         alarm_name: "AlarmName",
    #         alarm_rule: "AlarmRule",
    #         insufficient_data_actions: ["ResourceName"],
    #         ok_actions: ["ResourceName"],
    #         state_reason: "StateReason",
    #         state_reason_data: "StateReasonData",
    #         state_updated_timestamp: Time.now,
    #         state_value: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"],
    #         state_transitioned_timestamp: Time.now,
    #         actions_suppressed_by: "WaitPeriod" # One of: ["WaitPeriod", "ExtensionPeriod", "Alarm"],
    #         actions_suppressed_reason: "ActionsSuppressedReason",
    #         actions_suppressor: "AlarmArn",
    #         actions_suppressor_wait_period: 1,
    #         actions_suppressor_extension_period: 1
    #       }
    #     ],
    #     metric_alarms: [
    #       {
    #         alarm_name: "AlarmName",
    #         alarm_arn: "AlarmArn",
    #         alarm_description: "AlarmDescription",
    #         alarm_configuration_updated_timestamp: Time.now,
    #         actions_enabled: false,
    #         ok_actions: ["ResourceName"],
    #         alarm_actions: ["ResourceName"],
    #         insufficient_data_actions: ["ResourceName"],
    #         state_value: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"],
    #         state_reason: "StateReason",
    #         state_reason_data: "StateReasonData",
    #         state_updated_timestamp: Time.now,
    #         metric_name: "MetricName",
    #         namespace: "Namespace",
    #         statistic: "SampleCount" # One of: ["SampleCount", "Average", "Sum", "Minimum", "Maximum"],
    #         extended_statistic: "ExtendedStatistic",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           }
    #         ],
    #         period: 1,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #         evaluation_periods: 1,
    #         datapoints_to_alarm: 1,
    #         threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"],
    #         treat_missing_data: "TreatMissingData",
    #         evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
    #         metrics: [
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
    #               unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId"
    #           }
    #         ],
    #         threshold_metric_id: "MetricId",
    #         evaluation_state: "PARTIAL_DATA" # One of: ["PARTIAL_DATA"],
    #         state_transitioned_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAlarmsOutput]
    def describe_alarms(params = {}, options = {})
      request = build_request(:describe_alarms, params)
      request.send_request(options)
    end

    # <p>Retrieves the alarms for the specified metric. To filter the results, specify a
    #             statistic, period, or unit.</p>
    #          <p>This operation retrieves only standard alarms that are based on the specified
    #             metric. It does not return alarms based on math expressions that use the specified
    #             metric, or composite alarms that use the specified metric.</p>
    # @param [Hash, Types::DescribeAlarmsForMetricInput] params
    # @option params [String] :metric_name
    #   <p>The name of the metric.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the metric.</p>
    # @option params [String] :statistic
    #   <p>The statistic for the metric, other than percentiles. For percentile statistics,
    #               use <code>ExtendedStatistics</code>.</p>
    # @option params [String] :extended_statistic
    #   <p>The percentile statistic for the metric. Specify a value between p0.0 and
    #               p100.</p>
    # @option params [Array<Types::Dimension>] :dimensions
    #   <p>The dimensions associated with the metric. If the metric has any associated
    #               dimensions, you must specify them in order for the call to succeed.</p>
    # @option params [Integer] :period
    #   <p>The period, in seconds, over which the statistic is applied.</p>
    # @option params [String] :unit
    #   <p>The unit for the metric.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_name: "MetricName", # required
    #     namespace: "Namespace", # required
    #     statistic: "SampleCount" # One of: ["SampleCount", "Average", "Sum", "Minimum", "Maximum"],
    #     extended_statistic: "ExtendedStatistic",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     period: 1,
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   }
    #   options = {}
    #   response = client.describe_alarms_for_metric(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_alarms: [
    #       {
    #         alarm_name: "AlarmName",
    #         alarm_arn: "AlarmArn",
    #         alarm_description: "AlarmDescription",
    #         alarm_configuration_updated_timestamp: Time.now,
    #         actions_enabled: false,
    #         ok_actions: ["ResourceName"],
    #         alarm_actions: ["ResourceName"],
    #         insufficient_data_actions: ["ResourceName"],
    #         state_value: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"],
    #         state_reason: "StateReason",
    #         state_reason_data: "StateReasonData",
    #         state_updated_timestamp: Time.now,
    #         metric_name: "MetricName",
    #         namespace: "Namespace",
    #         statistic: "SampleCount" # One of: ["SampleCount", "Average", "Sum", "Minimum", "Maximum"],
    #         extended_statistic: "ExtendedStatistic",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           }
    #         ],
    #         period: 1,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #         evaluation_periods: 1,
    #         datapoints_to_alarm: 1,
    #         threshold: 1.0,
    #         comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"],
    #         treat_missing_data: "TreatMissingData",
    #         evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
    #         metrics: [
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
    #               unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #             },
    #             expression: "MetricExpression",
    #             label: "MetricLabel",
    #             return_data: false,
    #             period: 1,
    #             account_id: "AccountId"
    #           }
    #         ],
    #         threshold_metric_id: "MetricId",
    #         evaluation_state: "PARTIAL_DATA" # One of: ["PARTIAL_DATA"],
    #         state_transitioned_timestamp: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAlarmsForMetricOutput]
    def describe_alarms_for_metric(params = {}, options = {})
      request = build_request(:describe_alarms_for_metric, params)
      request.send_request(options)
    end

    # <p>Lists the anomaly detection models that you have created in your account. For single
    #             metric anomaly detectors, you can list all of the models in your account or filter the
    #             results to only the models that are related to a certain namespace, metric name, or
    #             metric dimension. For metric math anomaly detectors, you can list them by adding
    #             <code>METRIC_MATH</code> to the <code>AnomalyDetectorTypes</code> array. This will
    #             return all metric math anomaly detectors in your account.</p>
    # @param [Hash, Types::DescribeAnomalyDetectorsInput] params
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of
    #               results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. The maximum value that you
    #               can specify is 100.</p>
    #            <p>To retrieve the remaining results, make another call with the returned
    #               <code>NextToken</code> value. </p>
    # @option params [String] :namespace
    #   <p>Limits the results to only the anomaly detection models that are associated with the
    #               specified namespace.</p>
    # @option params [String] :metric_name
    #   <p>Limits the results to only the anomaly detection models that are associated with the
    #               specified metric name. If there are multiple metrics with this name in different
    #               namespaces that have anomaly detection models, they're all returned.</p>
    # @option params [Array<Types::Dimension>] :dimensions
    #   <p>Limits the results to only the anomaly detection models that are associated with the
    #               specified metric dimensions. If there are multiple metrics that have these dimensions
    #               and have anomaly detection models associated, they're all returned.</p>
    # @option params [Array<String>] :anomaly_detector_types
    #   <p>The anomaly detector types to request when using
    #               <code>DescribeAnomalyDetectorsInput</code>. If empty, defaults to
    #               <code>SINGLE_METRIC</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     anomaly_detector_types: ["SINGLE_METRIC" # One of: ["SINGLE_METRIC", "METRIC_MATH"]]
    #   }
    #   options = {}
    #   response = client.describe_anomaly_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_detectors: [
    #       {
    #         namespace: "Namespace",
    #         metric_name: "MetricName",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           }
    #         ],
    #         stat: "AnomalyDetectorMetricStat",
    #         configuration: {
    #           excluded_time_ranges: [
    #             {
    #               start_time: Time.now, # required
    #               end_time: Time.now, # required
    #             }
    #           ],
    #           metric_timezone: "AnomalyDetectorMetricTimezone"
    #         },
    #         state_value: "PENDING_TRAINING" # One of: ["PENDING_TRAINING", "TRAINED_INSUFFICIENT_DATA", "TRAINED"],
    #         metric_characteristics: {
    #           periodic_spikes: false
    #         },
    #         single_metric_anomaly_detector: {
    #           account_id: "AccountId",
    #           namespace: "Namespace",
    #           metric_name: "MetricName",
    #           dimensions: [
    #             {
    #               name: "DimensionName", # required
    #               value: "DimensionValue", # required
    #             }
    #           ],
    #           stat: "AnomalyDetectorMetricStat"
    #         },
    #         metric_math_anomaly_detector: {
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
    #                 unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #               },
    #               expression: "MetricExpression",
    #               label: "MetricLabel",
    #               return_data: false,
    #               period: 1,
    #               account_id: "AccountId"
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAnomalyDetectorsOutput]
    def describe_anomaly_detectors(params = {}, options = {})
      request = build_request(:describe_anomaly_detectors, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the Contributor Insights rules in your account.</p>
    #          <p>For more information about Contributor Insights, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html">Using Contributor
    #             Insights to Analyze High-Cardinality Data</a>.</p>
    # @param [Hash, Types::DescribeInsightRulesInput] params
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set
    #               of rules.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter,
    #               the default of 500 is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_insight_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     insight_rules: [
    #       {
    #         name: "InsightRuleName", # required
    #         state: "InsightRuleState", # required
    #         schema: "InsightRuleSchema", # required
    #         definition: "InsightRuleDefinition", # required
    #         managed_rule: false,
    #         apply_on_transformed_logs: false
    #       }
    #     ]
    #   }
    # @return [Types::DescribeInsightRulesOutput]
    def describe_insight_rules(params = {}, options = {})
      request = build_request(:describe_insight_rules, params)
      request.send_request(options)
    end

    # <p>Disables the actions for the specified alarms. When an alarm's actions are
    #             disabled, the alarm actions do not execute when the alarm state changes.</p>
    # @param [Hash, Types::DisableAlarmActionsInput] params
    # @option params [Array<String>] :alarm_names
    #   <p>The names of the alarms.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_names: ["AlarmName"], # required
    #   }
    #   options = {}
    #   response = client.disable_alarm_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_alarm_actions(params = {}, options = {})
      request = build_request(:disable_alarm_actions, params)
      request.send_request(options)
    end

    # <p>Disables the specified Contributor Insights rules. When rules are disabled, they do
    #             not analyze log groups and do not incur costs.</p>
    # @param [Hash, Types::DisableInsightRulesInput] params
    # @option params [Array<String>] :rule_names
    #   <p>An array of the rule names to disable. If you need to find out the names of your
    #               rules, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html">DescribeInsightRules</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_names: ["InsightRuleName"], # required
    #   }
    #   options = {}
    #   response = client.disable_insight_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         failure_resource: "FailureResource",
    #         exception_type: "ExceptionType",
    #         failure_code: "FailureCode",
    #         failure_description: "FailureDescription"
    #       }
    #     ]
    #   }
    # @return [Types::DisableInsightRulesOutput]
    def disable_insight_rules(params = {}, options = {})
      request = build_request(:disable_insight_rules, params)
      request.send_request(options)
    end

    # <p>Enables the actions for the specified alarms.</p>
    # @param [Hash, Types::EnableAlarmActionsInput] params
    # @option params [Array<String>] :alarm_names
    #   <p>The names of the alarms.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_names: ["AlarmName"], # required
    #   }
    #   options = {}
    #   response = client.enable_alarm_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_alarm_actions(params = {}, options = {})
      request = build_request(:enable_alarm_actions, params)
      request.send_request(options)
    end

    # <p>Enables the specified Contributor Insights rules. When rules are enabled, they
    #             immediately begin analyzing log data.</p>
    # @param [Hash, Types::EnableInsightRulesInput] params
    # @option params [Array<String>] :rule_names
    #   <p>An array of the rule names to enable. If you need to find out the names of your rules,
    #               use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html">DescribeInsightRules</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_names: ["InsightRuleName"], # required
    #   }
    #   options = {}
    #   response = client.enable_insight_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         failure_resource: "FailureResource",
    #         exception_type: "ExceptionType",
    #         failure_code: "FailureCode",
    #         failure_description: "FailureDescription"
    #       }
    #     ]
    #   }
    # @return [Types::EnableInsightRulesOutput]
    def enable_insight_rules(params = {}, options = {})
      request = build_request(:enable_insight_rules, params)
      request.send_request(options)
    end

    # <p>Displays the details of the dashboard that you specify.</p>
    #          <p>To copy an existing dashboard, use <code>GetDashboard</code>, and then use the data
    #             returned within <code>DashboardBody</code> as the template for the new dashboard when
    #             you call <code>PutDashboard</code> to create the copy.</p>
    # @param [Hash, Types::GetDashboardInput] params
    # @option params [String] :dashboard_name
    #   <p>The name of the dashboard to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_name: "DashboardName", # required
    #   }
    #   options = {}
    #   response = client.get_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_arn: "DashboardArn",
    #     dashboard_body: "DashboardBody",
    #     dashboard_name: "DashboardName"
    #   }
    # @return [Types::GetDashboardOutput]
    def get_dashboard(params = {}, options = {})
      request = build_request(:get_dashboard, params)
      request.send_request(options)
    end

    # <p>This operation returns the time series data collected by a Contributor Insights rule.
    #             The data includes the identity and number of contributors to the log group.</p>
    #          <p>You can also optionally return one or more statistics about each data point in the
    #             time series. These statistics can include the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>UniqueContributors</code> -- the number of unique contributors for each
    #                     data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaxContributorValue</code> -- the value of the top contributor for each
    #                     data point. The identity of the contributor might change for each data point in
    #                     the graph.</p>
    #                <p>If this rule aggregates by COUNT, the top contributor for each data point is
    #                     the contributor with the most occurrences in that period. If the rule aggregates
    #                     by SUM, the top contributor is the contributor with the highest sum in the log
    #                     field specified by the rule's <code>Value</code>, during that period.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SampleCount</code> -- the number of data points matched by the
    #                     rule.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Sum</code> -- the sum of the values from all contributors during the
    #                     time period represented by that data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Minimum</code> -- the minimum value from a single observation during the
    #                     time period represented by that data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Maximum</code> -- the maximum value from a single observation during the
    #                     time period represented by that data point.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Average</code> -- the average value from all contributors during the
    #                     time period represented by that data point.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetInsightRuleReportInput] params
    # @option params [String] :rule_name
    #   <p>The name of the rule that you want to see data from.</p>
    # @option params [Time] :start_time
    #   <p>The start time of the data to use in the report. When used in a raw HTTP Query API, it
    #               is formatted as <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example,
    #               <code>2019-07-01T23:59:59</code>.</p>
    # @option params [Time] :end_time
    #   <p>The end time of the data to use in the report. When used in a raw HTTP Query API, it
    #               is formatted as <code>yyyy-MM-dd'T'HH:mm:ss</code>. For example,
    #               <code>2019-07-01T23:59:59</code>.</p>
    # @option params [Integer] :period
    #   <p>The period, in seconds, to use for the statistics in the
    #               <code>InsightRuleMetricDatapoint</code> results.</p>
    # @option params [Integer] :max_contributor_count
    #   <p>The maximum number of contributors to include in the report. The range is 1 to 100. If
    #               you omit this, the default of 10 is used.</p>
    # @option params [Array<String>] :metrics
    #   <p>Specifies which metrics to use for aggregation of contributor values for the report.
    #               You can specify one or more of the following metrics:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UniqueContributors</code> -- the number of unique contributors for each
    #                       data point.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MaxContributorValue</code> -- the value of the top contributor for each
    #                       data point. The identity of the contributor might change for each data point in
    #                       the graph.</p>
    #                  <p>If this rule aggregates by COUNT, the top contributor for each data point is
    #                       the contributor with the most occurrences in that period. If the rule aggregates
    #                       by SUM, the top contributor is the contributor with the highest sum in the log
    #                       field specified by the rule's <code>Value</code>, during that period.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SampleCount</code> -- the number of data points matched by the
    #                       rule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sum</code> -- the sum of the values from all contributors during the
    #                       time period represented by that data point.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Minimum</code> -- the minimum value from a single observation during the
    #                       time period represented by that data point.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Maximum</code> -- the maximum value from a single observation during the
    #                       time period represented by that data point.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Average</code> -- the average value from all contributors during the
    #                       time period represented by that data point.</p>
    #               </li>
    #            </ul>
    # @option params [String] :order_by
    #   <p>Determines what statistic to use to rank the contributors. Valid values are
    #               <code>Sum</code> and <code>Maximum</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "InsightRuleName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     max_contributor_count: 1,
    #     metrics: ["InsightRuleMetricName"],
    #     order_by: "InsightRuleOrderBy"
    #   }
    #   options = {}
    #   response = client.get_insight_rule_report(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_labels: ["InsightRuleContributorKeyLabel"],
    #     aggregation_statistic: "InsightRuleAggregationStatistic",
    #     aggregate_value: 1.0,
    #     approximate_unique_count: 1,
    #     contributors: [
    #       {
    #         keys: ["InsightRuleContributorKey"], # required
    #         approximate_aggregate_value: 1.0, # required
    #         datapoints: [ # required
    #           {
    #             timestamp: Time.now, # required
    #             approximate_value: 1.0, # required
    #           }
    #         ]
    #       }
    #     ],
    #     metric_datapoints: [
    #       {
    #         timestamp: Time.now, # required
    #         unique_contributors: 1.0,
    #         max_contributor_value: 1.0,
    #         sample_count: 1.0,
    #         average: 1.0,
    #         sum: 1.0,
    #         minimum: 1.0,
    #         maximum: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::GetInsightRuleReportOutput]
    def get_insight_rule_report(params = {}, options = {})
      request = build_request(:get_insight_rule_report, params)
      request.send_request(options)
    end

    # <p>You can use the <code>GetMetricData</code> API to retrieve CloudWatch metric
    #             values. The operation can also include a CloudWatch Metrics Insights query, and
    #             one or more metric math functions.</p>
    #          <p>A <code>GetMetricData</code> operation that does not include a query can retrieve
    #             as many as 500 different metrics in a single request, with a total of as many as 100,800
    #             data points. You can also optionally perform metric math expressions on the values of
    #             the returned statistics, to create new time series that represent new insights into your
    #             data. For example, using Lambda metrics, you could divide the Errors metric by the
    #             Invocations metric to get an error rate time series. For more information about metric
    #             math expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User
    #             Guide</i>.</p>
    #          <p>If you include a Metrics Insights query, each <code>GetMetricData</code> operation can
    #             include only one query. But the same <code>GetMetricData</code> operation can also
    #             retrieve other metrics. Metrics Insights queries can query only the most recent three
    #             hours of metric data. For more information about Metrics Insights, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/query_with_cloudwatch-metrics-insights.html">Query your metrics with CloudWatch Metrics Insights</a>.</p>
    #          <p>Calls to the <code>GetMetricData</code> API have a different pricing structure than
    #             calls to <code>GetMetricStatistics</code>. For more information about pricing, see
    #             <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch
    #             Pricing</a>.</p>
    #          <p>Amazon CloudWatch retains metric data as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Data points with a period of less than 60 seconds are available for 3
    #                     hours. These data points are high-resolution metrics and are available only for
    #                     custom metrics that have been defined with a <code>StorageResolution</code> of
    #                     1.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 60 seconds (1-minute) are available for 15
    #                     days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 300 seconds (5-minute) are available for 63
    #                     days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 3600 seconds (1 hour) are available for 455
    #                     days (15 months).</p>
    #             </li>
    #          </ul>
    #          <p>Data points that are initially published with a shorter period are aggregated
    #             together for long-term storage. For example, if you collect data using a period of 1
    #             minute, the data remains available for 15 days with 1-minute resolution. After 15 days,
    #             this data is still available, but is aggregated and retrievable only with a resolution
    #             of 5 minutes. After 63 days, the data is further aggregated and is available with a
    #             resolution of 1 hour.</p>
    #          <p>If you omit <code>Unit</code> in your request, all data that was collected with any
    #             unit is returned, along with the corresponding units that were specified when the data
    #             was reported to CloudWatch. If you specify a unit, the operation returns only data that
    #             was collected with that unit specified. If you specify a unit that does not match the
    #             data collected, the results of the operation are null. CloudWatch does not perform unit
    #             conversions.</p>
    #          <p>
    #             <b>Using Metrics Insights queries with metric
    #             math</b>
    #          </p>
    #          <p>You can't mix a Metric Insights query and metric math syntax in the same expression,
    #             but you can reference results from a Metrics Insights query within other Metric math
    #             expressions. A Metrics Insights query without a <b>GROUP
    #                 BY</b> clause returns a single time-series (TS), and can be used as input for
    #             a metric math expression that expects a single time series. A Metrics Insights query
    #             with a <b>GROUP BY</b> clause returns an array of time-series
    #             (TS[]), and can be used as input for a metric math expression that expects an array of
    #             time series. </p>
    # @param [Hash, Types::GetMetricDataInput] params
    # @option params [Array<Types::MetricDataQuery>] :metric_data_queries
    #   <p>The metric queries to be returned. A single <code>GetMetricData</code> call can
    #               include as many as 500 <code>MetricDataQuery</code> structures. Each of these structures
    #               can specify either a metric to retrieve, a Metrics Insights query, or a math expression
    #               to perform on retrieved data. </p>
    # @option params [Time] :start_time
    #   <p>The time stamp indicating the earliest data to be returned.</p>
    #            <p>The value specified is inclusive; results include data points with the specified
    #               time stamp. </p>
    #            <p>CloudWatch rounds the specified time stamp as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Start time less than 15 days ago - Round down to the nearest whole minute.
    #                       For example, 12:32:34 is rounded down to 12:32:00.</p>
    #               </li>
    #               <li>
    #                  <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute
    #                       clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p>
    #               </li>
    #               <li>
    #                  <p>Start time greater than 63 days ago - Round down to the nearest 1-hour
    #                       clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p>
    #               </li>
    #            </ul>
    #            <p>If you set <code>Period</code> to 5, 10, 20, or 30, the start time of your request is
    #               rounded down to the nearest time that corresponds to even 5-, 10-, 20-, or 30-second
    #               divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the
    #               previous 10-second period, the start time of your request is rounded down and you
    #               receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous
    #               5 minutes of data, using a period of 5 seconds, you receive data timestamped between
    #               15:02:15 and 15:07:15. </p>
    #            <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code> values
    #               that align with the value of the metric's <code>Period</code> and sync up with the
    #               beginning and end of an hour. For example, if the <code>Period</code> of a metric is 5
    #               minutes, specifying 12:05 or 12:30 as <code>StartTime</code> can get a faster response
    #               from CloudWatch than setting 12:07 or 12:29 as the <code>StartTime</code>.</p>
    # @option params [Time] :end_time
    #   <p>The time stamp indicating the latest data to be returned.</p>
    #            <p>The value specified is exclusive; results include data points up to the specified
    #               time stamp.</p>
    #            <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code> values
    #               that align with the value of the metric's <code>Period</code> and sync up with the
    #               beginning and end of an hour. For example, if the <code>Period</code> of a metric is 5
    #               minutes, specifying 12:05 or 12:30 as <code>EndTime</code> can get a faster response
    #               from CloudWatch than setting 12:07 or 12:29 as the <code>EndTime</code>.</p>
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous <code>GetMetricData</code>
    #               operation, to get the next set of data points.</p>
    # @option params [String] :scan_by
    #   <p>The order in which data points should be returned. <code>TimestampDescending</code>
    #               returns the newest data first and paginates when the <code>MaxDatapoints</code> limit is
    #               reached. <code>TimestampAscending</code> returns the oldest data first and paginates
    #               when the <code>MaxDatapoints</code> limit is reached.</p>
    #            <p>If you omit this parameter, the default of <code>TimestampDescending</code> is
    #               used.</p>
    # @option params [Integer] :max_datapoints
    #   <p>The maximum number of data points the request should return before paginating. If you
    #               omit this, the default of 100,800 is used.</p>
    # @option params [Types::LabelOptions] :label_options
    #   <p>This structure includes the <code>Timezone</code> parameter, which you can use to
    #               specify your time zone so that the labels of returned data display the correct time for
    #               your time zone. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_data_queries: [ # required
    #       {
    #         id: "MetricId", # required
    #         metric_stat: {
    #           metric: { # required
    #             namespace: "Namespace",
    #             metric_name: "MetricName",
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ]
    #           },
    #           period: 1, # required
    #           stat: "Stat", # required
    #           unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #         },
    #         expression: "MetricExpression",
    #         label: "MetricLabel",
    #         return_data: false,
    #         period: 1,
    #         account_id: "AccountId"
    #       }
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "NextToken",
    #     scan_by: "TimestampDescending" # One of: ["TimestampDescending", "TimestampAscending"],
    #     max_datapoints: 1,
    #     label_options: {
    #       timezone: "GetMetricDataLabelTimezone"
    #     }
    #   }
    #   options = {}
    #   response = client.get_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_data_results: [
    #       {
    #         id: "MetricId",
    #         label: "MetricLabel",
    #         timestamps: [Time.now],
    #         values: [1.0],
    #         status_code: "Complete" # One of: ["Complete", "InternalError", "PartialData", "Forbidden"],
    #         messages: [
    #           {
    #             code: "MessageDataCode",
    #             value: "MessageDataValue"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     messages: [
    #       {
    #         code: "MessageDataCode",
    #         value: "MessageDataValue"
    #       }
    #     ]
    #   }
    # @return [Types::GetMetricDataOutput]
    def get_metric_data(params = {}, options = {})
      request = build_request(:get_metric_data, params)
      request.send_request(options)
    end

    # <p>Gets statistics for the specified metric.</p>
    #          <p>The maximum number of data points returned from a single call is 1,440. If you
    #             request more than 1,440 data points, CloudWatch returns an error. To reduce the number
    #             of data points, you can narrow the specified time range and make multiple requests
    #             across adjacent time ranges, or you can increase the specified period. Data points are
    #             not returned in chronological order.</p>
    #          <p>CloudWatch aggregates data points based on the length of the period that you
    #             specify. For example, if you request statistics with a one-hour period, CloudWatch
    #             aggregates all data points with time stamps that fall within each one-hour period.
    #             Therefore, the number of values aggregated by CloudWatch is larger than the number of
    #             data points returned.</p>
    #          <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish
    #             data using a statistic set instead, you can only retrieve percentile statistics for this
    #             data if one of the following conditions is true:</p>
    #          <ul>
    #             <li>
    #                <p>The SampleCount value of the statistic set is 1.</p>
    #             </li>
    #             <li>
    #                <p>The Min and the Max values of the statistic set are equal.</p>
    #             </li>
    #          </ul>
    #          <p>Percentile statistics are not available for metrics when any of the metric values
    #             are negative numbers.</p>
    #          <p>Amazon CloudWatch retains metric data as follows:</p>
    #          <ul>
    #             <li>
    #                <p>Data points with a period of less than 60 seconds are available for 3
    #                     hours. These data points are high-resolution metrics and are available only for
    #                     custom metrics that have been defined with a <code>StorageResolution</code> of
    #                     1.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 60 seconds (1-minute) are available for 15
    #                     days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 300 seconds (5-minute) are available for 63
    #                     days.</p>
    #             </li>
    #             <li>
    #                <p>Data points with a period of 3600 seconds (1 hour) are available for 455
    #                     days (15 months).</p>
    #             </li>
    #          </ul>
    #          <p>Data points that are initially published with a shorter period are aggregated
    #             together for long-term storage. For example, if you collect data using a period of 1
    #             minute, the data remains available for 15 days with 1-minute resolution. After 15 days,
    #             this data is still available, but is aggregated and retrievable only with a resolution
    #             of 5 minutes. After 63 days, the data is further aggregated and is available with a
    #             resolution of 1 hour.</p>
    #          <p>CloudWatch started retaining 5-minute and 1-hour metric data as of July 9,
    #             2016.</p>
    #          <p>For information about metrics and dimensions supported by Amazon Web Services
    #             services, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html">Amazon CloudWatch
    #             Metrics and Dimensions Reference</a> in the <i>Amazon CloudWatch User
    #             Guide</i>.</p>
    # @param [Hash, Types::GetMetricStatisticsInput] params
    # @option params [String] :namespace
    #   <p>The namespace of the metric, with or without spaces.</p>
    # @option params [String] :metric_name
    #   <p>The name of the metric, with or without spaces.</p>
    # @option params [Array<Types::Dimension>] :dimensions
    #   <p>The dimensions. If the metric contains multiple dimensions, you must include a
    #               value for each dimension. CloudWatch treats each unique combination of dimensions as a
    #               separate metric. If a specific combination of dimensions was not published, you can't
    #               retrieve statistics for it. You must specify the same dimensions that were used when the
    #               metrics were created. For an example, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations">Dimension Combinations</a> in the <i>Amazon CloudWatch User
    #               Guide</i>. For more information about specifying dimensions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the <i>Amazon CloudWatch User
    #               Guide</i>.</p>
    # @option params [Time] :start_time
    #   <p>The time stamp that determines the first data point to return. Start times are
    #               evaluated relative to the time that CloudWatch receives the request.</p>
    #            <p>The value specified is inclusive; results include data points with the specified
    #               time stamp. In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for
    #               example, 2016-10-03T23:00:00Z).</p>
    #            <p>CloudWatch rounds the specified time stamp as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Start time less than 15 days ago - Round down to the nearest whole minute.
    #                       For example, 12:32:34 is rounded down to 12:32:00.</p>
    #               </li>
    #               <li>
    #                  <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute
    #                       clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p>
    #               </li>
    #               <li>
    #                  <p>Start time greater than 63 days ago - Round down to the nearest 1-hour
    #                       clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p>
    #               </li>
    #            </ul>
    #            <p>If you set <code>Period</code> to 5, 10, 20, or 30, the start time of your request is
    #               rounded down to the nearest time that corresponds to even 5-, 10-, 20-, or 30-second
    #               divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the
    #               previous 10-second period, the start time of your request is rounded down and you
    #               receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous
    #               5 minutes of data, using a period of 5 seconds, you receive data timestamped between
    #               15:02:15 and 15:07:15. </p>
    # @option params [Time] :end_time
    #   <p>The time stamp that determines the last data point to return.</p>
    #            <p>The value specified is exclusive; results include data points up to the specified
    #               time stamp. In a raw HTTP query, the time stamp must be in ISO 8601 UTC format (for
    #               example, 2016-10-10T23:00:00Z).</p>
    # @option params [Integer] :period
    #   <p>The granularity, in seconds, of the returned data points. For metrics with regular
    #               resolution, a period can be as short as one minute (60 seconds) and must be a multiple
    #               of 60. For high-resolution metrics that are collected at intervals of less than one
    #               minute, the period can be 1, 5, 10, 20, 30, 60, or any multiple of 60. High-resolution
    #               metrics are those metrics stored by a <code>PutMetricData</code> call that includes a
    #               <code>StorageResolution</code> of 1 second.</p>
    #            <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than
    #               3 hours ago, you must specify the period as follows or no data points in that time range
    #               is returned:</p>
    #            <ul>
    #               <li>
    #                  <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds
    #                       (1 minute).</p>
    #               </li>
    #               <li>
    #                  <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5
    #                       minutes).</p>
    #               </li>
    #               <li>
    #                  <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1
    #                       hour).</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :statistics
    #   <p>The metric statistics, other than percentile. For percentile statistics, use
    #               <code>ExtendedStatistics</code>. When calling <code>GetMetricStatistics</code>, you
    #               must specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not
    #               both.</p>
    # @option params [Array<String>] :extended_statistics
    #   <p>The percentile statistics. Specify values between p0.0 and p100. When calling
    #               <code>GetMetricStatistics</code>, you must specify either <code>Statistics</code> or
    #               <code>ExtendedStatistics</code>, but not both. Percentile statistics are not
    #               available for metrics when any of the metric values are negative numbers.</p>
    # @option params [String] :unit
    #   <p>The unit for a given metric. If you omit <code>Unit</code>, all data that was
    #               collected with any unit is returned, along with the corresponding units that were
    #               specified when the data was reported to CloudWatch. If you specify a unit, the operation
    #               returns only data that was collected with that unit specified. If you specify a unit
    #               that does not match the data collected, the results of the operation are null.
    #               CloudWatch does not perform unit conversions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace: "Namespace", # required
    #     metric_name: "MetricName", # required
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     period: 1, # required
    #     statistics: ["SampleCount" # One of: ["SampleCount", "Average", "Sum", "Minimum", "Maximum"]],
    #     extended_statistics: ["ExtendedStatistic"],
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #   }
    #   options = {}
    #   response = client.get_metric_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     label: "MetricLabel",
    #     datapoints: [
    #       {
    #         timestamp: Time.now,
    #         sample_count: 1.0,
    #         average: 1.0,
    #         sum: 1.0,
    #         minimum: 1.0,
    #         maximum: 1.0,
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #         extended_statistics: {
    #           "ExtendedStatistic" => 1.0
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetMetricStatisticsOutput]
    def get_metric_statistics(params = {}, options = {})
      request = build_request(:get_metric_statistics, params)
      request.send_request(options)
    end

    # <p>Returns information about the metric stream that you specify.</p>
    # @param [Hash, Types::GetMetricStreamInput] params
    # @option params [String] :name
    #   <p>The name of the metric stream to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MetricStreamName", # required
    #   }
    #   options = {}
    #   response = client.get_metric_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "AmazonResourceName",
    #     name: "MetricStreamName",
    #     include_filters: [
    #       {
    #         namespace: "Namespace",
    #         metric_names: ["MetricName"]
    #       }
    #     ],
    #     exclude_filters: [
    #       {
    #         namespace: "Namespace",
    #         metric_names: ["MetricName"]
    #       }
    #     ],
    #     firehose_arn: "AmazonResourceName",
    #     role_arn: "AmazonResourceName",
    #     state: "MetricStreamState",
    #     creation_date: Time.now,
    #     last_update_date: Time.now,
    #     output_format: "json" # One of: ["json", "opentelemetry0.7", "opentelemetry1.0"],
    #     statistics_configurations: [
    #       {
    #         include_metrics: [ # required
    #           {
    #             namespace: "Namespace", # required
    #             metric_name: "MetricName", # required
    #           }
    #         ],
    #         additional_statistics: ["MetricStreamStatistic"], # required
    #       }
    #     ],
    #     include_linked_accounts_metrics: false
    #   }
    # @return [Types::GetMetricStreamOutput]
    def get_metric_stream(params = {}, options = {})
      request = build_request(:get_metric_stream, params)
      request.send_request(options)
    end

    # <p>You can use the <code>GetMetricWidgetImage</code> API to retrieve a snapshot graph
    #             of one or more Amazon CloudWatch metrics as a bitmap image. You can then embed this
    #             image into your services and products, such as wiki pages, reports, and documents. You
    #             could also retrieve images regularly, such as every minute, and create your own custom
    #             live dashboard.</p>
    #          <p>The graph you retrieve can include all CloudWatch metric graph features, including
    #             metric math and horizontal and vertical annotations.</p>
    #          <p>There is a limit of 20 transactions per second for this API. Each
    #             <code>GetMetricWidgetImage</code> action has the following limits:</p>
    #          <ul>
    #             <li>
    #                <p>As many as 100 metrics in the graph.</p>
    #             </li>
    #             <li>
    #                <p>Up to 100 KB uncompressed payload.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetMetricWidgetImageInput] params
    # @option params [String] :metric_widget
    #   <p>A JSON string that defines the bitmap graph to be retrieved. The string includes
    #               the metrics to include in the graph, statistics, annotations, title, axis limits, and so
    #               on. You can include only one <code>MetricWidget</code> parameter in each
    #               <code>GetMetricWidgetImage</code> call.</p>
    #            <p>For more information about the syntax of <code>MetricWidget</code> see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Metric-Widget-Structure.html">GetMetricWidgetImage: Metric Widget Structure and Syntax</a>.</p>
    #            <p>If any metric on the graph could not load all the requested data points, an orange
    #               triangle with an exclamation point appears next to the graph legend.</p>
    # @option params [String] :output_format
    #   <p>The format of the resulting image. Only PNG images are supported.</p>
    #            <p>The default is <code>png</code>. If you specify <code>png</code>, the API returns
    #               an HTTP response with the content-type set to <code>text/xml</code>. The image data is
    #               in a <code>MetricWidgetImage</code> field. For example:</p>
    #            <p>
    #               <code> <GetMetricWidgetImageResponse xmlns=<URLstring>></code>
    #            </p>
    #            <p>
    #               <code> <GetMetricWidgetImageResult></code>
    #            </p>
    #            <p>
    #               <code> <MetricWidgetImage></code>
    #            </p>
    #            <p>
    #               <code> iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...</code>
    #            </p>
    #            <p>
    #               <code> </MetricWidgetImage></code>
    #            </p>
    #            <p>
    #               <code> </GetMetricWidgetImageResult></code>
    #            </p>
    #            <p>
    #               <code> <ResponseMetadata></code>
    #            </p>
    #            <p>
    #               <code>
    #               <RequestId>6f0d4192-4d42-11e8-82c1-f539a07e0e3b</RequestId></code>
    #            </p>
    #            <p>
    #               <code> </ResponseMetadata></code>
    #            </p>
    #            <p>
    #               <code></GetMetricWidgetImageResponse></code>
    #            </p>
    #            <p>The <code>image/png</code> setting is intended only for custom HTTP requests. For
    #               most use cases, and all actions using an Amazon Web Services SDK, you should use
    #               <code>png</code>. If you specify <code>image/png</code>, the HTTP response has a
    #               content-type set to <code>image/png</code>, and the body of the response is a PNG 
    #               image.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     metric_widget: "MetricWidget", # required
    #     output_format: "OutputFormat"
    #   }
    #   options = {}
    #   response = client.get_metric_widget_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_widget_image: "data"
    #   }
    # @return [Types::GetMetricWidgetImageOutput]
    def get_metric_widget_image(params = {}, options = {})
      request = build_request(:get_metric_widget_image, params)
      request.send_request(options)
    end

    # <p>Returns a list of the dashboards for your account. If you include
    #             <code>DashboardNamePrefix</code>, only those dashboards with names starting with the
    #             prefix are listed. Otherwise, all dashboards in your account are listed. </p>
    #          <p>
    #             <code>ListDashboards</code> returns up to 1000 results on one page. If there are
    #             more than 1000 dashboards, you can call <code>ListDashboards</code> again and include
    #             the value you received for <code>NextToken</code> in the first call, to receive the next
    #             1000 results.</p>
    # @param [Hash, Types::ListDashboardsInput] params
    # @option params [String] :dashboard_name_prefix
    #   <p>If you specify this parameter, only the dashboards with names starting with the
    #               specified string are listed. The maximum length is 255, and valid characters are A-Z,
    #               a-z, 0-9, ".", "-", and "_". </p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to indicate that there is more data
    #               available.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_name_prefix: "DashboardNamePrefix",
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_dashboards(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_entries: [
    #       {
    #         dashboard_name: "DashboardName",
    #         dashboard_arn: "DashboardArn",
    #         last_modified: Time.now,
    #         size: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDashboardsOutput]
    def list_dashboards(params = {}, options = {})
      request = build_request(:list_dashboards, params)
      request.send_request(options)
    end

    # <p> Returns a list that contains the number of managed Contributor Insights rules in your
    #             account.
    #             
    #         </p>
    # @param [Hash, Types::ListManagedInsightRulesInput] params
    # @option params [String] :resource_arn
    #   <p> The ARN of an Amazon Web Services resource that has managed Contributor Insights
    #               rules. </p>
    # @option params [String] :next_token
    #   <p> Include this value to get the next set of rules if the value was returned by the
    #               previous operation. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return in one operation. If you omit this parameter,
    #               the default number is used. The default number is <code>100</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_managed_insight_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_rules: [
    #       {
    #         template_name: "TemplateName",
    #         resource_arn: "AmazonResourceName",
    #         rule_state: {
    #           rule_name: "InsightRuleName", # required
    #           state: "InsightRuleState", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListManagedInsightRulesOutput]
    def list_managed_insight_rules(params = {}, options = {})
      request = build_request(:list_managed_insight_rules, params)
      request.send_request(options)
    end

    # <p>Returns a list of metric streams in this account.</p>
    # @param [Hash, Types::ListMetricStreamsInput] params
    # @option params [String] :next_token
    #   <p>Include this value, if it was returned by the previous call, to get the next set of
    #               metric streams.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_metric_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     entries: [
    #       {
    #         arn: "AmazonResourceName",
    #         creation_date: Time.now,
    #         last_update_date: Time.now,
    #         name: "MetricStreamName",
    #         firehose_arn: "AmazonResourceName",
    #         state: "MetricStreamState",
    #         output_format: "json" # One of: ["json", "opentelemetry0.7", "opentelemetry1.0"]
    #       }
    #     ]
    #   }
    # @return [Types::ListMetricStreamsOutput]
    def list_metric_streams(params = {}, options = {})
      request = build_request(:list_metric_streams, params)
      request.send_request(options)
    end

    # <p>List the specified metrics. You can use the returned metrics with <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a> to get statistical data.</p>
    #          <p>Up to 500 results are returned for any one call. To retrieve additional results,
    #             use the returned token with subsequent calls.</p>
    #          <p>After you create a metric, allow up to 15 minutes for the metric to appear. To see
    #             metric statistics sooner, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.</p>
    #          <p>If you are using CloudWatch cross-account observability, you can use this
    #             operation in a monitoring account and view metrics from the linked source accounts. For
    #             more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    #          <p>
    #             <code>ListMetrics</code> doesn't return information about metrics if those metrics
    #             haven't reported data in the past two weeks. To retrieve those metrics, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.</p>
    # @param [Hash, Types::ListMetricsInput] params
    # @option params [String] :namespace
    #   <p>The metric namespace to filter against. Only the namespace that matches exactly
    #               will be returned.</p>
    # @option params [String] :metric_name
    #   <p>The name of the metric to filter against. Only the metrics with names that match
    #               exactly will be returned.</p>
    # @option params [Array<Types::DimensionFilter>] :dimensions
    #   <p>The dimensions to filter against. Only the dimension with names that match exactly will be
    #               returned. If you specify one dimension name and a metric has that dimension and also other dimensions, it will be returned.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to indicate that there is more data
    #               available.</p>
    # @option params [String] :recently_active
    #   <p>To filter the results to show only metrics that have had data points published in the
    #               past three hours, specify this parameter with a value of <code>PT3H</code>. This is the
    #               only valid value for this parameter.</p>
    #            <p>The results that are returned are an approximation of the value you specify. There is
    #               a low probability that the returned results include metrics with last published data as
    #               much as 50 minutes more than the specified time interval.</p>
    # @option params [Boolean] :include_linked_accounts
    #   <p>If you are using this operation in a monitoring account, specify <code>true</code> to
    #               include metrics from source accounts in the returned data.</p>
    #            <p>The default is <code>false</code>.</p>
    # @option params [String] :owning_account
    #   <p>When you use this operation in a monitoring account, use this field to return metrics
    #               only from one source account. To do so, specify that source account ID in this field,
    #               and also specify <code>true</code> for <code>IncludeLinkedAccounts</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue"
    #       }
    #     ],
    #     next_token: "NextToken",
    #     recently_active: "PT3H" # One of: ["PT3H"],
    #     include_linked_accounts: false,
    #     owning_account: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metrics: [
    #       {
    #         namespace: "Namespace",
    #         metric_name: "MetricName",
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     owning_accounts: ["AccountId"]
    #   }
    # @return [Types::ListMetricsOutput]
    def list_metrics(params = {}, options = {})
      request = build_request(:list_metrics, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a CloudWatch resource. Currently, alarms and
    #             Contributor Insights rules support tagging.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch resource that you want to view tags for.</p>
    #            <p>The ARN format of an alarm is
    #               <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i>
    #               </code>
    #            </p>
    #            <p>The ARN format of a Contributor Insights rule is
    #               <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule/<i>insight-rule-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web
    #                   Services General Reference</i>.</p>
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates an anomaly detection model for a CloudWatch metric. You can use the model to
    #             display a band of expected normal values when the metric is graphed.</p>
    #          <p>If you have enabled unified cross-account observability, and this account is a
    #             monitoring account, the metric can be in the same account or a source account. You can
    #             specify the account ID in the object you specify in the
    #             <code>SingleMetricAnomalyDetector</code> parameter.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Anomaly_Detection.html">CloudWatch Anomaly Detection</a>.</p>
    # @param [Hash, Types::PutAnomalyDetectorInput] params
    # @option params [String] :namespace
    #   <p>The namespace of the metric to create the anomaly detection model for.</p>
    # @option params [String] :metric_name
    #   <p>The name of the metric to create the anomaly detection model for.</p>
    # @option params [Array<Types::Dimension>] :dimensions
    #   <p>The metric dimensions to create the anomaly detection model for.</p>
    # @option params [String] :stat
    #   <p>The statistic to use for the metric and the anomaly detection model.</p>
    # @option params [Types::AnomalyDetectorConfiguration] :configuration
    #   <p>The configuration specifies details about how the anomaly detection model is to be
    #               trained, including time ranges to exclude when training and updating the model. You can
    #               specify as many as 10 time ranges.</p>
    #            <p>The configuration can also include the time zone to use for the metric.</p>
    # @option params [Types::MetricCharacteristics] :metric_characteristics
    #   <p>Use this object to include parameters to provide information about your metric to
    #               CloudWatch to help it build more accurate anomaly detection models.
    #               Currently, it includes the <code>PeriodicSpikes</code> parameter.</p>
    # @option params [Types::SingleMetricAnomalyDetector] :single_metric_anomaly_detector
    #   <p>A single metric anomaly detector to be created.</p>
    #            <p>When using <code>SingleMetricAnomalyDetector</code>, you cannot include the following
    #               parameters in the same operation:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Dimensions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MetricName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Namespace</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stat</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>the <code>MetricMathAnomalyDetector</code> parameters of
    #                       <code>PutAnomalyDetectorInput</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Instead, specify the single metric anomaly detector attributes as part of the property
    #               <code>SingleMetricAnomalyDetector</code>.</p>
    # @option params [Types::MetricMathAnomalyDetector] :metric_math_anomaly_detector
    #   <p>The metric math anomaly detector to be created.</p>
    #            <p>When using <code>MetricMathAnomalyDetector</code>, you cannot include the following
    #               parameters in the same operation:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Dimensions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MetricName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Namespace</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Stat</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>the <code>SingleMetricAnomalyDetector</code> parameters of
    #                       <code>PutAnomalyDetectorInput</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Instead, specify the metric math anomaly detector attributes as part of the property
    #               <code>MetricMathAnomalyDetector</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace: "Namespace",
    #     metric_name: "MetricName",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     stat: "AnomalyDetectorMetricStat",
    #     configuration: {
    #       excluded_time_ranges: [
    #         {
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         }
    #       ],
    #       metric_timezone: "AnomalyDetectorMetricTimezone"
    #     },
    #     metric_characteristics: {
    #       periodic_spikes: false
    #     },
    #     single_metric_anomaly_detector: {
    #       account_id: "AccountId",
    #       namespace: "Namespace",
    #       metric_name: "MetricName",
    #       dimensions: [
    #         {
    #           name: "DimensionName", # required
    #           value: "DimensionValue", # required
    #         }
    #       ],
    #       stat: "AnomalyDetectorMetricStat"
    #     },
    #     metric_math_anomaly_detector: {
    #       metric_data_queries: [
    #         {
    #           id: "MetricId", # required
    #           metric_stat: {
    #             metric: { # required
    #               namespace: "Namespace",
    #               metric_name: "MetricName",
    #               dimensions: [
    #                 {
    #                   name: "DimensionName", # required
    #                   value: "DimensionValue", # required
    #                 }
    #               ]
    #             },
    #             period: 1, # required
    #             stat: "Stat", # required
    #             unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #           },
    #           expression: "MetricExpression",
    #           label: "MetricLabel",
    #           return_data: false,
    #           period: 1,
    #           account_id: "AccountId"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_anomaly_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAnomalyDetectorOutput]
    def put_anomaly_detector(params = {}, options = {})
      request = build_request(:put_anomaly_detector, params)
      request.send_request(options)
    end

    # <p>Creates or updates a <i>composite alarm</i>. When you create a composite
    #             alarm, you specify a rule expression for the alarm that takes into account the alarm
    #             states of other alarms that you have created. The composite alarm goes into ALARM state
    #             only if all conditions of the rule are met.</p>
    #          <p>The alarms specified in a composite alarm's rule expression can include metric alarms
    #             and other composite alarms. The rule expression of a composite alarm can include as many
    #             as 100 underlying alarms. Any single alarm can be included in the rule expressions of as
    #             many as 150 composite alarms.</p>
    #          <p>Using composite alarms can reduce alarm noise. You can create multiple metric alarms,
    #             and also create a composite alarm and set up alerts only for the composite alarm. For
    #             example, you could create a composite alarm that goes into ALARM state only when more
    #             than one of the underlying metric alarms are in ALARM state.</p>
    #          <p>Composite alarms can take the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>Notify Amazon SNS topics.</p>
    #             </li>
    #             <li>
    #                <p>Invoke Lambda functions.</p>
    #             </li>
    #             <li>
    #                <p>Create OpsItems in Systems Manager Ops Center.</p>
    #             </li>
    #             <li>
    #                <p>Create incidents in Systems Manager Incident Manager.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>It is possible to create a loop or cycle of composite alarms, where composite
    #                 alarm A depends on composite alarm B, and composite alarm B also depends on
    #                 composite alarm A. In this scenario, you can't delete any composite alarm that is
    #                 part of the cycle because there is always still a composite alarm that depends on
    #                 that alarm that you want to delete.</p>
    #             <p>To get out of such a situation, you must break the cycle by changing the rule of
    #                 one of the composite alarms in the cycle to remove a dependency that creates the
    #                 cycle. The simplest change to make to break a cycle is to change the
    #                 <code>AlarmRule</code> of one of the alarms to <code>false</code>. </p>
    #             <p>Additionally, the evaluation of composite alarms stops if CloudWatch detects a
    #                 cycle in the evaluation path. </p>
    #          </note>
    #          <p>When this operation creates an alarm, the alarm state is immediately set to
    #             <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set
    #             appropriately. Any actions associated with the new state are then executed. For a
    #             composite alarm, this initial time after creation is the only time that the alarm can be
    #             in <code>INSUFFICIENT_DATA</code> state.</p>
    #          <p>When you update an existing alarm, its state is left unchanged, but the update
    #             completely overwrites the previous configuration of the alarm.</p>
    #          <p>To use this operation, you must be signed on with the
    #             <code>cloudwatch:PutCompositeAlarm</code> permission that is scoped to
    #             <code>*</code>. You can't create a composite alarms if your
    #             <code>cloudwatch:PutCompositeAlarm</code> permission has a narrower scope.</p>
    #          <p>If you are an IAM user, you must have
    #             <code>iam:CreateServiceLinkedRole</code> to create a composite alarm that has
    #             Systems Manager OpsItem actions.</p>
    # @param [Hash, Types::PutCompositeAlarmInput] params
    # @option params [Boolean] :actions_enabled
    #   <p>Indicates whether actions should be executed during any changes to the alarm state of
    #               the composite alarm. The default is <code>TRUE</code>.</p>
    # @option params [Array<String>] :alarm_actions
    #   <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state
    #               from any other state. Each action is specified as an Amazon Resource Name
    #               (ARN).</p>
    #            <p>Valid Values: ]</p>
    #            <p>
    #               <b>Amazon SNS actions:</b>
    #            </p>
    #            <p>
    #               <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
    #               </code>
    #            </p>
    #            <p>
    #               <b>Lambda actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Invoke the latest version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a specific version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>version-number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a function by using an alias Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>alias-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Systems Manager actions:</b>
    #            </p>
    #            <p>
    #               <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:opsitem:<i>severity</i>
    #               </code>
    #            </p>
    #            <p>
    #               <b>Start a Amazon Q Developer operational investigation</b>
    #            </p>
    #            <p>
    #               <code>arn:aws:aiops:<i>region</i>:<i>account-id</i>:investigation-group:<i>investigation-group-id</i>
    #               </code>
    #            </p>
    # @option params [String] :alarm_description
    #   <p>The description for the composite alarm.</p>
    # @option params [String] :alarm_name
    #   <p>The name for the composite alarm. This name must be unique within the
    #               Region.</p>
    # @option params [String] :alarm_rule
    #   <p>An expression that specifies which other alarms are to be evaluated to determine this
    #               composite alarm's state. For each alarm that you reference, you designate a function
    #               that specifies whether that alarm needs to be in ALARM state, OK state, or
    #               INSUFFICIENT_DATA state. You can use operators (AND, OR and NOT) to combine multiple
    #               functions in a single expression. You can use parenthesis to logically group the
    #               functions in your expression.</p>
    #            <p>You can use either alarm names or ARNs to reference the other alarms that are to be
    #               evaluated.</p>
    #            <p>Functions can include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM("<i>alarm-name</i> or
    #                       <i>alarm-ARN</i>")</code> is TRUE if the named alarm is in
    #                       ALARM state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OK("<i>alarm-name</i> or
    #                       <i>alarm-ARN</i>")</code> is TRUE if the named alarm is in OK
    #                       state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_DATA("<i>alarm-name</i> or
    #                       <i>alarm-ARN</i>")</code> is TRUE if the named alarm is in
    #                       INSUFFICIENT_DATA state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TRUE</code> always evaluates to TRUE.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FALSE</code> always evaluates to FALSE.</p>
    #               </li>
    #            </ul>
    #            <p>TRUE and FALSE are useful for testing a complex <code>AlarmRule</code> structure, and
    #               for testing your alarm actions.</p>
    #            <p>Alarm names specified in <code>AlarmRule</code> can be surrounded with double-quotes
    #               ("), but do not have to be.</p>
    #            <p>The following are some examples of <code>AlarmRule</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALARM(CPUUtilizationTooHigh) AND ALARM(DiskReadOpsTooHigh)</code>
    #                       specifies that the composite alarm goes into ALARM state only if both
    #                       CPUUtilizationTooHigh and DiskReadOpsTooHigh alarms are in ALARM state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALARM(CPUUtilizationTooHigh) AND NOT ALARM(DeploymentInProgress)</code>
    #                       specifies that the alarm goes to ALARM state if CPUUtilizationTooHigh is in
    #                       ALARM state and DeploymentInProgress is not in ALARM state. This example reduces
    #                       alarm noise during a known deployment window.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND
    #                       OK(NetworkOutTooHigh)</code> goes into ALARM state if CPUUtilizationTooHigh
    #                       OR DiskReadOpsTooHigh is in ALARM state, and if NetworkOutTooHigh is in OK
    #                       state. This provides another example of using a composite alarm to prevent
    #                       noise. This rule ensures that you are not notified with an alarm action on high
    #                       CPU or disk usage if a known network problem is also occurring.</p>
    #               </li>
    #            </ul>
    #            <p>The <code>AlarmRule</code> can specify as many as 100 "children" alarms. The
    #               <code>AlarmRule</code> expression can have as many as 500 elements. Elements are
    #               child alarms, TRUE or FALSE statements, and parentheses.</p>
    # @option params [Array<String>] :insufficient_data_actions
    #   <p>The actions to execute when this alarm transitions to the
    #               <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified
    #               as an Amazon Resource Name (ARN).</p>
    #            <p>Valid Values: ]</p>
    #            <p>
    #               <b>Amazon SNS actions:</b>
    #            </p>
    #            <p>
    #               <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
    #               </code>
    #            </p>
    #            <p>
    #               <b>Lambda actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Invoke the latest version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a specific version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>version-number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a function by using an alias Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>alias-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :ok_actions
    #   <p>The actions to execute when this alarm transitions to an <code>OK</code> state from
    #               any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
    #            <p>Valid Values: ]</p>
    #            <p>
    #               <b>Amazon SNS actions:</b>
    #            </p>
    #            <p>
    #               <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
    #               </code>
    #            </p>
    #            <p>
    #               <b>Lambda actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Invoke the latest version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a specific version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>version-number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a function by using an alias Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>alias-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to associate with the alarm. You can associate as many as
    #               50 tags with an alarm. To be able to associate tags with the alarm when you create the
    #               alarm, you must have the <code>cloudwatch:TagResource</code> permission.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to
    #               scope user permissions by granting a user permission to access or change only resources
    #               with certain tag values.</p>
    #            <p>If you are using this operation to update an existing alarm, any tags you specify in
    #               this parameter are ignored. To change the tags of an existing alarm, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html">TagResource</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    # @option params [String] :actions_suppressor
    #   <p> Actions will be suppressed if the suppressor alarm is in the <code>ALARM</code>
    #               state. <code>ActionsSuppressor</code> can be an AlarmName or an Amazon Resource Name
    #               (ARN) from an existing alarm. </p>
    # @option params [Integer] :actions_suppressor_wait_period
    #   <p> The maximum time in seconds that the composite alarm waits for the suppressor alarm
    #               to go into the <code>ALARM</code> state. After this time, the composite alarm performs
    #               its actions. </p>
    #            <important>
    #               <p>
    #                  <code>WaitPeriod</code> is required only when <code>ActionsSuppressor</code> is
    #                   specified. </p>
    #            </important>
    # @option params [Integer] :actions_suppressor_extension_period
    #   <p> The maximum time in seconds that the composite alarm waits after suppressor alarm
    #               goes out of the <code>ALARM</code> state. After this time, the composite alarm performs
    #               its actions. </p>
    #            <important>
    #               <p>
    #                  <code>ExtensionPeriod</code> is required only when <code>ActionsSuppressor</code> is
    #                   specified. </p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     actions_enabled: false,
    #     alarm_actions: ["ResourceName"],
    #     alarm_description: "AlarmDescription",
    #     alarm_name: "AlarmName", # required
    #     alarm_rule: "AlarmRule", # required
    #     insufficient_data_actions: ["ResourceName"],
    #     ok_actions: ["ResourceName"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     actions_suppressor: "AlarmArn",
    #     actions_suppressor_wait_period: 1,
    #     actions_suppressor_extension_period: 1
    #   }
    #   options = {}
    #   response = client.put_composite_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_composite_alarm(params = {}, options = {})
      request = build_request(:put_composite_alarm, params)
      request.send_request(options)
    end

    # <p>Creates a dashboard if it does not already exist, or updates an existing dashboard.
    #             If you update a dashboard, the entire contents are replaced with what you specify
    #             here.</p>
    #          <p>All dashboards in your account are global, not region-specific.</p>
    #          <p>A simple way to create a dashboard using <code>PutDashboard</code> is to copy an
    #             existing dashboard. To copy an existing dashboard using the console, you can load the
    #             dashboard and then use the View/edit source command in the Actions menu to display the
    #             JSON block for that dashboard. Another way to copy a dashboard is to use
    #                 <code>GetDashboard</code>, and then use the data returned within
    #                 <code>DashboardBody</code> as the template for the new dashboard when you call
    #                 <code>PutDashboard</code>.</p>
    #          <p>When you create a dashboard with <code>PutDashboard</code>, a good practice is to
    #             add a text widget at the top of the dashboard with a message that the dashboard was
    #             created by script and should not be changed in the console. This message could also
    #             point console users to the location of the <code>DashboardBody</code> script or the
    #             CloudFormation template used to create the dashboard.</p>
    # @param [Hash, Types::PutDashboardInput] params
    # @option params [String] :dashboard_name
    #   <p>The name of the dashboard. If a dashboard with this name already exists, this call
    #               modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is
    #               created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, "-", and
    #               "_". This parameter is required.</p>
    # @option params [String] :dashboard_body
    #   <p>The detailed information about the dashboard in JSON format, including the widgets
    #               to include and their location on the dashboard. This parameter is required.</p>
    #            <p>For more information about the syntax, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html">Dashboard Body Structure and Syntax</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dashboard_name: "DashboardName", # required
    #     dashboard_body: "DashboardBody", # required
    #   }
    #   options = {}
    #   response = client.put_dashboard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dashboard_validation_messages: [
    #       {
    #         data_path: "DataPath",
    #         message: "Message"
    #       }
    #     ]
    #   }
    # @return [Types::PutDashboardOutput]
    def put_dashboard(params = {}, options = {})
      request = build_request(:put_dashboard, params)
      request.send_request(options)
    end

    # <p>Creates a Contributor Insights rule. Rules evaluate log events in a CloudWatch Logs
    #             log group, enabling you to find contributor data for the log events in that log group.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights.html">Using Contributor
    #                 Insights to Analyze High-Cardinality Data</a>.</p>
    #          <p>If you create a rule, delete it, and then re-create it with the same name, historical
    #             data from the first time the rule was created might not be available.</p>
    # @param [Hash, Types::PutInsightRuleInput] params
    # @option params [String] :rule_name
    #   <p>A unique name for the rule.</p>
    # @option params [String] :rule_state
    #   <p>The state of the rule. Valid values are ENABLED and DISABLED.</p>
    # @option params [String] :rule_definition
    #   <p>The definition of the rule, as a JSON object. For details on the valid syntax, see
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html">Contributor Insights Rule Syntax</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to associate with the Contributor Insights rule. You can
    #               associate as many as 50 tags with a rule.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to
    #               scope user permissions, by granting a user permission to access or change only the
    #               resources that have certain tag values.</p>
    #            <p>To be able to associate tags with a rule, you must have the
    #               <code>cloudwatch:TagResource</code> permission in addition to the
    #               <code>cloudwatch:PutInsightRule</code> permission.</p>
    #            <p>If you are using this operation to update an existing Contributor Insights rule, any
    #               tags you specify in this parameter are ignored. To change the tags of an existing rule,
    #               use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    # @option params [Boolean] :apply_on_transformed_logs
    #   <p>Specify <code>true</code> to have this rule evaluate log events after they have been transformed by  
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatch-Logs-Transformation.html">Log transformation</a>. If you specify <code>true</code>, then the log events in log groups that have transformers will 
    #          be evaluated by Contributor Insights after being transformed. Log groups that don't have
    #           transformers will still have their original log events evaluated by Contributor Insights.</p>
    #            <p>The default is <code>false</code>
    #            </p>
    #            <note>
    #               <p>If a log group has a transformer, and transformation fails for some log events, those log events won't be evaluated by
    #           Contributor Insights. For information about investigating log transformation failures, see
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Transformation-Errors-Metrics.html">Transformation metrics and errors</a>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_name: "InsightRuleName", # required
    #     rule_state: "InsightRuleState",
    #     rule_definition: "InsightRuleDefinition", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     apply_on_transformed_logs: false
    #   }
    #   options = {}
    #   response = client.put_insight_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutInsightRuleOutput]
    def put_insight_rule(params = {}, options = {})
      request = build_request(:put_insight_rule, params)
      request.send_request(options)
    end

    # <p> Creates a managed Contributor Insights rule for a specified Amazon Web Services
    #             resource. When you enable a managed rule, you create a Contributor Insights rule that
    #             collects data from Amazon Web Services services. You cannot edit these rules with
    #             <code>PutInsightRule</code>. The rules can be enabled, disabled, and deleted using
    #             <code>EnableInsightRules</code>, <code>DisableInsightRules</code>, and
    #             <code>DeleteInsightRules</code>. If a previously created managed rule is currently
    #             disabled, a subsequent call to this API will re-enable it. Use
    #             <code>ListManagedInsightRules</code> to describe all available rules.
    #             
    #         </p>
    # @param [Hash, Types::PutManagedInsightRulesInput] params
    # @option params [Array<Types::ManagedRule>] :managed_rules
    #   <p> A list of <code>ManagedRules</code> to enable. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_rules: [ # required
    #       {
    #         template_name: "TemplateName", # required
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_managed_insight_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failures: [
    #       {
    #         failure_resource: "FailureResource",
    #         exception_type: "ExceptionType",
    #         failure_code: "FailureCode",
    #         failure_description: "FailureDescription"
    #       }
    #     ]
    #   }
    # @return [Types::PutManagedInsightRulesOutput]
    def put_managed_insight_rules(params = {}, options = {})
      request = build_request(:put_managed_insight_rules, params)
      request.send_request(options)
    end

    # <p>Creates or updates an alarm and associates it with the specified metric, metric
    #             math expression, anomaly detection model, or Metrics Insights query. For more
    #             information about using a Metrics Insights query for an alarm, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Metrics_Insights_Alarm.html">Create
    #             alarms on Metrics Insights queries</a>.</p>
    #          <p>Alarms based on anomaly detection models cannot have Auto Scaling actions.</p>
    #          <p>When this operation creates an alarm, the alarm state is immediately set to
    #             <code>INSUFFICIENT_DATA</code>. The alarm is then evaluated and its state is set
    #             appropriately. Any actions associated with the new state are then executed.</p>
    #          <p>When you update an existing alarm, its state is left unchanged, but the update
    #             completely overwrites the previous configuration of the alarm.</p>
    #          <p>If you are an IAM user, you must have Amazon EC2 permissions for
    #             some alarm operations:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>iam:CreateServiceLinkedRole</code> permission for all alarms with
    #                     EC2 actions</p>
    #             </li>
    #             <li>
    #                <p>The <code>iam:CreateServiceLinkedRole</code> permissions to create an alarm
    #                     with Systems Manager OpsItem or response plan actions.</p>
    #             </li>
    #          </ul>
    #          <p>The first time you create an alarm in the Amazon Web Services Management Console, the CLI, or by using the PutMetricAlarm API, CloudWatch creates the necessary
    #             service-linked role for you. The service-linked roles are called
    #             <code>AWSServiceRoleForCloudWatchEvents</code> and
    #             <code>AWSServiceRoleForCloudWatchAlarms_ActionSSM</code>. For more information, see
    #             <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Amazon Web Services service-linked role</a>.</p>
    #          <p>Each <code>PutMetricAlarm</code> action has a maximum uncompressed payload of 120
    #             KB.</p>
    #          <p>
    #             <b>Cross-account alarms</b>
    #          </p>
    #          <p>You can set an alarm on metrics in the current account, or in another account. To
    #             create a cross-account alarm that watches a metric in a different account, you must have
    #             completed the following pre-requisites:</p>
    #          <ul>
    #             <li>
    #                <p>The account where the metrics are located (the <i>sharing
    #                     account</i>) must already have a sharing role named <b>CloudWatch-CrossAccountSharingRole</b>. If it does not
    #                     already have this role, you must create it using the instructions in <b>Set up a sharing account</b> in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region"> Cross-account cross-Region CloudWatch console</a>. The policy
    #                     for that role must grant access to the ID of the account where you are creating
    #                     the alarm. </p>
    #             </li>
    #             <li>
    #                <p>The account where you are creating the alarm (the <i>monitoring
    #                     account</i>) must already have a service-linked role named <b>AWSServiceRoleForCloudWatchCrossAccount</b> to allow
    #                     CloudWatch to assume the sharing role in the sharing account. If it
    #                     does not, you must create it following the directions in <b>Set up a monitoring account</b> in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Cross-Account-Cross-Region.html#enable-cross-account-cross-Region"> Cross-account cross-Region CloudWatch console</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutMetricAlarmInput] params
    # @option params [String] :alarm_name
    #   <p>The name for the alarm. This name must be unique within the Region.</p>
    #            <p>The name must contain only UTF-8 characters, and can't contain ASCII control
    #               characters</p>
    # @option params [String] :alarm_description
    #   <p>The description for the alarm.</p>
    # @option params [Boolean] :actions_enabled
    #   <p>Indicates whether actions should be executed during any changes to the alarm state.
    #               The default is <code>TRUE</code>.</p>
    # @option params [Array<String>] :ok_actions
    #   <p>The actions to execute when this alarm transitions to an <code>OK</code> state from
    #               any other state. Each action is specified as an Amazon Resource Name (ARN). Valid
    #               values:</p>
    #            <p>
    #               <b>EC2 actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:stop</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:reboot</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:recover</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Recover/1.0</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Autoscaling action:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Lambda actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Invoke the latest version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a specific version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>version-number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a function by using an alias Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>alias-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SNS notification action:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SSM integration actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:opsitem:<i>severity</i>#CATEGORY=<i>category-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:ssm-incidents::<i>account-id</i>:responseplan/<i>response-plan-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :alarm_actions
    #   <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state
    #               from any other state. Each action is specified as an Amazon Resource Name (ARN). Valid
    #               values:</p>
    #            <p>
    #               <b>EC2 actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:stop</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:reboot</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:recover</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Recover/1.0</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Autoscaling action:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Lambda actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Invoke the latest version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a specific version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>version-number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a function by using an alias Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>alias-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SNS notification action:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SSM integration actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:opsitem:<i>severity</i>#CATEGORY=<i>category-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:ssm-incidents::<i>account-id</i>:responseplan/<i>response-plan-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Start a Amazon Q Developer operational investigation</b>
    #            </p>
    #            <p>
    #               <code>arn:aws:aiops:<i>region</i>:<i>account-id</i>:investigation-group:<i>investigation-group-id</i>
    #               </code>
    #            </p>
    # @option params [Array<String>] :insufficient_data_actions
    #   <p>The actions to execute when this alarm transitions to the
    #               <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified
    #               as an Amazon Resource Name (ARN). Valid values:</p>
    #            <p>
    #               <b>EC2 actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:stop</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:terminate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:reboot</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:automate:<i>region</i>:ec2:recover</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Recover/1.0</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Autoscaling action:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>:autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Lambda actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Invoke the latest version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a specific version of a Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>version-number</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Invoke a function by using an alias Lambda function:
    #                       <code>arn:aws:lambda:<i>region</i>:<i>account-id</i>:function:<i>function-name</i>:<i>alias-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SNS notification action:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SSM integration actions:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:ssm:<i>region</i>:<i>account-id</i>:opsitem:<i>severity</i>#CATEGORY=<i>category-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:ssm-incidents::<i>account-id</i>:responseplan/<i>response-plan-name</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :metric_name
    #   <p>The name for the metric associated with the alarm. For each
    #               <code>PutMetricAlarm</code> operation, you must specify either
    #               <code>MetricName</code> or a <code>Metrics</code> array.</p>
    #            <p>If you are creating an alarm based on a math expression, you cannot specify this
    #               parameter, or any of the <code>Namespace</code>, <code>Dimensions</code>,
    #               <code>Period</code>, <code>Unit</code>, <code>Statistic</code>, or
    #               <code>ExtendedStatistic</code> parameters. Instead, you specify all this information
    #               in the <code>Metrics</code> array.</p>
    # @option params [String] :namespace
    #   <p>The namespace for the metric associated specified in
    #               <code>MetricName</code>.</p>
    # @option params [String] :statistic
    #   <p>The statistic for the metric specified in <code>MetricName</code>, other than
    #               percentile. For percentile statistics, use <code>ExtendedStatistic</code>. When you call
    #               <code>PutMetricAlarm</code> and specify a <code>MetricName</code>, you must specify
    #               either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>
    # @option params [String] :extended_statistic
    #   <p>The extended statistic for the metric specified in <code>MetricName</code>. When
    #               you call <code>PutMetricAlarm</code> and specify a <code>MetricName</code>, you must
    #               specify either <code>Statistic</code> or <code>ExtendedStatistic</code> but not
    #               both.</p>
    #            <p>If you specify <code>ExtendedStatistic</code>, the following are valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>p90</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tm90</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tc90</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ts90</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wm90</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IQM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PR(<i>n</i>:<i>m</i>)</code> where n and m
    #                       are values of the metric</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TC(<i>X</i>%:<i>X</i>%)</code> where X is
    #                       between 10 and 90 inclusive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TM(<i>X</i>%:<i>X</i>%)</code> where X is
    #                       between 10 and 90 inclusive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TS(<i>X</i>%:<i>X</i>%)</code> where X is
    #                       between 10 and 90 inclusive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WM(<i>X</i>%:<i>X</i>%)</code> where X is
    #                       between 10 and 90 inclusive.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about these extended statistics, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html">CloudWatch statistics definitions</a>.</p>
    # @option params [Array<Types::Dimension>] :dimensions
    #   <p>The dimensions for the metric specified in <code>MetricName</code>.</p>
    # @option params [Integer] :period
    #   <p>The length, in seconds, used each time the metric specified in
    #               <code>MetricName</code> is evaluated. Valid values are 10, 20, 30, and any multiple of
    #               60.</p>
    #            <p>
    #               <code>Period</code> is required for alarms based on static thresholds. If you are
    #               creating an alarm based on a metric math expression, you specify the period for each
    #               metric within the objects in the <code>Metrics</code> array.</p>
    #            <p>Be sure to specify 10, 20, or 30 only for metrics that are stored by a
    #               <code>PutMetricData</code> call with a <code>StorageResolution</code> of 1. If you
    #               specify a period of 10, 20, or 30 for a metric that does not have sub-minute resolution, the
    #               alarm still attempts to gather data at the period rate that you specify. In this case,
    #               it does not receive data for the attempts that do not correspond to a one-minute data
    #               resolution, and the alarm might often lapse into INSUFFICENT_DATA status. Specifying 10, 20,
    #               or 30 also sets this alarm as a high-resolution alarm, which has a higher charge than
    #               other alarms. For more information about pricing, see <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch
    #                   Pricing</a>.</p>
    #            <p>An alarm's total current evaluation period can be no longer than seven days, so
    #               <code>Period</code> multiplied by <code>EvaluationPeriods</code> can't be more than
    #               604,800 seconds. For alarms with a period of less than one hour (3,600 seconds), the total evaluation period can't be longer than one day (86,400 seconds).</p>
    # @option params [String] :unit
    #   <p>The unit of measure for the statistic. For example, the units for the Amazon EC2
    #               NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance
    #               receives on all network interfaces. You can also specify a unit when you create a custom
    #               metric. Units help provide conceptual meaning to your data. Metric data points that
    #               specify a unit of measure, such as Percent, are aggregated separately. If you are
    #               creating an alarm based on a metric math expression, you can specify the unit for each
    #               metric (if needed) within the objects in the <code>Metrics</code> array.</p>
    #            <p>If you don't specify <code>Unit</code>, CloudWatch retrieves all unit types that
    #               have been published for the metric and attempts to evaluate the alarm. Usually, metrics
    #               are published with only one unit, so the alarm works as intended.</p>
    #            <p>However, if the metric is published with multiple types of units and you don't
    #               specify a unit, the alarm's behavior is not defined and it behaves
    #               unpredictably.</p>
    #            <p>We recommend omitting <code>Unit</code> so that you don't inadvertently specify an
    #               incorrect unit that is not published for this metric. Doing so causes the alarm to be
    #               stuck in the <code>INSUFFICIENT DATA</code> state.</p>
    # @option params [Integer] :evaluation_periods
    #   <p>The number of periods over which data is compared to the specified threshold. If
    #               you are setting an alarm that requires that a number of consecutive data points be
    #               breaching to trigger the alarm, this value specifies that number. If you are setting an
    #               "M out of N" alarm, this value is the N.</p>
    # @option params [Integer] :datapoints_to_alarm
    #   <p>The number of data points that must be breaching to trigger the alarm. This is used
    #               only if you are setting an "M out of N" alarm. In that case, this value is the M. For
    #               more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation">Evaluating an Alarm</a> in the <i>Amazon CloudWatch User
    #               Guide</i>.</p>
    # @option params [Float] :threshold
    #   <p>The value against which the specified statistic is compared.</p>
    #            <p>This parameter is required for alarms based on static thresholds, but should not be
    #               used for alarms based on anomaly detection models.</p>
    # @option params [String] :comparison_operator
    #   <p> The arithmetic operation to use when comparing the specified statistic and
    #               threshold. The specified statistic value is used as the first operand.</p>
    #            <p>The values <code>LessThanLowerOrGreaterThanUpperThreshold</code>,
    #               <code>LessThanLowerThreshold</code>, and <code>GreaterThanUpperThreshold</code> are
    #               used only for alarms based on anomaly detection models.</p>
    # @option params [String] :treat_missing_data
    #   <p> Sets how this alarm is to handle missing data points. If
    #               <code>TreatMissingData</code> is omitted, the default behavior of
    #               <code>missing</code> is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data">Configuring How CloudWatch Alarms Treats Missing Data</a>.</p>
    #            <p>Valid Values: <code>breaching | notBreaching | ignore | missing</code>
    #            </p>
    #            <note>
    #               <p>Alarms that evaluate metrics in the <code>AWS/DynamoDB</code> namespace always
    #                   <code>ignore</code> missing data even if you choose a different option for
    #                   <code>TreatMissingData</code>. When an <code>AWS/DynamoDB</code> metric has
    #                   missing data, alarms that evaluate that metric remain in their current state.</p>
    #            </note>
    # @option params [String] :evaluate_low_sample_count_percentile
    #   <p> Used only for alarms based on percentiles. If you specify <code>ignore</code>, the
    #               alarm state does not change during periods with too few data points to be statistically
    #               significant. If you specify <code>evaluate</code> or omit this parameter, the alarm is
    #               always evaluated and possibly changes state no matter how many data points are
    #               available. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples">Percentile-Based CloudWatch Alarms and Low Data Samples</a>.</p>
    #            <p>Valid Values: <code>evaluate | ignore</code>
    #            </p>
    # @option params [Array<Types::MetricDataQuery>] :metrics
    #   <p>An array of <code>MetricDataQuery</code> structures that enable you to create an alarm
    #               based on the result of a metric math expression. For each <code>PutMetricAlarm</code>
    #               operation, you must specify either <code>MetricName</code> or a <code>Metrics</code>
    #               array.</p>
    #            <p>Each item in the <code>Metrics</code> array either retrieves a metric or performs a
    #               math expression.</p>
    #            <p>One item in the <code>Metrics</code> array is the expression that the alarm watches.
    #               You designate this expression by setting <code>ReturnData</code> to true for this object
    #               in the array. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDataQuery.html">MetricDataQuery</a>.</p>
    #            <p>If you use the <code>Metrics</code> parameter, you cannot include the
    #               <code>Namespace</code>, <code>MetricName</code>, <code>Dimensions</code>,
    #               <code>Period</code>, <code>Unit</code>, <code>Statistic</code>, or
    #               <code>ExtendedStatistic</code> parameters of <code>PutMetricAlarm</code> in the same
    #               operation. Instead, you retrieve the metrics you are using in your math expression as
    #               part of the <code>Metrics</code> array.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to associate with the alarm. You can associate as many as
    #               50 tags with an alarm. To be able to associate tags with the alarm when you create the
    #               alarm, you must have the <code>cloudwatch:TagResource</code> permission.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to
    #               scope user permissions by granting a user permission to access or change only resources
    #               with certain tag values.</p>
    #            <p>If you are using this operation to update an existing alarm, any tags you specify in
    #               this parameter are ignored. To change the tags of an existing alarm, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html">TagResource</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    #            <p>To use this field to set tags for an alarm when you create it, you must be signed on
    #               with both the <code>cloudwatch:PutMetricAlarm</code> and
    #               <code>cloudwatch:TagResource</code> permissions.</p>
    # @option params [String] :threshold_metric_id
    #   <p>If this is an alarm based on an anomaly detection model, make this value match the ID
    #               of the <code>ANOMALY_DETECTION_BAND</code> function.</p>
    #            <p>For an example of how to use this parameter, see the <b>Anomaly
    #               Detection Model Alarm</b> example on this page.</p>
    #            <p>If your alarm uses this parameter, it cannot have Auto Scaling actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "AlarmName", # required
    #     alarm_description: "AlarmDescription",
    #     actions_enabled: false,
    #     ok_actions: ["ResourceName"],
    #     alarm_actions: ["ResourceName"],
    #     insufficient_data_actions: ["ResourceName"],
    #     metric_name: "MetricName",
    #     namespace: "Namespace",
    #     statistic: "SampleCount" # One of: ["SampleCount", "Average", "Sum", "Minimum", "Maximum"],
    #     extended_statistic: "ExtendedStatistic",
    #     dimensions: [
    #       {
    #         name: "DimensionName", # required
    #         value: "DimensionValue", # required
    #       }
    #     ],
    #     period: 1,
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #     evaluation_periods: 1, # required
    #     datapoints_to_alarm: 1,
    #     threshold: 1.0,
    #     comparison_operator: "GreaterThanOrEqualToThreshold" # One of: ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold", "LessThanLowerOrGreaterThanUpperThreshold", "LessThanLowerThreshold", "GreaterThanUpperThreshold"], # required
    #     treat_missing_data: "TreatMissingData",
    #     evaluate_low_sample_count_percentile: "EvaluateLowSampleCountPercentile",
    #     metrics: [
    #       {
    #         id: "MetricId", # required
    #         metric_stat: {
    #           metric: { # required
    #             namespace: "Namespace",
    #             metric_name: "MetricName",
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ]
    #           },
    #           period: 1, # required
    #           stat: "Stat", # required
    #           unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"]
    #         },
    #         expression: "MetricExpression",
    #         label: "MetricLabel",
    #         return_data: false,
    #         period: 1,
    #         account_id: "AccountId"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     threshold_metric_id: "MetricId"
    #   }
    #   options = {}
    #   response = client.put_metric_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_metric_alarm(params = {}, options = {})
      request = build_request(:put_metric_alarm, params)
      request.send_request(options)
    end

    # <p>Publishes metric data to Amazon CloudWatch. CloudWatch associates the data with the
    #             specified metric. If the specified metric does not exist, CloudWatch creates the metric.
    #             When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to
    #             appear in calls to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #          <p>You can publish metrics with associated entity data (so that related telemetry can be
    #             found and viewed together), or publish metric data by itself. To send entity data with
    #             your metrics, use the <code>EntityMetricData</code> parameter. To send metrics without
    #             entity data, use the <code>MetricData</code> parameter. The
    #             <code>EntityMetricData</code> structure includes <code>MetricData</code> structures
    #             for the metric data.</p>
    #          <p>You can publish either individual values in the <code>Value</code> field, or arrays of
    #             values and the number of times each value occurred during the period by using the
    #                 <code>Values</code> and <code>Counts</code> fields in the <code>MetricData</code>
    #             structure. Using the <code>Values</code> and <code>Counts</code> method enables you to
    #             publish up to 150 values per metric with one <code>PutMetricData</code> request, and
    #             supports retrieving percentile statistics on this data.</p>
    #          <p>Each <code>PutMetricData</code> request is limited to 1 MB in size for HTTP POST
    #             requests. You can send a payload compressed by gzip. Each request is also limited to no
    #             more than 1000 different metrics (across both the <code>MetricData</code> and 
    #             <code>EntityMetricData</code> properties).</p>
    #          <p>Although the <code>Value</code> parameter accepts numbers of type <code>Double</code>,
    #             CloudWatch rejects values that are either too small or too large. Values must be in the
    #             range of -2^360 to 2^360. In addition, special values (for example, NaN, +Infinity,
    #             -Infinity) are not supported.</p>
    #          <p>You can use up to 30 dimensions per metric to further clarify what data the metric
    #             collects. Each dimension consists of a Name and Value pair. For more information about
    #             specifying dimensions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing
    #                 Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #          <p>You specify the time stamp to be associated with each data point. You can specify time
    #             stamps that are as much as two weeks before the current date, and as much as 2 hours
    #             after the current day and time.</p>
    #          <p>Data points with time stamps from 24 hours ago or longer can take at least 48 hours to
    #             become available for <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a> from the time they are submitted. Data points with time
    #             stamps between 3 and 24 hours ago can take as much as 2 hours to become available for
    #                 <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricData.html">GetMetricData</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_GetMetricStatistics.html">GetMetricStatistics</a>.</p>
    #          <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish
    #             data using a statistic set instead, you can only retrieve percentile statistics for this
    #             data if one of the following conditions is true:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>SampleCount</code> value of the statistic set is 1 and
    #                         <code>Min</code>, <code>Max</code>, and <code>Sum</code> are all
    #                     equal.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Min</code> and <code>Max</code> are equal, and <code>Sum</code>
    #                     is equal to <code>Min</code> multiplied by <code>SampleCount</code>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::PutMetricDataInput] params
    # @option params [String] :namespace
    #   <p>The namespace for the metric data. You can use ASCII characters for the namespace,
    #               except for control characters which are not supported.</p>
    #            <p>To avoid conflicts with Amazon Web Services service namespaces, you should not
    #               specify a namespace that begins with <code>AWS/</code>
    #            </p>
    # @option params [Array<Types::MetricDatum>] :metric_data
    #   <p>The data for the metrics. Use this parameter if your metrics do not contain
    #               associated entities. The array can include no more than 1000 metrics per call.</p>
    #            <p>The limit of metrics allowed, 1000, is the sum of both <code>EntityMetricData</code> 
    #               and <code>MetricData</code> metrics.</p>
    # @option params [Array<Types::EntityMetricData>] :entity_metric_data
    #   <p>Data for metrics that contain associated entity information. You can include up to 
    #               two <code>EntityMetricData</code> objects, each of which can contain a single 
    #               <code>Entity</code> and associated metrics.</p>
    #            <p>The limit of metrics allowed, 1000, is the sum of both <code>EntityMetricData</code> 
    #               and <code>MetricData</code> metrics.</p>
    # @option params [Boolean] :strict_entity_validation
    #   <p>Whether to accept valid metric data when an invalid entity is sent.</p>
    #            <ul>
    #               <li>
    #                  <p>When set to <code>true</code>: Any validation error (for entity or metric 
    #                       data) will fail the entire request, and no data will be ingested. The failed 
    #                       operation will return a 400 result with the error.</p>
    #               </li>
    #               <li>
    #                  <p>When set to <code>false</code>: Validation errors in the entity will not 
    #                       associate the metric with the entity, but the metric data will still be 
    #                       accepted and ingested. Validation errors in the metric data will fail the 
    #                       entire request, and no data will be ingested.</p>
    #                  <p>In the case of an invalid entity, the operation will return a 
    #                       <code>200</code> status, but an additional response header will contain 
    #                       information about the validation errors. The new header, 
    #                       <code>X-Amzn-Failure-Message</code> is an enumeration of the following 
    #                       values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>InvalidEntity</code> - The provided entity is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InvalidKeyAttributes</code> - The provided
    #                               <code>KeyAttributes</code> of an entity is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InvalidAttributes</code> - The provided <code>Attributes</code>
    #                               of an entity is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>InvalidTypeValue</code> - The provided <code>Type</code> in the
    #                               <code>KeyAttributes</code> of an entity is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>EntitySizeTooLarge</code> - The number of 
    #                               <code>EntityMetricData</code> objects allowed is 2.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MissingRequiredFields</code> - There are missing required 
    #                               fields in the <code>KeyAttributes</code> for the provided
    #                               <code>Type</code>.</p>
    #                     </li>
    #                  </ul>
    #                  <p>For details of the requirements for specifying an entity, see 
    #                       <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/adding-your-own-related-telemetry.html">How 
    #                       to add related information to telemetry</a> in the 
    #                       <i>CloudWatch User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>This parameter is <i>required</i> when <code>EntityMetricData</code> is
    #               included.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace: "Namespace", # required
    #     metric_data: [
    #       {
    #         metric_name: "MetricName", # required
    #         dimensions: [
    #           {
    #             name: "DimensionName", # required
    #             value: "DimensionValue", # required
    #           }
    #         ],
    #         timestamp: Time.now,
    #         value: 1.0,
    #         statistic_values: {
    #           sample_count: 1.0, # required
    #           sum: 1.0, # required
    #           minimum: 1.0, # required
    #           maximum: 1.0, # required
    #         },
    #         values: [1.0],
    #         counts: [1.0],
    #         unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #         storage_resolution: 1
    #       }
    #     ],
    #     entity_metric_data: [
    #       {
    #         entity: {
    #           key_attributes: {
    #             "EntityKeyAttributesMapKeyString" => "EntityKeyAttributesMapValueString"
    #           },
    #           attributes: {
    #             "EntityAttributesMapKeyString" => "EntityAttributesMapValueString"
    #           }
    #         },
    #         metric_data: [
    #           {
    #             metric_name: "MetricName", # required
    #             dimensions: [
    #               {
    #                 name: "DimensionName", # required
    #                 value: "DimensionValue", # required
    #               }
    #             ],
    #             timestamp: Time.now,
    #             value: 1.0,
    #             statistic_values: {
    #               sample_count: 1.0, # required
    #               sum: 1.0, # required
    #               minimum: 1.0, # required
    #               maximum: 1.0, # required
    #             },
    #             values: [1.0],
    #             counts: [1.0],
    #             unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #             storage_resolution: 1
    #           }
    #         ]
    #       }
    #     ],
    #     strict_entity_validation: false
    #   }
    #   options = {}
    #   response = client.put_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_metric_data(params = {}, options = {})
      request = build_request(:put_metric_data, params)
      request.send_request(options)
    end

    # <p>Creates or updates a metric stream. Metric streams can automatically stream CloudWatch
    #             metrics to Amazon Web Services destinations, including Amazon S3, and to many third-party
    #             solutions.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Metric-Streams.html"> Using
    #             Metric Streams</a>.</p>
    #          <p>To create a metric stream, you must be signed in to an account that has the
    #             <code>iam:PassRole</code> permission and either the
    #             <code>CloudWatchFullAccess</code> policy or the
    #             <code>cloudwatch:PutMetricStream</code> permission.</p>
    #          <p>When you create or update a metric stream, you choose one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>Stream metrics from all metric namespaces in the account.</p>
    #             </li>
    #             <li>
    #                <p>Stream metrics from all metric namespaces in the account, except for the
    #                     namespaces that you list in <code>ExcludeFilters</code>.</p>
    #             </li>
    #             <li>
    #                <p>Stream metrics from only the metric namespaces that you list in
    #                     <code>IncludeFilters</code>.</p>
    #             </li>
    #          </ul>
    #          <p>By default, a metric stream always sends the <code>MAX</code>, <code>MIN</code>,
    #             <code>SUM</code>, and <code>SAMPLECOUNT</code> statistics for each metric that is
    #             streamed. You can use the <code>StatisticsConfigurations</code> parameter to have the
    #             metric stream send additional statistics in the stream. Streaming additional statistics
    #             incurs additional costs. For more information, see <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>. </p>
    #          <p>When you use <code>PutMetricStream</code> to create a new metric stream, the stream is
    #             created in the <code>running</code> state. If you use it to update an existing stream,
    #             the state of the stream is not changed.</p>
    #          <p>If you are using CloudWatch cross-account observability and you create a metric
    #             stream in a monitoring account, you can choose whether to include metrics from source
    #             accounts in the stream. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Unified-Cross-Account.html">CloudWatch cross-account observability</a>.</p>
    # @param [Hash, Types::PutMetricStreamInput] params
    # @option params [String] :name
    #   <p>If you are creating a new metric stream, this is the name for the new stream. The name
    #               must be different than the names of other metric streams in this account and
    #               Region.</p>
    #            <p>If you are updating a metric stream, specify the name of that stream here.</p>
    #            <p>Valid characters are A-Z, a-z, 0-9, "-" and "_".</p>
    # @option params [Array<Types::MetricStreamFilter>] :include_filters
    #   <p>If you specify this parameter, the stream sends only the metrics from the metric
    #               namespaces that you specify here.</p>
    #            <p>You cannot include <code>IncludeFilters</code> and <code>ExcludeFilters</code> in the
    #               same operation.</p>
    # @option params [Array<Types::MetricStreamFilter>] :exclude_filters
    #   <p>If you specify this parameter, the stream sends metrics from all metric namespaces
    #               except for the namespaces that you specify here.</p>
    #            <p>You cannot include <code>ExcludeFilters</code> and <code>IncludeFilters</code> in the
    #               same operation.</p>
    # @option params [String] :firehose_arn
    #   <p>The ARN of the Amazon Kinesis Data Firehose delivery stream to use for this metric
    #               stream. This Amazon Kinesis Data Firehose delivery stream must already exist and must be
    #               in the same account as the metric stream.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of an IAM role that this metric stream will use to access Amazon Kinesis Data
    #               Firehose resources. This IAM role must already exist and must be in the same account as
    #               the metric stream. This IAM role must include the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>firehose:PutRecord</p>
    #               </li>
    #               <li>
    #                  <p>firehose:PutRecordBatch</p>
    #               </li>
    #            </ul>
    # @option params [String] :output_format
    #   <p>The output format for the stream. Valid values are <code>json</code>,
    #               <code>opentelemetry1.0</code>, and <code>opentelemetry0.7</code>. For more
    #               information about metric stream output formats, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-metric-streams-formats.html">
    #                   Metric streams output formats</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to associate with the metric stream. You can associate as
    #               many as 50 tags with a metric stream.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to
    #               scope user permissions by granting a user permission to access or change only resources
    #               with certain tag values.</p>
    #            <p>You can use this parameter only when you are creating a new metric stream. If you are
    #               using this operation to update an existing metric stream, any tags you specify in this
    #               parameter are ignored. To change the tags of an existing metric stream, use <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html">TagResource</a> or <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    # @option params [Array<Types::MetricStreamStatisticsConfiguration>] :statistics_configurations
    #   <p>By default, a metric stream always sends the <code>MAX</code>, <code>MIN</code>,
    #               <code>SUM</code>, and <code>SAMPLECOUNT</code> statistics for each metric that is
    #               streamed. You can use this parameter to have the metric stream also send additional
    #               statistics in the stream. This array can have up to 100 members.</p>
    #            <p>For each entry in this array, you specify one or more metrics and the list of
    #               additional statistics to stream for those metrics. The additional statistics that you
    #               can stream depend on the stream's <code>OutputFormat</code>. If the
    #               <code>OutputFormat</code> is <code>json</code>, you can stream any additional
    #               statistic that is supported by CloudWatch, listed in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Statistics-definitions.html.html">
    #                   CloudWatch statistics definitions</a>. If the <code>OutputFormat</code>
    #               is <code>opentelemetry1.0</code> or <code>opentelemetry0.7</code>, you can stream
    #               percentile statistics such as p95, p99.9, and so on.</p>
    # @option params [Boolean] :include_linked_accounts_metrics
    #   <p>If you are creating a metric stream in a monitoring account, specify <code>true</code>
    #               to include metrics from source accounts in the metric stream.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "MetricStreamName", # required
    #     include_filters: [
    #       {
    #         namespace: "Namespace",
    #         metric_names: ["MetricName"]
    #       }
    #     ],
    #     exclude_filters: [
    #       {
    #         namespace: "Namespace",
    #         metric_names: ["MetricName"]
    #       }
    #     ],
    #     firehose_arn: "AmazonResourceName", # required
    #     role_arn: "AmazonResourceName", # required
    #     output_format: "json" # One of: ["json", "opentelemetry0.7", "opentelemetry1.0"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     statistics_configurations: [
    #       {
    #         include_metrics: [ # required
    #           {
    #             namespace: "Namespace", # required
    #             metric_name: "MetricName", # required
    #           }
    #         ],
    #         additional_statistics: ["MetricStreamStatistic"], # required
    #       }
    #     ],
    #     include_linked_accounts_metrics: false
    #   }
    #   options = {}
    #   response = client.put_metric_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "AmazonResourceName"
    #   }
    # @return [Types::PutMetricStreamOutput]
    def put_metric_stream(params = {}, options = {})
      request = build_request(:put_metric_stream, params)
      request.send_request(options)
    end

    # <p>Temporarily sets the state of an alarm for testing purposes. When the updated state
    #             differs from the previous value, the action configured for the appropriate state is
    #             invoked. For example, if your alarm is configured to send an Amazon SNS message when an
    #             alarm is triggered, temporarily changing the alarm state to <code>ALARM</code> sends an
    #             SNS message.</p>
    #          <p>Metric alarms returns to their actual state quickly, often within seconds. Because
    #             the metric alarm state change happens quickly, it is typically only visible in the
    #             alarm's <b>History</b> tab in the Amazon CloudWatch console or
    #             through <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarmHistory.html">DescribeAlarmHistory</a>.</p>
    #          <p>If you use <code>SetAlarmState</code> on a composite alarm, the composite alarm is
    #             not guaranteed to return to its actual state. It returns to its actual state only once
    #             any of its children alarms change state. It is also reevaluated if you update its
    #             configuration.</p>
    #          <p>If an alarm triggers EC2 Auto Scaling policies or application Auto Scaling
    #             policies, you must include information in the <code>StateReasonData</code> parameter to
    #             enable the policy to take the correct action.</p>
    # @param [Hash, Types::SetAlarmStateInput] params
    # @option params [String] :alarm_name
    #   <p>The name of the alarm.</p>
    # @option params [String] :state_value
    #   <p>The value of the state.</p>
    # @option params [String] :state_reason
    #   <p>The reason that this alarm is set to this specific state, in text format.</p>
    # @option params [String] :state_reason_data
    #   <p>The reason that this alarm is set to this specific state, in JSON format.</p>
    #            <p>For SNS or EC2 alarm actions, this is just informational. But for EC2 Auto Scaling
    #               or application Auto Scaling alarm actions, the Auto Scaling policy uses the information
    #               in this field to take the correct action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_name: "AlarmName", # required
    #     state_value: "OK" # One of: ["OK", "ALARM", "INSUFFICIENT_DATA"], # required
    #     state_reason: "StateReason", # required
    #     state_reason_data: "StateReasonData"
    #   }
    #   options = {}
    #   response = client.set_alarm_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_alarm_state(params = {}, options = {})
      request = build_request(:set_alarm_state, params)
      request.send_request(options)
    end

    # <p>Starts the streaming of metrics for one or more of your metric streams.</p>
    # @param [Hash, Types::StartMetricStreamsInput] params
    # @option params [Array<String>] :names
    #   <p>The array of the names of metric streams to start streaming.</p>
    #            <p>This is an "all or nothing" operation. If you do not have permission to access all of
    #               the metric streams that you list here, then none of the streams that you list in the
    #               operation will start streaming.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["MetricStreamName"], # required
    #   }
    #   options = {}
    #   response = client.start_metric_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartMetricStreamsOutput]
    def start_metric_streams(params = {}, options = {})
      request = build_request(:start_metric_streams, params)
      request.send_request(options)
    end

    # <p>Stops the streaming of metrics for one or more of your metric streams.</p>
    # @param [Hash, Types::StopMetricStreamsInput] params
    # @option params [Array<String>] :names
    #   <p>The array of the names of metric streams to stop streaming.</p>
    #            <p>This is an "all or nothing" operation. If you do not have permission to access all of
    #               the metric streams that you list here, then none of the streams that you list in the
    #               operation will stop streaming.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["MetricStreamName"], # required
    #   }
    #   options = {}
    #   response = client.stop_metric_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopMetricStreamsOutput]
    def stop_metric_streams(params = {}, options = {})
      request = build_request(:stop_metric_streams, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch resource.
    #             Currently, the only CloudWatch resources that can be tagged are alarms and Contributor
    #             Insights rules.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to
    #             scope user permissions by granting a user permission to access or change only resources
    #             with certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted
    #             strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with an alarm that already has tags.
    #             If you specify a new tag key for the alarm, this tag is appended to the list of tags
    #             associated with the alarm. If you specify a tag key that is already associated with the
    #             alarm, the new tag value that you specify replaces the previous value for that
    #             tag.</p>
    #          <p>You can associate as many as 50 tags with a CloudWatch resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch resource that you're adding tags to.</p>
    #            <p>The ARN format of an alarm is
    #               <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i>
    #               </code>
    #            </p>
    #            <p>The ARN format of a Contributor Insights rule is
    #               <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule/<i>insight-rule-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web
    #                   Services General Reference</i>.</p>
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch resource that you're removing tags from.</p>
    #            <p>The ARN format of an alarm is
    #               <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:alarm:<i>alarm-name</i>
    #               </code>
    #            </p>
    #            <p>The ARN format of a Contributor Insights rule is
    #               <code>arn:aws:cloudwatch:<i>Region</i>:<i>account-id</i>:insight-rule/<i>insight-rule-name</i>
    #               </code>
    #            </p>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html#amazoncloudwatch-resources-for-iam-policies"> Resource Types Defined by Amazon CloudWatch</a> in the <i>Amazon Web
    #                   Services General Reference</i>.</p>
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
    # @return [Types::UntagResourceOutput]
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
      context[:gem_name] = 'aws-sdk-cloudwatch'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        alarm_exists: Waiters::AlarmExists,
        composite_alarm_exists: Waiters::CompositeAlarmExists
      }
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
