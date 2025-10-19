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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::AppMesh
  # An API client for Aws::AppMesh.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AppMesh
    @identifier = :appmesh

    add_plugin(::Aws::AppMesh::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppMesh::EndpointProvider)
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

    # <p>Creates a gateway route.</p>
    #          <p>A gateway route is attached to a virtual gateway and routes traffic to an existing
    #          virtual service. If a route matches a request, it can distribute traffic to a target
    #          virtual service.</p>
    #          <p>For more information about gateway routes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html">Gateway routes</a>.</p>
    # @param [Hash, Types::CreateGatewayRouteOperationInput] params
    # @option params [String] :gateway_route_name
    #   <p>The name to use for the gateway route.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the gateway route in.</p>
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to associate the gateway route with. If the virtual
    #            gateway is in a shared mesh, then you must be the owner of the virtual gateway
    #            resource.</p>
    # @option params [Types::GatewayRouteSpec] :spec
    #   <p>The gateway route specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the gateway route to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_gateway_name: "ResourceName", # required
    #     spec: { # required
    #       priority: 1,
    #       http_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           hostname: {
    #             exact: "ExactHostName",
    #             suffix: "SuffixHostname"
    #           },
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #             port: 1
    #           },
    #           rewrite: {
    #             prefix: {
    #               default_prefix: "DefaultGatewayRouteRewrite",
    #               value: "HttpGatewayRoutePrefix"
    #             },
    #             path: {
    #               exact: "HttpPathExact"
    #             },
    #             hostname: {
    #               default_target_hostname: "DefaultGatewayRouteRewrite"
    #             }
    #           }
    #         }
    #       },
    #       http2_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           hostname: {
    #             exact: "ExactHostName",
    #             suffix: "SuffixHostname"
    #           },
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #             port: 1
    #           },
    #           rewrite: {
    #             prefix: {
    #               default_prefix: "DefaultGatewayRouteRewrite",
    #               value: "HttpGatewayRoutePrefix"
    #             },
    #             path: {
    #               exact: "HttpPathExact"
    #             },
    #             hostname: {
    #               default_target_hostname: "DefaultGatewayRouteRewrite"
    #             }
    #           }
    #         }
    #       },
    #       grpc_route: {
    #         match: { # required
    #           service_name: "ServiceName",
    #           hostname: {
    #             exact: "ExactHostName",
    #             suffix: "SuffixHostname"
    #           },
    #           metadata: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #             port: 1
    #           },
    #           rewrite: {
    #             hostname: {
    #               default_target_hostname: "DefaultGatewayRouteRewrite"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_gateway_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_route: { # required
    #       mesh_name: "ResourceName", # required
    #       gateway_route_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           match: { # required
    #             service_name: "ServiceName",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "GatewayRouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateGatewayRouteOperationOutput]
    def create_gateway_route(params = {}, options = {})
      request = build_request(:create_gateway_route, params)
      request.send_request(options)
    end

    # <p>Creates a service mesh.</p>
    #          <p> A service mesh is a logical boundary for network traffic between services that are
    #          represented by resources within the mesh. After you create your service mesh, you can
    #          create virtual services, virtual nodes, virtual routers, and routes to distribute traffic
    #          between the applications in your mesh.</p>
    #          <p>For more information about service meshes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html">Service meshes</a>.</p>
    # @param [Hash, Types::CreateMeshOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name to use for the service mesh.</p>
    # @option params [Types::MeshSpec] :spec
    #   <p>The service mesh specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the service mesh to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     spec: {
    #       egress_filter: {
    #         type: "EgressFilterType", # required
    #       },
    #       service_discovery: {
    #         ip_preference: "IpPreference"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_mesh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mesh: { # required
    #       mesh_name: "ResourceName", # required
    #       spec: { # required
    #         egress_filter: {
    #           type: "EgressFilterType", # required
    #         },
    #         service_discovery: {
    #           ip_preference: "IpPreference"
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "MeshStatusCode"
    #       }
    #     }
    #   }
    # @return [Types::CreateMeshOperationOutput]
    def create_mesh(params = {}, options = {})
      request = build_request(:create_mesh, params)
      request.send_request(options)
    end

    # <p>Creates a route that is associated with a virtual router.</p>
    #          <p> You can route several different protocols and define a retry policy for a route.
    #          Traffic can be routed to one or more virtual nodes.</p>
    #          <p>For more information about routes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html">Routes</a>.</p>
    # @param [Hash, Types::CreateRouteOperationInput] params
    # @option params [String] :route_name
    #   <p>The name to use for the route.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the route in.</p>
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router in which to create the route. If the virtual router is in
    #            a shared mesh, then you must be the owner of the virtual router resource.</p>
    # @option params [Types::RouteSpec] :spec
    #   <p>The route specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the route to assist with categorization and
    #            organization. Each tag consists of a key and an optional value, both of which you define.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #     spec: { # required
    #       priority: 1,
    #       http_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           scheme: "HttpScheme",
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         retry_policy: {
    #           per_retry_timeout: { # required
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           max_retries: 1, # required
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           tcp_retry_events: ["TcpRetryPolicyEvent"]
    #         },
    #         timeout: {
    #           per_request: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         }
    #       },
    #       tcp_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         timeout: {
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         },
    #         match: {
    #           port: 1
    #         }
    #       },
    #       http2_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           scheme: "HttpScheme",
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         retry_policy: {
    #           per_retry_timeout: { # required
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           max_retries: 1, # required
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           tcp_retry_events: ["TcpRetryPolicyEvent"]
    #         },
    #         timeout: {
    #           per_request: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         }
    #       },
    #       grpc_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         match: { # required
    #           service_name: "ServiceName",
    #           method_name: "MethodName",
    #           metadata: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         retry_policy: {
    #           per_retry_timeout: { # required
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           max_retries: 1, # required
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           tcp_retry_events: ["TcpRetryPolicyEvent"],
    #           grpc_retry_events: ["GrpcRetryPolicyEvent"]
    #         },
    #         timeout: {
    #           per_request: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       route_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         tcp_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           timeout: {
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           },
    #           match: {
    #             port: 1
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           match: { # required
    #             service_name: "ServiceName",
    #             method_name: "MethodName",
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"],
    #             grpc_retry_events: ["GrpcRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "RouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateRouteOperationOutput]
    def create_route(params = {}, options = {})
      request = build_request(:create_route, params)
      request.send_request(options)
    end

    # <p>Creates a virtual gateway.</p>
    #          <p>A virtual gateway allows resources outside your mesh to communicate to resources that
    #          are inside your mesh. The virtual gateway represents an Envoy proxy running in an Amazon ECS task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a
    #          virtual node, which represents an Envoy running with an application, a virtual gateway
    #          represents Envoy deployed by itself.</p>
    #          <p>For more information about virtual gateways, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html">Virtual gateways</a>. </p>
    # @param [Hash, Types::CreateVirtualGatewayOperationInput] params
    # @option params [String] :virtual_gateway_name
    #   <p>The name to use for the virtual gateway.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual gateway in.</p>
    # @option params [Types::VirtualGatewaySpec] :spec
    #   <p>The virtual gateway specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual gateway to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_gateway_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             certificate: {
    #               # One of:
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "VirtualGatewaySdsSecretName", # required
    #               }
    #             },
    #             validation: { # required
    #               trust: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       listeners: [ # required
    #         {
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: "VirtualGatewayPortProtocol", # required
    #             port: 1,
    #             path: "String",
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "VirtualGatewayPortProtocol", # required
    #           },
    #           tls: {
    #             mode: "VirtualGatewayListenerTlsMode", # required
    #             validation: {
    #               trust: { # required
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             },
    #             certificate: { # required
    #               # One of:
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "VirtualGatewaySdsSecretName", # required
    #               }
    #             }
    #           },
    #           connection_pool: {
    #             # One of:
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1, # required
    #             },
    #             grpc: {
    #               max_requests: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: "FilePath", # required
    #             format: {
    #               # One of:
    #               text: "TextFormat",
    #               json: [
    #                 {
    #                   key: "JsonKey", # required
    #                   value: "JsonValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_virtual_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_gateway: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         listeners: [ # required
    #           {
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #             },
    #             tls: {
    #               mode: "VirtualGatewayListenerTlsMode", # required
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               },
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               }
    #             },
    #             connection_pool: {
    #               # One of:
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualGatewayStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateVirtualGatewayOperationOutput]
    def create_virtual_gateway(params = {}, options = {})
      request = build_request(:create_virtual_gateway, params)
      request.send_request(options)
    end

    # <p>Creates a virtual node within a service mesh.</p>
    #          <p> A virtual node acts as a logical pointer to a particular task group, such as an Amazon ECS service or a Kubernetes deployment. When you create a virtual node, you can
    #          specify the service discovery information for your task group, and whether the proxy
    #          running in a task group will communicate with other proxies using Transport Layer Security
    #          (TLS).</p>
    #          <p>You define a <code>listener</code> for any inbound traffic that your virtual node
    #          expects. Any virtual service that your virtual node expects to communicate to is specified
    #          as a <code>backend</code>.</p>
    #          <p>The response metadata for your new virtual node contains the <code>arn</code> that is
    #          associated with the virtual node. Set this value to the full ARN; for example,
    #             <code>arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp</code>)
    #          as the <code>APPMESH_RESOURCE_ARN</code> environment variable for your task group's Envoy
    #          proxy container in your task definition or pod spec. This is then mapped to the
    #             <code>node.id</code> and <code>node.cluster</code> Envoy parameters.</p>
    #          <note>
    #             <p>By default, App Mesh uses the name of the resource you specified in
    #                <code>APPMESH_RESOURCE_ARN</code> when Envoy is referring to itself in metrics and
    #             traces. You can override this behavior by setting the
    #                <code>APPMESH_RESOURCE_CLUSTER</code> environment variable with your own name.</p>
    #          </note>
    #          <p>For more information about virtual nodes, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html">Virtual nodes</a>. You must be using <code>1.15.0</code> or later of the Envoy image when
    #          setting these variables. For more information aboutApp Mesh Envoy variables, see
    #             <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html">Envoy
    #             image</a> in the App Mesh User Guide.</p>
    # @param [Hash, Types::CreateVirtualNodeOperationInput] params
    # @option params [String] :virtual_node_name
    #   <p>The name to use for the virtual node.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual node in.</p>
    # @option params [Types::VirtualNodeSpec] :spec
    #   <p>The virtual node specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual node to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_node_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       service_discovery: {
    #         # One of:
    #         dns: {
    #           hostname: "Hostname", # required
    #           response_type: "DnsResponseType",
    #           ip_preference: "IpPreference"
    #         },
    #         aws_cloud_map: {
    #           namespace_name: "AwsCloudMapName", # required
    #           service_name: "AwsCloudMapName", # required
    #           attributes: [
    #             {
    #               key: "AwsCloudMapInstanceAttributeKey", # required
    #               value: "AwsCloudMapInstanceAttributeValue", # required
    #             }
    #           ],
    #           ip_preference: "IpPreference"
    #         }
    #       },
    #       listeners: [
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "PortProtocol", # required
    #           },
    #           tls: {
    #             mode: "ListenerTlsMode", # required
    #             certificate: { # required
    #               # One of:
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "SdsSecretName", # required
    #               }
    #             },
    #             validation: {
    #               trust: { # required
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             }
    #           },
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: "PortProtocol", # required
    #             port: 1,
    #             path: "String",
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           timeout: {
    #             # One of:
    #             tcp: {
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             },
    #             http: {
    #               per_request: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             },
    #             http2: {
    #               per_request: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             },
    #             grpc: {
    #               per_request: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             }
    #           },
    #           outlier_detection: {
    #             max_server_errors: 1, # required
    #             interval: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             base_ejection_duration: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_ejection_percent: 1, # required
    #           },
    #           connection_pool: {
    #             # One of:
    #             tcp: {
    #               max_connections: 1, # required
    #             },
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1, # required
    #             },
    #             grpc: {
    #               max_requests: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       backends: [{
    #         # One of:
    #         virtual_service: {
    #           virtual_service_name: "ServiceName", # required
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       }],
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             certificate: {
    #               # One of:
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "SdsSecretName", # required
    #               }
    #             },
    #             validation: { # required
    #               trust: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: "FilePath", # required
    #             format: {
    #               # One of:
    #               text: "TextFormat",
    #               json: [
    #                 {
    #                   key: "JsonKey", # required
    #                   value: "JsonValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_virtual_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_node: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_node_name: "ResourceName", # required
    #       spec: { # required
    #         service_discovery: {
    #           # One of:
    #           dns: {
    #             hostname: "Hostname", # required
    #             response_type: "DnsResponseType",
    #             ip_preference: "IpPreference"
    #           },
    #           aws_cloud_map: {
    #             namespace_name: "AwsCloudMapName", # required
    #             service_name: "AwsCloudMapName", # required
    #             attributes: [
    #               {
    #                 key: "AwsCloudMapInstanceAttributeKey", # required
    #                 value: "AwsCloudMapInstanceAttributeValue", # required
    #               }
    #             ],
    #             ip_preference: "IpPreference"
    #           }
    #         },
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             },
    #             tls: {
    #               mode: "ListenerTlsMode", # required
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             },
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "PortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             timeout: {
    #               # One of:
    #               tcp: {
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http2: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               grpc: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               }
    #             },
    #             outlier_detection: {
    #               max_server_errors: 1, # required
    #               interval: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               base_ejection_duration: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               max_ejection_percent: 1, # required
    #             },
    #             connection_pool: {
    #               # One of:
    #               tcp: {
    #                 max_connections: 1, # required
    #               },
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         backends: [{
    #           # One of:
    #           virtual_service: {
    #             virtual_service_name: "ServiceName", # required
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 certificate: {
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 validation: { # required
    #                   trust: { # required
    #                     # One of:
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                     sds: {
    #                       secret_name: "SdsSecretName", # required
    #                     }
    #                   },
    #                   subject_alternative_names: {
    #                     match: { # required
    #                       exact: ["SubjectAlternativeName"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }],
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualNodeStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateVirtualNodeOperationOutput]
    def create_virtual_node(params = {}, options = {})
      request = build_request(:create_virtual_node, params)
      request.send_request(options)
    end

    # <p>Creates a virtual router within a service mesh.</p>
    #          <p>Specify a <code>listener</code> for any inbound traffic that your virtual router
    #          receives. Create a virtual router for each protocol and port that you need to route.
    #          Virtual routers handle traffic for one or more virtual services within your mesh. After you
    #          create your virtual router, create and associate routes for your virtual router that direct
    #          incoming requests to different virtual nodes.</p>
    #          <p>For more information about virtual routers, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html">Virtual routers</a>.</p>
    # @param [Hash, Types::CreateVirtualRouterOperationInput] params
    # @option params [String] :virtual_router_name
    #   <p>The name to use for the virtual router.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual router in.</p>
    # @option params [Types::VirtualRouterSpec] :spec
    #   <p>The virtual router specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual router to assist with categorization
    #            and organization. Each tag consists of a key and an optional value, both of which you
    #            define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_router_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       listeners: [
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "PortProtocol", # required
    #           }
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_virtual_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_router: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       spec: { # required
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             }
    #           }
    #         ]
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualRouterStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateVirtualRouterOperationOutput]
    def create_virtual_router(params = {}, options = {})
      request = build_request(:create_virtual_router, params)
      request.send_request(options)
    end

    # <p>Creates a virtual service within a service mesh.</p>
    #          <p>A virtual service is an abstraction of a real service that is provided by a virtual node
    #          directly or indirectly by means of a virtual router. Dependent services call your virtual
    #          service by its <code>virtualServiceName</code>, and those requests are routed to the
    #          virtual node or virtual router that is specified as the provider for the virtual
    #          service.</p>
    #          <p>For more information about virtual services, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html">Virtual services</a>.</p>
    # @param [Hash, Types::CreateVirtualServiceOperationInput] params
    # @option params [String] :virtual_service_name
    #   <p>The name to use for the virtual service.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to create the virtual service in.</p>
    # @option params [Types::VirtualServiceSpec] :spec
    #   <p>The virtual service specification to apply.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>Optional metadata that you can apply to the virtual service to assist with
    #            categorization and organization. Each tag consists of a key and an optional value, both of
    #            which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then
    #                  the account that you specify must share the mesh with your account before you can create 
    #                the resource in the service mesh. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_service_name: "ServiceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       provider: {
    #         # One of:
    #         virtual_node: {
    #           virtual_node_name: "ResourceName", # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: "ResourceName", # required
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.create_virtual_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_service: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_service_name: "ServiceName", # required
    #       spec: { # required
    #         provider: {
    #           # One of:
    #           virtual_node: {
    #             virtual_node_name: "ResourceName", # required
    #           },
    #           virtual_router: {
    #             virtual_router_name: "ResourceName", # required
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualServiceStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateVirtualServiceOperationOutput]
    def create_virtual_service(params = {}, options = {})
      request = build_request(:create_virtual_service, params)
      request.send_request(options)
    end

    # <p>Deletes an existing gateway route.</p>
    # @param [Hash, Types::DeleteGatewayRouteOperationInput] params
    # @option params [String] :gateway_route_name
    #   <p>The name of the gateway route to delete.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the gateway route from.</p>
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to delete the route from.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_gateway_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_gateway_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_route: { # required
    #       mesh_name: "ResourceName", # required
    #       gateway_route_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           match: { # required
    #             service_name: "ServiceName",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "GatewayRouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteGatewayRouteOperationOutput]
    def delete_gateway_route(params = {}, options = {})
      request = build_request(:delete_gateway_route, params)
      request.send_request(options)
    end

    # <p>Deletes an existing service mesh.</p>
    #          <p>You must delete all resources (virtual services, routes, virtual routers, and virtual
    #          nodes) in the service mesh before you can delete the mesh itself.</p>
    # @param [Hash, Types::DeleteMeshOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_mesh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mesh: { # required
    #       mesh_name: "ResourceName", # required
    #       spec: { # required
    #         egress_filter: {
    #           type: "EgressFilterType", # required
    #         },
    #         service_discovery: {
    #           ip_preference: "IpPreference"
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "MeshStatusCode"
    #       }
    #     }
    #   }
    # @return [Types::DeleteMeshOperationOutput]
    def delete_mesh(params = {}, options = {})
      request = build_request(:delete_mesh, params)
      request.send_request(options)
    end

    # <p>Deletes an existing route.</p>
    # @param [Hash, Types::DeleteRouteOperationInput] params
    # @option params [String] :route_name
    #   <p>The name of the route to delete.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the route in.</p>
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to delete the route in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       route_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         tcp_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           timeout: {
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           },
    #           match: {
    #             port: 1
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           match: { # required
    #             service_name: "ServiceName",
    #             method_name: "MethodName",
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"],
    #             grpc_retry_events: ["GrpcRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "RouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteRouteOperationOutput]
    def delete_route(params = {}, options = {})
      request = build_request(:delete_route, params)
      request.send_request(options)
    end

    # <p>Deletes an existing virtual gateway. You cannot delete a virtual gateway if any gateway
    #          routes are associated to it.</p>
    # @param [Hash, Types::DeleteVirtualGatewayOperationInput] params
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to delete.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual gateway from.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_gateway_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_virtual_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_gateway: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         listeners: [ # required
    #           {
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #             },
    #             tls: {
    #               mode: "VirtualGatewayListenerTlsMode", # required
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               },
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               }
    #             },
    #             connection_pool: {
    #               # One of:
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualGatewayStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteVirtualGatewayOperationOutput]
    def delete_virtual_gateway(params = {}, options = {})
      request = build_request(:delete_virtual_gateway, params)
      request.send_request(options)
    end

    # <p>Deletes an existing virtual node.</p>
    #          <p>You must delete any virtual services that list a virtual node as a service provider
    #          before you can delete the virtual node itself.</p>
    # @param [Hash, Types::DeleteVirtualNodeOperationInput] params
    # @option params [String] :virtual_node_name
    #   <p>The name of the virtual node to delete.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual node in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_node_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_virtual_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_node: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_node_name: "ResourceName", # required
    #       spec: { # required
    #         service_discovery: {
    #           # One of:
    #           dns: {
    #             hostname: "Hostname", # required
    #             response_type: "DnsResponseType",
    #             ip_preference: "IpPreference"
    #           },
    #           aws_cloud_map: {
    #             namespace_name: "AwsCloudMapName", # required
    #             service_name: "AwsCloudMapName", # required
    #             attributes: [
    #               {
    #                 key: "AwsCloudMapInstanceAttributeKey", # required
    #                 value: "AwsCloudMapInstanceAttributeValue", # required
    #               }
    #             ],
    #             ip_preference: "IpPreference"
    #           }
    #         },
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             },
    #             tls: {
    #               mode: "ListenerTlsMode", # required
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             },
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "PortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             timeout: {
    #               # One of:
    #               tcp: {
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http2: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               grpc: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               }
    #             },
    #             outlier_detection: {
    #               max_server_errors: 1, # required
    #               interval: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               base_ejection_duration: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               max_ejection_percent: 1, # required
    #             },
    #             connection_pool: {
    #               # One of:
    #               tcp: {
    #                 max_connections: 1, # required
    #               },
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         backends: [{
    #           # One of:
    #           virtual_service: {
    #             virtual_service_name: "ServiceName", # required
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 certificate: {
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 validation: { # required
    #                   trust: { # required
    #                     # One of:
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                     sds: {
    #                       secret_name: "SdsSecretName", # required
    #                     }
    #                   },
    #                   subject_alternative_names: {
    #                     match: { # required
    #                       exact: ["SubjectAlternativeName"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }],
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualNodeStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteVirtualNodeOperationOutput]
    def delete_virtual_node(params = {}, options = {})
      request = build_request(:delete_virtual_node, params)
      request.send_request(options)
    end

    # <p>Deletes an existing virtual router.</p>
    #          <p>You must delete any routes associated with the virtual router before you can delete the
    #          router itself.</p>
    # @param [Hash, Types::DeleteVirtualRouterOperationInput] params
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to delete.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual router in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_router_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_virtual_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_router: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       spec: { # required
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             }
    #           }
    #         ]
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualRouterStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteVirtualRouterOperationOutput]
    def delete_virtual_router(params = {}, options = {})
      request = build_request(:delete_virtual_router, params)
      request.send_request(options)
    end

    # <p>Deletes an existing virtual service.</p>
    # @param [Hash, Types::DeleteVirtualServiceOperationInput] params
    # @option params [String] :virtual_service_name
    #   <p>The name of the virtual service to delete.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to delete the virtual service in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_service_name: "ServiceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_virtual_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_service: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_service_name: "ServiceName", # required
    #       spec: { # required
    #         provider: {
    #           # One of:
    #           virtual_node: {
    #             virtual_node_name: "ResourceName", # required
    #           },
    #           virtual_router: {
    #             virtual_router_name: "ResourceName", # required
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualServiceStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteVirtualServiceOperationOutput]
    def delete_virtual_service(params = {}, options = {})
      request = build_request(:delete_virtual_service, params)
      request.send_request(options)
    end

    # <p>Describes an existing gateway route.</p>
    # @param [Hash, Types::DescribeGatewayRouteOperationInput] params
    # @option params [String] :gateway_route_name
    #   <p>The name of the gateway route to describe.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_gateway_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_gateway_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_route: { # required
    #       mesh_name: "ResourceName", # required
    #       gateway_route_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           match: { # required
    #             service_name: "ServiceName",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "GatewayRouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeGatewayRouteOperationOutput]
    def describe_gateway_route(params = {}, options = {})
      request = build_request(:describe_gateway_route, params)
      request.send_request(options)
    end

    # <p>Describes an existing service mesh.</p>
    # @param [Hash, Types::DescribeMeshOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to describe.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_mesh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mesh: { # required
    #       mesh_name: "ResourceName", # required
    #       spec: { # required
    #         egress_filter: {
    #           type: "EgressFilterType", # required
    #         },
    #         service_discovery: {
    #           ip_preference: "IpPreference"
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "MeshStatusCode"
    #       }
    #     }
    #   }
    # @return [Types::DescribeMeshOperationOutput]
    def describe_mesh(params = {}, options = {})
      request = build_request(:describe_mesh, params)
      request.send_request(options)
    end

    # <p>Describes an existing route.</p>
    # @param [Hash, Types::DescribeRouteOperationInput] params
    # @option params [String] :route_name
    #   <p>The name of the route to describe.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId",
    #     virtual_router_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       route_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         tcp_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           timeout: {
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           },
    #           match: {
    #             port: 1
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           match: { # required
    #             service_name: "ServiceName",
    #             method_name: "MethodName",
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"],
    #             grpc_retry_events: ["GrpcRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "RouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeRouteOperationOutput]
    def describe_route(params = {}, options = {})
      request = build_request(:describe_route, params)
      request.send_request(options)
    end

    # <p>Describes an existing virtual gateway.</p>
    # @param [Hash, Types::DescribeVirtualGatewayOperationInput] params
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to describe.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_gateway_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_virtual_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_gateway: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         listeners: [ # required
    #           {
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #             },
    #             tls: {
    #               mode: "VirtualGatewayListenerTlsMode", # required
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               },
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               }
    #             },
    #             connection_pool: {
    #               # One of:
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualGatewayStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeVirtualGatewayOperationOutput]
    def describe_virtual_gateway(params = {}, options = {})
      request = build_request(:describe_virtual_gateway, params)
      request.send_request(options)
    end

    # <p>Describes an existing virtual node.</p>
    # @param [Hash, Types::DescribeVirtualNodeOperationInput] params
    # @option params [String] :virtual_node_name
    #   <p>The name of the virtual node to describe.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_node_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_virtual_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_node: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_node_name: "ResourceName", # required
    #       spec: { # required
    #         service_discovery: {
    #           # One of:
    #           dns: {
    #             hostname: "Hostname", # required
    #             response_type: "DnsResponseType",
    #             ip_preference: "IpPreference"
    #           },
    #           aws_cloud_map: {
    #             namespace_name: "AwsCloudMapName", # required
    #             service_name: "AwsCloudMapName", # required
    #             attributes: [
    #               {
    #                 key: "AwsCloudMapInstanceAttributeKey", # required
    #                 value: "AwsCloudMapInstanceAttributeValue", # required
    #               }
    #             ],
    #             ip_preference: "IpPreference"
    #           }
    #         },
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             },
    #             tls: {
    #               mode: "ListenerTlsMode", # required
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             },
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "PortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             timeout: {
    #               # One of:
    #               tcp: {
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http2: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               grpc: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               }
    #             },
    #             outlier_detection: {
    #               max_server_errors: 1, # required
    #               interval: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               base_ejection_duration: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               max_ejection_percent: 1, # required
    #             },
    #             connection_pool: {
    #               # One of:
    #               tcp: {
    #                 max_connections: 1, # required
    #               },
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         backends: [{
    #           # One of:
    #           virtual_service: {
    #             virtual_service_name: "ServiceName", # required
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 certificate: {
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 validation: { # required
    #                   trust: { # required
    #                     # One of:
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                     sds: {
    #                       secret_name: "SdsSecretName", # required
    #                     }
    #                   },
    #                   subject_alternative_names: {
    #                     match: { # required
    #                       exact: ["SubjectAlternativeName"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }],
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualNodeStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeVirtualNodeOperationOutput]
    def describe_virtual_node(params = {}, options = {})
      request = build_request(:describe_virtual_node, params)
      request.send_request(options)
    end

    # <p>Describes an existing virtual router.</p>
    # @param [Hash, Types::DescribeVirtualRouterOperationInput] params
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to describe.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_router_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_virtual_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_router: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       spec: { # required
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             }
    #           }
    #         ]
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualRouterStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeVirtualRouterOperationOutput]
    def describe_virtual_router(params = {}, options = {})
      request = build_request(:describe_virtual_router, params)
      request.send_request(options)
    end

    # <p>Describes an existing virtual service.</p>
    # @param [Hash, Types::DescribeVirtualServiceOperationInput] params
    # @option params [String] :virtual_service_name
    #   <p>The name of the virtual service to describe.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_service_name: "ServiceName", # required
    #     mesh_name: "ResourceName", # required
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_virtual_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_service: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_service_name: "ServiceName", # required
    #       spec: { # required
    #         provider: {
    #           # One of:
    #           virtual_node: {
    #             virtual_node_name: "ResourceName", # required
    #           },
    #           virtual_router: {
    #             virtual_router_name: "ResourceName", # required
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualServiceStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeVirtualServiceOperationOutput]
    def describe_virtual_service(params = {}, options = {})
      request = build_request(:describe_virtual_service, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing gateway routes that are associated to a virtual
    #          gateway.</p>
    # @param [Hash, Types::ListGatewayRoutesOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list gateway routes in.</p>
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to list gateway routes in.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListGatewayRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListGatewayRoutes</code> in paginated
    #            output. When you use this parameter, <code>ListGatewayRoutes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListGatewayRoutes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListGatewayRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     virtual_gateway_name: "ResourceName", # required
    #     next_token: "String",
    #     limit: 1,
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_gateway_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_routes: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         gateway_route_name: "ResourceName", # required
    #         virtual_gateway_name: "ResourceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListGatewayRoutesOperationOutput]
    def list_gateway_routes(params = {}, options = {})
      request = build_request(:list_gateway_routes, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing service meshes.</p>
    # @param [Hash, Types::ListMeshesOperationInput] params
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListMeshes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is used only to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListMeshes</code> in paginated output.
    #            When you use this parameter, <code>ListMeshes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListMeshes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListMeshes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_meshes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meshes: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListMeshesOperationOutput]
    def list_meshes(params = {}, options = {})
      request = build_request(:list_meshes, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing routes in a service mesh.</p>
    # @param [Hash, Types::ListRoutesOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list routes in.</p>
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to list routes in.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListRoutes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListRoutes</code> in paginated output.
    #            When you use this parameter, <code>ListRoutes</code> returns only <code>limit</code>
    #            results in a single page along with a <code>nextToken</code> response element. You can see
    #            the remaining results of the initial request by sending another <code>ListRoutes</code>
    #            request with the returned <code>nextToken</code> value. This value can be between
    #            1 and 100. If you don't use this parameter,
    #               <code>ListRoutes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #     next_token: "String",
    #     limit: 1,
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routes: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #         route_name: "ResourceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRoutesOperationOutput]
    def list_routes(params = {}, options = {})
      request = build_request(:list_routes, params)
      request.send_request(options)
    end

    # <p>List the tags for an App Mesh resource.</p>
    # @param [Hash, Types::ListTagsForResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListTagsForResource</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of tag results returned by <code>ListTagsForResource</code> in
    #            paginated output. When this parameter is used, <code>ListTagsForResource</code> returns
    #            only <code>limit</code> results in a single page along with a <code>nextToken</code>
    #            response element. You can see the remaining results of the initial request by sending
    #            another <code>ListTagsForResource</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If you don't use
    #            this parameter, <code>ListTagsForResource</code> returns up to 100
    #            results and a <code>nextToken</code> value if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     next_token: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTagsForResourceOperationOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing virtual gateways in a service mesh.</p>
    # @param [Hash, Types::ListVirtualGatewaysOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual gateways in.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualGateways</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualGateways</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualGateways</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualGateways</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualGateways</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #     limit: 1,
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_virtual_gateways(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_gateways: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_gateway_name: "ResourceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVirtualGatewaysOperationOutput]
    def list_virtual_gateways(params = {}, options = {})
      request = build_request(:list_virtual_gateways, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing virtual nodes.</p>
    # @param [Hash, Types::ListVirtualNodesOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual nodes in.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualNodes</code> request where <code>limit</code> was used and the results
    #            exceeded the value of that parameter. Pagination continues from the end of the previous
    #            results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualNodes</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualNodes</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualNodes</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualNodes</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #     limit: 1,
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_virtual_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_nodes: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_node_name: "ResourceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVirtualNodesOperationOutput]
    def list_virtual_nodes(params = {}, options = {})
      request = build_request(:list_virtual_nodes, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing virtual routers in a service mesh.</p>
    # @param [Hash, Types::ListVirtualRoutersOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual routers in.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualRouters</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualRouters</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualRouters</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualRouters</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualRouters</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #     limit: 1,
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_virtual_routers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_routers: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVirtualRoutersOperationOutput]
    def list_virtual_routers(params = {}, options = {})
      request = build_request(:list_virtual_routers, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing virtual services in a service mesh.</p>
    # @param [Hash, Types::ListVirtualServicesOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to list virtual services in.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListVirtualServices</code> request where <code>limit</code> was used and the
    #            results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>nextToken</code> value.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results returned by <code>ListVirtualServices</code> in paginated
    #            output. When you use this parameter, <code>ListVirtualServices</code> returns only
    #               <code>limit</code> results in a single page along with a <code>nextToken</code> response
    #            element. You can see the remaining results of the initial request by sending another
    #               <code>ListVirtualServices</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If you don't use this
    #            parameter, <code>ListVirtualServices</code> returns up to 100 results and
    #            a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     next_token: "String",
    #     limit: 1,
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.list_virtual_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_services: [ # required
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_service_name: "ServiceName", # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVirtualServicesOperationOutput]
    def list_virtual_services(params = {}, options = {})
      request = build_request(:list_virtual_services, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>.
    #          If existing tags on a resource aren't specified in the request parameters, they aren't
    #          changed. When a resource is deleted, the tags associated with that resource are also
    #          deleted.</p>
    # @param [Hash, Types::TagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    # @option params [Array<Types::TagRef>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.
    #            Tag keys can have a maximum character length of 128 characters, and tag values can have
    #               a maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::TagResourceOperationOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceOperationInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
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
    # @return [Types::UntagResourceOperationOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing gateway route that is associated to a specified virtual gateway in a
    #          service mesh.</p>
    # @param [Hash, Types::UpdateGatewayRouteOperationInput] params
    # @option params [String] :gateway_route_name
    #   <p>The name of the gateway route to update.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the gateway route resides in.</p>
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway that the gateway route is associated with.</p>
    # @option params [Types::GatewayRouteSpec] :spec
    #   <p>The new gateway route specification to apply. This overwrites the existing data.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gateway_route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_gateway_name: "ResourceName", # required
    #     spec: { # required
    #       priority: 1,
    #       http_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           hostname: {
    #             exact: "ExactHostName",
    #             suffix: "SuffixHostname"
    #           },
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #             port: 1
    #           },
    #           rewrite: {
    #             prefix: {
    #               default_prefix: "DefaultGatewayRouteRewrite",
    #               value: "HttpGatewayRoutePrefix"
    #             },
    #             path: {
    #               exact: "HttpPathExact"
    #             },
    #             hostname: {
    #               default_target_hostname: "DefaultGatewayRouteRewrite"
    #             }
    #           }
    #         }
    #       },
    #       http2_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           hostname: {
    #             exact: "ExactHostName",
    #             suffix: "SuffixHostname"
    #           },
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #             port: 1
    #           },
    #           rewrite: {
    #             prefix: {
    #               default_prefix: "DefaultGatewayRouteRewrite",
    #               value: "HttpGatewayRoutePrefix"
    #             },
    #             path: {
    #               exact: "HttpPathExact"
    #             },
    #             hostname: {
    #               default_target_hostname: "DefaultGatewayRouteRewrite"
    #             }
    #           }
    #         }
    #       },
    #       grpc_route: {
    #         match: { # required
    #           service_name: "ServiceName",
    #           hostname: {
    #             exact: "ExactHostName",
    #             suffix: "SuffixHostname"
    #           },
    #           metadata: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           target: { # required
    #             virtual_service: { # required
    #               virtual_service_name: "ResourceName", # required
    #             },
    #             port: 1
    #           },
    #           rewrite: {
    #             hostname: {
    #               default_target_hostname: "DefaultGatewayRouteRewrite"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_gateway_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     gateway_route: { # required
    #       mesh_name: "ResourceName", # required
    #       gateway_route_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               prefix: {
    #                 default_prefix: "DefaultGatewayRouteRewrite",
    #                 value: "HttpGatewayRoutePrefix"
    #               },
    #               path: {
    #                 exact: "HttpPathExact"
    #               },
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           match: { # required
    #             service_name: "ServiceName",
    #             hostname: {
    #               exact: "ExactHostName",
    #               suffix: "SuffixHostname"
    #             },
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             target: { # required
    #               virtual_service: { # required
    #                 virtual_service_name: "ResourceName", # required
    #               },
    #               port: 1
    #             },
    #             rewrite: {
    #               hostname: {
    #                 default_target_hostname: "DefaultGatewayRouteRewrite"
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "GatewayRouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateGatewayRouteOperationOutput]
    def update_gateway_route(params = {}, options = {})
      request = build_request(:update_gateway_route, params)
      request.send_request(options)
    end

    # <p>Updates an existing service mesh.</p>
    # @param [Hash, Types::UpdateMeshOperationInput] params
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh to update.</p>
    # @option params [Types::MeshSpec] :spec
    #   <p>The service mesh specification to apply.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mesh_name: "ResourceName", # required
    #     spec: {
    #       egress_filter: {
    #         type: "EgressFilterType", # required
    #       },
    #       service_discovery: {
    #         ip_preference: "IpPreference"
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_mesh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     mesh: { # required
    #       mesh_name: "ResourceName", # required
    #       spec: { # required
    #         egress_filter: {
    #           type: "EgressFilterType", # required
    #         },
    #         service_discovery: {
    #           ip_preference: "IpPreference"
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "MeshStatusCode"
    #       }
    #     }
    #   }
    # @return [Types::UpdateMeshOperationOutput]
    def update_mesh(params = {}, options = {})
      request = build_request(:update_mesh, params)
      request.send_request(options)
    end

    # <p>Updates an existing route for a specified service mesh and virtual router.</p>
    # @param [Hash, Types::UpdateRouteOperationInput] params
    # @option params [String] :route_name
    #   <p>The name of the route to update.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the route resides in.</p>
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router that the route is associated with.</p>
    # @option params [Types::RouteSpec] :spec
    #   <p>The new route specification to apply. This overwrites the existing data.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     route_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     virtual_router_name: "ResourceName", # required
    #     spec: { # required
    #       priority: 1,
    #       http_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           scheme: "HttpScheme",
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         retry_policy: {
    #           per_retry_timeout: { # required
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           max_retries: 1, # required
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           tcp_retry_events: ["TcpRetryPolicyEvent"]
    #         },
    #         timeout: {
    #           per_request: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         }
    #       },
    #       tcp_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         timeout: {
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         },
    #         match: {
    #           port: 1
    #         }
    #       },
    #       http2_route: {
    #         match: { # required
    #           prefix: "String",
    #           path: {
    #             exact: "HttpPathExact",
    #             regex: "HttpPathRegex"
    #           },
    #           query_parameters: [
    #             {
    #               name: "QueryParameterName", # required
    #               match: {
    #                 exact: "String"
    #               }
    #             }
    #           ],
    #           method: "HttpMethod",
    #           scheme: "HttpScheme",
    #           headers: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         retry_policy: {
    #           per_retry_timeout: { # required
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           max_retries: 1, # required
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           tcp_retry_events: ["TcpRetryPolicyEvent"]
    #         },
    #         timeout: {
    #           per_request: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         }
    #       },
    #       grpc_route: {
    #         action: { # required
    #           weighted_targets: [ # required
    #             {
    #               virtual_node: "ResourceName", # required
    #               weight: 1, # required
    #               port: 1
    #             }
    #           ]
    #         },
    #         match: { # required
    #           service_name: "ServiceName",
    #           method_name: "MethodName",
    #           metadata: [
    #             {
    #               name: "HeaderName", # required
    #               invert: false,
    #               match: {
    #                 # One of:
    #                 exact: "HeaderMatch",
    #                 regex: "HeaderMatch",
    #                 range: {
    #                   start: 1, # required
    #                   end: 1, # required
    #                 },
    #                 prefix: "HeaderMatch",
    #                 suffix: "HeaderMatch"
    #               }
    #             }
    #           ],
    #           port: 1
    #         },
    #         retry_policy: {
    #           per_retry_timeout: { # required
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           max_retries: 1, # required
    #           http_retry_events: ["HttpRetryPolicyEvent"],
    #           tcp_retry_events: ["TcpRetryPolicyEvent"],
    #           grpc_retry_events: ["GrpcRetryPolicyEvent"]
    #         },
    #         timeout: {
    #           per_request: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           },
    #           idle: {
    #             value: 1,
    #             unit: "DurationUnit"
    #           }
    #         }
    #       }
    #     },
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     route: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       route_name: "ResourceName", # required
    #       spec: { # required
    #         priority: 1,
    #         http_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         tcp_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           timeout: {
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           },
    #           match: {
    #             port: 1
    #           }
    #         },
    #         http2_route: {
    #           match: { # required
    #             prefix: "String",
    #             path: {
    #               exact: "HttpPathExact",
    #               regex: "HttpPathRegex"
    #             },
    #             query_parameters: [
    #               {
    #                 name: "QueryParameterName", # required
    #                 match: {
    #                   exact: "String"
    #                 }
    #               }
    #             ],
    #             method: "HttpMethod",
    #             scheme: "HttpScheme",
    #             headers: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         },
    #         grpc_route: {
    #           action: { # required
    #             weighted_targets: [ # required
    #               {
    #                 virtual_node: "ResourceName", # required
    #                 weight: 1, # required
    #                 port: 1
    #               }
    #             ]
    #           },
    #           match: { # required
    #             service_name: "ServiceName",
    #             method_name: "MethodName",
    #             metadata: [
    #               {
    #                 name: "HeaderName", # required
    #                 invert: false,
    #                 match: {
    #                   # One of:
    #                   exact: "HeaderMatch",
    #                   regex: "HeaderMatch",
    #                   range: {
    #                     start: 1, # required
    #                     end: 1, # required
    #                   },
    #                   prefix: "HeaderMatch",
    #                   suffix: "HeaderMatch"
    #                 }
    #               }
    #             ],
    #             port: 1
    #           },
    #           retry_policy: {
    #             per_retry_timeout: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_retries: 1, # required
    #             http_retry_events: ["HttpRetryPolicyEvent"],
    #             tcp_retry_events: ["TcpRetryPolicyEvent"],
    #             grpc_retry_events: ["GrpcRetryPolicyEvent"]
    #           },
    #           timeout: {
    #             per_request: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             idle: {
    #               value: 1,
    #               unit: "DurationUnit"
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "RouteStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateRouteOperationOutput]
    def update_route(params = {}, options = {})
      request = build_request(:update_route, params)
      request.send_request(options)
    end

    # <p>Updates an existing virtual gateway in a specified service mesh.</p>
    # @param [Hash, Types::UpdateVirtualGatewayOperationInput] params
    # @option params [String] :virtual_gateway_name
    #   <p>The name of the virtual gateway to update.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual gateway resides in.</p>
    # @option params [Types::VirtualGatewaySpec] :spec
    #   <p>The new virtual gateway specification to apply. This overwrites the existing
    #            data.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_gateway_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             certificate: {
    #               # One of:
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "VirtualGatewaySdsSecretName", # required
    #               }
    #             },
    #             validation: { # required
    #               trust: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       listeners: [ # required
    #         {
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: "VirtualGatewayPortProtocol", # required
    #             port: 1,
    #             path: "String",
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "VirtualGatewayPortProtocol", # required
    #           },
    #           tls: {
    #             mode: "VirtualGatewayListenerTlsMode", # required
    #             validation: {
    #               trust: { # required
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             },
    #             certificate: { # required
    #               # One of:
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "VirtualGatewaySdsSecretName", # required
    #               }
    #             }
    #           },
    #           connection_pool: {
    #             # One of:
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1, # required
    #             },
    #             grpc: {
    #               max_requests: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: "FilePath", # required
    #             format: {
    #               # One of:
    #               text: "TextFormat",
    #               json: [
    #                 {
    #                   key: "JsonKey", # required
    #                   value: "JsonValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_virtual_gateway(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_gateway: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_gateway_name: "ResourceName", # required
    #       spec: { # required
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         listeners: [ # required
    #           {
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "VirtualGatewayPortProtocol", # required
    #             },
    #             tls: {
    #               mode: "VirtualGatewayListenerTlsMode", # required
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "VirtualGatewaySdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               },
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "VirtualGatewaySdsSecretName", # required
    #                 }
    #               }
    #             },
    #             connection_pool: {
    #               # One of:
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualGatewayStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateVirtualGatewayOperationOutput]
    def update_virtual_gateway(params = {}, options = {})
      request = build_request(:update_virtual_gateway, params)
      request.send_request(options)
    end

    # <p>Updates an existing virtual node in a specified service mesh.</p>
    # @param [Hash, Types::UpdateVirtualNodeOperationInput] params
    # @option params [String] :virtual_node_name
    #   <p>The name of the virtual node to update.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual node resides in.</p>
    # @option params [Types::VirtualNodeSpec] :spec
    #   <p>The new virtual node specification to apply. This overwrites the existing data.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_node_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       service_discovery: {
    #         # One of:
    #         dns: {
    #           hostname: "Hostname", # required
    #           response_type: "DnsResponseType",
    #           ip_preference: "IpPreference"
    #         },
    #         aws_cloud_map: {
    #           namespace_name: "AwsCloudMapName", # required
    #           service_name: "AwsCloudMapName", # required
    #           attributes: [
    #             {
    #               key: "AwsCloudMapInstanceAttributeKey", # required
    #               value: "AwsCloudMapInstanceAttributeValue", # required
    #             }
    #           ],
    #           ip_preference: "IpPreference"
    #         }
    #       },
    #       listeners: [
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "PortProtocol", # required
    #           },
    #           tls: {
    #             mode: "ListenerTlsMode", # required
    #             certificate: { # required
    #               # One of:
    #               acm: {
    #                 certificate_arn: "Arn", # required
    #               },
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "SdsSecretName", # required
    #               }
    #             },
    #             validation: {
    #               trust: { # required
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             }
    #           },
    #           health_check: {
    #             timeout_millis: 1, # required
    #             interval_millis: 1, # required
    #             protocol: "PortProtocol", # required
    #             port: 1,
    #             path: "String",
    #             healthy_threshold: 1, # required
    #             unhealthy_threshold: 1, # required
    #           },
    #           timeout: {
    #             # One of:
    #             tcp: {
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             },
    #             http: {
    #               per_request: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             },
    #             http2: {
    #               per_request: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             },
    #             grpc: {
    #               per_request: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               idle: {
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               }
    #             }
    #           },
    #           outlier_detection: {
    #             max_server_errors: 1, # required
    #             interval: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             base_ejection_duration: { # required
    #               value: 1,
    #               unit: "DurationUnit"
    #             },
    #             max_ejection_percent: 1, # required
    #           },
    #           connection_pool: {
    #             # One of:
    #             tcp: {
    #               max_connections: 1, # required
    #             },
    #             http: {
    #               max_connections: 1, # required
    #               max_pending_requests: 1
    #             },
    #             http2: {
    #               max_requests: 1, # required
    #             },
    #             grpc: {
    #               max_requests: 1, # required
    #             }
    #           }
    #         }
    #       ],
    #       backends: [{
    #         # One of:
    #         virtual_service: {
    #           virtual_service_name: "ServiceName", # required
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       }],
    #       backend_defaults: {
    #         client_policy: {
    #           tls: {
    #             enforce: false,
    #             ports: [1],
    #             certificate: {
    #               # One of:
    #               file: {
    #                 certificate_chain: "FilePath", # required
    #                 private_key: "FilePath", # required
    #               },
    #               sds: {
    #                 secret_name: "SdsSecretName", # required
    #               }
    #             },
    #             validation: { # required
    #               trust: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_authority_arns: ["Arn"], # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               subject_alternative_names: {
    #                 match: { # required
    #                   exact: ["SubjectAlternativeName"], # required
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       logging: {
    #         access_log: {
    #           # One of:
    #           file: {
    #             path: "FilePath", # required
    #             format: {
    #               # One of:
    #               text: "TextFormat",
    #               json: [
    #                 {
    #                   key: "JsonKey", # required
    #                   value: "JsonValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     },
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_virtual_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_node: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_node_name: "ResourceName", # required
    #       spec: { # required
    #         service_discovery: {
    #           # One of:
    #           dns: {
    #             hostname: "Hostname", # required
    #             response_type: "DnsResponseType",
    #             ip_preference: "IpPreference"
    #           },
    #           aws_cloud_map: {
    #             namespace_name: "AwsCloudMapName", # required
    #             service_name: "AwsCloudMapName", # required
    #             attributes: [
    #               {
    #                 key: "AwsCloudMapInstanceAttributeKey", # required
    #                 value: "AwsCloudMapInstanceAttributeValue", # required
    #               }
    #             ],
    #             ip_preference: "IpPreference"
    #           }
    #         },
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             },
    #             tls: {
    #               mode: "ListenerTlsMode", # required
    #               certificate: { # required
    #                 # One of:
    #                 acm: {
    #                   certificate_arn: "Arn", # required
    #                 },
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: {
    #                 trust: { # required
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             },
    #             health_check: {
    #               timeout_millis: 1, # required
    #               interval_millis: 1, # required
    #               protocol: "PortProtocol", # required
    #               port: 1,
    #               path: "String",
    #               healthy_threshold: 1, # required
    #               unhealthy_threshold: 1, # required
    #             },
    #             timeout: {
    #               # One of:
    #               tcp: {
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               http2: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               },
    #               grpc: {
    #                 per_request: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 },
    #                 idle: {
    #                   value: 1,
    #                   unit: "DurationUnit"
    #                 }
    #               }
    #             },
    #             outlier_detection: {
    #               max_server_errors: 1, # required
    #               interval: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               base_ejection_duration: { # required
    #                 value: 1,
    #                 unit: "DurationUnit"
    #               },
    #               max_ejection_percent: 1, # required
    #             },
    #             connection_pool: {
    #               # One of:
    #               tcp: {
    #                 max_connections: 1, # required
    #               },
    #               http: {
    #                 max_connections: 1, # required
    #                 max_pending_requests: 1
    #               },
    #               http2: {
    #                 max_requests: 1, # required
    #               },
    #               grpc: {
    #                 max_requests: 1, # required
    #               }
    #             }
    #           }
    #         ],
    #         backends: [{
    #           # One of:
    #           virtual_service: {
    #             virtual_service_name: "ServiceName", # required
    #             client_policy: {
    #               tls: {
    #                 enforce: false,
    #                 ports: [1],
    #                 certificate: {
    #                   # One of:
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                     private_key: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 validation: { # required
    #                   trust: { # required
    #                     # One of:
    #                     acm: {
    #                       certificate_authority_arns: ["Arn"], # required
    #                     },
    #                     file: {
    #                       certificate_chain: "FilePath", # required
    #                     },
    #                     sds: {
    #                       secret_name: "SdsSecretName", # required
    #                     }
    #                   },
    #                   subject_alternative_names: {
    #                     match: { # required
    #                       exact: ["SubjectAlternativeName"], # required
    #                     }
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         }],
    #         backend_defaults: {
    #           client_policy: {
    #             tls: {
    #               enforce: false,
    #               ports: [1],
    #               certificate: {
    #                 # One of:
    #                 file: {
    #                   certificate_chain: "FilePath", # required
    #                   private_key: "FilePath", # required
    #                 },
    #                 sds: {
    #                   secret_name: "SdsSecretName", # required
    #                 }
    #               },
    #               validation: { # required
    #                 trust: { # required
    #                   # One of:
    #                   acm: {
    #                     certificate_authority_arns: ["Arn"], # required
    #                   },
    #                   file: {
    #                     certificate_chain: "FilePath", # required
    #                   },
    #                   sds: {
    #                     secret_name: "SdsSecretName", # required
    #                   }
    #                 },
    #                 subject_alternative_names: {
    #                   match: { # required
    #                     exact: ["SubjectAlternativeName"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         logging: {
    #           access_log: {
    #             # One of:
    #             file: {
    #               path: "FilePath", # required
    #               format: {
    #                 # One of:
    #                 text: "TextFormat",
    #                 json: [
    #                   {
    #                     key: "JsonKey", # required
    #                     value: "JsonValue", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualNodeStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateVirtualNodeOperationOutput]
    def update_virtual_node(params = {}, options = {})
      request = build_request(:update_virtual_node, params)
      request.send_request(options)
    end

    # <p>Updates an existing virtual router in a specified service mesh.</p>
    # @param [Hash, Types::UpdateVirtualRouterOperationInput] params
    # @option params [String] :virtual_router_name
    #   <p>The name of the virtual router to update.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual router resides in.</p>
    # @option params [Types::VirtualRouterSpec] :spec
    #   <p>The new virtual router specification to apply. This overwrites the existing data.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_router_name: "ResourceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       listeners: [
    #         {
    #           port_mapping: { # required
    #             port: 1, # required
    #             protocol: "PortProtocol", # required
    #           }
    #         }
    #       ]
    #     },
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_virtual_router(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_router: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_router_name: "ResourceName", # required
    #       spec: { # required
    #         listeners: [
    #           {
    #             port_mapping: { # required
    #               port: 1, # required
    #               protocol: "PortProtocol", # required
    #             }
    #           }
    #         ]
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualRouterStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateVirtualRouterOperationOutput]
    def update_virtual_router(params = {}, options = {})
      request = build_request(:update_virtual_router, params)
      request.send_request(options)
    end

    # <p>Updates an existing virtual service in a specified service mesh.</p>
    # @param [Hash, Types::UpdateVirtualServiceOperationInput] params
    # @option params [String] :virtual_service_name
    #   <p>The name of the virtual service to update.</p>
    # @option params [String] :mesh_name
    #   <p>The name of the service mesh that the virtual service resides in.</p>
    # @option params [Types::VirtualServiceSpec] :spec
    #   <p>The new virtual service specification to apply. This overwrites the existing
    #            data.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #   request. Up to 36 letters, numbers, hyphens, and underscores are allowed.</p>
    # @option params [String] :mesh_owner
    #   <p>The Amazon Web Services IAM account ID of the service mesh owner. If the account ID is not your own, then it's
    #                  the ID of the account that shared the mesh with your account. For more information about mesh sharing, see <a href="https://docs.aws.amazon.com/app-mesh/latest/userguide/sharing.html">Working with shared meshes</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_service_name: "ServiceName", # required
    #     mesh_name: "ResourceName", # required
    #     spec: { # required
    #       provider: {
    #         # One of:
    #         virtual_node: {
    #           virtual_node_name: "ResourceName", # required
    #         },
    #         virtual_router: {
    #           virtual_router_name: "ResourceName", # required
    #         }
    #       }
    #     },
    #     client_token: "String",
    #     mesh_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.update_virtual_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_service: { # required
    #       mesh_name: "ResourceName", # required
    #       virtual_service_name: "ServiceName", # required
    #       spec: { # required
    #         provider: {
    #           # One of:
    #           virtual_node: {
    #             virtual_node_name: "ResourceName", # required
    #           },
    #           virtual_router: {
    #             virtual_router_name: "ResourceName", # required
    #           }
    #         }
    #       },
    #       metadata: { # required
    #         arn: "Arn", # required
    #         version: 1, # required
    #         uid: "String", # required
    #         created_at: Time.now, # required
    #         last_updated_at: Time.now, # required
    #         mesh_owner: "AccountId", # required
    #         resource_owner: "AccountId", # required
    #       },
    #       status: { # required
    #         status: "VirtualServiceStatusCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateVirtualServiceOperationOutput]
    def update_virtual_service(params = {}, options = {})
      request = build_request(:update_virtual_service, params)
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
      context[:gem_name] = 'aws-sdk-appmesh'
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
