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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::S3Vectors
  # An API client for Aws::S3Vectors.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::S3Vectors

    add_plugin(::Aws::S3Vectors::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [Aws::S3Vectors::EndpointProvider] :endpoint_provider
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Creates a vector index within a vector bucket. To specify the vector bucket, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN).</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:CreateIndex</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::CreateIndexInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket to create the vector index in. </p>
    # @option params [String] :vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the vector bucket to create the vector index in.</p>
    # @option params [String] :index_name
    #   <p>The name of the vector index to create. </p>
    # @option params [String] :data_type
    #   <p>The data type of the vectors to be inserted into the vector index. </p>
    # @option params [Integer] :dimension
    #   <p>The dimensions of the vectors to be inserted into the vector index. </p>
    # @option params [String] :distance_metric
    #   <p>The distance metric to be used for similarity search. </p>
    # @option params [Types::MetadataConfiguration] :metadata_configuration
    #   <p>The metadata configuration for the vector index. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #     index_name: "IndexName", # required
    #     data_type: "float32" # One of: ["float32"], # required
    #     dimension: 1, # required
    #     distance_metric: "euclidean" # One of: ["euclidean", "cosine"], # required
    #     metadata_configuration: {
    #       non_filterable_metadata_keys: ["MetadataKey"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateIndexOutput]
    def create_index(params = {}, options = {})
      request = build_request(:create_index, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Creates a vector bucket in the Amazon Web Services Region that you want your bucket to be in. </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:CreateVectorBucket</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::CreateVectorBucketInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket to create. </p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The encryption configuration for the vector bucket. By default, if you don't specify, all new vectors in Amazon S3 vector buckets use server-side encryption with Amazon S3 managed keys (SSE-S3), specifically <code>AES256</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName", # required
    #     encryption_configuration: {
    #       sse_type: "AES256" # One of: ["AES256", "aws:kms"],
    #       kms_key_arn: "KmsKeyArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_vector_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateVectorBucketOutput]
    def create_vector_bucket(params = {}, options = {})
      request = build_request(:create_vector_bucket, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Deletes a vector index. To specify the vector index, you can either use both the vector bucket name and vector index name, or use the vector index Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:DeleteIndex</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteIndexInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index to delete. </p>
    # @option params [String] :index_arn
    #   <p>The ARN of the vector index to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn"
    #   }
    #   options = {}
    #   response = client.delete_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIndexOutput]
    def delete_index(params = {}, options = {})
      request = build_request(:delete_index, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Deletes a vector bucket. All vector indexes in the vector bucket must be deleted before the vector bucket can be deleted. To perform this operation, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:DeleteVectorBucket</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteVectorBucketInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket to delete.</p>
    # @option params [String] :vector_bucket_arn
    #   <p>The ARN of the vector bucket to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn"
    #   }
    #   options = {}
    #   response = client.delete_vector_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVectorBucketOutput]
    def delete_vector_bucket(params = {}, options = {})
      request = build_request(:delete_vector_bucket, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Deletes a vector bucket policy. To specify the bucket, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN).</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:DeleteVectorBucketPolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteVectorBucketPolicyInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket to delete the policy from.</p>
    # @option params [String] :vector_bucket_arn
    #   <p>The ARN of the vector bucket to delete the policy from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn"
    #   }
    #   options = {}
    #   response = client.delete_vector_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVectorBucketPolicyOutput]
    def delete_vector_bucket_policy(params = {}, options = {})
      request = build_request(:delete_vector_bucket_policy, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Deletes one or more vectors in a vector index. To specify the vector index, you can either use both the vector bucket name and vector index name, or use the vector index Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:DeleteVectors</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::DeleteVectorsInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index that contains a vector you want to delete.</p>
    # @option params [String] :index_arn
    #   <p>The ARN of the vector index that contains a vector you want to delete.</p>
    # @option params [Array<String>] :keys
    #   <p>The keys of the vectors to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     keys: ["VectorKey"], # required
    #   }
    #   options = {}
    #   response = client.delete_vectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVectorsOutput]
    def delete_vectors(params = {}, options = {})
      request = build_request(:delete_vectors, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Returns vector index attributes. To specify the vector index, you can either use both the vector bucket name and the vector index name, or use the vector index Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:GetIndex</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetIndexInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index.</p>
    # @option params [String] :index_arn
    #   <p>The ARN of the vector index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn"
    #   }
    #   options = {}
    #   response = client.get_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index: { # required
    #       vector_bucket_name: "VectorBucketName", # required
    #       index_name: "IndexName", # required
    #       index_arn: "IndexArn", # required
    #       creation_time: Time.now, # required
    #       data_type: "float32" # One of: ["float32"], # required
    #       dimension: 1, # required
    #       distance_metric: "euclidean" # One of: ["euclidean", "cosine"], # required
    #       metadata_configuration: {
    #         non_filterable_metadata_keys: ["MetadataKey"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetIndexOutput]
    def get_index(params = {}, options = {})
      request = build_request(:get_index, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Returns vector bucket attributes. To specify the bucket, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:GetVectorBucket</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetVectorBucketInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket to retrieve information about.</p>
    # @option params [String] :vector_bucket_arn
    #   <p>The ARN of the vector bucket to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn"
    #   }
    #   options = {}
    #   response = client.get_vector_bucket(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vector_bucket: { # required
    #       vector_bucket_name: "VectorBucketName", # required
    #       vector_bucket_arn: "VectorBucketArn", # required
    #       creation_time: Time.now, # required
    #       encryption_configuration: {
    #         sse_type: "AES256" # One of: ["AES256", "aws:kms"],
    #         kms_key_arn: "KmsKeyArn"
    #       }
    #     }
    #   }
    # @return [Types::GetVectorBucketOutput]
    def get_vector_bucket(params = {}, options = {})
      request = build_request(:get_vector_bucket, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Gets details about a vector bucket policy. To specify the bucket, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:GetVectorBucketPolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetVectorBucketPolicyInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket.</p>
    # @option params [String] :vector_bucket_arn
    #   <p>The ARN of the vector bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn"
    #   }
    #   options = {}
    #   response = client.get_vector_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "VectorBucketPolicy"
    #   }
    # @return [Types::GetVectorBucketPolicyOutput]
    def get_vector_bucket_policy(params = {}, options = {})
      request = build_request(:get_vector_bucket_policy, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Returns vector attributes. To specify the vector index, you can either use both the vector bucket name and the vector index name, or use the vector index Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:GetVectors</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::GetVectorsInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index.</p>
    # @option params [String] :index_arn
    #   <p>The ARN of the vector index.</p>
    # @option params [Array<String>] :keys
    #   <p>The names of the vectors you want to return attributes for. </p>
    # @option params [Boolean] :return_data
    #   <p>Indicates whether to include the vector data in the response. The default value is <code>false</code>.</p>
    # @option params [Boolean] :return_metadata
    #   <p>Indicates whether to include metadata in the response. The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     keys: ["VectorKey"], # required
    #     return_data: false,
    #     return_metadata: false
    #   }
    #   options = {}
    #   response = client.get_vectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vectors: [ # required
    #       {
    #         key: "VectorKey", # required
    #         data: {
    #           # One of:
    #           float32: [1.0]
    #         },
    #         metadata: ""null""
    #       }
    #     ]
    #   }
    # @return [Types::GetVectorsOutput]
    def get_vectors(params = {}, options = {})
      request = build_request(:get_vectors, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Returns a list of all the vector indexes within the specified vector bucket. To specify the bucket, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:ListIndexes</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::ListIndexesInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector indexes. </p>
    # @option params [String] :vector_bucket_arn
    #   <p>The ARN of the vector bucket that contains the vector indexes.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to be returned in the response. </p>
    # @option params [String] :next_token
    #   <p>The previous pagination token. </p>
    # @option params [String] :prefix
    #   <p>Limits the response to vector indexes that begin with the specified prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #     max_results: 1,
    #     next_token: "ListIndexesNextToken",
    #     prefix: "ListIndexesPrefix"
    #   }
    #   options = {}
    #   response = client.list_indexes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ListIndexesNextToken",
    #     indexes: [ # required
    #       {
    #         vector_bucket_name: "VectorBucketName", # required
    #         index_name: "IndexName", # required
    #         index_arn: "IndexArn", # required
    #         creation_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListIndexesOutput]
    def list_indexes(params = {}, options = {})
      request = build_request(:list_indexes, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Returns a list of all the vector buckets that are owned by the authenticated sender of the request.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:ListVectorBuckets</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::ListVectorBucketsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of vector buckets to be returned in the response. </p>
    # @option params [String] :next_token
    #   <p>The previous pagination token. </p>
    # @option params [String] :prefix
    #   <p>Limits the response to vector buckets that begin with the specified prefix.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "ListVectorBucketsNextToken",
    #     prefix: "ListVectorBucketsPrefix"
    #   }
    #   options = {}
    #   response = client.list_vector_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ListVectorBucketsNextToken",
    #     vector_buckets: [ # required
    #       {
    #         vector_bucket_name: "VectorBucketName", # required
    #         vector_bucket_arn: "VectorBucketArn", # required
    #         creation_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListVectorBucketsOutput]
    def list_vector_buckets(params = {}, options = {})
      request = build_request(:list_vector_buckets, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>List vectors in the specified vector index. To specify the vector index, you can either use both the vector bucket name and the vector index name, or use the vector index Amazon Resource Name (ARN). </p> <p> <code>ListVectors</code> operations proceed sequentially; however, for faster performance on a large number of vectors in a vector index, applications can request a parallel <code>ListVectors</code> operation by providing the <code>segmentCount</code> and <code>segmentIndex</code> parameters.</p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:ListVectors</code> permission to use this operation. Additional permissions are required based on the request parameters you specify:</p> <ul> <li> <p>With only <code>s3vectors:ListVectors</code> permission, you can list vector keys when <code>returnData</code> and <code>returnMetadata</code> are both set to false or not specified..</p> </li> <li> <p>If you set <code>returnData</code> or <code>returnMetadata</code> to true, you must have both <code>s3vectors:ListVectors</code> and <code>s3vectors:GetVectors</code> permissions. The request fails with a <code>403 Forbidden</code> error if you request vector data or metadata without the <code>s3vectors:GetVectors</code> permission.</p> </li> </ul> </dd> </dl>
    # @param [Hash, Types::ListVectorsInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index.</p>
    # @option params [String] :index_arn
    #   <p>The Amazon resource Name (ARN) of the vector index.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of vectors to return on a page.</p> <p>If you don't specify <code>maxResults</code>, the <code>ListVectors</code> operation uses a default value of 500.</p> <p>If the processed dataset size exceeds 1 MB before reaching the <code>maxResults</code> value, the operation stops and returns the vectors that are retrieved up to that point, along with a <code>nextToken</code> that you can use in a subsequent request to retrieve the next set of results.</p>
    # @option params [String] :next_token
    #   <p>Pagination token from a previous request. The value of this field is empty for an initial request.</p>
    # @option params [Integer] :segment_count
    #   <p>For a parallel <code>ListVectors</code> request, <code>segmentCount</code> represents the total number of vector segments into which the <code>ListVectors</code> operation will be divided. The value of <code>segmentCount</code> corresponds to the number of application workers that will perform the parallel <code>ListVectors</code> operation. For example, if you want to use four application threads to list vectors in a vector index, specify a <code>segmentCount</code> value of 4. </p> <p>If you specify a <code>segmentCount</code> value of 1, the <code>ListVectors</code> operation will be sequential rather than parallel.</p> <p>If you specify <code>segmentCount</code>, you must also specify <code>segmentIndex</code>.</p>
    # @option params [Integer] :segment_index
    #   <p>For a parallel <code>ListVectors</code> request, <code>segmentIndex</code> is the index of the segment from which to list vectors in the current request. It identifies an individual segment to be listed by an application worker. </p> <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to list vectors in a vector index, then the first thread specifies a <code>segmentIndex</code> value of 0, the second thread specifies 1, and so on. </p> <p>The value of <code>segmentIndex</code> must be less than the value provided for <code>segmentCount</code>. </p> <p>If you provide <code>segmentIndex</code>, you must also provide <code>segmentCount</code>.</p>
    # @option params [Boolean] :return_data
    #   <p>If true, the vector data of each vector will be included in the response. The default value is <code>false</code>.</p>
    # @option params [Boolean] :return_metadata
    #   <p>If true, the metadata associated with each vector will be included in the response. The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     max_results: 1,
    #     next_token: "ListVectorsNextToken",
    #     segment_count: 1,
    #     segment_index: 1,
    #     return_data: false,
    #     return_metadata: false
    #   }
    #   options = {}
    #   response = client.list_vectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "ListVectorsNextToken",
    #     vectors: [ # required
    #       {
    #         key: "VectorKey", # required
    #         data: {
    #           # One of:
    #           float32: [1.0]
    #         },
    #         metadata: ""null""
    #       }
    #     ]
    #   }
    # @return [Types::ListVectorsOutput]
    def list_vectors(params = {}, options = {})
      request = build_request(:list_vectors, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Creates a bucket policy for a vector bucket. To specify the bucket, you must use either the vector bucket name or the vector bucket Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:PutVectorBucketPolicy</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::PutVectorBucketPolicyInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket.</p>
    # @option params [String] :vector_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the vector bucket.</p>
    # @option params [String] :policy
    #   <p>The <code>JSON</code> that defines the policy. For more information about bucket policies for S3 Vectors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bucket-policy.html">Managing vector bucket policies</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #     policy: "VectorBucketPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_vector_bucket_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutVectorBucketPolicyOutput]
    def put_vector_bucket_policy(params = {}, options = {})
      request = build_request(:put_vector_bucket_policy, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Adds one or more vectors to a vector index. To specify the vector index, you can either use both the vector bucket name and the vector index name, or use the vector index Amazon Resource Name (ARN). </p> <p>For more information about limits, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html">Limitations and restrictions</a> in the <i>Amazon S3 User Guide</i>.</p> <note> <p>When inserting vector data into your vector index, you must provide the vector data as <code>float32</code> (32-bit floating point) values. If you pass higher-precision values to an Amazon Web Services SDK, S3 Vectors converts the values to 32-bit floating point before storing them, and <code>GetVectors</code>, <code>ListVectors</code>, and <code>QueryVectors</code> operations return the float32 values. Different Amazon Web Services SDKs may have different default numeric types, so ensure your vectors are properly formatted as <code>float32</code> values regardless of which SDK you're using. For example, in Python, use <code>numpy.float32</code> or explicitly cast your values.</p> </note> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:PutVectors</code> permission to use this operation. </p> </dd> </dl>
    # @param [Hash, Types::PutVectorsInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index where you want to write vectors. </p>
    # @option params [String] :index_arn
    #   <p>The ARN of the vector index where you want to write vectors.</p>
    # @option params [Array<Types::PutInputVector>] :vectors
    #   <p>The vectors to add to a vector index. The number of vectors in a single request must not exceed the resource capacity, otherwise the request will be rejected with the error <code>ServiceUnavailableException</code> with the error message "Currently unable to handle the request".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     vectors: [ # required
    #       {
    #         key: "VectorKey", # required
    #         data: { # required
    #           # One of:
    #           float32: [1.0]
    #         },
    #         metadata: ""null""
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_vectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutVectorsOutput]
    def put_vectors(params = {}, options = {})
      request = build_request(:put_vectors, params)
      request.send_request(options)
    end

    # <note> <p>Amazon S3 Vectors is in preview release for Amazon S3 and is subject to change.</p> </note> <p>Performs an approximate nearest neighbor search query in a vector index using a query vector. By default, it returns the keys of approximate nearest neighbors. You can optionally include the computed distance (between the query vector and each vector in the response), the vector data, and metadata of each vector in the response. </p> <p>To specify the vector index, you can either use both the vector bucket name and the vector index name, or use the vector index Amazon Resource Name (ARN). </p> <dl> <dt>Permissions</dt> <dd> <p>You must have the <code>s3vectors:QueryVectors</code> permission to use this operation. Additional permissions are required based on the request parameters you specify:</p> <ul> <li> <p>With only <code>s3vectors:QueryVectors</code> permission, you can retrieve vector keys of approximate nearest neighbors and computed distances between these vectors. This permission is sufficient only when you don't set any metadata filters and don't request vector data or metadata (by keeping the <code>returnMetadata</code> parameter set to <code>false</code> or not specified).</p> </li> <li> <p>If you specify a metadata filter or set <code>returnMetadata</code> to true, you must have both <code>s3vectors:QueryVectors</code> and <code>s3vectors:GetVectors</code> permissions. The request fails with a <code>403 Forbidden error</code> if you request metadata filtering, vector data, or metadata without the <code>s3vectors:GetVectors</code> permission.</p> </li> </ul> </dd> </dl>
    # @param [Hash, Types::QueryVectorsInput] params
    # @option params [String] :vector_bucket_name
    #   <p>The name of the vector bucket that contains the vector index. </p>
    # @option params [String] :index_name
    #   <p>The name of the vector index that you want to query. </p>
    # @option params [String] :index_arn
    #   <p>The ARN of the vector index that you want to query.</p>
    # @option params [Integer] :top_k
    #   <p>The number of results to return for each query.</p>
    # @option params [Types::VectorData] :query_vector
    #   <p>The query vector. Ensure that the query vector has the same dimension as the dimension of the vector index that's being queried. For example, if your vector index contains vectors with 384 dimensions, your query vector must also have 384 dimensions. </p>
    # @option params [JSON] :filter
    #   <p>Metadata filter to apply during the query. For more information about metadata keys, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html">Metadata filtering</a> in the <i>Amazon S3 User Guide</i>. </p>
    # @option params [Boolean] :return_metadata
    #   <p>Indicates whether to include metadata in the response. The default value is <code>false</code>.</p>
    # @option params [Boolean] :return_distance
    #   <p>Indicates whether to include the computed distance in the response. The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     top_k: 1, # required
    #     query_vector: { # required
    #       # One of:
    #       float32: [1.0]
    #     },
    #     filter: ""null"",
    #     return_metadata: false,
    #     return_distance: false
    #   }
    #   options = {}
    #   response = client.query_vectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vectors: [ # required
    #       {
    #         key: "VectorKey", # required
    #         data: {
    #           # One of:
    #           float32: [1.0]
    #         },
    #         metadata: ""null"",
    #         distance: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::QueryVectorsOutput]
    def query_vectors(params = {}, options = {})
      request = build_request(:query_vectors, params)
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
      context[:gem_name] = 'aws-sdk-s3vectors'
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
