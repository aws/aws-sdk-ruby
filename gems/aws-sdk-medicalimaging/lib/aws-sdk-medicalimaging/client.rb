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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::MedicalImaging
  # An API client for Aws::MedicalImaging.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AHIGatewayService

    add_plugin(::Aws::MedicalImaging::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MedicalImaging::EndpointProvider)
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

    # <p>Copy an image set.</p>
    # @param [Hash, Types::CopyImageSetRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :source_image_set_id
    #   <p>The source image set identifier.</p>
    # @option params [Types::CopyImageSetInformation] :copy_image_set_information
    #   <p>Copy image set information.</p>
    # @option params [Boolean] :force
    #   <p>Providing this parameter will force completion of the <code>CopyImageSet</code> operation, even if there are inconsistent Patient, Study, and/or Series level metadata elements between the <code>sourceImageSet</code> and <code>destinationImageSet</code>.</p>
    # @option params [Boolean] :promote_to_primary
    #   <p>Providing this parameter will configure the <code>CopyImageSet</code> operation to promote the given image set to the primary DICOM hierarchy. If successful, a new primary image set ID will be returned as the destination image set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     source_image_set_id: "ImageSetId", # required
    #     copy_image_set_information: { # required
    #       source_image_set: { # required
    #         latest_version_id: "ImageSetExternalVersionId", # required
    #         dicom_copies: {
    #           copiable_attributes: "CopiableAttributes", # required
    #         }
    #       },
    #       destination_image_set: {
    #         image_set_id: "ImageSetId", # required
    #         latest_version_id: "ImageSetExternalVersionId", # required
    #       }
    #     },
    #     force: false,
    #     promote_to_primary: false
    #   }
    #   options = {}
    #   response = client.copy_image_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     source_image_set_properties: { # required
    #       image_set_id: "ImageSetId", # required
    #       latest_version_id: "ImageSetExternalVersionId", # required
    #       image_set_state: "ACTIVE" # One of: ["ACTIVE", "LOCKED", "DELETED"],
    #       image_set_workflow_status: "CREATED" # One of: ["CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "IMPORTING", "IMPORTED", "IMPORT_FAILED"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       image_set_arn: "Arn"
    #     },
    #     destination_image_set_properties: { # required
    #       image_set_id: "ImageSetId", # required
    #       latest_version_id: "ImageSetExternalVersionId", # required
    #       image_set_state: "ACTIVE" # One of: ["ACTIVE", "LOCKED", "DELETED"],
    #       image_set_workflow_status: "CREATED" # One of: ["CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "IMPORTING", "IMPORTED", "IMPORT_FAILED"],
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       image_set_arn: "Arn"
    #     }
    #   }
    # @return [Types::CopyImageSetResponse]
    def copy_image_set(params = {}, options = {})
      request = build_request(:copy_image_set, params)
      request.send_request(options)
    end

    # <p>Create a data store.</p>
    # @param [Hash, Types::CreateDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The data store name.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for API idempotency.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags provided when creating a data store.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the Key Management Service (KMS) key for accessing encrypted data.</p>
    # @option params [String] :lambda_authorizer_arn
    #   <p>The ARN of the authorizer's Lambda function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_name: "DatastoreName",
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     kms_key_arn: "KmsKeyArn",
    #     lambda_authorizer_arn: "LambdaArn"
    #   }
    #   options = {}
    #   response = client.create_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     datastore_status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"], # required
    #   }
    # @return [Types::CreateDatastoreResponse]
    def create_datastore(params = {}, options = {})
      request = build_request(:create_datastore, params)
      request.send_request(options)
    end

    # <p>Delete a data store.</p> <note> <p>Before a data store can be deleted, you must first delete all image sets within it.</p> </note>
    # @param [Hash, Types::DeleteDatastoreRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #   }
    #   options = {}
    #   response = client.delete_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     datastore_status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"], # required
    #   }
    # @return [Types::DeleteDatastoreResponse]
    def delete_datastore(params = {}, options = {})
      request = build_request(:delete_datastore, params)
      request.send_request(options)
    end

    # <p>Delete an image set.</p>
    # @param [Hash, Types::DeleteImageSetRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :image_set_id
    #   <p>The image set identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #   }
    #   options = {}
    #   response = client.delete_image_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     image_set_state: "ACTIVE" # One of: ["ACTIVE", "LOCKED", "DELETED"], # required
    #     image_set_workflow_status: "CREATED" # One of: ["CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "IMPORTING", "IMPORTED", "IMPORT_FAILED"], # required
    #   }
    # @return [Types::DeleteImageSetResponse]
    def delete_image_set(params = {}, options = {})
      request = build_request(:delete_image_set, params)
      request.send_request(options)
    end

    # <p>Get the import job properties to learn more about the job or job progress.</p> <note> <p>The <code>jobStatus</code> refers to the execution of the import job. Therefore, an import job can return a <code>jobStatus</code> as <code>COMPLETED</code> even if validation issues are discovered during the import process. If a <code>jobStatus</code> returns as <code>COMPLETED</code>, we still recommend you review the output manifests written to S3, as they provide details on the success or failure of individual P10 object imports.</p> </note>
    # @param [Hash, Types::GetDICOMImportJobRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :job_id
    #   <p>The import job identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_dicom_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_properties: { # required
    #       job_id: "JobId", # required
    #       job_name: "JobName", # required
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #       datastore_id: "DatastoreId", # required
    #       data_access_role_arn: "RoleArn", # required
    #       ended_at: Time.now,
    #       submitted_at: Time.now,
    #       input_s3_uri: "S3Uri", # required
    #       output_s3_uri: "S3Uri", # required
    #       message: "Message"
    #     }
    #   }
    # @return [Types::GetDICOMImportJobResponse]
    def get_dicom_import_job(params = {}, options = {})
      request = build_request(:get_dicom_import_job, params)
      request.send_request(options)
    end

    # <p>Get data store properties.</p>
    # @param [Hash, Types::GetDatastoreRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #   }
    #   options = {}
    #   response = client.get_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_properties: { # required
    #       datastore_id: "DatastoreId", # required
    #       datastore_name: "DatastoreName", # required
    #       datastore_status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"], # required
    #       kms_key_arn: "KmsKeyArn",
    #       lambda_authorizer_arn: "LambdaArn",
    #       datastore_arn: "Arn",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetDatastoreResponse]
    def get_datastore(params = {}, options = {})
      request = build_request(:get_datastore, params)
      request.send_request(options)
    end

    # <p>Get an image frame (pixel data) for an image set.</p>
    # @param [Hash, Types::GetImageFrameRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :image_set_id
    #   <p>The image set identifier.</p>
    # @option params [Types::ImageFrameInformation] :image_frame_information
    #   <p>Information about the image frame (pixel data) identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     image_frame_information: { # required
    #       image_frame_id: "ImageFrameId", # required
    #     }
    #   }
    #   options = {}
    #   response = client.get_image_frame(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_frame_blob: File.read("source_file"), # required
    #     content_type: "String"
    #   }
    # @return [Types::GetImageFrameResponse]
    def get_image_frame(params = {}, options = {})
      request = build_request(:get_image_frame, params)
      request.send_request(options)
    end

    # <p>Get image set properties.</p>
    # @param [Hash, Types::GetImageSetRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :image_set_id
    #   <p>The image set identifier.</p>
    # @option params [String] :version_id
    #   <p>The image set version identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     version_id: "ImageSetExternalVersionId"
    #   }
    #   options = {}
    #   response = client.get_image_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     version_id: "ImageSetExternalVersionId", # required
    #     image_set_state: "ACTIVE" # One of: ["ACTIVE", "LOCKED", "DELETED"], # required
    #     image_set_workflow_status: "CREATED" # One of: ["CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "IMPORTING", "IMPORTED", "IMPORT_FAILED"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     deleted_at: Time.now,
    #     message: "Message",
    #     image_set_arn: "Arn",
    #     overrides: {
    #       forced: false
    #     },
    #     is_primary: false
    #   }
    # @return [Types::GetImageSetResponse]
    def get_image_set(params = {}, options = {})
      request = build_request(:get_image_set, params)
      request.send_request(options)
    end

    # <p>Get metadata attributes for an image set.</p>
    # @param [Hash, Types::GetImageSetMetadataRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :image_set_id
    #   <p>The image set identifier.</p>
    # @option params [String] :version_id
    #   <p>The image set version identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     version_id: "ImageSetExternalVersionId"
    #   }
    #   options = {}
    #   response = client.get_image_set_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_set_metadata_blob: File.read("source_file"), # required
    #     content_type: "String",
    #     content_encoding: "String"
    #   }
    # @return [Types::GetImageSetMetadataResponse]
    def get_image_set_metadata(params = {}, options = {})
      request = build_request(:get_image_set_metadata, params)
      request.send_request(options)
    end

    # <p>List import jobs created for a specific data store.</p>
    # @param [Hash, Types::ListDICOMImportJobsRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :job_status
    #   <p>The filters for listing import jobs based on status.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to request the list of import jobs on the next page.</p>
    # @option params [Integer] :max_results
    #   <p>The max results count. The upper bound is determined by load testing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dicom_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summaries: [ # required
    #       {
    #         job_id: "JobId", # required
    #         job_name: "JobName", # required
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #         datastore_id: "DatastoreId", # required
    #         data_access_role_arn: "RoleArn",
    #         ended_at: Time.now,
    #         submitted_at: Time.now,
    #         message: "Message"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDICOMImportJobsResponse]
    def list_dicom_import_jobs(params = {}, options = {})
      request = build_request(:list_dicom_import_jobs, params)
      request.send_request(options)
    end

    # <p>List data stores.</p>
    # @param [Hash, Types::ListDatastoresRequest] params
    # @option params [String] :datastore_status
    #   <p>The data store status.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to request the list of data stores on the next page.</p>
    # @option params [Integer] :max_results
    #   <p>Valid Range: Minimum value of 1. Maximum value of 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datastores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_summaries: [
    #       {
    #         datastore_id: "DatastoreId", # required
    #         datastore_name: "DatastoreName", # required
    #         datastore_status: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETED"], # required
    #         datastore_arn: "Arn",
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDatastoresResponse]
    def list_datastores(params = {}, options = {})
      request = build_request(:list_datastores, params)
      request.send_request(options)
    end

    # <p>List image set versions.</p>
    # @param [Hash, Types::ListImageSetVersionsRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :image_set_id
    #   <p>The image set identifier.</p>
    # @option params [String] :next_token
    #   <p>The pagination token used to request the list of image set versions on the next page.</p>
    # @option params [Integer] :max_results
    #   <p>The max results count.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_image_set_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_set_properties_list: [ # required
    #       {
    #         image_set_id: "ImageSetId", # required
    #         version_id: "ImageSetExternalVersionId", # required
    #         image_set_state: "ACTIVE" # One of: ["ACTIVE", "LOCKED", "DELETED"], # required
    #         image_set_workflow_status: "CREATED" # One of: ["CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "IMPORTING", "IMPORTED", "IMPORT_FAILED"],
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         deleted_at: Time.now,
    #         message: "Message",
    #         overrides: {
    #           forced: false
    #         },
    #         is_primary: false
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListImageSetVersionsResponse]
    def list_image_set_versions(params = {}, options = {})
      request = build_request(:list_image_set_versions, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with a medical imaging resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the medical imaging resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Search image sets based on defined input attributes.</p> <note> <p> <code>SearchImageSets</code> accepts a single search query parameter and returns a paginated response of all image sets that have the matching criteria. All date range queries must be input as <code>(lowerBound, upperBound)</code>.</p> <p>By default, <code>SearchImageSets</code> uses the <code>updatedAt</code> field for sorting in descending order from newest to oldest.</p> </note>
    # @param [Hash, Types::SearchImageSetsRequest] params
    # @option params [String] :datastore_id
    #   <p>The identifier of the data store where the image sets reside.</p>
    # @option params [Types::SearchCriteria] :search_criteria
    #   <p>The search criteria that filters by applying a maximum of 1 item to <code>SearchByAttribute</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that can be returned in a search.</p>
    # @option params [String] :next_token
    #   <p>The token used for pagination of results returned in the response. Use the token returned from the previous request to continue results where the previous request ended.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     search_criteria: {
    #       filters: [
    #         {
    #           values: [{ # required
    #             # One of:
    #             dicom_patient_id: "DICOMPatientId",
    #             dicom_accession_number: "DICOMAccessionNumber",
    #             dicom_study_id: "DICOMStudyId",
    #             dicom_study_instance_uid: "DICOMStudyInstanceUID",
    #             dicom_series_instance_uid: "DICOMSeriesInstanceUID",
    #             created_at: Time.now,
    #             updated_at: Time.now,
    #             dicom_study_date_and_time: {
    #               dicom_study_date: "DICOMStudyDate", # required
    #               dicom_study_time: "DICOMStudyTime"
    #             },
    #             is_primary: false
    #           }],
    #           operator: "EQUAL" # One of: ["EQUAL", "BETWEEN"], # required
    #         }
    #       ],
    #       sort: {
    #         sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #         sort_field: "updatedAt" # One of: ["updatedAt", "createdAt", "DICOMStudyDateAndTime"], # required
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.search_image_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_sets_metadata_summaries: [ # required
    #       {
    #         image_set_id: "ImageSetId", # required
    #         version: 1,
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         dicom_tags: {
    #           dicom_patient_id: "DICOMPatientId",
    #           dicom_patient_name: "DICOMPatientName",
    #           dicom_patient_birth_date: "DICOMPatientBirthDate",
    #           dicom_patient_sex: "DICOMPatientSex",
    #           dicom_study_instance_uid: "DICOMStudyInstanceUID",
    #           dicom_study_id: "DICOMStudyId",
    #           dicom_study_description: "DICOMStudyDescription",
    #           dicom_number_of_study_related_series: 1,
    #           dicom_number_of_study_related_instances: 1,
    #           dicom_accession_number: "DICOMAccessionNumber",
    #           dicom_series_instance_uid: "DICOMSeriesInstanceUID",
    #           dicom_series_modality: "DICOMSeriesModality",
    #           dicom_series_body_part: "DICOMSeriesBodyPart",
    #           dicom_series_number: 1,
    #           dicom_study_date: "DICOMStudyDate",
    #           dicom_study_time: "DICOMStudyTime"
    #         },
    #         is_primary: false
    #       }
    #     ],
    #     sort: {
    #       sort_order: "ASC" # One of: ["ASC", "DESC"], # required
    #       sort_field: "updatedAt" # One of: ["updatedAt", "createdAt", "DICOMStudyDateAndTime"], # required
    #     },
    #     next_token: "NextToken"
    #   }
    # @return [Types::SearchImageSetsResponse]
    def search_image_sets(params = {}, options = {})
      request = build_request(:search_image_sets, params)
      request.send_request(options)
    end

    # <p>Start importing bulk data into an <code>ACTIVE</code> data store. The import job imports DICOM P10 files found in the S3 prefix specified by the <code>inputS3Uri</code> parameter. The import job stores processing results in the file specified by the <code>outputS3Uri</code> parameter.</p>
    # @param [Hash, Types::StartDICOMImportJobRequest] params
    # @option params [String] :job_name
    #   <p>The import job name.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants permission to access medical imaging resources.</p>
    # @option params [String] :client_token
    #   <p>A unique identifier for API idempotency.</p>
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :input_s3_uri
    #   <p>The input prefix path for the S3 bucket that contains the DICOM files to be imported.</p>
    # @option params [String] :output_s3_uri
    #   <p>The output prefix of the S3 bucket to upload the results of the DICOM import job.</p>
    # @option params [String] :input_owner_account_id
    #   <p>The account ID of the source S3 bucket owner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName",
    #     data_access_role_arn: "RoleArn", # required
    #     client_token: "ClientToken", # required
    #     datastore_id: "DatastoreId", # required
    #     input_s3_uri: "S3Uri", # required
    #     output_s3_uri: "S3Uri", # required
    #     input_owner_account_id: "AwsAccountId"
    #   }
    #   options = {}
    #   response = client.start_dicom_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"], # required
    #     submitted_at: Time.now, # required
    #   }
    # @return [Types::StartDICOMImportJobResponse]
    def start_dicom_import_job(params = {}, options = {})
      request = build_request(:start_dicom_import_job, params)
      request.send_request(options)
    end

    # <p>Adds a user-specifed key and value tag to a medical imaging resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the medical imaging resource that tags are being added to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The user-specified key and value tag pairs added to a medical imaging resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Removes tags from a medical imaging resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the medical imaging resource that tags are being removed from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys for the tags to be removed from the medical imaging resource.</p>
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
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Update image set metadata attributes.</p>
    # @param [Hash, Types::UpdateImageSetMetadataRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :image_set_id
    #   <p>The image set identifier.</p>
    # @option params [String] :latest_version_id
    #   <p>The latest image set version identifier.</p>
    # @option params [Boolean] :force
    #   <p>Setting this flag will force the <code>UpdateImageSetMetadata</code> operation for the following attributes:</p> <ul> <li> <p> <code>Tag.StudyInstanceUID</code>, <code>Tag.SeriesInstanceUID</code>, <code>Tag.SOPInstanceUID</code>, and <code>Tag.StudyID</code> </p> </li> <li> <p>Adding, removing, or updating private tags for an individual SOP Instance</p> </li> </ul>
    # @option params [Types::MetadataUpdates] :update_image_set_metadata_updates
    #   <p>Update image set metadata updates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     latest_version_id: "ImageSetExternalVersionId", # required
    #     force: false,
    #     update_image_set_metadata_updates: { # required
    #       # One of:
    #       dicom_updates: {
    #         removable_attributes: "data",
    #         updatable_attributes: "data"
    #       },
    #       revert_to_version_id: "ImageSetExternalVersionId"
    #     }
    #   }
    #   options = {}
    #   response = client.update_image_set_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     image_set_id: "ImageSetId", # required
    #     latest_version_id: "ImageSetExternalVersionId", # required
    #     image_set_state: "ACTIVE" # One of: ["ACTIVE", "LOCKED", "DELETED"], # required
    #     image_set_workflow_status: "CREATED" # One of: ["CREATED", "COPIED", "COPYING", "COPYING_WITH_READ_ONLY_ACCESS", "COPY_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETED", "IMPORTING", "IMPORTED", "IMPORT_FAILED"],
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     message: "Message"
    #   }
    # @return [Types::UpdateImageSetMetadataResponse]
    def update_image_set_metadata(params = {}, options = {})
      request = build_request(:update_image_set_metadata, params)
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
      context[:gem_name] = 'aws-sdk-medicalimaging'
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
