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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:schemas)

module Aws::Schemas
  # An API client for Aws::Schemas.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Schemas
    @identifier = :schemas

    add_plugin(::Aws::Schemas::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Schemas::EndpointProvider)
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

    # <p>Creates a discoverer.</p>
    # @param [Hash, Types::CreateDiscovererRequest] params
    # @option params [String] :description
    #   <p>A description for the discoverer.</p>
    # @option params [String] :source_arn
    #   <p>The ARN of the event bus.</p>
    # @option params [Boolean] :cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true).</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__stringMin0Max256",
    #     source_arn: "__stringMin20Max1600", # required
    #     cross_account: false,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_discoverer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     discoverer_arn: "__string",
    #     discoverer_id: "__string",
    #     source_arn: "__string",
    #     state: "STARTED" # One of: ["STARTED", "STOPPED"],
    #     cross_account: false,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateDiscovererResponse]
    def create_discoverer(params = {}, options = {})
      request = build_request(:create_discoverer, params)
      request.send_request(options)
    end

    # <p>Creates a registry.</p>
    # @param [Hash, Types::CreateRegistryRequest] params
    # @option params [String] :description
    #   <p>A description of the registry to be created.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to associate with the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     registry_arn: "__string",
    #     registry_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::CreateRegistryResponse]
    def create_registry(params = {}, options = {})
      request = build_request(:create_registry, params)
      request.send_request(options)
    end

    # <p>Creates a schema definition.</p> <note><p>Inactive schemas will be deleted after two years.</p></note>
    # @param [Hash, Types::CreateSchemaRequest] params
    # @option params [String] :content
    #   <p>The source of the schema definition.</p>
    # @option params [String] :description
    #   <p>A description of the schema.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the schema.</p>
    # @option params [String] :type
    #   <p>The type of schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content: "__stringMin1Max100000", # required
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     type: "OpenApi3" # One of: ["OpenApi3", "JSONSchemaDraft4"], # required
    #   }
    #   options = {}
    #   response = client.create_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     last_modified: Time.now,
    #     schema_arn: "__string",
    #     schema_name: "__string",
    #     schema_version: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     type: "__string",
    #     version_created_date: Time.now
    #   }
    # @return [Types::CreateSchemaResponse]
    def create_schema(params = {}, options = {})
      request = build_request(:create_schema, params)
      request.send_request(options)
    end

    # <p>Deletes a discoverer.</p>
    # @param [Hash, Types::DeleteDiscovererRequest] params
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discoverer_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_discoverer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_discoverer(params = {}, options = {})
      request = build_request(:delete_discoverer, params)
      request.send_request(options)
    end

    # <p>Deletes a Registry.</p>
    # @param [Hash, Types::DeleteRegistryRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_registry(params = {}, options = {})
      request = build_request(:delete_registry, params)
      request.send_request(options)
    end

    # <p>Delete the resource-based policy attached to the specified registry.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Delete a schema definition.</p>
    # @param [Hash, Types::DeleteSchemaRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_schema(params = {}, options = {})
      request = build_request(:delete_schema, params)
      request.send_request(options)
    end

    # <p>Delete the schema version definition</p>
    # @param [Hash, Types::DeleteSchemaVersionRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :schema_version
    #   The version number of the schema
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_schema_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_schema_version(params = {}, options = {})
      request = build_request(:delete_schema_version, params)
      request.send_request(options)
    end

    # <p>Describe the code binding URI.</p>
    # @param [Hash, Types::DescribeCodeBindingRequest] params
    # @option params [String] :language
    #   <p>The language of the code binding.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language: "__string", # required
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string"
    #   }
    #   options = {}
    #   response = client.describe_code_binding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_date: Time.now,
    #     last_modified: Time.now,
    #     schema_version: "__string",
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #   }
    # @return [Types::DescribeCodeBindingResponse]
    def describe_code_binding(params = {}, options = {})
      request = build_request(:describe_code_binding, params)
      request.send_request(options)
    end

    # <p>Describes the discoverer.</p>
    # @param [Hash, Types::DescribeDiscovererRequest] params
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discoverer_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_discoverer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     discoverer_arn: "__string",
    #     discoverer_id: "__string",
    #     source_arn: "__string",
    #     state: "STARTED" # One of: ["STARTED", "STOPPED"],
    #     cross_account: false,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeDiscovererResponse]
    def describe_discoverer(params = {}, options = {})
      request = build_request(:describe_discoverer, params)
      request.send_request(options)
    end

    # <p>Describes the registry.</p>
    # @param [Hash, Types::DescribeRegistryRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.describe_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     registry_arn: "__string",
    #     registry_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::DescribeRegistryResponse]
    def describe_registry(params = {}, options = {})
      request = build_request(:describe_registry, params)
      request.send_request(options)
    end

    # <p>Retrieve the schema definition.</p>
    # @param [Hash, Types::DescribeSchemaRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string"
    #   }
    #   options = {}
    #   response = client.describe_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: "__string",
    #     description: "__string",
    #     last_modified: Time.now,
    #     schema_arn: "__string",
    #     schema_name: "__string",
    #     schema_version: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     type: "__string",
    #     version_created_date: Time.now
    #   }
    # @return [Types::DescribeSchemaResponse]
    def describe_schema(params = {}, options = {})
      request = build_request(:describe_schema, params)
      request.send_request(options)
    end

    # @param [Hash, Types::ExportSchemaRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    # @option params [String] :type
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string",
    #     type: "__string", # required
    #   }
    #   options = {}
    #   response = client.export_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: "__string",
    #     schema_arn: "__string",
    #     schema_name: "__string",
    #     schema_version: "__string",
    #     type: "__string"
    #   }
    # @return [Types::ExportSchemaResponse]
    def export_schema(params = {}, options = {})
      request = build_request(:export_schema, params)
      request.send_request(options)
    end

    # <p>Get the code binding source URI.</p>
    # @param [Hash, Types::GetCodeBindingSourceRequest] params
    # @option params [String] :language
    #   <p>The language of the code binding.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language: "__string", # required
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string"
    #   }
    #   options = {}
    #   response = client.get_code_binding_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: "data"
    #   }
    # @return [Types::GetCodeBindingSourceResponse]
    def get_code_binding_source(params = {}, options = {})
      request = build_request(:get_code_binding_source, params)
      request.send_request(options)
    end

    # <p>Get the discovered schema that was generated based on sampled events.</p>
    # @param [Hash, Types::GetDiscoveredSchemaRequest] params
    # @option params [Array<String>] :events
    #   <p>An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events.</p>
    # @option params [String] :type
    #   <p>The type of event.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     events: ["GetDiscoveredSchemaVersionItemInput"], # required
    #     type: "OpenApi3" # One of: ["OpenApi3", "JSONSchemaDraft4"], # required
    #   }
    #   options = {}
    #   response = client.get_discovered_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content: "__string"
    #   }
    # @return [Types::GetDiscoveredSchemaResponse]
    def get_discovered_schema(params = {}, options = {})
      request = build_request(:get_discovered_schema, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy attached to a given registry.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registry_name: "__string"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "SynthesizedJson__string",
    #     revision_id: "__string"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>List the discoverers.</p>
    # @param [Hash, Types::ListDiscoverersRequest] params
    # @option params [String] :discoverer_id_prefix
    #   <p>Specifying this limits the results to only those discoverer IDs that start with the specified prefix.</p>
    # @option params [Integer] :limit
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    # @option params [String] :source_arn_prefix
    #   <p>Specifying this limits the results to only those ARNs that start with the specified prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discoverer_id_prefix: "__string",
    #     limit: 1,
    #     next_token: "__string",
    #     source_arn_prefix: "__string"
    #   }
    #   options = {}
    #   response = client.list_discoverers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     discoverers: [
    #       {
    #         discoverer_arn: "__string",
    #         discoverer_id: "__string",
    #         source_arn: "__string",
    #         state: "STARTED" # One of: ["STARTED", "STOPPED"],
    #         cross_account: false,
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListDiscoverersResponse]
    def list_discoverers(params = {}, options = {})
      request = build_request(:list_discoverers, params)
      request.send_request(options)
    end

    # <p>List the registries.</p>
    # @param [Hash, Types::ListRegistriesRequest] params
    # @option params [Integer] :limit
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    # @option params [String] :registry_name_prefix
    #   <p>Specifying this limits the results to only those registry names that start with the specified prefix.</p>
    # @option params [String] :scope
    #   <p>Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name_prefix: "__string",
    #     scope: "__string"
    #   }
    #   options = {}
    #   response = client.list_registries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     registries: [
    #       {
    #         registry_arn: "__string",
    #         registry_name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRegistriesResponse]
    def list_registries(params = {}, options = {})
      request = build_request(:list_registries, params)
      request.send_request(options)
    end

    # <p>Provides a list of the schema versions and related information.</p>
    # @param [Hash, Types::ListSchemaVersionsRequest] params
    # @option params [Integer] :limit
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_schema_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     schema_versions: [
    #       {
    #         schema_arn: "__string",
    #         schema_name: "__string",
    #         schema_version: "__string",
    #         type: "OpenApi3" # One of: ["OpenApi3", "JSONSchemaDraft4"]
    #       }
    #     ]
    #   }
    # @return [Types::ListSchemaVersionsResponse]
    def list_schema_versions(params = {}, options = {})
      request = build_request(:list_schema_versions, params)
      request.send_request(options)
    end

    # <p>List the schemas.</p>
    # @param [Hash, Types::ListSchemasRequest] params
    # @option params [Integer] :limit
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name_prefix
    #   <p>Specifying this limits the results to only those schema names that start with the specified prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name: "__string", # required
    #     schema_name_prefix: "__string"
    #   }
    #   options = {}
    #   response = client.list_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     schemas: [
    #       {
    #         last_modified: Time.now,
    #         schema_arn: "__string",
    #         schema_name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         },
    #         version_count: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListSchemasResponse]
    def list_schemas(params = {}, options = {})
      request = build_request(:list_schemas, params)
      request.send_request(options)
    end

    # <p>Get tags for resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Put code binding URI</p>
    # @param [Hash, Types::PutCodeBindingRequest] params
    # @option params [String] :language
    #   <p>The language of the code binding.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language: "__string", # required
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     schema_version: "__string"
    #   }
    #   options = {}
    #   response = client.put_code_binding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_date: Time.now,
    #     last_modified: Time.now,
    #     schema_version: "__string",
    #     status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #   }
    # @return [Types::PutCodeBindingResponse]
    def put_code_binding(params = {}, options = {})
      request = build_request(:put_code_binding, params)
      request.send_request(options)
    end

    # <p>The name of the policy.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :policy
    #   <p>The resource-based policy.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :revision_id
    #   <p>The revision ID of the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy: "SynthesizedJson__string", # required
    #     registry_name: "__string",
    #     revision_id: "__string"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "SynthesizedJson__string",
    #     revision_id: "__string"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Search the schemas</p>
    # @param [Hash, Types::SearchSchemasRequest] params
    # @option params [String] :keywords
    #   <p>Specifying this limits the results to only schemas that include the provided keywords.</p>
    # @option params [Integer] :limit
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     keywords: "__string", # required
    #     limit: 1,
    #     next_token: "__string",
    #     registry_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.search_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     schemas: [
    #       {
    #         registry_name: "__string",
    #         schema_arn: "__string",
    #         schema_name: "__string",
    #         schema_versions: [
    #           {
    #             created_date: Time.now,
    #             schema_version: "__string",
    #             type: "OpenApi3" # One of: ["OpenApi3", "JSONSchemaDraft4"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::SearchSchemasResponse]
    def search_schemas(params = {}, options = {})
      request = build_request(:search_schemas, params)
      request.send_request(options)
    end

    # <p>Starts the discoverer</p>
    # @param [Hash, Types::StartDiscovererRequest] params
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discoverer_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.start_discoverer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     discoverer_id: "__string",
    #     state: "STARTED" # One of: ["STARTED", "STOPPED"]
    #   }
    # @return [Types::StartDiscovererResponse]
    def start_discoverer(params = {}, options = {})
      request = build_request(:start_discoverer, params)
      request.send_request(options)
    end

    # <p>Stops the discoverer</p>
    # @param [Hash, Types::StopDiscovererRequest] params
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discoverer_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.stop_discoverer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     discoverer_id: "__string",
    #     state: "STARTED" # One of: ["STARTED", "STOPPED"]
    #   }
    # @return [Types::StopDiscovererResponse]
    def stop_discoverer(params = {}, options = {})
      request = build_request(:stop_discoverer, params)
      request.send_request(options)
    end

    # <p>Add tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: { # required
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the discoverer</p>
    # @param [Hash, Types::UpdateDiscovererRequest] params
    # @option params [String] :description
    #   <p>The description of the discoverer to update.</p>
    # @option params [String] :discoverer_id
    #   <p>The ID of the discoverer.</p>
    # @option params [Boolean] :cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true)</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__stringMin0Max256",
    #     discoverer_id: "__string", # required
    #     cross_account: false
    #   }
    #   options = {}
    #   response = client.update_discoverer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     discoverer_arn: "__string",
    #     discoverer_id: "__string",
    #     source_arn: "__string",
    #     state: "STARTED" # One of: ["STARTED", "STOPPED"],
    #     cross_account: false,
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateDiscovererResponse]
    def update_discoverer(params = {}, options = {})
      request = build_request(:update_discoverer, params)
      request.send_request(options)
    end

    # <p>Updates a registry.</p>
    # @param [Hash, Types::UpdateRegistryRequest] params
    # @option params [String] :description
    #   <p>The description of the registry to update.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_registry(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     registry_arn: "__string",
    #     registry_name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::UpdateRegistryResponse]
    def update_registry(params = {}, options = {})
      request = build_request(:update_registry, params)
      request.send_request(options)
    end

    # <p>Updates the schema definition</p> <note><p>Inactive schemas will be deleted after two years.</p></note>
    # @param [Hash, Types::UpdateSchemaRequest] params
    # @option params [String] :client_token_id
    #   <p>The ID of the client token.</p>
    # @option params [String] :content
    #   <p>The source of the schema definition.</p>
    # @option params [String] :description
    #   <p>The description of the schema.</p>
    # @option params [String] :registry_name
    #   <p>The name of the registry.</p>
    # @option params [String] :schema_name
    #   <p>The name of the schema.</p>
    # @option params [String] :type
    #   <p>The schema type for the events schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token_id: "__stringMin0Max36",
    #     content: "__stringMin1Max100000",
    #     description: "__stringMin0Max256",
    #     registry_name: "__string", # required
    #     schema_name: "__string", # required
    #     type: "OpenApi3" # One of: ["OpenApi3", "JSONSchemaDraft4"]
    #   }
    #   options = {}
    #   response = client.update_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "__string",
    #     last_modified: Time.now,
    #     schema_arn: "__string",
    #     schema_name: "__string",
    #     schema_version: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     },
    #     type: "__string",
    #     version_created_date: Time.now
    #   }
    # @return [Types::UpdateSchemaResponse]
    def update_schema(params = {}, options = {})
      request = build_request(:update_schema, params)
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
      context[:gem_name] = 'aws-sdk-schemas'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        code_binding_exists: Waiters::CodeBindingExists
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
