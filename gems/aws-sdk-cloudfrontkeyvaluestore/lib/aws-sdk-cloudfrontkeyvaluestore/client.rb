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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cloudfrontkeyvaluestore)

module Aws::CloudFrontKeyValueStore
  # An API client for Aws::CloudFrontKeyValueStore.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CloudFrontKeyValueStore
    @identifier = :cloudfrontkeyvaluestore

    add_plugin(::Aws::CloudFrontKeyValueStore::Plugins::Endpoint)
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
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudFrontKeyValueStore::EndpointProvider)
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
    #  `#transmit(request)` (returning a stream) to swap the transport, or a
    #  directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Deletes the key value pair specified by the key.</p>
    # @param [Hash, Types::DeleteKeyRequest] params
    # @option params [String] :kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    # @option params [String] :key
    #   <p>The key to delete.</p>
    # @option params [String] :if_match
    #   <p>The current version (ETag) of the Key Value Store that you are deleting keys from, which you can get using DescribeKeyValueStore.</p>
    # @example Delete 'key1' from the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for delete_key
    #   params = {
    #     key: "key1",
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     if_match: "KV0AB12C3DEF456"
    #   }
    #   options = {}
    #   response = client.delete_key(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 3,
    #     total_size_in_bytes: 5
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     kvs_arn: "KvsARN", # required
    #     key: "Key", # required
    #     if_match: "Etag", # required
    #   }
    #   options = {}
    #   response = client.delete_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item_count: 1, # required
    #     total_size_in_bytes: 1, # required
    #     e_tag: "Etag", # required
    #   }
    # @return [Types::DeleteKeyResponse]
    def delete_key(params = {}, options = {})
      request = build_request(:delete_key, params)
      request.send_request(options)
    end

    # <p>Returns metadata information about Key Value Store.</p>
    # @param [Hash, Types::DescribeKeyValueStoreRequest] params
    # @option params [String] :kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    # @example Describe the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for describe_key_value_store
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58"
    #   }
    #   options = {}
    #   response = client.describe_key_value_store(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 0,
    #     total_size_in_bytes: 0,
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     created: Time.parse("2023-11-01T22:18:46Z"),
    #     last_modified: Time.parse("2023-11-01T14:28:17Z"),
    #     status: "IMPORT_FAILURE",
    #     failure_reason: "Datasource size exceeds the allowed limit"
    #   }
    # @example Describe the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-1234a9d35678'
    #   # Example operation for describe_key_value_store
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-1234a9d35678"
    #   }
    #   options = {}
    #   response = client.describe_key_value_store(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 4,
    #     total_size_in_bytes: 15,
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-1234a9d35678",
    #     created: Time.parse("2023-11-01T22:18:46Z"),
    #     last_modified: Time.parse("2023-11-01T14:28:17Z"),
    #     status: "READY"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     kvs_arn: "KvsARN", # required
    #   }
    #   options = {}
    #   response = client.describe_key_value_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item_count: 1, # required
    #     total_size_in_bytes: 1, # required
    #     kvs_arn: "KvsARN", # required
    #     created: Time.now, # required
    #     e_tag: "Etag", # required
    #     last_modified: Time.now,
    #     status: "String",
    #     failure_reason: "String"
    #   }
    # @return [Types::DescribeKeyValueStoreResponse]
    def describe_key_value_store(params = {}, options = {})
      request = build_request(:describe_key_value_store, params)
      request.send_request(options)
    end

    # <p>Returns a key value pair.</p>
    # @param [Hash, Types::GetKeyRequest] params
    # @option params [String] :kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    # @option params [String] :key
    #   <p>The key to get.</p>
    # @example Get 'key1' from the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for get_key
    #   params = {
    #     key: "key1",
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58"
    #   }
    #   options = {}
    #   response = client.get_key(params, options)
    #   response.to_h #=>
    #   {
    #     key: "key1",
    #     value: "value1",
    #     item_count: 4,
    #     total_size_in_bytes: 15
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     kvs_arn: "KvsARN", # required
    #     key: "Key", # required
    #   }
    #   options = {}
    #   response = client.get_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key: "Key", # required
    #     value: "Value", # required
    #     item_count: 1, # required
    #     total_size_in_bytes: 1, # required
    #   }
    # @return [Types::GetKeyResponse]
    def get_key(params = {}, options = {})
      request = build_request(:get_key, params)
      request.send_request(options)
    end

    # <p>Returns a list of key value pairs.</p>
    # @param [Hash, Types::ListKeysRequest] params
    # @option params [String] :kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    # @option params [String] :next_token
    #   <p>If nextToken is returned in the response, there are more results available. Make the next call using the returned token to retrieve the next page.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results that are returned per call. The default is 10 and maximum allowed page is 50.</p>
    # @example List keys in the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for list_keys
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     max_results: 3
    #   }
    #   options = {}
    #   response = client.list_keys(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "hVTTZndkpBZ0VRZ0R1RF",
    #     items: [
    #       {
    #         key: "key1",
    #         value: "value1"
    #       },
    #       {
    #         key: "key2",
    #         value: "value2"
    #       },
    #       {
    #         key: "key3",
    #         value: "value3"
    #       }
    #     ]
    #   }
    # @example List the next page in the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for list_keys
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     max_results: 3,
    #     next_token: "hVTTZndkpBZ0VRZ0R1RF"
    #   }
    #   options = {}
    #   response = client.list_keys(params, options)
    #   response.to_h #=>
    #   {
    #     next_token: "hQTlB5YmM5UFNoFQvMk",
    #     items: [
    #       {
    #         key: "key4",
    #         value: "value4"
    #       },
    #       {
    #         key: "key5",
    #         value: "value5"
    #       },
    #       {
    #         key: "key6",
    #         value: "value6"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     kvs_arn: "KvsARN", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [
    #       {
    #         key: "Key", # required
    #         value: "Value", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListKeysResponse]
    def list_keys(params = {}, options = {})
      request = build_request(:list_keys, params)
      request.send_request(options)
    end

    # <p>Creates a new key value pair or replaces the value of an existing key.</p>
    # @param [Hash, Types::PutKeyRequest] params
    # @option params [String] :key
    #   <p>The key to put.</p>
    # @option params [String] :value
    #   <p>The value to put.</p>
    # @option params [String] :kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    # @option params [String] :if_match
    #   <p>The current version (ETag) of the Key Value Store that you are putting keys into, which you can get using DescribeKeyValueStore.</p>
    # @example Put 'key1' with 'value1' into the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for put_key
    #   params = {
    #     key: "key1",
    #     value: "value1",
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     if_match: "KV0AB12C3DEF456"
    #   }
    #   options = {}
    #   response = client.put_key(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 4,
    #     total_size_in_bytes: 15
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     key: "Key", # required
    #     value: "Value", # required
    #     kvs_arn: "KvsARN", # required
    #     if_match: "Etag", # required
    #   }
    #   options = {}
    #   response = client.put_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item_count: 1, # required
    #     total_size_in_bytes: 1, # required
    #     e_tag: "Etag", # required
    #   }
    # @return [Types::PutKeyResponse]
    def put_key(params = {}, options = {})
      request = build_request(:put_key, params)
      request.send_request(options)
    end

    # <p>Puts or Deletes multiple key value pairs in a single, all-or-nothing operation.</p>
    # @param [Hash, Types::UpdateKeysRequest] params
    # @option params [String] :kvs_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Value Store.</p>
    # @option params [String] :if_match
    #   <p>The current version (ETag) of the Key Value Store that you are updating keys of, which you can get using DescribeKeyValueStore.</p>
    # @option params [Array<Types::PutKeyRequestListItem>] :puts
    #   <p>List of key value pairs to put.</p>
    # @option params [Array<Types::DeleteKeyRequestListItem>] :deletes
    #   <p>List of keys to delete.</p>
    # @example Put 2 keys into the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for update_keys
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     if_match: "KV0AB12C3DEF456",
    #     puts: [
    #       {
    #         key: "key1",
    #         value: "value1"
    #       },
    #       {
    #         key: "key2",
    #         value: "value2"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_keys(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 4,
    #     total_size_in_bytes: 15
    #   }
    # @example Delete 2 keys from the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for update_keys
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     if_match: "KV0AB12C3DEF456",
    #     deletes: [
    #       {
    #         key: "key1"
    #       },
    #       {
    #         key: "key2"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_keys(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 4,
    #     total_size_in_bytes: 15
    #   }
    # @example Put 2 keys into and delete 1 key from the key value store with ARN 'arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58'
    #   # Example operation for update_keys
    #   params = {
    #     kvs_arn: "arn:aws:cloudfront::123456789012:key-value-store/327284aa-bcd5-499f-a3ff-26b9a9d31b58",
    #     if_match: "KV0AB12C3DEF456",
    #     puts: [
    #       {
    #         key: "key1",
    #         value: "value1"
    #       },
    #       {
    #         key: "key2",
    #         value: "value2"
    #       }
    #     ],
    #     deletes: [
    #       {
    #         key: "key3"
    #       },
    #       {
    #         key: "key4"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_keys(params, options)
    #   response.to_h #=>
    #   {
    #     e_tag: "KV7XY89Z0ABC012",
    #     item_count: 4,
    #     total_size_in_bytes: 15
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     kvs_arn: "KvsARN", # required
    #     if_match: "Etag", # required
    #     puts: [
    #       {
    #         key: "Key", # required
    #         value: "Value", # required
    #       }
    #     ],
    #     deletes: [
    #       {
    #         key: "Key", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item_count: 1, # required
    #     total_size_in_bytes: 1, # required
    #     e_tag: "Etag", # required
    #   }
    # @return [Types::UpdateKeysResponse]
    def update_keys(params = {}, options = {})
      request = build_request(:update_keys, params)
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
      context[:gem_name] = 'aws-sdk-cloudfrontkeyvaluestore'
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
