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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:networkflowmonitor)

module Aws::NetworkFlowMonitor
  # An API client for Aws::NetworkFlowMonitor.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::NetworkFlowMonitor
    @identifier = :networkflowmonitor

    add_plugin(::Aws::NetworkFlowMonitor::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::NetworkFlowMonitor::EndpointProvider)
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

    # <p>Create a monitor for specific network flows between local and remote resources, so that you can monitor network performance for one or several of your workloads. For each monitor, Network Flow Monitor publishes detailed end-to-end performance metrics and a network health indicator (NHI) that informs you whether there were Amazon Web Services network issues for one or more of the network flows tracked by a monitor, during a time period that you choose. </p>
    # @param [Hash, Types::CreateMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor. </p>
    # @option params [Array<Types::MonitorLocalResource>] :local_resources
    #   <p>The local resources to monitor. A local resource in a workload is the location of the host, or hosts, where the Network Flow Monitor agent is installed. For example, if a workload consists of an interaction between a web service and a backend database (for example, Amazon Dynamo DB), the subnet with the EC2 instance that hosts the web service, which also runs the agent, is the local resource.</p> <p>Be aware that all local resources must belong to the current Region.</p>
    # @option params [Array<Types::MonitorRemoteResource>] :remote_resources
    #   <p>The remote resources to monitor. A remote resource is the other endpoint in the bi-directional flow of a workload, with a local resource. For example, Amazon Dynamo DB can be a remote resource.</p> <p>When you specify remote resources, be aware that specific combinations of resources are allowed and others are not, including the following constraints:</p> <ul> <li> <p>All remote resources that you specify must all belong to a single Region.</p> </li> <li> <p>If you specify Amazon Web Services services as remote resources, any other remote resources that you specify must be in the current Region.</p> </li> <li> <p>When you specify a remote resource for another Region, you can only specify the <code>Region</code> resource type. You cannot specify a subnet, VPC, or Availability Zone in another Region.</p> </li> <li> <p>If you leave the <code>RemoteResources</code> parameter empty, the monitor will include all network flows that terminate in the current Region.</p> </li> </ul>
    # @option params [String] :scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope for the monitor.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for other API requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for a monitor. You can add a maximum of 200 tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     local_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     remote_resources: [
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     scope_arn: "Arn", # required
    #     client_token: "UuidString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     monitor_name: "ResourceName", # required
    #     monitor_status: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #     local_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     remote_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateMonitorOutput]
    def create_monitor(params = {}, options = {})
      request = build_request(:create_monitor, params)
      request.send_request(options)
    end

    # <p>In Network Flow Monitor, you specify a scope for the service to generate metrics for. By using the scope, Network Flow Monitor can generate a topology of all the resources to measure performance metrics for. When you create a scope, you enable permissions for Network Flow Monitor.</p> <p>A scope is a Region-account pair or multiple Region-account pairs. Network Flow Monitor uses your scope to determine all the resources (the topology) where Network Flow Monitor will gather network flow performance metrics for you. To provide performance metrics, Network Flow Monitor uses the data that is sent by the Network Flow Monitor agents you install on the resources.</p> <p>To define the Region-account pairs for your scope, the Network Flow Monitor API uses the following constucts, which allow for future flexibility in defining scopes:</p> <ul> <li> <p> <i>Targets</i>, which are arrays of targetResources.</p> </li> <li> <p> <i>Target resources</i>, which are Region-targetIdentifier pairs.</p> </li> <li> <p> <i>Target identifiers</i>, made up of a targetID (currently always an account ID) and a targetType (currently always an account). </p> </li> </ul>
    # @param [Hash, Types::CreateScopeInput] params
    # @option params [Array<Types::TargetResource>] :targets
    #   <p>The targets to define the scope to be monitored. A target is an array of targetResources, which are currently Region-account pairs, defined by targetResource constructs.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for other API requests.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for a scope. You can add a maximum of 200 tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     targets: [ # required
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             # One of:
    #             account_id: "AccountId"
    #           },
    #           target_type: "ACCOUNT" # One of: ["ACCOUNT"], # required
    #         },
    #         region: "AwsRegion", # required
    #       }
    #     ],
    #     client_token: "UuidString",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"], # required
    #     scope_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateScopeOutput]
    def create_scope(params = {}, options = {})
      request = build_request(:create_scope, params)
      request.send_request(options)
    end

    # <p>Deletes a monitor in Network Flow Monitor.</p>
    # @param [Hash, Types::DeleteMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteMonitorOutput]
    def delete_monitor(params = {}, options = {})
      request = build_request(:delete_monitor, params)
      request.send_request(options)
    end

    # <p>Deletes a scope that has been defined.</p>
    # @param [Hash, Types::DeleteScopeInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #   }
    #   options = {}
    #   response = client.delete_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteScopeOutput]
    def delete_scope(params = {}, options = {})
      request = build_request(:delete_scope, params)
      request.send_request(options)
    end

    # <p>Gets information about a monitor in Network Flow Monitor based on a monitor name. The information returned includes the Amazon Resource Name (ARN), create time, modified time, resources included in the monitor, and status information.</p>
    # @param [Hash, Types::GetMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     monitor_name: "ResourceName", # required
    #     monitor_status: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #     local_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     remote_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetMonitorOutput]
    def get_monitor(params = {}, options = {})
      request = build_request(:get_monitor, params)
      request.send_request(options)
    end

    # <p>Return the data for a query with the Network Flow Monitor query interface. You specify the query that you want to return results for by providing a query ID and a monitor name. This query returns the top contributors for a specific monitor.</p> <p>Create a query ID for this call by calling the corresponding API call to start the query, <code>StartQueryMonitorTopContributors</code>. Use the scope ID that was returned for your account by <code>CreateScope</code>.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::GetQueryResultsMonitorTopContributorsInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_query_results_monitor_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"],
    #     top_contributors: [
    #       {
    #         local_ip: "String",
    #         snat_ip: "String",
    #         local_instance_id: "InstanceId",
    #         local_vpc_id: "VpcId",
    #         local_region: "AwsRegion",
    #         local_az: "AvailabilityZone",
    #         local_subnet_id: "SubnetId",
    #         target_port: 1,
    #         destination_category: "INTRA_AZ" # One of: ["INTRA_AZ", "INTER_AZ", "INTER_VPC", "UNCLASSIFIED", "AMAZON_S3", "AMAZON_DYNAMODB", "INTER_REGION"],
    #         remote_vpc_id: "VpcId",
    #         remote_region: "AwsRegion",
    #         remote_az: "AvailabilityZone",
    #         remote_subnet_id: "SubnetId",
    #         remote_instance_id: "InstanceId",
    #         remote_ip: "String",
    #         dnat_ip: "String",
    #         value: 1,
    #         traversed_constructs: [
    #           {
    #             component_id: "Component",
    #             component_type: "ComponentType",
    #             component_arn: "Arn",
    #             service_name: "String"
    #           }
    #         ],
    #         kubernetes_metadata: {
    #           local_service_name: "String",
    #           local_pod_name: "String",
    #           local_pod_namespace: "String",
    #           remote_service_name: "String",
    #           remote_pod_name: "String",
    #           remote_pod_namespace: "String"
    #         },
    #         local_instance_arn: "InstanceArn",
    #         local_subnet_arn: "SubnetArn",
    #         local_vpc_arn: "VpcArn",
    #         remote_instance_arn: "InstanceArn",
    #         remote_subnet_arn: "SubnetArn",
    #         remote_vpc_arn: "VpcArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetQueryResultsMonitorTopContributorsOutput]
    def get_query_results_monitor_top_contributors(params = {}, options = {})
      request = build_request(:get_query_results_monitor_top_contributors, params)
      request.send_request(options)
    end

    # <p>Return the data for a query with the Network Flow Monitor query interface. You specify the query that you want to return results for by providing a query ID and a monitor name.</p> <p>This query returns the top contributors for a scope for workload insights. Workload insights provide a high level view of network flow performance data collected by agents. To return the data for the top contributors, see <code>GetQueryResultsWorkloadInsightsTopContributorsData</code>.</p> <p>Create a query ID for this call by calling the corresponding API call to start the query, <code>StartQueryWorkloadInsightsTopContributors</code>. Use the scope ID that was returned for your account by <code>CreateScope</code>.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::GetQueryResultsWorkloadInsightsTopContributorsInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_query_results_workload_insights_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     top_contributors: [
    #       {
    #         account_id: "AccountId",
    #         local_subnet_id: "SubnetId",
    #         local_az: "AvailabilityZone",
    #         local_vpc_id: "VpcId",
    #         local_region: "AwsRegion",
    #         remote_identifier: "String",
    #         value: 1,
    #         local_subnet_arn: "SubnetArn",
    #         local_vpc_arn: "VpcArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetQueryResultsWorkloadInsightsTopContributorsOutput]
    def get_query_results_workload_insights_top_contributors(params = {}, options = {})
      request = build_request(:get_query_results_workload_insights_top_contributors, params)
      request.send_request(options)
    end

    # <p>Return the data for a query with the Network Flow Monitor query interface. Specify the query that you want to return results for by providing a query ID and a scope ID.</p> <p>This query returns the data for top contributors for workload insights for a specific scope. Workload insights provide a high level view of network flow performance data collected by agents for a scope. To return just the top contributors, see <code>GetQueryResultsWorkloadInsightsTopContributors</code>.</p> <p>Create a query ID for this call by calling the corresponding API call to start the query, <code>StartQueryWorkloadInsightsTopContributorsData</code>. Use the scope ID that was returned for your account by <code>CreateScope</code>.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p> <p>The top contributor network flows overall are for a specific metric type, for example, the number of retransmissions.</p>
    # @param [Hash, Types::GetQueryResultsWorkloadInsightsTopContributorsDataInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_query_results_workload_insights_top_contributors_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unit: "Seconds" # One of: ["Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"], # required
    #     datapoints: [ # required
    #       {
    #         timestamps: [Time.now], # required
    #         values: [1.0], # required
    #         label: "String", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::GetQueryResultsWorkloadInsightsTopContributorsDataOutput]
    def get_query_results_workload_insights_top_contributors_data(params = {}, options = {})
      request = build_request(:get_query_results_workload_insights_top_contributors_data, params)
      request.send_request(options)
    end

    # <p>Returns the current status of a query for the Network Flow Monitor query interface, for a specified query ID and monitor. This call returns the query status for the top contributors for a monitor.</p> <p>When you create a query, use this call to check the status of the query to make sure that it has has <code>SUCCEEDED</code> before you review the results. Use the same query ID that you used for the corresponding API call to start (create) the query, <code>StartQueryMonitorTopContributors</code>.</p> <p>When you run a query, use this call to check the status of the query to make sure that the query has <code>SUCCEEDED</code> before you review the results.</p>
    # @param [Hash, Types::GetQueryStatusMonitorTopContributorsInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_query_status_monitor_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"], # required
    #   }
    # @return [Types::GetQueryStatusMonitorTopContributorsOutput]
    def get_query_status_monitor_top_contributors(params = {}, options = {})
      request = build_request(:get_query_status_monitor_top_contributors, params)
      request.send_request(options)
    end

    # <p>Return the data for a query with the Network Flow Monitor query interface. Specify the query that you want to return results for by providing a query ID and a monitor name. This query returns the top contributors for workload insights.</p> <p>When you start a query, use this call to check the status of the query to make sure that it has has <code>SUCCEEDED</code> before you review the results. Use the same query ID that you used for the corresponding API call to start the query, <code>StartQueryWorkloadInsightsTopContributors</code>.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::GetQueryStatusWorkloadInsightsTopContributorsInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_query_status_workload_insights_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"], # required
    #   }
    # @return [Types::GetQueryStatusWorkloadInsightsTopContributorsOutput]
    def get_query_status_workload_insights_top_contributors(params = {}, options = {})
      request = build_request(:get_query_status_workload_insights_top_contributors, params)
      request.send_request(options)
    end

    # <p>Returns the current status of a query for the Network Flow Monitor query interface, for a specified query ID and monitor. This call returns the query status for the top contributors data for workload insights.</p> <p>When you start a query, use this call to check the status of the query to make sure that it has has <code>SUCCEEDED</code> before you review the results. Use the same query ID that you used for the corresponding API call to start the query, <code>StartQueryWorkloadInsightsTopContributorsData</code>.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p> <p>The top contributor network flows overall are for a specific metric type, for example, the number of retransmissions.</p>
    # @param [Hash, Types::GetQueryStatusWorkloadInsightsTopContributorsDataInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to start a query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_query_status_workload_insights_top_contributors_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "QUEUED" # One of: ["QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELED"], # required
    #   }
    # @return [Types::GetQueryStatusWorkloadInsightsTopContributorsDataOutput]
    def get_query_status_workload_insights_top_contributors_data(params = {}, options = {})
      request = build_request(:get_query_status_workload_insights_top_contributors_data, params)
      request.send_request(options)
    end

    # <p>Gets information about a scope, including the name, status, tags, and target details. The scope in Network Flow Monitor is an account.</p>
    # @param [Hash, Types::GetScopeInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #   }
    #   options = {}
    #   response = client.get_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"], # required
    #     scope_arn: "Arn", # required
    #     targets: [ # required
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             # One of:
    #             account_id: "AccountId"
    #           },
    #           target_type: "ACCOUNT" # One of: ["ACCOUNT"], # required
    #         },
    #         region: "AwsRegion", # required
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetScopeOutput]
    def get_scope(params = {}, options = {})
      request = build_request(:get_scope, params)
      request.send_request(options)
    end

    # <p>List all monitors in an account. Optionally, you can list only monitors that have a specific status, by using the <code>STATUS</code> parameter.</p>
    # @param [Hash, Types::ListMonitorsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @option params [String] :monitor_status
    #   <p>The status of a monitor. The status can be one of the following</p> <ul> <li> <p> <code>PENDING</code>: The monitor is in the process of being created.</p> </li> <li> <p> <code>ACTIVE</code>: The monitor is active.</p> </li> <li> <p> <code>INACTIVE</code>: The monitor is inactive.</p> </li> <li> <p> <code>ERROR</code>: Monitor creation failed due to an error.</p> </li> <li> <p> <code>DELETING</code>: The monitor is in the process of being deleted.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     monitor_status: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"]
    #   }
    #   options = {}
    #   response = client.list_monitors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitors: [ # required
    #       {
    #         monitor_arn: "MonitorArn", # required
    #         monitor_name: "ResourceName", # required
    #         monitor_status: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMonitorsOutput]
    def list_monitors(params = {}, options = {})
      request = build_request(:list_monitors, params)
      request.send_request(options)
    end

    # <p>List all the scopes for an account.</p>
    # @param [Hash, Types::ListScopesInput] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    # @option params [Integer] :max_results
    #   <p>The number of query results that you want to return with this call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_scopes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scopes: [ # required
    #       {
    #         scope_id: "ScopeId", # required
    #         status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"], # required
    #         scope_arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListScopesOutput]
    def list_scopes(params = {}, options = {})
      request = build_request(:list_scopes, params)
      request.send_request(options)
    end

    # <p>Returns all the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Create a query that you can use with the Network Flow Monitor query interface to return the top contributors for a monitor. Specify the monitor that you want to create the query for. </p> <p>The call returns a query ID that you can use with <a href="https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsMonitorTopContributors.html"> GetQueryResultsMonitorTopContributors</a> to run the query and return the top contributors for a specific monitor.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable APIs for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::StartQueryMonitorTopContributorsInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp that is the date and time that is the beginning of the period that you want to retrieve results for with your query.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp that is the date and time end of the period that you want to retrieve results for with your query.</p>
    # @option params [String] :metric_name
    #   <p>The metric that you want to query top contributors for. That is, you can specify a metric with this call and return the top contributor network flows, for that type of metric, for a monitor and (optionally) within a specific category, such as network flows between Availability Zones.</p>
    # @option params [String] :destination_category
    #   <p>The category that you want to query top contributors for, for a specific monitor. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_REGION</code>: Top contributor network flows between Regions (to the edge of another Region)</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AMAZON_S3</code>: Top contributor network flows to or from Amazon S3</p> </li> <li> <p> <code>AMAZON_DYNAMODB</code>: Top contributor network flows to or from Amazon Dynamo DB</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of top contributors to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric_name: "ROUND_TRIP_TIME" # One of: ["ROUND_TRIP_TIME", "TIMEOUTS", "RETRANSMISSIONS", "DATA_TRANSFERRED"], # required
    #     destination_category: "INTRA_AZ" # One of: ["INTRA_AZ", "INTER_AZ", "INTER_VPC", "UNCLASSIFIED", "AMAZON_S3", "AMAZON_DYNAMODB", "INTER_REGION"], # required
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.start_query_monitor_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String", # required
    #   }
    # @return [Types::StartQueryMonitorTopContributorsOutput]
    def start_query_monitor_top_contributors(params = {}, options = {})
      request = build_request(:start_query_monitor_top_contributors, params)
      request.send_request(options)
    end

    # <p>Create a query with the Network Flow Monitor query interface that you can run to return workload insights top contributors. Specify the scope that you want to create a query for.</p> <p>The call returns a query ID that you can use with <a href="https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributors.html"> GetQueryResultsWorkloadInsightsTopContributors</a> to run the query and return the top contributors for the workload insights for a scope.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable APIs for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::StartQueryWorkloadInsightsTopContributorsInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account. A scope ID is returned from a <code>CreateScope</code> API call.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp that is the date and time that is the beginning of the period that you want to retrieve results for with your query.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp that is the date and time end of the period that you want to retrieve results for with your query.</p>
    # @option params [String] :metric_name
    #   <p>The metric that you want to query top contributors for. That is, you can specify this metric to return the top contributor network flows, for this type of metric, for a monitor and (optionally) within a specific category, such as network flows between Availability Zones.</p>
    # @option params [String] :destination_category
    #   <p>The destination category for a top contributors row. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_REGION</code>: Top contributor network flows between Regions (to the edge of another Region)</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AWS_SERVICES</code>: Top contributor network flows to or from Amazon Web Services services</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of top contributors to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric_name: "TIMEOUTS" # One of: ["TIMEOUTS", "RETRANSMISSIONS", "DATA_TRANSFERRED"], # required
    #     destination_category: "INTRA_AZ" # One of: ["INTRA_AZ", "INTER_AZ", "INTER_VPC", "UNCLASSIFIED", "AMAZON_S3", "AMAZON_DYNAMODB", "INTER_REGION"], # required
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.start_query_workload_insights_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String", # required
    #   }
    # @return [Types::StartQueryWorkloadInsightsTopContributorsOutput]
    def start_query_workload_insights_top_contributors(params = {}, options = {})
      request = build_request(:start_query_workload_insights_top_contributors, params)
      request.send_request(options)
    end

    # <p>Create a query with the Network Flow Monitor query interface that you can run to return data for workload insights top contributors. Specify the scope that you want to create a query for.</p> <p>The call returns a query ID that you can use with <a href="https://docs.aws.amazon.com/networkflowmonitor/2.0/APIReference/API_GetQueryResultsWorkloadInsightsTopContributorsData.html"> GetQueryResultsWorkloadInsightsTopContributorsData</a> to run the query and return the data for the top contributors for the workload insights for a scope.</p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::StartQueryWorkloadInsightsTopContributorsDataInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp that is the date and time that is the beginning of the period that you want to retrieve results for with your query.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp that is the date and time end of the period that you want to retrieve results for with your query.</p>
    # @option params [String] :metric_name
    #   <p>The metric that you want to query top contributors for. That is, you can specify this metric to return the top contributor network flows, for this type of metric, for a monitor and (optionally) within a specific category, such as network flows between Availability Zones.</p>
    # @option params [String] :destination_category
    #   <p>The destination category for a top contributors. Destination categories can be one of the following: </p> <ul> <li> <p> <code>INTRA_AZ</code>: Top contributor network flows within a single Availability Zone</p> </li> <li> <p> <code>INTER_AZ</code>: Top contributor network flows between Availability Zones</p> </li> <li> <p> <code>INTER_REGION</code>: Top contributor network flows between Regions (to the edge of another Region)</p> </li> <li> <p> <code>INTER_VPC</code>: Top contributor network flows between VPCs</p> </li> <li> <p> <code>AWS_SERVICES</code>: Top contributor network flows to or from Amazon Web Services services</p> </li> <li> <p> <code>UNCLASSIFIED</code>: Top contributor network flows that do not have a bucket classification</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     metric_name: "TIMEOUTS" # One of: ["TIMEOUTS", "RETRANSMISSIONS", "DATA_TRANSFERRED"], # required
    #     destination_category: "INTRA_AZ" # One of: ["INTRA_AZ", "INTER_AZ", "INTER_VPC", "UNCLASSIFIED", "AMAZON_S3", "AMAZON_DYNAMODB", "INTER_REGION"], # required
    #   }
    #   options = {}
    #   response = client.start_query_workload_insights_top_contributors_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String", # required
    #   }
    # @return [Types::StartQueryWorkloadInsightsTopContributorsDataOutput]
    def start_query_workload_insights_top_contributors_data(params = {}, options = {})
      request = build_request(:start_query_workload_insights_top_contributors_data, params)
      request.send_request(options)
    end

    # <p>Stop a top contributors query for a monitor. Specify the query that you want to stop by providing a query ID and a monitor name. </p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::StopQueryMonitorTopContributorsInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_query_monitor_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopQueryMonitorTopContributorsOutput]
    def stop_query_monitor_top_contributors(params = {}, options = {})
      request = build_request(:stop_query_monitor_top_contributors, params)
      request.send_request(options)
    end

    # <p>Stop a top contributors query for workload insights. Specify the query that you want to stop by providing a query ID and a scope ID. </p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::StopQueryWorkloadInsightsTopContributorsInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_query_workload_insights_top_contributors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopQueryWorkloadInsightsTopContributorsOutput]
    def stop_query_workload_insights_top_contributors(params = {}, options = {})
      request = build_request(:stop_query_workload_insights_top_contributors, params)
      request.send_request(options)
    end

    # <p>Stop a top contributors data query for workload insights. Specify the query that you want to stop by providing a query ID and a scope ID. </p> <p>Top contributors in Network Flow Monitor are network flows with the highest values for a specific metric type. Top contributors can be across all workload insights, for a given scope, or for a specific monitor. Use the applicable call for the top contributors that you want to be returned.</p>
    # @param [Hash, Types::StopQueryWorkloadInsightsTopContributorsDataInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [String] :query_id
    #   <p>The identifier for the query. A query ID is an internally-generated identifier for a specific query returned from an API call to create a query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.stop_query_workload_insights_top_contributors_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopQueryWorkloadInsightsTopContributorsDataOutput]
    def stop_query_workload_insights_top_contributors_data(params = {}, options = {})
      request = build_request(:stop_query_workload_insights_top_contributors_data, params)
      request.send_request(options)
    end

    # <p>Adds a tag to a resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for a resource.</p>
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

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys that you specified when you tagged a resource.</p>
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

    # <p>Update a monitor to add or remove local or remote resources.</p>
    # @param [Hash, Types::UpdateMonitorInput] params
    # @option params [String] :monitor_name
    #   <p>The name of the monitor.</p>
    # @option params [Array<Types::MonitorLocalResource>] :local_resources_to_add
    #   <p>Additional local resources to specify network flows for a monitor, as an array of resources with identifiers and types. A local resource in a workload is the location of hosts where the Network Flow Monitor agent is installed. </p>
    # @option params [Array<Types::MonitorLocalResource>] :local_resources_to_remove
    #   <p>The local resources to remove, as an array of resources with identifiers and types.</p>
    # @option params [Array<Types::MonitorRemoteResource>] :remote_resources_to_add
    #   <p>The remote resources to add, as an array of resources with identifiers and types.</p> <p>A remote resource is the other endpoint in the flow of a workload, with a local resource. For example, Amazon Dynamo DB can be a remote resource. </p>
    # @option params [Array<Types::MonitorRemoteResource>] :remote_resources_to_remove
    #   <p>The remote resources to remove, as an array of resources with identifiers and types.</p> <p>A remote resource is the other endpoint specified for the network flow of a workload, with a local resource. For example, Amazon Dynamo DB can be a remote resource. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive string of up to 64 ASCII characters that you specify to make an idempotent API request. Don't reuse the same client token for other API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monitor_name: "ResourceName", # required
    #     local_resources_to_add: [
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     local_resources_to_remove: [
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     remote_resources_to_add: [
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     remote_resources_to_remove: [
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     client_token: "UuidString"
    #   }
    #   options = {}
    #   response = client.update_monitor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monitor_arn: "MonitorArn", # required
    #     monitor_name: "ResourceName", # required
    #     monitor_status: "PENDING" # One of: ["PENDING", "ACTIVE", "INACTIVE", "ERROR", "DELETING"], # required
    #     local_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     remote_resources: [ # required
    #       {
    #         type: "AWS::EC2::VPC" # One of: ["AWS::EC2::VPC", "AWS::AvailabilityZone", "AWS::EC2::Subnet", "AWS::AWSService", "AWS::Region"], # required
    #         identifier: "String", # required
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     modified_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateMonitorOutput]
    def update_monitor(params = {}, options = {})
      request = build_request(:update_monitor, params)
      request.send_request(options)
    end

    # <p>Update a scope to add or remove resources that you want to be available for Network Flow Monitor to generate metrics for, when you have active agents on those resources sending metrics reports to the Network Flow Monitor backend.</p>
    # @param [Hash, Types::UpdateScopeInput] params
    # @option params [String] :scope_id
    #   <p>The identifier for the scope that includes the resources you want to get data results for. A scope ID is an internally-generated identifier that includes all the resources for a specific root account.</p>
    # @option params [Array<Types::TargetResource>] :resources_to_add
    #   <p>A list of resources to add to a scope.</p>
    # @option params [Array<Types::TargetResource>] :resources_to_delete
    #   <p>A list of resources to delete from a scope.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scope_id: "ScopeId", # required
    #     resources_to_add: [
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             # One of:
    #             account_id: "AccountId"
    #           },
    #           target_type: "ACCOUNT" # One of: ["ACCOUNT"], # required
    #         },
    #         region: "AwsRegion", # required
    #       }
    #     ],
    #     resources_to_delete: [
    #       {
    #         target_identifier: { # required
    #           target_id: { # required
    #             # One of:
    #             account_id: "AccountId"
    #           },
    #           target_type: "ACCOUNT" # One of: ["ACCOUNT"], # required
    #         },
    #         region: "AwsRegion", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_scope(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scope_id: "ScopeId", # required
    #     status: "SUCCEEDED" # One of: ["SUCCEEDED", "IN_PROGRESS", "FAILED", "DEACTIVATING", "DEACTIVATED"], # required
    #     scope_arn: "Arn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateScopeOutput]
    def update_scope(params = {}, options = {})
      request = build_request(:update_scope, params)
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
      context[:gem_name] = 'aws-sdk-networkflowmonitor'
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
