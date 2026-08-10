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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:omics)

module Aws::Omics
  # An API client for Aws::Omics.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Omics
    @identifier = :omics

    add_plugin(::Aws::Omics::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Omics::EndpointProvider)
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

    # <p>Stops a multipart read set upload into a sequence store and returns a response with no body if the operation is successful. To confirm that a multipart read set upload has been stopped, use the <code>ListMultipartReadSetUploads</code> API operation to view all active multipart read set uploads.</p>
    # @param [Hash, Types::AbortMultipartReadSetUploadRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The sequence store ID for the store involved in the multipart upload.</p>
    # @option params [String] :upload_id
    #   <p>The ID for the multipart upload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #   }
    #   options = {}
    #   response = client.abort_multipart_read_set_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AbortMultipartReadSetUploadResponse]
    def abort_multipart_read_set_upload(params = {}, options = {})
      request = build_request(:abort_multipart_read_set_upload, params)
      request.send_request(options)
    end

    # <p>Accept a resource share request.</p>
    # @param [Hash, Types::AcceptShareRequest] params
    # @option params [String] :share_id
    #   <p>The ID of the resource share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "String", # required
    #   }
    #   options = {}
    #   response = client.accept_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ShareStatus"
    #   }
    # @return [Types::AcceptShareResponse]
    def accept_share(params = {}, options = {})
      request = build_request(:accept_share, params)
      request.send_request(options)
    end

    # <p>Deletes one or more read sets. If the operation is successful, it returns a response with no body. If there is an error with deleting one of the read sets, the operation returns an error list. If the operation successfully deletes only a subset of files, it will return an error list for the remaining files that fail to be deleted. There is a limit of 100 read sets that can be deleted in each <code>BatchDeleteReadSet</code> API call.</p>
    # @param [Hash, Types::BatchDeleteReadSetRequest] params
    # @option params [Array<String>] :ids
    #   <p>The read sets' IDs.</p>
    # @option params [String] :sequence_store_id
    #   <p>The read sets' sequence store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["ReadSetId"], # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.batch_delete_read_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         id: "ReadSetId", # required
    #         code: "String", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteReadSetResponse]
    def batch_delete_read_set(params = {}, options = {})
      request = build_request(:batch_delete_read_set, params)
      request.send_request(options)
    end

    # <p>Cancels an annotation import job.</p>
    # @param [Hash, Types::CancelAnnotationImportRequest] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.cancel_annotation_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelAnnotationImportResponse]
    def cancel_annotation_import_job(params = {}, options = {})
      request = build_request(:cancel_annotation_import_job, params)
      request.send_request(options)
    end

    # <p>Cancels a run using its ID and returns a response with no body if the operation is successful. To confirm that the run has been cancelled, use the <code>ListRuns</code> API operation to check that it is no longer listed.</p>
    # @param [Hash, Types::CancelRunRequest] params
    # @option params [String] :id
    #   <p>The run's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunId", # required
    #   }
    #   options = {}
    #   response = client.cancel_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def cancel_run(params = {}, options = {})
      request = build_request(:cancel_run, params)
      request.send_request(options)
    end

    # <p>Cancels a variant import job.</p>
    # @param [Hash, Types::CancelVariantImportRequest] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.cancel_variant_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelVariantImportResponse]
    def cancel_variant_import_job(params = {}, options = {})
      request = build_request(:cancel_variant_import_job, params)
      request.send_request(options)
    end

    # <p>Completes a multipart read set upload into a sequence store after you have initiated the upload process with <code>CreateMultipartReadSetUpload</code> and uploaded all read set parts using <code>UploadReadSetPart</code>. You must specify the parts you uploaded using the parts parameter. If the operation is successful, it returns the read set ID(s) of the uploaded read set(s).</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/synchronous-uploads.html">Direct upload to a sequence store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CompleteMultipartReadSetUploadRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The sequence store ID for the store involved in the multipart upload.</p>
    # @option params [String] :upload_id
    #   <p>The ID for the multipart upload.</p>
    # @option params [Array<Types::CompleteReadSetUploadPartListItem>] :parts
    #   <p>The individual uploads or parts of a multipart upload.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     parts: [ # required
    #       {
    #         part_number: 1, # required
    #         part_source: "ReadSetPartSource", # required
    #         checksum: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.complete_multipart_read_set_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     read_set_id: "ReadSetId", # required
    #   }
    # @return [Types::CompleteMultipartReadSetUploadResponse]
    def complete_multipart_read_set_upload(params = {}, options = {})
      request = build_request(:complete_multipart_read_set_upload, params)
      request.send_request(options)
    end

    # <p>Creates an annotation store.</p>
    # @param [Hash, Types::CreateAnnotationStoreRequest] params
    # @option params [Types::ReferenceItem] :reference
    #   <p>The genome reference for the store's annotations.</p>
    # @option params [String] :name
    #   <p>A name for the store.</p>
    # @option params [String] :description
    #   <p>A description for the store.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the store.</p>
    # @option params [String] :version_name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    # @option params [Types::SseConfig] :sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    # @option params [String] :store_format
    #   <p>The annotation file format of the store.</p>
    # @option params [Types::StoreOptions] :store_options
    #   <p>File parsing options for the annotation store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reference: {
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     name: "StoreName",
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     version_name: "VersionName",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     store_format: "StoreFormat", # required
    #     store_options: {
    #       # One of:
    #       tsv_store_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_annotation_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     reference: {
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     store_format: "StoreFormat",
    #     store_options: {
    #       # One of:
    #       tsv_store_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     },
    #     status: "StoreStatus", # required
    #     name: "String", # required
    #     version_name: "VersionName", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::CreateAnnotationStoreResponse]
    def create_annotation_store(params = {}, options = {})
      request = build_request(:create_annotation_store, params)
      request.send_request(options)
    end

    # <p> Creates a new version of an annotation store. </p>
    # @param [Hash, Types::CreateAnnotationStoreVersionRequest] params
    # @option params [String] :name
    #   <p> The name of an annotation store version from which versions are being created. </p>
    # @option params [String] :version_name
    #   <p> The name given to an annotation store version to distinguish it from other versions. </p>
    # @option params [String] :description
    #   <p> The description of an annotation store version. </p>
    # @option params [Types::VersionOptions] :version_options
    #   <p> The options for an annotation store version. </p>
    # @option params [Hash<String, String>] :tags
    #   <p> Any tags added to annotation store version. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StoreName", # required
    #     version_name: "VersionName", # required
    #     description: "Description",
    #     version_options: {
    #       # One of:
    #       tsv_version_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_annotation_store_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     version_name: "VersionName", # required
    #     store_id: "ResourceId", # required
    #     version_options: {
    #       # One of:
    #       tsv_version_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     },
    #     name: "StoreName", # required
    #     status: "VersionStatus", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::CreateAnnotationStoreVersionResponse]
    def create_annotation_store_version(params = {}, options = {})
      request = build_request(:create_annotation_store_version, params)
      request.send_request(options)
    end

    # <p>Initiates a multipart read set upload for uploading partitioned source files into a sequence store. You can directly import source files from an EC2 instance and other local compute, or from an S3 bucket. To separate these source files into parts, use the <code>split</code> operation. Each part cannot be larger than 100 MB. If the operation is successful, it provides an <code>uploadId</code> which is required by the <code>UploadReadSetPart</code> API operation to upload parts into a sequence store.</p> <p>To continue uploading a multipart read set into your sequence store, you must use the <code>UploadReadSetPart</code> API operation to upload each part individually following the steps below:</p> <ul> <li> <p>Specify the <code>uploadId</code> obtained from the previous call to <code>CreateMultipartReadSetUpload</code>.</p> </li> <li> <p>Upload parts for that <code>uploadId</code>.</p> </li> </ul> <p>When you have finished uploading parts, use the <code>CompleteMultipartReadSetUpload</code> API to complete the multipart read set upload and to retrieve the final read set IDs in the response.</p> <p>To learn more about creating parts and the <code>split</code> operation, see <a href="https://docs.aws.amazon.com/omics/latest/dev/synchronous-uploads.html">Direct upload to a sequence store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CreateMultipartReadSetUploadRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The sequence store ID for the store that is the destination of the multipart uploads.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token that can be used to avoid triggering multiple multipart uploads.</p>
    # @option params [String] :source_file_type
    #   <p>The type of file being uploaded.</p>
    # @option params [String] :subject_id
    #   <p>The source's subject ID.</p>
    # @option params [String] :sample_id
    #   <p>The source's sample ID.</p>
    # @option params [String] :generated_from
    #   <p>Where the source originated.</p>
    # @option params [String] :reference_arn
    #   <p>The ARN of the reference.</p>
    # @option params [String] :name
    #   <p>The name of the read set.</p>
    # @option params [String] :description
    #   <p>The description of the read set.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Any tags to add to the read set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     client_token: "ClientToken",
    #     source_file_type: "FileType", # required
    #     subject_id: "SubjectId", # required
    #     sample_id: "SampleId", # required
    #     generated_from: "GeneratedFrom",
    #     reference_arn: "ReferenceArn",
    #     name: "ReadSetName", # required
    #     description: "ReadSetDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_multipart_read_set_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     source_file_type: "FileType", # required
    #     subject_id: "SubjectId", # required
    #     sample_id: "SampleId", # required
    #     generated_from: "GeneratedFrom",
    #     reference_arn: "ReferenceArn", # required
    #     name: "ReadSetName",
    #     description: "ReadSetDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::CreateMultipartReadSetUploadResponse]
    def create_multipart_read_set_upload(params = {}, options = {})
      request = build_request(:create_multipart_read_set_upload, params)
      request.send_request(options)
    end

    # <p>Creates a reference store and returns metadata in JSON format. Reference stores are used to store reference genomes in FASTA format. A reference store is created when the first reference genome is imported. To import additional reference genomes from an Amazon S3 bucket, use the <code>StartReferenceImportJob</code> API operation. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/create-reference-store.html">Creating a HealthOmics reference store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CreateReferenceStoreRequest] params
    # @option params [String] :name
    #   <p>A name for the store.</p>
    # @option params [String] :description
    #   <p>A description for the store.</p>
    # @option params [Types::SseConfig] :sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the store.</p>
    # @option params [String] :client_token
    #   <p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ReferenceStoreName", # required
    #     description: "ReferenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_reference_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ReferenceStoreId", # required
    #     arn: "ReferenceStoreArn", # required
    #     name: "ReferenceStoreName",
    #     description: "ReferenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::CreateReferenceStoreResponse]
    def create_reference_store(params = {}, options = {})
      request = build_request(:create_reference_store, params)
      request.send_request(options)
    end

    # <p>Creates a run cache to store and reference task outputs from completed private runs. Specify an Amazon S3 location where Amazon Web Services HealthOmics saves the cached data. This data must be immediately accessible and not in an archived state. You can save intermediate task files to a run cache if they are declared as task outputs in the workflow definition file.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-call-caching.html">Call caching</a> and <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-create.html">Creating a run cache</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CreateRunCacheRequest] params
    # @option params [String] :cache_behavior
    #   <p>Default cache behavior for runs that use this cache. Supported values are:</p> <p> <code>CACHE_ON_FAILURE</code>: Caches task outputs from completed tasks for runs that fail. This setting is useful if you're debugging a workflow that fails after several tasks completed successfully. The subsequent run uses the cache outputs for previously-completed tasks if the task definition, inputs, and container in ECR are identical to the prior run.</p> <p> <code>CACHE_ALWAYS</code>: Caches task outputs from completed tasks for all runs. This setting is useful in development mode, but do not use it in a production setting.</p> <p>If you don't specify a value, the default behavior is CACHE_ON_FAILURE. When you start a run that uses this cache, you can override the default cache behavior.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior">Run cache behavior</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :cache_s3_location
    #   <p>Specify the S3 location for storing the cached task outputs. This data must be immediately accessible (not in an archived state).</p>
    # @option params [String] :description
    #   <p>Enter a description of the run cache.</p>
    # @option params [String] :name
    #   <p>Enter a user-friendly name for the run cache.</p>
    # @option params [String] :request_id
    #   <p>A unique request token, to ensure idempotency. If you don't specify a token, Amazon Web Services HealthOmics automatically generates a universally unique identifier (UUID) for the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specify one or more tags to associate with this run cache.</p>
    # @option params [String] :cache_bucket_owner_id
    #   <p>The Amazon Web Services account ID of the expected owner of the S3 bucket for the run cache. If not provided, your account ID is set as the owner of the bucket.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_behavior: "CacheBehavior",
    #     cache_s3_location: "S3UriForBucketOrObject", # required
    #     description: "UserCustomDescription",
    #     name: "UserCustomName",
    #     request_id: "RunCacheRequestId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     cache_bucket_owner_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.create_run_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RunCacheArn",
    #     id: "RunCacheId",
    #     status: "RunCacheStatus",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateRunCacheResponse]
    def create_run_cache(params = {}, options = {})
      request = build_request(:create_run_cache, params)
      request.send_request(options)
    end

    # <p>Creates a run group to limit the compute resources for the runs that are added to the group. Returns an ARN, ID, and tags for the run group.</p>
    # @param [Hash, Types::CreateRunGroupRequest] params
    # @option params [String] :name
    #   <p>A name for the group.</p>
    # @option params [Integer] :max_cpus
    #   <p>The maximum number of CPUs that can run concurrently across all active runs in the run group.</p>
    # @option params [Integer] :max_runs
    #   <p>The maximum number of runs that can be running at the same time.</p>
    # @option params [Integer] :max_duration
    #   <p>The maximum time for each run (in minutes). If a run exceeds the maximum run time, the run fails automatically.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the group.</p>
    # @option params [String] :request_id
    #   <p>To ensure that requests don't run multiple times, specify a unique ID for each request.</p>
    # @option params [Integer] :max_gpus
    #   <p>The maximum number of GPUs that can run concurrently across all active runs in the run group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RunGroupName",
    #     max_cpus: 1,
    #     max_runs: 1,
    #     max_duration: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     request_id: "RunGroupRequestId", # required
    #     max_gpus: 1
    #   }
    #   options = {}
    #   response = client.create_run_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RunGroupArn",
    #     id: "RunGroupId",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateRunGroupResponse]
    def create_run_group(params = {}, options = {})
      request = build_request(:create_run_group, params)
      request.send_request(options)
    end

    # <p>Creates a sequence store and returns its metadata. Sequence stores are used to store sequence data files called read sets that are saved in FASTQ, BAM, uBAM, or CRAM formats. For aligned formats (BAM and CRAM), a sequence store can only use one reference genome. For unaligned formats (FASTQ and uBAM), a reference genome is not required. You can create multiple sequence stores per region per account. </p> <p>The following are optional parameters you can specify for your sequence store:</p> <ul> <li> <p>Use <code>s3AccessConfig</code> to configure your sequence store with S3 access logs (recommended).</p> </li> <li> <p>Use <code>sseConfig</code> to define your own KMS key for encryption.</p> </li> <li> <p>Use <code>eTagAlgorithmFamily</code> to define which algorithm to use for the HealthOmics eTag on objects.</p> </li> <li> <p>Use <code>fallbackLocation</code> to define a backup location for storing files that have failed a direct upload.</p> </li> <li> <p>Use <code>propagatedSetLevelTags</code> to configure tags that propagate to all objects in your store.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/create-sequence-store.html">Creating a HealthOmics sequence store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CreateSequenceStoreRequest] params
    # @option params [String] :name
    #   <p>A name for the store.</p>
    # @option params [String] :description
    #   <p>A description for the store.</p>
    # @option params [Types::SseConfig] :sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the store. You can configure up to 50 tags.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token used to dedupe retry requests so that duplicate runs are not created.</p>
    # @option params [String] :fallback_location
    #   <p>An S3 location that is used to store files that have failed a direct upload. You can add or change the <code>fallbackLocation</code> after creating a sequence store. This is not required if you are uploading files from a different S3 bucket.</p>
    # @option params [String] :e_tag_algorithm_family
    #   <p>The ETag algorithm family to use for ingested read sets. The default value is MD5up. For more information on ETags, see <a href="https://docs.aws.amazon.com/omics/latest/dev/etags-and-provenance.html">ETags and data provenance</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [Array<String>] :propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store. These tags can be used as input to add metadata to your read sets.</p>
    # @option params [Types::S3AccessConfig] :s3_access_config
    #   <p>S3 access configuration parameters. This specifies the parameters needed to access logs stored in S3 buckets. The S3 bucket must be in the same region and account as the sequence store. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SequenceStoreName", # required
    #     description: "SequenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken",
    #     fallback_location: "FallbackLocation",
    #     e_tag_algorithm_family: "ETagAlgorithmFamily",
    #     propagated_set_level_tags: ["TagKey"],
    #     s3_access_config: {
    #       access_log_location: "AccessLogLocation"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sequence_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SequenceStoreId", # required
    #     arn: "SequenceStoreArn", # required
    #     name: "SequenceStoreName",
    #     description: "SequenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #     fallback_location: "FallbackLocation",
    #     e_tag_algorithm_family: "ETagAlgorithmFamily",
    #     status: "SequenceStoreStatus",
    #     status_message: "SequenceStoreStatusMessage",
    #     propagated_set_level_tags: ["TagKey"],
    #     s3_access: {
    #       s3_uri: "S3Uri",
    #       s3_access_point_arn: "S3AccessPointArn",
    #       access_log_location: "AccessLogLocation"
    #     }
    #   }
    # @return [Types::CreateSequenceStoreResponse]
    def create_sequence_store(params = {}, options = {})
      request = build_request(:create_sequence_store, params)
      request.send_request(options)
    end

    # <p>Creates a cross-account shared resource. The resource owner makes an offer to share the resource with the principal subscriber (an AWS user with a different account than the resource owner).</p> <p>The following resources support cross-account sharing:</p> <ul> <li> <p>HealthOmics variant stores</p> </li> <li> <p>HealthOmics annotation stores</p> </li> <li> <p>Private workflows</p> </li> </ul>
    # @param [Hash, Types::CreateShareRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be shared.</p>
    # @option params [String] :principal_subscriber
    #   <p>The principal subscriber is the account being offered shared access to the resource. </p>
    # @option params [String] :share_name
    #   <p>A name that the owner defines for the share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     principal_subscriber: "String", # required
    #     share_name: "ShareName"
    #   }
    #   options = {}
    #   response = client.create_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share_id: "String",
    #     status: "ShareStatus",
    #     share_name: "ShareName"
    #   }
    # @return [Types::CreateShareResponse]
    def create_share(params = {}, options = {})
      request = build_request(:create_share, params)
      request.send_request(options)
    end

    # <p>Creates a variant store.</p>
    # @param [Hash, Types::CreateVariantStoreRequest] params
    # @option params [Types::ReferenceItem] :reference
    #   <p>The genome reference for the store's variants.</p>
    # @option params [String] :name
    #   <p>A name for the store.</p>
    # @option params [String] :description
    #   <p>A description for the store.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the store.</p>
    # @option params [Types::SseConfig] :sse_config
    #   <p>Server-side encryption (SSE) settings for the store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reference: { # required
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     name: "StoreName",
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_variant_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     reference: {
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     status: "StoreStatus", # required
    #     name: "String", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::CreateVariantStoreResponse]
    def create_variant_store(params = {}, options = {})
      request = build_request(:create_variant_store, params)
      request.send_request(options)
    end

    # <p>Creates a private workflow. Before you create a private workflow, you must create and configure these required resources:</p> <ul> <li> <p> <i>Workflow definition files</i>: Define your workflow in one or more workflow definition files, written in WDL, Nextflow, or CWL. The workflow definition specifies the inputs and outputs for runs that use the workflow. It also includes specifications for the runs and run tasks for your workflow, including compute and memory requirements. The workflow definition file must be in .zip format.</p> </li> <li> <p>(Optional) <i>Parameter template</i>: You can create a parameter template file that defines the run parameters, or Amazon Web Services HealthOmics can generate the parameter template for you.</p> </li> <li> <p> <i>ECR container images</i>: Create container images for the workflow in a private ECR repository, or synchronize images from a supported upstream registry with your Amazon ECR private repository.</p> </li> <li> <p>(Optional) <i>Sentieon licenses</i>: Request a Sentieon license if using the Sentieon software in a private workflow.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/creating-private-workflows.html">Creating or updating a private workflow in Amazon Web Services HealthOmics</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CreateWorkflowRequest] params
    # @option params [String] :name
    #   <p>Name (optional but highly recommended) for the workflow to locate relevant information in the CloudWatch logs and Amazon Web Services HealthOmics console. </p>
    # @option params [String] :description
    #   <p>A description for the workflow.</p>
    # @option params [String] :engine
    #   <p>The workflow engine for the workflow. This is only required if you have workflow definition files from more than one engine in your zip file. Otherwise, the service can detect the engine automatically from your workflow definition.</p>
    # @option params [String] :definition_zip
    #   <p>A ZIP archive containing the main workflow definition file and dependencies that it imports for the workflow. You can use a file with a ://fileb prefix instead of the Base64 string. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-defn-requirements.html">Workflow definition requirements</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :definition_uri
    #   <p>The S3 URI of a definition for the workflow. The S3 bucket must be in the same region as the workflow.</p>
    # @option params [String] :main
    #   <p>The path of the main definition file for the workflow. This parameter is not required if the ZIP archive contains only one workflow definition file, or if the main definition file is named “main”. An example path is: <code>workflow-definition/main-file.wdl</code>. </p>
    # @option params [Hash<String, Types::WorkflowParameter>] :parameter_template
    #   <p>A parameter template for the workflow. If this field is blank, Amazon Web Services HealthOmics will automatically parse the parameter template values from your workflow definition file. To override these service generated default values, provide a parameter template. To view an example of a parameter template, see <a href="https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html">Parameter template files</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [Integer] :storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the workflow. You can define up to 50 tags for the workflow. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :request_id
    #   <p>An idempotency token to ensure that duplicate workflows are not created when Amazon Web Services HealthOmics submits retry requests.</p>
    # @option params [String] :accelerators
    #   <p>The computational accelerator specified to run the workflow.</p>
    # @option params [String] :storage_type
    #   <p>The default storage type for runs that use this workflow. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. <code>STATIC</code> storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [Types::ContainerRegistryMap] :container_registry_map
    #   <p>(Optional) Use a container registry map to specify mappings between the ECR private repository and one or more upstream registries. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html">Container images</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    # @option params [String] :container_registry_map_uri
    #   <p>(Optional) URI of the S3 location for the registry mapping file.</p>
    # @option params [String] :readme_markdown
    #   <p>The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.</p>
    # @option params [String] :parameter_template_path
    #   <p>The path to the workflow parameter template JSON file within the repository. This file defines the input parameters for runs that use this workflow. If not specified, the workflow will be created without a parameter template.</p>
    # @option params [String] :readme_path
    #   <p>The path to the workflow README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>
    # @option params [Types::DefinitionRepository] :definition_repository
    #   <p>The repository information for the workflow definition. This allows you to source your workflow definition directly from a code repository.</p>
    # @option params [String] :workflow_bucket_owner_id
    #   <p>The Amazon Web Services account ID of the expected owner of the S3 bucket that contains the workflow definition. If not specified, the service skips the validation.</p>
    # @option params [String] :readme_uri
    #   <p>The S3 URI of the README file for the workflow. This file provides documentation and usage information for the workflow. Requirements include:</p> <ul> <li> <p>The S3 URI must begin with <code>s3://USER-OWNED-BUCKET/</code> </p> </li> <li> <p>The requester must have access to the S3 bucket and object.</p> </li> <li> <p>The max README content length is 500 KiB.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "WorkflowName",
    #     description: "WorkflowDescription",
    #     engine: "WorkflowEngine",
    #     definition_zip: "data",
    #     definition_uri: "WorkflowDefinition",
    #     main: "WorkflowMain",
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false
    #       }
    #     },
    #     storage_capacity: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     request_id: "WorkflowRequestId", # required
    #     accelerators: "Accelerators",
    #     storage_type: "StorageType",
    #     container_registry_map: {
    #       registry_mappings: [
    #         {
    #           upstream_registry_url: "Uri",
    #           ecr_repository_prefix: "EcrRepositoryPrefix",
    #           upstream_repository_prefix: "UpstreamRepositoryPrefix",
    #           ecr_account_id: "AwsAccountId"
    #         }
    #       ],
    #       image_mappings: [
    #         {
    #           source_image: "Uri",
    #           destination_image: "Uri"
    #         }
    #       ]
    #     },
    #     container_registry_map_uri: "Uri",
    #     readme_markdown: "ReadmeMarkdown",
    #     parameter_template_path: "ParameterTemplatePath",
    #     readme_path: "ReadmePath",
    #     definition_repository: {
    #       connection_arn: "ConnectionArn", # required
    #       full_repository_id: "FullRepositoryId", # required
    #       source_reference: {
    #         type: "SourceReferenceType", # required
    #         value: "SourceReferenceValue", # required
    #       },
    #       exclude_file_patterns: ["String"]
    #     },
    #     workflow_bucket_owner_id: "WorkflowBucketOwnerId",
    #     readme_uri: "S3UriForObject"
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "WorkflowArn",
    #     id: "WorkflowId",
    #     status: "WorkflowStatus",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     uuid: "WorkflowUuid"
    #   }
    # @return [Types::CreateWorkflowResponse]
    def create_workflow(params = {}, options = {})
      request = build_request(:create_workflow, params)
      request.send_request(options)
    end

    # <p>Creates a new workflow version for the workflow that you specify with the <code>workflowId</code> parameter.</p> <p>When you create a new version of a workflow, you need to specify the configuration for the new version. It doesn't inherit any configuration values from the workflow.</p> <p>Provide a version name that is unique for this workflow. You cannot change the name after HealthOmics creates the version.</p> <note> <p>Don't include any personally identifiable information (PII) in the version name. Version names appear in the workflow version ARN.</p> </note> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning in Amazon Web Services HealthOmics</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::CreateWorkflowVersionRequest] params
    # @option params [String] :workflow_id
    #   <p>The ID of the workflow where you are creating the new version. The <code>workflowId</code> is not the UUID.</p>
    # @option params [String] :version_name
    #   <p>A name for the workflow version. Provide a version name that is unique for this workflow. You cannot change the name after HealthOmics creates the version. </p> <p>The version name must start with a letter or number and it can include upper-case and lower-case letters, numbers, hyphens, periods and underscores. The maximum length is 64 characters. You can use a simple naming scheme, such as version1, version2, version3. You can also match your workflow versions with your own internal versioning conventions, such as 2.7.0, 2.7.1, 2.7.2.</p>
    # @option params [String] :definition_zip
    #   <p>A ZIP archive containing the main workflow definition file and dependencies that it imports for this workflow version. You can use a file with a ://fileb prefix instead of the Base64 string. For more information, see Workflow definition requirements in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :definition_uri
    #   <p>The S3 URI of a definition for this workflow version. The S3 bucket must be in the same region as this workflow version.</p>
    # @option params [String] :accelerators
    #   <p>The computational accelerator for this workflow version.</p>
    # @option params [String] :description
    #   <p>A description for this workflow version.</p>
    # @option params [String] :engine
    #   <p>The workflow engine for this workflow version. This is only required if you have workflow definition files from more than one engine in your zip file. Otherwise, the service can detect the engine automatically from your workflow definition.</p>
    # @option params [String] :main
    #   <p>The path of the main definition file for this workflow version. This parameter is not required if the ZIP archive contains only one workflow definition file, or if the main definition file is named “main”. An example path is: <code>workflow-definition/main-file.wdl</code>. </p>
    # @option params [Hash<String, Types::WorkflowParameter>] :parameter_template
    #   <p>A parameter template for this workflow version. If this field is blank, Amazon Web Services HealthOmics will automatically parse the parameter template values from your workflow definition file. To override these service generated default values, provide a parameter template. To view an example of a parameter template, see <a href="https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html">Parameter template files</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :request_id
    #   <p>An idempotency token to ensure that duplicate workflows are not created when Amazon Web Services HealthOmics submits retry requests.</p>
    # @option params [String] :storage_type
    #   <p>The default storage type for runs that use this workflow version. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. STATIC storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [Integer] :storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for this workflow version. You can define up to 50 tags for the workflow. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :workflow_bucket_owner_id
    #   <p>Amazon Web Services Id of the owner of the S3 bucket that contains the workflow definition. You need to specify this parameter if your account is not the bucket owner.</p>
    # @option params [Types::ContainerRegistryMap] :container_registry_map
    #   <p>(Optional) Use a container registry map to specify mappings between the ECR private repository and one or more upstream registries. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-ecr.html">Container images</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    # @option params [String] :container_registry_map_uri
    #   <p>(Optional) URI of the S3 location for the registry mapping file.</p>
    # @option params [String] :readme_markdown
    #   <p>The markdown content for the workflow version's README file. This provides documentation and usage information for users of this specific workflow version.</p>
    # @option params [String] :parameter_template_path
    #   <p>The path to the workflow version parameter template JSON file within the repository. This file defines the input parameters for runs that use this workflow version. If not specified, the workflow version will be created without a parameter template.</p>
    # @option params [String] :readme_path
    #   <p>The path to the workflow version README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>
    # @option params [Types::DefinitionRepository] :definition_repository
    #   <p>The repository information for the workflow version definition. This allows you to source your workflow version definition directly from a code repository.</p>
    # @option params [String] :readme_uri
    #   <p>The S3 URI of the README file for the workflow version. This file provides documentation and usage information for the workflow version. Requirements include:</p> <ul> <li> <p>The S3 URI must begin with <code>s3://USER-OWNED-BUCKET/</code> </p> </li> <li> <p>The requester must have access to the S3 bucket and object.</p> </li> <li> <p>The max README content length is 500 KiB.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #     definition_zip: "data",
    #     definition_uri: "WorkflowDefinition",
    #     accelerators: "Accelerators",
    #     description: "WorkflowVersionDescription",
    #     engine: "WorkflowEngine",
    #     main: "WorkflowMain",
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false
    #       }
    #     },
    #     request_id: "WorkflowRequestId", # required
    #     storage_type: "StorageType",
    #     storage_capacity: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     workflow_bucket_owner_id: "WorkflowBucketOwnerId",
    #     container_registry_map: {
    #       registry_mappings: [
    #         {
    #           upstream_registry_url: "Uri",
    #           ecr_repository_prefix: "EcrRepositoryPrefix",
    #           upstream_repository_prefix: "UpstreamRepositoryPrefix",
    #           ecr_account_id: "AwsAccountId"
    #         }
    #       ],
    #       image_mappings: [
    #         {
    #           source_image: "Uri",
    #           destination_image: "Uri"
    #         }
    #       ]
    #     },
    #     container_registry_map_uri: "Uri",
    #     readme_markdown: "ReadmeMarkdown",
    #     parameter_template_path: "ParameterTemplatePath",
    #     readme_path: "ReadmePath",
    #     definition_repository: {
    #       connection_arn: "ConnectionArn", # required
    #       full_repository_id: "FullRepositoryId", # required
    #       source_reference: {
    #         type: "SourceReferenceType", # required
    #         value: "SourceReferenceValue", # required
    #       },
    #       exclude_file_patterns: ["String"]
    #     },
    #     readme_uri: "S3UriForObject"
    #   }
    #   options = {}
    #   response = client.create_workflow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "WorkflowVersionArn",
    #     workflow_id: "WorkflowId",
    #     version_name: "WorkflowVersionName",
    #     status: "WorkflowStatus",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     uuid: "WorkflowUuid"
    #   }
    # @return [Types::CreateWorkflowVersionResponse]
    def create_workflow_version(params = {}, options = {})
      request = build_request(:create_workflow_version, params)
      request.send_request(options)
    end

    # <p>Deletes an annotation store.</p>
    # @param [Hash, Types::DeleteAnnotationStoreRequest] params
    # @option params [String] :name
    #   <p>The store's name.</p>
    # @option params [Boolean] :force
    #   <p>Whether to force deletion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_annotation_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "StoreStatus", # required
    #   }
    # @return [Types::DeleteAnnotationStoreResponse]
    def delete_annotation_store(params = {}, options = {})
      request = build_request(:delete_annotation_store, params)
      request.send_request(options)
    end

    # <p> Deletes one or multiple versions of an annotation store. </p>
    # @param [Hash, Types::DeleteAnnotationStoreVersionsRequest] params
    # @option params [String] :name
    #   <p> The name of the annotation store from which versions are being deleted. </p>
    # @option params [Array<String>] :versions
    #   <p> The versions of an annotation store to be deleted. </p>
    # @option params [Boolean] :force
    #   <p> Forces the deletion of an annotation store version when imports are in-progress.. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     versions: ["VersionName"], # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_annotation_store_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         version_name: "VersionName", # required
    #         message: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::DeleteAnnotationStoreVersionsResponse]
    def delete_annotation_store_versions(params = {}, options = {})
      request = build_request(:delete_annotation_store_versions, params)
      request.send_request(options)
    end

    # <p>Deletes a reference genome and returns a response with no body if the operation is successful. The read set associated with the reference genome must first be deleted before deleting the reference genome. After the reference genome is deleted, you can delete the reference store using the <code>DeleteReferenceStore</code> API operation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/deleting-reference-and-sequence-stores.html">Deleting HealthOmics reference and sequence stores</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::DeleteReferenceRequest] params
    # @option params [String] :id
    #   <p>The reference's ID.</p>
    # @option params [String] :reference_store_id
    #   <p>The reference's store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.delete_reference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReferenceResponse]
    def delete_reference(params = {}, options = {})
      request = build_request(:delete_reference, params)
      request.send_request(options)
    end

    # <p>Deletes a reference store and returns a response with no body if the operation is successful. You can only delete a reference store when it does not contain any reference genomes. To empty a reference store, use <code>DeleteReference</code>.</p> <p>For more information about your workflow status, see <a href="https://docs.aws.amazon.com/omics/latest/dev/deleting-reference-and-sequence-stores.html">Deleting HealthOmics reference and sequence stores</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::DeleteReferenceStoreRequest] params
    # @option params [String] :id
    #   <p>The store's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReferenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.delete_reference_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteReferenceStoreResponse]
    def delete_reference_store(params = {}, options = {})
      request = build_request(:delete_reference_store, params)
      request.send_request(options)
    end

    # <p>Deletes a run and returns a response with no body if the operation is successful. You can only delete a run that has reached a <code>COMPLETED</code>, <code>FAILED</code>, or <code>CANCELLED</code> stage. A completed run has delivered an output, or was cancelled and resulted in no output. When you delete a run, only the metadata associated with the run is deleted. The run outputs remain in Amazon S3 and logs remain in CloudWatch.</p> <p>To verify that the workflow is deleted:</p> <ul> <li> <p>Use <code>ListRuns</code> to confirm the workflow no longer appears in the list.</p> </li> <li> <p>Use <code>GetRun</code> to verify the workflow cannot be found.</p> </li> </ul>
    # @param [Hash, Types::DeleteRunRequest] params
    # @option params [String] :id
    #   <p>The run's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunId", # required
    #   }
    #   options = {}
    #   response = client.delete_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_run(params = {}, options = {})
      request = build_request(:delete_run, params)
      request.send_request(options)
    end

    # <p>Deletes a run cache and returns a response with no body if the operation is successful. This action removes the cache metadata stored in the service account, but does not delete the data in Amazon S3. You can access the cache data in Amazon S3, for inspection or to troubleshoot issues. You can remove old cache data using standard S3 <code>Delete</code> operations. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-delete.html">Deleting a run cache</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::DeleteRunCacheRequest] params
    # @option params [String] :id
    #   <p>Run cache identifier for the cache you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunCacheId", # required
    #   }
    #   options = {}
    #   response = client.delete_run_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_run_cache(params = {}, options = {})
      request = build_request(:delete_run_cache, params)
      request.send_request(options)
    end

    # <p>Deletes a run group and returns a response with no body if the operation is successful.</p> <p>To verify that the run group is deleted:</p> <ul> <li> <p>Use <code>ListRunGroups</code> to confirm the workflow no longer appears in the list.</p> </li> <li> <p>Use <code>GetRunGroup</code> to verify the workflow cannot be found.</p> </li> </ul>
    # @param [Hash, Types::DeleteRunGroupRequest] params
    # @option params [String] :id
    #   <p>The run group's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunGroupId", # required
    #   }
    #   options = {}
    #   response = client.delete_run_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_run_group(params = {}, options = {})
      request = build_request(:delete_run_group, params)
      request.send_request(options)
    end

    # <p>Deletes an access policy for the specified store.</p>
    # @param [Hash, Types::DeleteS3AccessPolicyRequest] params
    # @option params [String] :s3_access_point_arn
    #   <p>The S3 access point ARN that has the access policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_access_point_arn: "S3AccessPointArn", # required
    #   }
    #   options = {}
    #   response = client.delete_s3_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteS3AccessPolicyResponse]
    def delete_s3_access_policy(params = {}, options = {})
      request = build_request(:delete_s3_access_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a sequence store and returns a response with no body if the operation is successful. You can only delete a sequence store when it does not contain any read sets.</p> <p>Use the <code>BatchDeleteReadSet</code> API operation to ensure that all read sets in the sequence store are deleted. When a sequence store is deleted, all tags associated with the store are also deleted.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/deleting-reference-and-sequence-stores.html">Deleting HealthOmics reference and sequence stores</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::DeleteSequenceStoreRequest] params
    # @option params [String] :id
    #   <p>The sequence store's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SequenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.delete_sequence_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSequenceStoreResponse]
    def delete_sequence_store(params = {}, options = {})
      request = build_request(:delete_sequence_store, params)
      request.send_request(options)
    end

    # <p>Deletes a resource share. If you are the resource owner, the subscriber will no longer have access to the shared resource. If you are the subscriber, this operation deletes your access to the share.</p>
    # @param [Hash, Types::DeleteShareRequest] params
    # @option params [String] :share_id
    #   <p>The ID for the resource share to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "ShareStatus"
    #   }
    # @return [Types::DeleteShareResponse]
    def delete_share(params = {}, options = {})
      request = build_request(:delete_share, params)
      request.send_request(options)
    end

    # <p>Deletes a variant store.</p>
    # @param [Hash, Types::DeleteVariantStoreRequest] params
    # @option params [String] :name
    #   <p>The store's name.</p>
    # @option params [Boolean] :force
    #   <p>Whether to force deletion.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_variant_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "StoreStatus", # required
    #   }
    # @return [Types::DeleteVariantStoreResponse]
    def delete_variant_store(params = {}, options = {})
      request = build_request(:delete_variant_store, params)
      request.send_request(options)
    end

    # <p>Deletes a workflow by specifying its ID. This operation returns a response with no body if the deletion is successful.</p> <p>To verify that the workflow is deleted:</p> <ul> <li> <p>Use <code>ListWorkflows</code> to confirm the workflow no longer appears in the list.</p> </li> <li> <p>Use <code>GetWorkflow</code> to verify the workflow cannot be found.</p> </li> </ul>
    # @param [Hash, Types::DeleteWorkflowRequest] params
    # @option params [String] :id
    #   <p>The workflow's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WorkflowId", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workflow(params = {}, options = {})
      request = build_request(:delete_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes a workflow version. Deleting a workflow version doesn't affect any ongoing runs that are using the workflow version.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning in Amazon Web Services HealthOmics</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::DeleteWorkflowVersionRequest] params
    # @option params [String] :workflow_id
    #   <p>The workflow's ID.</p>
    # @option params [String] :version_name
    #   <p>The workflow version name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #   }
    #   options = {}
    #   response = client.delete_workflow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_workflow_version(params = {}, options = {})
      request = build_request(:delete_workflow_version, params)
      request.send_request(options)
    end

    # <p>Gets information about an annotation import job.</p>
    # @param [Hash, Types::GetAnnotationImportRequest] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_annotation_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     destination_name: "StoreName", # required
    #     version_name: "VersionName", # required
    #     role_arn: "Arn", # required
    #     status: "JobStatus", # required
    #     status_message: "JobStatusMsg", # required
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     completion_time: Time.now, # required
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #         job_status: "JobStatus", # required
    #       }
    #     ],
    #     run_left_normalization: false, # required
    #     format_options: { # required
    #       # One of:
    #       tsv_options: {
    #         read_options: {
    #           sep: "Separator",
    #           encoding: "Encoding",
    #           quote: "Quote",
    #           quote_all: false,
    #           escape: "EscapeChar",
    #           escape_quotes: false,
    #           comment: "CommentChar",
    #           header: false,
    #           line_sep: "LineSep"
    #         }
    #       },
    #       vcf_options: {
    #         ignore_qual_field: false,
    #         ignore_filter_field: false
    #       }
    #     },
    #     annotation_fields: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetAnnotationImportResponse]
    def get_annotation_import_job(params = {}, options = {})
      request = build_request(:get_annotation_import_job, params)
      request.send_request(options)
    end

    # <p>Gets information about an annotation store.</p>
    # @param [Hash, Types::GetAnnotationStoreRequest] params
    # @option params [String] :name
    #   <p>The store's name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_annotation_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     reference: { # required
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     status: "StoreStatus", # required
    #     store_arn: "Arn", # required
    #     name: "String", # required
    #     description: "Description", # required
    #     sse_config: { # required
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     store_options: {
    #       # One of:
    #       tsv_store_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     },
    #     store_format: "StoreFormat",
    #     status_message: "StatusMessage", # required
    #     store_size_bytes: 1, # required
    #     num_versions: 1, # required
    #   }
    # @return [Types::GetAnnotationStoreResponse]
    def get_annotation_store(params = {}, options = {})
      request = build_request(:get_annotation_store, params)
      request.send_request(options)
    end

    # <p> Retrieves the metadata for an annotation store version. </p>
    # @param [Hash, Types::GetAnnotationStoreVersionRequest] params
    # @option params [String] :name
    #   <p> The name given to an annotation store version to distinguish it from others. </p>
    # @option params [String] :version_name
    #   <p> The name given to an annotation store version to distinguish it from others. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     version_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_annotation_store_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     store_id: "ResourceId", # required
    #     id: "ResourceId", # required
    #     status: "VersionStatus", # required
    #     version_arn: "Arn", # required
    #     name: "StoreName", # required
    #     version_name: "VersionName", # required
    #     description: "Description", # required
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     version_options: {
    #       # One of:
    #       tsv_version_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     },
    #     status_message: "StatusMessage", # required
    #     version_size_bytes: 1, # required
    #   }
    # @return [Types::GetAnnotationStoreVersionResponse]
    def get_annotation_store_version(params = {}, options = {})
      request = build_request(:get_annotation_store_version, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information from parts of a read set and returns the read set in the same format that it was uploaded. You must have read sets uploaded to your sequence store in order to run this operation.</p>
    # @param [Hash, Types::GetReadSetRequest] params
    # @option params [String] :id
    #   <p>The read set's ID.</p>
    # @option params [String] :sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    # @option params [String] :file
    #   <p>The file to retrieve.</p>
    # @option params [Integer] :part_number
    #   <p>The part number to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReadSetId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     file: "ReadSetFile",
    #     part_number: 1, # required
    #   }
    #   options = {}
    #   response = client.get_read_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payload: File.read("source_file")
    #   }
    # @return [Types::GetReadSetResponse]
    def get_read_set(params = {}, options = {})
      request = build_request(:get_read_set, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about the status of a read set activation job in JSON format.</p>
    # @param [Hash, Types::GetReadSetActivationJobRequest] params
    # @option params [String] :id
    #   <p>The job's ID.</p>
    # @option params [String] :sequence_store_id
    #   <p>The job's sequence store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ActivationJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_read_set_activation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ActivationJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     status: "ReadSetActivationJobStatus", # required
    #     status_message: "JobStatusMessage",
    #     creation_time: Time.now, # required
    #     completion_time: Time.now,
    #     sources: [
    #       {
    #         read_set_id: "ReadSetId", # required
    #         status: "ReadSetActivationJobItemStatus", # required
    #         status_message: "JobStatusMessage"
    #       }
    #     ]
    #   }
    # @return [Types::GetReadSetActivationJobResponse]
    def get_read_set_activation_job(params = {}, options = {})
      request = build_request(:get_read_set_activation_job, params)
      request.send_request(options)
    end

    # <p>Retrieves status information about a read set export job and returns the data in JSON format. Use this operation to actively monitor the progress of an export job.</p>
    # @param [Hash, Types::GetReadSetExportJobRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The job's sequence store ID.</p>
    # @option params [String] :id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     id: "ExportJobId", # required
    #   }
    #   options = {}
    #   response = client.get_read_set_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ExportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     destination: "S3Destination", # required
    #     status: "ReadSetExportJobStatus", # required
    #     status_message: "JobStatusMessage",
    #     creation_time: Time.now, # required
    #     completion_time: Time.now,
    #     read_sets: [
    #       {
    #         id: "ReadSetId", # required
    #         status: "ReadSetExportJobItemStatus", # required
    #         status_message: "JobStatusMessage"
    #       }
    #     ]
    #   }
    # @return [Types::GetReadSetExportJobResponse]
    def get_read_set_export_job(params = {}, options = {})
      request = build_request(:get_read_set_export_job, params)
      request.send_request(options)
    end

    # <p>Gets detailed and status information about a read set import job and returns the data in JSON format.</p>
    # @param [Hash, Types::GetReadSetImportJobRequest] params
    # @option params [String] :id
    #   <p>The job's ID.</p>
    # @option params [String] :sequence_store_id
    #   <p>The job's sequence store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ImportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_read_set_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     status: "ReadSetImportJobStatus", # required
    #     status_message: "JobStatusMessage",
    #     creation_time: Time.now, # required
    #     completion_time: Time.now,
    #     sources: [ # required
    #       {
    #         source_files: { # required
    #           source1: "S3Uri", # required
    #           source2: "S3Uri"
    #         },
    #         source_file_type: "FileType", # required
    #         status: "ReadSetImportJobItemStatus", # required
    #         status_message: "JobStatusMessage",
    #         subject_id: "SubjectId", # required
    #         sample_id: "SampleId", # required
    #         generated_from: "GeneratedFrom",
    #         reference_arn: "ReferenceArn",
    #         name: "ReadSetName",
    #         description: "ReadSetDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         read_set_id: "ReadSetId"
    #       }
    #     ]
    #   }
    # @return [Types::GetReadSetImportJobResponse]
    def get_read_set_import_job(params = {}, options = {})
      request = build_request(:get_read_set_import_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for a read set from a sequence store in JSON format. This operation does not return tags. To retrieve the list of tags for a read set, use the <code>ListTagsForResource</code> API operation.</p>
    # @param [Hash, Types::GetReadSetMetadataRequest] params
    # @option params [String] :id
    #   <p>The read set's ID.</p>
    # @option params [String] :sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReadSetId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_read_set_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ReadSetId", # required
    #     arn: "ReadSetArn", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     subject_id: "SubjectId",
    #     sample_id: "SampleId",
    #     status: "ReadSetStatus", # required
    #     name: "ReadSetName",
    #     description: "ReadSetDescription",
    #     file_type: "FileType", # required
    #     creation_time: Time.now, # required
    #     sequence_information: {
    #       total_read_count: 1,
    #       total_base_count: 1,
    #       generated_from: "GeneratedFrom",
    #       alignment: "String"
    #     },
    #     reference_arn: "ReferenceArn",
    #     files: {
    #       source1: {
    #         total_parts: 1,
    #         part_size: 1,
    #         content_length: 1,
    #         s3_access: {
    #           s3_uri: "S3Uri"
    #         }
    #       },
    #       source2: {
    #         total_parts: 1,
    #         part_size: 1,
    #         content_length: 1,
    #         s3_access: {
    #           s3_uri: "S3Uri"
    #         }
    #       },
    #       index: {
    #         total_parts: 1,
    #         part_size: 1,
    #         content_length: 1,
    #         s3_access: {
    #           s3_uri: "S3Uri"
    #         }
    #       }
    #     },
    #     status_message: "ReadSetStatusMessage",
    #     creation_type: "CreationType",
    #     etag: {
    #       algorithm: "ETagAlgorithm",
    #       source1: "String",
    #       source2: "String"
    #     },
    #     creation_job_id: "CreationJobId"
    #   }
    # @return [Types::GetReadSetMetadataResponse]
    def get_read_set_metadata(params = {}, options = {})
      request = build_request(:get_read_set_metadata, params)
      request.send_request(options)
    end

    # <p>Downloads parts of data from a reference genome and returns the reference file in the same format that it was uploaded.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/create-reference-store.html">Creating a HealthOmics reference store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::GetReferenceRequest] params
    # @option params [String] :id
    #   <p>The reference's ID.</p>
    # @option params [String] :reference_store_id
    #   <p>The reference's store ID.</p>
    # @option params [String] :range
    #   <p>The range to retrieve.</p>
    # @option params [Integer] :part_number
    #   <p>The part number to retrieve.</p>
    # @option params [String] :file
    #   <p>The file to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #     range: "Range",
    #     part_number: 1, # required
    #     file: "ReferenceFile"
    #   }
    #   options = {}
    #   response = client.get_reference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payload: File.read("source_file")
    #   }
    # @return [Types::GetReferenceResponse]
    def get_reference(params = {}, options = {})
      request = build_request(:get_reference, params)
      request.send_request(options)
    end

    # <p>Monitors the status of a reference import job. This operation can be called after calling the <code>StartReferenceImportJob</code> operation.</p>
    # @param [Hash, Types::GetReferenceImportJobRequest] params
    # @option params [String] :id
    #   <p>The job's ID.</p>
    # @option params [String] :reference_store_id
    #   <p>The job's reference store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ImportJobId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_reference_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportJobId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     status: "ReferenceImportJobStatus", # required
    #     status_message: "JobStatusMessage",
    #     creation_time: Time.now, # required
    #     completion_time: Time.now,
    #     sources: [ # required
    #       {
    #         source_file: "S3Uri",
    #         status: "ReferenceImportJobItemStatus", # required
    #         status_message: "JobStatusMessage",
    #         name: "ReferenceName",
    #         description: "ReferenceDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         reference_id: "ReferenceId"
    #       }
    #     ]
    #   }
    # @return [Types::GetReferenceImportJobResponse]
    def get_reference_import_job(params = {}, options = {})
      request = build_request(:get_reference_import_job, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata for a reference genome. This operation returns the number of parts, part size, and MD5 of an entire file. This operation does not return tags. To retrieve the list of tags for a read set, use the <code>ListTagsForResource</code> API operation.</p>
    # @param [Hash, Types::GetReferenceMetadataRequest] params
    # @option params [String] :id
    #   <p>The reference's ID.</p>
    # @option params [String] :reference_store_id
    #   <p>The reference's reference store ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_reference_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ReferenceId", # required
    #     arn: "ReferenceArn", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #     md5: "Md5", # required
    #     status: "ReferenceStatus",
    #     name: "ReferenceName",
    #     description: "ReferenceDescription",
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     files: {
    #       source: {
    #         total_parts: 1,
    #         part_size: 1,
    #         content_length: 1,
    #         s3_access: {
    #           s3_uri: "S3Uri"
    #         }
    #       },
    #       index: {
    #         total_parts: 1,
    #         part_size: 1,
    #         content_length: 1,
    #         s3_access: {
    #           s3_uri: "S3Uri"
    #         }
    #       }
    #     },
    #     creation_type: "ReferenceCreationType",
    #     creation_job_id: "CreationJobId"
    #   }
    # @return [Types::GetReferenceMetadataResponse]
    def get_reference_metadata(params = {}, options = {})
      request = build_request(:get_reference_metadata, params)
      request.send_request(options)
    end

    # <p>Gets information about a reference store.</p>
    # @param [Hash, Types::GetReferenceStoreRequest] params
    # @option params [String] :id
    #   <p>The store's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ReferenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_reference_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ReferenceStoreId", # required
    #     arn: "ReferenceStoreArn", # required
    #     name: "ReferenceStoreName",
    #     description: "ReferenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::GetReferenceStoreResponse]
    def get_reference_store(params = {}, options = {})
      request = build_request(:get_reference_store, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about a specific run using its ID.</p> <p>Amazon Web Services HealthOmics stores a configurable number of runs, as determined by service limits, that are available to the console and API. If <code>GetRun</code> does not return the requested run, you can find all run logs in the CloudWatch logs. For more information about viewing the run logs, see <a href="https://docs.aws.amazon.com/omics/latest/dev/monitoring-cloudwatch-logs.html">CloudWatch logs</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::GetRunRequest] params
    # @option params [String] :id
    #   <p>The run's ID.</p>
    # @option params [Array<String>] :export
    #   <p>The run's export format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunId", # required
    #     export: ["RunExport"]
    #   }
    #   options = {}
    #   response = client.get_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RunArn",
    #     id: "RunId",
    #     cache_id: "NumericIdInArn",
    #     cache_behavior: "CacheBehavior",
    #     engine_version: "EngineVersion",
    #     status: "RunStatus",
    #     workflow_id: "WorkflowId",
    #     workflow_type: "WorkflowType",
    #     run_id: "RunId",
    #     role_arn: "RunRoleArn",
    #     name: "RunName",
    #     run_group_id: "RunGroupId",
    #     priority: 1,
    #     definition: "WorkflowDefinition",
    #     digest: "WorkflowDigest",
    #     parameters: ""null"",
    #     storage_capacity: 1,
    #     output_uri: "RunOutputUri",
    #     log_level: "RunLogLevel",
    #     resource_digests: {
    #       "RunResourceDigestKey" => "RunResourceDigest"
    #     },
    #     started_by: "RunStartedBy",
    #     creation_time: Time.now,
    #     start_time: Time.now,
    #     stop_time: Time.now,
    #     status_message: "RunStatusMessage",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     accelerators: "Accelerators",
    #     retention_mode: "RunRetentionMode",
    #     failure_reason: "RunFailureReason",
    #     log_location: {
    #       engine_log_stream: "EngineLogStream",
    #       run_log_stream: "RunLogStream"
    #     },
    #     uuid: "RunUuid",
    #     run_output_uri: "RunOutputUri",
    #     storage_type: "StorageType",
    #     workflow_owner_id: "WorkflowOwnerId",
    #     workflow_version_name: "WorkflowVersionName",
    #     workflow_uuid: "WorkflowUuid"
    #   }
    # @return [Types::GetRunResponse]
    def get_run(params = {}, options = {})
      request = build_request(:get_run, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about the specified run cache using its ID.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-call-caching.html">Call caching for Amazon Web Services HealthOmics runs</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::GetRunCacheRequest] params
    # @option params [String] :id
    #   <p>The identifier of the run cache to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunCacheId", # required
    #   }
    #   options = {}
    #   response = client.get_run_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RunCacheArn",
    #     cache_behavior: "CacheBehavior",
    #     cache_bucket_owner_id: "AwsAccountId",
    #     cache_s3_uri: "S3UriForBucketOrObject",
    #     creation_time: Time.now,
    #     description: "UserCustomDescription",
    #     id: "RunCacheId",
    #     name: "UserCustomName",
    #     status: "RunCacheStatus",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetRunCacheResponse]
    def get_run_cache(params = {}, options = {})
      request = build_request(:get_run_cache, params)
      request.send_request(options)
    end

    # <p>Gets information about a run group and returns its metadata.</p>
    # @param [Hash, Types::GetRunGroupRequest] params
    # @option params [String] :id
    #   <p>The group's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunGroupId", # required
    #   }
    #   options = {}
    #   response = client.get_run_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RunGroupArn",
    #     id: "RunGroupId",
    #     name: "RunGroupName",
    #     max_cpus: 1,
    #     max_runs: 1,
    #     max_duration: 1,
    #     creation_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     max_gpus: 1
    #   }
    # @return [Types::GetRunGroupResponse]
    def get_run_group(params = {}, options = {})
      request = build_request(:get_run_group, params)
      request.send_request(options)
    end

    # <p>Gets detailed information about a run task using its ID.</p>
    # @param [Hash, Types::GetRunTaskRequest] params
    # @option params [String] :id
    #   <p>The workflow run ID.</p>
    # @option params [String] :task_id
    #   <p>The task's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunId", # required
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.get_run_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "TaskId",
    #     status: "TaskStatus",
    #     name: "TaskName",
    #     cpus: 1,
    #     cache_hit: false,
    #     cache_s3_uri: "S3UriForBucketOrObject",
    #     memory: 1,
    #     creation_time: Time.now,
    #     start_time: Time.now,
    #     stop_time: Time.now,
    #     status_message: "TaskStatusMessage",
    #     log_stream: "TaskLogStream",
    #     gpus: 1,
    #     instance_type: "TaskInstanceType",
    #     failure_reason: "TaskFailureReason",
    #     image_details: {
    #       image: "Uri",
    #       image_digest: "TaskImageDigest",
    #       source_image: "Uri"
    #     }
    #   }
    # @return [Types::GetRunTaskResponse]
    def get_run_task(params = {}, options = {})
      request = build_request(:get_run_task, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an access policy on a given store.</p>
    # @param [Hash, Types::GetS3AccessPolicyRequest] params
    # @option params [String] :s3_access_point_arn
    #   <p>The S3 access point ARN that has the access policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_access_point_arn: "S3AccessPointArn", # required
    #   }
    #   options = {}
    #   response = client.get_s3_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_access_point_arn: "S3AccessPointArn",
    #     store_id: "StoreId",
    #     store_type: "SEQUENCE_STORE" # One of: ["SEQUENCE_STORE", "REFERENCE_STORE"],
    #     update_time: Time.now,
    #     s3_access_policy: "S3AccessPolicy", # required
    #   }
    # @return [Types::GetS3AccessPolicyResponse]
    def get_s3_access_policy(params = {}, options = {})
      request = build_request(:get_s3_access_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata for a sequence store using its ID and returns it in JSON format.</p>
    # @param [Hash, Types::GetSequenceStoreRequest] params
    # @option params [String] :id
    #   <p>The store's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SequenceStoreId", # required
    #   }
    #   options = {}
    #   response = client.get_sequence_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SequenceStoreId", # required
    #     arn: "SequenceStoreArn", # required
    #     name: "SequenceStoreName",
    #     description: "SequenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #     fallback_location: "FallbackLocation",
    #     s3_access: {
    #       s3_uri: "S3Uri",
    #       s3_access_point_arn: "S3AccessPointArn",
    #       access_log_location: "AccessLogLocation"
    #     },
    #     e_tag_algorithm_family: "ETagAlgorithmFamily",
    #     status: "SequenceStoreStatus",
    #     status_message: "SequenceStoreStatusMessage",
    #     propagated_set_level_tags: ["TagKey"],
    #     update_time: Time.now
    #   }
    # @return [Types::GetSequenceStoreResponse]
    def get_sequence_store(params = {}, options = {})
      request = build_request(:get_sequence_store, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata for the specified resource share.</p>
    # @param [Hash, Types::GetShareRequest] params
    # @option params [String] :share_id
    #   <p>The ID of the share.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     share_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_share(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     share: {
    #       share_id: "String",
    #       resource_arn: "String",
    #       resource_id: "String",
    #       principal_subscriber: "String",
    #       owner_id: "String",
    #       status: "ShareStatus",
    #       status_message: "StatusMessage",
    #       share_name: "ShareName",
    #       creation_time: Time.now,
    #       update_time: Time.now
    #     }
    #   }
    # @return [Types::GetShareResponse]
    def get_share(params = {}, options = {})
      request = build_request(:get_share, params)
      request.send_request(options)
    end

    # <p>Gets information about a variant import job.</p>
    # @param [Hash, Types::GetVariantImportRequest] params
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_variant_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     destination_name: "StoreName", # required
    #     role_arn: "Arn", # required
    #     status: "JobStatus", # required
    #     status_message: "JobStatusMsg", # required
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     completion_time: Time.now,
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #         job_status: "JobStatus", # required
    #         status_message: "JobStatusMsg"
    #       }
    #     ],
    #     run_left_normalization: false, # required
    #     annotation_fields: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetVariantImportResponse]
    def get_variant_import_job(params = {}, options = {})
      request = build_request(:get_variant_import_job, params)
      request.send_request(options)
    end

    # <p>Gets information about a variant store.</p>
    # @param [Hash, Types::GetVariantStoreRequest] params
    # @option params [String] :name
    #   <p>The store's name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_variant_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     reference: { # required
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     status: "StoreStatus", # required
    #     store_arn: "Arn", # required
    #     name: "String", # required
    #     description: "Description", # required
    #     sse_config: { # required
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     },
    #     status_message: "StatusMessage", # required
    #     store_size_bytes: 1, # required
    #   }
    # @return [Types::GetVariantStoreResponse]
    def get_variant_store(params = {}, options = {})
      request = build_request(:get_variant_store, params)
      request.send_request(options)
    end

    # <p>Gets all information about a workflow using its ID.</p> <p>If a workflow is shared with you, you cannot export the workflow.</p> <p>For more information about your workflow status, see <a href="https://docs.aws.amazon.com/omics/latest/dev/using-get-workflow.html">Verify the workflow status</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::GetWorkflowRequest] params
    # @option params [String] :id
    #   <p>The workflow's ID.</p>
    # @option params [String] :type
    #   <p>The workflow's type.</p>
    # @option params [Array<String>] :export
    #   <p>The export format for the workflow.</p>
    # @option params [String] :workflow_owner_id
    #   <p>The ID of the workflow owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WorkflowId", # required
    #     type: "WorkflowType",
    #     export: ["WorkflowExport"],
    #     workflow_owner_id: "WorkflowOwnerId"
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "WorkflowArn",
    #     id: "WorkflowId",
    #     status: "WorkflowStatus",
    #     type: "WorkflowType",
    #     name: "WorkflowName",
    #     description: "WorkflowDescription",
    #     engine: "WorkflowEngine",
    #     definition: "WorkflowDefinition",
    #     main: "WorkflowMain",
    #     digest: "WorkflowDigest",
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false
    #       }
    #     },
    #     storage_capacity: 1,
    #     creation_time: Time.now,
    #     status_message: "WorkflowStatusMessage",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     metadata: {
    #       "WorkflowMetadataKey" => "WorkflowMetadataValue"
    #     },
    #     accelerators: "Accelerators",
    #     storage_type: "StorageType",
    #     uuid: "WorkflowUuid",
    #     container_registry_map: {
    #       registry_mappings: [
    #         {
    #           upstream_registry_url: "Uri",
    #           ecr_repository_prefix: "EcrRepositoryPrefix",
    #           upstream_repository_prefix: "UpstreamRepositoryPrefix",
    #           ecr_account_id: "AwsAccountId"
    #         }
    #       ],
    #       image_mappings: [
    #         {
    #           source_image: "Uri",
    #           destination_image: "Uri"
    #         }
    #       ]
    #     },
    #     readme: "ReadmeS3PresignedUrl",
    #     definition_repository_details: {
    #       connection_arn: "ConnectionArn",
    #       full_repository_id: "FullRepositoryId",
    #       source_reference: {
    #         type: "SourceReferenceType", # required
    #         value: "SourceReferenceValue", # required
    #       },
    #       provider_type: "String",
    #       provider_endpoint: "String"
    #     },
    #     readme_path: "ReadmePath"
    #   }
    # @return [Types::GetWorkflowResponse]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Gets information about a workflow version. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning in Amazon Web Services HealthOmics</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::GetWorkflowVersionRequest] params
    # @option params [String] :workflow_id
    #   <p>The workflow's ID. The <code>workflowId</code> is not the UUID.</p>
    # @option params [String] :version_name
    #   <p>The workflow version name.</p>
    # @option params [String] :type
    #   <p>The workflow's type. </p>
    # @option params [Array<String>] :export
    #   <p>The export format for the workflow.</p>
    # @option params [String] :workflow_owner_id
    #   <p>The 12-digit account ID of the workflow owner. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #     type: "WorkflowType",
    #     export: ["WorkflowExport"],
    #     workflow_owner_id: "WorkflowOwnerId"
    #   }
    #   options = {}
    #   response = client.get_workflow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "WorkflowVersionArn",
    #     workflow_id: "WorkflowId",
    #     version_name: "WorkflowVersionName",
    #     accelerators: "Accelerators",
    #     creation_time: Time.now,
    #     description: "WorkflowVersionDescription",
    #     definition: "WorkflowDefinition",
    #     digest: "WorkflowDigest",
    #     engine: "WorkflowEngine",
    #     main: "WorkflowMain",
    #     metadata: {
    #       "WorkflowMetadataKey" => "WorkflowMetadataValue"
    #     },
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false
    #       }
    #     },
    #     status: "WorkflowStatus",
    #     status_message: "WorkflowStatusMessage",
    #     storage_type: "StorageType",
    #     storage_capacity: 1,
    #     type: "WorkflowType",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     uuid: "WorkflowUuid",
    #     workflow_bucket_owner_id: "WorkflowBucketOwnerId",
    #     container_registry_map: {
    #       registry_mappings: [
    #         {
    #           upstream_registry_url: "Uri",
    #           ecr_repository_prefix: "EcrRepositoryPrefix",
    #           upstream_repository_prefix: "UpstreamRepositoryPrefix",
    #           ecr_account_id: "AwsAccountId"
    #         }
    #       ],
    #       image_mappings: [
    #         {
    #           source_image: "Uri",
    #           destination_image: "Uri"
    #         }
    #       ]
    #     },
    #     readme: "ReadmeS3PresignedUrl",
    #     definition_repository_details: {
    #       connection_arn: "ConnectionArn",
    #       full_repository_id: "FullRepositoryId",
    #       source_reference: {
    #         type: "SourceReferenceType", # required
    #         value: "SourceReferenceValue", # required
    #       },
    #       provider_type: "String",
    #       provider_endpoint: "String"
    #     },
    #     readme_path: "ReadmePath"
    #   }
    # @return [Types::GetWorkflowVersionResponse]
    def get_workflow_version(params = {}, options = {})
      request = build_request(:get_workflow_version, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of annotation import jobs.</p>
    # @param [Hash, Types::ListAnnotationImportJobsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    # @option params [Array<String>] :ids
    #   <p>IDs of annotation import jobs to retrieve.</p>
    # @option params [String] :next_token
    #   <p>Specifies the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ListAnnotationImportJobsFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     ids: ["ResourceIdentifier"],
    #     next_token: "String",
    #     filter: {
    #       status: "JobStatus",
    #       store_name: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.list_annotation_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     annotation_import_jobs: [
    #       {
    #         id: "String", # required
    #         destination_name: "String", # required
    #         version_name: "VersionName", # required
    #         role_arn: "Arn", # required
    #         status: "JobStatus", # required
    #         creation_time: Time.now, # required
    #         update_time: Time.now, # required
    #         completion_time: Time.now,
    #         run_left_normalization: false,
    #         annotation_fields: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAnnotationImportJobsResponse]
    def list_annotation_import_jobs(params = {}, options = {})
      request = build_request(:list_annotation_import_jobs, params)
      request.send_request(options)
    end

    # <p> Lists the versions of an annotation store. </p>
    # @param [Hash, Types::ListAnnotationStoreVersionsRequest] params
    # @option params [String] :name
    #   <p> The name of an annotation store. </p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of annotation store versions to return in one page of results. </p>
    # @option params [String] :next_token
    #   <p> Specifies the pagination token from a previous request to retrieve the next page of results. </p>
    # @option params [Types::ListAnnotationStoreVersionsFilter] :filter
    #   <p> A filter to apply to the list of annotation store versions. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #     filter: {
    #       status: "VersionStatus"
    #     }
    #   }
    #   options = {}
    #   response = client.list_annotation_store_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     annotation_store_versions: [
    #       {
    #         store_id: "ResourceId", # required
    #         id: "ResourceId", # required
    #         status: "VersionStatus", # required
    #         version_arn: "Arn", # required
    #         name: "StoreName", # required
    #         version_name: "VersionName", # required
    #         description: "Description", # required
    #         creation_time: Time.now, # required
    #         update_time: Time.now, # required
    #         status_message: "StatusMessage", # required
    #         version_size_bytes: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAnnotationStoreVersionsResponse]
    def list_annotation_store_versions(params = {}, options = {})
      request = build_request(:list_annotation_store_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of annotation stores.</p>
    # @param [Hash, Types::ListAnnotationStoresRequest] params
    # @option params [Array<String>] :ids
    #   <p>IDs of stores to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ListAnnotationStoresFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["ResourceIdentifier"],
    #     max_results: 1,
    #     next_token: "String",
    #     filter: {
    #       status: "StoreStatus"
    #     }
    #   }
    #   options = {}
    #   response = client.list_annotation_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     annotation_stores: [
    #       {
    #         id: "ResourceId", # required
    #         reference: { # required
    #           # One of:
    #           reference_arn: "ReferenceArn"
    #         },
    #         status: "StoreStatus", # required
    #         store_arn: "Arn", # required
    #         name: "String", # required
    #         store_format: "StoreFormat", # required
    #         description: "Description", # required
    #         sse_config: { # required
    #           type: "EncryptionType", # required
    #           key_arn: "String"
    #         },
    #         creation_time: Time.now, # required
    #         update_time: Time.now, # required
    #         status_message: "StatusMessage", # required
    #         store_size_bytes: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAnnotationStoresResponse]
    def list_annotation_stores(params = {}, options = {})
      request = build_request(:list_annotation_stores, params)
      request.send_request(options)
    end

    # <p>Lists in-progress multipart read set uploads for a sequence store and returns it in a JSON formatted output. Multipart read set uploads are initiated by the <code>CreateMultipartReadSetUploads</code> API operation. This operation returns a response with no body when the upload is complete. </p>
    # @param [Hash, Types::ListMultipartReadSetUploadsRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The Sequence Store ID used for the multipart uploads.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of multipart uploads returned in a page.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the response of a previous ListMultipartReadSetUploads call. Used to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_multipart_read_set_uploads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     uploads: [
    #       {
    #         sequence_store_id: "SequenceStoreId", # required
    #         upload_id: "UploadId", # required
    #         source_file_type: "FileType", # required
    #         subject_id: "SubjectId", # required
    #         sample_id: "SampleId", # required
    #         generated_from: "GeneratedFrom", # required
    #         reference_arn: "ReferenceArn", # required
    #         name: "ReadSetName",
    #         description: "ReadSetDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         creation_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListMultipartReadSetUploadsResponse]
    def list_multipart_read_set_uploads(params = {}, options = {})
      request = build_request(:list_multipart_read_set_uploads, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of read set activation jobs and returns the metadata in a JSON formatted output. To extract metadata from a read set activation job, use the <code>GetReadSetActivationJob</code> API operation.</p>
    # @param [Hash, Types::ListReadSetActivationJobsRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of read set activation jobs to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ActivateReadSetFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       status: "ReadSetActivationJobStatus",
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_read_set_activation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     activation_jobs: [
    #       {
    #         id: "ActivationJobId", # required
    #         sequence_store_id: "SequenceStoreId", # required
    #         status: "ReadSetActivationJobStatus", # required
    #         creation_time: Time.now, # required
    #         completion_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListReadSetActivationJobsResponse]
    def list_read_set_activation_jobs(params = {}, options = {})
      request = build_request(:list_read_set_activation_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of read set export jobs in a JSON formatted response. This API operation is used to check the status of a read set export job initiated by the <code>StartReadSetExportJob</code> API operation.</p>
    # @param [Hash, Types::ListReadSetExportJobsRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The jobs' sequence store ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ExportReadSetFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       status: "ReadSetExportJobStatus",
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_read_set_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     export_jobs: [
    #       {
    #         id: "ExportJobId", # required
    #         sequence_store_id: "SequenceStoreId", # required
    #         destination: "S3Destination", # required
    #         status: "ReadSetExportJobStatus", # required
    #         creation_time: Time.now, # required
    #         completion_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListReadSetExportJobsResponse]
    def list_read_set_export_jobs(params = {}, options = {})
      request = build_request(:list_read_set_export_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of read set import jobs and returns the data in JSON format.</p>
    # @param [Hash, Types::ListReadSetImportJobsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [String] :sequence_store_id
    #   <p>The jobs' sequence store ID.</p>
    # @option params [Types::ImportReadSetFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #     filter: {
    #       status: "ReadSetImportJobStatus",
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_read_set_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     import_jobs: [
    #       {
    #         id: "ImportJobId", # required
    #         sequence_store_id: "SequenceStoreId", # required
    #         role_arn: "RoleArn", # required
    #         status: "ReadSetImportJobStatus", # required
    #         creation_time: Time.now, # required
    #         completion_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListReadSetImportJobsResponse]
    def list_read_set_import_jobs(params = {}, options = {})
      request = build_request(:list_read_set_import_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all parts in a multipart read set upload for a sequence store and returns the metadata in a JSON formatted output.</p>
    # @param [Hash, Types::ListReadSetUploadPartsRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The Sequence Store ID used for the multipart uploads.</p>
    # @option params [String] :upload_id
    #   <p>The ID for the initiated multipart upload.</p>
    # @option params [String] :part_source
    #   <p>The source file for the upload part.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of read set upload parts returned in a page.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results.</p>
    # @option params [Types::ReadSetUploadPartListFilter] :filter
    #   <p>Attributes used to filter for a specific subset of read set part uploads.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     part_source: "ReadSetPartSource", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_read_set_upload_parts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     parts: [
    #       {
    #         part_number: 1, # required
    #         part_size: 1, # required
    #         part_source: "ReadSetPartSource", # required
    #         checksum: "String", # required
    #         creation_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListReadSetUploadPartsResponse]
    def list_read_set_upload_parts(params = {}, options = {})
      request = build_request(:list_read_set_upload_parts, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of read sets from a sequence store ID and returns the metadata in JSON format.</p>
    # @param [Hash, Types::ListReadSetsRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The jobs' sequence store ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of read sets to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ReadSetFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "ReadSetName",
    #       status: "ReadSetStatus",
    #       reference_arn: "ReferenceArnFilter",
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       sample_id: "SampleId",
    #       subject_id: "SubjectId",
    #       generated_from: "GeneratedFrom",
    #       creation_type: "CreationType"
    #     }
    #   }
    #   options = {}
    #   response = client.list_read_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     read_sets: [ # required
    #       {
    #         id: "ReadSetId", # required
    #         arn: "ReadSetArn", # required
    #         sequence_store_id: "SequenceStoreId", # required
    #         subject_id: "SubjectId",
    #         sample_id: "SampleId",
    #         status: "ReadSetStatus", # required
    #         name: "ReadSetName",
    #         description: "ReadSetDescription",
    #         reference_arn: "ReferenceArn",
    #         file_type: "FileType", # required
    #         sequence_information: {
    #           total_read_count: 1,
    #           total_base_count: 1,
    #           generated_from: "GeneratedFrom",
    #           alignment: "String"
    #         },
    #         creation_time: Time.now, # required
    #         status_message: "ReadSetStatusMessage",
    #         creation_type: "CreationType",
    #         etag: {
    #           algorithm: "ETagAlgorithm",
    #           source1: "String",
    #           source2: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListReadSetsResponse]
    def list_read_sets(params = {}, options = {})
      request = build_request(:list_read_sets, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata of one or more reference import jobs for a reference store.</p>
    # @param [Hash, Types::ListReferenceImportJobsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [String] :reference_store_id
    #   <p>The job's reference store ID.</p>
    # @option params [Types::ImportReferenceFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     reference_store_id: "ReferenceStoreId", # required
    #     filter: {
    #       status: "ReferenceImportJobStatus",
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_reference_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     import_jobs: [
    #       {
    #         id: "ImportJobId", # required
    #         reference_store_id: "ReferenceStoreId", # required
    #         role_arn: "RoleArn", # required
    #         status: "ReferenceImportJobStatus", # required
    #         creation_time: Time.now, # required
    #         completion_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListReferenceImportJobsResponse]
    def list_reference_import_jobs(params = {}, options = {})
      request = build_request(:list_reference_import_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of reference stores linked to your account and returns their metadata in JSON format.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/create-reference-store.html">Creating a reference store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::ListReferenceStoresRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ReferenceStoreFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "ReferenceStoreName",
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_reference_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     reference_stores: [ # required
    #       {
    #         arn: "ReferenceStoreArn", # required
    #         id: "ReferenceStoreId", # required
    #         name: "ReferenceStoreName",
    #         description: "ReferenceStoreDescription",
    #         sse_config: {
    #           type: "EncryptionType", # required
    #           key_arn: "String"
    #         },
    #         creation_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListReferenceStoresResponse]
    def list_reference_stores(params = {}, options = {})
      request = build_request(:list_reference_stores, params)
      request.send_request(options)
    end

    # <p>Retrieves the metadata of one or more reference genomes in a reference store.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/create-reference-store.html">Creating a reference store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::ListReferencesRequest] params
    # @option params [String] :reference_store_id
    #   <p>The references' reference store ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of references to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ReferenceFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reference_store_id: "ReferenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "ReferenceName",
    #       md5: "Md5",
    #       created_after: Time.now,
    #       created_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_references(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     references: [ # required
    #       {
    #         id: "ReferenceId", # required
    #         arn: "ReferenceArn", # required
    #         reference_store_id: "ReferenceStoreId", # required
    #         md5: "Md5", # required
    #         status: "ReferenceStatus",
    #         name: "ReferenceName",
    #         description: "ReferenceDescription",
    #         creation_time: Time.now, # required
    #         update_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListReferencesResponse]
    def list_references(params = {}, options = {})
      request = build_request(:list_references, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of your run caches and the metadata for each cache.</p>
    # @param [Hash, Types::ListRunCachesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :starting_token
    #   <p>Optional pagination token returned from a prior call to the <code>ListRunCaches</code> API operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     starting_token: "ListToken"
    #   }
    #   options = {}
    #   response = client.list_run_caches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "RunCacheArn",
    #         cache_behavior: "CacheBehavior",
    #         cache_s3_uri: "S3UriForBucketOrObject",
    #         creation_time: Time.now,
    #         id: "RunCacheId",
    #         name: "UserCustomName",
    #         status: "RunCacheStatus"
    #       }
    #     ],
    #     next_token: "ListToken"
    #   }
    # @return [Types::ListRunCachesResponse]
    def list_run_caches(params = {}, options = {})
      request = build_request(:list_run_caches, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all run groups and returns the metadata for each run group.</p>
    # @param [Hash, Types::ListRunGroupsRequest] params
    # @option params [String] :name
    #   <p>The run groups' name.</p>
    # @option params [String] :starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of run groups to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RunGroupName",
    #     starting_token: "RunGroupListToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_run_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "RunGroupArn",
    #         id: "RunGroupId",
    #         name: "RunGroupName",
    #         max_cpus: 1,
    #         max_runs: 1,
    #         max_duration: 1,
    #         creation_time: Time.now,
    #         max_gpus: 1
    #       }
    #     ],
    #     next_token: "RunGroupListToken"
    #   }
    # @return [Types::ListRunGroupsResponse]
    def list_run_groups(params = {}, options = {})
      request = build_request(:list_run_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of tasks and status information within their specified run. Use this operation to monitor runs and to identify which specific tasks have failed.</p>
    # @param [Hash, Types::ListRunTasksRequest] params
    # @option params [String] :id
    #   <p>The run's ID.</p>
    # @option params [String] :status
    #   <p>Filter the list by status.</p>
    # @option params [String] :starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of run tasks to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunId", # required
    #     status: "TaskStatus",
    #     starting_token: "TaskListToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_run_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         task_id: "TaskId",
    #         status: "TaskStatus",
    #         name: "TaskName",
    #         cpus: 1,
    #         cache_hit: false,
    #         cache_s3_uri: "S3UriForBucketOrObject",
    #         memory: 1,
    #         creation_time: Time.now,
    #         start_time: Time.now,
    #         stop_time: Time.now,
    #         gpus: 1,
    #         instance_type: "TaskInstanceType"
    #       }
    #     ],
    #     next_token: "TaskListToken"
    #   }
    # @return [Types::ListRunTasksResponse]
    def list_run_tasks(params = {}, options = {})
      request = build_request(:list_run_tasks, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of runs and returns each run's metadata and status.</p> <p>Amazon Web Services HealthOmics stores a configurable number of runs, as determined by service limits, that are available to the console and API. If the <code>ListRuns</code> response doesn't include specific runs that you expected, you can find all run logs in the CloudWatch logs. For more information about viewing the run logs, see <a href="https://docs.aws.amazon.com/omics/latest/dev/monitoring-cloudwatch-logs.html">CloudWatch logs</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::ListRunsRequest] params
    # @option params [String] :name
    #   <p>Filter the list by run name.</p>
    # @option params [String] :run_group_id
    #   <p>Filter the list by run group ID.</p>
    # @option params [String] :starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of runs to return in one page of results.</p>
    # @option params [String] :status
    #   <p>The status of a run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RunName",
    #     run_group_id: "RunGroupId",
    #     starting_token: "RunListToken",
    #     max_results: 1,
    #     status: "RunStatus"
    #   }
    #   options = {}
    #   response = client.list_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "RunArn",
    #         id: "RunId",
    #         status: "RunStatus",
    #         workflow_id: "WorkflowId",
    #         name: "RunName",
    #         priority: 1,
    #         storage_capacity: 1,
    #         creation_time: Time.now,
    #         start_time: Time.now,
    #         stop_time: Time.now,
    #         storage_type: "StorageType",
    #         workflow_version_name: "WorkflowVersionName"
    #       }
    #     ],
    #     next_token: "RunListToken"
    #   }
    # @return [Types::ListRunsResponse]
    def list_runs(params = {}, options = {})
      request = build_request(:list_runs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of sequence stores and returns each sequence store's metadata.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/create-sequence-store.html">Creating a HealthOmics sequence store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::ListSequenceStoresRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::SequenceStoreFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "SequenceStoreName",
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       status: "SequenceStoreStatus",
    #       updated_after: Time.now,
    #       updated_before: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_sequence_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     sequence_stores: [ # required
    #       {
    #         arn: "SequenceStoreArn", # required
    #         id: "SequenceStoreId", # required
    #         name: "SequenceStoreName",
    #         description: "SequenceStoreDescription",
    #         sse_config: {
    #           type: "EncryptionType", # required
    #           key_arn: "String"
    #         },
    #         creation_time: Time.now, # required
    #         fallback_location: "FallbackLocation",
    #         e_tag_algorithm_family: "ETagAlgorithmFamily",
    #         status: "SequenceStoreStatus",
    #         status_message: "SequenceStoreStatusMessage",
    #         update_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListSequenceStoresResponse]
    def list_sequence_stores(params = {}, options = {})
      request = build_request(:list_sequence_stores, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource shares associated with an account. Use the filter parameter to retrieve a specific subset of the shares.</p>
    # @param [Hash, Types::ListSharesRequest] params
    # @option params [String] :resource_owner
    #   <p>The account that owns the resource shares.</p>
    # @option params [Types::Filter] :filter
    #   <p>Attributes that you use to filter for a specific subset of resource shares.</p>
    # @option params [String] :next_token
    #   <p>Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of shares to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_owner: "ResourceOwner", # required
    #     filter: {
    #       resource_arns: ["String"],
    #       status: ["ShareStatus"],
    #       type: ["ShareResourceType"]
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_shares(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     shares: [ # required
    #       {
    #         share_id: "String",
    #         resource_arn: "String",
    #         resource_id: "String",
    #         principal_subscriber: "String",
    #         owner_id: "String",
    #         status: "ShareStatus",
    #         status_message: "StatusMessage",
    #         share_name: "ShareName",
    #         creation_time: Time.now,
    #         update_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSharesResponse]
    def list_shares(params = {}, options = {})
      request = build_request(:list_shares, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
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

    # <p>Retrieves a list of variant import jobs.</p>
    # @param [Hash, Types::ListVariantImportJobsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of import jobs to return in one page of results.</p>
    # @option params [Array<String>] :ids
    #   <p>A list of job IDs.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ListVariantImportJobsFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     ids: ["ResourceIdentifier"],
    #     next_token: "String",
    #     filter: {
    #       status: "JobStatus",
    #       store_name: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.list_variant_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     variant_import_jobs: [
    #       {
    #         id: "String", # required
    #         destination_name: "String", # required
    #         role_arn: "Arn", # required
    #         status: "JobStatus", # required
    #         creation_time: Time.now, # required
    #         update_time: Time.now, # required
    #         completion_time: Time.now,
    #         run_left_normalization: false,
    #         annotation_fields: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVariantImportJobsResponse]
    def list_variant_import_jobs(params = {}, options = {})
      request = build_request(:list_variant_import_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of variant stores.</p>
    # @param [Hash, Types::ListVariantStoresRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of stores to return in one page of results.</p>
    # @option params [Array<String>] :ids
    #   <p>A list of store IDs.</p>
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Types::ListVariantStoresFilter] :filter
    #   <p>A filter to apply to the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     ids: ["ResourceIdentifier"],
    #     next_token: "String",
    #     filter: {
    #       status: "StoreStatus"
    #     }
    #   }
    #   options = {}
    #   response = client.list_variant_stores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     variant_stores: [
    #       {
    #         id: "ResourceId", # required
    #         reference: { # required
    #           # One of:
    #           reference_arn: "ReferenceArn"
    #         },
    #         status: "StoreStatus", # required
    #         store_arn: "Arn", # required
    #         name: "String", # required
    #         description: "Description", # required
    #         sse_config: { # required
    #           type: "EncryptionType", # required
    #           key_arn: "String"
    #         },
    #         creation_time: Time.now, # required
    #         update_time: Time.now, # required
    #         status_message: "StatusMessage", # required
    #         store_size_bytes: 1, # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVariantStoresResponse]
    def list_variant_stores(params = {}, options = {})
      request = build_request(:list_variant_stores, params)
      request.send_request(options)
    end

    # <p>Lists the workflow versions for the specified workflow. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning in Amazon Web Services HealthOmics</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::ListWorkflowVersionsRequest] params
    # @option params [String] :workflow_id
    #   <p>The workflow's ID. The <code>workflowId</code> is not the UUID.</p>
    # @option params [String] :type
    #   <p>The workflow type.</p>
    # @option params [String] :workflow_owner_id
    #   <p>The 12-digit account ID of the workflow owner. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>
    # @option params [String] :starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflows to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #     type: "WorkflowType",
    #     workflow_owner_id: "WorkflowOwnerId",
    #     starting_token: "WorkflowVersionListToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workflow_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "WorkflowVersionArn",
    #         workflow_id: "WorkflowId",
    #         version_name: "WorkflowVersionName",
    #         description: "WorkflowVersionDescription",
    #         status: "WorkflowStatus",
    #         type: "WorkflowType",
    #         digest: "WorkflowDigest",
    #         creation_time: Time.now,
    #         metadata: {
    #           "WorkflowMetadataKey" => "WorkflowMetadataValue"
    #         }
    #       }
    #     ],
    #     next_token: "WorkflowVersionListToken"
    #   }
    # @return [Types::ListWorkflowVersionsResponse]
    def list_workflow_versions(params = {}, options = {})
      request = build_request(:list_workflow_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of existing workflows. You can filter for specific workflows by their name and type. Using the type parameter, specify <code>PRIVATE</code> to retrieve a list of private workflows or specify <code>READY2RUN</code> for a list of all Ready2Run workflows. If you do not specify the type of workflow, this operation returns a list of existing workflows.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [String] :type
    #   <p>Filter the list by workflow type.</p>
    # @option params [String] :name
    #   <p>Filter the list by workflow name.</p>
    # @option params [String] :starting_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflows to return in one page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "WorkflowType",
    #     name: "WorkflowName",
    #     starting_token: "WorkflowListToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         arn: "WorkflowArn",
    #         id: "WorkflowId",
    #         name: "WorkflowName",
    #         status: "WorkflowStatus",
    #         type: "WorkflowType",
    #         digest: "WorkflowDigest",
    #         creation_time: Time.now,
    #         metadata: {
    #           "WorkflowMetadataKey" => "WorkflowMetadataValue"
    #         }
    #       }
    #     ],
    #     next_token: "WorkflowListToken"
    #   }
    # @return [Types::ListWorkflowsResponse]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Adds an access policy to the specified store.</p>
    # @param [Hash, Types::PutS3AccessPolicyRequest] params
    # @option params [String] :s3_access_point_arn
    #   <p>The S3 access point ARN where you want to put the access policy.</p>
    # @option params [String] :s3_access_policy
    #   <p>The resource policy that controls S3 access to the store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_access_point_arn: "S3AccessPointArn", # required
    #     s3_access_policy: "S3AccessPolicy", # required
    #   }
    #   options = {}
    #   response = client.put_s3_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_access_point_arn: "S3AccessPointArn",
    #     store_id: "StoreId",
    #     store_type: "SEQUENCE_STORE" # One of: ["SEQUENCE_STORE", "REFERENCE_STORE"]
    #   }
    # @return [Types::PutS3AccessPolicyResponse]
    def put_s3_access_policy(params = {}, options = {})
      request = build_request(:put_s3_access_policy, params)
      request.send_request(options)
    end

    # <p>Starts an annotation import job.</p>
    # @param [Hash, Types::StartAnnotationImportRequest] params
    # @option params [String] :destination_name
    #   <p>A destination annotation store for the job.</p>
    # @option params [String] :role_arn
    #   <p>A service role for the job.</p>
    # @option params [Array<Types::AnnotationImportItemSource>] :items
    #   <p>Items to import.</p>
    # @option params [String] :version_name
    #   <p> The name of the annotation store version. </p>
    # @option params [Types::FormatOptions] :format_options
    #   <p>Formatting options for the annotation file.</p>
    # @option params [Boolean] :run_left_normalization
    #   <p>The job's left normalization setting.</p>
    # @option params [Hash<String, String>] :annotation_fields
    #   <p>The annotation schema generated by the parsed annotation data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "StoreName", # required
    #     role_arn: "Arn", # required
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #       }
    #     ],
    #     version_name: "VersionName",
    #     format_options: {
    #       # One of:
    #       tsv_options: {
    #         read_options: {
    #           sep: "Separator",
    #           encoding: "Encoding",
    #           quote: "Quote",
    #           quote_all: false,
    #           escape: "EscapeChar",
    #           escape_quotes: false,
    #           comment: "CommentChar",
    #           header: false,
    #           line_sep: "LineSep"
    #         }
    #       },
    #       vcf_options: {
    #         ignore_qual_field: false,
    #         ignore_filter_field: false
    #       }
    #     },
    #     run_left_normalization: false,
    #     annotation_fields: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_annotation_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "ResourceId", # required
    #   }
    # @return [Types::StartAnnotationImportResponse]
    def start_annotation_import_job(params = {}, options = {})
      request = build_request(:start_annotation_import_job, params)
      request.send_request(options)
    end

    # <p>Activates an archived read set and returns its metadata in a JSON formatted output. AWS HealthOmics automatically archives unused read sets after 30 days. To monitor the status of your read set activation job, use the <code>GetReadSetActivationJob</code> operation.</p> <p>To learn more, see <a href="https://docs.aws.amazon.com/omics/latest/dev/activating-read-sets.html">Activating read sets</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::StartReadSetActivationJobRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    # @option params [String] :client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    # @option params [Array<Types::StartReadSetActivationJobSourceItem>] :sources
    #   <p>The job's source files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         read_set_id: "ReadSetId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_read_set_activation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ActivationJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     status: "ReadSetActivationJobStatus", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::StartReadSetActivationJobResponse]
    def start_read_set_activation_job(params = {}, options = {})
      request = build_request(:start_read_set_activation_job, params)
      request.send_request(options)
    end

    # <p>Starts a read set export job. When the export job is finished, the read set is exported to an Amazon S3 bucket which can be retrieved using the <code>GetReadSetExportJob</code> API operation.</p> <p>To monitor the status of the export job, use the <code>ListReadSetExportJobs</code> API operation. </p>
    # @param [Hash, Types::StartReadSetExportJobRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    # @option params [String] :destination
    #   <p>A location for exported files in Amazon S3.</p>
    # @option params [String] :role_arn
    #   <p>A service role for the job.</p>
    # @option params [String] :client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    # @option params [Array<Types::ExportReadSet>] :sources
    #   <p>The job's source files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     destination: "S3Destination", # required
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         read_set_id: "ReadSetId", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_read_set_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ExportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     destination: "S3Destination", # required
    #     status: "ReadSetExportJobStatus", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::StartReadSetExportJobResponse]
    def start_read_set_export_job(params = {}, options = {})
      request = build_request(:start_read_set_export_job, params)
      request.send_request(options)
    end

    # <p>Imports a read set from the sequence store. Read set import jobs support a maximum of 100 read sets of different types. Monitor the progress of your read set import job by calling the <code>GetReadSetImportJob</code> API operation.</p>
    # @param [Hash, Types::StartReadSetImportJobRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The read set's sequence store ID.</p>
    # @option params [String] :role_arn
    #   <p>A service role for the job.</p>
    # @option params [String] :client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    # @option params [Array<Types::StartReadSetImportJobSourceItem>] :sources
    #   <p>The job's source files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         source_files: { # required
    #           source1: "S3Uri", # required
    #           source2: "S3Uri"
    #         },
    #         source_file_type: "FileType", # required
    #         subject_id: "SubjectId", # required
    #         sample_id: "SampleId", # required
    #         generated_from: "GeneratedFrom",
    #         reference_arn: "ReferenceArn",
    #         name: "ReadSetName",
    #         description: "ReadSetDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_read_set_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     status: "ReadSetImportJobStatus", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::StartReadSetImportJobResponse]
    def start_read_set_import_job(params = {}, options = {})
      request = build_request(:start_read_set_import_job, params)
      request.send_request(options)
    end

    # <p>Imports a reference genome from Amazon S3 into a specified reference store. You can have multiple reference genomes in a reference store. You can only import reference genomes one at a time into each reference store. Monitor the status of your reference import job by using the <code>GetReferenceImportJob</code> API operation.</p>
    # @param [Hash, Types::StartReferenceImportJobRequest] params
    # @option params [String] :reference_store_id
    #   <p>The job's reference store ID.</p>
    # @option params [String] :role_arn
    #   <p>A service role for the job.</p>
    # @option params [String] :client_token
    #   <p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>
    # @option params [Array<Types::StartReferenceImportJobSourceItem>] :sources
    #   <p>The job's source files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reference_store_id: "ReferenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         source_file: "S3Uri", # required
    #         name: "ReferenceName", # required
    #         description: "ReferenceDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_reference_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ImportJobId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     status: "ReferenceImportJobStatus", # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::StartReferenceImportJobResponse]
    def start_reference_import_job(params = {}, options = {})
      request = build_request(:start_reference_import_job, params)
      request.send_request(options)
    end

    # <p>Starts a new run and returns details about the run, or duplicates an existing run. A run is a single invocation of a workflow. If you provide request IDs, Amazon Web Services HealthOmics identifies duplicate requests and starts the run only once. Monitor the progress of the run by calling the <code>GetRun</code> API operation.</p> <p>To start a new run, the following inputs are required:</p> <ul> <li> <p>A service role ARN (<code>roleArn</code>).</p> </li> <li> <p>The run's workflow ID (<code>workflowId</code>, not the <code>uuid</code> or <code>runId</code>).</p> </li> <li> <p>An Amazon S3 location (<code>outputUri</code>) where the run outputs will be saved.</p> </li> <li> <p>All required workflow parameters (<code>parameter</code>), which can include optional parameters from the parameter template. The run cannot include any parameters that are not defined in the parameter template. To see all possible parameters, use the <code>GetRun</code> API operation. </p> </li> <li> <p>For runs with a <code>STATIC</code> (default) storage type, specify the required storage capacity (in gibibytes). A storage capacity value is not required for runs that use <code>DYNAMIC</code> storage.</p> </li> </ul> <p> <code>StartRun</code> can also duplicate an existing run using the run's default values. You can modify these default values and/or add other optional inputs. To duplicate a run, the following inputs are required:</p> <ul> <li> <p>A service role ARN (<code>roleArn</code>).</p> </li> <li> <p>The ID of the run to duplicate (<code>runId</code>).</p> </li> <li> <p>An Amazon S3 location where the run outputs will be saved (<code>outputUri</code>).</p> </li> </ul> <p>To learn more about the optional parameters for <code>StartRun</code>, see <a href="https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html">Starting a run</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p> <p>Use the <code>retentionMode</code> input to control how long the metadata for each run is stored in CloudWatch. There are two retention modes:</p> <ul> <li> <p>Specify <code>REMOVE</code> to automatically remove the oldest runs when you reach the maximum service retention limit for runs. It is recommended that you use the <code>REMOVE</code> mode to initiate major run requests so that your runs do not fail when you reach the limit.</p> </li> <li> <p>The <code>retentionMode</code> is set to the <code>RETAIN</code> mode by default, which allows you to manually remove runs after reaching the maximum service retention limit. Under this setting, you cannot create additional runs until you remove the excess runs.</p> </li> </ul> <p>To learn more about the retention modes, see <a href="https://docs.aws.amazon.com/omics/latest/dev/run-retention.html">Run retention mode</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::StartRunRequest] params
    # @option params [String] :workflow_id
    #   <p>The run's workflow ID. The <code>workflowId</code> is not the UUID.</p>
    # @option params [String] :workflow_type
    #   <p>The run's workflow type. The <code>workflowType</code> must be specified if you are running a <code>READY2RUN</code> workflow. If you are running a <code>PRIVATE</code> workflow (default), you do not need to include the workflow type. </p>
    # @option params [String] :run_id
    #   <p>The ID of a run to duplicate.</p>
    # @option params [String] :role_arn
    #   <p>A service role for the run. The <code>roleArn</code> requires access to Amazon Web Services HealthOmics, S3, Cloudwatch logs, and EC2. An example <code>roleArn</code> is <code>arn:aws:iam::123456789012:role/omics-service-role-serviceRole-W8O1XMPL7QZ</code>. In this example, the AWS account ID is <code>123456789012</code> and the role name is <code>omics-service-role-serviceRole-W8O1XMPL7QZ</code>.</p>
    # @option params [String] :name
    #   <p>A name for the run. This is recommended to view and organize runs in the Amazon Web Services HealthOmics console and CloudWatch logs.</p>
    # @option params [String] :cache_id
    #   <p>Identifier of the cache associated with this run. If you don't specify a cache ID, no task outputs are cached for this run.</p>
    # @option params [String] :cache_behavior
    #   <p>The cache behavior for the run. You specify this value if you want to override the default behavior for the cache. You had set the default value when you created the cache. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior">Run cache behavior</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :run_group_id
    #   <p>The run's group ID. Use a run group to cap the compute resources (and number of concurrent runs) for the runs that you add to the run group.</p>
    # @option params [Integer] :priority
    #   <p>Use the run priority (highest: 1) to establish the order of runs in a run group when you start a run. If multiple runs share the same priority, the run that was initiated first will have the higher priority. Runs that do not belong to a run group can be assigned a priority. The priorities of these runs are ranked among other runs that are not in a run group. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/creating-run-groups.html#run-priority">Run priority</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [JSON] :parameters
    #   <p>Parameters for the run. The run needs all required parameters and can include optional parameters. The run cannot include any parameters that are not defined in the parameter template. To retrieve parameters from the run, use the GetRun API operation.</p>
    # @option params [Integer] :storage_capacity
    #   <p>The <code>STATIC</code> storage capacity (in gibibytes, GiB) for this run. The default run storage capacity is 1200 GiB. If your requested storage capacity is unavailable, the system rounds up the value to the nearest 1200 GiB multiple. If the requested storage capacity is still unavailable, the system rounds up the value to the nearest 2400 GiB multiple. This field is not required if the storage type is <code>DYNAMIC</code> (the system ignores any value that you enter).</p>
    # @option params [String] :output_uri
    #   <p>An output S3 URI for the run. The S3 bucket must be in the same region as the workflow. The role ARN must have permission to write to this S3 bucket.</p>
    # @option params [String] :log_level
    #   <p>A log level for the run.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the run. You can add up to 50 tags per run. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :request_id
    #   <p>An idempotency token used to dedupe retry requests so that duplicate runs are not created.</p>
    # @option params [String] :retention_mode
    #   <p>The retention mode for the run. The default value is <code>RETAIN</code>. </p> <p>Amazon Web Services HealthOmics stores a fixed number of runs that are available to the console and API. In the default mode (<code>RETAIN</code>), you need to remove runs manually when the number of run exceeds the maximum. If you set the retention mode to <code>REMOVE</code>, Amazon Web Services HealthOmics automatically removes runs (that have mode set to <code>REMOVE</code>) when the number of run exceeds the maximum. All run logs are available in CloudWatch logs, if you need information about a run that is no longer available to the API.</p> <p>For more information about retention mode, see <a href="https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html">Specifying run retention mode</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :storage_type
    #   <p>The storage type for the run. If you set the storage type to <code>DYNAMIC</code>, Amazon Web Services HealthOmics dynamically scales the storage up or down, based on file system utilization. By default, the run uses <code>STATIC</code> storage type, which allocates a fixed amount of storage. For more information about <code>DYNAMIC</code> and <code>STATIC</code> storage, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @option params [String] :workflow_owner_id
    #   <p>The 12-digit account ID of the workflow owner that is used for running a shared workflow. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>
    # @option params [String] :workflow_version_name
    #   <p>The name of the workflow version. Use workflow versions to track and organize changes to the workflow. If your workflow has multiple versions, the run uses the default version unless you specify a version name. To learn more, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId",
    #     workflow_type: "WorkflowType",
    #     run_id: "RunId",
    #     role_arn: "RunRoleArn", # required
    #     name: "RunName",
    #     cache_id: "NumericIdInArn",
    #     cache_behavior: "CacheBehavior",
    #     run_group_id: "RunGroupId",
    #     priority: 1,
    #     parameters: ""null"",
    #     storage_capacity: 1,
    #     output_uri: "RunOutputUri", # required
    #     log_level: "RunLogLevel",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     request_id: "RunRequestId", # required
    #     retention_mode: "RunRetentionMode",
    #     storage_type: "StorageType",
    #     workflow_owner_id: "WorkflowOwnerId",
    #     workflow_version_name: "WorkflowVersionName"
    #   }
    #   options = {}
    #   response = client.start_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RunArn",
    #     id: "RunId",
    #     status: "RunStatus",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     uuid: "RunUuid",
    #     run_output_uri: "RunOutputUri"
    #   }
    # @return [Types::StartRunResponse]
    def start_run(params = {}, options = {})
      request = build_request(:start_run, params)
      request.send_request(options)
    end

    # <p>Starts a variant import job.</p>
    # @param [Hash, Types::StartVariantImportRequest] params
    # @option params [String] :destination_name
    #   <p>The destination variant store for the job.</p>
    # @option params [String] :role_arn
    #   <p>A service role for the job.</p>
    # @option params [Array<Types::VariantImportItemSource>] :items
    #   <p>Items to import.</p>
    # @option params [Boolean] :run_left_normalization
    #   <p>The job's left normalization setting.</p>
    # @option params [Hash<String, String>] :annotation_fields
    #   <p>The annotation schema generated by the parsed annotation data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_name: "StoreName", # required
    #     role_arn: "Arn", # required
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #       }
    #     ],
    #     run_left_normalization: false,
    #     annotation_fields: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_variant_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "ResourceId", # required
    #   }
    # @return [Types::StartVariantImportResponse]
    def start_variant_import_job(params = {}, options = {})
      request = build_request(:start_variant_import_job, params)
      request.send_request(options)
    end

    # <p>Tags a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
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

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Keys of tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TagArn", # required
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

    # <p>Updates an annotation store.</p>
    # @param [Hash, Types::UpdateAnnotationStoreRequest] params
    # @option params [String] :name
    #   <p>A name for the store.</p>
    # @option params [String] :description
    #   <p>A description for the store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_annotation_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     reference: { # required
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     status: "StoreStatus", # required
    #     name: "String", # required
    #     description: "Description", # required
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #     store_options: {
    #       # One of:
    #       tsv_store_options: {
    #         annotation_type: "AnnotationType",
    #         format_to_header: {
    #           "FormatToHeaderKey" => "String"
    #         },
    #         schema: [
    #           {
    #             "String" => "SchemaValueType"
    #           }
    #         ]
    #       }
    #     },
    #     store_format: "StoreFormat"
    #   }
    # @return [Types::UpdateAnnotationStoreResponse]
    def update_annotation_store(params = {}, options = {})
      request = build_request(:update_annotation_store, params)
      request.send_request(options)
    end

    # <p> Updates the description of an annotation store version. </p>
    # @param [Hash, Types::UpdateAnnotationStoreVersionRequest] params
    # @option params [String] :name
    #   <p> The name of an annotation store. </p>
    # @option params [String] :version_name
    #   <p> The name of an annotation store version. </p>
    # @option params [String] :description
    #   <p> The description of an annotation store. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     version_name: "String", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_annotation_store_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     store_id: "ResourceId", # required
    #     id: "ResourceId", # required
    #     status: "VersionStatus", # required
    #     name: "StoreName", # required
    #     version_name: "VersionName", # required
    #     description: "Description", # required
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateAnnotationStoreVersionResponse]
    def update_annotation_store_version(params = {}, options = {})
      request = build_request(:update_annotation_store_version, params)
      request.send_request(options)
    end

    # <p>Updates a run cache using its ID and returns a response with no body if the operation is successful. You can update the run cache description, name, or the default run cache behavior with <code>CACHE_ON_FAILURE</code> or <code>CACHE_ALWAYS</code>. To confirm that your run cache settings have been properly updated, use the <code>GetRunCache</code> API operation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html">How call caching works</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::UpdateRunCacheRequest] params
    # @option params [String] :cache_behavior
    #   <p>Update the default run cache behavior.</p>
    # @option params [String] :description
    #   <p>Update the run cache description.</p>
    # @option params [String] :id
    #   <p>The identifier of the run cache you want to update.</p>
    # @option params [String] :name
    #   <p>Update the name of the run cache.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cache_behavior: "CacheBehavior",
    #     description: "UserCustomDescription",
    #     id: "RunCacheId", # required
    #     name: "UserCustomName"
    #   }
    #   options = {}
    #   response = client.update_run_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_run_cache(params = {}, options = {})
      request = build_request(:update_run_cache, params)
      request.send_request(options)
    end

    # <p>Updates the settings of a run group and returns a response with no body if the operation is successful.</p> <p>You can update the following settings with <code>UpdateRunGroup</code>:</p> <ul> <li> <p>Maximum number of CPUs</p> </li> <li> <p>Run time (measured in minutes)</p> </li> <li> <p>Number of GPUs</p> </li> <li> <p>Number of concurrent runs</p> </li> <li> <p>Group name</p> </li> </ul> <p>To confirm that the settings have been successfully updated, use the <code>ListRunGroups</code> or <code>GetRunGroup</code> API operations to verify that the desired changes have been made.</p>
    # @param [Hash, Types::UpdateRunGroupRequest] params
    # @option params [String] :id
    #   <p>The group's ID.</p>
    # @option params [String] :name
    #   <p>A name for the group.</p>
    # @option params [Integer] :max_cpus
    #   <p>The maximum number of CPUs to use.</p>
    # @option params [Integer] :max_runs
    #   <p>The maximum number of concurrent runs for the group.</p>
    # @option params [Integer] :max_duration
    #   <p>A maximum run time for the group in minutes.</p>
    # @option params [Integer] :max_gpus
    #   <p>The maximum GPUs that can be used by a run group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "RunGroupId", # required
    #     name: "RunGroupName",
    #     max_cpus: 1,
    #     max_runs: 1,
    #     max_duration: 1,
    #     max_gpus: 1
    #   }
    #   options = {}
    #   response = client.update_run_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_run_group(params = {}, options = {})
      request = build_request(:update_run_group, params)
      request.send_request(options)
    end

    # <p>Update one or more parameters for the sequence store.</p>
    # @param [Hash, Types::UpdateSequenceStoreRequest] params
    # @option params [String] :id
    #   <p>The ID of the sequence store.</p>
    # @option params [String] :name
    #   <p>A name for the sequence store.</p>
    # @option params [String] :description
    #   <p>A description for the sequence store.</p>
    # @option params [String] :client_token
    #   <p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>
    # @option params [String] :fallback_location
    #   <p>The S3 URI of a bucket and folder to store Read Sets that fail to upload.</p>
    # @option params [Array<String>] :propagated_set_level_tags
    #   <p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>
    # @option params [Types::S3AccessConfig] :s3_access_config
    #   <p>S3 access configuration parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SequenceStoreId", # required
    #     name: "SequenceStoreName",
    #     description: "SequenceStoreDescription",
    #     client_token: "ClientToken",
    #     fallback_location: "FallbackLocation",
    #     propagated_set_level_tags: ["TagKey"],
    #     s3_access_config: {
    #       access_log_location: "AccessLogLocation"
    #     }
    #   }
    #   options = {}
    #   response = client.update_sequence_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "SequenceStoreId", # required
    #     arn: "SequenceStoreArn", # required
    #     name: "SequenceStoreName",
    #     description: "SequenceStoreDescription",
    #     sse_config: {
    #       type: "EncryptionType", # required
    #       key_arn: "String"
    #     },
    #     creation_time: Time.now, # required
    #     update_time: Time.now,
    #     propagated_set_level_tags: ["TagKey"],
    #     status: "SequenceStoreStatus",
    #     status_message: "SequenceStoreStatusMessage",
    #     fallback_location: "FallbackLocation",
    #     s3_access: {
    #       s3_uri: "S3Uri",
    #       s3_access_point_arn: "S3AccessPointArn",
    #       access_log_location: "AccessLogLocation"
    #     },
    #     e_tag_algorithm_family: "ETagAlgorithmFamily"
    #   }
    # @return [Types::UpdateSequenceStoreResponse]
    def update_sequence_store(params = {}, options = {})
      request = build_request(:update_sequence_store, params)
      request.send_request(options)
    end

    # <p>Updates a variant store.</p>
    # @param [Hash, Types::UpdateVariantStoreRequest] params
    # @option params [String] :name
    #   <p>A name for the store.</p>
    # @option params [String] :description
    #   <p>A description for the store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_variant_store(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceId", # required
    #     reference: { # required
    #       # One of:
    #       reference_arn: "ReferenceArn"
    #     },
    #     status: "StoreStatus", # required
    #     name: "String", # required
    #     description: "Description", # required
    #     creation_time: Time.now, # required
    #     update_time: Time.now, # required
    #   }
    # @return [Types::UpdateVariantStoreResponse]
    def update_variant_store(params = {}, options = {})
      request = build_request(:update_variant_store, params)
      request.send_request(options)
    end

    # <p>Updates information about a workflow.</p> <p>You can update the following workflow information:</p> <ul> <li> <p>Name</p> </li> <li> <p>Description</p> </li> <li> <p>Default storage type</p> </li> <li> <p>Default storage capacity (with workflow ID)</p> </li> </ul> <p>This operation returns a response with no body if the operation is successful. You can check the workflow updates by calling the <code>GetWorkflow</code> API operation.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/update-private-workflow.html">Update a private workflow</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::UpdateWorkflowRequest] params
    # @option params [String] :id
    #   <p>The workflow's ID.</p>
    # @option params [String] :name
    #   <p>A name for the workflow.</p>
    # @option params [String] :description
    #   <p>A description for the workflow.</p>
    # @option params [String] :storage_type
    #   <p>The default storage type for runs that use this workflow. STATIC storage allocates a fixed amount of storage. DYNAMIC storage dynamically scales the storage up or down, based on file system utilization. For more information about static and dynamic storage, see <a href="https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html">Running workflows</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>
    # @option params [Integer] :storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version. </p>
    # @option params [String] :readme_markdown
    #   <p>The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "WorkflowId", # required
    #     name: "WorkflowName",
    #     description: "WorkflowDescription",
    #     storage_type: "StorageType",
    #     storage_capacity: 1,
    #     readme_markdown: "ReadmeMarkdown"
    #   }
    #   options = {}
    #   response = client.update_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_workflow(params = {}, options = {})
      request = build_request(:update_workflow, params)
      request.send_request(options)
    end

    # <p>Updates information about the workflow version. For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html">Workflow versioning in Amazon Web Services HealthOmics</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::UpdateWorkflowVersionRequest] params
    # @option params [String] :workflow_id
    #   <p>The workflow's ID. The <code>workflowId</code> is not the UUID.</p>
    # @option params [String] :version_name
    #   <p>The name of the workflow version.</p>
    # @option params [String] :description
    #   <p>Description of the workflow version.</p>
    # @option params [String] :storage_type
    #   <p>The default storage type for runs that use this workflow version. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. STATIC storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href="https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html">Run storage types</a> in the <i>in the <i>Amazon Web Services HealthOmics User Guide</i> </i>.</p>
    # @option params [Integer] :storage_capacity
    #   <p>The default static storage capacity (in gibibytes) for runs that use this workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>
    # @option params [String] :readme_markdown
    #   <p>The markdown content for the workflow version's README file. This provides documentation and usage information for users of this specific workflow version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #     description: "WorkflowVersionDescription",
    #     storage_type: "StorageType",
    #     storage_capacity: 1,
    #     readme_markdown: "ReadmeMarkdown"
    #   }
    #   options = {}
    #   response = client.update_workflow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_workflow_version(params = {}, options = {})
      request = build_request(:update_workflow_version, params)
      request.send_request(options)
    end

    # <p>Uploads a specific part of a read set into a sequence store. When you a upload a read set part with a part number that already exists, the new part replaces the existing one. This operation returns a JSON formatted response containing a string identifier that is used to confirm that parts are being added to the intended upload.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/omics/latest/dev/synchronous-uploads.html">Direct upload to a sequence store</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>
    # @param [Hash, Types::UploadReadSetPartRequest] params
    # @option params [String] :sequence_store_id
    #   <p>The Sequence Store ID used for the multipart upload.</p>
    # @option params [String] :upload_id
    #   <p>The ID for the initiated multipart upload.</p>
    # @option params [String] :part_source
    #   <p>The source file for an upload part.</p>
    # @option params [Integer] :part_number
    #   <p>The number of the part being uploaded.</p>
    # @option params [String] :payload
    #   <p>The read set data to upload for a part.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     part_source: "ReadSetPartSource", # required
    #     part_number: 1, # required
    #     payload: File.read("source_file"), # required
    #   }
    #   options = {}
    #   response = client.upload_read_set_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     checksum: "String", # required
    #   }
    # @return [Types::UploadReadSetPartResponse]
    def upload_read_set_part(params = {}, options = {})
      request = build_request(:upload_read_set_part, params)
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
      context[:gem_name] = 'aws-sdk-omics'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        annotation_import_job_created: Waiters::AnnotationImportJobCreated,
        annotation_store_created: Waiters::AnnotationStoreCreated,
        annotation_store_deleted: Waiters::AnnotationStoreDeleted,
        annotation_store_version_created: Waiters::AnnotationStoreVersionCreated,
        annotation_store_version_deleted: Waiters::AnnotationStoreVersionDeleted,
        read_set_activation_job_completed: Waiters::ReadSetActivationJobCompleted,
        read_set_export_job_completed: Waiters::ReadSetExportJobCompleted,
        read_set_import_job_completed: Waiters::ReadSetImportJobCompleted,
        reference_import_job_completed: Waiters::ReferenceImportJobCompleted,
        run_completed: Waiters::RunCompleted,
        run_running: Waiters::RunRunning,
        task_completed: Waiters::TaskCompleted,
        task_running: Waiters::TaskRunning,
        variant_import_job_created: Waiters::VariantImportJobCreated,
        variant_store_created: Waiters::VariantStoreCreated,
        variant_store_deleted: Waiters::VariantStoreDeleted,
        workflow_active: Waiters::WorkflowActive,
        workflow_version_active: Waiters::WorkflowVersionActive
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
