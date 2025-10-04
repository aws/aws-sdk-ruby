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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::ApplicationInsights
  # An API client for Aws::ApplicationInsights.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::EC2WindowsBarleyService

    add_plugin(::Aws::ApplicationInsights::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ApplicationInsights::EndpointProvider)
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

    # <p>Adds a workload to a component. Each component can have at most five workloads.</p>
    # @param [Hash, Types::AddWorkloadRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [Types::WorkloadConfiguration] :workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_configuration: { # required
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #       configuration: "ComponentConfiguration"
    #     }
    #   }
    #   options = {}
    #   response = client.add_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     workload_configuration: {
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #       configuration: "ComponentConfiguration"
    #     }
    #   }
    # @return [Types::AddWorkloadResponse]
    def add_workload(params = {}, options = {})
      request = build_request(:add_workload, params)
      request.send_request(options)
    end

    # <p>Adds an application that is created from a resource group.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [Boolean] :ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    # @option params [Boolean] :cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    # @option params [String] :ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem. </p>
    # @option params [String] :sns_notification_arn
    #   <p>
    #            The SNS notification topic ARN.
    #         </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>List of tags to add to the application. tag key (<code>Key</code>) and an associated tag
    #            value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum
    #            length of a tag value is 256 characters.</p>
    # @option params [Boolean] :auto_config_enabled
    #   <p> Indicates whether Application Insights automatically configures unmonitored resources
    #            in the resource group. </p>
    # @option params [Boolean] :auto_create
    #   <p> Configures all of the resources in the resource group by applying the recommended
    #            configurations. </p>
    # @option params [String] :grouping_type
    #   <p>Application Insights can create applications based on a resource group or on an account.
    #            To create an account-based application using all of the resources in the account, set this
    #            parameter to <code>ACCOUNT_BASED</code>. </p>
    # @option params [Boolean] :attach_missing_permission
    #   <p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName",
    #     ops_center_enabled: false,
    #     cwe_monitor_enabled: false,
    #     ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #     sns_notification_arn: "SNSNotificationArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     auto_config_enabled: false,
    #     auto_create: false,
    #     grouping_type: "ACCOUNT_BASED" # One of: ["ACCOUNT_BASED"],
    #     attach_missing_permission: false
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_info: {
    #       account_id: "AccountId",
    #       resource_group_name: "ResourceGroupName",
    #       life_cycle: "LifeCycle",
    #       ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #       sns_notification_arn: "SNSNotificationArn",
    #       ops_center_enabled: false,
    #       cwe_monitor_enabled: false,
    #       remarks: "Remarks",
    #       auto_config_enabled: false,
    #       discovery_type: "RESOURCE_GROUP_BASED" # One of: ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"],
    #       attach_missing_permission: false
    #     }
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates a custom component by grouping similar standalone instances to monitor.</p>
    # @param [Hash, Types::CreateComponentRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [Array<String>] :resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "CustomComponentName", # required
    #     resource_list: ["ResourceARN"], # required
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateComponentResponse]
    def create_component(params = {}, options = {})
      request = build_request(:create_component, params)
      request.send_request(options)
    end

    # <p>Adds an log pattern to a <code>LogPatternSet</code>.</p>
    # @param [Hash, Types::CreateLogPatternRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    # @option params [String] :pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    # @option params [Integer] :rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            Amazon Web Services provided patterns. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #     pattern: "LogPatternRegex", # required
    #     rank: 1, # required
    #   }
    #   options = {}
    #   response = client.create_log_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_pattern: {
    #       pattern_set_name: "LogPatternSetName",
    #       pattern_name: "LogPatternName",
    #       pattern: "LogPatternRegex",
    #       rank: 1
    #     },
    #     resource_group_name: "ResourceGroupName"
    #   }
    # @return [Types::CreateLogPatternResponse]
    def create_log_pattern(params = {}, options = {})
      request = build_request(:create_log_pattern, params)
      request.send_request(options)
    end

    # <p>Removes the specified application from monitoring. Does not delete the
    #          application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Ungroups a custom component. When you ungroup custom components, all applicable monitors
    #          that are set up for the component are removed and the instances revert to their standalone
    #          status.</p>
    # @param [Hash, Types::DeleteComponentRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "CustomComponentName", # required
    #   }
    #   options = {}
    #   response = client.delete_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteComponentResponse]
    def delete_component(params = {}, options = {})
      request = build_request(:delete_component, params)
      request.send_request(options)
    end

    # <p>Removes the specified log pattern from a <code>LogPatternSet</code>.</p>
    # @param [Hash, Types::DeleteLogPatternRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #   }
    #   options = {}
    #   response = client.delete_log_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLogPatternResponse]
    def delete_log_pattern(params = {}, options = {})
      request = build_request(:delete_log_pattern, params)
      request.send_request(options)
    end

    # <p>Describes the application.</p>
    # @param [Hash, Types::DescribeApplicationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_info: {
    #       account_id: "AccountId",
    #       resource_group_name: "ResourceGroupName",
    #       life_cycle: "LifeCycle",
    #       ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #       sns_notification_arn: "SNSNotificationArn",
    #       ops_center_enabled: false,
    #       cwe_monitor_enabled: false,
    #       remarks: "Remarks",
    #       auto_config_enabled: false,
    #       discovery_type: "RESOURCE_GROUP_BASED" # One of: ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"],
    #       attach_missing_permission: false
    #     }
    #   }
    # @return [Types::DescribeApplicationResponse]
    def describe_application(params = {}, options = {})
      request = build_request(:describe_application, params)
      request.send_request(options)
    end

    # <p>Describes a component and lists the resources that are grouped together in a
    #          component.</p>
    # @param [Hash, Types::DescribeComponentRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_component: {
    #       component_name: "ComponentName",
    #       component_remarks: "Remarks",
    #       resource_type: "ResourceType",
    #       os_type: "WINDOWS" # One of: ["WINDOWS", "LINUX"],
    #       tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #       monitor: false,
    #       detected_workload: {
    #         "Tier" => {
    #           "MetaDataKey" => "MetaDataValue"
    #         }
    #       }
    #     },
    #     resource_list: ["ResourceARN"]
    #   }
    # @return [Types::DescribeComponentResponse]
    def describe_component(params = {}, options = {})
      request = build_request(:describe_component, params)
      request.send_request(options)
    end

    # <p>Describes the monitoring configuration of the component.</p>
    # @param [Hash, Types::DescribeComponentConfigurationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_component_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor: false,
    #     tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #     component_configuration: "ComponentConfiguration"
    #   }
    # @return [Types::DescribeComponentConfigurationResponse]
    def describe_component_configuration(params = {}, options = {})
      request = build_request(:describe_component_configuration, params)
      request.send_request(options)
    end

    # <p>Describes the recommended monitoring configuration of the component.</p>
    # @param [Hash, Types::DescribeComponentConfigurationRecommendationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :tier
    #   <p>The tier of the application component.</p>
    # @option params [String] :workload_name
    #   <p>The name of the workload. The name of the workload is required when the tier of the application component is 
    #            <code>SAP_ASE_SINGLE_NODE</code> or <code>SAP_ASE_HIGH_AVAILABILITY</code>.</p>
    # @option params [String] :recommendation_type
    #   <p>The recommended configuration type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"], # required
    #     workload_name: "WorkloadName",
    #     recommendation_type: "INFRA_ONLY" # One of: ["INFRA_ONLY", "WORKLOAD_ONLY", "ALL"]
    #   }
    #   options = {}
    #   response = client.describe_component_configuration_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component_configuration: "ComponentConfiguration"
    #   }
    # @return [Types::DescribeComponentConfigurationRecommendationResponse]
    def describe_component_configuration_recommendation(params = {}, options = {})
      request = build_request(:describe_component_configuration_recommendation, params)
      request.send_request(options)
    end

    # <p>Describe a specific log pattern from a <code>LogPatternSet</code>.</p>
    # @param [Hash, Types::DescribeLogPatternRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_log_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_group_name: "ResourceGroupName",
    #     account_id: "AccountId",
    #     log_pattern: {
    #       pattern_set_name: "LogPatternSetName",
    #       pattern_name: "LogPatternName",
    #       pattern: "LogPatternRegex",
    #       rank: 1
    #     }
    #   }
    # @return [Types::DescribeLogPatternResponse]
    def describe_log_pattern(params = {}, options = {})
      request = build_request(:describe_log_pattern, params)
      request.send_request(options)
    end

    # <p>Describes an anomaly or error with the application.</p>
    # @param [Hash, Types::DescribeObservationRequest] params
    # @option params [String] :observation_id
    #   <p>The ID of the observation.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     observation_id: "ObservationId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_observation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     observation: {
    #       id: "ObservationId",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       source_type: "SourceType",
    #       source_arn: "SourceARN",
    #       log_group: "LogGroup",
    #       line_time: Time.now,
    #       log_text: "LogText",
    #       log_filter: "ERROR" # One of: ["ERROR", "WARN", "INFO"],
    #       metric_namespace: "MetricNamespace",
    #       metric_name: "MetricName",
    #       unit: "Unit",
    #       value: 1.0,
    #       cloud_watch_event_id: "CloudWatchEventId",
    #       cloud_watch_event_source: "EC2" # One of: ["EC2", "CODE_DEPLOY", "HEALTH", "RDS"],
    #       cloud_watch_event_detail_type: "CloudWatchEventDetailType",
    #       health_event_arn: "HealthEventArn",
    #       health_service: "HealthService",
    #       health_event_type_code: "HealthEventTypeCode",
    #       health_event_type_category: "HealthEventTypeCategory",
    #       health_event_description: "HealthEventDescription",
    #       code_deploy_deployment_id: "CodeDeployDeploymentId",
    #       code_deploy_deployment_group: "CodeDeployDeploymentGroup",
    #       code_deploy_state: "CodeDeployState",
    #       code_deploy_application: "CodeDeployApplication",
    #       code_deploy_instance_group_id: "CodeDeployInstanceGroupId",
    #       ec2_state: "Ec2State",
    #       rds_event_categories: "RdsEventCategories",
    #       rds_event_message: "RdsEventMessage",
    #       s3_event_name: "S3EventName",
    #       states_execution_arn: "StatesExecutionArn",
    #       states_arn: "StatesArn",
    #       states_status: "StatesStatus",
    #       states_input: "StatesInput",
    #       ebs_event: "EbsEvent",
    #       ebs_result: "EbsResult",
    #       ebs_cause: "EbsCause",
    #       ebs_request_id: "EbsRequestId",
    #       x_ray_fault_percent: 1,
    #       x_ray_throttle_percent: 1,
    #       x_ray_error_percent: 1,
    #       x_ray_request_count: 1,
    #       x_ray_request_average_latency: 1,
    #       x_ray_node_name: "XRayNodeName",
    #       x_ray_node_type: "XRayNodeType"
    #     }
    #   }
    # @return [Types::DescribeObservationResponse]
    def describe_observation(params = {}, options = {})
      request = build_request(:describe_observation, params)
      request.send_request(options)
    end

    # <p>Describes an application problem.</p>
    # @param [Hash, Types::DescribeProblemRequest] params
    # @option params [String] :problem_id
    #   <p>The ID of the problem.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the owner of the resource group affected by the problem.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     problem_id: "ProblemId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_problem(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     problem: {
    #       id: "ProblemId",
    #       title: "Title",
    #       short_name: "ShortName",
    #       insights: "Insights",
    #       status: "IGNORE" # One of: ["IGNORE", "RESOLVED", "PENDING", "RECURRING", "RECOVERING"],
    #       affected_resource: "AffectedResource",
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       severity_level: "Informative" # One of: ["Informative", "Low", "Medium", "High"],
    #       account_id: "AccountId",
    #       resource_group_name: "ResourceGroupName",
    #       feedback: {
    #         "FeedbackKey" => "NOT_SPECIFIED" # One of: ["NOT_SPECIFIED", "USEFUL", "NOT_USEFUL"]
    #       },
    #       recurring_count: 1,
    #       last_recurrence_time: Time.now,
    #       visibility: "IGNORED" # One of: ["IGNORED", "VISIBLE"],
    #       resolution_method: "MANUAL" # One of: ["MANUAL", "AUTOMATIC", "UNRESOLVED"]
    #     },
    #     sns_notification_arn: "SNSNotificationArn"
    #   }
    # @return [Types::DescribeProblemResponse]
    def describe_problem(params = {}, options = {})
      request = build_request(:describe_problem, params)
      request.send_request(options)
    end

    # <p>Describes the anomalies or errors associated with the problem.</p>
    # @param [Hash, Types::DescribeProblemObservationsRequest] params
    # @option params [String] :problem_id
    #   <p>The ID of the problem.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     problem_id: "ProblemId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_problem_observations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     related_observations: {
    #       observation_list: [
    #         {
    #           id: "ObservationId",
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           source_type: "SourceType",
    #           source_arn: "SourceARN",
    #           log_group: "LogGroup",
    #           line_time: Time.now,
    #           log_text: "LogText",
    #           log_filter: "ERROR" # One of: ["ERROR", "WARN", "INFO"],
    #           metric_namespace: "MetricNamespace",
    #           metric_name: "MetricName",
    #           unit: "Unit",
    #           value: 1.0,
    #           cloud_watch_event_id: "CloudWatchEventId",
    #           cloud_watch_event_source: "EC2" # One of: ["EC2", "CODE_DEPLOY", "HEALTH", "RDS"],
    #           cloud_watch_event_detail_type: "CloudWatchEventDetailType",
    #           health_event_arn: "HealthEventArn",
    #           health_service: "HealthService",
    #           health_event_type_code: "HealthEventTypeCode",
    #           health_event_type_category: "HealthEventTypeCategory",
    #           health_event_description: "HealthEventDescription",
    #           code_deploy_deployment_id: "CodeDeployDeploymentId",
    #           code_deploy_deployment_group: "CodeDeployDeploymentGroup",
    #           code_deploy_state: "CodeDeployState",
    #           code_deploy_application: "CodeDeployApplication",
    #           code_deploy_instance_group_id: "CodeDeployInstanceGroupId",
    #           ec2_state: "Ec2State",
    #           rds_event_categories: "RdsEventCategories",
    #           rds_event_message: "RdsEventMessage",
    #           s3_event_name: "S3EventName",
    #           states_execution_arn: "StatesExecutionArn",
    #           states_arn: "StatesArn",
    #           states_status: "StatesStatus",
    #           states_input: "StatesInput",
    #           ebs_event: "EbsEvent",
    #           ebs_result: "EbsResult",
    #           ebs_cause: "EbsCause",
    #           ebs_request_id: "EbsRequestId",
    #           x_ray_fault_percent: 1,
    #           x_ray_throttle_percent: 1,
    #           x_ray_error_percent: 1,
    #           x_ray_request_count: 1,
    #           x_ray_request_average_latency: 1,
    #           x_ray_node_name: "XRayNodeName",
    #           x_ray_node_type: "XRayNodeType"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeProblemObservationsResponse]
    def describe_problem_observations(params = {}, options = {})
      request = build_request(:describe_problem_observations, params)
      request.send_request(options)
    end

    # <p>Describes a workload and its configuration.</p>
    # @param [Hash, Types::DescribeWorkloadRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :workload_id
    #   <p>The ID of the workload.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the workload owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_id: "WorkloadId", # required
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     workload_remarks: "Remarks",
    #     workload_configuration: {
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #       configuration: "ComponentConfiguration"
    #     }
    #   }
    # @return [Types::DescribeWorkloadResponse]
    def describe_workload(params = {}, options = {})
      request = build_request(:describe_workload, params)
      request.send_request(options)
    end

    # <p>Lists the IDs of the applications that you are monitoring. </p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_info_list: [
    #       {
    #         account_id: "AccountId",
    #         resource_group_name: "ResourceGroupName",
    #         life_cycle: "LifeCycle",
    #         ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #         sns_notification_arn: "SNSNotificationArn",
    #         ops_center_enabled: false,
    #         cwe_monitor_enabled: false,
    #         remarks: "Remarks",
    #         auto_config_enabled: false,
    #         discovery_type: "RESOURCE_GROUP_BASED" # One of: ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"],
    #         attach_missing_permission: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists the auto-grouped, standalone, and custom components of the application.</p>
    # @param [Hash, Types::ListComponentsRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_component_list: [
    #       {
    #         component_name: "ComponentName",
    #         component_remarks: "Remarks",
    #         resource_type: "ResourceType",
    #         os_type: "WINDOWS" # One of: ["WINDOWS", "LINUX"],
    #         tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #         monitor: false,
    #         detected_workload: {
    #           "Tier" => {
    #             "MetaDataKey" => "MetaDataValue"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListComponentsResponse]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p> Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by
    #          Application Insights. Examples of events represented are: </p>
    #          <ul>
    #             <li>
    #                <p>INFO: creating a new alarm or updating an alarm threshold.</p>
    #             </li>
    #             <li>
    #                <p>WARN: alarm not created due to insufficient data points used to predict
    #                thresholds.</p>
    #             </li>
    #             <li>
    #                <p>ERROR: alarm not created due to permission errors or exceeding quotas. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::ListConfigurationHistoryRequest] params
    # @option params [String] :resource_group_name
    #   <p>Resource group to which the application belongs. </p>
    # @option params [Time] :start_time
    #   <p>The start time of the event. </p>
    # @option params [Time] :end_time
    #   <p>The end time of the event.</p>
    # @option params [String] :event_status
    #   <p>The status of the configuration update event. Possible values include INFO, WARN, and
    #            ERROR.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results returned by <code>ListConfigurationHistory</code> in
    #            paginated output. When this parameter is used, <code>ListConfigurationHistory</code>
    #            returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListConfigurationHistory</code> request with the returned
    #               <code>NextToken</code> value. If this parameter is not used, then
    #               <code>ListConfigurationHistory</code> returns all results. </p>
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value returned from a previous paginated
    #               <code>ListConfigurationHistory</code> request where <code>MaxResults</code> was used and
    #            the results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>NextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_status: "INFO" # One of: ["INFO", "WARN", "ERROR"],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_configuration_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_list: [
    #       {
    #         resource_group_name: "ResourceGroupName",
    #         account_id: "AccountId",
    #         monitored_resource_arn: "ConfigurationEventMonitoredResourceARN",
    #         event_status: "INFO" # One of: ["INFO", "WARN", "ERROR"],
    #         event_resource_type: "CLOUDWATCH_ALARM" # One of: ["CLOUDWATCH_ALARM", "CLOUDWATCH_LOG", "CLOUDFORMATION", "SSM_ASSOCIATION"],
    #         event_time: Time.now,
    #         event_detail: "ConfigurationEventDetail",
    #         event_resource_name: "ConfigurationEventResourceName"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListConfigurationHistoryResponse]
    def list_configuration_history(params = {}, options = {})
      request = build_request(:list_configuration_history, params)
      request.send_request(options)
    end

    # <p>Lists the log pattern sets in the specific application.</p>
    # @param [Hash, Types::ListLogPatternSetsRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_log_pattern_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_group_name: "ResourceGroupName",
    #     account_id: "AccountId",
    #     log_pattern_sets: ["LogPatternSetName"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLogPatternSetsResponse]
    def list_log_pattern_sets(params = {}, options = {})
      request = build_request(:list_log_pattern_sets, params)
      request.send_request(options)
    end

    # <p>Lists the log patterns in the specific log <code>LogPatternSet</code>.</p>
    # @param [Hash, Types::ListLogPatternsRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_log_patterns(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_group_name: "ResourceGroupName",
    #     account_id: "AccountId",
    #     log_patterns: [
    #       {
    #         pattern_set_name: "LogPatternSetName",
    #         pattern_name: "LogPatternName",
    #         pattern: "LogPatternRegex",
    #         rank: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLogPatternsResponse]
    def list_log_patterns(params = {}, options = {})
      request = build_request(:list_log_patterns, params)
      request.send_request(options)
    end

    # <p>Lists the problems with your application.</p>
    # @param [Hash, Types::ListProblemsRequest] params
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID for the resource group owner.</p>
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [Time] :start_time
    #   <p>The time when the problem was detected, in epoch seconds. If you don't specify a time
    #            frame for the request, problems within the past seven days are returned.</p>
    # @option params [Time] :end_time
    #   <p>The time when the problem ended, in epoch seconds. If not specified, problems within the
    #            past seven days are returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :component_name
    #   <p> The name of the component. </p>
    # @option params [String] :visibility
    #   <p>Specifies whether or not you can view the problem. If not specified, visible and
    #            ignored problems are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_id: "AccountId",
    #     resource_group_name: "ResourceGroupName",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     component_name: "ComponentName",
    #     visibility: "IGNORED" # One of: ["IGNORED", "VISIBLE"]
    #   }
    #   options = {}
    #   response = client.list_problems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     problem_list: [
    #       {
    #         id: "ProblemId",
    #         title: "Title",
    #         short_name: "ShortName",
    #         insights: "Insights",
    #         status: "IGNORE" # One of: ["IGNORE", "RESOLVED", "PENDING", "RECURRING", "RECOVERING"],
    #         affected_resource: "AffectedResource",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         severity_level: "Informative" # One of: ["Informative", "Low", "Medium", "High"],
    #         account_id: "AccountId",
    #         resource_group_name: "ResourceGroupName",
    #         feedback: {
    #           "FeedbackKey" => "NOT_SPECIFIED" # One of: ["NOT_SPECIFIED", "USEFUL", "NOT_USEFUL"]
    #         },
    #         recurring_count: 1,
    #         last_recurrence_time: Time.now,
    #         visibility: "IGNORED" # One of: ["IGNORED", "VISIBLE"],
    #         resolution_method: "MANUAL" # One of: ["MANUAL", "AUTOMATIC", "UNRESOLVED"]
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     resource_group_name: "ResourceGroupName",
    #     account_id: "AccountId"
    #   }
    # @return [Types::ListProblemsResponse]
    def list_problems(params = {}, options = {})
      request = build_request(:list_problems, params)
      request.send_request(options)
    end

    # <p>Retrieve a list of the tags (keys and values) that are associated with a specified
    #          application. A <i>tag</i> is a label that you optionally define and associate
    #          with an application. Each tag consists of a required <i>tag key</i> and an
    #          optional associated <i>tag value</i>. A tag key is a general label that acts
    #          as a category for more specific tag values. A tag value acts as a descriptor within a tag
    #          key.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag
    #            information for.</p>
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

    # <p>Lists the workloads that are configured on a given component.</p>
    # @param [Hash, Types::ListWorkloadsRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>NextToken</code> value.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID of the owner of the workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     account_id: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_workloads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_list: [
    #       {
    #         workload_id: "WorkloadId",
    #         component_name: "ComponentName",
    #         workload_name: "WorkloadName",
    #         tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #         workload_remarks: "Remarks",
    #         missing_workload_config: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListWorkloadsResponse]
    def list_workloads(params = {}, options = {})
      request = build_request(:list_workloads, params)
      request.send_request(options)
    end

    # <p>Remove workload from a component.</p>
    # @param [Hash, Types::RemoveWorkloadRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :workload_id
    #   <p>The ID of the workload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_id: "WorkloadId", # required
    #   }
    #   options = {}
    #   response = client.remove_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveWorkloadResponse]
    def remove_workload(params = {}, options = {})
      request = build_request(:remove_workload, params)
      request.send_request(options)
    end

    # <p>Add one or more tags (keys and values) to a specified application. A
    #             <i>tag</i> is a label that you optionally define and associate with an
    #          application. Tags can help you categorize and manage application in different ways, such as
    #          by purpose, owner, environment, or other criteria. </p>
    #          <p>Each tag consists of a required <i>tag key</i> and an associated
    #             <i>tag value</i>, both of which you define. A tag key is a general label
    #          that acts as a category for more specific tag values. A tag value acts as a descriptor
    #          within a tag key.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags
    #            to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that to add to the application. A tag consists of a required tag key
    #               (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length
    #            of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
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

    # <p>Remove one or more tags (keys and values) from a specified application.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to remove one or more
    #            tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #            key, the action removes both that key and its associated tag value.</p>
    #            <p>To remove more than one tag from the application, append the <code>TagKeys</code>
    #            parameter and argument for each additional tag to remove, separated by an ampersand.
    #         </p>
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

    # <p>Updates the application.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [Boolean] :ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    # @option params [Boolean] :cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    # @option params [String] :ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem.</p>
    # @option params [String] :sns_notification_arn
    #   <p>
    #            The SNS topic ARN. Allows you to receive SNS notifications for updates and issues with an application.
    #         </p>
    # @option params [Boolean] :remove_sns_topic
    #   <p> Disassociates the SNS topic from the opsItem created for detected problems.</p>
    # @option params [Boolean] :auto_config_enabled
    #   <p> Turns auto-configuration on or off. </p>
    # @option params [Boolean] :attach_missing_permission
    #   <p>If set to true, the managed policies for SSM and CW will be attached to the instance roles if they are missing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     ops_center_enabled: false,
    #     cwe_monitor_enabled: false,
    #     ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #     sns_notification_arn: "SNSNotificationArn",
    #     remove_sns_topic: false,
    #     auto_config_enabled: false,
    #     attach_missing_permission: false
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_info: {
    #       account_id: "AccountId",
    #       resource_group_name: "ResourceGroupName",
    #       life_cycle: "LifeCycle",
    #       ops_item_sns_topic_arn: "OpsItemSNSTopicArn",
    #       sns_notification_arn: "SNSNotificationArn",
    #       ops_center_enabled: false,
    #       cwe_monitor_enabled: false,
    #       remarks: "Remarks",
    #       auto_config_enabled: false,
    #       discovery_type: "RESOURCE_GROUP_BASED" # One of: ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"],
    #       attach_missing_permission: false
    #     }
    #   }
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates the custom component name and/or the list of resources that make up the
    #          component.</p>
    # @param [Hash, Types::UpdateComponentRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [String] :new_component_name
    #   <p>The new name of the component.</p>
    # @option params [Array<String>] :resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "CustomComponentName", # required
    #     new_component_name: "CustomComponentName",
    #     resource_list: ["ResourceARN"]
    #   }
    #   options = {}
    #   response = client.update_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateComponentResponse]
    def update_component(params = {}, options = {})
      request = build_request(:update_component, params)
      request.send_request(options)
    end

    # <p>Updates the monitoring configurations for the component. The configuration input
    #          parameter is an escaped JSON of the configuration and should match the schema of what is
    #          returned by <code>DescribeComponentConfigurationRecommendation</code>. </p>
    # @param [Hash, Types::UpdateComponentConfigurationRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    # @option params [Boolean] :monitor
    #   <p>Indicates whether the application component is monitored.</p>
    # @option params [String] :tier
    #   <p>The tier of the application component.</p>
    # @option params [String] :component_configuration
    #   <p>The configuration settings of the component. The value is the escaped JSON of the
    #            configuration. For more information about the JSON format, see <a href="https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html">Working with JSON</a>. You can send a request to
    #               <code>DescribeComponentConfigurationRecommendation</code> to see the recommended
    #            configuration for a component. For the complete format of the component configuration file,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html">Component Configuration</a>.</p>
    # @option params [Boolean] :auto_config_enabled
    #   <p> Automatically configures the component by applying the recommended configurations.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     monitor: false,
    #     tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #     component_configuration: "ComponentConfiguration",
    #     auto_config_enabled: false
    #   }
    #   options = {}
    #   response = client.update_component_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateComponentConfigurationResponse]
    def update_component_configuration(params = {}, options = {})
      request = build_request(:update_component_configuration, params)
      request.send_request(options)
    end

    # <p>Adds a log pattern to a <code>LogPatternSet</code>.</p>
    # @param [Hash, Types::UpdateLogPatternRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    # @option params [String] :pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    # @option params [Integer] :rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            Amazon Web Services provided patterns. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     pattern_set_name: "LogPatternSetName", # required
    #     pattern_name: "LogPatternName", # required
    #     pattern: "LogPatternRegex",
    #     rank: 1
    #   }
    #   options = {}
    #   response = client.update_log_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_group_name: "ResourceGroupName",
    #     log_pattern: {
    #       pattern_set_name: "LogPatternSetName",
    #       pattern_name: "LogPatternName",
    #       pattern: "LogPatternRegex",
    #       rank: 1
    #     }
    #   }
    # @return [Types::UpdateLogPatternResponse]
    def update_log_pattern(params = {}, options = {})
      request = build_request(:update_log_pattern, params)
      request.send_request(options)
    end

    # <p>Updates the visibility of the problem or specifies the problem as
    #          <code>RESOLVED</code>.</p>
    # @param [Hash, Types::UpdateProblemRequest] params
    # @option params [String] :problem_id
    #   <p>The ID of the problem.</p>
    # @option params [String] :update_status
    #   <p>The status of the problem. Arguments can be passed for only problems that show a status
    #            of <code>RECOVERING</code>.</p>
    # @option params [String] :visibility
    #   <p>The visibility of a problem. When you pass a value of <code>IGNORED</code>, the problem
    #            is removed from the default view, and all notifications for the problem are suspended. When
    #            <code>VISIBLE</code> is passed, the <code>IGNORED</code> action is reversed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     problem_id: "ProblemId", # required
    #     update_status: "RESOLVED" # One of: ["RESOLVED"],
    #     visibility: "IGNORED" # One of: ["IGNORED", "VISIBLE"]
    #   }
    #   options = {}
    #   response = client.update_problem(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateProblemResponse]
    def update_problem(params = {}, options = {})
      request = build_request(:update_problem, params)
      request.send_request(options)
    end

    # <p>Adds a workload to a component. Each component can have at most five workloads.</p>
    # @param [Hash, Types::UpdateWorkloadRequest] params
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    # @option params [String] :component_name
    #   <p> The name of the component. </p>
    # @option params [String] :workload_id
    #   <p>The ID of the workload.</p>
    # @option params [Types::WorkloadConfiguration] :workload_configuration
    #   <p>The configuration settings of the workload. The value is the escaped JSON of the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_group_name: "ResourceGroupName", # required
    #     component_name: "ComponentName", # required
    #     workload_id: "WorkloadId",
    #     workload_configuration: { # required
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #       configuration: "ComponentConfiguration"
    #     }
    #   }
    #   options = {}
    #   response = client.update_workload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workload_id: "WorkloadId",
    #     workload_configuration: {
    #       workload_name: "WorkloadName",
    #       tier: "CUSTOM" # One of: ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SAP_ASE_SINGLE_NODE", "SAP_ASE_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY", "SAP_NETWEAVER_STANDARD", "SAP_NETWEAVER_DISTRIBUTED", "SAP_NETWEAVER_HIGH_AVAILABILITY"],
    #       configuration: "ComponentConfiguration"
    #     }
    #   }
    # @return [Types::UpdateWorkloadResponse]
    def update_workload(params = {}, options = {})
      request = build_request(:update_workload, params)
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
      context[:gem_name] = 'aws-sdk-applicationinsights'
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
