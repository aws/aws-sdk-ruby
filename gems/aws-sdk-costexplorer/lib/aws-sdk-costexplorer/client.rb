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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::CostExplorer
  # An API client for Aws::CostExplorer.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSInsightsIndexService
    @identifier = :costexplorer

    add_plugin(::Aws::CostExplorer::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CostExplorer::EndpointProvider)
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

    # <p>Creates a new cost anomaly detection monitor with the requested type and monitor
    #       specification. </p>
    # @param [Hash, Types::CreateAnomalyMonitorRequest] params
    # @option params [Types::AnomalyMonitor] :anomaly_monitor
    #   <p>The cost anomaly detection monitor object that you want to create.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalyMonitor.html">
    #                  <code>AnomalyMonitor</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>monitor</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_monitor: { # required
    #       monitor_arn: "GenericString",
    #       monitor_name: "GenericString", # required
    #       creation_date: "YearMonthDay",
    #       last_updated_date: "YearMonthDay",
    #       last_evaluated_date: "YearMonthDay",
    #       monitor_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "CUSTOM"], # required
    #       monitor_dimension: "SERVICE" # One of: ["SERVICE"],
    #       monitor_specification: {
    #         or: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #         }
    #       },
    #       dimensional_value_count: 1
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_anomaly_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "GenericString", # required
    #   }
    # @return [Types::CreateAnomalyMonitorResponse]
    def create_anomaly_monitor(params = {}, options = {})
      request = build_request(:create_anomaly_monitor, params)
      request.send_request(options)
    end

    # <p>Adds an alert subscription to a cost anomaly detection monitor. You can use each
    #       subscription to define subscribers with email or SNS notifications. Email subscribers can set
    #       an absolute or percentage threshold and a time frequency for receiving notifications. </p>
    # @param [Hash, Types::CreateAnomalySubscriptionRequest] params
    # @option params [Types::AnomalySubscription] :anomaly_subscription
    #   <p>The cost anomaly subscription object that you want to create. </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AnomalySubscription.html">
    #                  <code>AnomalySubscription</code>
    #               </a>. You can use resource tags to control access to
    #         your <code>subscription</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_subscription: { # required
    #       subscription_arn: "GenericString",
    #       account_id: "GenericString",
    #       monitor_arn_list: ["Arn"], # required
    #       subscribers: [ # required
    #         {
    #           address: "SubscriberAddress",
    #           type: "EMAIL" # One of: ["EMAIL", "SNS"],
    #           status: "CONFIRMED" # One of: ["CONFIRMED", "DECLINED"]
    #         }
    #       ],
    #       threshold: 1.0,
    #       frequency: "DAILY" # One of: ["DAILY", "IMMEDIATE", "WEEKLY"], # required
    #       subscription_name: "GenericString", # required
    #       threshold_expression: {
    #         or: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         and: [
    #           {
    #             # recursive Expression
    #           }
    #         ],
    #         not: {
    #           # recursive Expression
    #         },
    #         dimensions: {
    #           key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #         },
    #         tags: {
    #           key: "TagKey",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #         },
    #         cost_categories: {
    #           key: "CostCategoryName",
    #           values: ["Value"],
    #           match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #         }
    #       }
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_anomaly_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_arn: "GenericString", # required
    #   }
    # @return [Types::CreateAnomalySubscriptionResponse]
    def create_anomaly_subscription(params = {}, options = {})
      request = build_request(:create_anomaly_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a new Cost Category with the requested name and rules.</p>
    # @param [Hash, Types::CreateCostCategoryDefinitionRequest] params
    # @option params [String] :name
    #   <p>The unique name of the Cost Category.</p>
    # @option params [String] :effective_start
    #   <p>The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future.</p>
    # @option params [String] :rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    # @option params [Array<Types::CostCategoryRule>] :rules
    #   <p>The Cost Category rules used to categorize costs. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule</a>.</p>
    # @option params [String] :default_value
    #   <p>The
    #               default value for the cost category.</p>
    # @option params [Array<Types::CostCategorySplitChargeRule>] :split_charge_rules
    #   <p> The split charge rules used to allocate your charges between your Cost Category values.
    #       </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategory.html">
    #                  <code>CostCategory</code>
    #               </a>. You can use resource tags to control access to your
    #           <code>cost category</code> using IAM policies.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CostCategoryName", # required
    #     effective_start: "ZonedDateTime",
    #     rule_version: "CostCategoryExpression.v1" # One of: ["CostCategoryExpression.v1"], # required
    #     rules: [ # required
    #       {
    #         value: "CostCategoryValue",
    #         rule: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           }
    #         },
    #         inherited_value: {
    #           dimension_name: "LINKED_ACCOUNT_NAME" # One of: ["LINKED_ACCOUNT_NAME", "TAG"],
    #           dimension_key: "GenericString"
    #         },
    #         type: "REGULAR" # One of: ["REGULAR", "INHERITED_VALUE"]
    #       }
    #     ],
    #     default_value: "CostCategoryValue",
    #     split_charge_rules: [
    #       {
    #         source: "GenericString", # required
    #         targets: ["GenericString"], # required
    #         method: "FIXED" # One of: ["FIXED", "PROPORTIONAL", "EVEN"], # required
    #         parameters: [
    #           {
    #             type: "ALLOCATION_PERCENTAGES" # One of: ["ALLOCATION_PERCENTAGES"], # required
    #             values: ["GenericString"], # required
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
    #   response = client.create_cost_category_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_category_arn: "Arn",
    #     effective_start: "ZonedDateTime"
    #   }
    # @return [Types::CreateCostCategoryDefinitionResponse]
    def create_cost_category_definition(params = {}, options = {})
      request = build_request(:create_cost_category_definition, params)
      request.send_request(options)
    end

    # <p>Deletes a cost anomaly monitor. </p>
    # @param [Hash, Types::DeleteAnomalyMonitorRequest] params
    # @option params [String] :monitor_arn
    #   <p>The unique identifier of the cost anomaly monitor that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_anomaly_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAnomalyMonitorResponse]
    def delete_anomaly_monitor(params = {}, options = {})
      request = build_request(:delete_anomaly_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes a cost anomaly subscription. </p>
    # @param [Hash, Types::DeleteAnomalySubscriptionRequest] params
    # @option params [String] :subscription_arn
    #   <p>The unique identifier of the cost anomaly subscription that you want to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_arn: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.delete_anomaly_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAnomalySubscriptionResponse]
    def delete_anomaly_subscription(params = {}, options = {})
      request = build_request(:delete_anomaly_subscription, params)
      request.send_request(options)
    end

    # <p>Deletes a Cost Category. Expenses from this month going forward will no longer be
    #       categorized with this Cost Category.</p>
    # @param [Hash, Types::DeleteCostCategoryDefinitionRequest] params
    # @option params [String] :cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cost_category_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_cost_category_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_category_arn: "Arn",
    #     effective_end: "ZonedDateTime"
    #   }
    # @return [Types::DeleteCostCategoryDefinitionResponse]
    def delete_cost_category_definition(params = {}, options = {})
      request = build_request(:delete_cost_category_definition, params)
      request.send_request(options)
    end

    # <p>Returns the name, Amazon Resource Name (ARN), rules, definition, and effective dates of a
    #       Cost Category that's defined in the account.</p>
    #          <p>You have the option to use <code>EffectiveOn</code> to return a Cost Category that's
    #       active on a specific date. If there's no <code>EffectiveOn</code> specified, you see a Cost
    #       Category that's effective on the current date. If Cost Category is still effective,
    #         <code>EffectiveEnd</code> is omitted in the response. </p>
    # @param [Hash, Types::DescribeCostCategoryDefinitionRequest] params
    # @option params [String] :cost_category_arn
    #   <p>The unique identifier for your Cost Category. </p>
    # @option params [String] :effective_on
    #   <p>The date when the Cost Category was effective. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cost_category_arn: "Arn", # required
    #     effective_on: "ZonedDateTime"
    #   }
    #   options = {}
    #   response = client.describe_cost_category_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_category: {
    #       cost_category_arn: "Arn", # required
    #       effective_start: "ZonedDateTime", # required
    #       effective_end: "ZonedDateTime",
    #       name: "CostCategoryName", # required
    #       rule_version: "CostCategoryExpression.v1" # One of: ["CostCategoryExpression.v1"], # required
    #       rules: [ # required
    #         {
    #           value: "CostCategoryValue",
    #           rule: {
    #             or: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             and: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not: {
    #               # recursive Expression
    #             },
    #             dimensions: {
    #               key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #               values: ["Value"],
    #               match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #             },
    #             tags: {
    #               key: "TagKey",
    #               values: ["Value"],
    #               match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #             },
    #             cost_categories: {
    #               key: "CostCategoryName",
    #               values: ["Value"],
    #               match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #             }
    #           },
    #           inherited_value: {
    #             dimension_name: "LINKED_ACCOUNT_NAME" # One of: ["LINKED_ACCOUNT_NAME", "TAG"],
    #             dimension_key: "GenericString"
    #           },
    #           type: "REGULAR" # One of: ["REGULAR", "INHERITED_VALUE"]
    #         }
    #       ],
    #       split_charge_rules: [
    #         {
    #           source: "GenericString", # required
    #           targets: ["GenericString"], # required
    #           method: "FIXED" # One of: ["FIXED", "PROPORTIONAL", "EVEN"], # required
    #           parameters: [
    #             {
    #               type: "ALLOCATION_PERCENTAGES" # One of: ["ALLOCATION_PERCENTAGES"], # required
    #               values: ["GenericString"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       processing_status: [
    #         {
    #           component: "COST_EXPLORER" # One of: ["COST_EXPLORER"],
    #           status: "PROCESSING" # One of: ["PROCESSING", "APPLIED"]
    #         }
    #       ],
    #       default_value: "CostCategoryValue"
    #     }
    #   }
    # @return [Types::DescribeCostCategoryDefinitionResponse]
    def describe_cost_category_definition(params = {}, options = {})
      request = build_request(:describe_cost_category_definition, params)
      request.send_request(options)
    end

    # <p>Retrieves all of the cost anomalies detected on your account during the time period that's
    #       specified by the <code>DateInterval</code> object. Anomalies are available for up to 90
    #       days.</p>
    # @param [Hash, Types::GetAnomaliesRequest] params
    # @option params [String] :monitor_arn
    #   <p>Retrieves all of the cost anomalies detected for a specific cost anomaly monitor Amazon
    #         Resource Name (ARN). </p>
    # @option params [Types::AnomalyDateInterval] :date_interval
    #   <p>Assigns the start and end dates for retrieving cost anomalies. The returned anomaly object
    #         will have an <code>AnomalyEndDate</code> in the specified time range. </p>
    # @option params [String] :feedback
    #   <p>Filters anomaly results by the feedback field on the anomaly object. </p>
    # @option params [Types::TotalImpactFilter] :total_impact
    #   <p>Filters anomaly results by the total impact field on the anomaly object. For example, you
    #         can filter anomalies <code>GREATER_THAN 200.00</code> to retrieve anomalies, with an estimated
    #         dollar impact greater than 200. </p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    # @option params [Integer] :max_results
    #   <p>The number of entries a paginated response contains. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_arn: "GenericString",
    #     date_interval: { # required
    #       start_date: "YearMonthDay", # required
    #       end_date: "YearMonthDay"
    #     },
    #     feedback: "YES" # One of: ["YES", "NO", "PLANNED_ACTIVITY"],
    #     total_impact: {
    #       numeric_operator: "EQUAL" # One of: ["EQUAL", "GREATER_THAN_OR_EQUAL", "LESS_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "BETWEEN"], # required
    #       start_value: 1.0, # required
    #       end_value: 1.0
    #     },
    #     next_page_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_anomalies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomalies: [ # required
    #       {
    #         anomaly_id: "GenericString", # required
    #         anomaly_start_date: "YearMonthDay",
    #         anomaly_end_date: "YearMonthDay",
    #         dimension_value: "GenericString",
    #         root_causes: [
    #           {
    #             service: "GenericString",
    #             region: "GenericString",
    #             linked_account: "GenericString",
    #             linked_account_name: "GenericString",
    #             usage_type: "GenericString",
    #             impact: {
    #               contribution: 1.0, # required
    #             }
    #           }
    #         ],
    #         anomaly_score: { # required
    #           max_score: 1.0, # required
    #           current_score: 1.0, # required
    #         },
    #         impact: { # required
    #           max_impact: 1.0, # required
    #           total_impact: 1.0,
    #           total_actual_spend: 1.0,
    #           total_expected_spend: 1.0,
    #           total_impact_percentage: 1.0
    #         },
    #         monitor_arn: "GenericString", # required
    #         feedback: "YES" # One of: ["YES", "NO", "PLANNED_ACTIVITY"]
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetAnomaliesResponse]
    def get_anomalies(params = {}, options = {})
      request = build_request(:get_anomalies, params)
      request.send_request(options)
    end

    # <p>Retrieves the cost anomaly monitor definitions for your account. You can filter using a
    #       list of cost anomaly monitor Amazon Resource Names (ARNs). </p>
    # @param [Hash, Types::GetAnomalyMonitorsRequest] params
    # @option params [Array<String>] :monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    # @option params [Integer] :max_results
    #   <p>The number of entries that a paginated response contains. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_arn_list: ["Value"],
    #     next_page_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_anomaly_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_monitors: [ # required
    #       {
    #         monitor_arn: "GenericString",
    #         monitor_name: "GenericString", # required
    #         creation_date: "YearMonthDay",
    #         last_updated_date: "YearMonthDay",
    #         last_evaluated_date: "YearMonthDay",
    #         monitor_type: "DIMENSIONAL" # One of: ["DIMENSIONAL", "CUSTOM"], # required
    #         monitor_dimension: "SERVICE" # One of: ["SERVICE"],
    #         monitor_specification: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           }
    #         },
    #         dimensional_value_count: 1
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetAnomalyMonitorsResponse]
    def get_anomaly_monitors(params = {}, options = {})
      request = build_request(:get_anomaly_monitors, params)
      request.send_request(options)
    end

    # <p>Retrieves the cost anomaly subscription objects for your account. You can filter using a
    #       list of cost anomaly monitor Amazon Resource Names (ARNs). </p>
    # @param [Hash, Types::GetAnomalySubscriptionsRequest] params
    # @option params [Array<String>] :subscription_arn_list
    #   <p>A list of cost anomaly subscription ARNs. </p>
    # @option params [String] :monitor_arn
    #   <p>Cost anomaly monitor ARNs. </p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    # @option params [Integer] :max_results
    #   <p>The number of entries a paginated response contains. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_arn_list: ["Value"],
    #     monitor_arn: "GenericString",
    #     next_page_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_anomaly_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_subscriptions: [ # required
    #       {
    #         subscription_arn: "GenericString",
    #         account_id: "GenericString",
    #         monitor_arn_list: ["Arn"], # required
    #         subscribers: [ # required
    #           {
    #             address: "SubscriberAddress",
    #             type: "EMAIL" # One of: ["EMAIL", "SNS"],
    #             status: "CONFIRMED" # One of: ["CONFIRMED", "DECLINED"]
    #           }
    #         ],
    #         threshold: 1.0,
    #         frequency: "DAILY" # One of: ["DAILY", "IMMEDIATE", "WEEKLY"], # required
    #         subscription_name: "GenericString", # required
    #         threshold_expression: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           }
    #         }
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetAnomalySubscriptionsResponse]
    def get_anomaly_subscriptions(params = {}, options = {})
      request = build_request(:get_anomaly_subscriptions, params)
      request.send_request(options)
    end

    # <p>Retrieves estimated usage records for hourly granularity or resource-level data at daily
    #       granularity.</p>
    # @param [Hash, Types::GetApproximateUsageRecordsRequest] params
    # @option params [String] :granularity
    #   <p>How granular you want the data to be. You can enable data at hourly or daily
    #         granularity.</p>
    # @option params [Array<String>] :services
    #   <p>The service metadata for the service or services you want to query. If not specified, all
    #         elements are returned.</p>
    # @option params [String] :approximation_dimension
    #   <p>The service to evaluate for the usage records. You can choose resource-level data at daily
    #         granularity, or hourly granularity with or without resource-level data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"], # required
    #     services: ["GenericString"],
    #     approximation_dimension: "SERVICE" # One of: ["SERVICE", "RESOURCE"], # required
    #   }
    #   options = {}
    #   response = client.get_approximate_usage_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     services: {
    #       "GenericString" => 1
    #     },
    #     total_records: 1,
    #     lookback_period: {
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     }
    #   }
    # @return [Types::GetApproximateUsageRecordsResponse]
    def get_approximate_usage_records(params = {}, options = {})
      request = build_request(:get_approximate_usage_records, params)
      request.send_request(options)
    end

    # <p>Retrieves a commitment purchase analysis result based on the
    #       <code>AnalysisId</code>.</p>
    # @param [Hash, Types::GetCommitmentPurchaseAnalysisRequest] params
    # @option params [String] :analysis_id
    #   <p>The analysis ID that's associated with the commitment purchase analysis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analysis_id: "AnalysisId", # required
    #   }
    #   options = {}
    #   response = client.get_commitment_purchase_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     estimated_completion_time: "ZonedDateTime", # required
    #     analysis_completion_time: "ZonedDateTime",
    #     analysis_started_time: "ZonedDateTime", # required
    #     analysis_id: "AnalysisId", # required
    #     analysis_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"], # required
    #     error_code: "NO_USAGE_FOUND" # One of: ["NO_USAGE_FOUND", "INTERNAL_FAILURE", "INVALID_SAVINGS_PLANS_TO_ADD", "INVALID_SAVINGS_PLANS_TO_EXCLUDE", "INVALID_ACCOUNT_ID"],
    #     analysis_details: {
    #       savings_plans_purchase_analysis_details: {
    #         currency_code: "GenericString",
    #         lookback_period_in_hours: "GenericString",
    #         current_average_coverage: "GenericString",
    #         current_average_hourly_on_demand_spend: "GenericString",
    #         current_maximum_hourly_on_demand_spend: "GenericString",
    #         current_minimum_hourly_on_demand_spend: "GenericString",
    #         current_on_demand_spend: "GenericString",
    #         existing_hourly_commitment: "GenericString",
    #         hourly_commitment_to_purchase: "GenericString",
    #         estimated_average_coverage: "GenericString",
    #         estimated_average_utilization: "GenericString",
    #         estimated_monthly_savings_amount: "GenericString",
    #         estimated_on_demand_cost: "GenericString",
    #         estimated_on_demand_cost_with_current_commitment: "GenericString",
    #         estimated_roi: "GenericString",
    #         estimated_savings_amount: "GenericString",
    #         estimated_savings_percentage: "GenericString",
    #         estimated_commitment_cost: "GenericString",
    #         latest_usage_timestamp: "GenericString",
    #         upfront_cost: "GenericString",
    #         additional_metadata: "GenericString",
    #         metrics_over_lookback_period: [
    #           {
    #             start_time: "ZonedDateTime",
    #             estimated_on_demand_cost: "GenericString",
    #             current_coverage: "GenericString",
    #             estimated_coverage: "GenericString",
    #             estimated_new_commitment_utilization: "GenericString"
    #           }
    #         ]
    #       }
    #     },
    #     commitment_purchase_analysis_configuration: { # required
    #       savings_plans_purchase_analysis_configuration: {
    #         account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #         account_id: "AccountId",
    #         analysis_type: "MAX_SAVINGS" # One of: ["MAX_SAVINGS", "CUSTOM_COMMITMENT"], # required
    #         savings_plans_to_add: [ # required
    #           {
    #             payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #             savings_plans_type: "COMPUTE_SP" # One of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"],
    #             region: "GenericString",
    #             instance_family: "GenericString",
    #             term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #             savings_plans_commitment: 1.0,
    #             offering_id: "GenericString"
    #           }
    #         ],
    #         savings_plans_to_exclude: ["SavingsPlansId"],
    #         look_back_time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetCommitmentPurchaseAnalysisResponse]
    def get_commitment_purchase_analysis(params = {}, options = {})
      request = build_request(:get_commitment_purchase_analysis, params)
      request.send_request(options)
    end

    # <p>Retrieves cost and usage metrics for your account. You can specify which cost and
    #       usage-related metric that you want the request to return. For example, you can specify
    #         <code>BlendedCosts</code> or <code>UsageQuantity</code>. You can also filter and group your
    #       data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a specific
    #       time range. For a complete list of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in Organizations have access to all member accounts.</p>
    #          <p>For information about filter limitations, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html">Quotas and restrictions</a>
    #       in the <i>Billing and Cost Management User Guide</i>.</p>
    # @param [Hash, Types::GetCostAndUsageRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>Sets the start date and end date for retrieving Amazon Web Services costs. The start
    #         date is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    # @option params [String] :granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code> or
    #           <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, the
    #         response object doesn't include the <code>Granularity</code>, either <code>MONTHLY</code> or
    #           <code>DAILY</code>, or <code>HOURLY</code>. </p>
    # @option params [Types::Expression] :filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
    #           <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
    #         with that account's usage of that service. You can nest <code>Expression</code> objects to
    #         define any combination of dimension filters. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are
    #           <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and
    #           <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and
    #           <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and
    #           <code>CASE_SENSITIVE</code>.</p>
    # @option params [Array<String>] :metrics
    #   <p>Which metrics are returned in the query. For more information about blended and
    #         unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #           appear on some line items in my bill?</a>. </p>
    #            <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
    #           <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>. </p>
    #            <note>
    #               <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking into account the units. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hours and GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #            </note>
    #            <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsage</code> requests.</p>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups, either
    #         dimensions, tag keys, cost categories, or any two group by types.</p>
    #            <p>Valid values for the <code>DIMENSION</code> type are <code>AZ</code>,
    #           <code>INSTANCE_TYPE</code>, <code>LEGAL_ENTITY_NAME</code>, <code>INVOICING_ENTITY</code>,
    #           <code>LINKED_ACCOUNT</code>, <code>OPERATION</code>, <code>PLATFORM</code>,
    #           <code>PURCHASE_TYPE</code>, <code>SERVICE</code>, <code>TENANCY</code>,
    #           <code>RECORD_TYPE</code>, and <code>USAGE_TYPE</code>.</p>
    #            <p>When you group by the <code>TAG</code> type and include a valid tag key, you get all
    #         tag values, including empty strings.</p>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"], # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     metrics: ["MetricName"], # required
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     billing_view_arn: "BillingViewArn",
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_cost_and_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_page_token: "NextPageToken",
    #     group_definitions: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     results_by_time: [
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         total: {
    #           "MetricName" => {
    #             amount: "MetricAmount",
    #             unit: "MetricUnit"
    #           }
    #         },
    #         groups: [
    #           {
    #             keys: ["Key"],
    #             metrics: {
    #               "MetricName" => {
    #                 amount: "MetricAmount",
    #                 unit: "MetricUnit"
    #               }
    #             }
    #           }
    #         ],
    #         estimated: false
    #       }
    #     ],
    #     dimension_value_attributes: [
    #       {
    #         value: "Value",
    #         attributes: {
    #           "AttributeType" => "AttributeValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetCostAndUsageResponse]
    def get_cost_and_usage(params = {}, options = {})
      request = build_request(:get_cost_and_usage, params)
      request.send_request(options)
    end

    # <p>Retrieves cost and usage comparisons for your account between two periods within the last
    #       13 months. If you have enabled multi-year data at monthly granularity, you can go back up to
    #       38 months.</p>
    # @param [Hash, Types::GetCostAndUsageComparisonsRequest] params
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Types::DateInterval] :baseline_time_period
    #   <p>The reference time period for comparison. This time period serves as the baseline against
    #         which other cost and usage data will be compared. The interval must start and end on the first
    #         day of a month, with a duration of exactly one month.</p>
    # @option params [Types::DateInterval] :comparison_time_period
    #   <p>The comparison time period for analysis. This time period's cost and usage data will be
    #         compared against the baseline time period. The interval must start and end on the first day of
    #         a month, with a duration of exactly one month.</p>
    # @option params [String] :metric_for_comparison
    #   <p>The cost and usage metric to compare. Valid values are <code>AmortizedCost</code>,
    #           <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>.</p>
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>You can group results using the attributes <code>DIMENSION</code>, <code>TAG</code>, and
    #           <code>COST_CATEGORY</code>. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for the request.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_view_arn: "BillingViewArn",
    #     baseline_time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     comparison_time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     metric_for_comparison: "MetricName", # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     max_results: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_cost_and_usage_comparisons(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_and_usage_comparisons: [
    #       {
    #         cost_and_usage_selector: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           }
    #         },
    #         metrics: {
    #           "MetricName" => {
    #             baseline_time_period_amount: "GenericString",
    #             comparison_time_period_amount: "GenericString",
    #             difference: "GenericString",
    #             unit: "GenericString"
    #           }
    #         }
    #       }
    #     ],
    #     total_cost_and_usage: {
    #       "MetricName" => {
    #         baseline_time_period_amount: "GenericString",
    #         comparison_time_period_amount: "GenericString",
    #         difference: "GenericString",
    #         unit: "GenericString"
    #       }
    #     },
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetCostAndUsageComparisonsResponse]
    def get_cost_and_usage_comparisons(params = {}, options = {})
      request = build_request(:get_cost_and_usage_comparisons, params)
      request.send_request(options)
    end

    # <p>Retrieves cost and usage metrics with resources for your account. You can specify which
    #       cost and usage-related metric, such as <code>BlendedCosts</code> or
    #       <code>UsageQuantity</code>, that you want the request to return. You can also filter and group
    #       your data by various dimensions, such as <code>SERVICE</code> or <code>AZ</code>, in a
    #       specific time range. For a complete list of valid dimensions, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html">GetDimensionValues</a> operation. Management account in an organization in Organizations have access to all member accounts.</p>
    #          <p>Hourly granularity is only available for EC2-Instances (Elastic Compute Cloud)
    #       resource-level data. All other resource-level data is available at daily
    #       granularity.</p>
    #          <note>
    #             <p>This is an opt-in only feature. You can enable this feature from the Cost Explorer
    #         Settings page. For information about how to access the Settings page, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html">Controlling
    #           Access for Cost Explorer</a> in the <i>Billing and Cost Management User
    #           Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::GetCostAndUsageWithResourcesRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>Sets the start and end dates for retrieving Amazon Web Services costs. The range must
    #         be within the last 14 days (the start date cannot be earlier than 14 days ago). The start date
    #         is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    # @option params [String] :granularity
    #   <p>Sets the Amazon Web Services cost granularity to <code>MONTHLY</code>,
    #           <code>DAILY</code>, or <code>HOURLY</code>. If <code>Granularity</code> isn't set, the
    #         response object doesn't include the <code>Granularity</code>, <code>MONTHLY</code>,
    #           <code>DAILY</code>, or <code>HOURLY</code>. </p>
    # @option params [Types::Expression] :filter
    #   <p>Filters Amazon Web Services costs by different dimensions. For example, you can specify
    #           <code>SERVICE</code> and <code>LINKED_ACCOUNT</code> and get the costs that are associated
    #         with that account's usage of that service. You can nest <code>Expression</code> objects to
    #         define any combination of dimension filters. For more information, see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a>. </p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>Dimensions</code> are
    #           <code>EQUALS</code> and <code>CASE_SENSITIVE</code>.</p>
    #            <p>Valid values for <code>MatchOptions</code> for <code>CostCategories</code> and
    #           <code>Tags</code> are <code>EQUALS</code>, <code>ABSENT</code>, and
    #           <code>CASE_SENSITIVE</code>. Default values are <code>EQUALS</code> and
    #           <code>CASE_SENSITIVE</code>.</p>
    # @option params [Array<String>] :metrics
    #   <p>Which metrics are returned in the query. For more information about blended and
    #         unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #           appear on some line items in my bill?</a>. </p>
    #            <p>Valid values are <code>AmortizedCost</code>, <code>BlendedCost</code>,
    #           <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>. </p>
    #            <note>
    #               <p>If you return the <code>UsageQuantity</code> metric, the service aggregates all usage
    #           numbers without taking the units into account. For example, if you aggregate
    #             <code>usageQuantity</code> across all of Amazon EC2, the results aren't meaningful because
    #           Amazon EC2 compute hours and data transfer are measured in different units (for example,
    #           hour or GB). To get more meaningful <code>UsageQuantity</code> metrics, filter by
    #             <code>UsageType</code> or <code>UsageTypeGroups</code>. </p>
    #            </note>
    #            <p>
    #               <code>Metrics</code> is required for <code>GetCostAndUsageWithResources</code>
    #         requests.</p>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>You can group Amazon Web Services costs using up to two different groups:
    #           <code>DIMENSION</code>, <code>TAG</code>, <code>COST_CATEGORY</code>.</p>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"], # required
    #     filter: { # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     metrics: ["MetricName"],
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     billing_view_arn: "BillingViewArn",
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_cost_and_usage_with_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_page_token: "NextPageToken",
    #     group_definitions: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     results_by_time: [
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         total: {
    #           "MetricName" => {
    #             amount: "MetricAmount",
    #             unit: "MetricUnit"
    #           }
    #         },
    #         groups: [
    #           {
    #             keys: ["Key"],
    #             metrics: {
    #               "MetricName" => {
    #                 amount: "MetricAmount",
    #                 unit: "MetricUnit"
    #               }
    #             }
    #           }
    #         ],
    #         estimated: false
    #       }
    #     ],
    #     dimension_value_attributes: [
    #       {
    #         value: "Value",
    #         attributes: {
    #           "AttributeType" => "AttributeValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetCostAndUsageWithResourcesResponse]
    def get_cost_and_usage_with_resources(params = {}, options = {})
      request = build_request(:get_cost_and_usage_with_resources, params)
      request.send_request(options)
    end

    # <p>Retrieves an array of Cost Category names and values incurred cost.</p>
    #          <note>
    #             <p>If some Cost Category names and values are not associated with any cost, they will not
    #         be returned by this API.</p>
    #          </note>
    # @param [Hash, Types::GetCostCategoriesRequest] params
    # @option params [String] :search_string
    #   <p>The value that you want to search the filter values for.</p>
    #            <p>If you don't specify a <code>CostCategoryName</code>, <code>SearchString</code> is used to
    #         filter Cost Category names that match the <code>SearchString</code> pattern. If you specify a
    #           <code>CostCategoryName</code>, <code>SearchString</code> is used to filter Cost Category
    #         values that match the <code>SearchString</code> pattern.</p>
    # @option params [Types::DateInterval] :time_period
    #   <p>The time period of the request. </p>
    # @option params [String] :cost_category_name
    #   <p>The unique name of the Cost Category.</p>
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [Array<Types::SortDefinition>] :sort_by
    #   <p>The value that you sort the data by.</p>
    #            <p>The key represents the cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported key values for the <code>SortOrder</code> value are <code>ASCENDING</code>
    #         and <code>DESCENDING</code>.</p>
    #            <p>When you use the <code>SortBy</code> value, the <code>NextPageToken</code> and
    #           <code>SearchString</code> key values aren't supported.</p>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Integer] :max_results
    #   <p>This field is only used when the <code>SortBy</code> value is provided in the
    #         request.</p>
    #            <p>The maximum number of objects that are returned for this request. If
    #           <code>MaxResults</code> isn't specified with the <code>SortBy</code> value, the request
    #         returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetCostCategories</code>, MaxResults has an upper quota of 1000.</p>
    # @option params [String] :next_page_token
    #   <p>If the number of objects that are still available for retrieval exceeds the quota, Amazon Web Services returns a NextPageToken value in the response. To retrieve the next batch of
    #         objects, provide the NextPageToken from the previous call in your next request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     cost_category_name: "CostCategoryName",
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     sort_by: [
    #       {
    #         key: "SortDefinitionKey", # required
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     billing_view_arn: "BillingViewArn",
    #     max_results: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_cost_categories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_page_token: "NextPageToken",
    #     cost_category_names: ["CostCategoryName"],
    #     cost_category_values: ["CostCategoryValue"],
    #     return_size: 1, # required
    #     total_size: 1, # required
    #   }
    # @return [Types::GetCostCategoriesResponse]
    def get_cost_categories(params = {}, options = {})
      request = build_request(:get_cost_categories, params)
      request.send_request(options)
    end

    # <p>Retrieves key factors driving cost changes between two time periods within the last 13
    #       months, such as usage changes, discount changes, and commitment-based savings. If you have
    #       enabled multi-year data at monthly granularity, you can go back up to 38 months.</p>
    # @param [Hash, Types::GetCostComparisonDriversRequest] params
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Types::DateInterval] :baseline_time_period
    #   <p>The reference time period for comparison. This time period serves as the baseline against
    #         which other cost and usage data will be compared. The interval must start and end on the first
    #         day of a month, with a duration of exactly one month.</p>
    # @option params [Types::DateInterval] :comparison_time_period
    #   <p>The comparison time period for analysis. This time period's cost and usage data will be
    #         compared against the baseline time period. The interval must start and end on the first day of
    #         a month, with a duration of exactly one month.</p>
    # @option params [String] :metric_for_comparison
    #   <p>The cost and usage metric to compare. Valid values are <code>AmortizedCost</code>,
    #           <code>BlendedCost</code>, <code>NetAmortizedCost</code>, <code>NetUnblendedCost</code>,
    #           <code>NormalizedUsageAmount</code>, <code>UnblendedCost</code>, and
    #           <code>UsageQuantity</code>.</p>
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>You can group results using the attributes <code>DIMENSION</code>, <code>TAG</code>, and
    #           <code>COST_CATEGORY</code>. Note that <code>SERVICE</code> and <code>USAGE_TYPE</code>
    #         dimensions are automatically included in the cost comparison drivers analysis.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned for the request.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of paginated results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     billing_view_arn: "BillingViewArn",
    #     baseline_time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     comparison_time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     metric_for_comparison: "MetricName", # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     max_results: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_cost_comparison_drivers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_comparison_drivers: [
    #       {
    #         cost_selector: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           }
    #         },
    #         metrics: {
    #           "MetricName" => {
    #             baseline_time_period_amount: "GenericString",
    #             comparison_time_period_amount: "GenericString",
    #             difference: "GenericString",
    #             unit: "GenericString"
    #           }
    #         },
    #         cost_drivers: [
    #           {
    #             type: "GenericString",
    #             name: "GenericString",
    #             metrics: {
    #               "MetricName" => {
    #                 baseline_time_period_amount: "GenericString",
    #                 comparison_time_period_amount: "GenericString",
    #                 difference: "GenericString",
    #                 unit: "GenericString"
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetCostComparisonDriversResponse]
    def get_cost_comparison_drivers(params = {}, options = {})
      request = build_request(:get_cost_comparison_drivers, params)
      request.send_request(options)
    end

    # <p>Retrieves a forecast for how much Amazon Web Services predicts that you will spend over
    #       the forecast time period that you select, based on your past costs. </p>
    # @param [Hash, Types::GetCostForecastRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>The period of time that you want the forecast to cover. The start date must be equal to or
    #         no later than the current date to avoid a validation error.</p>
    # @option params [String] :metric
    #   <p>Which metric Cost Explorer uses to create your forecast. For more information about
    #         blended and unblended rates, see <a href="http://aws.amazon.com/premiumsupport/knowledge-center/blended-rates-intro/">Why does the "blended" annotation
    #           appear on some line items in my bill?</a>. </p>
    #            <p>Valid values for a <code>GetCostForecast</code> call are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>AMORTIZED_COST</p>
    #               </li>
    #               <li>
    #                  <p>BLENDED_COST</p>
    #               </li>
    #               <li>
    #                  <p>NET_AMORTIZED_COST</p>
    #               </li>
    #               <li>
    #                  <p>NET_UNBLENDED_COST</p>
    #               </li>
    #               <li>
    #                  <p>UNBLENDED_COST</p>
    #               </li>
    #            </ul>
    # @option params [String] :granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code>
    #         forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
    #            <p>The <code>GetCostForecast</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    # @option params [Types::Expression] :filter
    #   <p>The filters that you want to use to filter your forecast. The
    #           <code>GetCostForecast</code> API supports filtering by the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Integer] :prediction_interval_level
    #   <p>Cost Explorer always returns the mean forecast as a single point. You can request a
    #         prediction interval around the mean by specifying a confidence level. The higher the
    #         confidence level, the more confident Cost Explorer is about the actual value falling in the
    #         prediction interval. Higher confidence levels result in wider prediction intervals.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     metric: "BLENDED_COST" # One of: ["BLENDED_COST", "UNBLENDED_COST", "AMORTIZED_COST", "NET_UNBLENDED_COST", "NET_AMORTIZED_COST", "USAGE_QUANTITY", "NORMALIZED_USAGE_AMOUNT"], # required
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"], # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     billing_view_arn: "BillingViewArn",
    #     prediction_interval_level: 1
    #   }
    #   options = {}
    #   response = client.get_cost_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total: {
    #       amount: "MetricAmount",
    #       unit: "MetricUnit"
    #     },
    #     forecast_results_by_time: [
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         mean_value: "GenericString",
    #         prediction_interval_lower_bound: "GenericString",
    #         prediction_interval_upper_bound: "GenericString"
    #       }
    #     ]
    #   }
    # @return [Types::GetCostForecastResponse]
    def get_cost_forecast(params = {}, options = {})
      request = build_request(:get_cost_forecast, params)
      request.send_request(options)
    end

    # <p>Retrieves all available filter values for a specified filter over a period of time. You
    #       can search the dimension values for an arbitrary string. </p>
    # @param [Hash, Types::GetDimensionValuesRequest] params
    # @option params [String] :search_string
    #   <p>The value that you want to search the filter values for.</p>
    # @option params [Types::DateInterval] :time_period
    #   <p>The start date and end date for retrieving the dimension values. The start date is
    #         inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    # @option params [String] :dimension
    #   <p>The name of the dimension. Each <code>Dimension</code> is available for a different
    #           <code>Context</code>. For more information, see <code>Context</code>.
    #           <code>LINK_ACCOUNT_NAME</code> and <code>SERVICE_CODE</code> can only be used in <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/AAPI_CostCategoryRule.html">CostCategoryRule</a>. </p>
    # @option params [String] :context
    #   <p>The context for the call to <code>GetDimensionValues</code>. This can be
    #           <code>RESERVATIONS</code> or <code>COST_AND_USAGE</code>. The default value is
    #           <code>COST_AND_USAGE</code>. If the context is set to <code>RESERVATIONS</code>, the
    #         resulting dimension values can be used in the <code>GetReservationUtilization</code>
    #         operation. If the context is set to <code>COST_AND_USAGE</code>, the resulting dimension
    #         values can be used in the <code>GetCostAndUsage</code> operation.</p>
    #            <p>If you set the context to <code>COST_AND_USAGE</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>BILLING_ENTITY - The Amazon Web Services seller that your account is with. Possible
    #             values are the following:</p>
    #                  <p>- Amazon Web Services(Amazon Web Services): The entity that sells Amazon Web Services services.</p>
    #                  <p>- AISPL (Amazon Internet Services Pvt. Ltd.): The local Indian entity that's an acting
    #             reseller for Amazon Web Services services in India.</p>
    #                  <p>- Amazon Web Services Marketplace: The entity that supports the sale of solutions that are built on
    #               Amazon Web Services by third-party software providers.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments.
    #             Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE - The Amazon Relational Database Service database. Examples are
    #             Aurora or MySQL.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
    #               <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - A family of instance types optimized to fit different use
    #             cases. Examples are <code>Compute Optimized</code> (for example, <code>C4</code>,
    #               <code>C5</code>, <code>C6g</code>, and <code>C7g</code>), <code>Memory
    #               Optimization</code> (for example, <code>R4</code>, <code>R5n</code>, <code>R5b</code>,
    #             and <code>R6g</code>).</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY - The name of the entity that issues the Amazon Web Services
    #             invoice.</p>
    #               </li>
    #               <li>
    #                  <p>LEGAL_ENTITY_NAME - The name of the organization that sells you Amazon Web Services
    #             services, such as Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.</p>
    #               </li>
    #               <li>
    #                  <p>OPERATION - The action performed. Examples include <code>RunInstance</code> and
    #               <code>CreateBucket</code>.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>PURCHASE_TYPE - The reservation type of the purchase that this usage is related to.
    #             Examples include On-Demand Instances and Standard Reserved Instances.</p>
    #               </li>
    #               <li>
    #                  <p>RESERVATION_ID - The unique identifier for an Amazon Web Services Reservation
    #             Instance.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute).</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE - The Amazon Web Services service such as Amazon DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes. The response
    #             for the <code>GetDimensionValues</code> operation includes a unit attribute. Examples
    #             include GB and Hrs.</p>
    #               </li>
    #               <li>
    #                  <p>USAGE_TYPE_GROUP - The grouping of common usage types. An example is Amazon EC2:
    #             CloudWatch – Alarms. The response for this operation includes a unit attribute.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>RECORD_TYPE - The different types of charges such as Reserved Instance (RI) fees,
    #             usage costs, tax refunds, and credits.</p>
    #               </li>
    #               <li>
    #                  <p>RESOURCE_ID - The unique identifier of the resource. ResourceId is an opt-in
    #             feature only available for last 14 days for EC2-Compute Service.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>RESERVATIONS</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ - The Availability Zone. An example is <code>us-east-1a</code>.</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service deployments.
    #             Valid values are <code>SingleAZ</code> and <code>MultiAZ</code>.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
    #               <code>m4.xlarge</code>.</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM - The Amazon EC2 operating system. Examples are Windows or
    #             Linux.</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>SCOPE (Utilization only) - The scope of a Reserved Instance (RI). Values are
    #             regional or a single Availability Zone.</p>
    #               </li>
    #               <li>
    #                  <p>TAG (Coverage only) - The tags that are associated with a Reserved Instance
    #             (RI).</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY - The tenancy of a resource. Examples are shared or dedicated.</p>
    #               </li>
    #            </ul>
    #            <p>If you set the context to <code>SAVINGS_PLANS</code>, you can use the following
    #         dimensions for searching:</p>
    #            <ul>
    #               <li>
    #                  <p>SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)</p>
    #               </li>
    #               <li>
    #                  <p>PAYMENT_OPTION - The payment option for the given Savings Plans (for example, All
    #             Upfront)</p>
    #               </li>
    #               <li>
    #                  <p>REGION - The Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE_FAMILY - The family of instances (For example,
    #             <code>m5</code>)</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT - The description in the attribute map that includes the full name
    #             of the member account. The value field contains the Amazon Web Services ID of the member
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>SAVINGS_PLAN_ARN - The unique identifier for your Savings Plans.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [Array<Types::SortDefinition>] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for the <code>SortOrder</code> key are <code>ASCENDING</code> or
    #           <code>DESCENDING</code>.</p>
    #            <p>When you specify a <code>SortBy</code> paramater, the context must be
    #           <code>COST_AND_USAGE</code>. Further, when using <code>SortBy</code>,
    #           <code>NextPageToken</code> and <code>SearchString</code> aren't supported.</p>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Integer] :max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetDimensionValues</code>, MaxResults has an upper limit of 1000.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     dimension: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"], # required
    #     context: "COST_AND_USAGE" # One of: ["COST_AND_USAGE", "RESERVATIONS", "SAVINGS_PLANS"],
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     sort_by: [
    #       {
    #         key: "SortDefinitionKey", # required
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     billing_view_arn: "BillingViewArn",
    #     max_results: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_dimension_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dimension_values: [ # required
    #       {
    #         value: "Value",
    #         attributes: {
    #           "AttributeType" => "AttributeValue"
    #         }
    #       }
    #     ],
    #     return_size: 1, # required
    #     total_size: 1, # required
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetDimensionValuesResponse]
    def get_dimension_values(params = {}, options = {})
      request = build_request(:get_dimension_values, params)
      request.send_request(options)
    end

    # <p>Retrieves the reservation coverage for your account, which you can use to see how much
    #       of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational Database Service,
    #       or Amazon Redshift usage is covered by a reservation. An organization's management account can
    #       see the coverage of the associated member accounts. This supports dimensions, Cost Categories,
    #       and nested expressions. For any time period, you can filter data about reservation usage by
    #       the following dimensions:</p>
    #          <ul>
    #             <li>
    #                <p>AZ</p>
    #             </li>
    #             <li>
    #                <p>CACHE_ENGINE</p>
    #             </li>
    #             <li>
    #                <p>DATABASE_ENGINE</p>
    #             </li>
    #             <li>
    #                <p>DEPLOYMENT_OPTION</p>
    #             </li>
    #             <li>
    #                <p>INSTANCE_TYPE</p>
    #             </li>
    #             <li>
    #                <p>LINKED_ACCOUNT</p>
    #             </li>
    #             <li>
    #                <p>OPERATING_SYSTEM</p>
    #             </li>
    #             <li>
    #                <p>PLATFORM</p>
    #             </li>
    #             <li>
    #                <p>REGION</p>
    #             </li>
    #             <li>
    #                <p>SERVICE</p>
    #             </li>
    #             <li>
    #                <p>TAG</p>
    #             </li>
    #             <li>
    #                <p>TENANCY</p>
    #             </li>
    #          </ul>
    #          <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code>
    #       operation. </p>
    # @param [Hash, Types::GetReservationCoverageRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>The start and end dates of the period that you want to retrieve data about reservation
    #         coverage for. You can retrieve data for a maximum of 13 months: the last 12 months and the
    #         current month. The start date is inclusive, but the end date is exclusive. For example, if
    #           <code>start</code> is <code>2017-01-01</code> and <code>end</code> is
    #           <code>2017-05-01</code>, then the cost and usage data is retrieved from
    #           <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including
    #           <code>2017-05-01</code>. </p>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>You can group the data by the following attributes:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>INVOICING_ENTITY</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    # @option params [String] :granularity
    #   <p>The granularity of the Amazon Web Services cost data for the reservation. Valid values
    #         are <code>MONTHLY</code> and <code>DAILY</code>.</p>
    #            <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If
    #           <code>Granularity</code> isn't set, the response object doesn't include
    #           <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>.</p>
    #            <p>The <code>GetReservationCoverage</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    # @option params [Types::Expression] :filter
    #   <p>Filters utilization data by dimensions. You can filter by the following
    #         dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DATABASE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #               </li>
    #               <li>
    #                  <p>TAG</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetReservationCoverage</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension. You can
    #         nest only one level deep. If there are multiple values for a dimension, they are OR'd
    #         together.</p>
    #            <p>If you don't provide a <code>SERVICE</code> filter, Cost Explorer defaults to
    #         EC2.</p>
    #            <p>Cost category is also supported.</p>
    # @option params [Array<String>] :metrics
    #   <p>The measurement that you want your reservation coverage reported in.</p>
    #            <p>Valid values are <code>Hour</code>, <code>Unit</code>, and <code>Cost</code>. You can use
    #         multiple values in a request.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    # @option params [Types::SortDefinition] :sort_by
    #   <p>The value by which you want to sort the data.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageHoursPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoverageNormalizedUnitsPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReservedNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalRunningNormalizedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Time</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Supported values for <code>SortOrder</code> are <code>ASCENDING</code> or
    #           <code>DESCENDING</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"],
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     metrics: ["MetricName"],
    #     next_page_token: "NextPageToken",
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_reservation_coverage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     coverages_by_time: [ # required
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         groups: [
    #           {
    #             attributes: {
    #               "AttributeType" => "AttributeValue"
    #             },
    #             coverage: {
    #               coverage_hours: {
    #                 on_demand_hours: "OnDemandHours",
    #                 reserved_hours: "ReservedHours",
    #                 total_running_hours: "TotalRunningHours",
    #                 coverage_hours_percentage: "CoverageHoursPercentage"
    #               },
    #               coverage_normalized_units: {
    #                 on_demand_normalized_units: "OnDemandNormalizedUnits",
    #                 reserved_normalized_units: "ReservedNormalizedUnits",
    #                 total_running_normalized_units: "TotalRunningNormalizedUnits",
    #                 coverage_normalized_units_percentage: "CoverageNormalizedUnitsPercentage"
    #               },
    #               coverage_cost: {
    #                 on_demand_cost: "OnDemandCost"
    #               }
    #             }
    #           }
    #         ],
    #         total: {
    #           coverage_hours: {
    #             on_demand_hours: "OnDemandHours",
    #             reserved_hours: "ReservedHours",
    #             total_running_hours: "TotalRunningHours",
    #             coverage_hours_percentage: "CoverageHoursPercentage"
    #           },
    #           coverage_normalized_units: {
    #             on_demand_normalized_units: "OnDemandNormalizedUnits",
    #             reserved_normalized_units: "ReservedNormalizedUnits",
    #             total_running_normalized_units: "TotalRunningNormalizedUnits",
    #             coverage_normalized_units_percentage: "CoverageNormalizedUnitsPercentage"
    #           },
    #           coverage_cost: {
    #             on_demand_cost: "OnDemandCost"
    #           }
    #         }
    #       }
    #     ],
    #     total: {
    #       coverage_hours: {
    #         on_demand_hours: "OnDemandHours",
    #         reserved_hours: "ReservedHours",
    #         total_running_hours: "TotalRunningHours",
    #         coverage_hours_percentage: "CoverageHoursPercentage"
    #       },
    #       coverage_normalized_units: {
    #         on_demand_normalized_units: "OnDemandNormalizedUnits",
    #         reserved_normalized_units: "ReservedNormalizedUnits",
    #         total_running_normalized_units: "TotalRunningNormalizedUnits",
    #         coverage_normalized_units_percentage: "CoverageNormalizedUnitsPercentage"
    #       },
    #       coverage_cost: {
    #         on_demand_cost: "OnDemandCost"
    #       }
    #     },
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetReservationCoverageResponse]
    def get_reservation_coverage(params = {}, options = {})
      request = build_request(:get_reservation_coverage, params)
      request.send_request(options)
    end

    # <p>Gets recommendations for reservation purchases. These recommendations might help you to
    #       reduce your costs. Reservations provide a discounted hourly rate (up to 75%) compared to
    #       On-Demand pricing.</p>
    #          <p>Amazon Web Services generates your recommendations by identifying your On-Demand usage
    #       during a specific time period and collecting your usage into categories that are eligible for
    #       a reservation. After Amazon Web Services has these categories, it simulates every combination
    #       of reservations in each category of usage to identify the best number of each type of Reserved
    #       Instance (RI) to purchase to maximize your estimated savings. </p>
    #          <p>For example, Amazon Web Services automatically aggregates your Amazon EC2 Linux, shared
    #       tenancy, and c4 family usage in the US West (Oregon) Region and recommends that you buy
    #       size-flexible regional reservations to apply to the c4 family usage. Amazon Web Services
    #       recommends the smallest size instance in an instance family. This makes it easier to purchase
    #       a size-flexible Reserved Instance (RI). Amazon Web Services also shows the equal number of
    #       normalized units. This way, you can purchase any instance size that you want. For this
    #       example, your RI recommendation is for <code>c4.large</code> because that is the smallest size
    #       instance in the c4 instance family.</p>
    # @param [Hash, Types::GetReservationPurchaseRecommendationRequest] params
    # @option params [String] :account_id
    #   <p>The account ID that's associated with the recommendation. </p>
    # @option params [String] :service
    #   <p>The specific service that you want recommendations for.</p>
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [String] :account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services
    #         calculates recommendations including the management account and member accounts if the value
    #         is set to <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are
    #         calculated for individual member accounts only.</p>
    # @option params [String] :lookback_period_in_days
    #   <p>The number of previous days that you want Amazon Web Services to consider when it
    #         calculates your recommendations.</p>
    # @option params [String] :term_in_years
    #   <p>The reservation term that you want recommendations for.</p>
    # @option params [String] :payment_option
    #   <p>The reservation purchase option that you want recommendations for.</p>
    # @option params [Types::ServiceSpecification] :service_specification
    #   <p>The hardware specifications for the service instances that you want recommendations
    #         for, such as standard or convertible Amazon EC2 instances.</p>
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response
    #         object.</p>
    # @option params [String] :next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to
    #         retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "GenericString",
    #     service: "GenericString", # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #     lookback_period_in_days: "SEVEN_DAYS" # One of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"],
    #     term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #     payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #     service_specification: {
    #       ec2_specification: {
    #         offering_class: "STANDARD" # One of: ["STANDARD", "CONVERTIBLE"]
    #       }
    #     },
    #     page_size: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_reservation_purchase_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       recommendation_id: "GenericString",
    #       generation_timestamp: "GenericString",
    #       additional_metadata: "GenericString"
    #     },
    #     recommendations: [
    #       {
    #         account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #         lookback_period_in_days: "SEVEN_DAYS" # One of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"],
    #         term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #         payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #         service_specification: {
    #           ec2_specification: {
    #             offering_class: "STANDARD" # One of: ["STANDARD", "CONVERTIBLE"]
    #           }
    #         },
    #         recommendation_details: [
    #           {
    #             account_id: "GenericString",
    #             instance_details: {
    #               ec2_instance_details: {
    #                 family: "GenericString",
    #                 instance_type: "GenericString",
    #                 region: "GenericString",
    #                 availability_zone: "GenericString",
    #                 platform: "GenericString",
    #                 tenancy: "GenericString",
    #                 current_generation: false,
    #                 size_flex_eligible: false
    #               },
    #               rds_instance_details: {
    #                 family: "GenericString",
    #                 instance_type: "GenericString",
    #                 region: "GenericString",
    #                 database_engine: "GenericString",
    #                 database_edition: "GenericString",
    #                 deployment_option: "GenericString",
    #                 license_model: "GenericString",
    #                 current_generation: false,
    #                 size_flex_eligible: false
    #               },
    #               redshift_instance_details: {
    #                 family: "GenericString",
    #                 node_type: "GenericString",
    #                 region: "GenericString",
    #                 current_generation: false,
    #                 size_flex_eligible: false
    #               },
    #               elasti_cache_instance_details: {
    #                 family: "GenericString",
    #                 node_type: "GenericString",
    #                 region: "GenericString",
    #                 product_description: "GenericString",
    #                 current_generation: false,
    #                 size_flex_eligible: false
    #               },
    #               es_instance_details: {
    #                 instance_class: "GenericString",
    #                 instance_size: "GenericString",
    #                 region: "GenericString",
    #                 current_generation: false,
    #                 size_flex_eligible: false
    #               },
    #               memory_db_instance_details: {
    #                 family: "GenericString",
    #                 node_type: "GenericString",
    #                 region: "GenericString",
    #                 current_generation: false,
    #                 size_flex_eligible: false
    #               }
    #             },
    #             recommended_number_of_instances_to_purchase: "GenericString",
    #             recommended_normalized_units_to_purchase: "GenericString",
    #             minimum_number_of_instances_used_per_hour: "GenericString",
    #             minimum_normalized_units_used_per_hour: "GenericString",
    #             maximum_number_of_instances_used_per_hour: "GenericString",
    #             maximum_normalized_units_used_per_hour: "GenericString",
    #             average_number_of_instances_used_per_hour: "GenericString",
    #             average_normalized_units_used_per_hour: "GenericString",
    #             average_utilization: "GenericString",
    #             estimated_break_even_in_months: "GenericString",
    #             currency_code: "GenericString",
    #             estimated_monthly_savings_amount: "GenericString",
    #             estimated_monthly_savings_percentage: "GenericString",
    #             estimated_monthly_on_demand_cost: "GenericString",
    #             estimated_reservation_cost_for_lookback_period: "GenericString",
    #             upfront_cost: "GenericString",
    #             recurring_standard_monthly_cost: "GenericString",
    #             reserved_capacity_details: {
    #               dynamo_db_capacity_details: {
    #                 capacity_units: "GenericString",
    #                 region: "GenericString"
    #               }
    #             },
    #             recommended_number_of_capacity_units_to_purchase: "GenericString",
    #             minimum_number_of_capacity_units_used_per_hour: "GenericString",
    #             maximum_number_of_capacity_units_used_per_hour: "GenericString",
    #             average_number_of_capacity_units_used_per_hour: "GenericString"
    #           }
    #         ],
    #         recommendation_summary: {
    #           total_estimated_monthly_savings_amount: "GenericString",
    #           total_estimated_monthly_savings_percentage: "GenericString",
    #           currency_code: "GenericString"
    #         }
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetReservationPurchaseRecommendationResponse]
    def get_reservation_purchase_recommendation(params = {}, options = {})
      request = build_request(:get_reservation_purchase_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves the reservation utilization for your account. Management account in an
    #       organization have access to member accounts. You can filter data by dimensions in a time
    #       period. You can use <code>GetDimensionValues</code> to determine the possible dimension
    #       values. Currently, you can group only by <code>SUBSCRIPTION_ID</code>. </p>
    # @param [Hash, Types::GetReservationUtilizationRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>Sets the start and end dates for retrieving Reserved Instance (RI) utilization. The
    #         start date is inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>. </p>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>Groups only by <code>SUBSCRIPTION_ID</code>. Metadata is included.</p>
    # @option params [String] :granularity
    #   <p>If <code>GroupBy</code> is set, <code>Granularity</code> can't be set. If
    #           <code>Granularity</code> isn't set, the response object doesn't include
    #           <code>Granularity</code>, either <code>MONTHLY</code> or <code>DAILY</code>. If both
    #           <code>GroupBy</code> and <code>Granularity</code> aren't set,
    #           <code>GetReservationUtilization</code> defaults to <code>DAILY</code>.</p>
    #            <p>The <code>GetReservationUtilization</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    # @option params [Types::Expression] :filter
    #   <p>Filters utilization data by dimensions. You can filter by the following
    #         dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>AZ</p>
    #               </li>
    #               <li>
    #                  <p>CACHE_ENGINE</p>
    #               </li>
    #               <li>
    #                  <p>DEPLOYMENT_OPTION</p>
    #               </li>
    #               <li>
    #                  <p>INSTANCE_TYPE</p>
    #               </li>
    #               <li>
    #                  <p>LINKED_ACCOUNT</p>
    #               </li>
    #               <li>
    #                  <p>OPERATING_SYSTEM</p>
    #               </li>
    #               <li>
    #                  <p>PLATFORM</p>
    #               </li>
    #               <li>
    #                  <p>REGION</p>
    #               </li>
    #               <li>
    #                  <p>SERVICE</p>
    #                  <note>
    #                     <p>If  not specified, the <code>SERVICE</code> filter defaults to Amazon Elastic
    #               Compute Cloud - Compute. Supported values for <code>SERVICE</code> are Amazon Elastic
    #               Compute Cloud - Compute, Amazon Relational Database Service, Amazon ElastiCache, Amazon
    #               Redshift, and Amazon Elasticsearch Service. The value for the <code>SERVICE</code>
    #               filter should not exceed "1".</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>SCOPE</p>
    #               </li>
    #               <li>
    #                  <p>TENANCY</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetReservationUtilization</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension, and
    #         nesting is supported up to only one level deep. If there are multiple values for a dimension,
    #         they are OR'd together.</p>
    # @option params [Types::SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentageInUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PurchasedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalActualUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedUnits</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCostOfRIHoursUsed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalPotentialRISavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalAmortizedFee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RICostForUnusedHours</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RealizedSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnrealizedSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you returned for this request. If more objects are
    #         available, in the response, Amazon Web Services provides a NextPageToken value that you can use
    #         in a subsequent call to get the next batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"],
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     },
    #     next_page_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_reservation_utilization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     utilizations_by_time: [ # required
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         groups: [
    #           {
    #             key: "ReservationGroupKey",
    #             value: "ReservationGroupValue",
    #             attributes: {
    #               "AttributeType" => "AttributeValue"
    #             },
    #             utilization: {
    #               utilization_percentage: "UtilizationPercentage",
    #               utilization_percentage_in_units: "UtilizationPercentageInUnits",
    #               purchased_hours: "PurchasedHours",
    #               purchased_units: "PurchasedUnits",
    #               total_actual_hours: "TotalActualHours",
    #               total_actual_units: "TotalActualUnits",
    #               unused_hours: "UnusedHours",
    #               unused_units: "UnusedUnits",
    #               on_demand_cost_of_ri_hours_used: "OnDemandCostOfRIHoursUsed",
    #               net_ri_savings: "NetRISavings",
    #               total_potential_ri_savings: "TotalPotentialRISavings",
    #               amortized_upfront_fee: "AmortizedUpfrontFee",
    #               amortized_recurring_fee: "AmortizedRecurringFee",
    #               total_amortized_fee: "TotalAmortizedFee",
    #               ri_cost_for_unused_hours: "RICostForUnusedHours",
    #               realized_savings: "RealizedSavings",
    #               unrealized_savings: "UnrealizedSavings"
    #             }
    #           }
    #         ],
    #         total: {
    #           utilization_percentage: "UtilizationPercentage",
    #           utilization_percentage_in_units: "UtilizationPercentageInUnits",
    #           purchased_hours: "PurchasedHours",
    #           purchased_units: "PurchasedUnits",
    #           total_actual_hours: "TotalActualHours",
    #           total_actual_units: "TotalActualUnits",
    #           unused_hours: "UnusedHours",
    #           unused_units: "UnusedUnits",
    #           on_demand_cost_of_ri_hours_used: "OnDemandCostOfRIHoursUsed",
    #           net_ri_savings: "NetRISavings",
    #           total_potential_ri_savings: "TotalPotentialRISavings",
    #           amortized_upfront_fee: "AmortizedUpfrontFee",
    #           amortized_recurring_fee: "AmortizedRecurringFee",
    #           total_amortized_fee: "TotalAmortizedFee",
    #           ri_cost_for_unused_hours: "RICostForUnusedHours",
    #           realized_savings: "RealizedSavings",
    #           unrealized_savings: "UnrealizedSavings"
    #         }
    #       }
    #     ],
    #     total: {
    #       utilization_percentage: "UtilizationPercentage",
    #       utilization_percentage_in_units: "UtilizationPercentageInUnits",
    #       purchased_hours: "PurchasedHours",
    #       purchased_units: "PurchasedUnits",
    #       total_actual_hours: "TotalActualHours",
    #       total_actual_units: "TotalActualUnits",
    #       unused_hours: "UnusedHours",
    #       unused_units: "UnusedUnits",
    #       on_demand_cost_of_ri_hours_used: "OnDemandCostOfRIHoursUsed",
    #       net_ri_savings: "NetRISavings",
    #       total_potential_ri_savings: "TotalPotentialRISavings",
    #       amortized_upfront_fee: "AmortizedUpfrontFee",
    #       amortized_recurring_fee: "AmortizedRecurringFee",
    #       total_amortized_fee: "TotalAmortizedFee",
    #       ri_cost_for_unused_hours: "RICostForUnusedHours",
    #       realized_savings: "RealizedSavings",
    #       unrealized_savings: "UnrealizedSavings"
    #     },
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetReservationUtilizationResponse]
    def get_reservation_utilization(params = {}, options = {})
      request = build_request(:get_reservation_utilization, params)
      request.send_request(options)
    end

    # <p>Creates recommendations that help you save cost by identifying idle and underutilized
    #       Amazon EC2 instances.</p>
    #          <p>Recommendations are generated to either downsize or terminate instances, along with
    #       providing savings detail and metrics. For more information about calculation and function, see
    #         <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html">Optimizing Your Cost with Rightsizing Recommendations</a> in the <i>Billing and Cost Management User Guide</i>.</p>
    # @param [Hash, Types::GetRightsizingRecommendationRequest] params
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [Types::RightsizingRecommendationConfiguration] :configuration
    #   <p>You can use Configuration to customize recommendations across two attributes. You can
    #         choose to view recommendations for instances within the same instance families or across
    #         different instance families. You can also choose to view your estimated savings that are
    #         associated with recommendations with consideration of existing Savings Plans or RI benefits,
    #         or neither. </p>
    # @option params [String] :service
    #   <p>The specific service that you want recommendations for. The only valid value for
    #           <code>GetRightsizingRecommendation</code> is "<code>AmazonEC2</code>".</p>
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    # @option params [String] :next_page_token
    #   <p>The pagination token that indicates the next set of results that you want to
    #         retrieve.</p>
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     configuration: {
    #       recommendation_target: "SAME_INSTANCE_FAMILY" # One of: ["SAME_INSTANCE_FAMILY", "CROSS_INSTANCE_FAMILY"], # required
    #       benefits_considered: false, # required
    #     },
    #     service: "GenericString", # required
    #     page_size: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_rightsizing_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       recommendation_id: "GenericString",
    #       generation_timestamp: "GenericString",
    #       lookback_period_in_days: "SEVEN_DAYS" # One of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"],
    #       additional_metadata: "GenericString"
    #     },
    #     summary: {
    #       total_recommendation_count: "GenericString",
    #       estimated_total_monthly_savings_amount: "GenericString",
    #       savings_currency_code: "GenericString",
    #       savings_percentage: "GenericString"
    #     },
    #     rightsizing_recommendations: [
    #       {
    #         account_id: "GenericString",
    #         current_instance: {
    #           resource_id: "GenericString",
    #           instance_name: "GenericString",
    #           tags: [
    #             {
    #               key: "TagKey",
    #               values: ["Value"],
    #               match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #             }
    #           ],
    #           resource_details: {
    #             ec2_resource_details: {
    #               hourly_on_demand_rate: "GenericString",
    #               instance_type: "GenericString",
    #               platform: "GenericString",
    #               region: "GenericString",
    #               sku: "GenericString",
    #               memory: "GenericString",
    #               network_performance: "GenericString",
    #               storage: "GenericString",
    #               vcpu: "GenericString"
    #             }
    #           },
    #           resource_utilization: {
    #             ec2_resource_utilization: {
    #               max_cpu_utilization_percentage: "GenericString",
    #               max_memory_utilization_percentage: "GenericString",
    #               max_storage_utilization_percentage: "GenericString",
    #               ebs_resource_utilization: {
    #                 ebs_read_ops_per_second: "GenericString",
    #                 ebs_write_ops_per_second: "GenericString",
    #                 ebs_read_bytes_per_second: "GenericString",
    #                 ebs_write_bytes_per_second: "GenericString"
    #               },
    #               disk_resource_utilization: {
    #                 disk_read_ops_per_second: "GenericString",
    #                 disk_write_ops_per_second: "GenericString",
    #                 disk_read_bytes_per_second: "GenericString",
    #                 disk_write_bytes_per_second: "GenericString"
    #               },
    #               network_resource_utilization: {
    #                 network_in_bytes_per_second: "GenericString",
    #                 network_out_bytes_per_second: "GenericString",
    #                 network_packets_in_per_second: "GenericString",
    #                 network_packets_out_per_second: "GenericString"
    #               }
    #             }
    #           },
    #           reservation_covered_hours_in_lookback_period: "GenericString",
    #           savings_plans_covered_hours_in_lookback_period: "GenericString",
    #           on_demand_hours_in_lookback_period: "GenericString",
    #           total_running_hours_in_lookback_period: "GenericString",
    #           monthly_cost: "GenericString",
    #           currency_code: "GenericString"
    #         },
    #         rightsizing_type: "TERMINATE" # One of: ["TERMINATE", "MODIFY"],
    #         modify_recommendation_detail: {
    #           target_instances: [
    #             {
    #               estimated_monthly_cost: "GenericString",
    #               estimated_monthly_savings: "GenericString",
    #               currency_code: "GenericString",
    #               default_target_instance: false,
    #               resource_details: {
    #                 ec2_resource_details: {
    #                   hourly_on_demand_rate: "GenericString",
    #                   instance_type: "GenericString",
    #                   platform: "GenericString",
    #                   region: "GenericString",
    #                   sku: "GenericString",
    #                   memory: "GenericString",
    #                   network_performance: "GenericString",
    #                   storage: "GenericString",
    #                   vcpu: "GenericString"
    #                 }
    #               },
    #               expected_resource_utilization: {
    #                 ec2_resource_utilization: {
    #                   max_cpu_utilization_percentage: "GenericString",
    #                   max_memory_utilization_percentage: "GenericString",
    #                   max_storage_utilization_percentage: "GenericString",
    #                   ebs_resource_utilization: {
    #                     ebs_read_ops_per_second: "GenericString",
    #                     ebs_write_ops_per_second: "GenericString",
    #                     ebs_read_bytes_per_second: "GenericString",
    #                     ebs_write_bytes_per_second: "GenericString"
    #                   },
    #                   disk_resource_utilization: {
    #                     disk_read_ops_per_second: "GenericString",
    #                     disk_write_ops_per_second: "GenericString",
    #                     disk_read_bytes_per_second: "GenericString",
    #                     disk_write_bytes_per_second: "GenericString"
    #                   },
    #                   network_resource_utilization: {
    #                     network_in_bytes_per_second: "GenericString",
    #                     network_out_bytes_per_second: "GenericString",
    #                     network_packets_in_per_second: "GenericString",
    #                     network_packets_out_per_second: "GenericString"
    #                   }
    #                 }
    #               },
    #               platform_differences: ["HYPERVISOR" # One of: ["HYPERVISOR", "NETWORK_INTERFACE", "STORAGE_INTERFACE", "INSTANCE_STORE_AVAILABILITY", "VIRTUALIZATION_TYPE"]]
    #             }
    #           ]
    #         },
    #         terminate_recommendation_detail: {
    #           estimated_monthly_savings: "GenericString",
    #           currency_code: "GenericString"
    #         },
    #         finding_reason_codes: ["CPU_OVER_PROVISIONED" # One of: ["CPU_OVER_PROVISIONED", "CPU_UNDER_PROVISIONED", "MEMORY_OVER_PROVISIONED", "MEMORY_UNDER_PROVISIONED", "EBS_THROUGHPUT_OVER_PROVISIONED", "EBS_THROUGHPUT_UNDER_PROVISIONED", "EBS_IOPS_OVER_PROVISIONED", "EBS_IOPS_UNDER_PROVISIONED", "NETWORK_BANDWIDTH_OVER_PROVISIONED", "NETWORK_BANDWIDTH_UNDER_PROVISIONED", "NETWORK_PPS_OVER_PROVISIONED", "NETWORK_PPS_UNDER_PROVISIONED", "DISK_IOPS_OVER_PROVISIONED", "DISK_IOPS_UNDER_PROVISIONED", "DISK_THROUGHPUT_OVER_PROVISIONED", "DISK_THROUGHPUT_UNDER_PROVISIONED"]]
    #       }
    #     ],
    #     next_page_token: "NextPageToken",
    #     configuration: {
    #       recommendation_target: "SAME_INSTANCE_FAMILY" # One of: ["SAME_INSTANCE_FAMILY", "CROSS_INSTANCE_FAMILY"], # required
    #       benefits_considered: false, # required
    #     }
    #   }
    # @return [Types::GetRightsizingRecommendationResponse]
    def get_rightsizing_recommendation(params = {}, options = {})
      request = build_request(:get_rightsizing_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves the details for a Savings Plan recommendation. These details include the hourly
    #       data-points that construct the cost, coverage, and utilization charts.</p>
    # @param [Hash, Types::GetSavingsPlanPurchaseRecommendationDetailsRequest] params
    # @option params [String] :recommendation_detail_id
    #   <p>The ID that is associated with the Savings Plan recommendation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recommendation_detail_id: "RecommendationDetailId", # required
    #   }
    #   options = {}
    #   response = client.get_savings_plan_purchase_recommendation_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_detail_id: "RecommendationDetailId",
    #     recommendation_detail_data: {
    #       account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #       lookback_period_in_days: "SEVEN_DAYS" # One of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"],
    #       savings_plans_type: "COMPUTE_SP" # One of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"],
    #       term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #       payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #       account_id: "GenericString",
    #       currency_code: "GenericString",
    #       instance_family: "GenericString",
    #       region: "GenericString",
    #       offering_id: "GenericString",
    #       generation_timestamp: "ZonedDateTime",
    #       latest_usage_timestamp: "ZonedDateTime",
    #       current_average_hourly_on_demand_spend: "GenericString",
    #       current_maximum_hourly_on_demand_spend: "GenericString",
    #       current_minimum_hourly_on_demand_spend: "GenericString",
    #       estimated_average_utilization: "GenericString",
    #       estimated_monthly_savings_amount: "GenericString",
    #       estimated_on_demand_cost: "GenericString",
    #       estimated_on_demand_cost_with_current_commitment: "GenericString",
    #       estimated_roi: "GenericString",
    #       estimated_sp_cost: "GenericString",
    #       estimated_savings_amount: "GenericString",
    #       estimated_savings_percentage: "GenericString",
    #       existing_hourly_commitment: "GenericString",
    #       hourly_commitment_to_purchase: "GenericString",
    #       upfront_cost: "GenericString",
    #       current_average_coverage: "GenericString",
    #       estimated_average_coverage: "GenericString",
    #       metrics_over_lookback_period: [
    #         {
    #           start_time: "ZonedDateTime",
    #           estimated_on_demand_cost: "GenericString",
    #           current_coverage: "GenericString",
    #           estimated_coverage: "GenericString",
    #           estimated_new_commitment_utilization: "GenericString"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetSavingsPlanPurchaseRecommendationDetailsResponse]
    def get_savings_plan_purchase_recommendation_details(params = {}, options = {})
      request = build_request(:get_savings_plan_purchase_recommendation_details, params)
      request.send_request(options)
    end

    # <p>Retrieves the Savings Plans covered for your account. This enables you to see how much of
    #       your cost is covered by a Savings Plan. An organization’s management account can see the
    #       coverage of the associated member accounts. This supports dimensions, Cost Categories, and
    #       nested expressions. For any time period, you can filter data for Savings Plans usage with the
    #       following dimensions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LINKED_ACCOUNT</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>REGION</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SERVICE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INSTANCE_FAMILY</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>To determine valid values for a dimension, use the <code>GetDimensionValues</code>
    #       operation.</p>
    # @param [Hash, Types::GetSavingsPlansCoverageRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be
    #         within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and
    #         before the current date. Future dates can't be used as an <code>End</code> date.</p>
    # @option params [Array<Types::GroupDefinition>] :group_by
    #   <p>You can group the data using the attributes <code>INSTANCE_FAMILY</code>,
    #           <code>REGION</code>, or <code>SERVICE</code>.</p>
    # @option params [String] :granularity
    #   <p>The granularity of the Amazon Web Services cost data for your Savings Plans.
    #           <code>Granularity</code> can't be set if <code>GroupBy</code> is set.</p>
    #            <p>The <code>GetSavingsPlansCoverage</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    # @option params [Types::Expression] :filter
    #   <p>Filters Savings Plans coverage data by dimensions. You can filter data for Savings Plans
    #         usage with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansCoverage</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension. If there
    #         are multiple values for a dimension, they are OR'd together.</p>
    #            <p>Cost category is also supported.</p>
    # @option params [Array<String>] :metrics
    #   <p>The measurement that you want your Savings Plans coverage reported in. The only valid
    #         value is <code>SpendCoveredBySavingsPlans</code>.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a
    #         minimum value of <code>1</code>.</p>
    # @option params [Types::SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SpendCoveredBySavingsPlan</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OnDemandCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CoveragePercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InstanceFamily</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Service</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     group_by: [
    #       {
    #         type: "DIMENSION" # One of: ["DIMENSION", "TAG", "COST_CATEGORY"],
    #         key: "GroupDefinitionKey"
    #       }
    #     ],
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"],
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     metrics: ["MetricName"],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_savings_plans_coverage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plans_coverages: [ # required
    #       {
    #         attributes: {
    #           "AttributeType" => "AttributeValue"
    #         },
    #         coverage: {
    #           spend_covered_by_savings_plans: "GenericString",
    #           on_demand_cost: "GenericString",
    #           total_cost: "GenericString",
    #           coverage_percentage: "GenericString"
    #         },
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::GetSavingsPlansCoverageResponse]
    def get_savings_plans_coverage(params = {}, options = {})
      request = build_request(:get_savings_plans_coverage, params)
      request.send_request(options)
    end

    # <p>Retrieves the Savings Plans recommendations for your account. First use
    #         <code>StartSavingsPlansPurchaseRecommendationGeneration</code> to generate a new set of
    #       recommendations, and then use <code>GetSavingsPlansPurchaseRecommendation</code> to retrieve
    #       them.</p>
    # @param [Hash, Types::GetSavingsPlansPurchaseRecommendationRequest] params
    # @option params [String] :savings_plans_type
    #   <p>The Savings Plans recommendation type that's requested.</p>
    # @option params [String] :term_in_years
    #   <p>The savings plan recommendation term that's used to generate these recommendations.</p>
    # @option params [String] :payment_option
    #   <p>The payment option that's used to generate these recommendations.</p>
    # @option params [String] :account_scope
    #   <p>The account scope that you want your recommendations for. Amazon Web Services calculates
    #         recommendations including the management account and member accounts if the value is set to
    #           <code>PAYER</code>. If the value is <code>LINKED</code>, recommendations are calculated for
    #         individual member accounts only.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    # @option params [String] :lookback_period_in_days
    #   <p>The lookback period that's used to generate the recommendation.</p>
    # @option params [Types::Expression] :filter
    #   <p>You can filter your recommendations by Account ID with the <code>LINKED_ACCOUNT</code>
    #         dimension. To filter your recommendations by Account ID, specify <code>Key</code> as
    #           <code>LINKED_ACCOUNT</code> and <code>Value</code> as the comma-separated Acount ID(s) that
    #         you want to see Savings Plans purchase recommendations for.</p>
    #            <p>For GetSavingsPlansPurchaseRecommendation, the <code>Filter</code> doesn't include
    #           <code>CostCategories</code> or <code>Tags</code>. It only includes <code>Dimensions</code>.
    #         With <code>Dimensions</code>, <code>Key</code> must be <code>LINKED_ACCOUNT</code> and
    #           <code>Value</code> can be a single Account ID or multiple comma-separated Account IDs that
    #         you want to see Savings Plans Purchase Recommendations for. <code>AND</code> and
    #           <code>OR</code> operators are not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     savings_plans_type: "COMPUTE_SP" # One of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"], # required
    #     term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"], # required
    #     payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"], # required
    #     account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #     next_page_token: "NextPageToken",
    #     page_size: 1,
    #     lookback_period_in_days: "SEVEN_DAYS" # One of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"], # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_savings_plans_purchase_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metadata: {
    #       recommendation_id: "GenericString",
    #       generation_timestamp: "GenericString",
    #       additional_metadata: "GenericString"
    #     },
    #     savings_plans_purchase_recommendation: {
    #       account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #       savings_plans_type: "COMPUTE_SP" # One of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"],
    #       term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #       payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #       lookback_period_in_days: "SEVEN_DAYS" # One of: ["SEVEN_DAYS", "THIRTY_DAYS", "SIXTY_DAYS"],
    #       savings_plans_purchase_recommendation_details: [
    #         {
    #           savings_plans_details: {
    #             region: "GenericString",
    #             instance_family: "GenericString",
    #             offering_id: "GenericString"
    #           },
    #           account_id: "GenericString",
    #           upfront_cost: "GenericString",
    #           estimated_roi: "GenericString",
    #           currency_code: "GenericString",
    #           estimated_sp_cost: "GenericString",
    #           estimated_on_demand_cost: "GenericString",
    #           estimated_on_demand_cost_with_current_commitment: "GenericString",
    #           estimated_savings_amount: "GenericString",
    #           estimated_savings_percentage: "GenericString",
    #           hourly_commitment_to_purchase: "GenericString",
    #           estimated_average_utilization: "GenericString",
    #           estimated_monthly_savings_amount: "GenericString",
    #           current_minimum_hourly_on_demand_spend: "GenericString",
    #           current_maximum_hourly_on_demand_spend: "GenericString",
    #           current_average_hourly_on_demand_spend: "GenericString",
    #           recommendation_detail_id: "RecommendationDetailId"
    #         }
    #       ],
    #       savings_plans_purchase_recommendation_summary: {
    #         estimated_roi: "GenericString",
    #         currency_code: "GenericString",
    #         estimated_total_cost: "GenericString",
    #         current_on_demand_spend: "GenericString",
    #         estimated_savings_amount: "GenericString",
    #         total_recommendation_count: "GenericString",
    #         daily_commitment_to_purchase: "GenericString",
    #         hourly_commitment_to_purchase: "GenericString",
    #         estimated_savings_percentage: "GenericString",
    #         estimated_monthly_savings_amount: "GenericString",
    #         estimated_on_demand_cost_with_current_commitment: "GenericString"
    #       }
    #     },
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::GetSavingsPlansPurchaseRecommendationResponse]
    def get_savings_plans_purchase_recommendation(params = {}, options = {})
      request = build_request(:get_savings_plans_purchase_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves the Savings Plans utilization for your account across date ranges with daily or
    #       monthly granularity. Management account in an organization have access to member accounts. You
    #       can use <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the
    #       possible dimension values.</p>
    #          <note>
    #             <p>You can't group by any dimension values for
    #         <code>GetSavingsPlansUtilization</code>.</p>
    #          </note>
    # @param [Hash, Types::GetSavingsPlansUtilizationRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be
    #         within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and
    #         before the current date. Future dates can't be used as an <code>End</code> date.</p>
    # @option params [String] :granularity
    #   <p>The granularity of the Amazon Web Services utillization data for your Savings
    #         Plans.</p>
    #            <p>The <code>GetSavingsPlansUtilization</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    # @option params [Types::Expression] :filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You
    #         can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLANS_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilization</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    # @option params [Types::SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"],
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_savings_plans_utilization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plans_utilizations_by_time: [
    #       {
    #         time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         utilization: { # required
    #           total_commitment: "GenericString",
    #           used_commitment: "GenericString",
    #           unused_commitment: "GenericString",
    #           utilization_percentage: "GenericString"
    #         },
    #         savings: {
    #           net_savings: "GenericString",
    #           on_demand_cost_equivalent: "GenericString"
    #         },
    #         amortized_commitment: {
    #           amortized_recurring_commitment: "GenericString",
    #           amortized_upfront_commitment: "GenericString",
    #           total_amortized_commitment: "GenericString"
    #         }
    #       }
    #     ],
    #     total: { # required
    #       utilization: { # required
    #         total_commitment: "GenericString",
    #         used_commitment: "GenericString",
    #         unused_commitment: "GenericString",
    #         utilization_percentage: "GenericString"
    #       },
    #       savings: {
    #         net_savings: "GenericString",
    #         on_demand_cost_equivalent: "GenericString"
    #       },
    #       amortized_commitment: {
    #         amortized_recurring_commitment: "GenericString",
    #         amortized_upfront_commitment: "GenericString",
    #         total_amortized_commitment: "GenericString"
    #       }
    #     }
    #   }
    # @return [Types::GetSavingsPlansUtilizationResponse]
    def get_savings_plans_utilization(params = {}, options = {})
      request = build_request(:get_savings_plans_utilization, params)
      request.send_request(options)
    end

    # <p>Retrieves attribute data along with aggregate utilization and savings data for a given
    #       time period. This doesn't support granular or grouped data (daily/monthly) in response. You
    #       can't retrieve data by dates in a single response similar to
    #         <code>GetSavingsPlanUtilization</code>, but you have the option to make multiple calls to
    #         <code>GetSavingsPlanUtilizationDetails</code> by providing individual dates. You can use
    #         <code>GetDimensionValues</code> in <code>SAVINGS_PLANS</code> to determine the possible
    #       dimension values.</p>
    #          <note>
    #             <p>
    #                <code>GetSavingsPlanUtilizationDetails</code> internally groups data by
    #           <code>SavingsPlansArn</code>.</p>
    #          </note>
    # @param [Hash, Types::GetSavingsPlansUtilizationDetailsRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>The time period that you want the usage and costs for. The <code>Start</code> date must be
    #         within 13 months. The <code>End</code> date must be after the <code>Start</code> date, and
    #         before the current date. Future dates can't be used as an <code>End</code> date.</p>
    # @option params [Types::Expression] :filter
    #   <p>Filters Savings Plans utilization coverage data for active Savings Plans dimensions. You
    #         can filter data with the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>GetSavingsPlansUtilizationDetails</code> uses the same <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         as the other operations, but only <code>AND</code> is supported among each dimension.</p>
    # @option params [Array<String>] :data_type
    #   <p>The data type.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size.</p>
    # @option params [Integer] :max_results
    #   <p>The number of items to be returned in a response. The default is <code>20</code>, with a
    #         minimum value of <code>1</code>.</p>
    # @option params [Types::SortDefinition] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The following values are supported for <code>Key</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>UtilizationPercentage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TotalCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnusedCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetSavings</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedRecurringCommitment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedUpfrontCommitment</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     data_type: ["ATTRIBUTES" # One of: ["ATTRIBUTES", "UTILIZATION", "AMORTIZED_COMMITMENT", "SAVINGS"]],
    #     next_token: "NextPageToken",
    #     max_results: 1,
    #     sort_by: {
    #       key: "SortDefinitionKey", # required
    #       sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #     }
    #   }
    #   options = {}
    #   response = client.get_savings_plans_utilization_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     savings_plans_utilization_details: [ # required
    #       {
    #         savings_plan_arn: "SavingsPlanArn",
    #         attributes: {
    #           "AttributeType" => "AttributeValue"
    #         },
    #         utilization: {
    #           total_commitment: "GenericString",
    #           used_commitment: "GenericString",
    #           unused_commitment: "GenericString",
    #           utilization_percentage: "GenericString"
    #         },
    #         savings: {
    #           net_savings: "GenericString",
    #           on_demand_cost_equivalent: "GenericString"
    #         },
    #         amortized_commitment: {
    #           amortized_recurring_commitment: "GenericString",
    #           amortized_upfront_commitment: "GenericString",
    #           total_amortized_commitment: "GenericString"
    #         }
    #       }
    #     ],
    #     total: {
    #       utilization: { # required
    #         total_commitment: "GenericString",
    #         used_commitment: "GenericString",
    #         unused_commitment: "GenericString",
    #         utilization_percentage: "GenericString"
    #       },
    #       savings: {
    #         net_savings: "GenericString",
    #         on_demand_cost_equivalent: "GenericString"
    #       },
    #       amortized_commitment: {
    #         amortized_recurring_commitment: "GenericString",
    #         amortized_upfront_commitment: "GenericString",
    #         total_amortized_commitment: "GenericString"
    #       }
    #     },
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::GetSavingsPlansUtilizationDetailsResponse]
    def get_savings_plans_utilization_details(params = {}, options = {})
      request = build_request(:get_savings_plans_utilization_details, params)
      request.send_request(options)
    end

    # <p>Queries for available tag keys and tag values for a specified period. You can search
    #       the tag values for an arbitrary string. </p>
    # @param [Hash, Types::GetTagsRequest] params
    # @option params [String] :search_string
    #   <p>The value that you want to search for.</p>
    # @option params [Types::DateInterval] :time_period
    #   <p>The start and end dates for retrieving the dimension values. The start date is
    #         inclusive, but the end date is exclusive. For example, if <code>start</code> is
    #           <code>2017-01-01</code> and <code>end</code> is <code>2017-05-01</code>, then the cost and
    #         usage data is retrieved from <code>2017-01-01</code> up to and including
    #           <code>2017-04-30</code> but not including <code>2017-05-01</code>.</p>
    # @option params [String] :tag_key
    #   <p>The key of the tag that you want to return values for.</p>
    # @option params [Types::Expression] :filter
    #   <p>Use <code>Expression</code> to filter in various Cost Explorer APIs.</p>
    #            <p>Not all <code>Expression</code> types are supported in each API. Refer to the
    #               documentation for each specific API to see what is supported.</p>
    #            <p>There are two patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>Simple dimension values.</p>
    #                  <ul>
    #                     <li>
    #                        <p>There are three types of simple dimension values:
    #                                   <code>CostCategories</code>, <code>Tags</code>, and
    #                                   <code>Dimensions</code>.</p>
    #                        <ul>
    #                           <li>
    #                              <p>Specify the <code>CostCategories</code> field to define a
    #                                       filter that acts on Cost Categories.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Tags</code> field to define a filter that
    #                                       acts on Cost Allocation Tags.</p>
    #                           </li>
    #                           <li>
    #                              <p>Specify the <code>Dimensions</code> field to define a filter
    #                                       that acts on the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_DimensionValues.html">
    #                                    <code>DimensionValues</code>
    #                                 </a>.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>For each filter type, you can set the dimension name and values for
    #                               the filters that you plan to use.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for <code>REGION==us-east-1 OR
    #                                           REGION==us-west-1</code>. For
    #                                           <code>GetRightsizingRecommendation</code>, the Region is a
    #                                       full name (for example, <code>REGION==US East (N.
    #                                           Virginia)</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key": "REGION", "Values": [
    #                                           "us-east-1", "us-west-1" ] } }</code>
    #                              </p>
    #                           </li>
    #                           <li>
    #                              <p>As shown in the previous example, lists of dimension values
    #                                       are combined with <code>OR</code> when applying the
    #                                       filter.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>You can also set different match options to further control how the
    #                               filter behaves. Not all APIs support match options. Refer to the
    #                               documentation for each specific API to see what is supported.</p>
    #                        <ul>
    #                           <li>
    #                              <p>For example, you can filter for linked account names that
    #                                       start with "a".</p>
    #                           </li>
    #                           <li>
    #                              <p>The corresponding <code>Expression</code> for this example is
    #                                       as follows: <code>{ "Dimensions": { "Key":
    #                                           "LINKED_ACCOUNT_NAME", "MatchOptions": [ "STARTS_WITH" ],
    #                                           "Values": [ "a" ] } }</code>
    #                              </p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compound <code>Expression</code> types with logical operations.</p>
    #                  <ul>
    #                     <li>
    #                        <p>You can use multiple <code>Expression</code> types and the logical
    #                               operators <code>AND/OR/NOT</code> to create a list of one or more
    #                                   <code>Expression</code> objects. By doing this, you can filter by
    #                               more advanced options.</p>
    #                     </li>
    #                     <li>
    #                        <p>For example, you can filter by <code>((REGION == us-east-1 OR REGION
    #                                   == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    #                                   DataTransfer)</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>The corresponding <code>Expression</code> for this example is as
    #                               follows: <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    #                                   "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key":
    #                                   "TagName", "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": {
    #                                   "Key": "USAGE_TYPE", "Values": ["DataTransfer"] }}} ] }
    #                               </code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Because each <code>Expression</code> can have only one operator, the
    #                           service returns an error if more than one is specified. The following
    #                           example shows an <code>Expression</code> object that creates an error:
    #                               <code> { "And": [ ... ], "Dimensions": { "Key": "USAGE_TYPE", "Values":
    #                               [ "DataTransfer" ] } } </code>
    #                     </p>
    #                     <p>The following is an example of the corresponding error message:
    #                               <code>"Expression has more than one roots. Only one root operator is
    #                               allowed for each expression: And, Or, Not, Dimensions, Tags,
    #                               CostCategories"</code>
    #                     </p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and
    #                   NOT isn't supported. OR isn't supported between different dimensions, or dimensions
    #                   and tags. NOT operators aren't supported. Dimensions are also limited to
    #                       <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    #                       <code>RIGHTSIZING_TYPE</code>.</p>
    #               <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is
    #                   supported. AND and OR aren't supported. Dimensions are limited to
    #                       <code>LINKED_ACCOUNT</code>.</p>
    #            </note>
    # @option params [Array<Types::SortDefinition>] :sort_by
    #   <p>The value that you want to sort the data by.</p>
    #            <p>The key represents cost and usage metrics. The following values are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BlendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetAmortizedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NetUnblendedCost</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UsageQuantity</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NormalizedUsageAmount</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The supported values for <code>SortOrder</code> are <code>ASCENDING</code> and
    #           <code>DESCENDING</code>.</p>
    #            <p>When you use <code>SortBy</code>, <code>NextPageToken</code> and <code>SearchString</code>
    #         aren't supported.</p>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Integer] :max_results
    #   <p>This field is only used when SortBy is provided in the request. The maximum number of
    #         objects that are returned for this request. If MaxResults isn't specified with SortBy, the
    #         request returns 1000 results as the default value for this parameter.</p>
    #            <p>For <code>GetTags</code>, MaxResults has an upper quota of 1000.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     search_string: "SearchString",
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     tag_key: "TagKey",
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     sort_by: [
    #       {
    #         key: "SortDefinitionKey", # required
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     ],
    #     billing_view_arn: "BillingViewArn",
    #     max_results: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.get_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_page_token: "NextPageToken",
    #     tags: ["Entity"], # required
    #     return_size: 1, # required
    #     total_size: 1, # required
    #   }
    # @return [Types::GetTagsResponse]
    def get_tags(params = {}, options = {})
      request = build_request(:get_tags, params)
      request.send_request(options)
    end

    # <p>Retrieves a forecast for how much Amazon Web Services predicts that you will use
    #       over the forecast time period that you select, based on your past usage. </p>
    # @param [Hash, Types::GetUsageForecastRequest] params
    # @option params [Types::DateInterval] :time_period
    #   <p>The start and end dates of the period that you want to retrieve usage forecast for. The
    #         start date is included in the period, but the end date isn't included in the period. For
    #         example, if <code>start</code> is <code>2017-01-01</code> and <code>end</code> is
    #           <code>2017-05-01</code>, then the cost and usage data is retrieved from
    #           <code>2017-01-01</code> up to and including <code>2017-04-30</code> but not including
    #           <code>2017-05-01</code>. The start date must be equal to or later than the current date to
    #         avoid a validation error.</p>
    # @option params [String] :metric
    #   <p>Which metric Cost Explorer uses to create your forecast.</p>
    #            <p>Valid values for a <code>GetUsageForecast</code> call are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>USAGE_QUANTITY</p>
    #               </li>
    #               <li>
    #                  <p>NORMALIZED_USAGE_AMOUNT</p>
    #               </li>
    #            </ul>
    # @option params [String] :granularity
    #   <p>How granular you want the forecast to be. You can get 3 months of <code>DAILY</code>
    #         forecasts or 12 months of <code>MONTHLY</code> forecasts.</p>
    #            <p>The <code>GetUsageForecast</code> operation supports only <code>DAILY</code> and
    #           <code>MONTHLY</code> granularities.</p>
    # @option params [Types::Expression] :filter
    #   <p>The filters that you want to use to filter your forecast. The
    #           <code>GetUsageForecast</code> API supports filtering by the following dimensions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AZ</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LINKED_ACCOUNT_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PURCHASE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>USAGE_TYPE_GROUP</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RECORD_TYPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPERATING_SYSTEM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TENANCY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SCOPE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLATFORM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUBSCRIPTION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LEGAL_ENTITY_NAME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPLOYMENT_OPTION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DATABASE_ENGINE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSTANCE_TYPE_FAMILY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BILLING_ENTITY</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESERVATION_ID</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAVINGS_PLAN_ARN</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :billing_view_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a specific billing view. The ARN
    #         is used to specify which particular billing view you want to interact with or retrieve
    #         information from when making API calls related to Amazon Web Services Billing and Cost
    #         Management features. The BillingViewArn can be retrieved by calling the ListBillingViews
    #         API.</p>
    # @option params [Integer] :prediction_interval_level
    #   <p>Amazon Web Services Cost Explorer always returns the mean forecast as a single point.
    #         You can request a prediction interval around the mean by specifying a confidence level. The
    #         higher the confidence level, the more confident Cost Explorer is about the actual value
    #         falling in the prediction interval. Higher confidence levels result in wider prediction
    #         intervals.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     time_period: { # required
    #       start: "YearMonthDay", # required
    #       end: "YearMonthDay", # required
    #     },
    #     metric: "BLENDED_COST" # One of: ["BLENDED_COST", "UNBLENDED_COST", "AMORTIZED_COST", "NET_UNBLENDED_COST", "NET_AMORTIZED_COST", "USAGE_QUANTITY", "NORMALIZED_USAGE_AMOUNT"], # required
    #     granularity: "DAILY" # One of: ["DAILY", "MONTHLY", "HOURLY"], # required
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     },
    #     billing_view_arn: "BillingViewArn",
    #     prediction_interval_level: 1
    #   }
    #   options = {}
    #   response = client.get_usage_forecast(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     total: {
    #       amount: "MetricAmount",
    #       unit: "MetricUnit"
    #     },
    #     forecast_results_by_time: [
    #       {
    #         time_period: {
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         },
    #         mean_value: "GenericString",
    #         prediction_interval_lower_bound: "GenericString",
    #         prediction_interval_upper_bound: "GenericString"
    #       }
    #     ]
    #   }
    # @return [Types::GetUsageForecastResponse]
    def get_usage_forecast(params = {}, options = {})
      request = build_request(:get_usage_forecast, params)
      request.send_request(options)
    end

    # <p>Lists the commitment purchase analyses for your account.</p>
    # @param [Hash, Types::ListCommitmentPurchaseAnalysesRequest] params
    # @option params [String] :analysis_status
    #   <p>The status of the analysis.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The number of analyses that you want returned in a single response object.</p>
    # @option params [Array<String>] :analysis_ids
    #   <p>The analysis IDs associated with the commitment purchase analyses.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analysis_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"],
    #     next_page_token: "NextPageToken",
    #     page_size: 1,
    #     analysis_ids: ["AnalysisId"]
    #   }
    #   options = {}
    #   response = client.list_commitment_purchase_analyses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_summary_list: [
    #       {
    #         estimated_completion_time: "ZonedDateTime",
    #         analysis_completion_time: "ZonedDateTime",
    #         analysis_started_time: "ZonedDateTime",
    #         analysis_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"],
    #         error_code: "NO_USAGE_FOUND" # One of: ["NO_USAGE_FOUND", "INTERNAL_FAILURE", "INVALID_SAVINGS_PLANS_TO_ADD", "INVALID_SAVINGS_PLANS_TO_EXCLUDE", "INVALID_ACCOUNT_ID"],
    #         analysis_id: "AnalysisId",
    #         commitment_purchase_analysis_configuration: {
    #           savings_plans_purchase_analysis_configuration: {
    #             account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #             account_id: "AccountId",
    #             analysis_type: "MAX_SAVINGS" # One of: ["MAX_SAVINGS", "CUSTOM_COMMITMENT"], # required
    #             savings_plans_to_add: [ # required
    #               {
    #                 payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #                 savings_plans_type: "COMPUTE_SP" # One of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"],
    #                 region: "GenericString",
    #                 instance_family: "GenericString",
    #                 term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #                 savings_plans_commitment: 1.0,
    #                 offering_id: "GenericString"
    #               }
    #             ],
    #             savings_plans_to_exclude: ["SavingsPlansId"],
    #             look_back_time_period: { # required
    #               start: "YearMonthDay", # required
    #               end: "YearMonthDay", # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::ListCommitmentPurchaseAnalysesResponse]
    def list_commitment_purchase_analyses(params = {}, options = {})
      request = build_request(:list_commitment_purchase_analyses, params)
      request.send_request(options)
    end

    # <p>
    #       Retrieves a list of your historical cost allocation tag backfill requests.
    #     </p>
    # @param [Hash, Types::ListCostAllocationTagBackfillHistoryRequest] params
    # @option params [String] :next_token
    #   <p>
    #         The token to retrieve the next set of results. Amazon Web Services provides the token when the response from a previous call has more results than the maximum page size.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of objects that are returned for this request.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cost_allocation_tag_backfill_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backfill_requests: [
    #       {
    #         backfill_from: "ZonedDateTime",
    #         requested_at: "ZonedDateTime",
    #         completed_at: "ZonedDateTime",
    #         backfill_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"],
    #         last_updated_at: "ZonedDateTime"
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListCostAllocationTagBackfillHistoryResponse]
    def list_cost_allocation_tag_backfill_history(params = {}, options = {})
      request = build_request(:list_cost_allocation_tag_backfill_history, params)
      request.send_request(options)
    end

    # <p>Get a list of cost allocation tags. All inputs in the API are optional and serve as
    #       filters. By default, all cost allocation tags are returned. </p>
    # @param [Hash, Types::ListCostAllocationTagsRequest] params
    # @option params [String] :status
    #   <p>The status of cost allocation tag keys that are returned for this request. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of cost allocation tag keys that are returned for this request. </p>
    # @option params [String] :type
    #   <p>The type of <code>CostAllocationTag</code> object that are returned for this request. The
    #           <code>AWSGenerated</code> type tags are tags that Amazon Web Services defines and applies to
    #         support Amazon Web Services resources for cost allocation purposes. The
    #           <code>UserDefined</code> type tags are tags that you define, create, and apply to resources.
    #       </p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token when
    #         the response from a previous call has more results than the maximum page size. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for this request. By default, the request
    #         returns 100 results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "Active" # One of: ["Active", "Inactive"],
    #     tag_keys: ["TagKey"],
    #     type: "AWSGenerated" # One of: ["AWSGenerated", "UserDefined"],
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cost_allocation_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_allocation_tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         type: "AWSGenerated" # One of: ["AWSGenerated", "UserDefined"], # required
    #         status: "Active" # One of: ["Active", "Inactive"], # required
    #         last_updated_date: "ZonedDateTime",
    #         last_used_date: "ZonedDateTime"
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListCostAllocationTagsResponse]
    def list_cost_allocation_tags(params = {}, options = {})
      request = build_request(:list_cost_allocation_tags, params)
      request.send_request(options)
    end

    # <p>Returns the name, Amazon Resource Name (ARN), <code>NumberOfRules</code> and effective
    #       dates of all Cost Categories defined in the account. You have the option to use
    #         <code>EffectiveOn</code> to return a list of Cost Categories that were active on a specific
    #       date. If there is no <code>EffectiveOn</code> specified, you’ll see Cost Categories that are
    #       effective on the current date. If Cost Category is still effective, <code>EffectiveEnd</code>
    #       is omitted in the response. <code>ListCostCategoryDefinitions</code> supports pagination. The
    #       request can have a <code>MaxResults</code> range up to 100.</p>
    # @param [Hash, Types::ListCostCategoryDefinitionsRequest] params
    # @option params [String] :effective_on
    #   <p>The date when the Cost Category was effective. </p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results. Amazon Web Services provides the token
    #         when the response from a previous call has more results than the maximum page size. </p>
    # @option params [Integer] :max_results
    #   <p>The number of entries a paginated response contains. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     effective_on: "ZonedDateTime",
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_cost_category_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_category_references: [
    #       {
    #         cost_category_arn: "Arn",
    #         name: "CostCategoryName",
    #         effective_start: "ZonedDateTime",
    #         effective_end: "ZonedDateTime",
    #         number_of_rules: 1,
    #         processing_status: [
    #           {
    #             component: "COST_EXPLORER" # One of: ["COST_EXPLORER"],
    #             status: "PROCESSING" # One of: ["PROCESSING", "APPLIED"]
    #           }
    #         ],
    #         values: ["CostCategoryValue"],
    #         default_value: "CostCategoryValue"
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListCostCategoryDefinitionsResponse]
    def list_cost_category_definitions(params = {}, options = {})
      request = build_request(:list_cost_category_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of your historical recommendation generations within the past 30
    #       days.</p>
    # @param [Hash, Types::ListSavingsPlansPurchaseRecommendationGenerationRequest] params
    # @option params [String] :generation_status
    #   <p>The status of the recommendation generation.</p>
    # @option params [Array<String>] :recommendation_ids
    #   <p>The IDs for each specific recommendation.</p>
    # @option params [Integer] :page_size
    #   <p>The number of recommendations that you want returned in a single response object.</p>
    # @option params [String] :next_page_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     generation_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"],
    #     recommendation_ids: ["RecommendationId"],
    #     page_size: 1,
    #     next_page_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.list_savings_plans_purchase_recommendation_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     generation_summary_list: [
    #       {
    #         recommendation_id: "RecommendationId",
    #         generation_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"],
    #         generation_started_time: "ZonedDateTime",
    #         generation_completion_time: "ZonedDateTime",
    #         estimated_completion_time: "ZonedDateTime"
    #       }
    #     ],
    #     next_page_token: "NextPageToken"
    #   }
    # @return [Types::ListSavingsPlansPurchaseRecommendationGenerationResponse]
    def list_savings_plans_purchase_recommendation_generation(params = {}, options = {})
      request = build_request(:list_savings_plans_purchase_recommendation_generation, params)
      request.send_request(options)
    end

    # <p>Returns a list of resource tags associated with the resource specified by the Amazon
    #       Resource Name (ARN). </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Modifies the feedback property of a given cost anomaly. </p>
    # @param [Hash, Types::ProvideAnomalyFeedbackRequest] params
    # @option params [String] :anomaly_id
    #   <p>A cost anomaly ID. </p>
    # @option params [String] :feedback
    #   <p>Describes whether the cost anomaly was a planned activity or you considered it an anomaly.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     anomaly_id: "GenericString", # required
    #     feedback: "YES" # One of: ["YES", "NO", "PLANNED_ACTIVITY"], # required
    #   }
    #   options = {}
    #   response = client.provide_anomaly_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     anomaly_id: "GenericString", # required
    #   }
    # @return [Types::ProvideAnomalyFeedbackResponse]
    def provide_anomaly_feedback(params = {}, options = {})
      request = build_request(:provide_anomaly_feedback, params)
      request.send_request(options)
    end

    # <p>Specifies the parameters of a planned commitment purchase and starts the generation of the
    #       analysis. This enables you to estimate the cost, coverage, and utilization impact of your
    #       planned commitment purchases.</p>
    # @param [Hash, Types::StartCommitmentPurchaseAnalysisRequest] params
    # @option params [Types::CommitmentPurchaseAnalysisConfiguration] :commitment_purchase_analysis_configuration
    #   <p>The configuration for the commitment purchase analysis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     commitment_purchase_analysis_configuration: { # required
    #       savings_plans_purchase_analysis_configuration: {
    #         account_scope: "PAYER" # One of: ["PAYER", "LINKED"],
    #         account_id: "AccountId",
    #         analysis_type: "MAX_SAVINGS" # One of: ["MAX_SAVINGS", "CUSTOM_COMMITMENT"], # required
    #         savings_plans_to_add: [ # required
    #           {
    #             payment_option: "NO_UPFRONT" # One of: ["NO_UPFRONT", "PARTIAL_UPFRONT", "ALL_UPFRONT", "LIGHT_UTILIZATION", "MEDIUM_UTILIZATION", "HEAVY_UTILIZATION"],
    #             savings_plans_type: "COMPUTE_SP" # One of: ["COMPUTE_SP", "EC2_INSTANCE_SP", "SAGEMAKER_SP"],
    #             region: "GenericString",
    #             instance_family: "GenericString",
    #             term_in_years: "ONE_YEAR" # One of: ["ONE_YEAR", "THREE_YEARS"],
    #             savings_plans_commitment: 1.0,
    #             offering_id: "GenericString"
    #           }
    #         ],
    #         savings_plans_to_exclude: ["SavingsPlansId"],
    #         look_back_time_period: { # required
    #           start: "YearMonthDay", # required
    #           end: "YearMonthDay", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_commitment_purchase_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_id: "AnalysisId", # required
    #     analysis_started_time: "ZonedDateTime", # required
    #     estimated_completion_time: "ZonedDateTime", # required
    #   }
    # @return [Types::StartCommitmentPurchaseAnalysisResponse]
    def start_commitment_purchase_analysis(params = {}, options = {})
      request = build_request(:start_commitment_purchase_analysis, params)
      request.send_request(options)
    end

    # <p>
    #       Request a cost allocation tag backfill. This will backfill the activation status (either <code>active</code> or <code>inactive</code>) for all tag keys from <code>para:BackfillFrom</code> up to the time this request is made.</p>
    #          <p>You can request a backfill once every 24 hours.
    #     </p>
    # @param [Hash, Types::StartCostAllocationTagBackfillRequest] params
    # @option params [String] :backfill_from
    #   <p>
    #         The date you want the backfill to start from. The date can only be a first day of the month (a billing start date). Dates can't precede the previous twelve months, or in the future.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backfill_from: "ZonedDateTime", # required
    #   }
    #   options = {}
    #   response = client.start_cost_allocation_tag_backfill(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backfill_request: {
    #       backfill_from: "ZonedDateTime",
    #       requested_at: "ZonedDateTime",
    #       completed_at: "ZonedDateTime",
    #       backfill_status: "SUCCEEDED" # One of: ["SUCCEEDED", "PROCESSING", "FAILED"],
    #       last_updated_at: "ZonedDateTime"
    #     }
    #   }
    # @return [Types::StartCostAllocationTagBackfillResponse]
    def start_cost_allocation_tag_backfill(params = {}, options = {})
      request = build_request(:start_cost_allocation_tag_backfill, params)
      request.send_request(options)
    end

    # <p>Requests a Savings Plans recommendation generation. This enables you to calculate a fresh
    #       set of Savings Plans recommendations that takes your latest usage data and current Savings
    #       Plans inventory into account. You can refresh Savings Plans recommendations up to three times
    #       daily for a consolidated billing family.</p>
    #          <note>
    #             <p>
    #                <code>StartSavingsPlansPurchaseRecommendationGeneration</code> has no request syntax
    #         because no input parameters are needed to support this operation.</p>
    #          </note>
    # @param [Hash, Types::StartSavingsPlansPurchaseRecommendationGenerationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.start_savings_plans_purchase_recommendation_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recommendation_id: "RecommendationId",
    #     generation_started_time: "ZonedDateTime",
    #     estimated_completion_time: "ZonedDateTime"
    #   }
    # @return [Types::StartSavingsPlansPurchaseRecommendationGenerationResponse]
    def start_savings_plans_purchase_recommendation_generation(params = {}, options = {})
      request = build_request(:start_savings_plans_purchase_recommendation_generation, params)
      request.send_request(options)
    end

    # <p>An API operation for adding one or more tags (key-value pairs) to a resource.</p>
    #          <p>You can use the <code>TagResource</code> operation with a resource that already has tags.
    #       If you specify a new tag key for the resource, this tag is appended to the list of tags
    #       associated with the resource. If you specify a tag key that is already associated with the
    #       resource, the new tag value you specify replaces the previous value for that tag.</p>
    #          <p>Although the maximum number of array members is 200, user-tag maximum is 50. The remaining
    #       are reserved for Amazon Web Services use.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.
    #       </p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p> A list of tag key-value pairs to be added to the resource.</p>
    #            <p>Each tag consists of a key and a value, and each key must be unique for the resource. The
    #         following restrictions apply to resource tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Although the maximum number of array members is 200, you can assign a maximum of 50
    #             user-tags to one resource. The remaining are reserved for Amazon Web Services use</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a key is 128 characters</p>
    #               </li>
    #               <li>
    #                  <p>The maximum length of a value is 256 characters</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values can only contain alphanumeric characters, spaces, and any of the
    #             following: <code>_.:/=+@-</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are case sensitive</p>
    #               </li>
    #               <li>
    #                  <p>Keys and values are trimmed for any leading or trailing whitespaces</p>
    #               </li>
    #               <li>
    #                  <p>Don’t use <code>aws:</code> as a prefix for your keys. This prefix is reserved for
    #               Amazon Web Services use</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Removes one or more tags from a resource. Specify only tag keys in your request. Don't
    #       specify the value. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. For a list of supported resources, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ResourceTag.html">ResourceTag</a>.
    #       </p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p>A list of tag keys associated with tags that need to be removed from the resource. If you
    #         specify a tag key that doesn't exist, it's ignored. Although the maximum number of array
    #         members is 200, user-tag maximum is 50. The remaining are reserved for Amazon Web Services use.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Updates an existing cost anomaly monitor. The changes made are applied going forward, and
    #       doesn't change anomalies detected in the past. </p>
    # @param [Hash, Types::UpdateAnomalyMonitorRequest] params
    # @option params [String] :monitor_arn
    #   <p>Cost anomaly monitor Amazon Resource Names (ARNs). </p>
    # @option params [String] :monitor_name
    #   <p>The new name for the cost anomaly monitor. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_arn: "GenericString", # required
    #     monitor_name: "GenericString"
    #   }
    #   options = {}
    #   response = client.update_anomaly_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "GenericString", # required
    #   }
    # @return [Types::UpdateAnomalyMonitorResponse]
    def update_anomaly_monitor(params = {}, options = {})
      request = build_request(:update_anomaly_monitor, params)
      request.send_request(options)
    end

    # <p>Updates an existing cost anomaly subscription. Specify the fields that you want to update.
    #       Omitted fields are unchanged.</p>
    #          <note>
    #             <p>The JSON below describes the generic construct for each type. See <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_UpdateAnomalySubscription.html#API_UpdateAnomalySubscription_RequestParameters">Request Parameters</a> for possible values as they apply to
    #           <code>AnomalySubscription</code>.</p>
    #          </note>
    # @param [Hash, Types::UpdateAnomalySubscriptionRequest] params
    # @option params [String] :subscription_arn
    #   <p>A cost anomaly subscription Amazon Resource Name (ARN). </p>
    # @option params [Float] :threshold
    #   <p>(deprecated)</p>
    #            <p>The update to the threshold value for receiving notifications. </p>
    #            <p>This field has been deprecated. To update a threshold, use ThresholdExpression. Continued
    #         use of Threshold will be treated as shorthand syntax for a ThresholdExpression.</p>
    #            <p>You can specify either Threshold or ThresholdExpression, but not both.</p>
    # @option params [String] :frequency
    #   <p>The update to the frequency value that subscribers receive notifications. </p>
    # @option params [Array<String>] :monitor_arn_list
    #   <p>A list of cost anomaly monitor ARNs. </p>
    # @option params [Array<Types::Subscriber>] :subscribers
    #   <p>The update to the subscriber list. </p>
    # @option params [String] :subscription_name
    #   <p>The new name of the subscription. </p>
    # @option params [Types::Expression] :threshold_expression
    #   <p>The update to the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html">Expression</a> object
    #         used to specify the anomalies that you want to generate alerts for. This supports dimensions
    #         and nested expressions. The supported dimensions are
    #           <code>ANOMALY_TOTAL_IMPACT_ABSOLUTE</code> and <code>ANOMALY_TOTAL_IMPACT_PERCENTAGE</code>,
    #         corresponding to an anomaly’s TotalImpact and TotalImpactPercentage, respectively (see <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Impact.html">Impact</a> for more details). The supported nested expression types are
    #           <code>AND</code> and <code>OR</code>. The match option <code>GREATER_THAN_OR_EQUAL</code> is
    #         required. Values must be numbers between 0 and 10,000,000,000 in string format.</p>
    #            <p>You can specify either Threshold or ThresholdExpression, but not both.</p>
    #            <p>The following are examples of valid ThresholdExpressions:</p>
    #            <ul>
    #               <li>
    #                  <p>Absolute threshold: <code>{ "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
    #               "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Percentage threshold: <code>{ "Dimensions": { "Key":
    #               "ANOMALY_TOTAL_IMPACT_PERCENTAGE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ],
    #               "Values": [ "100" ] } }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AND</code> two thresholds together: <code>{ "And": [ { "Dimensions": { "Key":
    #               "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values":
    #               [ "100" ] } }, { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #               "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OR</code> two thresholds together: <code>{ "Or": [ { "Dimensions": { "Key":
    #               "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values":
    #               [ "100" ] } }, { "Dimensions": { "Key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
    #               "MatchOptions": [ "GREATER_THAN_OR_EQUAL" ], "Values": [ "100" ] } } ] }</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_arn: "GenericString", # required
    #     threshold: 1.0,
    #     frequency: "DAILY" # One of: ["DAILY", "IMMEDIATE", "WEEKLY"],
    #     monitor_arn_list: ["Arn"],
    #     subscribers: [
    #       {
    #         address: "SubscriberAddress",
    #         type: "EMAIL" # One of: ["EMAIL", "SNS"],
    #         status: "CONFIRMED" # One of: ["CONFIRMED", "DECLINED"]
    #       }
    #     ],
    #     subscription_name: "GenericString",
    #     threshold_expression: {
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
    #         key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       tags: {
    #         key: "TagKey",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       },
    #       cost_categories: {
    #         key: "CostCategoryName",
    #         values: ["Value"],
    #         match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_anomaly_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_arn: "GenericString", # required
    #   }
    # @return [Types::UpdateAnomalySubscriptionResponse]
    def update_anomaly_subscription(params = {}, options = {})
      request = build_request(:update_anomaly_subscription, params)
      request.send_request(options)
    end

    # <p>Updates status for cost allocation tags in bulk, with maximum batch size of 20. If the tag
    #       status that's updated is the same as the existing tag status, the request doesn't fail.
    #       Instead, it doesn't have any effect on the tag status (for example, activating the active
    #       tag). </p>
    # @param [Hash, Types::UpdateCostAllocationTagsStatusRequest] params
    # @option params [Array<Types::CostAllocationTagStatusEntry>] :cost_allocation_tags_status
    #   <p>The list of <code>CostAllocationTagStatusEntry</code> objects that are used to update cost
    #         allocation tags status for this request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cost_allocation_tags_status: [ # required
    #       {
    #         tag_key: "TagKey", # required
    #         status: "Active" # One of: ["Active", "Inactive"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_cost_allocation_tags_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         tag_key: "TagKey",
    #         code: "GenericString",
    #         message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateCostAllocationTagsStatusResponse]
    def update_cost_allocation_tags_status(params = {}, options = {})
      request = build_request(:update_cost_allocation_tags_status, params)
      request.send_request(options)
    end

    # <p>Updates an existing Cost Category. Changes made to the Cost Category rules will be used to
    #       categorize the current month’s expenses and future expenses. This won’t change categorization
    #       for the previous months.</p>
    # @param [Hash, Types::UpdateCostCategoryDefinitionRequest] params
    # @option params [String] :cost_category_arn
    #   <p>The unique identifier for your Cost Category.</p>
    # @option params [String] :effective_start
    #   <p>The Cost Category's effective start date. It can only be a billing start date (first day of the month). If the date isn't provided, it's the first day of the current month. Dates can't be before the previous twelve months, or in the future.</p>
    # @option params [String] :rule_version
    #   <p>The rule schema version in this particular Cost Category.</p>
    # @option params [Array<Types::CostCategoryRule>] :rules
    #   <p>The <code>Expression</code> object used to categorize costs. For more information, see
    #           <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule
    #         </a>. </p>
    # @option params [String] :default_value
    #   <p>The
    #               default value for the cost category.</p>
    # @option params [Array<Types::CostCategorySplitChargeRule>] :split_charge_rules
    #   <p> The split charge rules used to allocate your charges between your Cost Category values.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cost_category_arn: "Arn", # required
    #     effective_start: "ZonedDateTime",
    #     rule_version: "CostCategoryExpression.v1" # One of: ["CostCategoryExpression.v1"], # required
    #     rules: [ # required
    #       {
    #         value: "CostCategoryValue",
    #         rule: {
    #           or: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           and: [
    #             {
    #               # recursive Expression
    #             }
    #           ],
    #           not: {
    #             # recursive Expression
    #           },
    #           dimensions: {
    #             key: "AZ" # One of: ["AZ", "INSTANCE_TYPE", "LINKED_ACCOUNT", "PAYER_ACCOUNT", "LINKED_ACCOUNT_NAME", "OPERATION", "PURCHASE_TYPE", "REGION", "SERVICE", "SERVICE_CODE", "USAGE_TYPE", "USAGE_TYPE_GROUP", "RECORD_TYPE", "OPERATING_SYSTEM", "TENANCY", "SCOPE", "PLATFORM", "SUBSCRIPTION_ID", "LEGAL_ENTITY_NAME", "DEPLOYMENT_OPTION", "DATABASE_ENGINE", "CACHE_ENGINE", "INSTANCE_TYPE_FAMILY", "BILLING_ENTITY", "RESERVATION_ID", "RESOURCE_ID", "RIGHTSIZING_TYPE", "SAVINGS_PLANS_TYPE", "SAVINGS_PLAN_ARN", "PAYMENT_OPTION", "AGREEMENT_END_DATE_TIME_AFTER", "AGREEMENT_END_DATE_TIME_BEFORE", "INVOICING_ENTITY", "ANOMALY_TOTAL_IMPACT_ABSOLUTE", "ANOMALY_TOTAL_IMPACT_PERCENTAGE"],
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           tags: {
    #             key: "TagKey",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           },
    #           cost_categories: {
    #             key: "CostCategoryName",
    #             values: ["Value"],
    #             match_options: ["EQUALS" # One of: ["EQUALS", "ABSENT", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CASE_SENSITIVE", "CASE_INSENSITIVE", "GREATER_THAN_OR_EQUAL"]]
    #           }
    #         },
    #         inherited_value: {
    #           dimension_name: "LINKED_ACCOUNT_NAME" # One of: ["LINKED_ACCOUNT_NAME", "TAG"],
    #           dimension_key: "GenericString"
    #         },
    #         type: "REGULAR" # One of: ["REGULAR", "INHERITED_VALUE"]
    #       }
    #     ],
    #     default_value: "CostCategoryValue",
    #     split_charge_rules: [
    #       {
    #         source: "GenericString", # required
    #         targets: ["GenericString"], # required
    #         method: "FIXED" # One of: ["FIXED", "PROPORTIONAL", "EVEN"], # required
    #         parameters: [
    #           {
    #             type: "ALLOCATION_PERCENTAGES" # One of: ["ALLOCATION_PERCENTAGES"], # required
    #             values: ["GenericString"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_cost_category_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cost_category_arn: "Arn",
    #     effective_start: "ZonedDateTime"
    #   }
    # @return [Types::UpdateCostCategoryDefinitionResponse]
    def update_cost_category_definition(params = {}, options = {})
      request = build_request(:update_cost_category_definition, params)
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
      context[:gem_name] = 'aws-sdk-costexplorer'
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
