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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:comprehendmedical)

module Aws::ComprehendMedical
  # An API client for Aws::ComprehendMedical.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ComprehendMedical20181030
    @identifier = :comprehendmedical

    add_plugin(::Aws::ComprehendMedical::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ComprehendMedical::EndpointProvider)
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

    # <p>Gets the properties associated with a medical entities detection job. Use this operation
    #       to get the status of a detection job.</p>
    # @param [Hash, Types::DescribeEntitiesDetectionV2JobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The
    #           <code>StartEntitiesDetectionV2Job</code> operation returns this identifier in its
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_entities_detection_v2_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties: {
    #       job_id: "JobId",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       expiration_time: Time.now,
    #       input_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       output_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       language_code: "en" # One of: ["en"],
    #       data_access_role_arn: "IamRoleArn",
    #       manifest_file_path: "ManifestFilePath",
    #       kms_key: "KMSKey",
    #       model_version: "ModelVersion"
    #     }
    #   }
    # @return [Types::DescribeEntitiesDetectionV2JobResponse]
    def describe_entities_detection_v2_job(params = {}, options = {})
      request = build_request(:describe_entities_detection_v2_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with an InferICD10CM job. Use this operation to get the
    #       status of an inference job.</p>
    # @param [Hash, Types::DescribeICD10CMInferenceJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. <code>The
    #           StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_icd10_cm_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties: {
    #       job_id: "JobId",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       expiration_time: Time.now,
    #       input_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       output_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       language_code: "en" # One of: ["en"],
    #       data_access_role_arn: "IamRoleArn",
    #       manifest_file_path: "ManifestFilePath",
    #       kms_key: "KMSKey",
    #       model_version: "ModelVersion"
    #     }
    #   }
    # @return [Types::DescribeICD10CMInferenceJobResponse]
    def describe_icd10_cm_inference_job(params = {}, options = {})
      request = build_request(:describe_icd10_cm_inference_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a protected health information (PHI) detection job.
    #       Use this operation to get the status of a detection job.</p>
    # @param [Hash, Types::DescribePHIDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The <code>StartPHIDetectionJob</code>
    #         operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_phi_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties: {
    #       job_id: "JobId",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       expiration_time: Time.now,
    #       input_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       output_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       language_code: "en" # One of: ["en"],
    #       data_access_role_arn: "IamRoleArn",
    #       manifest_file_path: "ManifestFilePath",
    #       kms_key: "KMSKey",
    #       model_version: "ModelVersion"
    #     }
    #   }
    # @return [Types::DescribePHIDetectionJobResponse]
    def describe_phi_detection_job(params = {}, options = {})
      request = build_request(:describe_phi_detection_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with an InferRxNorm job. Use this operation to get the
    #       status of an inference job.</p>
    # @param [Hash, Types::DescribeRxNormInferenceJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The
    #         StartRxNormInferenceJob operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_rx_norm_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties: {
    #       job_id: "JobId",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       expiration_time: Time.now,
    #       input_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       output_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       language_code: "en" # One of: ["en"],
    #       data_access_role_arn: "IamRoleArn",
    #       manifest_file_path: "ManifestFilePath",
    #       kms_key: "KMSKey",
    #       model_version: "ModelVersion"
    #     }
    #   }
    # @return [Types::DescribeRxNormInferenceJobResponse]
    def describe_rx_norm_inference_job(params = {}, options = {})
      request = build_request(:describe_rx_norm_inference_job, params)
      request.send_request(options)
    end

    # <p>
    #       Gets the properties associated with an InferSNOMEDCT job. Use this operation to get the status of an inference job.
    #     </p>
    # @param [Hash, Types::DescribeSNOMEDCTInferenceJobRequest] params
    # @option params [String] :job_id
    #   <p>
    #         The identifier that Amazon Comprehend Medical generated for the job. The StartSNOMEDCTInferenceJob operation returns this identifier in its response.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_snomedct_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties: {
    #       job_id: "JobId",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       expiration_time: Time.now,
    #       input_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       output_data_config: {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key"
    #       },
    #       language_code: "en" # One of: ["en"],
    #       data_access_role_arn: "IamRoleArn",
    #       manifest_file_path: "ManifestFilePath",
    #       kms_key: "KMSKey",
    #       model_version: "ModelVersion"
    #     }
    #   }
    # @return [Types::DescribeSNOMEDCTInferenceJobResponse]
    def describe_snomedct_inference_job(params = {}, options = {})
      request = build_request(:describe_snomedct_inference_job, params)
      request.send_request(options)
    end

    # <p>The <code>DetectEntities</code> operation is deprecated. You should use the <a>DetectEntitiesV2</a> operation instead.</p>
    #          <p>Inspects the clinical text for a variety of medical entities and returns specific
    #       information about them such as entity category, location, and confidence score on that
    #       information.</p>
    # @param [Hash, Types::DetectEntitiesRequest] params
    # @option params [String] :text
    #   <p> A UTF-8 text string containing the clinical content being examined for entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "BoundedLengthString", # required
    #   }
    #   options = {}
    #   response = client.detect_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         id: 1,
    #         begin_offset: 1,
    #         end_offset: 1,
    #         score: 1.0,
    #         text: "String",
    #         category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #         type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #         traits: [
    #           {
    #             name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #             score: 1.0
    #           }
    #         ],
    #         attributes: [
    #           {
    #             type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #             score: 1.0,
    #             relationship_score: 1.0,
    #             relationship_type: "EVERY" # One of: ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE", "AMOUNT", "USAGE", "QUALITY"],
    #             id: 1,
    #             begin_offset: 1,
    #             end_offset: 1,
    #             text: "String",
    #             category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #             traits: [
    #               {
    #                 name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #                 score: 1.0
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     unmapped_attributes: [
    #       {
    #         type: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #         attribute: {
    #           type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #           score: 1.0,
    #           relationship_score: 1.0,
    #           relationship_type: "EVERY" # One of: ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE", "AMOUNT", "USAGE", "QUALITY"],
    #           id: 1,
    #           begin_offset: 1,
    #           end_offset: 1,
    #           text: "String",
    #           category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #           traits: [
    #             {
    #               name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #               score: 1.0
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     pagination_token: "String",
    #     model_version: "String", # required
    #   }
    # @deprecated
    #   This operation is deprecated, use DetectEntitiesV2 instead.
    # @return [Types::DetectEntitiesResponse]
    def detect_entities(params = {}, options = {})
      request = build_request(:detect_entities, params)
      request.send_request(options)
    end

    # <p>Inspects the clinical text for a variety of medical entities and returns specific
    #       information about them such as entity category, location, and confidence score on that
    #       information. Amazon Comprehend Medical only detects medical entities in English language
    #       texts.</p>
    #          <p>The <code>DetectEntitiesV2</code> operation replaces the <a>DetectEntities</a>
    #       operation. This new action uses a different model for determining the entities in your medical
    #       text and changes the way that some entities are returned in the output. You should use the
    #         <code>DetectEntitiesV2</code> operation in all new applications.</p>
    #       
    #          <p>The <code>DetectEntitiesV2</code> operation returns the <code>Acuity</code> and
    #         <code>Direction</code> entities as attributes instead of types. </p>
    # @param [Hash, Types::DetectEntitiesV2Request] params
    # @option params [String] :text
    #   <p>A UTF-8 string containing the clinical content being examined for entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "BoundedLengthString", # required
    #   }
    #   options = {}
    #   response = client.detect_entities_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         id: 1,
    #         begin_offset: 1,
    #         end_offset: 1,
    #         score: 1.0,
    #         text: "String",
    #         category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #         type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #         traits: [
    #           {
    #             name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #             score: 1.0
    #           }
    #         ],
    #         attributes: [
    #           {
    #             type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #             score: 1.0,
    #             relationship_score: 1.0,
    #             relationship_type: "EVERY" # One of: ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE", "AMOUNT", "USAGE", "QUALITY"],
    #             id: 1,
    #             begin_offset: 1,
    #             end_offset: 1,
    #             text: "String",
    #             category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #             traits: [
    #               {
    #                 name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #                 score: 1.0
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     unmapped_attributes: [
    #       {
    #         type: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #         attribute: {
    #           type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #           score: 1.0,
    #           relationship_score: 1.0,
    #           relationship_type: "EVERY" # One of: ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE", "AMOUNT", "USAGE", "QUALITY"],
    #           id: 1,
    #           begin_offset: 1,
    #           end_offset: 1,
    #           text: "String",
    #           category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #           traits: [
    #             {
    #               name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #               score: 1.0
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     pagination_token: "String",
    #     model_version: "String", # required
    #   }
    # @return [Types::DetectEntitiesV2Response]
    def detect_entities_v2(params = {}, options = {})
      request = build_request(:detect_entities_v2, params)
      request.send_request(options)
    end

    # <p>Inspects the clinical text for protected health information (PHI) entities and returns
    #       the entity category, location, and confidence score for each entity. Amazon Comprehend Medical
    #       only detects entities in English language texts.</p>
    # @param [Hash, Types::DetectPHIRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string containing the clinical content being examined for PHI entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "BoundedLengthString", # required
    #   }
    #   options = {}
    #   response = client.detect_phi(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         id: 1,
    #         begin_offset: 1,
    #         end_offset: 1,
    #         score: 1.0,
    #         text: "String",
    #         category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #         type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #         traits: [
    #           {
    #             name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #             score: 1.0
    #           }
    #         ],
    #         attributes: [
    #           {
    #             type: "NAME" # One of: ["NAME", "DX_NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "PHONE_OR_FAX", "EMAIL", "IDENTIFIER", "ID", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME", "AMOUNT", "GENDER", "RACE_ETHNICITY", "ALLERGIES", "TOBACCO_USE", "ALCOHOL_CONSUMPTION", "REC_DRUG_USE"],
    #             score: 1.0,
    #             relationship_score: 1.0,
    #             relationship_type: "EVERY" # One of: ["EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "TEST_UNIT", "DIRECTION", "SYSTEM_ORGAN_SITE", "AMOUNT", "USAGE", "QUALITY"],
    #             id: 1,
    #             begin_offset: 1,
    #             end_offset: 1,
    #             text: "String",
    #             category: "MEDICATION" # One of: ["MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION", "BEHAVIORAL_ENVIRONMENTAL_SOCIAL"],
    #             traits: [
    #               {
    #                 name: "SIGN" # One of: ["SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #                 score: 1.0
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     pagination_token: "String",
    #     model_version: "String", # required
    #   }
    # @return [Types::DetectPHIResponse]
    def detect_phi(params = {}, options = {})
      request = build_request(:detect_phi, params)
      request.send_request(options)
    end

    # <p>InferICD10CM detects medical conditions as entities listed in a patient record and links
    #       those entities to normalized concept identifiers in the ICD-10-CM knowledge base from the
    #       Centers for Disease Control. Amazon Comprehend Medical only detects medical entities in
    #       English language texts.  </p>
    # @param [Hash, Types::InferICD10CMRequest] params
    # @option params [String] :text
    #   <p>The input text used for analysis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "OntologyLinkingBoundedLengthString", # required
    #   }
    #   options = {}
    #   response = client.infer_icd10_cm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         id: 1,
    #         text: "OntologyLinkingBoundedLengthString",
    #         category: "MEDICAL_CONDITION" # One of: ["MEDICAL_CONDITION"],
    #         type: "DX_NAME" # One of: ["DX_NAME", "TIME_EXPRESSION"],
    #         score: 1.0,
    #         begin_offset: 1,
    #         end_offset: 1,
    #         attributes: [
    #           {
    #             type: "ACUITY" # One of: ["ACUITY", "DIRECTION", "SYSTEM_ORGAN_SITE", "QUALITY", "QUANTITY", "TIME_TO_DX_NAME", "TIME_EXPRESSION"],
    #             score: 1.0,
    #             relationship_score: 1.0,
    #             id: 1,
    #             begin_offset: 1,
    #             end_offset: 1,
    #             text: "String",
    #             traits: [
    #               {
    #                 name: "NEGATION" # One of: ["NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE"],
    #                 score: 1.0
    #               }
    #             ],
    #             category: "DX_NAME" # One of: ["DX_NAME", "TIME_EXPRESSION"],
    #             relationship_type: "OVERLAP" # One of: ["OVERLAP", "SYSTEM_ORGAN_SITE", "QUALITY"]
    #           }
    #         ],
    #         traits: [
    #           {
    #             name: "NEGATION" # One of: ["NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE"],
    #             score: 1.0
    #           }
    #         ],
    #         icd10_cm_concepts: [
    #           {
    #             description: "String",
    #             code: "String",
    #             score: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     pagination_token: "String",
    #     model_version: "String"
    #   }
    # @return [Types::InferICD10CMResponse]
    def infer_icd10_cm(params = {}, options = {})
      request = build_request(:infer_icd10_cm, params)
      request.send_request(options)
    end

    # <p>InferRxNorm detects medications as entities listed in a patient record and links to the
    #       normalized concept identifiers in the RxNorm database from the National Library of Medicine.
    #       Amazon Comprehend Medical only detects medical entities in English language texts.  </p>
    # @param [Hash, Types::InferRxNormRequest] params
    # @option params [String] :text
    #   <p>The input text used for analysis.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "OntologyLinkingBoundedLengthString", # required
    #   }
    #   options = {}
    #   response = client.infer_rx_norm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         id: 1,
    #         text: "OntologyLinkingBoundedLengthString",
    #         category: "MEDICATION" # One of: ["MEDICATION"],
    #         type: "BRAND_NAME" # One of: ["BRAND_NAME", "GENERIC_NAME"],
    #         score: 1.0,
    #         begin_offset: 1,
    #         end_offset: 1,
    #         attributes: [
    #           {
    #             type: "DOSAGE" # One of: ["DOSAGE", "DURATION", "FORM", "FREQUENCY", "RATE", "ROUTE_OR_MODE", "STRENGTH"],
    #             score: 1.0,
    #             relationship_score: 1.0,
    #             id: 1,
    #             begin_offset: 1,
    #             end_offset: 1,
    #             text: "String",
    #             traits: [
    #               {
    #                 name: "NEGATION" # One of: ["NEGATION", "PAST_HISTORY"],
    #                 score: 1.0
    #               }
    #             ]
    #           }
    #         ],
    #         traits: [
    #           {
    #             name: "NEGATION" # One of: ["NEGATION", "PAST_HISTORY"],
    #             score: 1.0
    #           }
    #         ],
    #         rx_norm_concepts: [
    #           {
    #             description: "String",
    #             code: "String",
    #             score: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     pagination_token: "String",
    #     model_version: "String"
    #   }
    # @return [Types::InferRxNormResponse]
    def infer_rx_norm(params = {}, options = {})
      request = build_request(:infer_rx_norm, params)
      request.send_request(options)
    end

    # <p>
    #       InferSNOMEDCT detects possible medical concepts as entities and links them to codes from the Systematized Nomenclature of Medicine, Clinical Terms (SNOMED-CT) ontology</p>
    # @param [Hash, Types::InferSNOMEDCTRequest] params
    # @option params [String] :text
    #   <p>The input text to be analyzed using InferSNOMEDCT.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "OntologyLinkingBoundedLengthString", # required
    #   }
    #   options = {}
    #   response = client.infer_snomedct(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [ # required
    #       {
    #         id: 1,
    #         text: "OntologyLinkingBoundedLengthString",
    #         category: "MEDICAL_CONDITION" # One of: ["MEDICAL_CONDITION", "ANATOMY", "TEST_TREATMENT_PROCEDURE"],
    #         type: "DX_NAME" # One of: ["DX_NAME", "TEST_NAME", "PROCEDURE_NAME", "TREATMENT_NAME"],
    #         score: 1.0,
    #         begin_offset: 1,
    #         end_offset: 1,
    #         attributes: [
    #           {
    #             category: "MEDICAL_CONDITION" # One of: ["MEDICAL_CONDITION", "ANATOMY", "TEST_TREATMENT_PROCEDURE"],
    #             type: "ACUITY" # One of: ["ACUITY", "QUALITY", "DIRECTION", "SYSTEM_ORGAN_SITE", "TEST_VALUE", "TEST_UNIT"],
    #             score: 1.0,
    #             relationship_score: 1.0,
    #             relationship_type: "ACUITY" # One of: ["ACUITY", "QUALITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE", "TEST_UNIT"],
    #             id: 1,
    #             begin_offset: 1,
    #             end_offset: 1,
    #             text: "String",
    #             traits: [
    #               {
    #                 name: "NEGATION" # One of: ["NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #                 score: 1.0
    #               }
    #             ],
    #             snomedct_concepts: [
    #               {
    #                 description: "String",
    #                 code: "String",
    #                 score: 1.0
    #               }
    #             ]
    #           }
    #         ],
    #         traits: [
    #           {
    #             name: "NEGATION" # One of: ["NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM", "PERTAINS_TO_FAMILY", "HYPOTHETICAL", "LOW_CONFIDENCE", "PAST_HISTORY", "FUTURE"],
    #             score: 1.0
    #           }
    #         ],
    #         snomedct_concepts: [
    #           {
    #             description: "String",
    #             code: "String",
    #             score: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     pagination_token: "String",
    #     model_version: "String",
    #     snomedct_details: {
    #       edition: "String",
    #       language: "String",
    #       version_date: "String"
    #     },
    #     characters: {
    #       original_text_characters: 1
    #     }
    #   }
    # @return [Types::InferSNOMEDCTResponse]
    def infer_snomedct(params = {}, options = {})
      request = build_request(:infer_snomedct, params)
      request.send_request(options)
    end

    # <p>Gets a list of medical entity detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListEntitiesDetectionV2JobsRequest] params
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entities_detection_v2_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         expiration_time: Time.now,
    #         input_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         output_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         language_code: "en" # One of: ["en"],
    #         data_access_role_arn: "IamRoleArn",
    #         manifest_file_path: "ManifestFilePath",
    #         kms_key: "KMSKey",
    #         model_version: "ModelVersion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntitiesDetectionV2JobsResponse]
    def list_entities_detection_v2_jobs(params = {}, options = {})
      request = build_request(:list_entities_detection_v2_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of InferICD10CM jobs that you have submitted.</p>
    # @param [Hash, Types::ListICD10CMInferenceJobsRequest] params
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_icd10_cm_inference_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         expiration_time: Time.now,
    #         input_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         output_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         language_code: "en" # One of: ["en"],
    #         data_access_role_arn: "IamRoleArn",
    #         manifest_file_path: "ManifestFilePath",
    #         kms_key: "KMSKey",
    #         model_version: "ModelVersion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListICD10CMInferenceJobsResponse]
    def list_icd10_cm_inference_jobs(params = {}, options = {})
      request = build_request(:list_icd10_cm_inference_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of protected health information (PHI) detection jobs you have
    #       submitted.</p>
    # @param [Hash, Types::ListPHIDetectionJobsRequest] params
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_phi_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         expiration_time: Time.now,
    #         input_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         output_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         language_code: "en" # One of: ["en"],
    #         data_access_role_arn: "IamRoleArn",
    #         manifest_file_path: "ManifestFilePath",
    #         kms_key: "KMSKey",
    #         model_version: "ModelVersion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPHIDetectionJobsResponse]
    def list_phi_detection_jobs(params = {}, options = {})
      request = build_request(:list_phi_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of InferRxNorm jobs that you have submitted.</p>
    # @param [Hash, Types::ListRxNormInferenceJobsRequest] params
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>Identifies the next page of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rx_norm_inference_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         expiration_time: Time.now,
    #         input_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         output_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         language_code: "en" # One of: ["en"],
    #         data_access_role_arn: "IamRoleArn",
    #         manifest_file_path: "ManifestFilePath",
    #         kms_key: "KMSKey",
    #         model_version: "ModelVersion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListRxNormInferenceJobsResponse]
    def list_rx_norm_inference_jobs(params = {}, options = {})
      request = build_request(:list_rx_norm_inference_jobs, params)
      request.send_request(options)
    end

    # <p>
    #       Gets a list of InferSNOMEDCT jobs a user has submitted.
    #     </p>
    # @param [Hash, Types::ListSNOMEDCTInferenceJobsRequest] params
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   <p>Provides information for filtering a list of detection jobs.</p>
    # @option params [String] :next_token
    #   <p>
    #         Identifies the next page of InferSNOMEDCT results to return.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to return in each page. The default is 100.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_snomedct_inference_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     comprehend_medical_async_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         expiration_time: Time.now,
    #         input_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         output_data_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key"
    #         },
    #         language_code: "en" # One of: ["en"],
    #         data_access_role_arn: "IamRoleArn",
    #         manifest_file_path: "ManifestFilePath",
    #         kms_key: "KMSKey",
    #         model_version: "ModelVersion"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSNOMEDCTInferenceJobsResponse]
    def list_snomedct_inference_jobs(params = {}, options = {})
      request = build_request(:list_snomedct_inference_jobs, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous medical entity detection job for a collection of documents. Use the
    #         <code>DescribeEntitiesDetectionV2Job</code> operation to track the status of a job.</p>
    # @param [Hash, Types::StartEntitiesDetectionV2JobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input configuration that specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>The output configuration that specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med">Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical
    #         generates one for you.</p>
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language. Amazon Comprehend Medical processes files in US English (en).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en" # One of: ["en"], # required
    #   }
    #   options = {}
    #   response = client.start_entities_detection_v2_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartEntitiesDetectionV2JobResponse]
    def start_entities_detection_v2_job(params = {}, options = {})
      request = build_request(:start_entities_detection_v2_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous job to detect medical conditions and link them to the ICD-10-CM
    #       ontology. Use the <code>DescribeICD10CMInferenceJob</code> operation to track the status of a
    #       job.</p>
    # @param [Hash, Types::StartICD10CMInferenceJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en" # One of: ["en"], # required
    #   }
    #   options = {}
    #   response = client.start_icd10_cm_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartICD10CMInferenceJobResponse]
    def start_icd10_cm_inference_job(params = {}, options = {})
      request = build_request(:start_icd10_cm_inference_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous job to detect protected health information (PHI). Use the
    #         <code>DescribePHIDetectionJob</code> operation to track the status of a job.</p>
    # @param [Hash, Types::StartPHIDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical
    #         generates one.</p>
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en" # One of: ["en"], # required
    #   }
    #   options = {}
    #   response = client.start_phi_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartPHIDetectionJobResponse]
    def start_phi_detection_job(params = {}, options = {})
      request = build_request(:start_phi_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous job to detect medication entities and link them to the RxNorm
    #       ontology. Use the <code>DescribeRxNormInferenceJob</code> operation to track the status of a
    #       job.</p>
    # @param [Hash, Types::StartRxNormInferenceJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical
    #         generates one.</p>
    # @option params [String] :kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en" # One of: ["en"], # required
    #   }
    #   options = {}
    #   response = client.start_rx_norm_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartRxNormInferenceJobResponse]
    def start_rx_norm_inference_job(params = {}, options = {})
      request = build_request(:start_rx_norm_inference_job, params)
      request.send_request(options)
    end

    # <p>
    #       Starts an asynchronous job to detect medical concepts and link them to the SNOMED-CT ontology. Use the DescribeSNOMEDCTInferenceJob operation to track the status of a job.
    #     </p>
    # @param [Hash, Types::StartSNOMEDCTInferenceJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input properties for an entities detection job. This includes the name of the S3
    #         bucket and the path to the files to be analyzed. </p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>The output properties for a detection job.</p>
    # @option params [String] :data_access_role_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. 
    #       </p>
    # @option params [String] :job_name
    #   <p>
    #         The user generated name the asynchronous InferSNOMEDCT job.
    #       </p>
    # @option params [String] :client_request_token
    #   <p>
    #         A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.
    #       </p>
    # @option params [String] :kms_key
    #   <p>
    #         An AWS Key Management Service key used to encrypt your output files. If you do not specify a key, the files are written in plain text.
    #       </p>
    # @option params [String] :language_code
    #   <p>
    #         The language of the input documents. All documents must be in the same language.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en" # One of: ["en"], # required
    #   }
    #   options = {}
    #   response = client.start_snomedct_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartSNOMEDCTInferenceJobResponse]
    def start_snomedct_inference_job(params = {}, options = {})
      request = build_request(:start_snomedct_inference_job, params)
      request.send_request(options)
    end

    # <p>Stops a medical entities detection job in progress.</p>
    # @param [Hash, Types::StopEntitiesDetectionV2JobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the medical entities job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_entities_detection_v2_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StopEntitiesDetectionV2JobResponse]
    def stop_entities_detection_v2_job(params = {}, options = {})
      request = build_request(:stop_entities_detection_v2_job, params)
      request.send_request(options)
    end

    # <p>Stops an InferICD10CM inference job in progress.</p>
    # @param [Hash, Types::StopICD10CMInferenceJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_icd10_cm_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StopICD10CMInferenceJobResponse]
    def stop_icd10_cm_inference_job(params = {}, options = {})
      request = build_request(:stop_icd10_cm_inference_job, params)
      request.send_request(options)
    end

    # <p>Stops a protected health information (PHI) detection job in progress.</p>
    # @param [Hash, Types::StopPHIDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the PHI detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_phi_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StopPHIDetectionJobResponse]
    def stop_phi_detection_job(params = {}, options = {})
      request = build_request(:stop_phi_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops an InferRxNorm inference job in progress.</p>
    # @param [Hash, Types::StopRxNormInferenceJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_rx_norm_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StopRxNormInferenceJobResponse]
    def stop_rx_norm_inference_job(params = {}, options = {})
      request = build_request(:stop_rx_norm_inference_job, params)
      request.send_request(options)
    end

    # <p>
    #       Stops an InferSNOMEDCT inference job in progress.
    #     </p>
    # @param [Hash, Types::StopSNOMEDCTInferenceJobRequest] params
    # @option params [String] :job_id
    #   <p>
    #         The job id of the asynchronous InferSNOMEDCT job to be stopped.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_snomedct_inference_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StopSNOMEDCTInferenceJobResponse]
    def stop_snomedct_inference_job(params = {}, options = {})
      request = build_request(:stop_snomedct_inference_job, params)
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
      context[:gem_name] = 'aws-sdk-comprehendmedical'
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
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
