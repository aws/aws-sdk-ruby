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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::Translate
  # An API client for Aws::Translate.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSShineFrontendService20170701

    add_plugin(::Aws::Translate::Plugins::Endpoint)
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Translate::EndpointProvider)
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

    # <p>Creates a parallel data resource in Amazon Translate by importing an input file from
    #       Amazon S3. Parallel data files contain examples that show how you want segments of text to be
    #       translated. By adding parallel data, you can influence the style, tone, and word choice in
    #       your translation output.</p>
    # @param [Hash, Types::CreateParallelDataRequest] params
    # @option params [String] :name
    #   <p>A custom name for the parallel data resource in Amazon Translate. You must assign a name
    #         that is unique in the account and region.</p>
    # @option params [String] :description
    #   <p>A custom description for the parallel data resource in Amazon Translate.</p>
    # @option params [Types::ParallelDataConfig] :parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    # @option params [Types::EncryptionKey] :encryption_key
    #   <p>The encryption key used to encrypt this object.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is automatically generated when you use
    #         Amazon Translate through an AWS SDK.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to be associated with this resource. A tag is a key-value pair that
    #         adds metadata to a resource. Each tag key for the resource must be unique.
    #         For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">
    #           Tagging your resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "Description",
    #     parallel_data_config: { # required
    #       s3_uri: "S3Uri",
    #       format: "TSV" # One of: ["TSV", "CSV", "TMX"]
    #     },
    #     encryption_key: {
    #       type: "KMS" # One of: ["KMS"], # required
    #       id: "EncryptionKeyID", # required
    #     },
    #     client_token: "ClientTokenString", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_parallel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceName",
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   }
    # @return [Types::CreateParallelDataResponse]
    def create_parallel_data(params = {}, options = {})
      request = build_request(:create_parallel_data, params)
      request.send_request(options)
    end

    # <p>Deletes a parallel data resource in Amazon Translate.</p>
    # @param [Hash, Types::DeleteParallelDataRequest] params
    # @option params [String] :name
    #   <p>The name of the parallel data resource that is being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_parallel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceName",
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"]
    #   }
    # @return [Types::DeleteParallelDataResponse]
    def delete_parallel_data(params = {}, options = {})
      request = build_request(:delete_parallel_data, params)
      request.send_request(options)
    end

    # <p>A synchronous action that deletes a custom terminology.</p>
    # @param [Hash, Types::DeleteTerminologyRequest] params
    # @option params [String] :name
    #   <p>The name of the custom terminology being deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_terminology(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_terminology(params = {}, options = {})
      request = build_request(:delete_terminology, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with an asynchronous batch translation job including name,
    #       ID, status, source and target languages, input/output S3 buckets, and so on.</p>
    # @param [Hash, Types::DescribeTextTranslationJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_text_translation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     text_translation_job_properties: {
    #       job_id: "JobId",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       job_details: {
    #         translated_documents_count: 1,
    #         documents_with_errors_count: 1,
    #         input_documents_count: 1
    #       },
    #       source_language_code: "LanguageCodeString",
    #       target_language_codes: ["LanguageCodeString"],
    #       terminology_names: ["ResourceName"],
    #       parallel_data_names: ["ResourceName"],
    #       message: "UnboundedLengthString",
    #       submitted_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         content_type: "ContentType", # required
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         encryption_key: {
    #           type: "KMS" # One of: ["KMS"], # required
    #           id: "EncryptionKeyID", # required
    #         }
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       settings: {
    #         formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #         profanity: "MASK" # One of: ["MASK"],
    #         brevity: "ON" # One of: ["ON"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeTextTranslationJobResponse]
    def describe_text_translation_job(params = {}, options = {})
      request = build_request(:describe_text_translation_job, params)
      request.send_request(options)
    end

    # <p>Provides information about a parallel data resource.</p>
    # @param [Hash, Types::GetParallelDataRequest] params
    # @option params [String] :name
    #   <p>The name of the parallel data resource that is being retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_parallel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parallel_data_properties: {
    #       name: "ResourceName",
    #       arn: "ParallelDataArn",
    #       description: "Description",
    #       status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #       source_language_code: "LanguageCodeString",
    #       target_language_codes: ["LanguageCodeString"],
    #       parallel_data_config: {
    #         s3_uri: "S3Uri",
    #         format: "TSV" # One of: ["TSV", "CSV", "TMX"]
    #       },
    #       message: "UnboundedLengthString",
    #       imported_data_size: 1,
    #       imported_record_count: 1,
    #       failed_record_count: 1,
    #       skipped_record_count: 1,
    #       encryption_key: {
    #         type: "KMS" # One of: ["KMS"], # required
    #         id: "EncryptionKeyID", # required
    #       },
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       latest_update_attempt_status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #       latest_update_attempt_at: Time.now
    #     },
    #     data_location: {
    #       repository_type: "String", # required
    #       location: "String", # required
    #     },
    #     auxiliary_data_location: {
    #       repository_type: "String", # required
    #       location: "String", # required
    #     },
    #     latest_update_attempt_auxiliary_data_location: {
    #       repository_type: "String", # required
    #       location: "String", # required
    #     }
    #   }
    # @return [Types::GetParallelDataResponse]
    def get_parallel_data(params = {}, options = {})
      request = build_request(:get_parallel_data, params)
      request.send_request(options)
    end

    # <p>Retrieves a custom terminology.</p>
    # @param [Hash, Types::GetTerminologyRequest] params
    # @option params [String] :name
    #   <p>The name of the custom terminology being retrieved.</p>
    # @option params [String] :terminology_data_format
    #   <p>The data format of the custom terminology being retrieved.</p>
    #            <p>If you don't specify this parameter, Amazon Translate returns a file with the same format
    #         as the file that was imported to create the terminology. </p>
    #            <p>If you specify this parameter when you retrieve a multi-directional terminology resource,
    #         you must specify the same format as the input file that was imported to create it. Otherwise,
    #         Amazon Translate throws an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     terminology_data_format: "CSV" # One of: ["CSV", "TMX", "TSV"]
    #   }
    #   options = {}
    #   response = client.get_terminology(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terminology_properties: {
    #       name: "ResourceName",
    #       description: "Description",
    #       arn: "TerminologyArn",
    #       source_language_code: "LanguageCodeString",
    #       target_language_codes: ["LanguageCodeString"],
    #       encryption_key: {
    #         type: "KMS" # One of: ["KMS"], # required
    #         id: "EncryptionKeyID", # required
    #       },
    #       size_bytes: 1,
    #       term_count: 1,
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       directionality: "UNI" # One of: ["UNI", "MULTI"],
    #       message: "UnboundedLengthString",
    #       skipped_term_count: 1,
    #       format: "CSV" # One of: ["CSV", "TMX", "TSV"]
    #     },
    #     terminology_data_location: {
    #       repository_type: "String", # required
    #       location: "String", # required
    #     },
    #     auxiliary_data_location: {
    #       repository_type: "String", # required
    #       location: "String", # required
    #     }
    #   }
    # @return [Types::GetTerminologyResponse]
    def get_terminology(params = {}, options = {})
      request = build_request(:get_terminology, params)
      request.send_request(options)
    end

    # <p>Creates or updates a custom terminology, depending on whether one already exists for the
    #       given terminology name. Importing a terminology with the same name as an existing one will
    #       merge the terminologies based on the chosen merge strategy. The only supported merge strategy
    #       is OVERWRITE, where the imported terminology overwrites the existing terminology of the same
    #       name.</p>
    #          <p>If you import a terminology that overwrites an existing one, the new terminology takes up
    #       to 10 minutes to fully propagate. After that, translations have access to the new
    #       terminology.</p>
    # @param [Hash, Types::ImportTerminologyRequest] params
    # @option params [String] :name
    #   <p>The name of the custom terminology being imported.</p>
    # @option params [String] :merge_strategy
    #   <p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE
    #         merge strategy is supported. In this case, the imported terminology will overwrite an existing
    #         terminology of the same name.</p>
    # @option params [String] :description
    #   <p>The description of the custom terminology being imported.</p>
    # @option params [Types::TerminologyData] :terminology_data
    #   <p>The terminology data for the custom terminology being imported.</p>
    # @option params [Types::EncryptionKey] :encryption_key
    #   <p>The encryption key for the custom terminology being imported.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to be associated with this resource. A tag is a key-value pair that
    #         adds metadata to a resource. Each tag key for the resource must be unique.
    #         For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">
    #           Tagging your resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     merge_strategy: "OVERWRITE" # One of: ["OVERWRITE"], # required
    #     description: "Description",
    #     terminology_data: { # required
    #       file: "data", # required
    #       format: "CSV" # One of: ["CSV", "TMX", "TSV"], # required
    #       directionality: "UNI" # One of: ["UNI", "MULTI"]
    #     },
    #     encryption_key: {
    #       type: "KMS" # One of: ["KMS"], # required
    #       id: "EncryptionKeyID", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_terminology(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terminology_properties: {
    #       name: "ResourceName",
    #       description: "Description",
    #       arn: "TerminologyArn",
    #       source_language_code: "LanguageCodeString",
    #       target_language_codes: ["LanguageCodeString"],
    #       encryption_key: {
    #         type: "KMS" # One of: ["KMS"], # required
    #         id: "EncryptionKeyID", # required
    #       },
    #       size_bytes: 1,
    #       term_count: 1,
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       directionality: "UNI" # One of: ["UNI", "MULTI"],
    #       message: "UnboundedLengthString",
    #       skipped_term_count: 1,
    #       format: "CSV" # One of: ["CSV", "TMX", "TSV"]
    #     },
    #     auxiliary_data_location: {
    #       repository_type: "String", # required
    #       location: "String", # required
    #     }
    #   }
    # @return [Types::ImportTerminologyResponse]
    def import_terminology(params = {}, options = {})
      request = build_request(:import_terminology, params)
      request.send_request(options)
    end

    # <p>Provides a list of languages (RFC-5646 codes and names) that Amazon Translate supports.</p>
    # @param [Hash, Types::ListLanguagesRequest] params
    # @option params [String] :display_language_code
    #   <p>The language code for the language to use to display the language names in the response.
    #         The language code is <code>en</code> by default. </p>
    # @option params [String] :next_token
    #   <p>Include the NextToken value to fetch the next group of supported languages. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     display_language_code: "de" # One of: ["de", "en", "es", "fr", "it", "ja", "ko", "pt", "zh", "zh-TW"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_languages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     languages: [
    #       {
    #         language_name: "LocalizedNameString", # required
    #         language_code: "LanguageCodeString", # required
    #       }
    #     ],
    #     display_language_code: "de" # One of: ["de", "en", "es", "fr", "it", "ja", "ko", "pt", "zh", "zh-TW"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLanguagesResponse]
    def list_languages(params = {}, options = {})
      request = build_request(:list_languages, params)
      request.send_request(options)
    end

    # <p>Provides a list of your parallel data resources in Amazon Translate.</p>
    # @param [Hash, Types::ListParallelDataRequest] params
    # @option params [String] :next_token
    #   <p>A string that specifies the next page of results to return in a paginated response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of parallel data resources returned for each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_parallel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parallel_data_properties_list: [
    #       {
    #         name: "ResourceName",
    #         arn: "ParallelDataArn",
    #         description: "Description",
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #         source_language_code: "LanguageCodeString",
    #         target_language_codes: ["LanguageCodeString"],
    #         parallel_data_config: {
    #           s3_uri: "S3Uri",
    #           format: "TSV" # One of: ["TSV", "CSV", "TMX"]
    #         },
    #         message: "UnboundedLengthString",
    #         imported_data_size: 1,
    #         imported_record_count: 1,
    #         failed_record_count: 1,
    #         skipped_record_count: 1,
    #         encryption_key: {
    #           type: "KMS" # One of: ["KMS"], # required
    #           id: "EncryptionKeyID", # required
    #         },
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         latest_update_attempt_status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #         latest_update_attempt_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListParallelDataResponse]
    def list_parallel_data(params = {}, options = {})
      request = build_request(:list_parallel_data, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with a given Amazon Translate resource.
    #       For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">
    #         Tagging your resources</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Translate resource you are querying.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Provides a list of custom terminologies associated with your account.</p>
    # @param [Hash, Types::ListTerminologiesRequest] params
    # @option params [String] :next_token
    #   <p>If the result of the request to ListTerminologies was truncated, include the NextToken to
    #         fetch the next group of custom terminologies. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of custom terminologies returned per list request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_terminologies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terminology_properties_list: [
    #       {
    #         name: "ResourceName",
    #         description: "Description",
    #         arn: "TerminologyArn",
    #         source_language_code: "LanguageCodeString",
    #         target_language_codes: ["LanguageCodeString"],
    #         encryption_key: {
    #           type: "KMS" # One of: ["KMS"], # required
    #           id: "EncryptionKeyID", # required
    #         },
    #         size_bytes: 1,
    #         term_count: 1,
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         directionality: "UNI" # One of: ["UNI", "MULTI"],
    #         message: "UnboundedLengthString",
    #         skipped_term_count: 1,
    #         format: "CSV" # One of: ["CSV", "TMX", "TSV"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTerminologiesResponse]
    def list_terminologies(params = {}, options = {})
      request = build_request(:list_terminologies, params)
      request.send_request(options)
    end

    # <p>Gets a list of the batch translation jobs that you have submitted.</p>
    # @param [Hash, Types::ListTextTranslationJobsRequest] params
    # @option params [Types::TextTranslationJobFilter] :filter
    #   <p>The parameters that specify which batch translation jobs to retrieve. Filters include job
    #         name, job status, and submission time. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default value is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submitted_before_time: Time.now,
    #       submitted_after_time: Time.now
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_text_translation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     text_translation_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         job_details: {
    #           translated_documents_count: 1,
    #           documents_with_errors_count: 1,
    #           input_documents_count: 1
    #         },
    #         source_language_code: "LanguageCodeString",
    #         target_language_codes: ["LanguageCodeString"],
    #         terminology_names: ["ResourceName"],
    #         parallel_data_names: ["ResourceName"],
    #         message: "UnboundedLengthString",
    #         submitted_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           content_type: "ContentType", # required
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           encryption_key: {
    #             type: "KMS" # One of: ["KMS"], # required
    #             id: "EncryptionKeyID", # required
    #           }
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         settings: {
    #           formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #           profanity: "MASK" # One of: ["MASK"],
    #           brevity: "ON" # One of: ["ON"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTextTranslationJobsResponse]
    def list_text_translation_jobs(params = {}, options = {})
      request = build_request(:list_text_translation_jobs, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous batch translation job. Use batch translation jobs to
    #       translate large volumes of text across multiple documents at once.
    #       For batch translation, you can input documents with different source languages (specify <code>auto</code>
    #       as the source language). You can specify one
    #       or more target languages. Batch translation translates each input document into each of the target languages.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/translate/latest/dg/async.html">Asynchronous batch processing</a>.</p>
    # 
    #          <p>Batch translation jobs can be described with the <a>DescribeTextTranslationJob</a> operation, listed with the <a>ListTextTranslationJobs</a> operation, and stopped with the <a>StopTextTranslationJob</a> operation.</p>
    # @param [Hash, Types::StartTextTranslationJobRequest] params
    # @option params [String] :job_name
    #   <p>The name of the batch translation job to be performed.</p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input documents for the translation job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies the S3 folder to which your job output will be saved.
    #         </p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role
    #         that grants Amazon Translate read access to your input data. For more information, see
    #         <a href="https://docs.aws.amazon.com/translate/latest/dg/identity-and-access-management.html">Identity and access management </a>.</p>
    # @option params [String] :source_language_code
    #   <p>The language code of the input language. Specify the language if all input documents share the same language.
    #         If you don't know the language of the source files, or your input documents contains different source
    #         languages, select <code>auto</code>. Amazon Translate auto detects the source language for each input document.
    #         For a list of supported language codes, see
    #         <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    # @option params [Array<String>] :target_language_codes
    #   <p>The target languages of the translation job. Enter up to 10 language codes.
    #         Each input file is translated into each target language.</p>
    #            <p>Each language code is 2 or 5 characters long. For a list of language codes, see <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    # @option params [Array<String>] :terminology_names
    #   <p>The name of a custom terminology resource to add to the translation job. This resource
    #         lists examples source terms and the desired translation for each term.</p>
    #            <p>This parameter accepts only one custom terminology resource.</p>
    #            <p>If you specify multiple target languages for the
    #         job, translate uses the designated terminology for each
    #         requested target language that has an entry for the source term
    #         in the terminology file.</p>
    #            <p>For a list of available custom terminology resources, use the <a>ListTerminologies</a> operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html">Custom terminology</a>.</p>
    # @option params [Array<String>] :parallel_data_names
    #   <p>The name of a parallel data resource to add to the translation job. This resource consists
    #         of examples that show how you want segments of text to be translated.
    #         If you specify multiple target languages for
    #         the job, the parallel data file must include translations for
    #         all the target languages.</p>
    #            <p>When you add parallel
    #         data to a translation job, you create an <i>Active Custom Translation</i> job. </p>
    #            <p>This parameter accepts only one parallel data resource.</p>
    #            <note>
    #               <p>Active Custom Translation jobs are priced at a higher rate than other jobs that don't
    #           use parallel data. For more information, see <a href="http://aws.amazon.com/translate/pricing/">Amazon Translate pricing</a>.</p>
    #            </note>
    #            <p>For a list of available parallel data resources, use the <a>ListParallelData</a> operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-parallel-data.html">
    #       Customizing your translations with parallel data</a>.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is generated for you when using the Amazon Translate
    #         SDK.</p>
    # @option params [Types::TranslationSettings] :settings
    #   <p>Settings to configure your translation output. You can configure the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Brevity: not supported.</p>
    #               </li>
    #               <li>
    #                  <p>Formality: sets the formality level of the output text.</p>
    #               </li>
    #               <li>
    #                  <p>Profanity: masks profane words and phrases in your translation output.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName",
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       content_type: "ContentType", # required
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       encryption_key: {
    #         type: "KMS" # One of: ["KMS"], # required
    #         id: "EncryptionKeyID", # required
    #       }
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_codes: ["LanguageCodeString"], # required
    #     terminology_names: ["ResourceName"],
    #     parallel_data_names: ["ResourceName"],
    #     client_token: "ClientTokenString", # required
    #     settings: {
    #       formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #       profanity: "MASK" # One of: ["MASK"],
    #       brevity: "ON" # One of: ["ON"]
    #     }
    #   }
    #   options = {}
    #   response = client.start_text_translation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartTextTranslationJobResponse]
    def start_text_translation_job(params = {}, options = {})
      request = build_request(:start_text_translation_job, params)
      request.send_request(options)
    end

    # <p>Stops an asynchronous batch translation job that is in progress.</p>
    #          <p>If the job's state is <code>IN_PROGRESS</code>, the job will be marked for termination and
    #       put into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped,
    #       it is put into the <code>COMPLETED</code> state. Otherwise, the job is put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>Asynchronous batch translation jobs are started with the <a>StartTextTranslationJob</a> operation. You can use the <a>DescribeTextTranslationJob</a> or <a>ListTextTranslationJobs</a>
    #       operations to get a batch translation job's <code>JobId</code>.</p>
    # @param [Hash, Types::StopTextTranslationJobRequest] params
    # @option params [String] :job_id
    #   <p>The job ID of the job to be stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_text_translation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopTextTranslationJobResponse]
    def stop_text_translation_job(params = {}, options = {})
      request = build_request(:stop_text_translation_job, params)
      request.send_request(options)
    end

    # <p>Associates a specific tag with a resource. A tag is a key-value pair
    #       that adds as a metadata to a resource.
    #       For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">
    #         Tagging your resources</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Translate resource to which you want
    #         to associate the tags. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags being associated with a specific Amazon Translate resource. There can be a maximum
    #         of 50 tags (both existing and pending) associated with a specific resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Translates the input document from the source language to the target language.    
    #       This synchronous operation supports text, HTML, or Word documents as the input document.
    #       
    #       <code>TranslateDocument</code> supports translations from English to any supported language, 
    #       and from any supported language to English. Therefore, specify either the source language code
    #       or the target language code as “en” (English). 
    #     </p>
    #          <p> If you set the <code>Formality</code> parameter, the request will fail if the target language does 
    #        not support formality. For a list of target languages that support formality, see
    #        <a href="https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html">Setting formality</a>.
    #     </p>
    # @param [Hash, Types::TranslateDocumentRequest] params
    # @option params [Types::Document] :document
    #   <p>The content and content type for the document to be translated. The document size must not exceed 100 KB.</p>
    # @option params [Array<String>] :terminology_names
    #   <p>The name of a terminology list file to add to the translation job. This file
    #         provides source terms and the desired translation for each term. 
    #         A terminology list can contain a maximum of 256 terms.
    #         You can use one custom terminology resource in your translation request.</p>
    #            <p>Use the <a>ListTerminologies</a> operation
    #          to get the available terminology lists.</p>
    #            <p>For more information about custom terminology lists, see <a href="https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html">Custom terminology</a>.</p>
    # @option params [String] :source_language_code
    #   <p>The language code for the language of the source text. For a list of supported language codes, see
    #         <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    #            <p>To have Amazon Translate determine the source language of your text, you can specify
    #         <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify
    #         <code>auto</code>, Amazon Translate will call <a href="https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html">Amazon
    #           Comprehend</a> to determine the source language.</p>
    #            <note>
    #               <p>If you specify <code>auto</code>, you must send the <code>TranslateDocument</code> request in a region that supports
    #         Amazon Comprehend. Otherwise, the request returns an error indicating that autodetect is not supported. </p>
    #            </note>
    # @option params [String] :target_language_code
    #   <p>The language code requested for the translated document.  
    #         For a list of supported language codes, see
    #         <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    # @option params [Types::TranslationSettings] :settings
    #   <p>Settings to configure your translation output. You can configure the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Brevity: not supported.</p>
    #               </li>
    #               <li>
    #                  <p>Formality: sets the formality level of the output text.</p>
    #               </li>
    #               <li>
    #                  <p>Profanity: masks profane words and phrases in your translation output.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     document: { # required
    #       content: "data", # required
    #       content_type: "ContentType", # required
    #     },
    #     terminology_names: ["ResourceName"],
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #     settings: {
    #       formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #       profanity: "MASK" # One of: ["MASK"],
    #       brevity: "ON" # One of: ["ON"]
    #     }
    #   }
    #   options = {}
    #   response = client.translate_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     translated_document: { # required
    #       content: "data", # required
    #     },
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #     applied_terminologies: [
    #       {
    #         name: "ResourceName",
    #         terms: [
    #           {
    #             source_text: "String",
    #             target_text: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     applied_settings: {
    #       formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #       profanity: "MASK" # One of: ["MASK"],
    #       brevity: "ON" # One of: ["ON"]
    #     }
    #   }
    # @return [Types::TranslateDocumentResponse]
    def translate_document(params = {}, options = {})
      request = build_request(:translate_document, params)
      request.send_request(options)
    end

    # <p>Translates input text from the source language to the target language. For a list of
    #       available languages and language codes, see <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    # @param [Hash, Types::TranslateTextRequest] params
    # @option params [String] :text
    #   <p>The text to translate. The text string can be a maximum of 10,000 bytes long. Depending on
    #         your character set, this may be fewer than 10,000 characters.</p>
    # @option params [Array<String>] :terminology_names
    #   <p>The name of a terminology list file to add to the translation job. This file
    #         provides source terms and the desired translation for each term. 
    #         A terminology list can contain a maximum of 256 terms.
    #         You can use one custom terminology resource in your translation request.</p>
    #            <p>Use the <a>ListTerminologies</a> operation
    #         to get the available terminology lists.</p>
    #            <p>For more information about custom terminology lists, see <a href="https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html">Custom terminology</a>.</p>
    # @option params [String] :source_language_code
    #   <p>The language code for the language of the source text. For a list of language codes, see <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    #            <p>To have Amazon Translate determine the source language of your text, you can specify
    #           <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify
    #           <code>auto</code>, Amazon Translate will call <a href="https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html">Amazon
    #           Comprehend</a> to determine the source language.</p>
    #            <note>
    #               <p>If you specify <code>auto</code>, you must send the <code>TranslateText</code> request in a region that supports
    #             Amazon Comprehend. Otherwise, the request returns an error indicating that autodetect is not supported. </p>
    #            </note>
    # @option params [String] :target_language_code
    #   <p>The language code requested for the language of the target text.
    #         For a list of language codes, see <a href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported languages</a>.</p>
    # @option params [Types::TranslationSettings] :settings
    #   <p>Settings to configure your translation output. You can configure the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Brevity: reduces the length of the translated output for most translations.</p>
    #               </li>
    #               <li>
    #                  <p>Formality: sets the formality level of the output text.</p>
    #               </li>
    #               <li>
    #                  <p>Profanity: masks profane words and phrases in your translation output.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "BoundedLengthString", # required
    #     terminology_names: ["ResourceName"],
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #     settings: {
    #       formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #       profanity: "MASK" # One of: ["MASK"],
    #       brevity: "ON" # One of: ["ON"]
    #     }
    #   }
    #   options = {}
    #   response = client.translate_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     translated_text: "TranslatedTextString", # required
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #     applied_terminologies: [
    #       {
    #         name: "ResourceName",
    #         terms: [
    #           {
    #             source_text: "String",
    #             target_text: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     applied_settings: {
    #       formality: "FORMAL" # One of: ["FORMAL", "INFORMAL"],
    #       profanity: "MASK" # One of: ["MASK"],
    #       brevity: "ON" # One of: ["ON"]
    #     }
    #   }
    # @return [Types::TranslateTextResponse]
    def translate_text(params = {}, options = {})
      request = build_request(:translate_text, params)
      request.send_request(options)
    end

    # <p>Removes a specific tag associated with an Amazon Translate resource.
    #       For more information, see <a href="https://docs.aws.amazon.com/translate/latest/dg/tagging.html">
    #         Tagging your resources</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the given Amazon Translate resource from which you
    #         want to remove the tags. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The initial part of a key-value pair that forms a tag being removed from a given resource.
    #           Keys must be unique and cannot be duplicated for a particular resource.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <p>Updates a previously created parallel data resource by importing a new input file from
    #       Amazon S3.</p>
    # @param [Hash, Types::UpdateParallelDataRequest] params
    # @option params [String] :name
    #   <p>The name of the parallel data resource being updated.</p>
    # @option params [String] :description
    #   <p>A custom description for the parallel data resource in Amazon Translate.</p>
    # @option params [Types::ParallelDataConfig] :parallel_data_config
    #   <p>Specifies the format and S3 location of the parallel data input file.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for the request. This token is automatically generated when you use
    #         Amazon Translate through an AWS SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "Description",
    #     parallel_data_config: { # required
    #       s3_uri: "S3Uri",
    #       format: "TSV" # One of: ["TSV", "CSV", "TMX"]
    #     },
    #     client_token: "ClientTokenString", # required
    #   }
    #   options = {}
    #   response = client.update_parallel_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ResourceName",
    #     status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #     latest_update_attempt_status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"],
    #     latest_update_attempt_at: Time.now
    #   }
    # @return [Types::UpdateParallelDataResponse]
    def update_parallel_data(params = {}, options = {})
      request = build_request(:update_parallel_data, params)
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
      context[:gem_name] = 'aws-sdk-translate'
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
