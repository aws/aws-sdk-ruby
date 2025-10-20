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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:healthlake)

module Aws::HealthLake
  # An API client for Aws::HealthLake.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::HealthLake
    @identifier = :healthlake

    add_plugin(::Aws::HealthLake::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::HealthLake::EndpointProvider)
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

    # <p>Create a FHIR-enabled data store.</p>
    # @param [Hash, Types::CreateFHIRDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The data store name (user-generated).</p>
    # @option params [String] :datastore_type_version
    #   <p>The FHIR release version supported by the data store. Current support is for version
    #               <code>R4</code>.</p>
    # @option params [Types::SseConfiguration] :sse_configuration
    #   <p>The server-side encryption key configuration for a customer-provided encryption key
    #            specified for creating a data store. </p>
    # @option params [Types::PreloadDataConfig] :preload_data_config
    #   <p>An optional parameter to preload (import) open source Synthea FHIR data upon creation of
    #            the data store.</p>
    # @option params [String] :client_token
    #   <p>An optional user-provided token to ensure API idempotency.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The resource tags applied to a data store when it is created.</p>
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   <p>The identity provider configuration to use for the data store.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_name: "DatastoreName",
    #     datastore_type_version: "R4" # One of: ["R4"], # required
    #     sse_configuration: {
    #       kms_encryption_config: { # required
    #         cmk_type: "CUSTOMER_MANAGED_KMS_KEY" # One of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"], # required
    #         kms_key_id: "EncryptionKeyID"
    #       }
    #     },
    #     preload_data_config: {
    #       preload_data_type: "SYNTHEA" # One of: ["SYNTHEA"], # required
    #     },
    #     client_token: "ClientTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     identity_provider_configuration: {
    #       authorization_strategy: "SMART_ON_FHIR_V1" # One of: ["SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"], # required
    #       fine_grained_authorization_enabled: false,
    #       metadata: "ConfigurationMetadata",
    #       idp_lambda_arn: "LambdaArn"
    #     }
    #   }
    #   options = {}
    #   response = client.create_fhir_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     datastore_arn: "DatastoreArn", # required
    #     datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED"], # required
    #     datastore_endpoint: "BoundedLengthString", # required
    #   }
    # @return [Types::CreateFHIRDatastoreResponse]
    def create_fhir_datastore(params = {}, options = {})
      request = build_request(:create_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Delete a FHIR-enabled data store.</p>
    # @param [Hash, Types::DeleteFHIRDatastoreRequest] params
    # @option params [String] :datastore_id
    #   <p> The AWS-generated identifier for the data store to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #   }
    #   options = {}
    #   response = client.delete_fhir_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     datastore_arn: "DatastoreArn", # required
    #     datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED"], # required
    #     datastore_endpoint: "BoundedLengthString", # required
    #   }
    # @return [Types::DeleteFHIRDatastoreResponse]
    def delete_fhir_datastore(params = {}, options = {})
      request = build_request(:delete_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Get properties for a FHIR-enabled data store.</p>
    # @param [Hash, Types::DescribeFHIRDatastoreRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #   }
    #   options = {}
    #   response = client.describe_fhir_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_properties: { # required
    #       datastore_id: "DatastoreId", # required
    #       datastore_arn: "DatastoreArn", # required
    #       datastore_name: "DatastoreName",
    #       datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED"], # required
    #       created_at: Time.now,
    #       datastore_type_version: "R4" # One of: ["R4"], # required
    #       datastore_endpoint: "String", # required
    #       sse_configuration: {
    #         kms_encryption_config: { # required
    #           cmk_type: "CUSTOMER_MANAGED_KMS_KEY" # One of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"], # required
    #           kms_key_id: "EncryptionKeyID"
    #         }
    #       },
    #       preload_data_config: {
    #         preload_data_type: "SYNTHEA" # One of: ["SYNTHEA"], # required
    #       },
    #       identity_provider_configuration: {
    #         authorization_strategy: "SMART_ON_FHIR_V1" # One of: ["SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"], # required
    #         fine_grained_authorization_enabled: false,
    #         metadata: "ConfigurationMetadata",
    #         idp_lambda_arn: "LambdaArn"
    #       },
    #       error_cause: {
    #         error_message: "ErrorMessage",
    #         error_category: "RETRYABLE_ERROR" # One of: ["RETRYABLE_ERROR", "NON_RETRYABLE_ERROR"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeFHIRDatastoreResponse]
    def describe_fhir_datastore(params = {}, options = {})
      request = build_request(:describe_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Get FHIR export job properties.</p>
    # @param [Hash, Types::DescribeFHIRExportJobRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier from which FHIR data is being exported from.</p>
    # @option params [String] :job_id
    #   <p>The export job identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_fhir_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_job_properties: { # required
    #       job_id: "JobId", # required
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"], # required
    #       submit_time: Time.now, # required
    #       end_time: Time.now,
    #       datastore_id: "DatastoreId", # required
    #       output_data_config: { # required
    #         # One of:
    #         s3_configuration: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "EncryptionKeyID", # required
    #         }
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       message: "Message"
    #     }
    #   }
    # @return [Types::DescribeFHIRExportJobResponse]
    def describe_fhir_export_job(params = {}, options = {})
      request = build_request(:describe_fhir_export_job, params)
      request.send_request(options)
    end

    # <p>Get the import job properties to learn more about the job or job progress.</p>
    # @param [Hash, Types::DescribeFHIRImportJobRequest] params
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
    #   response = client.describe_fhir_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job_properties: { # required
    #       job_id: "JobId", # required
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"], # required
    #       submit_time: Time.now, # required
    #       end_time: Time.now,
    #       datastore_id: "DatastoreId", # required
    #       input_data_config: { # required
    #         # One of:
    #         s3_uri: "S3Uri"
    #       },
    #       job_output_data_config: {
    #         # One of:
    #         s3_configuration: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "EncryptionKeyID", # required
    #         }
    #       },
    #       job_progress_report: {
    #         total_number_of_scanned_files: 1,
    #         total_size_of_scanned_files_in_mb: 1.0,
    #         total_number_of_imported_files: 1,
    #         total_number_of_resources_scanned: 1,
    #         total_number_of_resources_imported: 1,
    #         total_number_of_resources_with_customer_error: 1,
    #         total_number_of_files_read_with_customer_error: 1,
    #         throughput: 1.0
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       message: "Message",
    #       validation_level: "strict" # One of: ["strict", "structure-only", "minimal"]
    #     }
    #   }
    # @return [Types::DescribeFHIRImportJobResponse]
    def describe_fhir_import_job(params = {}, options = {})
      request = build_request(:describe_fhir_import_job, params)
      request.send_request(options)
    end

    # <p>List all FHIR-enabled data stores in a user’s account, regardless of data store
    #          status.</p>
    # @param [Hash, Types::ListFHIRDatastoresRequest] params
    # @option params [Types::DatastoreFilter] :filter
    #   <p>List all filters associated with a FHIR data store request.</p>
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of data stores when results are
    #            paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data stores returned on a page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       datastore_name: "DatastoreName",
    #       datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED"],
    #       created_before: Time.now,
    #       created_after: Time.now
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_fhir_datastores(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_properties_list: [ # required
    #       {
    #         datastore_id: "DatastoreId", # required
    #         datastore_arn: "DatastoreArn", # required
    #         datastore_name: "DatastoreName",
    #         datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED"], # required
    #         created_at: Time.now,
    #         datastore_type_version: "R4" # One of: ["R4"], # required
    #         datastore_endpoint: "String", # required
    #         sse_configuration: {
    #           kms_encryption_config: { # required
    #             cmk_type: "CUSTOMER_MANAGED_KMS_KEY" # One of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"], # required
    #             kms_key_id: "EncryptionKeyID"
    #           }
    #         },
    #         preload_data_config: {
    #           preload_data_type: "SYNTHEA" # One of: ["SYNTHEA"], # required
    #         },
    #         identity_provider_configuration: {
    #           authorization_strategy: "SMART_ON_FHIR_V1" # One of: ["SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"], # required
    #           fine_grained_authorization_enabled: false,
    #           metadata: "ConfigurationMetadata",
    #           idp_lambda_arn: "LambdaArn"
    #         },
    #         error_cause: {
    #           error_message: "ErrorMessage",
    #           error_category: "RETRYABLE_ERROR" # One of: ["RETRYABLE_ERROR", "NON_RETRYABLE_ERROR"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFHIRDatastoresResponse]
    def list_fhir_datastores(params = {}, options = {})
      request = build_request(:list_fhir_datastores, params)
      request.send_request(options)
    end

    # <p>Lists all FHIR export jobs associated with an account and their statuses.</p>
    # @param [Hash, Types::ListFHIRExportJobsRequest] params
    # @option params [String] :datastore_id
    #   <p>Limits the response to the export job with the specified data store ID. </p>
    # @option params [String] :next_token
    #   <p>A pagination token used to identify the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>Limits the number of results returned for a ListFHIRExportJobs to a maximum quantity
    #            specified by the user.</p>
    # @option params [String] :job_name
    #   <p>Limits the response to the export job with the specified job name. </p>
    # @option params [String] :job_status
    #   <p>Limits the response to export jobs with the specified job status. </p>
    # @option params [Time] :submitted_before
    #   <p>Limits the response to FHIR export jobs submitted before a user- specified date.</p>
    # @option params [Time] :submitted_after
    #   <p>Limits the response to FHIR export jobs submitted after a user-specified date.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     job_name: "JobName",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"],
    #     submitted_before: Time.now,
    #     submitted_after: Time.now
    #   }
    #   options = {}
    #   response = client.list_fhir_export_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_job_properties_list: [ # required
    #       {
    #         job_id: "JobId", # required
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"], # required
    #         submit_time: Time.now, # required
    #         end_time: Time.now,
    #         datastore_id: "DatastoreId", # required
    #         output_data_config: { # required
    #           # One of:
    #           s3_configuration: {
    #             s3_uri: "S3Uri", # required
    #             kms_key_id: "EncryptionKeyID", # required
    #           }
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         message: "Message"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFHIRExportJobsResponse]
    def list_fhir_export_jobs(params = {}, options = {})
      request = build_request(:list_fhir_export_jobs, params)
      request.send_request(options)
    end

    # <p>List all FHIR import jobs associated with an account and their statuses.</p>
    # @param [Hash, Types::ListFHIRImportJobsRequest] params
    # @option params [String] :datastore_id
    #   <p>Limits the response to the import job with the specified data store ID. </p>
    # @option params [String] :next_token
    #   <p>The pagination token used to identify the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>Limits the number of results returned for <code>ListFHIRImportJobs</code> to a maximum
    #            quantity specified by the user.</p>
    # @option params [String] :job_name
    #   <p>Limits the response to the import job with the specified job name. </p>
    # @option params [String] :job_status
    #   <p>Limits the response to the import job with the specified job status. </p>
    # @option params [Time] :submitted_before
    #   <p>Limits the response to FHIR import jobs submitted before a user- specified date. </p>
    # @option params [Time] :submitted_after
    #   <p>Limits the response to FHIR import jobs submitted after a user-specified date.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     job_name: "JobName",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"],
    #     submitted_before: Time.now,
    #     submitted_after: Time.now
    #   }
    #   options = {}
    #   response = client.list_fhir_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_job_properties_list: [ # required
    #       {
    #         job_id: "JobId", # required
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"], # required
    #         submit_time: Time.now, # required
    #         end_time: Time.now,
    #         datastore_id: "DatastoreId", # required
    #         input_data_config: { # required
    #           # One of:
    #           s3_uri: "S3Uri"
    #         },
    #         job_output_data_config: {
    #           # One of:
    #           s3_configuration: {
    #             s3_uri: "S3Uri", # required
    #             kms_key_id: "EncryptionKeyID", # required
    #           }
    #         },
    #         job_progress_report: {
    #           total_number_of_scanned_files: 1,
    #           total_size_of_scanned_files_in_mb: 1.0,
    #           total_number_of_imported_files: 1,
    #           total_number_of_resources_scanned: 1,
    #           total_number_of_resources_imported: 1,
    #           total_number_of_resources_with_customer_error: 1,
    #           total_number_of_files_read_with_customer_error: 1,
    #           throughput: 1.0
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         message: "Message",
    #         validation_level: "strict" # One of: ["strict", "structure-only", "minimal"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFHIRImportJobsResponse]
    def list_fhir_import_jobs(params = {}, options = {})
      request = build_request(:list_fhir_import_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of all existing tags associated with a data store.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data store to which tags are being added.</p>
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

    # <p>Start a FHIR export job.</p>
    # @param [Hash, Types::StartFHIRExportJobRequest] params
    # @option params [String] :job_name
    #   <p>The export job name.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>The output data configuration supplied when the export job was started.</p>
    # @option params [String] :datastore_id
    #   <p>The data store identifier from which files are being exported.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used during initiation of the export job.</p>
    # @option params [String] :client_token
    #   <p>An optional user provided token used for ensuring API idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName",
    #     output_data_config: { # required
    #       # One of:
    #       s3_configuration: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "EncryptionKeyID", # required
    #       }
    #     },
    #     datastore_id: "DatastoreId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.start_fhir_export_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"], # required
    #     datastore_id: "DatastoreId"
    #   }
    # @return [Types::StartFHIRExportJobResponse]
    def start_fhir_export_job(params = {}, options = {})
      request = build_request(:start_fhir_export_job, params)
      request.send_request(options)
    end

    # <p>Start importing bulk FHIR data into an ACTIVE data store. The import job imports FHIR
    #          data found in the <code>InputDataConfig</code> object and stores processing results in the
    #             <code>JobOutputDataConfig</code> object.</p>
    # @param [Hash, Types::StartFHIRImportJobRequest] params
    # @option params [String] :job_name
    #   <p>The import job name.</p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input properties for the import job request.</p>
    # @option params [Types::OutputDataConfig] :job_output_data_config
    #   <p>The output data configuration supplied when the export job was created.</p>
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that grants access permission to AWS HealthLake.</p>
    # @option params [String] :client_token
    #   <p>The optional user-provided token used for ensuring API idempotency.</p>
    # @option params [String] :validation_level
    #   <p>The validation level of the import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName",
    #     input_data_config: { # required
    #       # One of:
    #       s3_uri: "S3Uri"
    #     },
    #     job_output_data_config: { # required
    #       # One of:
    #       s3_configuration: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "EncryptionKeyID", # required
    #       }
    #     },
    #     datastore_id: "DatastoreId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_token: "ClientTokenString",
    #     validation_level: "strict" # One of: ["strict", "structure-only", "minimal"]
    #   }
    #   options = {}
    #   response = client.start_fhir_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED_WITH_ERRORS", "COMPLETED", "FAILED", "CANCEL_SUBMITTED", "CANCEL_IN_PROGRESS", "CANCEL_COMPLETED", "CANCEL_FAILED"], # required
    #     datastore_id: "DatastoreId"
    #   }
    # @return [Types::StartFHIRImportJobResponse]
    def start_fhir_import_job(params = {}, options = {})
      request = build_request(:start_fhir_import_job, params)
      request.send_request(options)
    end

    # <p>Add a user-specifed key and value tag to a data store.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that grants access to the data store tags are being added to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The user-specified key and value pair tags being added to a data store.</p>
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

    # <p>Remove a user-specifed key and value tag from a data store.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data store from which tags are being removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys for the tags to be removed from the data store.</p>
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
      context[:gem_name] = 'aws-sdk-healthlake'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        fhir_datastore_active: Waiters::FHIRDatastoreActive,
        fhir_datastore_deleted: Waiters::FHIRDatastoreDeleted,
        fhir_export_job_completed: Waiters::FHIRExportJobCompleted,
        fhir_import_job_completed: Waiters::FHIRImportJobCompleted
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
