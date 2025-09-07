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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::ServiceDiscovery
  # An API client for Aws::ServiceDiscovery.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Route53AutoNamingV20170314

    add_plugin(::Aws::ServiceDiscovery::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::ServiceDiscovery::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a
    #     <code>DiscoverInstances</code> request but can't be discovered using DNS.</p>
    #          <p>For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    #     quotas</a> in the <i>Cloud Map Developer Guide</i>.</p>
    # @param [Hash, Types::CreateHttpNamespaceRequest] params
    # @option params [String] :name
    #   <p>The name that you want to assign to this namespace.</p>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreateHttpNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/time stamp).</p>
    # @option params [String] :description
    #   <p>A description for the namespace.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    # @example CreateHttpNamespace example
    #   # This example creates an HTTP namespace.
    #   params = {
    #     creator_request_id: "example-creator-request-id-0001",
    #     name: "example-http.com",
    #     description: "Example.com AWS Cloud Map HTTP Namespace"
    #   }
    #   options = {}
    #   response = client.create_http_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "httpvoqozuhfet5kzxoxg-a-response-example"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NamespaceNameHttp", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_http_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::CreateHttpNamespaceResponse]
    def create_http_namespace(params = {}, options = {})
      request = build_request(:create_http_namespace, params)
      request.send_request(options)
    end

    # <p>Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The
    #    namespace defines your service naming scheme. For example, if you name your namespace <code>example.com</code>
    #    and name your service <code>backend</code>, the resulting DNS name for the service is
    #     <code>backend.example.com</code>. Service instances that are registered using a private DNS namespace can be
    #    discovered using either a <code>DiscoverInstances</code> request or using DNS. For the current quota on the
    #    number of namespaces that you can create using the same Amazon Web Services account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map quotas</a> in the
    #     <i>Cloud Map Developer Guide</i>.</p>
    # @param [Hash, Types::CreatePrivateDnsNamespaceRequest] params
    # @option params [String] :name
    #   <p>The name that you want to assign to this namespace. When you create a private DNS namespace, Cloud Map
    #      automatically creates an Amazon Route 53 private hosted zone that has the same name as the namespace.</p>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreatePrivateDnsNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/timestamp).</p>
    # @option params [String] :description
    #   <p>A description for the namespace.</p>
    # @option params [String] :vpc
    #   <p>The ID of the Amazon VPC that you want to associate the namespace with.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    # @option params [Types::PrivateDnsNamespaceProperties] :properties
    #   <p>Properties for the private DNS
    #      namespace.</p>
    # @example Example: Create private DNS namespace
    #   # Example: Create private DNS namespace
    #   params = {
    #     name: "example.com",
    #     vpc: "vpc-1c56417b",
    #     creator_request_id: "eedd6892-50f3-41b2-8af9-611d6e1d1a8c"
    #   }
    #   options = {}
    #   response = client.create_private_dns_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NamespaceNamePrivate", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     vpc: "ResourceId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     properties: {
    #       dns_properties: { # required
    #         soa: { # required
    #           ttl: 1, # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_private_dns_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::CreatePrivateDnsNamespaceResponse]
    def create_private_dns_namespace(params = {}, options = {})
      request = build_request(:create_private_dns_namespace, params)
      request.send_request(options)
    end

    # <p>Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your
    #    service naming scheme. For example, if you name your namespace <code>example.com</code> and name your service
    #     <code>backend</code>, the resulting DNS name for the service is <code>backend.example.com</code>. You can
    #    discover instances that were registered with a public DNS namespace by using either a
    #     <code>DiscoverInstances</code> request or using DNS. For the current quota on the number of namespaces that you
    #    can create using the same Amazon Web Services account, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map quotas</a> in the
    #     <i>Cloud Map Developer Guide</i>.</p>
    #          <important>
    #             <p>The <code>CreatePublicDnsNamespace</code> API operation is not supported in the Amazon Web Services GovCloud (US)
    #     Regions.</p>
    #          </important>
    # @param [Hash, Types::CreatePublicDnsNamespaceRequest] params
    # @option params [String] :name
    #   <p>The name that you want to assign to this namespace.</p>
    #            <note>
    #               <p>Do not include sensitive information in the name. The name is publicly available using DNS queries.</p>
    #            </note>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreatePublicDnsNamespace</code>
    #      requests to be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/timestamp).</p>
    # @option params [String] :description
    #   <p>A description for the namespace.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the namespace. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    # @option params [Types::PublicDnsNamespaceProperties] :properties
    #   <p>Properties for the public DNS
    #      namespace.</p>
    # @example CreatePublicDnsNamespace example
    #   # This example creates a public namespace based on DNS.
    #   params = {
    #     creator_request_id: "example-creator-request-id-0003",
    #     name: "example-public-dns.com",
    #     description: "Example.com AWS Cloud Map Public DNS Namespace"
    #   }
    #   options = {}
    #   response = client.create_public_dns_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "dns2voqozuhfet5kzxoxg-a-response-example"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NamespaceNamePublic", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     properties: {
    #       dns_properties: { # required
    #         soa: { # required
    #           ttl: 1, # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_public_dns_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::CreatePublicDnsNamespaceResponse]
    def create_public_dns_namespace(params = {}, options = {})
      request = build_request(:create_public_dns_namespace, params)
      request.send_request(options)
    end

    # <p>Creates a service. This action defines the configuration for the following entities:</p>
    #          <ul>
    #             <li>
    #                <p>For public and private DNS namespaces, one of the following combinations of DNS records in
    #      Amazon Route 53:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>A</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>AAAA</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>A</code> and <code>AAAA</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>SRV</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>CNAME</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Optionally, a health check</p>
    #             </li>
    #          </ul>
    #          <p>After you create the service, you can submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request, and Cloud Map uses the
    #    values in the configuration to create the specified entities.</p>
    #          <p>For the current quota on the number of instances that you can register using the same namespace and using
    #    the same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    #     quotas</a> in the <i>Cloud Map Developer Guide</i>.</p>
    # @param [Hash, Types::CreateServiceRequest] params
    # @option params [String] :name
    #   <p>The name that you want to assign to the service.</p>
    #            <note>
    #               <p>Do not include sensitive information in the name if the namespace is discoverable by public DNS
    #       queries.</p>
    #            </note>
    #            <p>If you want Cloud Map to create an <code>SRV</code> record when you register an instance and you're using
    #      a system that requires a specific <code>SRV</code> format, such as <a href="http://www.haproxy.org/">HAProxy</a>, specify the following for <code>Name</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>Start the name with an underscore (_), such as <code>_exampleservice</code>.</p>
    #               </li>
    #               <li>
    #                  <p>End the name with <i>._protocol</i>, such as <code>._tcp</code>.</p>
    #               </li>
    #            </ul>
    #            <p>When you register an instance, Cloud Map creates an <code>SRV</code> record and assigns a name to the
    #      record by concatenating the service name and the namespace name (for example,</p>
    #            <p>
    #               <code>_exampleservice._tcp.example.com</code>).</p>
    #            <note>
    #               <p>For services that are accessible by DNS queries, you can't create multiple services with names that differ
    #       only by case (such as EXAMPLE and example). Otherwise, these services have the same DNS name and can't be
    #       distinguished. However, if you use a namespace that's only accessible by API calls, then you can create
    #       services that with names that differ only by case.</p>
    #            </note>
    # @option params [String] :namespace_id
    #   <p>The ID of the namespace that you want to use to create the service. The namespace ID must be specified, but
    #      it can be specified either here or in the <code>DnsConfig</code> object.</p>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>CreateService</code> requests to
    #      be retried without the risk of running the operation twice. <code>CreatorRequestId</code> can be any unique
    #      string (for example, a date/timestamp).</p>
    # @option params [String] :description
    #   <p>A description for the service.</p>
    # @option params [Types::DnsConfig] :dns_config
    #   <p>A complex type that contains information about the Amazon Route 53 records that you want Cloud Map to create
    #      when you register an instance. </p>
    # @option params [Types::HealthCheckConfig] :health_check_config
    #   <p>
    #               <i>Public DNS and HTTP namespaces only.</i> A complex type that contains settings for an
    #      optional Route 53 health check. If you specify settings for a health check, Cloud Map associates the health check
    #      with all the Route 53 DNS records that you specify in <code>DnsConfig</code>.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #       or <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #            <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/cloud-map/pricing/">Cloud Map Pricing</a>.</p>
    # @option params [Types::HealthCheckCustomConfig] :health_check_custom_config
    #   <p>A complex type that contains information about an optional custom health check.</p>
    #            <important>
    #               <p>If you specify a health check configuration, you can specify either <code>HealthCheckCustomConfig</code>
    #       or <code>HealthCheckConfig</code> but not both.</p>
    #            </important>
    #            <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration from an existing
    #      service.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the service. Each tag consists of a key and an optional value that you define.
    #      Tags keys can be up to 128 characters in length, and tag values can be up to 256
    #                                  characters in length.</p>
    # @option params [String] :type
    #   <p>If present, specifies that the service instances are only discoverable using the
    #       <code>DiscoverInstances</code> API operation. No DNS records is registered for the service instances. The only
    #      valid value is <code>HTTP</code>.</p>
    # @example Example: Create service
    #   # Example: Create service
    #   params = {
    #     name: "myservice",
    #     namespace_id: "ns-ylexjili4cdxy3xm",
    #     dns_config: {
    #       namespace_id: "ns-ylexjili4cdxy3xm",
    #       routing_policy: MULTIVALUE,
    #       dns_records: [
    #         {
    #           type: A,
    #           ttl: 60
    #         }
    #       ]
    #     },
    #     creator_request_id: "567c1193-6b00-4308-bd57-ad38a8822d25"
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    #   response.to_h #=>
    #   {
    #     service: {
    #       arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-p5zdwlg5uvvzjita",
    #       create_date: Time.parse(1587081768.334),
    #       creator_request_id: "567c1193-6b00-4308-bd57-ad38a8822d25",
    #       dns_config: {
    #         dns_records: [
    #           {
    #             ttl: 60,
    #             type: A
    #           }
    #         ],
    #         namespace_id: "ns-ylexjili4cdxy3xm",
    #         routing_policy: MULTIVALUE
    #       },
    #       id: "srv-p5zdwlg5uvvzjita",
    #       name: "myservice",
    #       namespace_id: "ns-ylexjili4cdxy3xm"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ServiceName", # required
    #     namespace_id: "ResourceId",
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     dns_config: {
    #       namespace_id: "ResourceId",
    #       routing_policy: "MULTIVALUE" # One of: ["MULTIVALUE", "WEIGHTED"],
    #       dns_records: [ # required
    #         {
    #           type: "SRV" # One of: ["SRV", "A", "AAAA", "CNAME"], # required
    #           ttl: 1, # required
    #         }
    #       ]
    #     },
    #     health_check_config: {
    #       type: "HTTP" # One of: ["HTTP", "HTTPS", "TCP"], # required
    #       resource_path: "ResourcePath",
    #       failure_threshold: 1
    #     },
    #     health_check_custom_config: {
    #       failure_threshold: 1
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     type: "HTTP" # One of: ["HTTP"]
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "ServiceName",
    #       namespace_id: "ResourceId",
    #       description: "ResourceDescription",
    #       instance_count: 1,
    #       dns_config: {
    #         namespace_id: "ResourceId",
    #         routing_policy: "MULTIVALUE" # One of: ["MULTIVALUE", "WEIGHTED"],
    #         dns_records: [ # required
    #           {
    #             type: "SRV" # One of: ["SRV", "A", "AAAA", "CNAME"], # required
    #             ttl: 1, # required
    #           }
    #         ]
    #       },
    #       type: "HTTP" # One of: ["HTTP", "DNS_HTTP", "DNS"],
    #       health_check_config: {
    #         type: "HTTP" # One of: ["HTTP", "HTTPS", "TCP"], # required
    #         resource_path: "ResourcePath",
    #         failure_threshold: 1
    #       },
    #       health_check_custom_config: {
    #         failure_threshold: 1
    #       },
    #       create_date: Time.now,
    #       creator_request_id: "ResourceId"
    #     }
    #   }
    # @return [Types::CreateServiceResponse]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Deletes a namespace from the current account. If the namespace still contains one or more services, the
    #    request fails.</p>
    # @param [Hash, Types::DeleteNamespaceRequest] params
    # @option params [String] :id
    #   <p>The ID of the namespace that you want to delete.</p>
    # @example Example: Delete namespace
    #   # Example: Delete namespace
    #   params = {
    #     id: "ns-ylexjili4cdxy3xm"
    #   }
    #   options = {}
    #   response = client.delete_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k98y6drk"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DeleteNamespaceResponse]
    def delete_namespace(params = {}, options = {})
      request = build_request(:delete_namespace, params)
      request.send_request(options)
    end

    # <p>Deletes a specified service and all associated service attributes. If the service still contains one or more registered instances, the request
    #    fails.</p>
    # @param [Hash, Types::DeleteServiceRequest] params
    # @option params [String] :id
    #   <p>The ID of the service that you want to delete.</p>
    # @example Example: Delete service
    #   # Example: Delete service
    #   params = {
    #     id: "srv-p5zdwlg5uvvzjita"
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceResponse]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Deletes specific attributes associated with a service.</p>
    # @param [Hash, Types::DeleteServiceAttributesRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service from which the attributes will be deleted.</p>
    # @option params [Array<String>] :attributes
    #   <p>A list of keys corresponding to each attribute that you want to delete.</p>
    # @example DeleteServiceAttributes example
    #   # Example: Delete service attribute by providing attribute key and service ID
    #   params = {
    #     attributes: [
    #       "port"
    #     ],
    #     service_id: "srv-e4anhexample0004"
    #   }
    #   options = {}
    #   response = client.delete_service_attributes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     attributes: ["ServiceAttributeKey"], # required
    #   }
    #   options = {}
    #   response = client.delete_service_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServiceAttributesResponse]
    def delete_service_attributes(params = {}, options = {})
      request = build_request(:delete_service_attributes, params)
      request.send_request(options)
    end

    # <p>Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified
    #    instance.</p>
    # @param [Hash, Types::DeregisterInstanceRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    # @option params [String] :instance_id
    #   <p>The value that you specified for <code>Id</code> in the <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html">RegisterInstance</a> request.</p>
    # @example Example: Deregister a service instance
    #   # Example: Deregister a service instance
    #   params = {
    #     service_id: "srv-p5zdwlg5uvvzjita",
    #     instance_id: "myservice-53"
    #   }
    #   options = {}
    #   response = client.deregister_instance(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "4yejorelbukcjzpnr6tlmrghsjwpngf4-k98rnaiq"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.deregister_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DeregisterInstanceResponse]
    def deregister_instance(params = {}, options = {})
      request = build_request(:deregister_instance, params)
      request.send_request(options)
    end

    # <p>Discovers registered instances for a specified namespace and service. You can use
    #     <code>DiscoverInstances</code> to discover instances for any type of namespace. <code>DiscoverInstances</code>
    #    returns a randomized list of instances allowing customers to distribute traffic evenly across instances. For
    #    public and private DNS namespaces, you can also use DNS queries to discover instances.</p>
    # @param [Hash, Types::DiscoverInstancesRequest] params
    # @option params [String] :namespace_name
    #   <p>The <code>HttpName</code> name of the namespace. It's found in the <code>HttpProperties</code> member of
    #      the <code>Properties</code> member of the namespace. In most cases, <code>Name</code> and <code>HttpName</code>
    #      match. However, if you reuse <code>Name</code> for namespace creation, a generated hash is added to
    #      <code>HttpName</code> to distinguish the two.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that you specified when you registered the instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>DiscoverInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 instances.</p>
    # @option params [Hash<String, String>] :query_parameters
    #   <p>Filters to scope the results based on custom attributes for the instance (for example, <code>{version=v1,
    #       az=1a}</code>). Only instances that match all the specified key-value pairs are returned.</p>
    # @option params [Hash<String, String>] :optional_parameters
    #   <p>Opportunistic filters to scope the results based on custom attributes. If there are instances that match
    #      both the filters specified in both the <code>QueryParameters</code> parameter and this parameter, all of these
    #      instances are returned. Otherwise, the filters are ignored, and only instances that match the filters that are
    #      specified in the <code>QueryParameters</code> parameter are returned.</p>
    # @option params [String] :health_status
    #   <p>The health status of the instances that you want to discover. This parameter is ignored for services that
    #      don't have a health check configured, and
    #      all
    #      instances are returned.</p>
    #            <dl>
    #               <dt>HEALTHY</dt>
    #               <dd>
    #                  <p>Returns healthy instances.</p>
    #               </dd>
    #               <dt>UNHEALTHY</dt>
    #               <dd>
    #                  <p>Returns unhealthy instances.</p>
    #               </dd>
    #               <dt>ALL</dt>
    #               <dd>
    #                  <p>Returns all instances.</p>
    #               </dd>
    #               <dt>HEALTHY_OR_ELSE_ALL</dt>
    #               <dd>
    #                  <p>Returns healthy instances, unless none are reporting a healthy state. In that case, return all
    #         instances. This is also called failing open.</p>
    #               </dd>
    #            </dl>
    # @example Example: Discover registered instances
    #   # Example: Discover registered instances
    #   params = {
    #     namespace_name: "example.com",
    #     service_name: "myservice",
    #     max_results: 10,
    #     health_status: ALL
    #   }
    #   options = {}
    #   response = client.discover_instances(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         attributes: {
    #           "AWS_INSTANCE_IPV4" => "172.2.1.3",
    #           "AWS_INSTANCE_PORT" => "808"
    #         },
    #         health_status: UNKNOWN,
    #         instance_id: "myservice-53",
    #         namespace_name: "example.com",
    #         service_name: "myservice"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     service_name: "ServiceName", # required
    #     max_results: 1,
    #     query_parameters: {
    #       "AttrKey" => "AttrValue"
    #     },
    #     optional_parameters: {
    #       "AttrKey" => "AttrValue"
    #     },
    #     health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "ALL", "HEALTHY_OR_ELSE_ALL"]
    #   }
    #   options = {}
    #   response = client.discover_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         instance_id: "ResourceId",
    #         namespace_name: "NamespaceNameHttp",
    #         service_name: "ServiceName",
    #         health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #         attributes: {
    #           "AttrKey" => "AttrValue"
    #         }
    #       }
    #     ],
    #     instances_revision: 1
    #   }
    # @return [Types::DiscoverInstancesResponse]
    def discover_instances(params = {}, options = {})
      request = build_request(:discover_instances, params)
      request.send_request(options)
    end

    # <p>Discovers the increasing revision associated with an instance.</p>
    # @param [Hash, Types::DiscoverInstancesRevisionRequest] params
    # @option params [String] :namespace_name
    #   <p>The <code>HttpName</code> name of the namespace. It's found in the <code>HttpProperties</code> member of
    #      the <code>Properties</code> member of the namespace.</p>
    # @option params [String] :service_name
    #   <p>The name of the service that you specified when you registered the instance.</p>
    # @example To discover the revision for a registered instance
    #   # The following example discovers the revision ID for a registered instance.
    #   params = {
    #     namespace_name: "example-namespace",
    #     service_name: "example-service"
    #   }
    #   options = {}
    #   response = client.discover_instances_revision(params, options)
    #   response.to_h #=>
    #   {
    #     instances_revision: 123456
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace_name: "NamespaceName", # required
    #     service_name: "ServiceName", # required
    #   }
    #   options = {}
    #   response = client.discover_instances_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances_revision: 1
    #   }
    # @return [Types::DiscoverInstancesRevisionResponse]
    def discover_instances_revision(params = {}, options = {})
      request = build_request(:discover_instances_revision, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified instance.</p>
    # @param [Hash, Types::GetInstanceRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the instance that you want to get information about.</p>
    # @example GetInstance example
    #   # This example gets information about a specified instance.
    #   params = {
    #     instance_id: "i-abcd1234",
    #     service_id: "srv-e4anhexample0004"
    #   }
    #   options = {}
    #   response = client.get_instance(params, options)
    #   response.to_h #=>
    #   {
    #     instance: {
    #       id: "i-abcd1234",
    #       attributes: {
    #         "AWS_INSTANCE_IPV4" => "192.0.2.44",
    #         "AWS_INSTANCE_PORT" => "80",
    #         "color" => "green",
    #         "region" => "us-west-2",
    #         "stage" => "beta"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: {
    #       id: "ResourceId", # required
    #       creator_request_id: "ResourceId",
    #       attributes: {
    #         "AttrKey" => "AttrValue"
    #       }
    #     }
    #   }
    # @return [Types::GetInstanceResponse]
    def get_instance(params = {}, options = {})
      request = build_request(:get_instance, params)
      request.send_request(options)
    end

    # <p>Gets the current health status (<code>Healthy</code>, <code>Unhealthy</code>, or <code>Unknown</code>) of
    #    one or more instances that are associated with a specified service.</p>
    #          <note>
    #             <p>There's a brief delay between when you register an instance and when the health status for the instance is
    #     available. </p>
    #          </note>
    # @param [Hash, Types::GetInstancesHealthStatusRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that the instance is associated with.</p>
    # @option params [Array<String>] :instances
    #   <p>An array that contains the IDs of all the instances that you want to get the health status for.</p>
    #            <p>If you omit <code>Instances</code>, Cloud Map returns the health status for all the instances that are
    #      associated with the specified service.</p>
    #            <note>
    #               <p>To get the IDs for the instances that you've registered by using a specified service, submit a <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html">ListInstances</a> request.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>GetInstancesHealthStatus</code> request. If you don't specify a value for <code>MaxResults</code>,
    #      Cloud Map returns up to 100 instances.</p>
    # @option params [String] :next_token
    #   <p>For the first <code>GetInstancesHealthStatus</code> request, omit this value.</p>
    #            <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    # @example GetInstancesHealthStatus example
    #   # This example gets the current health status of one or more instances that are associate with a specified service.
    #   params = {
    #     service_id: "srv-e4anhexample0004"
    #   }
    #   options = {}
    #   response = client.get_instances_health_status(params, options)
    #   response.to_h #=>
    #   {
    #     status: {
    #       "i-abcd1234" => HEALTHY,
    #       "i-abcd1235" => UNHEALTHY
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     instances: ["ResourceId"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_instances_health_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: {
    #       "ResourceId" => "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetInstancesHealthStatusResponse]
    def get_instances_health_status(params = {}, options = {})
      request = build_request(:get_instances_health_status, params)
      request.send_request(options)
    end

    # <p>Gets information about a namespace.</p>
    # @param [Hash, Types::GetNamespaceRequest] params
    # @option params [String] :id
    #   <p>The ID of the namespace that you want to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "NamespaceName",
    #       type: "DNS_PUBLIC" # One of: ["DNS_PUBLIC", "DNS_PRIVATE", "HTTP"],
    #       description: "ResourceDescription",
    #       service_count: 1,
    #       properties: {
    #         dns_properties: {
    #           hosted_zone_id: "ResourceId",
    #           soa: {
    #             ttl: 1, # required
    #           }
    #         },
    #         http_properties: {
    #           http_name: "NamespaceName"
    #         }
    #       },
    #       create_date: Time.now,
    #       creator_request_id: "ResourceId"
    #     }
    #   }
    # @return [Types::GetNamespaceResponse]
    def get_namespace(params = {}, options = {})
      request = build_request(:get_namespace, params)
      request.send_request(options)
    end

    # <p>Gets information about any operation that returns an operation ID in the response, such as a
    #     <code>CreateHttpNamespace</code> request.</p>
    #          <note>
    #             <p>To get a list of operations that match specified criteria, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html">ListOperations</a>.</p>
    #          </note>
    # @param [Hash, Types::GetOperationRequest] params
    # @option params [String] :operation_id
    #   <p>The ID of the operation that you want to get more information about.</p>
    # @example Example: Get operation result
    #   # Example: Get operation result
    #   params = {
    #     operation_id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd"
    #   }
    #   options = {}
    #   response = client.get_operation(params, options)
    #   response.to_h #=>
    #   {
    #     operation: {
    #       create_date: Time.parse(1587055860.121),
    #       id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd",
    #       status: SUCCESS,
    #       targets: {
    #         "NAMESPACE" => "ns-ylexjili4cdxy3xm"
    #       },
    #       type: CREATE_NAMESPACE,
    #       update_date: Time.parse(1587055900.469)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     operation_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation: {
    #       id: "OperationId",
    #       type: "CREATE_NAMESPACE" # One of: ["CREATE_NAMESPACE", "DELETE_NAMESPACE", "UPDATE_NAMESPACE", "UPDATE_SERVICE", "REGISTER_INSTANCE", "DEREGISTER_INSTANCE"],
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "SUCCESS", "FAIL"],
    #       error_message: "Message",
    #       error_code: "Code",
    #       create_date: Time.now,
    #       update_date: Time.now,
    #       targets: {
    #         "OperationTargetType" => "ResourceId"
    #       }
    #     }
    #   }
    # @return [Types::GetOperationResponse]
    def get_operation(params = {}, options = {})
      request = build_request(:get_operation, params)
      request.send_request(options)
    end

    # <p>Gets the settings for a specified service.</p>
    # @param [Hash, Types::GetServiceRequest] params
    # @option params [String] :id
    #   <p>The ID of the service that you want to get settings for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       id: "ResourceId",
    #       arn: "Arn",
    #       name: "ServiceName",
    #       namespace_id: "ResourceId",
    #       description: "ResourceDescription",
    #       instance_count: 1,
    #       dns_config: {
    #         namespace_id: "ResourceId",
    #         routing_policy: "MULTIVALUE" # One of: ["MULTIVALUE", "WEIGHTED"],
    #         dns_records: [ # required
    #           {
    #             type: "SRV" # One of: ["SRV", "A", "AAAA", "CNAME"], # required
    #             ttl: 1, # required
    #           }
    #         ]
    #       },
    #       type: "HTTP" # One of: ["HTTP", "DNS_HTTP", "DNS"],
    #       health_check_config: {
    #         type: "HTTP" # One of: ["HTTP", "HTTPS", "TCP"], # required
    #         resource_path: "ResourcePath",
    #         failure_threshold: 1
    #       },
    #       health_check_custom_config: {
    #         failure_threshold: 1
    #       },
    #       create_date: Time.now,
    #       creator_request_id: "ResourceId"
    #     }
    #   }
    # @return [Types::GetServiceResponse]
    def get_service(params = {}, options = {})
      request = build_request(:get_service, params)
      request.send_request(options)
    end

    # <p>Returns the attributes associated with a specified service.</p>
    # @param [Hash, Types::GetServiceAttributesRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that you want to get attributes for.</p>
    # @example GetServiceAttributes Example
    #   # This example gets the attributes for a specified service.
    #   params = {
    #     service_id: "srv-e4anhexample0004"
    #   }
    #   options = {}
    #   response = client.get_service_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     service_attributes: {
    #       attributes: {
    #         "port" => "80"
    #       },
    #       service_arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-e4anhexample0004"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_service_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_attributes: {
    #       service_arn: "Arn",
    #       attributes: {
    #         "ServiceAttributeKey" => "ServiceAttributeValue"
    #       }
    #     }
    #   }
    # @return [Types::GetServiceAttributesResponse]
    def get_service_attributes(params = {}, options = {})
      request = build_request(:get_service_attributes, params)
      request.send_request(options)
    end

    # <p>Lists summary information about the instances that you registered by using a specified service.</p>
    # @param [Hash, Types::ListInstancesRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that you want to list instances for.</p>
    # @option params [String] :next_token
    #   <p>For the first <code>ListInstances</code> request, omit this value.</p>
    #            <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another
    #       <code>ListInstances</code> request to get the next group of results. Specify the value of
    #       <code>NextToken</code> from the previous response in the next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of instances that you want Cloud Map to return in the response to a
    #       <code>ListInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 instances.</p>
    # @example Example: List service instances
    #   # Example: List service instances
    #   params = {
    #     service_id: "srv-qzpwvt2tfqcegapy"
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         attributes: {
    #           "AWS_INSTANCE_IPV4" => "172.2.1.3",
    #           "AWS_INSTANCE_PORT" => "808"
    #         },
    #         id: "i-06bdabbae60f65a4e"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         id: "ResourceId",
    #         attributes: {
    #           "AttrKey" => "AttrValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInstancesResponse]
    def list_instances(params = {}, options = {})
      request = build_request(:list_instances, params)
      request.send_request(options)
    end

    # <p>Lists summary information about the namespaces that were created by the current Amazon Web Services account.</p>
    # @param [Hash, Types::ListNamespacesRequest] params
    # @option params [String] :next_token
    #   <p>For the first <code>ListNamespaces</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria.
    #       It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria
    #       but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the
    #       criteria.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of namespaces that you want Cloud Map to return in the response to a
    #       <code>ListNamespaces</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 namespaces.</p>
    # @option params [Array<Types::NamespaceFilter>] :filters
    #   <p>A complex type that contains specifications for the namespaces that you want to list.</p>
    #            <p>If you specify more than one filter, a namespace must match all filters to be returned by
    #       <code>ListNamespaces</code>.</p>
    # @example Example: List namespaces
    #   # Example: List namespaces
    #   params = {}
    #   options = {}
    #   response = client.list_namespaces(params, options)
    #   response.to_h #=>
    #   {
    #     namespaces: [
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-a3ccy2e7e3a7rile",
    #         create_date: Time.parse(1585354387.357),
    #         id: "ns-a3ccy2e7e3a7rile",
    #         name: "local",
    #         properties: {
    #           dns_properties: {
    #             hosted_zone_id: "Z06752353VBUDTC32S84S"
    #           },
    #           http_properties: {
    #             http_name: "local"
    #           }
    #         },
    #         type: DNS_PRIVATE
    #       },
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-pocfyjtrsmwtvcxx",
    #         create_date: Time.parse(1586468974.698),
    #         description: "My second namespace",
    #         id: "ns-pocfyjtrsmwtvcxx",
    #         name: "My-second-namespace",
    #         properties: {
    #           dns_properties: {
    #           },
    #           http_properties: {
    #             http_name: "My-second-namespace"
    #           }
    #         },
    #         type: HTTP
    #       },
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-ylexjili4cdxy3xm",
    #         create_date: Time.parse(1587055896.798),
    #         id: "ns-ylexjili4cdxy3xm",
    #         name: "example.com",
    #         properties: {
    #           dns_properties: {
    #             hosted_zone_id: "Z09983722P0QME1B3KC8I"
    #           },
    #           http_properties: {
    #             http_name: "example.com"
    #           }
    #         },
    #         type: DNS_PRIVATE
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "TYPE" # One of: ["TYPE", "NAME", "HTTP_NAME"], # required
    #         values: ["FilterValue"], # required
    #         condition: "EQ" # One of: ["EQ", "IN", "BETWEEN", "BEGINS_WITH"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespaces: [
    #       {
    #         id: "ResourceId",
    #         arn: "Arn",
    #         name: "NamespaceName",
    #         type: "DNS_PUBLIC" # One of: ["DNS_PUBLIC", "DNS_PRIVATE", "HTTP"],
    #         description: "ResourceDescription",
    #         service_count: 1,
    #         properties: {
    #           dns_properties: {
    #             hosted_zone_id: "ResourceId",
    #             soa: {
    #               ttl: 1, # required
    #             }
    #           },
    #           http_properties: {
    #             http_name: "NamespaceName"
    #           }
    #         },
    #         create_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNamespacesResponse]
    def list_namespaces(params = {}, options = {})
      request = build_request(:list_namespaces, params)
      request.send_request(options)
    end

    # <p>Lists operations that match the criteria that you specify.</p>
    # @param [Hash, Types::ListOperationsRequest] params
    # @option params [String] :next_token
    #   <p>For the first <code>ListOperations</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> operations and then filters them based on the specified criteria.
    #       It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria
    #       but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the
    #       criteria.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that you want Cloud Map to return in the response to a
    #       <code>ListOperations</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map
    #      returns up to 100 operations.</p>
    # @option params [Array<Types::OperationFilter>] :filters
    #   <p>A complex type that contains specifications for the operations that you want to list, for example,
    #      operations that you started between a specified start date and end date.</p>
    #            <p>If you specify more than one filter, an operation must match all filters to be returned by
    #       <code>ListOperations</code>.</p>
    # @example ListOperations Example
    #   # This example gets the operations that have a STATUS of either PENDING or SUCCESS.
    #   params = {
    #     filters: [
    #       {
    #         name: STATUS,
    #         condition: IN,
    #         values: [
    #           "PENDING",
    #           "SUCCESS"
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_operations(params, options)
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "76yy8ovhpdz0plmjzbsnqgnrqvpv2qdt-kexample",
    #         status: SUCCESS
    #       },
    #       {
    #         id: "prysnyzpji3u2ciy45nke83x2zanl7yk-dexample",
    #         status: SUCCESS
    #       },
    #       {
    #         id: "ko4ekftir7kzlbechsh7xvcdgcpk66gh-7example",
    #         status: PENDING
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "NAMESPACE_ID" # One of: ["NAMESPACE_ID", "SERVICE_ID", "STATUS", "TYPE", "UPDATE_DATE"], # required
    #         values: ["FilterValue"], # required
    #         condition: "EQ" # One of: ["EQ", "IN", "BETWEEN", "BEGINS_WITH"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operations: [
    #       {
    #         id: "OperationId",
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "PENDING", "SUCCESS", "FAIL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOperationsResponse]
    def list_operations(params = {}, options = {})
      request = build_request(:list_operations, params)
      request.send_request(options)
    end

    # <p>Lists summary information for all the services that are associated with one or more
    #    namespaces.</p>
    # @param [Hash, Types::ListServicesRequest] params
    # @option params [String] :next_token
    #   <p>For the first <code>ListServices</code> request, omit this value.</p>
    #            <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get
    #      the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next
    #      request.</p>
    #            <note>
    #               <p>Cloud Map gets <code>MaxResults</code> services and then filters them based on the specified criteria.
    #       It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but
    #       that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of services that you want Cloud Map to return in the response to a
    #       <code>ListServices</code> request. If you don't specify a value for <code>MaxResults</code>, Cloud Map returns
    #      up to 100 services.</p>
    # @option params [Array<Types::ServiceFilter>] :filters
    #   <p>A complex type that contains specifications for the namespaces that you want to list services for. </p>
    #            <p>If you specify more than one filter, an operation must match all filters to be returned by
    #       <code>ListServices</code>.</p>
    # @example Example: List services
    #   # Example: List services
    #   params = {}
    #   options = {}
    #   response = client.list_services(params, options)
    #   response.to_h #=>
    #   {
    #     services: [
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-p5zdwlg5uvvzjita",
    #         create_date: Time.parse(1587081768.334),
    #         dns_config: {
    #           dns_records: [
    #             {
    #               ttl: 60,
    #               type: A
    #             }
    #           ],
    #           routing_policy: MULTIVALUE
    #         },
    #         id: "srv-p5zdwlg5uvvzjita",
    #         name: "myservice"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "NAMESPACE_ID" # One of: ["NAMESPACE_ID"], # required
    #         values: ["FilterValue"], # required
    #         condition: "EQ" # One of: ["EQ", "IN", "BETWEEN", "BEGINS_WITH"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     services: [
    #       {
    #         id: "ResourceId",
    #         arn: "Arn",
    #         name: "ServiceName",
    #         type: "HTTP" # One of: ["HTTP", "DNS_HTTP", "DNS"],
    #         description: "ResourceDescription",
    #         instance_count: 1,
    #         dns_config: {
    #           namespace_id: "ResourceId",
    #           routing_policy: "MULTIVALUE" # One of: ["MULTIVALUE", "WEIGHTED"],
    #           dns_records: [ # required
    #             {
    #               type: "SRV" # One of: ["SRV", "A", "AAAA", "CNAME"], # required
    #               ttl: 1, # required
    #             }
    #           ]
    #         },
    #         health_check_config: {
    #           type: "HTTP" # One of: ["HTTP", "HTTPS", "TCP"], # required
    #           resource_path: "ResourcePath",
    #           failure_threshold: 1
    #         },
    #         health_check_custom_config: {
    #           failure_threshold: 1
    #         },
    #         create_date: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListServicesResponse]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>Lists tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    # @example ListTagsForResource example
    #   # This example lists the tags of a resource.
    #   params = {
    #     resource_arn: "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "Project",
    #         value: "Zeta"
    #       },
    #       {
    #         key: "Department",
    #         value: "Engineering"
    #       }
    #     ]
    #   }
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

    # <p>Creates or updates one or more records and, optionally, creates a health check based on the settings in a
    #    specified service. When you submit a <code>RegisterInstance</code> request, the following occurs:</p>
    #          <ul>
    #             <li>
    #                <p>For each DNS record that you define in the service that's specified by <code>ServiceId</code>, a record
    #      is created or updated in the hosted zone that's associated with the corresponding namespace.</p>
    #             </li>
    #             <li>
    #                <p>If the service includes <code>HealthCheckConfig</code>, a health check is created based on the settings
    #      in the health check configuration.</p>
    #             </li>
    #             <li>
    #                <p>The health check, if any, is associated with each of the new or updated records.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>One <code>RegisterInstance</code> request must complete before you can submit another request and specify
    #     the same service ID and instance ID.</p>
    #          </important>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html">CreateService</a>.</p>
    #          <p>When Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>If the health check is healthy</b>: returns all the records</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If the health check is unhealthy</b>: returns the applicable value for the
    #      last healthy instance</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If you didn't specify a health check configuration</b>: returns all the
    #      records</p>
    #             </li>
    #          </ul>
    #          <p>For the current quota on the number of instances that you can register using the same namespace and using
    #    the same service, see <a href="https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html">Cloud Map
    #     quotas</a> in the <i>Cloud Map Developer Guide</i>.</p>
    # @param [Hash, Types::RegisterInstanceRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that you want to use for settings for the instance.</p>
    # @option params [String] :instance_id
    #   <p>An identifier that you want to associate with the instance. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>If the service that's specified by <code>ServiceId</code> includes settings for an <code>SRV</code>
    #        record, the value of <code>InstanceId</code> is automatically included as part of the value for the
    #         <code>SRV</code> record. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type">DnsRecord > Type</a>.</p>
    #               </li>
    #               <li>
    #                  <p>You can use this value to update an existing instance.</p>
    #               </li>
    #               <li>
    #                  <p>To register a new instance, you must specify a value that's unique among instances that you register by
    #        using the same service. </p>
    #               </li>
    #               <li>
    #                  <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, Cloud Map updates the
    #        existing DNS records, if any. If there's also an existing health check, Cloud Map deletes the old health
    #        check and creates a new one. </p>
    #                  <note>
    #                     <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a
    #          <code>ListHealthChecks</code> request, for example.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Do not include sensitive information in <code>InstanceId</code> if the namespace is discoverable by public
    #       DNS queries and any <code>Type</code> member of <code>DnsRecord</code> for the service contains
    #        <code>SRV</code> because the <code>InstanceId</code> is discoverable by public DNS queries.</p>
    #            </note>
    # @option params [String] :creator_request_id
    #   <p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests
    #      to be retried without the risk of executing the operation twice. You must use a unique
    #       <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're
    #      registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any
    #      unique string (for example, a date/time stamp).</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A string map that contains the following information for the service that you specify in
    #       <code>ServiceId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>The attributes that apply to the records that are defined in the service. </p>
    #               </li>
    #               <li>
    #                  <p>For each attribute, the applicable value.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Do not include sensitive information in the attributes if the namespace is discoverable by public DNS
    #       queries.</p>
    #            </important>
    #            <p>The following are the supported attribute keys.</p>
    #            <dl>
    #               <dt>AWS_ALIAS_DNS_NAME</dt>
    #               <dd>
    #                  <p>If you want Cloud Map to create an Amazon Route 53 alias record that routes traffic to an Elastic Load Balancing load
    #         balancer, specify the DNS name that's associated with the load balancer. For information about how to get the
    #         DNS name, see "DNSName" in the topic <a href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html">AliasTarget</a> in the
    #          <i>Route 53 API Reference</i>.</p>
    #                  <p>Note the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The configuration for the service that's specified by <code>ServiceId</code> must include settings for
    #           an <code>A</code> record, an <code>AAAA</code> record, or both.</p>
    #                     </li>
    #                     <li>
    #                        <p>In the service that's specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code>
    #           must be <code>WEIGHTED</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the service that's specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code>
    #           settings, Cloud Map will create the Route 53 health check, but it doesn't associate the health check with the
    #           alias record.</p>
    #                     </li>
    #                     <li>
    #                        <p>Cloud Map currently doesn't support creating alias records that route traffic to Amazon Web Services
    #           resources other than Elastic Load Balancing load balancers.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the
    #            <code>AWS_INSTANCE</code> attributes.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>AWS_ALIAS_DNS_NAME</code> is not supported in the GovCloud (US) Regions.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>AWS_EC2_INSTANCE_ID</dt>
    #               <dd>
    #                  <p>
    #                     <i>HTTP namespaces only.</i> The Amazon EC2 instance ID for the instance. If the
    #          <code>AWS_EC2_INSTANCE_ID</code> attribute is specified, then the only other attribute that can be specified
    #         is <code>AWS_INIT_HEALTH_STATUS</code>. When the <code>AWS_EC2_INSTANCE_ID</code> attribute is specified,
    #         then the <code>AWS_INSTANCE_IPV4</code> attribute will be filled out with the primary private IPv4
    #         address.</p>
    #               </dd>
    #               <dt>AWS_INIT_HEALTH_STATUS</dt>
    #               <dd>
    #                  <p>If the service configuration includes <code>HealthCheckCustomConfig</code>, you can optionally use
    #          <code>AWS_INIT_HEALTH_STATUS</code> to specify the initial status of the custom health check,
    #          <code>HEALTHY</code> or <code>UNHEALTHY</code>. If you don't specify a value for
    #          <code>AWS_INIT_HEALTH_STATUS</code>, the initial status is <code>HEALTHY</code>.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_CNAME</dt>
    #               <dd>
    #                  <p>If the service configuration includes a <code>CNAME</code> record, the domain name that you want Route 53
    #         to return in response to DNS queries (for example, <code>example.com</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>CNAME</code> record.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV4</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>A</code> record, the IPv4 address that you want Route 53 to
    #         return in response to DNS queries (for example, <code>192.0.2.44</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>A</code> record. If the service includes settings for an <code>SRV</code> record, you must specify a
    #         value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_IPV6</dt>
    #               <dd>
    #                  <p>If the service configuration includes an <code>AAAA</code> record, the IPv6 address that you want Route 53
    #         to return in response to DNS queries (for example,
    #         <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>).</p>
    #                  <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an
    #          <code>AAAA</code> record. If the service includes settings for an <code>SRV</code> record, you must specify
    #         a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p>
    #               </dd>
    #               <dt>AWS_INSTANCE_PORT</dt>
    #               <dd>
    #                  <p>If the service includes an <code>SRV</code> record, the value that you want Route 53 to return for the
    #         port.</p>
    #                  <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to
    #         send requests to. </p>
    #                  <p>This value is required if you specified settings for an <code>SRV</code> record or a Route 53 health check
    #         when you created the service.</p>
    #               </dd>
    #               <dt>Custom attributes</dt>
    #               <dd>
    #                  <p>You can add up to 30 custom attributes. For each key-value pair, the maximum length of the attribute
    #         name is 255 characters, and the maximum length of the attribute value is 1,024 characters. The total size of
    #         all provided attributes (sum of all keys and values) must not exceed 5,000 characters.</p>
    #               </dd>
    #            </dl>
    # @example Example: Register Instance
    #   # Example: Register Instance
    #   params = {
    #     service_id: "srv-p5zdwlg5uvvzjita",
    #     instance_id: "myservice-53",
    #     attributes: {
    #       "AWS_INSTANCE_IPV4" => "172.2.1.3",
    #       "AWS_INSTANCE_PORT" => "808"
    #     },
    #     creator_request_id: "7a48a98a-72e6-4849-bfa7-1a458e030d7b"
    #   }
    #   options = {}
    #   response = client.register_instance(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "4yejorelbukcjzpnr6tlmrghsjwpngf4-k95yg2u7"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     instance_id: "InstanceId", # required
    #     creator_request_id: "ResourceId",
    #     attributes: { # required
    #       "AttrKey" => "AttrValue"
    #     }
    #   }
    #   options = {}
    #   response = client.register_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::RegisterInstanceResponse]
    def register_instance(params = {}, options = {})
      request = build_request(:register_instance, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the specified resource. Specifying the tag key is required. You can set the value of a
    #      tag to an empty string, but you can't set the value of a tag to null.</p>
    # @example TagResource example
    #   # This example adds "Department" and "Project" tags to a resource.
    #   params = {
    #     resource_arn: "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm",
    #     tags: [
    #       {
    #         key: "Department",
    #         value: "Engineering"
    #       },
    #       {
    #         key: "Project",
    #         value: "Zeta"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tags for.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
    # @example UntagResource example
    #   # This example removes the "Department" and "Project" tags from a resource.
    #   params = {
    #     resource_arn: "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm",
    #     tag_keys: [
    #       "Project",
    #       "Department"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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

    # <p>Updates an HTTP
    #    namespace.</p>
    # @param [Hash, Types::UpdateHttpNamespaceRequest] params
    # @option params [String] :id
    #   <p>The ID of the namespace that you
    #      want to update.</p>
    # @option params [String] :updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdateHttpNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    # @option params [Types::HttpNamespaceChange] :namespace
    #   <p>Updated properties for the the HTTP
    #      namespace.</p>
    # @example To update a HTTP namespace
    #   # The following example updates the description of a HTTP namespace.
    #   params = {
    #     id: "ns-vh4nbmEXAMPLE",
    #     namespace: {
    #       description: "The updated namespace description."
    #     }
    #   }
    #   options = {}
    #   response = client.update_http_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "ft52xe2koxhoeormaceymagglsdjyvEXAMPLE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #     updater_request_id: "ResourceId",
    #     namespace: { # required
    #       description: "ResourceDescription", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_http_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdateHttpNamespaceResponse]
    def update_http_namespace(params = {}, options = {})
      request = build_request(:update_http_namespace, params)
      request.send_request(options)
    end

    # <p>Submits a request to change the health status of a custom health check to healthy or unhealthy.</p>
    #          <p>You can use <code>UpdateInstanceCustomHealthStatus</code> to change the status only for custom health
    #    checks, which you define using <code>HealthCheckCustomConfig</code> when you create a service. You can't use it
    #    to change the status for Route 53 health checks, which you define using <code>HealthCheckConfig</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html">HealthCheckCustomConfig</a>.</p>
    # @param [Hash, Types::UpdateInstanceCustomHealthStatusRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that includes the configuration for the custom health check that you want to change
    #      the status for.</p>
    # @option params [String] :instance_id
    #   <p>The ID of the instance that you want to change the health status for.</p>
    # @option params [String] :status
    #   <p>The new status of the instance, <code>HEALTHY</code> or <code>UNHEALTHY</code>.</p>
    # @example UpdateInstanceCustomHealthStatus Example
    #   # This example submits a request to change the health status of an instance associated with a service with a custom health check to HEALTHY.
    #   params = {
    #     instance_id: "i-abcd1234",
    #     service_id: "srv-e4anhexample0004",
    #     status: HEALTHY
    #   }
    #   options = {}
    #   response = client.update_instance_custom_health_status(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #     status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"], # required
    #   }
    #   options = {}
    #   response = client.update_instance_custom_health_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_instance_custom_health_status(params = {}, options = {})
      request = build_request(:update_instance_custom_health_status, params)
      request.send_request(options)
    end

    # <p>Updates a private DNS
    #    namespace.</p>
    # @param [Hash, Types::UpdatePrivateDnsNamespaceRequest] params
    # @option params [String] :id
    #   <p>The ID of the namespace that you
    #      want to update.</p>
    # @option params [String] :updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdatePrivateDnsNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    # @option params [Types::PrivateDnsNamespaceChange] :namespace
    #   <p>Updated properties for the private
    #      DNS namespace.</p>
    # @example To update a private DNS namespace
    #   # The following example updates the description of a private DNS namespace.
    #   params = {
    #     id: "ns-bk3aEXAMPLE",
    #     updater_request_id: "",
    #     namespace: {
    #       description: "The updated namespace description."
    #     }
    #   }
    #   options = {}
    #   response = client.update_private_dns_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "ft52xe2koxhoeormaceymagglsdjyvEXAMPLE"
    #   }
    # @example To update a public DNS namespace
    #   # The following example updates the description of a public DNS namespace.
    #   params = {
    #     id: "ns-bk3aEXAMPLE",
    #     updater_request_id: "",
    #     namespace: {
    #       description: "The updated namespace description."
    #     }
    #   }
    #   options = {}
    #   response = client.update_private_dns_namespace(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "ft52xe2koxhoeormaceymagglsdjEXAMPLE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #     updater_request_id: "ResourceId",
    #     namespace: { # required
    #       description: "ResourceDescription",
    #       properties: {
    #         dns_properties: { # required
    #           soa: { # required
    #             ttl: 1, # required
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_private_dns_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdatePrivateDnsNamespaceResponse]
    def update_private_dns_namespace(params = {}, options = {})
      request = build_request(:update_private_dns_namespace, params)
      request.send_request(options)
    end

    # <p>Updates a public DNS
    #    namespace.</p>
    # @param [Hash, Types::UpdatePublicDnsNamespaceRequest] params
    # @option params [String] :id
    #   <p>The ID of the namespace being
    #      updated.</p>
    # @option params [String] :updater_request_id
    #   <p>A unique string that identifies the
    #      request and that allows failed <code>UpdatePublicDnsNamespace</code> requests to be retried without the risk of
    #      running the operation twice. <code>UpdaterRequestId</code> can be any unique string (for example, a
    #      date/timestamp).</p>
    # @option params [Types::PublicDnsNamespaceChange] :namespace
    #   <p>Updated properties for the public
    #      DNS namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #     updater_request_id: "ResourceId",
    #     namespace: { # required
    #       description: "ResourceDescription",
    #       properties: {
    #         dns_properties: { # required
    #           soa: { # required
    #             ttl: 1, # required
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_public_dns_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdatePublicDnsNamespaceResponse]
    def update_public_dns_namespace(params = {}, options = {})
      request = build_request(:update_public_dns_namespace, params)
      request.send_request(options)
    end

    # <p>Submits a request to perform the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>Update the TTL setting for existing <code>DnsRecords</code> configurations</p>
    #             </li>
    #             <li>
    #                <p>Add, update, or delete <code>HealthCheckConfig</code> for a specified service</p>
    #                <note>
    #                   <p>You can't add, update, or delete a <code>HealthCheckCustomConfig</code> configuration.</p>
    #                </note>
    #             </li>
    #          </ul>
    #          <p>For public and private DNS namespaces, note the following:</p>
    #          <ul>
    #             <li>
    #                <p>If you omit any existing <code>DnsRecords</code> or <code>HealthCheckConfig</code> configurations from an
    #       <code>UpdateService</code> request, the configurations are deleted from the service.</p>
    #             </li>
    #             <li>
    #                <p>If you omit an existing <code>HealthCheckCustomConfig</code> configuration from an
    #       <code>UpdateService</code> request, the configuration isn't deleted from the service.</p>
    #             </li>
    #          </ul>
    #          <p>When you update settings for a service, Cloud Map also updates the corresponding settings in all the
    #    records and health checks that were created by using the specified service.</p>
    # @param [Hash, Types::UpdateServiceRequest] params
    # @option params [String] :id
    #   <p>The ID of the service that you want to update.</p>
    # @option params [Types::ServiceChange] :service
    #   <p>A complex type that contains the new settings for the service. You can specify a maximum of 30 attributes (key-value pairs).</p>
    # @example UpdateService Example
    #   # This example submits a request to replace the DnsConfig and HealthCheckConfig settings of a specified service.
    #   params = {
    #     id: "srv-e4anhexample0004",
    #     service: {
    #       health_check_config: {
    #         type: HTTP,
    #         resource_path: "/",
    #         failure_threshold: 2
    #       },
    #       dns_config: {
    #         dns_records: [
    #           {
    #             type: A,
    #             ttl: 60
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "m35hsdrkxwjffm3xef4bxyy6vc3ewakx-jdn3y5g5"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceId", # required
    #     service: { # required
    #       description: "ResourceDescription",
    #       dns_config: {
    #         dns_records: [ # required
    #           {
    #             type: "SRV" # One of: ["SRV", "A", "AAAA", "CNAME"], # required
    #             ttl: 1, # required
    #           }
    #         ]
    #       },
    #       health_check_config: {
    #         type: "HTTP" # One of: ["HTTP", "HTTPS", "TCP"], # required
    #         resource_path: "ResourcePath",
    #         failure_threshold: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdateServiceResponse]
    def update_service(params = {}, options = {})
      request = build_request(:update_service, params)
      request.send_request(options)
    end

    # <p>Submits a request to update a specified service to add service-level attributes.</p>
    # @param [Hash, Types::UpdateServiceAttributesRequest] params
    # @option params [String] :service_id
    #   <p>The ID of the service that you want to update.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A string map that contains attribute key-value pairs.</p>
    # @example UpdateServiceAttributes Example
    #   # This example submits a request to update the specified service to add a port attribute with the value 80.
    #   params = {
    #     service_id: "srv-e4anhexample0004",
    #     attributes: {
    #       "port" => "80"
    #     }
    #   }
    #   options = {}
    #   response = client.update_service_attributes(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     service_id: "ResourceId", # required
    #     attributes: { # required
    #       "ServiceAttributeKey" => "ServiceAttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_service_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateServiceAttributesResponse]
    def update_service_attributes(params = {}, options = {})
      request = build_request(:update_service_attributes, params)
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
      context[:gem_name] = 'aws-sdk-servicediscovery'
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
