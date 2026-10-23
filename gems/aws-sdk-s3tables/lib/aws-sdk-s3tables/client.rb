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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:s3tables)

module Aws::S3Tables
  # An API client for Aws::S3Tables.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::S3TableBuckets
    @identifier = :s3tables

    add_plugin(::Aws::S3Tables::Plugins::Endpoint)
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
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::S3Tables::EndpointProvider)
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
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
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

    # <p>Creates a namespace. A namespace is a logical grouping of tables within your table bucket, which you can use to organize tables. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-create.html">Create a namespace</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:CreateNamespace</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::CreateNamespaceRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket to create the namespace in.</p>
    # @option params [Array<String>] :namespace
    #   <p>A name for the namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: ["NamespaceName"], # required
    #   }
    #   options = {}
    #   response = client.create_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: ["NamespaceName"], # required
    #   }
    # @return [Types::CreateNamespaceResponse]
    def create_namespace(params = {}, options = {})
      request = build_request(:create_namespace, params)
      request.send_request(options)
    end

    # <p>Creates a new table associated with the given namespace in a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-create.html">Creating an Amazon S3 table</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <ul> <li> <p>You must have the <code>s3tables:CreateTable</code> permission to use this operation. </p> </li> <li> <p>If you use this operation with the optional <code>metadata</code> request parameter you must have the <code>s3tables:PutTableData</code> permission. </p> </li> <li> <p>If you use this operation with the optional <code>encryptionConfiguration</code> request parameter you must have the <code>s3tables:PutTableEncryption</code> permission. </p> </li> </ul> <note> <p>Additionally, If you choose SSE-KMS encryption you must grant the S3 Tables maintenance principal access to your KMS key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html">Permissions requirements for S3 Tables SSE-KMS encryption</a>. </p> </note> </dd> </dl>
    # @param [Hash, Types::CreateTableRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket to create the table in.</p>
    # @option params [String] :namespace
    #   <p>The namespace to associated with the table.</p>
    # @option params [String] :name
    #   <p>The name for the table.</p>
    # @option params [String] :format
    #   <p>The format for the table.</p>
    # @option params [Types::TableMetadata] :metadata
    #   <p>The metadata for the table.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The encryption configuration to use for the table. This configuration specifies the encryption algorithm and, if using SSE-KMS, the KMS key to use for encrypting the table. </p> <note> <p>If you choose SSE-KMS encryption you must grant the S3 Tables maintenance principal access to your KMS key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html">Permissions requirements for S3 Tables SSE-KMS encryption</a>.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     format: "ICEBERG" # One of: ["ICEBERG"], # required
    #     metadata: {
    #       # One of:
    #       iceberg: {
    #         schema: { # required
    #           fields: [ # required
    #             {
    #               name: "String", # required
    #               type: "String", # required
    #               required: false
    #             }
    #           ]
    #         }
    #       }
    #     },
    #     encryption_configuration: {
    #       sse_algorithm: "AES256" # One of: ["AES256", "aws:kms"], # required
    #       kms_key_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_arn: "TableARN", # required
    #     version_token: "VersionToken", # required
    #   }
    # @return [Types::CreateTableResponse]
    def create_table(params = {}, options = {})
      request = build_request(:create_table, params)
      request.send_request(options)
    end

    # <p>Creates a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-create.html">Creating a table bucket</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <ul> <li> <p>You must have the <code>s3tables:CreateTableBucket</code> permission to use this operation. </p> </li> <li> <p>If you use this operation with the optional <code>encryptionConfiguration</code> parameter you must have the <code>s3tables:PutTableBucketEncryption</code> permission.</p> </li> </ul> </dd> </dl>
    # @param [Hash, Types::CreateTableBucketRequest] params
    # @option params [String] :name
    #   <p>The name for the table bucket.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The encryption configuration to use for the table bucket. This configuration specifies the default encryption settings that will be applied to all tables created in this bucket unless overridden at the table level. The configuration includes the encryption algorithm and, if using SSE-KMS, the KMS key to use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "TableBucketName", # required
    #     encryption_configuration: {
    #       sse_algorithm: "AES256" # One of: ["AES256", "aws:kms"], # required
    #       kms_key_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_table_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TableBucketARN", # required
    #   }
    # @return [Types::CreateTableBucketResponse]
    def create_table_bucket(params = {}, options = {})
      request = build_request(:create_table_bucket, params)
      request.send_request(options)
    end

    # <p>Deletes a namespace. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace-delete.html">Delete a namespace</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:DeleteNamespace</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteNamespaceRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the namespace.</p>
    # @option params [String] :namespace
    #   <p>The name of the namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #   }
    #   options = {}
    #   response = client.delete_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_namespace(params = {}, options = {})
      request = build_request(:delete_namespace, params)
      request.send_request(options)
    end

    # <p>Deletes a table. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-delete.html">Deleting an Amazon S3 table</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:DeleteTable</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteTableRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @option params [String] :version_token
    #   <p>The version token of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     version_token: "VersionToken"
    #   }
    #   options = {}
    #   response = client.delete_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_table(params = {}, options = {})
      request = build_request(:delete_table, params)
      request.send_request(options)
    end

    # <p>Deletes a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-delete.html">Deleting a table bucket</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:DeleteTableBucket</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteTableBucketRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.delete_table_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_table_bucket(params = {}, options = {})
      request = build_request(:delete_table_bucket, params)
      request.send_request(options)
    end

    # <p>Deletes the encryption configuration for a table bucket.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:DeleteTableBucketEncryption</code> permission to use this operation.</p> </dd> </dl>
    # @param [Hash, Types::DeleteTableBucketEncryptionRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.delete_table_bucket_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_table_bucket_encryption(params = {}, options = {})
      request = build_request(:delete_table_bucket_encryption, params)
      request.send_request(options)
    end

    # <p>Deletes a table bucket policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-delete">Deleting a table bucket policy</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:DeleteTableBucketPolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteTableBucketPolicyRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.delete_table_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_table_bucket_policy(params = {}, options = {})
      request = build_request(:delete_table_bucket_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a table policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-delete">Deleting a table policy</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:DeleteTablePolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteTablePolicyRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table. </p>
    # @option params [String] :name
    #   <p>The table name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.delete_table_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_table_policy(params = {}, options = {})
      request = build_request(:delete_table_policy, params)
      request.send_request(options)
    end

    # <p>Gets details about a namespace. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html">Table namespaces</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetNamespace</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetNamespaceRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [String] :namespace
    #   <p>The name of the namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #   }
    #   options = {}
    #   response = client.get_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespace: ["NamespaceName"], # required
    #     created_at: Time.now, # required
    #     created_by: "AccountId", # required
    #     owner_account_id: "AccountId", # required
    #     namespace_id: "NamespaceId",
    #     table_bucket_id: "TableBucketId"
    #   }
    # @return [Types::GetNamespaceResponse]
    def get_namespace(params = {}, options = {})
      request = build_request(:get_namespace, params)
      request.send_request(options)
    end

    # <p>Gets details about a table. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html">S3 Tables</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTable</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTableRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the table.</p>
    # @option params [String] :namespace
    #   <p>The name of the namespace the table is associated with.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @option params [String] :table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN",
    #     namespace: "NamespaceName",
    #     name: "TableName",
    #     table_arn: "TableARN"
    #   }
    #   options = {}
    #   response = client.get_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "TableName", # required
    #     type: "customer" # One of: ["customer", "aws"], # required
    #     table_arn: "TableARN", # required
    #     namespace: ["NamespaceName"], # required
    #     namespace_id: "NamespaceId",
    #     version_token: "VersionToken", # required
    #     metadata_location: "MetadataLocation",
    #     warehouse_location: "WarehouseLocation", # required
    #     created_at: Time.now, # required
    #     created_by: "AccountId", # required
    #     managed_by_service: "String",
    #     modified_at: Time.now, # required
    #     modified_by: "AccountId", # required
    #     owner_account_id: "AccountId", # required
    #     format: "ICEBERG" # One of: ["ICEBERG"], # required
    #     table_bucket_id: "TableBucketId"
    #   }
    # @return [Types::GetTableResponse]
    def get_table(params = {}, options = {})
      request = build_request(:get_table, params)
      request.send_request(options)
    end

    # <p>Gets details on a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-details.html">Viewing details about an Amazon S3 table bucket</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableBucket</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTableBucketRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.get_table_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "TableBucketARN", # required
    #     name: "TableBucketName", # required
    #     owner_account_id: "AccountId", # required
    #     created_at: Time.now, # required
    #     table_bucket_id: "TableBucketId",
    #     type: "customer" # One of: ["customer", "aws"]
    #   }
    # @return [Types::GetTableBucketResponse]
    def get_table_bucket(params = {}, options = {})
      request = build_request(:get_table_bucket, params)
      request.send_request(options)
    end

    # <p>Gets the encryption configuration for a table bucket.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableBucketEncryption</code> permission to use this operation.</p> </dd> </dl>
    # @param [Hash, Types::GetTableBucketEncryptionRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.get_table_bucket_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_configuration: { # required
    #       sse_algorithm: "AES256" # One of: ["AES256", "aws:kms"], # required
    #       kms_key_arn: "String"
    #     }
    #   }
    # @return [Types::GetTableBucketEncryptionResponse]
    def get_table_bucket_encryption(params = {}, options = {})
      request = build_request(:get_table_bucket_encryption, params)
      request.send_request(options)
    end

    # <p>Gets details about a maintenance configuration for a given table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html">Amazon S3 table bucket maintenance</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableBucketMaintenanceConfiguration</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTableBucketMaintenanceConfigurationRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the maintenance configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.get_table_bucket_maintenance_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_bucket_arn: "TableBucketARN", # required
    #     configuration: { # required
    #       "TableBucketMaintenanceType" => {
    #         status: "enabled" # One of: ["enabled", "disabled"],
    #         settings: {
    #           # One of:
    #           iceberg_unreferenced_file_removal: {
    #             unreferenced_days: 1,
    #             non_current_days: 1
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetTableBucketMaintenanceConfigurationResponse]
    def get_table_bucket_maintenance_configuration(params = {}, options = {})
      request = build_request(:get_table_bucket_maintenance_configuration, params)
      request.send_request(options)
    end

    # <p>Gets details about a table bucket policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-get">Viewing a table bucket policy</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableBucketPolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTableBucketPolicyRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #   }
    #   options = {}
    #   response = client.get_table_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: "ResourcePolicy", # required
    #   }
    # @return [Types::GetTableBucketPolicyResponse]
    def get_table_bucket_policy(params = {}, options = {})
      request = build_request(:get_table_bucket_policy, params)
      request.send_request(options)
    end

    # <p>Gets the encryption configuration for a table.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableEncryption</code> permission to use this operation.</p> </dd> </dl>
    # @param [Hash, Types::GetTableEncryptionRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket containing the table.</p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encryption_configuration: { # required
    #       sse_algorithm: "AES256" # One of: ["AES256", "aws:kms"], # required
    #       kms_key_arn: "String"
    #     }
    #   }
    # @return [Types::GetTableEncryptionResponse]
    def get_table_encryption(params = {}, options = {})
      request = build_request(:get_table_encryption, params)
      request.send_request(options)
    end

    # <p>Gets details about the maintenance configuration of a table. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html">S3 Tables maintenance</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <ul> <li> <p>You must have the <code>s3tables:GetTableMaintenanceConfiguration</code> permission to use this operation. </p> </li> <li> <p>You must have the <code>s3tables:GetTableData</code> permission to use set the compaction strategy to <code>sort</code> or <code>zorder</code>.</p> </li> </ul> </dd> </dl>
    # @param [Hash, Types::GetTableMaintenanceConfigurationRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table_maintenance_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_arn: "TableARN", # required
    #     configuration: { # required
    #       "TableMaintenanceType" => {
    #         status: "enabled" # One of: ["enabled", "disabled"],
    #         settings: {
    #           # One of:
    #           iceberg_compaction: {
    #             target_file_size_mb: 1,
    #             strategy: "auto" # One of: ["auto", "binpack", "sort", "z-order"]
    #           },
    #           iceberg_snapshot_management: {
    #             min_snapshots_to_keep: 1,
    #             max_snapshot_age_hours: 1
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetTableMaintenanceConfigurationResponse]
    def get_table_maintenance_configuration(params = {}, options = {})
      request = build_request(:get_table_maintenance_configuration, params)
      request.send_request(options)
    end

    # <p>Gets the status of a maintenance job for a table. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html">S3 Tables maintenance</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableMaintenanceJobStatus</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTableMaintenanceJobStatusRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [String] :namespace
    #   <p>The name of the namespace the table is associated with. </p>
    # @option params [String] :name
    #   <p>The name of the maintenance job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table_maintenance_job_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_arn: "TableARN", # required
    #     status: { # required
    #       "TableMaintenanceJobType" => {
    #         status: "Not_Yet_Run" # One of: ["Not_Yet_Run", "Successful", "Failed", "Disabled"], # required
    #         last_run_timestamp: Time.now,
    #         failure_message: "String"
    #       }
    #     }
    #   }
    # @return [Types::GetTableMaintenanceJobStatusResponse]
    def get_table_maintenance_job_status(params = {}, options = {})
      request = build_request(:get_table_maintenance_job_status, params)
      request.send_request(options)
    end

    # <p>Gets the location of the table metadata.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTableMetadataLocation</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTableMetadataLocationRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table_metadata_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version_token: "VersionToken", # required
    #     metadata_location: "MetadataLocation",
    #     warehouse_location: "WarehouseLocation", # required
    #   }
    # @return [Types::GetTableMetadataLocationResponse]
    def get_table_metadata_location(params = {}, options = {})
      request = build_request(:get_table_metadata_location, params)
      request.send_request(options)
    end

    # <p>Gets details about a table policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-get">Viewing a table policy</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:GetTablePolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetTablePolicyRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.get_table_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: "ResourcePolicy", # required
    #   }
    # @return [Types::GetTablePolicyResponse]
    def get_table_policy(params = {}, options = {})
      request = build_request(:get_table_policy, params)
      request.send_request(options)
    end

    # <p>Lists the namespaces within a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-namespace.html">Table namespaces</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:ListNamespaces</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::ListNamespacesRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [String] :prefix
    #   <p>The prefix of the namespaces.</p>
    # @option params [String] :continuation_token
    #   <p> <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    # @option params [Integer] :max_namespaces
    #   <p>The maximum number of namespaces to return in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     prefix: "String",
    #     continuation_token: "NextToken",
    #     max_namespaces: 1
    #   }
    #   options = {}
    #   response = client.list_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     namespaces: [ # required
    #       {
    #         namespace: ["NamespaceName"], # required
    #         created_at: Time.now, # required
    #         created_by: "AccountId", # required
    #         owner_account_id: "AccountId", # required
    #         namespace_id: "NamespaceId",
    #         table_bucket_id: "TableBucketId"
    #       }
    #     ],
    #     continuation_token: "NextToken"
    #   }
    # @return [Types::ListNamespacesResponse]
    def list_namespaces(params = {}, options = {})
      request = build_request(:list_namespaces, params)
      request.send_request(options)
    end

    # <p>Lists table buckets for your account. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets.html">S3 Table buckets</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:ListTableBuckets</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::ListTableBucketsRequest] params
    # @option params [String] :prefix
    #   <p>The prefix of the table buckets.</p>
    # @option params [String] :continuation_token
    #   <p> <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    # @option params [Integer] :max_buckets
    #   <p>The maximum number of table buckets to return in the list.</p>
    # @option params [String] :type
    #   <p>The type of table buckets to filter by in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     prefix: "String",
    #     continuation_token: "NextToken",
    #     max_buckets: 1,
    #     type: "customer" # One of: ["customer", "aws"]
    #   }
    #   options = {}
    #   response = client.list_table_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_buckets: [ # required
    #       {
    #         arn: "TableBucketARN", # required
    #         name: "TableBucketName", # required
    #         owner_account_id: "AccountId", # required
    #         created_at: Time.now, # required
    #         table_bucket_id: "TableBucketId",
    #         type: "customer" # One of: ["customer", "aws"]
    #       }
    #     ],
    #     continuation_token: "NextToken"
    #   }
    # @return [Types::ListTableBucketsResponse]
    def list_table_buckets(params = {}, options = {})
      request = build_request(:list_table_buckets, params)
      request.send_request(options)
    end

    # <p>List tables in the given table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html">S3 Tables</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:ListTables</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::ListTablesRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon resource Name (ARN) of the table bucket.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the tables.</p>
    # @option params [String] :prefix
    #   <p>The prefix of the tables.</p>
    # @option params [String] :continuation_token
    #   <p> <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    # @option params [Integer] :max_tables
    #   <p>The maximum number of tables to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName",
    #     prefix: "String",
    #     continuation_token: "NextToken",
    #     max_tables: 1
    #   }
    #   options = {}
    #   response = client.list_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tables: [ # required
    #       {
    #         namespace: ["NamespaceName"], # required
    #         name: "TableName", # required
    #         type: "customer" # One of: ["customer", "aws"], # required
    #         table_arn: "TableARN", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         namespace_id: "NamespaceId",
    #         table_bucket_id: "TableBucketId"
    #       }
    #     ],
    #     continuation_token: "NextToken"
    #   }
    # @return [Types::ListTablesResponse]
    def list_tables(params = {}, options = {})
      request = build_request(:list_tables, params)
      request.send_request(options)
    end

    # <p>Sets the encryption configuration for a table bucket.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:PutTableBucketEncryption</code> permission to use this operation.</p> <note> <p>If you choose SSE-KMS encryption you must grant the S3 Tables maintenance principal access to your KMS key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html">Permissions requirements for S3 Tables SSE-KMS encryption</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> </note> </dd> </dl>
    # @param [Hash, Types::PutTableBucketEncryptionRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The encryption configuration to apply to the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     encryption_configuration: { # required
    #       sse_algorithm: "AES256" # One of: ["AES256", "aws:kms"], # required
    #       kms_key_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.put_table_bucket_encryption(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_table_bucket_encryption(params = {}, options = {})
      request = build_request(:put_table_bucket_encryption, params)
      request.send_request(options)
    end

    # <p>Creates a new maintenance configuration or replaces an existing maintenance configuration for a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-table-buckets-maintenance.html">Amazon S3 table bucket maintenance</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:PutTableBucketMaintenanceConfiguration</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::PutTableBucketMaintenanceConfigurationRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the maintenance configuration.</p>
    # @option params [String] :type
    #   <p>The type of the maintenance configuration.</p>
    # @option params [Types::TableBucketMaintenanceConfigurationValue] :value
    #   <p>Defines the values of the maintenance configuration for the table bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     type: "icebergUnreferencedFileRemoval" # One of: ["icebergUnreferencedFileRemoval"], # required
    #     value: { # required
    #       status: "enabled" # One of: ["enabled", "disabled"],
    #       settings: {
    #         # One of:
    #         iceberg_unreferenced_file_removal: {
    #           unreferenced_days: 1,
    #           non_current_days: 1
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_table_bucket_maintenance_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_table_bucket_maintenance_configuration(params = {}, options = {})
      request = build_request(:put_table_bucket_maintenance_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new maintenance configuration or replaces an existing table bucket policy for a table bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-bucket-policy.html#table-bucket-policy-add">Adding a table bucket policy</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:PutTableBucketPolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::PutTableBucketPolicyRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    # @option params [String] :resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     resource_policy: "ResourcePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_table_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_table_bucket_policy(params = {}, options = {})
      request = build_request(:put_table_bucket_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new maintenance configuration or replaces an existing maintenance configuration for a table. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-maintenance.html">S3 Tables maintenance</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:PutTableMaintenanceConfiguration</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::PutTableMaintenanceConfigurationRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table associated with the maintenance configuration.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the table.</p>
    # @option params [String] :name
    #   <p>The name of the maintenance configuration.</p>
    # @option params [String] :type
    #   <p>The type of the maintenance configuration.</p>
    # @option params [Types::TableMaintenanceConfigurationValue] :value
    #   <p>Defines the values of the maintenance configuration for the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     type: "icebergCompaction" # One of: ["icebergCompaction", "icebergSnapshotManagement"], # required
    #     value: { # required
    #       status: "enabled" # One of: ["enabled", "disabled"],
    #       settings: {
    #         # One of:
    #         iceberg_compaction: {
    #           target_file_size_mb: 1,
    #           strategy: "auto" # One of: ["auto", "binpack", "sort", "z-order"]
    #         },
    #         iceberg_snapshot_management: {
    #           min_snapshots_to_keep: 1,
    #           max_snapshot_age_hours: 1
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_table_maintenance_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_table_maintenance_configuration(params = {}, options = {})
      request = build_request(:put_table_maintenance_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new maintenance configuration or replaces an existing table policy for a table. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-table-policy.html#table-policy-add">Adding a table policy</a> in the <i>Amazon Simple Storage Service User Guide</i>. </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:PutTablePolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::PutTablePolicyRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @option params [String] :resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     resource_policy: "ResourcePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_table_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_table_policy(params = {}, options = {})
      request = build_request(:put_table_policy, params)
      request.send_request(options)
    end

    # <p>Renames a table or a namespace. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-tables.html">S3 Tables</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:RenameTable</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::RenameTableRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket. </p>
    # @option params [String] :namespace
    #   <p>The namespace associated with the table. </p>
    # @option params [String] :name
    #   <p>The current name of the table.</p>
    # @option params [String] :new_namespace_name
    #   <p>The new name for the namespace.</p>
    # @option params [String] :new_name
    #   <p>The new name for the table.</p>
    # @option params [String] :version_token
    #   <p>The version token of the table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     new_namespace_name: "NamespaceName",
    #     new_name: "TableName",
    #     version_token: "VersionToken"
    #   }
    #   options = {}
    #   response = client.rename_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def rename_table(params = {}, options = {})
      request = build_request(:rename_table, params)
      request.send_request(options)
    end

    # <p>Updates the metadata location for a table. The metadata location of a table must be an S3 URI that begins with the table's warehouse location. The metadata location for an Apache Iceberg table must end with <code>.metadata.json</code>, or if the metadata file is Gzip-compressed, <code>.metadata.json.gz</code>.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3tables:UpdateTableMetadataLocation</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::UpdateTableMetadataLocationRequest] params
    # @option params [String] :table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket. </p>
    # @option params [String] :namespace
    #   <p>The namespace of the table.</p>
    # @option params [String] :name
    #   <p>The name of the table.</p>
    # @option params [String] :version_token
    #   <p>The version token of the table. </p>
    # @option params [String] :metadata_location
    #   <p>The new metadata location for the table. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_bucket_arn: "TableBucketARN", # required
    #     namespace: "NamespaceName", # required
    #     name: "TableName", # required
    #     version_token: "VersionToken", # required
    #     metadata_location: "MetadataLocation", # required
    #   }
    #   options = {}
    #   response = client.update_table_metadata_location(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "TableName", # required
    #     table_arn: "TableARN", # required
    #     namespace: ["NamespaceName"], # required
    #     version_token: "VersionToken", # required
    #     metadata_location: "MetadataLocation", # required
    #   }
    # @return [Types::UpdateTableMetadataLocationResponse]
    def update_table_metadata_location(params = {}, options = {})
      request = build_request(:update_table_metadata_location, params)
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
      context[:gem_name] = 'aws-sdk-s3tables'
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
