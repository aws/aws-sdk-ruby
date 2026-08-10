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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:migrationhubrefactorspaces)

module Aws::MigrationHubRefactorSpaces
  # An API client for Aws::MigrationHubRefactorSpaces.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RefactorSpaces
    @identifier = :migrationhubrefactorspaces

    add_plugin(::Aws::MigrationHubRefactorSpaces::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MigrationHubRefactorSpaces::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the
    #       applications created inside the environment, regardless of the account that creates the
    #       application. Refactor Spaces provisions an Amazon API Gateway, API Gateway VPC link, and
    #         Network Load Balancer for the application proxy inside your account.</p>
    #          <p>In environments created with a <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType">CreateEnvironment:NetworkFabricType</a> of <code>NONE</code> you need to configure
    #         <a href="https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html"> VPC to VPC connectivity</a> between your service VPC and the application proxy VPC to
    #       route traffic through the application proxy to a service with a private URL endpoint. For more
    #       information, see <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-application.html">
    #         Create an application</a> in the <i>Refactor Spaces User Guide</i>. </p>
    # @param [Hash, Types::CreateApplicationInput] params
    # @option params [String] :name
    #   <p>The name to use for the application. </p>
    # @option params [String] :environment_identifier
    #   <p>The unique identifier of the environment.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the virtual private cloud (VPC).</p>
    # @option params [String] :proxy_type
    #   <p>The proxy type of the proxy created within the application. </p>
    # @option params [Types::ApiGatewayProxyInput] :api_gateway_proxy
    #   <p>A wrapper object holding the API Gateway endpoint type and stage name for the
    #         proxy. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the application. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApplicationName", # required
    #     environment_identifier: "EnvironmentId", # required
    #     vpc_id: "VpcId", # required
    #     proxy_type: "ProxyType", # required
    #     api_gateway_proxy: {
    #       endpoint_type: "ApiGatewayEndpointType",
    #       stage_name: "StageName"
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ApplicationName",
    #     arn: "ResourceArn",
    #     owner_account_id: "AccountId",
    #     created_by_account_id: "AccountId",
    #     application_id: "ApplicationId",
    #     environment_id: "EnvironmentId",
    #     vpc_id: "VpcId",
    #     proxy_type: "ProxyType",
    #     api_gateway_proxy: {
    #       endpoint_type: "ApiGatewayEndpointType",
    #       stage_name: "StageName"
    #     },
    #     state: "ApplicationState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and all
    #       Refactor Spaces applications, services, and routes created within the environment. They are referred
    #       to as the <i>environment owner</i>. The environment owner has cross-account
    #       visibility and control of Refactor Spaces resources that are added to the environment by other
    #       accounts that the environment is shared with.</p>
    #          <p>When creating an environment with a <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType">CreateEnvironment:NetworkFabricType</a> of <code>TRANSIT_GATEWAY</code>, Refactor Spaces
    #       provisions a transit gateway to enable services in VPCs to communicate directly across
    #       accounts. If <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType">CreateEnvironment:NetworkFabricType</a> is <code>NONE</code>, Refactor Spaces does not create
    #       a transit gateway and you must use your network infrastructure to route traffic to services
    #       with private URL endpoints.</p>
    # @param [Hash, Types::CreateEnvironmentInput] params
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    # @option params [String] :description
    #   <p>The description of the environment.</p>
    # @option params [String] :network_fabric_type
    #   <p>The network fabric type of the environment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the environment. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EnvironmentName", # required
    #     description: "Description",
    #     network_fabric_type: "NetworkFabricType", # required
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EnvironmentName",
    #     arn: "ResourceArn",
    #     description: "Description",
    #     environment_id: "EnvironmentId",
    #     network_fabric_type: "NetworkFabricType",
    #     owner_account_id: "AccountId",
    #     state: "EnvironmentState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::CreateEnvironmentOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the
    #       environment owner, regardless of which account creates the route. Routes target a service in
    #       the application. If an application does not have any routes, then the first route must be
    #       created as a <code>DEFAULT</code>
    #             <code>RouteType</code>.</p>
    #          <p>When created, the default route defaults to an active state so state is not a required
    #       input. However, like all other state values the state of the default route can be updated
    #       after creation, but only when all other routes are also inactive. Conversely, no route can be
    #       active without the default route also being active.</p>
    #          <p>When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic
    #       to the target service as follows:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>URL Endpoints</b>
    #                </p>
    #                <p>If the service has a URL endpoint, and the endpoint resolves to a private IP address,
    #           Refactor Spaces routes traffic using the API Gateway VPC link. If a service endpoint
    #           resolves to a public IP address, Refactor Spaces routes traffic over the public internet.
    #           Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs, publicly-signed
    #           certificates are supported. Private Certificate Authorities (CAs) are permitted only if
    #           the CA's domain is also publicly resolvable. </p>
    #                <p>Refactor Spaces automatically resolves the public Domain Name System (DNS) names that are
    #           set in <code>CreateService:UrlEndpoint </code>when you create a service. The DNS names
    #           resolve when the DNS time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60
    #           seconds. This periodic DNS resolution ensures that the route configuration remains
    #           up-to-date. </p>
    #                <p/>
    #                <p>
    #                   <b>One-time health check</b>
    #                </p>
    #                <p>A one-time health check is performed on the service when either the route is updated
    #           from inactive to active, or when it is created with an active state. If the health check
    #           fails, the route transitions the route state to <code>FAILED</code>, an error code of
    #             <code>SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE</code> is provided, and no traffic is sent
    #           to the service.</p>
    #                <p>For private URLs, a target group is created on the Network Load Balancer and the load
    #           balancer target group runs default target health checks. By default, the health check is
    #           run against the service endpoint URL. Optionally, the health check can be performed
    #           against a different protocol, port, and/or path using the <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateService.html#migrationhubrefactorspaces-CreateService-request-UrlEndpoint">CreateService:UrlEndpoint</a> parameter. All other health check settings for the
    #           load balancer use the default values described in the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html">Health
    #             checks for your target groups</a> in the <i>Elastic Load Balancing
    #             guide</i>. The health check is considered successful if at least one target
    #           within the target group transitions to a healthy state.</p>
    #                <p/>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Lambda function endpoints</b>
    #                </p>
    #                <p>If the service has an Lambda function endpoint, then Refactor Spaces
    #           configures the Lambda function's resource policy to allow the application's
    #             API Gateway to invoke the function.</p>
    #                <p>The Lambda function state is checked. If the function is not active, the
    #           function configuration is updated so that Lambda resources are provisioned. If
    #           the Lambda state is <code>Failed</code>, then the route creation fails. For
    #           more information, see the <a href="https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State">GetFunctionConfiguration's State response parameter</a> in the <i>Lambda Developer Guide</i>.</p>
    #                <p>A check is performed to determine that a Lambda function with the specified ARN
    #           exists. If it does not exist, the health check fails. For public URLs, a connection is
    #           opened to the public endpoint. If the URL is not reachable, the health check fails.
    #         </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Environments without a network bridge</b>
    #          </p>
    #          <p>When you create environments without a network bridge (<a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType">CreateEnvironment:NetworkFabricType</a> is <code>NONE)</code> and you use your own
    #       networking infrastructure, you need to configure <a href="https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html">VPC to VPC connectivity</a> between your network and the application proxy VPC. Route
    #       creation from the application proxy to service endpoints will fail if your network is not
    #       configured to connect to the application proxy VPC. For more information, see <a href="https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-role.html"> Create
    #         a route</a> in the <i>Refactor Spaces User Guide</i>.</p>
    #          <p/>
    # @param [Hash, Types::CreateRouteInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which the route is created.</p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application within which the route is being created.</p>
    # @option params [String] :service_identifier
    #   <p>The ID of the service in which the route is created. Traffic that matches this route is
    #         forwarded to this service.</p>
    # @option params [String] :route_type
    #   <p>The route type of the route. <code>DEFAULT</code> indicates that all traffic that does not
    #         match another route is forwarded to the default route. Applications must have a default route
    #         before any other routes can be created. <code>URI_PATH</code> indicates a route that is based
    #         on a URI path.</p>
    # @option params [Types::DefaultRouteInput] :default_route
    #   <p> Configuration for the default route type. </p>
    # @option params [Types::UriPathRouteInput] :uri_path_route
    #   <p>The configuration for the URI path route type. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the route. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     service_identifier: "ServiceId", # required
    #     route_type: "RouteType", # required
    #     default_route: {
    #       activation_state: "RouteActivationState"
    #     },
    #     uri_path_route: {
    #       source_path: "UriPath", # required
    #       activation_state: "RouteActivationState", # required
    #       methods: ["HttpMethod"],
    #       include_child_paths: false,
    #       append_source_path: false
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_id: "RouteId",
    #     arn: "ResourceArn",
    #     owner_account_id: "AccountId",
    #     created_by_account_id: "AccountId",
    #     route_type: "RouteType",
    #     service_id: "ServiceId",
    #     application_id: "ApplicationId",
    #     uri_path_route: {
    #       source_path: "UriPath", # required
    #       activation_state: "RouteActivationState", # required
    #       methods: ["HttpMethod"],
    #       include_child_paths: false,
    #       append_source_path: false
    #     },
    #     state: "RouteState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::CreateRouteOutput]
    def create_route(params = {}, options = {})
      request = build_request(:create_route, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the
    #       environment owner, regardless of which account in the environment creates the service.
    #       Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda
    #       function endpoint.</p>
    #          <important>
    #             <p>If an Amazon Web Services resource is launched in a service VPC, and you want it to be
    #         accessible to all of an environment’s services with VPCs and routes, apply the
    #           <code>RefactorSpacesSecurityGroup</code> to the resource. Alternatively, to add more
    #         cross-account constraints, apply your own security group.</p>
    #          </important>
    # @param [Hash, Types::CreateServiceInput] params
    # @option params [String] :name
    #   <p>The name of the service.</p>
    # @option params [String] :description
    #   <p>The description of the service.</p>
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment in which the service is created.</p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application which the service is created.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint to use for the service. The type can be a URL in a VPC or an Lambda function.</p>
    # @option params [Types::UrlEndpointInput] :url_endpoint
    #   <p>The configuration for the URL endpoint type. When creating a route to a service, Refactor Spaces
    #         automatically resolves the address in the <code>UrlEndpointInput</code> object URL when the
    #         Domain Name System (DNS) time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60
    #         seconds.</p>
    # @option params [Types::LambdaEndpointInput] :lambda_endpoint
    #   <p>The configuration for the Lambda endpoint type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the service. A tag is a label that you assign to an Amazon Web Services resource. Each tag consists of a key-value pair.. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceName", # required
    #     description: "Description",
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     vpc_id: "VpcId",
    #     endpoint_type: "ServiceEndpointType", # required
    #     url_endpoint: {
    #       url: "Uri", # required
    #       health_url: "Uri"
    #     },
    #     lambda_endpoint: {
    #       arn: "LambdaArn", # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_id: "ServiceId",
    #     name: "ServiceName",
    #     arn: "ResourceArn",
    #     owner_account_id: "AccountId",
    #     created_by_account_id: "AccountId",
    #     description: "Description",
    #     environment_id: "EnvironmentId",
    #     application_id: "ApplicationId",
    #     vpc_id: "VpcId",
    #     endpoint_type: "ServiceEndpointType",
    #     url_endpoint: {
    #       url: "Uri", # required
    #       health_url: "Uri"
    #     },
    #     lambda_endpoint: {
    #       arn: "LambdaArn", # required
    #     },
    #     state: "ServiceState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::CreateServiceOutput]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first
    #       delete any services or routes within the application.</p>
    # @param [Hash, Types::DeleteApplicationInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ApplicationName",
    #     arn: "ResourceArn",
    #     application_id: "ApplicationId",
    #     environment_id: "EnvironmentId",
    #     state: "ApplicationState",
    #     last_updated_time: Time.now
    #   }
    # @return [Types::DeleteApplicationOutput]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first
    #       delete any applications and services within the environment.</p>
    # @param [Hash, Types::DeleteEnvironmentInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EnvironmentName",
    #     arn: "ResourceArn",
    #     environment_id: "EnvironmentId",
    #     state: "EnvironmentState",
    #     last_updated_time: Time.now
    #   }
    # @return [Types::DeleteEnvironmentOutput]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Deletes the resource policy set for the environment. </p>
    # @param [Hash, Types::DeleteResourcePolicyInput] params
    # @option params [String] :identifier
    #   <p>Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourcePolicyIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyOutput]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces route.</p>
    # @param [Hash, Types::DeleteRouteInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment to delete the route from.</p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application to delete the route from.</p>
    # @option params [String] :route_identifier
    #   <p>The ID of the route to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     route_identifier: "RouteId", # required
    #   }
    #   options = {}
    #   response = client.delete_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_id: "RouteId",
    #     arn: "ResourceArn",
    #     service_id: "ServiceId",
    #     application_id: "ApplicationId",
    #     state: "RouteState",
    #     last_updated_time: Time.now
    #   }
    # @return [Types::DeleteRouteOutput]
    def delete_route(params = {}, options = {})
      request = build_request(:delete_route, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Web Services Migration Hub Refactor Spaces service. </p>
    # @param [Hash, Types::DeleteServiceInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment that the service is in.</p>
    # @option params [String] :application_identifier
    #   <p>Deletes a Refactor Spaces service.</p>
    #            <note>
    #               <p>The <code>RefactorSpacesSecurityGroup</code> security group must be removed from all
    #           Amazon Web Services resources in the virtual private cloud (VPC) prior to deleting a service with a URL
    #           endpoint in a VPC.</p>
    #            </note>
    # @option params [String] :service_identifier
    #   <p>The ID of the service to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     service_identifier: "ServiceId", # required
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_id: "ServiceId",
    #     name: "ServiceName",
    #     arn: "ResourceArn",
    #     environment_id: "EnvironmentId",
    #     application_id: "ApplicationId",
    #     state: "ServiceState",
    #     last_updated_time: Time.now
    #   }
    # @return [Types::DeleteServiceOutput]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces application.</p>
    # @param [Hash, Types::GetApplicationInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ApplicationName",
    #     arn: "ResourceArn",
    #     owner_account_id: "AccountId",
    #     created_by_account_id: "AccountId",
    #     application_id: "ApplicationId",
    #     environment_id: "EnvironmentId",
    #     vpc_id: "VpcId",
    #     proxy_type: "ProxyType",
    #     api_gateway_proxy: {
    #       proxy_url: "Uri",
    #       api_gateway_id: "ApiGatewayId",
    #       vpc_link_id: "VpcLinkId",
    #       nlb_arn: "NlbArn",
    #       nlb_name: "NlbName",
    #       endpoint_type: "ApiGatewayEndpointType",
    #       stage_name: "StageName"
    #     },
    #     state: "ApplicationState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     error: {
    #       code: "ErrorCode",
    #       message: "ErrorMessage",
    #       account_id: "AccountId",
    #       resource_identifier: "ResourceIdentifier",
    #       resource_type: "ErrorResourceType",
    #       additional_details: {
    #         "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #       }
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::GetApplicationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces environment.</p>
    # @param [Hash, Types::GetEnvironmentInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EnvironmentName",
    #     arn: "ResourceArn",
    #     description: "Description",
    #     environment_id: "EnvironmentId",
    #     network_fabric_type: "NetworkFabricType",
    #     owner_account_id: "AccountId",
    #     transit_gateway_id: "TransitGatewayId",
    #     state: "EnvironmentState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     error: {
    #       code: "ErrorCode",
    #       message: "ErrorMessage",
    #       account_id: "AccountId",
    #       resource_identifier: "ResourceIdentifier",
    #       resource_type: "ErrorResourceType",
    #       additional_details: {
    #         "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #       }
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::GetEnvironmentOutput]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Gets the resource-based permission policy that is set for the given environment. </p>
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @option params [String] :identifier
    #   <p>The Amazon Resource Name (ARN) of the resource associated with the policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ResourcePolicyIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyString"
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces route.</p>
    # @param [Hash, Types::GetRouteInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application. </p>
    # @option params [String] :route_identifier
    #   <p>The ID of the route.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     route_identifier: "RouteId", # required
    #   }
    #   options = {}
    #   response = client.get_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_id: "RouteId",
    #     arn: "ResourceArn",
    #     owner_account_id: "AccountId",
    #     created_by_account_id: "AccountId",
    #     route_type: "RouteType",
    #     service_id: "ServiceId",
    #     application_id: "ApplicationId",
    #     environment_id: "EnvironmentId",
    #     source_path: "UriPath",
    #     methods: ["HttpMethod"],
    #     include_child_paths: false,
    #     path_resource_to_id: {
    #       "PathResourceToIdKey" => "PathResourceToIdValue"
    #     },
    #     state: "RouteState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     error: {
    #       code: "ErrorCode",
    #       message: "ErrorMessage",
    #       account_id: "AccountId",
    #       resource_identifier: "ResourceIdentifier",
    #       resource_type: "ErrorResourceType",
    #       additional_details: {
    #         "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #       }
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now,
    #     append_source_path: false
    #   }
    # @return [Types::GetRouteOutput]
    def get_route(params = {}, options = {})
      request = build_request(:get_route, params)
      request.send_request(options)
    end

    # <p>Gets an Amazon Web Services Migration Hub Refactor Spaces service. </p>
    # @param [Hash, Types::GetServiceInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment.</p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application.</p>
    # @option params [String] :service_identifier
    #   <p>The ID of the service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     service_identifier: "ServiceId", # required
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_id: "ServiceId",
    #     name: "ServiceName",
    #     arn: "ResourceArn",
    #     owner_account_id: "AccountId",
    #     created_by_account_id: "AccountId",
    #     description: "Description",
    #     environment_id: "EnvironmentId",
    #     application_id: "ApplicationId",
    #     vpc_id: "VpcId",
    #     endpoint_type: "ServiceEndpointType",
    #     url_endpoint: {
    #       url: "Uri",
    #       health_url: "Uri"
    #     },
    #     lambda_endpoint: {
    #       arn: "LambdaArn"
    #     },
    #     state: "ServiceState",
    #     tags: {
    #       "String" => "String"
    #     },
    #     error: {
    #       code: "ErrorCode",
    #       message: "ErrorMessage",
    #       account_id: "AccountId",
    #       resource_identifier: "ResourceIdentifier",
    #       resource_type: "ErrorResourceType",
    #       additional_details: {
    #         "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #       }
    #     },
    #     last_updated_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::GetServiceOutput]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment. </p>
    # @param [Hash, Types::ListApplicationsInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_summary_list: [
    #       {
    #         name: "ApplicationName",
    #         arn: "ResourceArn",
    #         owner_account_id: "AccountId",
    #         created_by_account_id: "AccountId",
    #         application_id: "ApplicationId",
    #         environment_id: "EnvironmentId",
    #         vpc_id: "VpcId",
    #         proxy_type: "ProxyType",
    #         api_gateway_proxy: {
    #           proxy_url: "Uri",
    #           api_gateway_id: "ApiGatewayId",
    #           vpc_link_id: "VpcLinkId",
    #           nlb_arn: "NlbArn",
    #           nlb_name: "NlbName",
    #           endpoint_type: "ApiGatewayEndpointType",
    #           stage_name: "StageName"
    #         },
    #         state: "ApplicationState",
    #         tags: {
    #           "String" => "String"
    #         },
    #         error: {
    #           code: "ErrorCode",
    #           message: "ErrorMessage",
    #           account_id: "AccountId",
    #           resource_identifier: "ResourceIdentifier",
    #           resource_type: "ErrorResourceType",
    #           additional_details: {
    #             "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #           }
    #         },
    #         last_updated_time: Time.now,
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsOutput]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual private clouds (VPCs) that are part of the
    #       environment. </p>
    # @param [Hash, Types::ListEnvironmentVpcsInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environment_vpcs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_vpc_list: [
    #       {
    #         environment_id: "EnvironmentId",
    #         vpc_id: "VpcId",
    #         account_id: "AccountId",
    #         cidr_blocks: ["CidrBlock"],
    #         vpc_name: "Ec2TagValue",
    #         last_updated_time: Time.now,
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnvironmentVpcsOutput]
    def list_environment_vpcs(params = {}, options = {})
      request = build_request(:list_environment_vpcs, params)
      request.send_request(options)
    end

    # <p>Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller
    #       account. </p>
    # @param [Hash, Types::ListEnvironmentsInput] params
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_summary_list: [
    #       {
    #         name: "EnvironmentName",
    #         arn: "ResourceArn",
    #         description: "Description",
    #         environment_id: "EnvironmentId",
    #         network_fabric_type: "NetworkFabricType",
    #         owner_account_id: "AccountId",
    #         transit_gateway_id: "TransitGatewayId",
    #         state: "EnvironmentState",
    #         tags: {
    #           "String" => "String"
    #         },
    #         error: {
    #           code: "ErrorCode",
    #           message: "ErrorMessage",
    #           account_id: "AccountId",
    #           resource_identifier: "ResourceIdentifier",
    #           resource_type: "ErrorResourceType",
    #           additional_details: {
    #             "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #           }
    #         },
    #         last_updated_time: Time.now,
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnvironmentsOutput]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application. </p>
    # @param [Hash, Types::ListRoutesInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application. </p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_summary_list: [
    #       {
    #         route_id: "RouteId",
    #         arn: "ResourceArn",
    #         owner_account_id: "AccountId",
    #         created_by_account_id: "AccountId",
    #         route_type: "RouteType",
    #         service_id: "ServiceId",
    #         application_id: "ApplicationId",
    #         environment_id: "EnvironmentId",
    #         source_path: "UriPath",
    #         methods: ["HttpMethod"],
    #         include_child_paths: false,
    #         path_resource_to_id: {
    #           "PathResourceToIdKey" => "PathResourceToIdValue"
    #         },
    #         state: "RouteState",
    #         tags: {
    #           "String" => "String"
    #         },
    #         error: {
    #           code: "ErrorCode",
    #           message: "ErrorMessage",
    #           account_id: "AccountId",
    #           resource_identifier: "ResourceIdentifier",
    #           resource_type: "ErrorResourceType",
    #           additional_details: {
    #             "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #           }
    #         },
    #         last_updated_time: Time.now,
    #         created_time: Time.now,
    #         append_source_path: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRoutesOutput]
    def list_routes(params = {}, options = {})
      request = build_request(:list_routes, params)
      request.send_request(options)
    end

    # <p>Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application. </p>
    # @param [Hash, Types::ListServicesInput] params
    # @option params [String] :environment_identifier
    #   <p>The ID of the environment. </p>
    # @option params [String] :application_identifier
    #   <p>The ID of the application. </p>
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_summary_list: [
    #       {
    #         service_id: "ServiceId",
    #         name: "ServiceName",
    #         arn: "ResourceArn",
    #         owner_account_id: "AccountId",
    #         created_by_account_id: "AccountId",
    #         description: "Description",
    #         environment_id: "EnvironmentId",
    #         application_id: "ApplicationId",
    #         vpc_id: "VpcId",
    #         endpoint_type: "ServiceEndpointType",
    #         url_endpoint: {
    #           url: "Uri",
    #           health_url: "Uri"
    #         },
    #         lambda_endpoint: {
    #           arn: "LambdaArn"
    #         },
    #         state: "ServiceState",
    #         tags: {
    #           "String" => "String"
    #         },
    #         error: {
    #           code: "ErrorCode",
    #           message: "ErrorMessage",
    #           account_id: "AccountId",
    #           resource_identifier: "ResourceIdentifier",
    #           resource_type: "ErrorResourceType",
    #           additional_details: {
    #             "AdditionalDetailsKey" => "AdditionalDetailsValue"
    #           }
    #         },
    #         last_updated_time: Time.now,
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicesOutput]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Lists the tags of a resource. The caller account must be the same as the resource’s
    #         <code>OwnerAccountId</code>. Listing tags in other accounts is not supported. </p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy
    #       must contain the same actions and condition statements as the
    #         <code>arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment</code>
    #       permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    #     </p>
    # @param [Hash, Types::PutResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the policy is being attached.
    #       </p>
    # @option params [String] :policy
    #   <p>A JSON-formatted string for an Amazon Web Services resource-based policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutResourcePolicyOutput]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Removes the tags of a given resource. Tags are metadata which can be used to manage a
    #       resource. To tag a resource, the caller account must be the same as the resource’s
    #         <code>OwnerAccountId</code>. Tagging resources in other accounts is not supported.</p>
    #          <note>
    #             <p>Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an
    #         environment’s transit gateway.</p>
    #          </note>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The new or modified tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
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

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata which can be used to
    #       manage a resource. To untag a resource, the caller account must be the same as the resource’s
    #         <code>OwnerAccountId</code>. Untagging resources across accounts is not supported. </p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys of the tags to be removed from the resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
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

    # <p> Updates an Amazon Web Services Migration Hub Refactor Spaces route. </p>
    # @param [Hash, Types::UpdateRouteInput] params
    # @option params [String] :environment_identifier
    #   <p> The ID of the environment in which the route is being updated. </p>
    # @option params [String] :application_identifier
    #   <p> The ID of the application within which the route is being updated. </p>
    # @option params [String] :route_identifier
    #   <p> The unique identifier of the route to update. </p>
    # @option params [String] :activation_state
    #   <p> If set to <code>ACTIVE</code>, traffic is forwarded to this route’s service after the
    #         route is updated. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_identifier: "EnvironmentId", # required
    #     application_identifier: "ApplicationId", # required
    #     route_identifier: "RouteId", # required
    #     activation_state: "RouteActivationState", # required
    #   }
    #   options = {}
    #   response = client.update_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route_id: "RouteId",
    #     arn: "ResourceArn",
    #     service_id: "ServiceId",
    #     application_id: "ApplicationId",
    #     state: "RouteState",
    #     last_updated_time: Time.now
    #   }
    # @return [Types::UpdateRouteOutput]
    def update_route(params = {}, options = {})
      request = build_request(:update_route, params)
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
      context[:gem_name] = 'aws-sdk-migrationhubrefactorspaces'
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
