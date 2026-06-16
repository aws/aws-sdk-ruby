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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:amplifyuibuilder)

module Aws::AmplifyUIBuilder
  # An API client for Aws::AmplifyUIBuilder.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmplifyUIBuilder
    @identifier = :amplifyuibuilder

    add_plugin(::Aws::AmplifyUIBuilder::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AmplifyUIBuilder::EndpointProvider)
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

    # <p>Creates a new component for an Amplify app.</p>
    # @param [Hash, Types::CreateComponentInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to associate with the component.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    # @option params [Types::CreateComponentData] :component_to_create
    #   <p>Represents the configuration of the component to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     component_to_create: { # required
    #       name: "ComponentName", # required
    #       source_id: "String",
    #       component_type: "ComponentType", # required
    #       properties: { # required
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             }
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             }
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String"
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String"
    #         }
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             }
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 }
    #               },
    #               binding_event: "String"
    #             }
    #           },
    #           source_id: "String"
    #         }
    #       ],
    #       variants: [ # required
    #         {
    #           variant_values: {
    #             "String" => "String"
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       overrides: { # required
    #         "String" => {
    #           "String" => "String"
    #         }
    #       },
    #       binding_properties: { # required
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType"
    #               }
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String"
    #           },
    #           default_value: "String"
    #         }
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC" # One of: ["ASC", "DESC"], # required
    #             }
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType"
    #           },
    #           identifiers: ["String"]
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             }
    #           },
    #           binding_event: "String"
    #         }
    #       },
    #       schema_version: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       source_id: "String",
    #       id: "Uuid", # required
    #       name: "ComponentName", # required
    #       component_type: "ComponentType", # required
    #       properties: { # required
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             }
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             }
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String"
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String"
    #         }
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             }
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 }
    #               },
    #               binding_event: "String"
    #             }
    #           },
    #           source_id: "String"
    #         }
    #       ],
    #       variants: [ # required
    #         {
    #           variant_values: {
    #             "String" => "String"
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       overrides: { # required
    #         "String" => {
    #           "String" => "String"
    #         }
    #       },
    #       binding_properties: { # required
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType"
    #               }
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String"
    #           },
    #           default_value: "String"
    #         }
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC" # One of: ["ASC", "DESC"], # required
    #             }
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType"
    #           },
    #           identifiers: ["String"]
    #         }
    #       },
    #       created_at: Time.now, # required
    #       modified_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             }
    #           },
    #           binding_event: "String"
    #         }
    #       },
    #       schema_version: "String"
    #     }
    #   }
    # @return [Types::CreateComponentOutput]
    def create_component(params = {}, options = {})
      request = build_request(:create_component, params)
      request.send_request(options)
    end

    # <p>Creates a new form for an Amplify app.</p>
    # @param [Hash, Types::CreateFormInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to associate with the form.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    # @option params [Types::CreateFormData] :form_to_create
    #   <p>Represents the configuration of the form to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     form_to_create: { # required
    #       name: "FormName", # required
    #       data_type: { # required
    #         data_source_type: "FormDataSourceType", # required
    #         data_type_name: "String", # required
    #       },
    #       form_action_type: "create" # One of: ["create", "update"], # required
    #       fields: { # required
    #         "String" => {
    #           label: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   }
    #                 }
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String"
    #                   }
    #                 }
    #               }
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public" # One of: ["public", "protected", "private"], # required
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1
    #             }
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String"
    #             }
    #           ]
    #         }
    #       },
    #       style: { # required
    #         horizontal_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         vertical_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         outer_padding: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         }
    #       },
    #       sectional_elements: { # required
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false
    #         }
    #       },
    #       schema_version: "String", # required
    #       cta: {
    #         position: "top" # One of: ["top", "bottom", "top_and_bottom"],
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       label_decorator: "LabelDecorator"
    #     }
    #   }
    #   options = {}
    #   response = client.create_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       id: "Uuid", # required
    #       name: "FormName", # required
    #       form_action_type: "create" # One of: ["create", "update"], # required
    #       style: { # required
    #         horizontal_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         vertical_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         outer_padding: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         }
    #       },
    #       data_type: { # required
    #         data_source_type: "FormDataSourceType", # required
    #         data_type_name: "String", # required
    #       },
    #       fields: { # required
    #         "String" => {
    #           label: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   }
    #                 }
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String"
    #                   }
    #                 }
    #               }
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public" # One of: ["public", "protected", "private"], # required
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1
    #             }
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String"
    #             }
    #           ]
    #         }
    #       },
    #       sectional_elements: { # required
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false
    #         }
    #       },
    #       schema_version: "String", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       cta: {
    #         position: "top" # One of: ["top", "bottom", "top_and_bottom"],
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         }
    #       },
    #       label_decorator: "LabelDecorator"
    #     }
    #   }
    # @return [Types::CreateFormOutput]
    def create_form(params = {}, options = {})
      request = build_request(:create_form, params)
      request.send_request(options)
    end

    # <p>Creates a theme to apply to the components in an Amplify app.</p>
    # @param [Hash, Types::CreateThemeInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the theme.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    # @option params [Types::CreateThemeData] :theme_to_create
    #   <p>Represents the configuration of the theme to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     theme_to_create: { # required
    #       name: "ThemeName", # required
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_theme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       id: "Uuid", # required
    #       name: "ThemeName", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now,
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateThemeOutput]
    def create_theme(params = {}, options = {})
      request = build_request(:create_theme, params)
      request.send_request(options)
    end

    # <p>Deletes a component from an Amplify app.</p>
    # @param [Hash, Types::DeleteComponentInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the component to
    #         delete.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :id
    #   <p>The unique ID of the component to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_component(params = {}, options = {})
      request = build_request(:delete_component, params)
      request.send_request(options)
    end

    # <p>Deletes a form from an Amplify app.</p>
    # @param [Hash, Types::DeleteFormInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the form to delete.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID of the form to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_form(params = {}, options = {})
      request = build_request(:delete_form, params)
      request.send_request(options)
    end

    # <p>Deletes a theme from an Amplify app.</p>
    # @param [Hash, Types::DeleteThemeInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the theme to
    #         delete.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :id
    #   <p>The unique ID of the theme to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_theme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_theme(params = {}, options = {})
      request = build_request(:delete_theme, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is for internal use.</p>
    #          </note>
    #          <p>Amplify uses this action to exchange an access code for a token.</p>
    # @param [Hash, Types::ExchangeCodeForTokenInput] params
    # @option params [String] :provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    # @option params [Types::ExchangeCodeForTokenRequestBody] :request
    #   <p>Describes the configuration of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "TokenProviders", # required
    #     request: { # required
    #       code: "SensitiveString", # required
    #       redirect_uri: "String", # required
    #       client_id: "SensitiveString"
    #     }
    #   }
    #   options = {}
    #   response = client.exchange_code_for_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_token: "SensitiveString", # required
    #     expires_in: 1, # required
    #     refresh_token: "SensitiveString", # required
    #   }
    # @return [Types::ExchangeCodeForTokenOutput]
    def exchange_code_for_token(params = {}, options = {})
      request = build_request(:exchange_code_for_token, params)
      request.send_request(options)
    end

    # <p>Exports component configurations to code that is ready to integrate into an Amplify app.</p>
    # @param [Hash, Types::ExportComponentsInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to export components to.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.export_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         source_id: "String",
    #         id: "Uuid", # required
    #         name: "ComponentName", # required
    #         component_type: "ComponentType", # required
    #         properties: { # required
    #           "String" => {
    #             value: "String",
    #             binding_properties: {
    #               property: "String", # required
    #               field: "String"
    #             },
    #             collection_binding_properties: {
    #               property: "String", # required
    #               field: "String"
    #             },
    #             default_value: "String",
    #             model: "String",
    #             bindings: {
    #               "String" => {
    #                 element: "String", # required
    #                 property: "String", # required
    #               }
    #             },
    #             event: "String",
    #             user_attribute: "String",
    #             concat: [
    #               {
    #                 # recursive ComponentProperty
    #               }
    #             ],
    #             condition: {
    #               property: "String",
    #               field: "String",
    #               operator: "String",
    #               operand: "String",
    #               then: {
    #                 # recursive ComponentProperty
    #               },
    #               else: {
    #                 # recursive ComponentProperty
    #               },
    #               operand_type: "String"
    #             },
    #             configured: false,
    #             type: "String",
    #             imported_value: "String",
    #             component_name: "String",
    #             property: "String"
    #           }
    #         },
    #         children: [
    #           {
    #             component_type: "String", # required
    #             name: "String", # required
    #             properties: { # required
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             },
    #             children: {
    #               # recursive ComponentChildList
    #             },
    #             events: {
    #               "String" => {
    #                 action: "String",
    #                 parameters: {
    #                   type: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   },
    #                   url: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   },
    #                   anchor: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   },
    #                   target: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   },
    #                   global: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   },
    #                   model: "String",
    #                   id: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   },
    #                   fields: {
    #                     "String" => {
    #                       value: "String",
    #                       binding_properties: {
    #                         property: "String", # required
    #                         field: "String"
    #                       },
    #                       collection_binding_properties: {
    #                         property: "String", # required
    #                         field: "String"
    #                       },
    #                       default_value: "String",
    #                       model: "String",
    #                       bindings: {
    #                         "String" => {
    #                           element: "String", # required
    #                           property: "String", # required
    #                         }
    #                       },
    #                       event: "String",
    #                       user_attribute: "String",
    #                       concat: [
    #                         {
    #                           # recursive ComponentProperty
    #                         }
    #                       ],
    #                       condition: {
    #                         property: "String",
    #                         field: "String",
    #                         operator: "String",
    #                         operand: "String",
    #                         then: {
    #                           # recursive ComponentProperty
    #                         },
    #                         else: {
    #                           # recursive ComponentProperty
    #                         },
    #                         operand_type: "String"
    #                       },
    #                       configured: false,
    #                       type: "String",
    #                       imported_value: "String",
    #                       component_name: "String",
    #                       property: "String"
    #                     }
    #                   },
    #                   state: {
    #                     component_name: "String", # required
    #                     property: "String", # required
    #                     set: { # required
    #                       value: "String",
    #                       binding_properties: {
    #                         property: "String", # required
    #                         field: "String"
    #                       },
    #                       collection_binding_properties: {
    #                         property: "String", # required
    #                         field: "String"
    #                       },
    #                       default_value: "String",
    #                       model: "String",
    #                       bindings: {
    #                         "String" => {
    #                           element: "String", # required
    #                           property: "String", # required
    #                         }
    #                       },
    #                       event: "String",
    #                       user_attribute: "String",
    #                       concat: [
    #                         {
    #                           # recursive ComponentProperty
    #                         }
    #                       ],
    #                       condition: {
    #                         property: "String",
    #                         field: "String",
    #                         operator: "String",
    #                         operand: "String",
    #                         then: {
    #                           # recursive ComponentProperty
    #                         },
    #                         else: {
    #                           # recursive ComponentProperty
    #                         },
    #                         operand_type: "String"
    #                       },
    #                       configured: false,
    #                       type: "String",
    #                       imported_value: "String",
    #                       component_name: "String",
    #                       property: "String"
    #                     }
    #                   }
    #                 },
    #                 binding_event: "String"
    #               }
    #             },
    #             source_id: "String"
    #           }
    #         ],
    #         variants: [ # required
    #           {
    #             variant_values: {
    #               "String" => "String"
    #             },
    #             overrides: {
    #               "String" => {
    #                 "String" => "String"
    #               }
    #             }
    #           }
    #         ],
    #         overrides: { # required
    #           "String" => {
    #             "String" => "String"
    #           }
    #         },
    #         binding_properties: { # required
    #           "String" => {
    #             type: "String",
    #             binding_properties: {
    #               model: "String",
    #               field: "String",
    #               predicates: [
    #                 {
    #                   or: {
    #                     # recursive PredicateList
    #                   },
    #                   and: {
    #                     # recursive PredicateList
    #                   },
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   operand_type: "OperandType"
    #                 }
    #               ],
    #               user_attribute: "String",
    #               bucket: "String",
    #               key: "String",
    #               default_value: "String",
    #               slot_name: "String"
    #             },
    #             default_value: "String"
    #           }
    #         },
    #         collection_properties: {
    #           "String" => {
    #             model: "String", # required
    #             sort: [
    #               {
    #                 field: "String", # required
    #                 direction: "ASC" # One of: ["ASC", "DESC"], # required
    #               }
    #             ],
    #             predicate: {
    #               or: [
    #                 {
    #                   # recursive Predicate
    #                 }
    #               ],
    #               and: [
    #                 {
    #                   # recursive Predicate
    #                 }
    #               ],
    #               field: "String",
    #               operator: "String",
    #               operand: "String",
    #               operand_type: "OperandType"
    #             },
    #             identifiers: ["String"]
    #           }
    #         },
    #         created_at: Time.now, # required
    #         modified_at: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         events: {
    #           "String" => {
    #             action: "String",
    #             parameters: {
    #               type: {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               },
    #               url: {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               },
    #               anchor: {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               },
    #               target: {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               },
    #               global: {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               },
    #               model: "String",
    #               id: {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               },
    #               fields: {
    #                 "String" => {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 }
    #               },
    #               state: {
    #                 component_name: "String", # required
    #                 property: "String", # required
    #                 set: { # required
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 }
    #               }
    #             },
    #             binding_event: "String"
    #           }
    #         },
    #         schema_version: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ExportComponentsOutput]
    def export_components(params = {}, options = {})
      request = build_request(:export_components, params)
      request.send_request(options)
    end

    # <p>Exports form configurations to code that is ready to integrate into an Amplify app.</p>
    # @param [Hash, Types::ExportFormsInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to export forms to.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.export_forms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         name: "FormName", # required
    #         form_action_type: "create" # One of: ["create", "update"], # required
    #         style: { # required
    #           horizontal_gap: {
    #             # One of:
    #             token_reference: "String",
    #             value: "String"
    #           },
    #           vertical_gap: {
    #             # One of:
    #             token_reference: "String",
    #             value: "String"
    #           },
    #           outer_padding: {
    #             # One of:
    #             token_reference: "String",
    #             value: "String"
    #           }
    #         },
    #         data_type: { # required
    #           data_source_type: "FormDataSourceType", # required
    #           data_type_name: "String", # required
    #         },
    #         fields: { # required
    #           "String" => {
    #             label: "String",
    #             position: {
    #               # One of:
    #               fixed: "first" # One of: ["first"],
    #               right_of: "String",
    #               below: "String"
    #             },
    #             excluded: false,
    #             input_type: {
    #               type: "String", # required
    #               required: false,
    #               read_only: false,
    #               placeholder: "String",
    #               default_value: "String",
    #               descriptive_text: "String",
    #               default_checked: false,
    #               default_country_code: "String",
    #               value_mappings: {
    #                 values: [ # required
    #                   {
    #                     display_value: {
    #                       value: "String",
    #                       binding_properties: {
    #                         property: "String", # required
    #                         field: "String"
    #                       },
    #                       concat: [
    #                         {
    #                           # recursive FormInputValueProperty
    #                         }
    #                       ]
    #                     },
    #                     value: { # required
    #                       value: "String",
    #                       binding_properties: {
    #                         property: "String", # required
    #                         field: "String"
    #                       },
    #                       concat: [
    #                         {
    #                           # recursive FormInputValueProperty
    #                         }
    #                       ]
    #                     }
    #                   }
    #                 ],
    #                 binding_properties: {
    #                   "String" => {
    #                     type: "String",
    #                     binding_properties: {
    #                       model: "String"
    #                     }
    #                   }
    #                 }
    #               },
    #               name: "String",
    #               min_value: 1.0,
    #               max_value: 1.0,
    #               step: 1.0,
    #               value: "String",
    #               is_array: false,
    #               file_uploader_config: {
    #                 access_level: "public" # One of: ["public", "protected", "private"], # required
    #                 accepted_file_types: ["String"], # required
    #                 show_thumbnails: false,
    #                 is_resumable: false,
    #                 max_file_count: 1,
    #                 max_size: 1
    #               }
    #             },
    #             validations: [
    #               {
    #                 type: "String", # required
    #                 str_values: ["String"],
    #                 num_values: [1],
    #                 validation_message: "String"
    #               }
    #             ]
    #           }
    #         },
    #         sectional_elements: { # required
    #           "String" => {
    #             type: "String", # required
    #             position: {
    #               # One of:
    #               fixed: "first" # One of: ["first"],
    #               right_of: "String",
    #               below: "String"
    #             },
    #             text: "String",
    #             level: 1,
    #             orientation: "String",
    #             excluded: false
    #           }
    #         },
    #         schema_version: "String", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         cta: {
    #           position: "top" # One of: ["top", "bottom", "top_and_bottom"],
    #           clear: {
    #             excluded: false,
    #             children: "String",
    #             position: {
    #               # One of:
    #               fixed: "first" # One of: ["first"],
    #               right_of: "String",
    #               below: "String"
    #             }
    #           },
    #           cancel: {
    #             excluded: false,
    #             children: "String",
    #             position: {
    #               # One of:
    #               fixed: "first" # One of: ["first"],
    #               right_of: "String",
    #               below: "String"
    #             }
    #           },
    #           submit: {
    #             excluded: false,
    #             children: "String",
    #             position: {
    #               # One of:
    #               fixed: "first" # One of: ["first"],
    #               right_of: "String",
    #               below: "String"
    #             }
    #           }
    #         },
    #         label_decorator: "LabelDecorator"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ExportFormsOutput]
    def export_forms(params = {}, options = {})
      request = build_request(:export_forms, params)
      request.send_request(options)
    end

    # <p>Exports theme configurations to code that is ready to integrate into an Amplify app.</p>
    # @param [Hash, Types::ExportThemesInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to export the themes to.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.export_themes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         name: "ThemeName", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now,
    #         values: [ # required
    #           {
    #             key: "String",
    #             value: {
    #               value: "String",
    #               children: {
    #                 # recursive ThemeValuesList
    #               }
    #             }
    #           }
    #         ],
    #         overrides: [
    #           {
    #             key: "String",
    #             value: {
    #               value: "String",
    #               children: {
    #                 # recursive ThemeValuesList
    #               }
    #             }
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ExportThemesOutput]
    def export_themes(params = {}, options = {})
      request = build_request(:export_themes, params)
      request.send_request(options)
    end

    # <p>Returns an existing code generation job.</p>
    # @param [Hash, Types::GetCodegenJobRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the code generation job.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app associated with the code generation job.</p>
    # @option params [String] :id
    #   <p>The unique ID of the code generation job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_codegen_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       id: "Uuid", # required
    #       app_id: "AppId", # required
    #       environment_name: "String", # required
    #       render_config: {
    #         # One of:
    #         react: {
    #           module: "es2020" # One of: ["es2020", "esnext"],
    #           target: "es2015" # One of: ["es2015", "es2020"],
    #           script: "jsx" # One of: ["jsx", "tsx", "js"],
    #           render_type_declarations: false,
    #           inline_source_map: false,
    #           api_configuration: {
    #             # One of:
    #             graph_ql_config: {
    #               types_file_path: "String", # required
    #               queries_file_path: "String", # required
    #               mutations_file_path: "String", # required
    #               subscriptions_file_path: "String", # required
    #               fragments_file_path: "String", # required
    #             },
    #             data_store_config: {
    #             },
    #             no_api_config: {
    #             }
    #           },
    #           dependencies: {
    #             "String" => "String"
    #           }
    #         }
    #       },
    #       generic_data_schema: {
    #         data_source_type: "DataStore" # One of: ["DataStore"], # required
    #         models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID" # One of: ["ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"], # required
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY" # One of: ["HAS_MANY", "HAS_ONE", "BELONGS_TO"], # required
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false
    #                 }
    #               }
    #             },
    #             is_join_table: false,
    #             primary_keys: ["String"], # required
    #           }
    #         },
    #         enums: { # required
    #           "String" => {
    #             values: ["String"], # required
    #           }
    #         },
    #         non_models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID" # One of: ["ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"], # required
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY" # One of: ["HAS_MANY", "HAS_ONE", "BELONGS_TO"], # required
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       auto_generate_forms: false,
    #       features: {
    #         is_relationship_supported: false,
    #         is_non_model_supported: false
    #       },
    #       status: "in_progress" # One of: ["in_progress", "failed", "succeeded"],
    #       status_message: "String",
    #       asset: {
    #         download_url: "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       dependencies: [
    #         {
    #           name: "String",
    #           supported_version: "String",
    #           is_sem_ver: false,
    #           reason: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetCodegenJobResponse]
    def get_codegen_job(params = {}, options = {})
      request = build_request(:get_codegen_job, params)
      request.send_request(options)
    end

    # <p>Returns an existing component for an Amplify app.</p>
    # @param [Hash, Types::GetComponentInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID of the component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     component: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       source_id: "String",
    #       id: "Uuid", # required
    #       name: "ComponentName", # required
    #       component_type: "ComponentType", # required
    #       properties: { # required
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             }
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             }
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String"
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String"
    #         }
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             }
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 }
    #               },
    #               binding_event: "String"
    #             }
    #           },
    #           source_id: "String"
    #         }
    #       ],
    #       variants: [ # required
    #         {
    #           variant_values: {
    #             "String" => "String"
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       overrides: { # required
    #         "String" => {
    #           "String" => "String"
    #         }
    #       },
    #       binding_properties: { # required
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType"
    #               }
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String"
    #           },
    #           default_value: "String"
    #         }
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC" # One of: ["ASC", "DESC"], # required
    #             }
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType"
    #           },
    #           identifiers: ["String"]
    #         }
    #       },
    #       created_at: Time.now, # required
    #       modified_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             }
    #           },
    #           binding_event: "String"
    #         }
    #       },
    #       schema_version: "String"
    #     }
    #   }
    # @return [Types::GetComponentOutput]
    def get_component(params = {}, options = {})
      request = build_request(:get_component, params)
      request.send_request(options)
    end

    # <p>Returns an existing form for an Amplify app.</p>
    # @param [Hash, Types::GetFormInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID of the form.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     form: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       id: "Uuid", # required
    #       name: "FormName", # required
    #       form_action_type: "create" # One of: ["create", "update"], # required
    #       style: { # required
    #         horizontal_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         vertical_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         outer_padding: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         }
    #       },
    #       data_type: { # required
    #         data_source_type: "FormDataSourceType", # required
    #         data_type_name: "String", # required
    #       },
    #       fields: { # required
    #         "String" => {
    #           label: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   }
    #                 }
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String"
    #                   }
    #                 }
    #               }
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public" # One of: ["public", "protected", "private"], # required
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1
    #             }
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String"
    #             }
    #           ]
    #         }
    #       },
    #       sectional_elements: { # required
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false
    #         }
    #       },
    #       schema_version: "String", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       cta: {
    #         position: "top" # One of: ["top", "bottom", "top_and_bottom"],
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         }
    #       },
    #       label_decorator: "LabelDecorator"
    #     }
    #   }
    # @return [Types::GetFormOutput]
    def get_form(params = {}, options = {})
      request = build_request(:get_form, params)
      request.send_request(options)
    end

    # <p>Returns existing metadata for an Amplify app.</p>
    # @param [Hash, Types::GetMetadataInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     features: { # required
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetMetadataOutput]
    def get_metadata(params = {}, options = {})
      request = build_request(:get_metadata, params)
      request.send_request(options)
    end

    # <p>Returns an existing theme for an Amplify app.</p>
    # @param [Hash, Types::GetThemeInput] params
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID for the theme.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_theme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     theme: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       id: "Uuid", # required
    #       name: "ThemeName", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now,
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetThemeOutput]
    def get_theme(params = {}, options = {})
      request = build_request(:get_theme, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of code generation jobs for a specified Amplify app and backend environment.</p>
    # @param [Hash, Types::ListCodegenJobsRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_codegen_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "AppId", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         created_at: Time.now,
    #         modified_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCodegenJobsResponse]
    def list_codegen_jobs(params = {}, options = {})
      request = build_request(:list_codegen_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of components for a specified Amplify app and backend
    #       environment.</p>
    # @param [Hash, Types::ListComponentsInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of components to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_components(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         name: "ComponentName", # required
    #         component_type: "ComponentType", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListComponentsOutput]
    def list_components(params = {}, options = {})
      request = build_request(:list_components, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of forms for a specified Amplify app and backend environment.</p>
    # @param [Hash, Types::ListFormsInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of forms to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_forms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "String", # required
    #         data_type: { # required
    #           data_source_type: "FormDataSourceType", # required
    #           data_type_name: "String", # required
    #         },
    #         environment_name: "String", # required
    #         form_action_type: "create" # One of: ["create", "update"], # required
    #         id: "Uuid", # required
    #         name: "FormName", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFormsOutput]
    def list_forms(params = {}, options = {})
      request = build_request(:list_forms, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a specified Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of themes for a specified Amplify app and backend
    #       environment.</p>
    # @param [Hash, Types::ListThemesInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of theme results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_themes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         app_id: "String", # required
    #         environment_name: "String", # required
    #         id: "Uuid", # required
    #         name: "ThemeName", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListThemesOutput]
    def list_themes(params = {}, options = {})
      request = build_request(:list_themes, params)
      request.send_request(options)
    end

    # <p>Stores the metadata information about a feature on a form.</p>
    # @param [Hash, Types::PutMetadataFlagInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :feature_name
    #   <p>The name of the feature associated with the metadata.</p>
    # @option params [Types::PutMetadataFlagBody] :body
    #   <p>The metadata information to store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     feature_name: "String", # required
    #     body: { # required
    #       new_value: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_metadata_flag(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_metadata_flag(params = {}, options = {})
      request = build_request(:put_metadata_flag, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is for internal use.</p>
    #          </note>
    #          <p>Amplify uses this action to refresh a previously issued access token that might have expired.</p>
    # @param [Hash, Types::RefreshTokenInput] params
    # @option params [String] :provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    # @option params [Types::RefreshTokenRequestBody] :refresh_token_body
    #   <p>Information about the refresh token request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider: "TokenProviders", # required
    #     refresh_token_body: { # required
    #       token: "SensitiveString", # required
    #       client_id: "SensitiveString"
    #     }
    #   }
    #   options = {}
    #   response = client.refresh_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_token: "SensitiveString", # required
    #     expires_in: 1, # required
    #   }
    # @return [Types::RefreshTokenOutput]
    def refresh_token(params = {}, options = {})
      request = build_request(:refresh_token, params)
      request.send_request(options)
    end

    # <p>Starts a code generation job for a specified Amplify app and backend environment.</p>
    # @param [Hash, Types::StartCodegenJobRequest] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify app.</p>
    # @option params [String] :client_token
    #   <p>The idempotency token used to ensure that the code generation job request completes only once.</p>
    # @option params [Types::StartCodegenJobData] :codegen_job_to_create
    #   <p>The code generation job resource configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "AppId", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     codegen_job_to_create: { # required
    #       render_config: { # required
    #         # One of:
    #         react: {
    #           module: "es2020" # One of: ["es2020", "esnext"],
    #           target: "es2015" # One of: ["es2015", "es2020"],
    #           script: "jsx" # One of: ["jsx", "tsx", "js"],
    #           render_type_declarations: false,
    #           inline_source_map: false,
    #           api_configuration: {
    #             # One of:
    #             graph_ql_config: {
    #               types_file_path: "String", # required
    #               queries_file_path: "String", # required
    #               mutations_file_path: "String", # required
    #               subscriptions_file_path: "String", # required
    #               fragments_file_path: "String", # required
    #             },
    #             data_store_config: {
    #             },
    #             no_api_config: {
    #             }
    #           },
    #           dependencies: {
    #             "String" => "String"
    #           }
    #         }
    #       },
    #       generic_data_schema: {
    #         data_source_type: "DataStore" # One of: ["DataStore"], # required
    #         models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID" # One of: ["ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"], # required
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY" # One of: ["HAS_MANY", "HAS_ONE", "BELONGS_TO"], # required
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false
    #                 }
    #               }
    #             },
    #             is_join_table: false,
    #             primary_keys: ["String"], # required
    #           }
    #         },
    #         enums: { # required
    #           "String" => {
    #             values: ["String"], # required
    #           }
    #         },
    #         non_models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID" # One of: ["ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"], # required
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY" # One of: ["HAS_MANY", "HAS_ONE", "BELONGS_TO"], # required
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       auto_generate_forms: false,
    #       features: {
    #         is_relationship_supported: false,
    #         is_non_model_supported: false
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_codegen_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       id: "Uuid", # required
    #       app_id: "AppId", # required
    #       environment_name: "String", # required
    #       render_config: {
    #         # One of:
    #         react: {
    #           module: "es2020" # One of: ["es2020", "esnext"],
    #           target: "es2015" # One of: ["es2015", "es2020"],
    #           script: "jsx" # One of: ["jsx", "tsx", "js"],
    #           render_type_declarations: false,
    #           inline_source_map: false,
    #           api_configuration: {
    #             # One of:
    #             graph_ql_config: {
    #               types_file_path: "String", # required
    #               queries_file_path: "String", # required
    #               mutations_file_path: "String", # required
    #               subscriptions_file_path: "String", # required
    #               fragments_file_path: "String", # required
    #             },
    #             data_store_config: {
    #             },
    #             no_api_config: {
    #             }
    #           },
    #           dependencies: {
    #             "String" => "String"
    #           }
    #         }
    #       },
    #       generic_data_schema: {
    #         data_source_type: "DataStore" # One of: ["DataStore"], # required
    #         models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID" # One of: ["ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"], # required
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY" # One of: ["HAS_MANY", "HAS_ONE", "BELONGS_TO"], # required
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false
    #                 }
    #               }
    #             },
    #             is_join_table: false,
    #             primary_keys: ["String"], # required
    #           }
    #         },
    #         enums: { # required
    #           "String" => {
    #             values: ["String"], # required
    #           }
    #         },
    #         non_models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID" # One of: ["ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"], # required
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY" # One of: ["HAS_MANY", "HAS_ONE", "BELONGS_TO"], # required
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false
    #                 }
    #               }
    #             }
    #           }
    #         }
    #       },
    #       auto_generate_forms: false,
    #       features: {
    #         is_relationship_supported: false,
    #         is_non_model_supported: false
    #       },
    #       status: "in_progress" # One of: ["in_progress", "failed", "succeeded"],
    #       status_message: "String",
    #       asset: {
    #         download_url: "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_at: Time.now,
    #       modified_at: Time.now,
    #       dependencies: [
    #         {
    #           name: "String",
    #           supported_version: "String",
    #           is_sem_ver: false,
    #           reason: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::StartCodegenJobResponse]
    def start_codegen_job(params = {}, options = {})
      request = build_request(:start_codegen_job, params)
      request.send_request(options)
    end

    # <p>Tags the resource with a tag key and value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to tag a resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tag key value pairs for a specified Amazon Resource Name (ARN).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Untags a resource with a specified Amazon Resource Name (ARN).</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to untag a resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to use to untag a resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
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

    # <p>Updates an existing component.</p>
    # @param [Hash, Types::UpdateComponentInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID for the component.</p>
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    # @option params [Types::UpdateComponentData] :updated_component
    #   <p>The configuration of the updated component.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     client_token: "String",
    #     updated_component: { # required
    #       id: "Uuid",
    #       name: "ComponentName",
    #       source_id: "String",
    #       component_type: "ComponentType",
    #       properties: {
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             }
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             }
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String"
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String"
    #         }
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             }
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 }
    #               },
    #               binding_event: "String"
    #             }
    #           },
    #           source_id: "String"
    #         }
    #       ],
    #       variants: [
    #         {
    #           variant_values: {
    #             "String" => "String"
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       overrides: {
    #         "String" => {
    #           "String" => "String"
    #         }
    #       },
    #       binding_properties: {
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType"
    #               }
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String"
    #           },
    #           default_value: "String"
    #         }
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC" # One of: ["ASC", "DESC"], # required
    #             }
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType"
    #           },
    #           identifiers: ["String"]
    #         }
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             }
    #           },
    #           binding_event: "String"
    #         }
    #       },
    #       schema_version: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.update_component(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       source_id: "String",
    #       id: "Uuid", # required
    #       name: "ComponentName", # required
    #       component_type: "ComponentType", # required
    #       properties: { # required
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String"
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             }
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             }
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String"
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String"
    #         }
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             }
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String"
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     }
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     }
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String"
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String"
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       }
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       }
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String"
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String"
    #                   }
    #                 }
    #               },
    #               binding_event: "String"
    #             }
    #           },
    #           source_id: "String"
    #         }
    #       ],
    #       variants: [ # required
    #         {
    #           variant_values: {
    #             "String" => "String"
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String"
    #             }
    #           }
    #         }
    #       ],
    #       overrides: { # required
    #         "String" => {
    #           "String" => "String"
    #         }
    #       },
    #       binding_properties: { # required
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType"
    #               }
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String"
    #           },
    #           default_value: "String"
    #         }
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC" # One of: ["ASC", "DESC"], # required
    #             }
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               }
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType"
    #           },
    #           identifiers: ["String"]
    #         }
    #       },
    #       created_at: Time.now, # required
    #       modified_at: Time.now,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String"
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 }
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 }
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String"
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String"
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String"
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   }
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   }
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String"
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String"
    #               }
    #             }
    #           },
    #           binding_event: "String"
    #         }
    #       },
    #       schema_version: "String"
    #     }
    #   }
    # @return [Types::UpdateComponentOutput]
    def update_component(params = {}, options = {})
      request = build_request(:update_component, params)
      request.send_request(options)
    end

    # <p>Updates an existing form.</p>
    # @param [Hash, Types::UpdateFormInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID for the form.</p>
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    # @option params [Types::UpdateFormData] :updated_form
    #   <p>The request accepts the following data in JSON format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     client_token: "String",
    #     updated_form: { # required
    #       name: "FormName",
    #       data_type: {
    #         data_source_type: "FormDataSourceType", # required
    #         data_type_name: "String", # required
    #       },
    #       form_action_type: "create" # One of: ["create", "update"],
    #       fields: {
    #         "String" => {
    #           label: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   }
    #                 }
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String"
    #                   }
    #                 }
    #               }
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public" # One of: ["public", "protected", "private"], # required
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1
    #             }
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String"
    #             }
    #           ]
    #         }
    #       },
    #       style: {
    #         horizontal_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         vertical_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         outer_padding: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         }
    #       },
    #       sectional_elements: {
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false
    #         }
    #       },
    #       schema_version: "String",
    #       cta: {
    #         position: "top" # One of: ["top", "bottom", "top_and_bottom"],
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         }
    #       },
    #       label_decorator: "LabelDecorator"
    #     }
    #   }
    #   options = {}
    #   response = client.update_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       id: "Uuid", # required
    #       name: "FormName", # required
    #       form_action_type: "create" # One of: ["create", "update"], # required
    #       style: { # required
    #         horizontal_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         vertical_gap: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         },
    #         outer_padding: {
    #           # One of:
    #           token_reference: "String",
    #           value: "String"
    #         }
    #       },
    #       data_type: { # required
    #         data_source_type: "FormDataSourceType", # required
    #         data_type_name: "String", # required
    #       },
    #       fields: { # required
    #         "String" => {
    #           label: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String"
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       }
    #                     ]
    #                   }
    #                 }
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String"
    #                   }
    #                 }
    #               }
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public" # One of: ["public", "protected", "private"], # required
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1
    #             }
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String"
    #             }
    #           ]
    #         }
    #       },
    #       sectional_elements: { # required
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false
    #         }
    #       },
    #       schema_version: "String", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       cta: {
    #         position: "top" # One of: ["top", "bottom", "top_and_bottom"],
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             # One of:
    #             fixed: "first" # One of: ["first"],
    #             right_of: "String",
    #             below: "String"
    #           }
    #         }
    #       },
    #       label_decorator: "LabelDecorator"
    #     }
    #   }
    # @return [Types::UpdateFormOutput]
    def update_form(params = {}, options = {})
      request = build_request(:update_form, params)
      request.send_request(options)
    end

    # <p>Updates an existing theme.</p>
    # @param [Hash, Types::UpdateThemeInput] params
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    # @option params [String] :id
    #   <p>The unique ID for the theme.</p>
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    # @option params [Types::UpdateThemeData] :updated_theme
    #   <p>The configuration of the updated theme.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     client_token: "String",
    #     updated_theme: { # required
    #       id: "Uuid",
    #       name: "ThemeName",
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_theme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       app_id: "String", # required
    #       environment_name: "String", # required
    #       id: "Uuid", # required
    #       name: "ThemeName", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now,
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             }
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateThemeOutput]
    def update_theme(params = {}, options = {})
      request = build_request(:update_theme, params)
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
      context[:gem_name] = 'aws-sdk-amplifyuibuilder'
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
