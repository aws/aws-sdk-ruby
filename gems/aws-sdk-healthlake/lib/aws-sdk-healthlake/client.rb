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
require 'aws-sdk-core/json_rpc'

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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::HealthLake::EndpointProvider)
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
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <p>Creates a data transformation profile in DRAFT state. Specify a built-in starter profile, an existing profile version, raw profile content, or a sample data file as the source.</p>
    # @param [Hash, Types::CreateDataTransformationProfileRequest] params
    # @option params [String] :source_format
    #   <p>The source data format that this profile converts from (Consolidated Clinical Document Architecture (C-CDA) or Comma-separated values (CSV)).</p>
    # @option params [Types::CreateDataTransformationProfileSource] :source
    #   <p>The source for the initial profile content. Specify a built-in starter profile, an existing profile version to clone, raw profile content for CI/CD workflows, or a sample data file in Amazon S3.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon Web Services Key Management Service (Amazon Web Services KMS) key identifier used to encrypt the profile content at rest.</p>
    # @option params [String] :profile_description
    #   <p>A human-readable description of the profile's purpose.</p>
    # @option params [String] :profile_name
    #   <p>A name for the data transformation profile.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to associate with the profile at creation time.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request but does not return an error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     source: { # required
    #       # One of:
    #       starter_profile: {
    #         starter_profile_name: "String", # required
    #       },
    #       existing_versioned_profile_id: {
    #         profile_id: "String", # required
    #         version: 1, # required
    #       },
    #       profile_mapping: {
    #         profile_mapping: { # required
    #           "String" => "String"
    #         }
    #       },
    #       sample_data: {
    #         s3_uri: "SampleDataS3Uri", # required
    #       }
    #     },
    #     kms_key_id: "KmsKeyId",
    #     profile_description: "ProfileDescription",
    #     profile_name: "ProfileNameString", # required
    #     tags: {
    #       "DataTransformationTagKey" => "DataTransformationTagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_data_transformation_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileIdString", # required
    #     version: 1, # required
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     target_format: "FHIR_R4" # One of: ["FHIR_R4"], # required
    #     profile_name: "ProfileNameString", # required
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::CreateDataTransformationProfileResponse]
    def create_data_transformation_profile(params = {}, options = {})
      request = build_request(:create_data_transformation_profile, params)
      request.send_request(options)
    end

    # <p>Create a FHIR-enabled data store.</p>
    # @param [Hash, Types::CreateFHIRDatastoreRequest] params
    # @option params [String] :datastore_name
    #   <p>The data store name (user-generated).</p>
    # @option params [String] :datastore_type_version
    #   <p>The FHIR release version supported by the data store. Current support is for version <code>R4</code>.</p>
    # @option params [Types::SseConfiguration] :sse_configuration
    #   <p>The server-side encryption key configuration for a customer-provided encryption key specified for creating a data store. </p>
    # @option params [Types::PreloadDataConfig] :preload_data_config
    #   <p>An optional parameter to preload (import) open source Synthea FHIR data upon creation of the data store.</p>
    # @option params [String] :client_token
    #   <p>An optional user-provided token to ensure API idempotency.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The resource tags applied to a data store when it is created.</p>
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   <p>The identity provider configuration to use for the data store.</p>
    # @option params [Types::AnalyticsConfiguration] :analytics_configuration
    #   <p>The analytics configuration for the data store.</p>
    # @option params [Types::NlpConfiguration] :nlp_configuration
    #   <p>The natural language processing (NLP) configuration for the data store.</p>
    # @option params [Types::ProfileConfiguration] :profile_configuration
    #   <p>The profile configuration for the data store.</p>
    # @option params [Types::BackupConfiguration] :backup_configuration
    #   The backup configuration for the data store.
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
    #     },
    #     analytics_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"]
    #     },
    #     nlp_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #     },
    #     profile_configuration: {
    #       default_profiles: ["HealthLakeString"]
    #     },
    #     backup_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       backup_type: "CONTINUOUS" # One of: ["CONTINUOUS"],
    #       retention_period_in_days: 1,
    #       backup_tags_enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_fhir_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     datastore_arn: "DatastoreArn", # required
    #     datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"], # required
    #     datastore_endpoint: "BoundedLengthString", # required
    #   }
    # @return [Types::CreateFHIRDatastoreResponse]
    def create_fhir_datastore(params = {}, options = {})
      request = build_request(:create_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Deletes a data transformation profile and all its versions, including the DRAFT and all published versions.</p>
    # @param [Hash, Types::DeleteDataTransformationProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_data_transformation_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileIdString", # required
    #     profile_name: "ProfileNameString",
    #     deletion_time: Time.now, # required
    #   }
    # @return [Types::DeleteDataTransformationProfileResponse]
    def delete_data_transformation_profile(params = {}, options = {})
      request = build_request(:delete_data_transformation_profile, params)
      request.send_request(options)
    end

    # <p>Delete a FHIR-enabled data store.</p>
    # @param [Hash, Types::DeleteFHIRDatastoreRequest] params
    # @option params [String] :datastore_id
    #   <p> The Amazon Web Services-generated identifier for the data store to be deleted.</p>
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
    #     datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"], # required
    #     datastore_endpoint: "BoundedLengthString", # required
    #   }
    # @return [Types::DeleteFHIRDatastoreResponse]
    def delete_fhir_datastore(params = {}, options = {})
      request = build_request(:delete_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Describes a data transformation job, including its current status, configuration, and progress information.</p>
    # @param [Hash, Types::DescribeDataTransformationJobRequest] params
    # @option params [String] :job_id
    #   <p>The unique identifier of the data transformation job to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "DataTransformationJobId", # required
    #   }
    #   options = {}
    #   response = client.describe_data_transformation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transformation_job_properties: { # required
    #       job_id: "DataTransformationJobId", # required
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"], # required
    #       input_data_config: { # required
    #         s3_uri: "DataTransformationS3Uri", # required
    #         source_format: "CCDA" # One of: ["CCDA", "CSV"]
    #       },
    #       output_data_config: { # required
    #         s3_configuration: { # required
    #           s3_uri: "DataTransformationS3Uri", # required
    #           kms_key_id: "KmsKeyId", # required
    #         }
    #       },
    #       data_access_role_arn: "DataTransformationIamRoleArn", # required
    #       submit_time: Time.now, # required
    #       job_name: "DataTransformationJobName",
    #       profile_id: "ProfileIdString",
    #       profile_name: "ProfileNameString",
    #       profile_version: 1,
    #       end_time: Time.now,
    #       drift_detection_enabled: false,
    #       provenance_enabled: false,
    #       message: "BoundedString",
    #       job_progress_report: {
    #         total_files_scanned: 1, # required
    #         total_files_converted: 1, # required
    #         total_files_failed: 1, # required
    #         total_resources_generated: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeDataTransformationJobResponse]
    def describe_data_transformation_job(params = {}, options = {})
      request = build_request(:describe_data_transformation_job, params)
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
    #       datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"], # required
    #       created_at: Time.now,
    #       datastore_type_version: "R4" # One of: ["R4"], # required
    #       datastore_endpoint: "HealthLakeString", # required
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
    #       },
    #       nlp_configuration: {
    #         status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #       },
    #       analytics_configuration: {
    #         status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"]
    #       },
    #       profile_configuration: {
    #         default_profiles: ["HealthLakeString"]
    #       },
    #       backup_status_info: {
    #         configuration: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           backup_type: "CONTINUOUS" # One of: ["CONTINUOUS"],
    #           retention_period_in_days: 1,
    #           backup_tags_enabled: false
    #         },
    #         backup_enabled_at: Time.now,
    #         earliest_restore_point: Time.now,
    #         latest_restore_point: Time.now,
    #         scheduled_permanent_deletion_time: Time.now
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
    #         total_number_of_scanned_non_fhir_files: 1,
    #         total_size_of_scanned_non_fhir_files_in_mb: 1.0,
    #         total_number_of_imported_non_fhir_files: 1,
    #         total_number_of_non_fhir_resources_scanned: 1,
    #         total_number_of_non_fhir_resources_imported: 1,
    #         total_number_of_non_fhir_resources_with_customer_error: 1,
    #         total_number_of_non_fhir_files_read_with_customer_error: 1,
    #         throughput: 1.0,
    #         total_files_converted: 1,
    #         total_resources_generated: 1
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

    # <p>Retrieves a data transformation profile's metadata and profile content at a specific version. Specify version 0 to retrieve the DRAFT, a version number between 1 and 99 to retrieve a specific published version, or omit the version to retrieve the latest published version.</p>
    # @param [Hash, Types::GetDataTransformationProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile to retrieve.</p>
    # @option params [Integer] :profile_version
    #   <p>The version number to retrieve. Specify 0 to retrieve the DRAFT version. If you omit this parameter, the service returns the latest published version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileIdString", # required
    #     profile_version: 1
    #   }
    #   options = {}
    #   response = client.get_data_transformation_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileIdString", # required
    #     version: 1, # required
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     target_format: "FHIR_R4" # One of: ["FHIR_R4"], # required
    #     profile_mapping: { # required
    #       "ProfileMappingKey" => "ProfileMappingValue"
    #     },
    #     profile_name: "ProfileNameString",
    #     profile_description: "ProfileDescription",
    #     change_description: "ChangeDescription",
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::GetDataTransformationProfileResponse]
    def get_data_transformation_profile(params = {}, options = {})
      request = build_request(:get_data_transformation_profile, params)
      request.send_request(options)
    end

    # <p>Lists data transformation jobs for your Amazon Web Services account. Results can be filtered by status, job name, and submit time window. Results are paginated. Use the <code>NextToken</code> parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListDataTransformationJobsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of jobs to return per page. If you don't specify a value, the service returns up to 100 results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous response. Pass this value to retrieve the next page of results.</p>
    # @option params [String] :job_status
    #   <p>Filters the results to include only jobs with the specified status.</p>
    # @option params [String] :job_name
    #   <p>Filters the results to include only jobs with the specified name.</p>
    # @option params [Time] :submitted_after
    #   <p>Filters the results to include only jobs submitted at or after this timestamp.</p>
    # @option params [Time] :submitted_before
    #   <p>Filters the results to include only jobs submitted at or before this timestamp.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "DataTransformationNextToken",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"],
    #     job_name: "DataTransformationJobName",
    #     submitted_after: Time.now,
    #     submitted_before: Time.now
    #   }
    #   options = {}
    #   response = client.list_data_transformation_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         job_id: "DataTransformationJobId", # required
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"], # required
    #         submit_time: Time.now, # required
    #         job_name: "DataTransformationJobName",
    #         end_time: Time.now,
    #         source_format: "CCDA" # One of: ["CCDA", "CSV"]
    #       }
    #     ],
    #     next_token: "DataTransformationNextToken"
    #   }
    # @return [Types::ListDataTransformationJobsResponse]
    def list_data_transformation_jobs(params = {}, options = {})
      request = build_request(:list_data_transformation_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all versions of a specific data transformation profile (DRAFT and published), in reverse chronological order (newest first). Use <code>GetDataTransformationProfile</code> to retrieve profile content. Results are paginated. Use the <code>NextToken</code> parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListDataTransformationProfileVersionsRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile whose versions to list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of profile versions to return per page. If you don't specify a value, the service returns up to 100 results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous response. Pass this value to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileIdString", # required
    #     max_results: 1,
    #     next_token: "DataTransformationNextToken"
    #   }
    #   options = {}
    #   response = client.list_data_transformation_profile_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         profile_id: "ProfileIdString", # required
    #         version: 1, # required
    #         source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #         target_format: "FHIR_R4" # One of: ["FHIR_R4"], # required
    #         profile_name: "ProfileNameString",
    #         change_description: "ChangeDescription",
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "DataTransformationNextToken"
    #   }
    # @return [Types::ListDataTransformationProfileVersionsResponse]
    def list_data_transformation_profile_versions(params = {}, options = {})
      request = build_request(:list_data_transformation_profile_versions, params)
      request.send_request(options)
    end

    # <p>Lists all data transformation profiles in your account, returning the latest version summary for each. Use <code>GetDataTransformationProfile</code> to retrieve profile content. Results are paginated. Use the <code>NextToken</code> parameter to retrieve additional results.</p>
    # @param [Hash, Types::ListDataTransformationProfilesRequest] params
    # @option params [String] :source_format
    #   <p>Filters the results by source data format.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of profiles to return per page. If you don't specify a value, the service returns up to 100 results.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous response. Pass this value to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     max_results: 1,
    #     next_token: "DataTransformationNextToken"
    #   }
    #   options = {}
    #   response = client.list_data_transformation_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [ # required
    #       {
    #         profile_id: "ProfileIdString", # required
    #         version: 1, # required
    #         source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #         target_format: "FHIR_R4" # One of: ["FHIR_R4"], # required
    #         profile_name: "ProfileNameString",
    #         profile_description: "ProfileDescription",
    #         last_updated_at: Time.now
    #       }
    #     ],
    #     next_token: "DataTransformationNextToken"
    #   }
    # @return [Types::ListDataTransformationProfilesResponse]
    def list_data_transformation_profiles(params = {}, options = {})
      request = build_request(:list_data_transformation_profiles, params)
      request.send_request(options)
    end

    # <p>List all FHIR-enabled data stores in a user’s account, regardless of data store status.</p>
    # @param [Hash, Types::ListFHIRDatastoresRequest] params
    # @option params [Types::DatastoreFilter] :filter
    #   <p>List all filters associated with a FHIR data store request.</p>
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of data stores when results are paginated.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of data stores returned on a page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       datastore_name: "DatastoreName",
    #       datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"],
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
    #         datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"], # required
    #         created_at: Time.now,
    #         datastore_type_version: "R4" # One of: ["R4"], # required
    #         datastore_endpoint: "HealthLakeString", # required
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
    #         },
    #         nlp_configuration: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #         },
    #         analytics_configuration: {
    #           status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"]
    #         },
    #         profile_configuration: {
    #           default_profiles: ["HealthLakeString"]
    #         },
    #         backup_status_info: {
    #           configuration: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             backup_type: "CONTINUOUS" # One of: ["CONTINUOUS"],
    #             retention_period_in_days: 1,
    #             backup_tags_enabled: false
    #           },
    #           backup_enabled_at: Time.now,
    #           earliest_restore_point: Time.now,
    #           latest_restore_point: Time.now,
    #           scheduled_permanent_deletion_time: Time.now
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
    #   <p>Limits the number of results returned for a ListFHIRExportJobs to a maximum quantity specified by the user.</p>
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
    #   <p>Limits the number of results returned for <code>ListFHIRImportJobs</code> to a maximum quantity specified by the user.</p>
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
    #           total_number_of_scanned_non_fhir_files: 1,
    #           total_size_of_scanned_non_fhir_files_in_mb: 1.0,
    #           total_number_of_imported_non_fhir_files: 1,
    #           total_number_of_non_fhir_resources_scanned: 1,
    #           total_number_of_non_fhir_resources_imported: 1,
    #           total_number_of_non_fhir_resources_with_customer_error: 1,
    #           total_number_of_non_fhir_files_read_with_customer_error: 1,
    #           throughput: 1.0,
    #           total_files_converted: 1,
    #           total_resources_generated: 1
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

    # <p>Promotes the current DRAFT version of a data transformation profile to a new immutable published version. Also supports rollback by publishing from a previously published version.</p>
    # @param [Hash, Types::PublishDataTransformationProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile to publish.</p>
    # @option params [String] :source_format
    #   <p>The source data format of the profile.</p>
    # @option params [Integer] :from_existing_version
    #   <p>The version number of a previously published version to republish as the new latest version. Use this parameter for rollback scenarios. If you omit this parameter, the service publishes the current DRAFT version.</p>
    # @option params [String] :change_description
    #   <p>A description of what changed or why this version is being published.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileIdString", # required
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     from_existing_version: 1,
    #     change_description: "ChangeDescription"
    #   }
    #   options = {}
    #   response = client.publish_data_transformation_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileIdString", # required
    #     version: 1, # required
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     target_format: "FHIR_R4" # One of: ["FHIR_R4"], # required
    #     profile_name: "ProfileNameString",
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::PublishDataTransformationProfileResponse]
    def publish_data_transformation_profile(params = {}, options = {})
      request = build_request(:publish_data_transformation_profile, params)
      request.send_request(options)
    end

    # Restore a backup-enabled data store to a point in time. Creates a new data store from the backup.
    # @param [Hash, Types::RestoreFHIRDatastoreRequest] params
    # @option params [String] :source_datastore_id
    #   The identifier of the source data store to restore from.
    # @option params [Types::RestoreConfiguration] :restore_configuration
    #   The restore configuration specifying the type and parameters for the restore.
    # @option params [String] :datastore_name
    #   The name for the restored data store.
    # @option params [Types::SseConfiguration] :sse_configuration
    #   The server-side encryption key configuration for the restored data store.
    # @option params [String] :client_token
    #   An optional user-provided token to ensure API idempotency of the restore.
    # @option params [Array<Types::Tag>] :tags
    #   The resource tags applied to the restored data store.
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   The identity provider configuration for the restored data store.
    # @option params [Types::AnalyticsConfiguration] :analytics_configuration
    #   The analytics configuration for the restored data store.
    # @option params [Types::NlpConfiguration] :nlp_configuration
    #   The NLP configuration for the restored data store.
    # @option params [Types::ProfileConfiguration] :profile_configuration
    #   The profile configuration for the restored data store.
    # @example Restore a data store to a point in time
    #   # Example operation for restore_fhir_datastore
    #   params = {
    #     source_datastore_id: "source-datastore-id",
    #     restore_configuration: {
    #     "ContinuousBackupRestoreConfiguration" => {
    #       "RestorePointTime" => 2026-08-01T00:00:00Z
    #     }
    #   },
    #     datastore_name: "RestoredFhirDatastore"
    #   }
    #   options = {}
    #   response = client.restore_fhir_datastore(params, options)
    #   response.to_h #=>
    #   {
    #     datastore_id: "restored-datastore-id",
    #     datastore_arn: "arn:aws:healthlake:us-east-1:123456789012:datastore/fhir/restored-datastore-id",
    #     datastore_status: CREATING,
    #     datastore_endpoint: "https://healthlake.us-east-1.amazonaws.com/datastore/restored-datastore-id/r4/"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     source_datastore_id: "DatastoreId", # required
    #     restore_configuration: { # required
    #       # One of:
    #       continuous_backup_restore_configuration: {
    #         restore_point_time: Time.now
    #       }
    #     },
    #     datastore_name: "DatastoreName",
    #     sse_configuration: {
    #       kms_encryption_config: { # required
    #         cmk_type: "CUSTOMER_MANAGED_KMS_KEY" # One of: ["CUSTOMER_MANAGED_KMS_KEY", "AWS_OWNED_KMS_KEY"], # required
    #         kms_key_id: "EncryptionKeyID"
    #       }
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
    #     },
    #     analytics_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"]
    #     },
    #     nlp_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #     },
    #     profile_configuration: {
    #       default_profiles: ["HealthLakeString"]
    #     }
    #   }
    #   options = {}
    #   response = client.restore_fhir_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_id: "DatastoreId", # required
    #     datastore_arn: "DatastoreArn", # required
    #     datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"], # required
    #     datastore_endpoint: "BoundedLengthString", # required
    #   }
    # @return [Types::RestoreFHIRDatastoreResponse]
    def restore_fhir_datastore(params = {}, options = {})
      request = build_request(:restore_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous data transformation job that converts source files from Amazon Simple Storage Service (Amazon S3) and writes the output to Amazon S3 or HealthLake.</p>
    # @param [Hash, Types::StartDataTransformationJobRequest] params
    # @option params [Types::TransformationInputDataConfig] :input_data_config
    #   <p>The Amazon S3 location and format of the source files to transform.</p>
    # @option params [Types::TransformationOutputDataConfig] :output_data_config
    #   <p>The Amazon S3 output location and Amazon Web Services Key Management Service (Amazon Web Services KMS) encryption configuration.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that HealthLake assumes to read from and write to the specified Amazon S3 locations.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request but does not return an error.</p>
    # @option params [String] :job_name
    #   <p>A descriptive name for the data transformation job.</p>
    # @option params [String] :profile_id
    #   <p>The unique identifier of the data transformation profile to use for conversion.</p>
    # @option params [Boolean] :drift_detection_enabled
    #   <p>Specifies whether drift detection is enabled for this job. When enabled, HealthLake writes a drift report to the output Amazon S3 location alongside the converted files.</p>
    # @option params [Boolean] :provenance_enabled
    #   <p>Specifies whether FHIR R4 Provenance resource generation is enabled for this transformation job. When provenance is enabled, the service also generates related DocumentReference and Device resources. If you don't specify a value, the default is <code>true</code>. To disable provenance output, set this parameter to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "DataTransformationS3Uri", # required
    #       source_format: "CCDA" # One of: ["CCDA", "CSV"]
    #     },
    #     output_data_config: { # required
    #       s3_configuration: { # required
    #         s3_uri: "DataTransformationS3Uri", # required
    #         kms_key_id: "KmsKeyId", # required
    #       }
    #     },
    #     data_access_role_arn: "DataTransformationIamRoleArn", # required
    #     client_token: "ClientToken", # required
    #     job_name: "DataTransformationJobName",
    #     profile_id: "ProfileIdString", # required
    #     drift_detection_enabled: false,
    #     provenance_enabled: false
    #   }
    #   options = {}
    #   response = client.start_data_transformation_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "DataTransformationJobId", # required
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "QUEUED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"], # required
    #   }
    # @return [Types::StartDataTransformationJobResponse]
    def start_data_transformation_job(params = {}, options = {})
      request = build_request(:start_data_transformation_job, params)
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

    # <p>Start importing bulk FHIR data into an ACTIVE data store. The import job imports FHIR data found in the <code>InputDataConfig</code> object and stores processing results in the <code>JobOutputDataConfig</code> object.</p>
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
    #   <p>The Amazon Resource Name (ARN) that grants access permission to HealthLake.</p>
    # @option params [String] :client_token
    #   <p>The optional user-provided token used for ensuring API idempotency.</p>
    # @option params [String] :validation_level
    #   <p>The validation level of the import job.</p>
    # @option params [String] :profile_id
    #   <p>The data transformation profile identifier to use for the import job.</p>
    # @option params [String] :input_format
    #   <p>The input format of the data to be imported.</p>
    # @option params [Boolean] :drift_detection_enabled
    #   <p>Specifies whether to enable drift detection for the import job.</p>
    # @option params [Boolean] :provenance_enabled
    #   <p>Specifies whether to enable provenance for the import job.</p>
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
    #     validation_level: "strict" # One of: ["strict", "structure-only", "minimal"],
    #     profile_id: "BoundedLengthString",
    #     input_format: "BoundedLengthString",
    #     drift_detection_enabled: false,
    #     provenance_enabled: false
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

    # <p>Updates the DRAFT version (version 0) of a data transformation profile with new profile content. The update replaces all existing DRAFT content.</p>
    # @param [Hash, Types::UpdateDataTransformationProfileRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile to update.</p>
    # @option params [Hash<String, String>] :profile_mapping
    #   <p>The new profile content for the DRAFT version. This is a full replacement of all profile files.</p>
    # @option params [String] :change_description
    #   <p>A description of what changed in this update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileIdString", # required
    #     profile_mapping: { # required
    #       "ProfileMappingKey" => "ProfileMappingValue"
    #     },
    #     change_description: "ChangeDescription"
    #   }
    #   options = {}
    #   response = client.update_data_transformation_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     profile_id: "ProfileIdString", # required
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     target_format: "FHIR_R4" # One of: ["FHIR_R4"], # required
    #     profile_name: "ProfileNameString",
    #     last_updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateDataTransformationProfileResponse]
    def update_data_transformation_profile(params = {}, options = {})
      request = build_request(:update_data_transformation_profile, params)
      request.send_request(options)
    end

    # <p>Update the properties of a FHIR-enabled data store.</p>
    # @param [Hash, Types::UpdateFHIRDatastoreRequest] params
    # @option params [String] :datastore_id
    #   <p>The data store identifier.</p>
    # @option params [String] :datastore_name
    #   <p>The data store name.</p>
    # @option params [Types::AnalyticsConfiguration] :analytics_configuration
    #   <p>The analytics configuration for the data store.</p>
    # @option params [Types::NlpConfiguration] :nlp_configuration
    #   <p>The natural language processing (NLP) configuration for the data store.</p>
    # @option params [Types::ProfileConfiguration] :profile_configuration
    #   <p>The profile configuration for the data store.</p>
    # @option params [Types::IdentityProviderConfiguration] :identity_provider_configuration
    #   <p>The identity provider configuration for the data store.</p>
    # @option params [Types::BackupConfiguration] :backup_configuration
    #   The backup configuration for the data store.
    # @example Update a data store's name and configuration
    #   # Example operation for update_fhir_datastore
    #   params = {
    #     datastore_id: "datastore-id",
    #     datastore_name: "RenamedFhirDatastore",
    #     nlp_configuration: {
    #       status: ENABLED
    #     },
    #     analytics_configuration: {
    #       status: DISABLED
    #     },
    #     profile_configuration: {
    #       default_profiles: [
    #         "us-core-3.1.1",
    #         "carin-bb-2.0.0"
    #       ]
    #     },
    #     identity_provider_configuration: {
    #       authorization_strategy: SMART_ON_FHIR_V1,
    #       fine_grained_authorization_enabled: true
    #     }
    #   }
    #   options = {}
    #   response = client.update_fhir_datastore(params, options)
    #   response.to_h #=>
    #   {
    #     datastore_properties: {
    #       datastore_id: "datastore-id",
    #       datastore_arn: "arn:aws:healthlake:us-east-1:123456789012:datastore/datastore-id",
    #       datastore_name: "RenamedFhirDatastore",
    #       datastore_status: UPDATING,
    #       datastore_type_version: R4,
    #       datastore_endpoint: "https://healthlake.us-east-1.amazonaws.com/datastore/datastore-id/r4/",
    #       nlp_configuration: {
    #         status: ENABLING
    #       },
    #       analytics_configuration: {
    #         status: PAUSING
    #       },
    #       profile_configuration: {
    #         default_profiles: [
    #           "us-core-3.1.1",
    #           "carin-bb-2.0.0"
    #         ]
    #       },
    #       identity_provider_configuration: {
    #         authorization_strategy: SMART_ON_FHIR_V1,
    #         fine_grained_authorization_enabled: true
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     datastore_id: "DatastoreId", # required
    #     datastore_name: "DatastoreName",
    #     analytics_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"]
    #     },
    #     nlp_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #     },
    #     profile_configuration: {
    #       default_profiles: ["HealthLakeString"]
    #     },
    #     identity_provider_configuration: {
    #       authorization_strategy: "SMART_ON_FHIR_V1" # One of: ["SMART_ON_FHIR_V1", "SMART_ON_FHIR", "AWS_AUTH"], # required
    #       fine_grained_authorization_enabled: false,
    #       metadata: "ConfigurationMetadata",
    #       idp_lambda_arn: "LambdaArn"
    #     },
    #     backup_configuration: {
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       backup_type: "CONTINUOUS" # One of: ["CONTINUOUS"],
    #       retention_period_in_days: 1,
    #       backup_tags_enabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_fhir_datastore(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     datastore_properties: { # required
    #       datastore_id: "DatastoreId", # required
    #       datastore_arn: "DatastoreArn", # required
    #       datastore_name: "DatastoreName",
    #       datastore_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED"], # required
    #       created_at: Time.now,
    #       datastore_type_version: "R4" # One of: ["R4"], # required
    #       datastore_endpoint: "HealthLakeString", # required
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
    #       },
    #       nlp_configuration: {
    #         status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #       },
    #       analytics_configuration: {
    #         status: "ENABLED" # One of: ["ENABLED", "ENABLING", "DISABLED", "DISABLING", "PAUSING", "PAUSED"]
    #       },
    #       profile_configuration: {
    #         default_profiles: ["HealthLakeString"]
    #       },
    #       backup_status_info: {
    #         configuration: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           backup_type: "CONTINUOUS" # One of: ["CONTINUOUS"],
    #           retention_period_in_days: 1,
    #           backup_tags_enabled: false
    #         },
    #         backup_enabled_at: Time.now,
    #         earliest_restore_point: Time.now,
    #         latest_restore_point: Time.now,
    #         scheduled_permanent_deletion_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::UpdateFHIRDatastoreResponse]
    def update_fhir_datastore(params = {}, options = {})
      request = build_request(:update_fhir_datastore, params)
      request.send_request(options)
    end

    # <p>Updates a data transformation profile using chat-based interaction with an agent. Supports multi-turn conversations for iteratively customizing profiles.</p>
    # @param [Hash, Types::UpdateProfileWithAgentRequest] params
    # @option params [String] :profile_id
    #   <p>The unique identifier of the profile to update via the agent.</p>
    # @option params [String] :source_format
    #   <p>The source data format for the transformation.</p>
    # @option params [Types::AgentInputMessage] :input_message
    #   <p>The message to send to the agent.</p>
    # @option params [String] :conversation_id
    #   <p>The conversation identifier for multi-turn interactions. Omit to start a new conversation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     profile_id: "ProfileIdString", # required
    #     source_format: "CCDA" # One of: ["CCDA", "CSV"], # required
    #     input_message: { # required
    #       body: "AgentMessageString", # required
    #       type: "normal" # One of: ["normal", "confirmation_response"], # required
    #     },
    #     conversation_id: "ConversationIdString"
    #   }
    #   options = {}
    #   response = client.update_profile_with_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_response: { # required
    #       body: "AgentMessageString", # required
    #       type: "INITIAL_GREETING" # One of: ["INITIAL_GREETING", "normal", "confirmation", "complete", "error", "options", "choices"], # required
    #       options_list: ["DataTransformationChatOptionString"]
    #     },
    #     conversation_id: "ConversationIdString", # required
    #   }
    # @return [Types::UpdateProfileWithAgentResponse]
    def update_profile_with_agent(params = {}, options = {})
      request = build_request(:update_profile_with_agent, params)
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
        data_transformation_job_completed: Waiters::DataTransformationJobCompleted,
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
