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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bedrockdataautomation)

module Aws::BedrockDataAutomation
  # An API client for Aws::BedrockDataAutomation.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonBedrockKeystoneBuildTimeService
    @identifier = :bedrockdataautomation

    add_plugin(::Aws::BedrockDataAutomation::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockDataAutomation::EndpointProvider)
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

    # Copies a Blueprint from one stage to another
    # @param [Hash, Types::CopyBlueprintStageRequest] params
    # @option params [String] :blueprint_arn
    #   Blueprint to be copied
    # @option params [String] :source_stage
    #   Source stage to copy from
    # @option params [String] :target_stage
    #   Target stage to copy to
    # @option params [String] :client_token
    #   Client token for idempotency
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_arn: "BlueprintArn", # required
    #     source_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"], # required
    #     target_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.copy_blueprint_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CopyBlueprintStageResponse]
    def copy_blueprint_stage(params = {}, options = {})
      request = build_request(:copy_blueprint_stage, params)
      request.send_request(options)
    end

    # Creates an Amazon Bedrock Data Automation Blueprint
    # @param [Hash, Types::CreateBlueprintRequest] params
    # @option params [String] :blueprint_name
    #   Name of the Blueprint
    # @option params [String] :type
    #   Type
    # @option params [String] :blueprint_stage
    #   Stage of the Blueprint
    # @option params [String] :schema
    #   Schema of the blueprint
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_name: "BlueprintName", # required
    #     type: "DOCUMENT" # One of: ["DOCUMENT", "IMAGE", "AUDIO", "VIDEO"], # required
    #     blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     schema: "BlueprintSchema", # required
    #     client_token: "ClientToken",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprint: { # required
    #       blueprint_arn: "BlueprintArn", # required
    #       schema: "BlueprintSchema", # required
    #       type: "DOCUMENT" # One of: ["DOCUMENT", "IMAGE", "AUDIO", "VIDEO"], # required
    #       creation_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       blueprint_name: "BlueprintName", # required
    #       blueprint_version: "BlueprintVersion",
    #       blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #       kms_key_id: "KmsKeyId",
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       optimization_samples: [
    #         {
    #           asset_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           },
    #           ground_truth_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           }
    #         }
    #       ],
    #       optimization_time: Time.now
    #     }
    #   }
    # @return [Types::CreateBlueprintResponse]
    def create_blueprint(params = {}, options = {})
      request = build_request(:create_blueprint, params)
      request.send_request(options)
    end

    # Creates a new version of an existing Amazon Bedrock Data Automation Blueprint
    # @param [Hash, Types::CreateBlueprintVersionRequest] params
    # @option params [String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_arn: "BlueprintArn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_blueprint_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprint: { # required
    #       blueprint_arn: "BlueprintArn", # required
    #       schema: "BlueprintSchema", # required
    #       type: "DOCUMENT" # One of: ["DOCUMENT", "IMAGE", "AUDIO", "VIDEO"], # required
    #       creation_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       blueprint_name: "BlueprintName", # required
    #       blueprint_version: "BlueprintVersion",
    #       blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #       kms_key_id: "KmsKeyId",
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       optimization_samples: [
    #         {
    #           asset_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           },
    #           ground_truth_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           }
    #         }
    #       ],
    #       optimization_time: Time.now
    #     }
    #   }
    # @return [Types::CreateBlueprintVersionResponse]
    def create_blueprint_version(params = {}, options = {})
      request = build_request(:create_blueprint_version, params)
      request.send_request(options)
    end

    # Creates an Amazon Bedrock Data Automation Library
    # @param [Hash, Types::CreateDataAutomationLibraryRequest] params
    # @option params [String] :library_name
    #   Name of the DataAutomationLibrary
    # @option params [String] :library_description
    #   Description of the DataAutomationLibrary
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    # @example Request syntax with placeholder values
    #   params = {
    #     library_name: "DataAutomationLibraryName", # required
    #     library_description: "DataAutomationLibraryDescription",
    #     client_token: "ClientToken",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_automation_library(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_arn: "DataAutomationLibraryArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #   }
    # @return [Types::CreateDataAutomationLibraryResponse]
    def create_data_automation_library(params = {}, options = {})
      request = build_request(:create_data_automation_library, params)
      request.send_request(options)
    end

    # Creates an Amazon Bedrock Data Automation Project
    # @param [Hash, Types::CreateDataAutomationProjectRequest] params
    # @option params [String] :project_name
    #   Name of the DataAutomationProject
    # @option params [String] :project_description
    #   Description of the DataAutomationProject
    # @option params [String] :project_stage
    #   Stage of the Project
    # @option params [String] :project_type
    #   Type of the DataAutomationProject
    # @option params [Types::StandardOutputConfiguration] :standard_output_configuration
    #   Standard output configuration
    # @option params [Types::CustomOutputConfiguration] :custom_output_configuration
    #   Custom output configuration
    # @option params [Types::OverrideConfiguration] :override_configuration
    #   Override configuration
    # @option params [Types::DataAutomationLibraryConfiguration] :data_automation_library_configuration
    #   DataAutomation Library configuration
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    # @example Request syntax with placeholder values
    #   params = {
    #     project_name: "DataAutomationProjectName", # required
    #     project_description: "DataAutomationProjectDescription",
    #     project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     project_type: "ASYNC" # One of: ["ASYNC", "SYNC"],
    #     standard_output_configuration: { # required
    #       document: {
    #         extraction: {
    #           granularity: { # required
    #             types: ["DOCUMENT" # One of: ["DOCUMENT", "PAGE", "ELEMENT", "WORD", "LINE"]]
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         },
    #         output_format: {
    #           text_format: { # required
    #             types: ["PLAIN_TEXT" # One of: ["PLAIN_TEXT", "MARKDOWN", "HTML", "CSV"]]
    #           },
    #           additional_file_format: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         }
    #       },
    #       image: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "TEXT_DETECTION", "LOGOS"]]
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           types: ["IMAGE_SUMMARY" # One of: ["IMAGE_SUMMARY", "IAB"]]
    #         }
    #       },
    #       video: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "TEXT_DETECTION", "TRANSCRIPT", "LOGOS"]]
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           types: ["VIDEO_SUMMARY" # One of: ["VIDEO_SUMMARY", "IAB", "CHAPTER_SUMMARY"]]
    #         }
    #       },
    #       audio: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["AUDIO_CONTENT_MODERATION" # One of: ["AUDIO_CONTENT_MODERATION", "TRANSCRIPT", "TOPIC_CONTENT_MODERATION"]],
    #             type_configuration: {
    #               transcript: {
    #                 speaker_labeling: {
    #                   state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                 },
    #                 channel_labeling: {
    #                   state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           types: ["AUDIO_SUMMARY" # One of: ["AUDIO_SUMMARY", "IAB", "TOPIC_SUMMARY"]]
    #         }
    #       }
    #     },
    #     custom_output_configuration: {
    #       blueprints: [
    #         {
    #           blueprint_arn: "BlueprintArn", # required
    #           blueprint_version: "BlueprintVersion",
    #           blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #         }
    #       ],
    #       document: {
    #         fallback_blueprints: [
    #           {
    #             blueprint_arn: "BlueprintArn", # required
    #             blueprint_version: "BlueprintVersion",
    #             blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #           }
    #         ]
    #       }
    #     },
    #     override_configuration: {
    #       document: {
    #         splitter: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       image: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       video: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       audio: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         language_configuration: {
    #           input_languages: ["EN" # One of: ["EN", "DE", "ES", "FR", "IT", "PT", "JA", "KO", "CN", "TW", "HK"]],
    #           generative_output_language: "DEFAULT" # One of: ["DEFAULT", "EN"],
    #           identify_multiple_languages: false
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       modality_routing: {
    #         jpeg: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         png: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mp4: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mov: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"]
    #       }
    #     },
    #     data_automation_library_configuration: {
    #       libraries: [
    #         {
    #           library_arn: "DataAutomationLibraryArn", # required
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken",
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_data_automation_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_arn: "DataAutomationProjectArn", # required
    #     project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED"]
    #   }
    # @return [Types::CreateDataAutomationProjectResponse]
    def create_data_automation_project(params = {}, options = {})
      request = build_request(:create_data_automation_project, params)
      request.send_request(options)
    end

    # Deletes an existing Amazon Bedrock Data Automation Blueprint
    # @param [Hash, Types::DeleteBlueprintRequest] params
    # @option params [String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    # @option params [String] :blueprint_version
    #   Optional field to delete a specific Blueprint version
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_arn: "BlueprintArn", # required
    #     blueprint_version: "BlueprintVersion"
    #   }
    #   options = {}
    #   response = client.delete_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBlueprintResponse]
    def delete_blueprint(params = {}, options = {})
      request = build_request(:delete_blueprint, params)
      request.send_request(options)
    end

    # Deletes an existing Amazon Bedrock Data Automation Library
    # @param [Hash, Types::DeleteDataAutomationLibraryRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #   }
    #   options = {}
    #   response = client.delete_data_automation_library(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_arn: "DataAutomationLibraryArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #   }
    # @return [Types::DeleteDataAutomationLibraryResponse]
    def delete_data_automation_library(params = {}, options = {})
      request = build_request(:delete_data_automation_library, params)
      request.send_request(options)
    end

    # Deletes an existing Amazon Bedrock Data Automation Project
    # @param [Hash, Types::DeleteDataAutomationProjectRequest] params
    # @option params [String] :project_arn
    #   ARN generated at the server side when a DataAutomationProject is created
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DataAutomationProjectArn", # required
    #   }
    #   options = {}
    #   response = client.delete_data_automation_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_arn: "DataAutomationProjectArn", # required
    #     status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED"]
    #   }
    # @return [Types::DeleteDataAutomationProjectResponse]
    def delete_data_automation_project(params = {}, options = {})
      request = build_request(:delete_data_automation_project, params)
      request.send_request(options)
    end

    # Gets an existing Amazon Bedrock Data Automation Blueprint
    # @param [Hash, Types::GetBlueprintRequest] params
    # @option params [String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    # @option params [String] :blueprint_version
    #   Optional field to get a specific Blueprint version
    # @option params [String] :blueprint_stage
    #   Optional field to get a specific Blueprint stage
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_arn: "BlueprintArn", # required
    #     blueprint_version: "BlueprintVersion",
    #     blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #   }
    #   options = {}
    #   response = client.get_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprint: { # required
    #       blueprint_arn: "BlueprintArn", # required
    #       schema: "BlueprintSchema", # required
    #       type: "DOCUMENT" # One of: ["DOCUMENT", "IMAGE", "AUDIO", "VIDEO"], # required
    #       creation_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       blueprint_name: "BlueprintName", # required
    #       blueprint_version: "BlueprintVersion",
    #       blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #       kms_key_id: "KmsKeyId",
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       optimization_samples: [
    #         {
    #           asset_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           },
    #           ground_truth_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           }
    #         }
    #       ],
    #       optimization_time: Time.now
    #     }
    #   }
    # @return [Types::GetBlueprintResponse]
    def get_blueprint(params = {}, options = {})
      request = build_request(:get_blueprint, params)
      request.send_request(options)
    end

    # API used to get blueprint optimization status.
    # @param [Hash, Types::GetBlueprintOptimizationStatusRequest] params
    # @option params [String] :invocation_arn
    #   Invocation arn.
    # @example Request syntax with placeholder values
    #   params = {
    #     invocation_arn: "BlueprintOptimizationInvocationArn", # required
    #   }
    #   options = {}
    #   response = client.get_blueprint_optimization_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Created" # One of: ["Created", "InProgress", "Success", "ServiceError", "ClientError"],
    #     error_type: "String",
    #     error_message: "String",
    #     output_configuration: {
    #       s3_object: { # required
    #         s3_uri: "S3Uri", # required
    #         version: "S3ObjectVersion"
    #       }
    #     }
    #   }
    # @return [Types::GetBlueprintOptimizationStatusResponse]
    def get_blueprint_optimization_status(params = {}, options = {})
      request = build_request(:get_blueprint_optimization_status, params)
      request.send_request(options)
    end

    # Gets an existing Amazon Bedrock Data Automation Library
    # @param [Hash, Types::GetDataAutomationLibraryRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #   }
    #   options = {}
    #   response = client.get_data_automation_library(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library: {
    #       library_arn: "DataAutomationLibraryArn", # required
    #       creation_time: Time.now, # required
    #       library_name: "DataAutomationLibraryName", # required
    #       library_description: "DataAutomationLibraryDescription",
    #       status: "ACTIVE" # One of: ["ACTIVE", "DELETING"], # required
    #       entity_types: [
    #         {
    #           entity_type: "VOCABULARY" # One of: ["VOCABULARY"], # required
    #           entity_metadata: "EntityMetadata"
    #         }
    #       ],
    #       kms_key_id: "KmsKeyId",
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDataAutomationLibraryResponse]
    def get_data_automation_library(params = {}, options = {})
      request = build_request(:get_data_automation_library, params)
      request.send_request(options)
    end

    # Gets an existing entity based on entity type from the library
    # @param [Hash, Types::GetDataAutomationLibraryEntityRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @option params [String] :entity_type
    #   The entity type for which the entity is requested
    # @option params [String] :entity_id
    #   Unique identifier for the entity
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #     entity_type: "VOCABULARY" # One of: ["VOCABULARY"], # required
    #     entity_id: "EntityId", # required
    #   }
    #   options = {}
    #   response = client.get_data_automation_library_entity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity: {
    #       # One of:
    #       vocabulary: {
    #         entity_id: "EntityId",
    #         description: "EntityDescription",
    #         language: "EN" # One of: ["EN", "DE", "ES", "FR", "IT", "PT", "JA", "KO", "CN", "TW", "HK"],
    #         phrases: [
    #           {
    #             text: "PhraseText", # required
    #             display_as_text: "PhraseDisplayAsText"
    #           }
    #         ],
    #         last_modified_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::GetDataAutomationLibraryEntityResponse]
    def get_data_automation_library_entity(params = {}, options = {})
      request = build_request(:get_data_automation_library_entity, params)
      request.send_request(options)
    end

    # API used to get status of data automation library ingestion job
    # @param [Hash, Types::GetDataAutomationLibraryIngestionJobRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @option params [String] :job_arn
    #   ARN of the DataAutomationLibraryIngestionJob
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #     job_arn: "DataAutomationLibraryIngestionJobArn", # required
    #   }
    #   options = {}
    #   response = client.get_data_automation_library_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_arn: "DataAutomationLibraryIngestionJobArn", # required
    #       creation_time: Time.now, # required
    #       entity_type: "VOCABULARY" # One of: ["VOCABULARY"], # required
    #       operation_type: "UPSERT" # One of: ["UPSERT", "DELETE"], # required
    #       job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"], # required
    #       output_configuration: { # required
    #         s3_uri: "S3Uri", # required
    #       },
    #       completion_time: Time.now,
    #       error_message: "String",
    #       error_type: "String"
    #     }
    #   }
    # @return [Types::GetDataAutomationLibraryIngestionJobResponse]
    def get_data_automation_library_ingestion_job(params = {}, options = {})
      request = build_request(:get_data_automation_library_ingestion_job, params)
      request.send_request(options)
    end

    # Gets an existing Amazon Bedrock Data Automation Project
    # @param [Hash, Types::GetDataAutomationProjectRequest] params
    # @option params [String] :project_arn
    #   ARN generated at the server side when a DataAutomationProject is created
    # @option params [String] :project_stage
    #   Optional field to delete a specific DataAutomationProject stage
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DataAutomationProjectArn", # required
    #     project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #   }
    #   options = {}
    #   response = client.get_data_automation_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: { # required
    #       project_arn: "DataAutomationProjectArn", # required
    #       creation_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       project_name: "DataAutomationProjectName", # required
    #       project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #       project_type: "ASYNC" # One of: ["ASYNC", "SYNC"],
    #       project_description: "DataAutomationProjectDescription",
    #       standard_output_configuration: {
    #         document: {
    #           extraction: {
    #             granularity: { # required
    #               types: ["DOCUMENT" # One of: ["DOCUMENT", "PAGE", "ELEMENT", "WORD", "LINE"]]
    #             },
    #             bounding_box: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             }
    #           },
    #           generative_field: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           },
    #           output_format: {
    #             text_format: { # required
    #               types: ["PLAIN_TEXT" # One of: ["PLAIN_TEXT", "MARKDOWN", "HTML", "CSV"]]
    #             },
    #             additional_file_format: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             }
    #           }
    #         },
    #         image: {
    #           extraction: {
    #             category: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               types: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "TEXT_DETECTION", "LOGOS"]]
    #             },
    #             bounding_box: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             }
    #           },
    #           generative_field: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["IMAGE_SUMMARY" # One of: ["IMAGE_SUMMARY", "IAB"]]
    #           }
    #         },
    #         video: {
    #           extraction: {
    #             category: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               types: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "TEXT_DETECTION", "TRANSCRIPT", "LOGOS"]]
    #             },
    #             bounding_box: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             }
    #           },
    #           generative_field: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["VIDEO_SUMMARY" # One of: ["VIDEO_SUMMARY", "IAB", "CHAPTER_SUMMARY"]]
    #           }
    #         },
    #         audio: {
    #           extraction: {
    #             category: { # required
    #               state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #               types: ["AUDIO_CONTENT_MODERATION" # One of: ["AUDIO_CONTENT_MODERATION", "TRANSCRIPT", "TOPIC_CONTENT_MODERATION"]],
    #               type_configuration: {
    #                 transcript: {
    #                   speaker_labeling: {
    #                     state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                   },
    #                   channel_labeling: {
    #                     state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                   }
    #                 }
    #               }
    #             }
    #           },
    #           generative_field: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["AUDIO_SUMMARY" # One of: ["AUDIO_SUMMARY", "IAB", "TOPIC_SUMMARY"]]
    #           }
    #         }
    #       },
    #       custom_output_configuration: {
    #         blueprints: [
    #           {
    #             blueprint_arn: "BlueprintArn", # required
    #             blueprint_version: "BlueprintVersion",
    #             blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #           }
    #         ],
    #         document: {
    #           fallback_blueprints: [
    #             {
    #               blueprint_arn: "BlueprintArn", # required
    #               blueprint_version: "BlueprintVersion",
    #               blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #             }
    #           ]
    #         }
    #       },
    #       override_configuration: {
    #         document: {
    #           splitter: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           sensitive_data_configuration: {
    #             detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #             detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #             pii_entities_configuration: {
    #               pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #               redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #             }
    #           }
    #         },
    #         image: {
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           sensitive_data_configuration: {
    #             detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #             detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #             pii_entities_configuration: {
    #               pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #               redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #             }
    #           }
    #         },
    #         video: {
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           sensitive_data_configuration: {
    #             detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #             detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #             pii_entities_configuration: {
    #               pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #               redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #             }
    #           }
    #         },
    #         audio: {
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           language_configuration: {
    #             input_languages: ["EN" # One of: ["EN", "DE", "ES", "FR", "IT", "PT", "JA", "KO", "CN", "TW", "HK"]],
    #             generative_output_language: "DEFAULT" # One of: ["DEFAULT", "EN"],
    #             identify_multiple_languages: false
    #           },
    #           sensitive_data_configuration: {
    #             detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #             detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #             pii_entities_configuration: {
    #               pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #               redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #             }
    #           }
    #         },
    #         modality_routing: {
    #           jpeg: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #           png: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #           mp4: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #           mov: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"]
    #         }
    #       },
    #       data_automation_library_configuration: {
    #         libraries: [
    #           {
    #             library_arn: "DataAutomationLibraryArn", # required
    #           }
    #         ]
    #       },
    #       status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED"], # required
    #       kms_key_id: "KmsKeyId",
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     }
    #   }
    # @return [Types::GetDataAutomationProjectResponse]
    def get_data_automation_project(params = {}, options = {})
      request = build_request(:get_data_automation_project, params)
      request.send_request(options)
    end

    # Invoke an async job to perform Blueprint Optimization
    # @param [Hash, Types::InvokeBlueprintOptimizationAsyncRequest] params
    # @option params [Types::BlueprintOptimizationObject] :blueprint
    #   Blueprint to be optimized
    # @option params [Array<Types::BlueprintOptimizationSample>] :samples
    #   List of Blueprint Optimization Samples
    # @option params [Types::BlueprintOptimizationOutputConfiguration] :output_configuration
    #   Output configuration where the results should be placed
    # @option params [String] :data_automation_profile_arn
    #   Data automation profile ARN
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Encryption configuration.
    # @option params [Array<Types::Tag>] :tags
    #   List of tags.
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint: { # required
    #       blueprint_arn: "BlueprintArn", # required
    #       stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #     },
    #     samples: [ # required
    #       {
    #         asset_s3_object: { # required
    #           s3_uri: "S3Uri", # required
    #           version: "S3ObjectVersion"
    #         },
    #         ground_truth_s3_object: { # required
    #           s3_uri: "S3Uri", # required
    #           version: "S3ObjectVersion"
    #         }
    #       }
    #     ],
    #     output_configuration: { # required
    #       s3_object: { # required
    #         s3_uri: "S3Uri", # required
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     data_automation_profile_arn: "DataAutomationProfileArn", # required
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.invoke_blueprint_optimization_async(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     invocation_arn: "BlueprintOptimizationInvocationArn", # required
    #   }
    # @return [Types::InvokeBlueprintOptimizationAsyncResponse]
    def invoke_blueprint_optimization_async(params = {}, options = {})
      request = build_request(:invoke_blueprint_optimization_async, params)
      request.send_request(options)
    end

    # Async API: Invoke data automation library ingestion job
    # @param [Hash, Types::InvokeDataAutomationLibraryIngestionJobRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @option params [String] :client_token
    #   Idempotency token
    # @option params [Types::InputConfiguration] :input_configuration
    #   Input configuration of DataAutomationLibraryIngestionJob request
    # @option params [String] :entity_type
    #   The entity type for which DataAutomationLibraryIngestionJob is being run
    # @option params [String] :operation_type
    #   The operation to be performed by DataAutomationLibraryIngestionJob
    # @option params [Types::OutputConfiguration] :output_configuration
    #   Output configuration of DataAutomationLibraryIngestionJob
    # @option params [Types::NotificationConfiguration] :notification_configuration
    #   Notification configuration.
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #     client_token: "ClientToken",
    #     input_configuration: { # required
    #       s3_object: {
    #         s3_uri: "S3Uri", # required
    #         version: "S3ObjectVersion"
    #       },
    #       inline_payload: {
    #         # One of:
    #         upsert_entities_info: [{
    #           # One of:
    #           vocabulary: {
    #             entity_id: "EntityId",
    #             description: "EntityDescription",
    #             language: "EN" # One of: ["EN", "DE", "ES", "FR", "IT", "PT", "JA", "KO", "CN", "TW", "HK"], # required
    #             phrases: [ # required
    #               {
    #                 text: "PhraseText", # required
    #                 display_as_text: "PhraseDisplayAsText"
    #               }
    #             ]
    #           }
    #         }],
    #         delete_entities_info: {
    #           entity_ids: ["EntityId"], # required
    #         }
    #       }
    #     },
    #     entity_type: "VOCABULARY" # One of: ["VOCABULARY"], # required
    #     operation_type: "UPSERT" # One of: ["UPSERT", "DELETE"], # required
    #     output_configuration: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     notification_configuration: {
    #       event_bridge_configuration: { # required
    #         event_bridge_enabled: false, # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.invoke_data_automation_library_ingestion_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "DataAutomationLibraryIngestionJobArn"
    #   }
    # @return [Types::InvokeDataAutomationLibraryIngestionJobResponse]
    def invoke_data_automation_library_ingestion_job(params = {}, options = {})
      request = build_request(:invoke_data_automation_library_ingestion_job, params)
      request.send_request(options)
    end

    # Lists all existing Amazon Bedrock Data Automation Blueprints
    # @param [Hash, Types::ListBlueprintsRequest] params
    # @option params [String] :blueprint_arn
    #   ARN of a Blueprint
    # @option params [String] :resource_owner
    #   Resource Owner
    # @option params [String] :blueprint_stage_filter
    #   Blueprint Stage filter
    # @option params [Integer] :max_results
    #   Max Results
    # @option params [String] :next_token
    #   Pagination token
    # @option params [Types::DataAutomationProjectFilter] :project_filter
    #   Data Automation Project Filter
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_arn: "BlueprintArn",
    #     resource_owner: "SERVICE" # One of: ["SERVICE", "ACCOUNT"],
    #     blueprint_stage_filter: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE", "ALL"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_filter: {
    #       project_arn: "DataAutomationProjectArn", # required
    #       project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_blueprints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprints: [ # required
    #       {
    #         blueprint_arn: "BlueprintArn", # required
    #         blueprint_version: "BlueprintVersion",
    #         blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #         blueprint_name: "BlueprintName",
    #         creation_time: Time.now, # required
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBlueprintsResponse]
    def list_blueprints(params = {}, options = {})
      request = build_request(:list_blueprints, params)
      request.send_request(options)
    end

    # Lists all existing Amazon Bedrock Data Automation Libraries
    # @param [Hash, Types::ListDataAutomationLibrariesRequest] params
    # @option params [Integer] :max_results
    #   Max Results
    # @option params [String] :next_token
    #   Pagination token
    # @option params [Types::DataAutomationProjectFilter] :project_filter
    #   Data Automation Project Filter
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_filter: {
    #       project_arn: "DataAutomationProjectArn", # required
    #       project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #     }
    #   }
    #   options = {}
    #   response = client.list_data_automation_libraries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     libraries: [
    #       {
    #         library_arn: "DataAutomationLibraryArn", # required
    #         library_name: "DataAutomationLibraryName",
    #         creation_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataAutomationLibrariesResponse]
    def list_data_automation_libraries(params = {}, options = {})
      request = build_request(:list_data_automation_libraries, params)
      request.send_request(options)
    end

    # Lists all stored entities in the library
    # @param [Hash, Types::ListDataAutomationLibraryEntitiesRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @option params [String] :entity_type
    #   The entity type for which the entity list is requested
    # @option params [Integer] :max_results
    #   Max Results
    # @option params [String] :next_token
    #   Pagination token for retrieving the next set of results
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #     entity_type: "VOCABULARY" # One of: ["VOCABULARY"], # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_data_automation_library_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [{
    #       # One of:
    #       vocabulary: {
    #         entity_id: "EntityId",
    #         description: "EntityDescription",
    #         language: "EN" # One of: ["EN", "DE", "ES", "FR", "IT", "PT", "JA", "KO", "CN", "TW", "HK"],
    #         num_of_phrases: 1,
    #         last_modified_time: Time.now
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataAutomationLibraryEntitiesResponse]
    def list_data_automation_library_entities(params = {}, options = {})
      request = build_request(:list_data_automation_library_entities, params)
      request.send_request(options)
    end

    # Lists all data automation library ingestion jobs
    # @param [Hash, Types::ListDataAutomationLibraryIngestionJobsRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @option params [Integer] :max_results
    #   Max Results
    # @option params [String] :next_token
    #   Pagination token for retrieving the next set of results
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_data_automation_library_ingestion_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_arn: "DataAutomationLibraryIngestionJobArn", # required
    #         job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"], # required
    #         entity_type: "VOCABULARY" # One of: ["VOCABULARY"], # required
    #         operation_type: "UPSERT" # One of: ["UPSERT", "DELETE"], # required
    #         creation_time: Time.now, # required
    #         completion_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataAutomationLibraryIngestionJobsResponse]
    def list_data_automation_library_ingestion_jobs(params = {}, options = {})
      request = build_request(:list_data_automation_library_ingestion_jobs, params)
      request.send_request(options)
    end

    # Lists all existing Amazon Bedrock Data Automation Projects
    # @param [Hash, Types::ListDataAutomationProjectsRequest] params
    # @option params [Integer] :max_results
    #   Max Results
    # @option params [String] :next_token
    #   Pagination token
    # @option params [String] :project_stage_filter
    #   Project Stage filter
    # @option params [Types::BlueprintFilter] :blueprint_filter
    #   Blueprint Filter
    # @option params [String] :resource_owner
    #   Resource Owner
    # @option params [Types::DataAutomationLibraryFilter] :library_filter
    #   Data Automation Library Filter
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project_stage_filter: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE", "ALL"],
    #     blueprint_filter: {
    #       blueprint_arn: "BlueprintArn", # required
    #       blueprint_version: "BlueprintVersion",
    #       blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #     },
    #     resource_owner: "SERVICE" # One of: ["SERVICE", "ACCOUNT"],
    #     library_filter: {
    #       library_arn: "DataAutomationLibraryArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.list_data_automation_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     projects: [ # required
    #       {
    #         project_arn: "DataAutomationProjectArn", # required
    #         project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #         project_type: "ASYNC" # One of: ["ASYNC", "SYNC"],
    #         project_name: "DataAutomationProjectName",
    #         creation_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataAutomationProjectsResponse]
    def list_data_automation_projects(params = {}, options = {})
      request = build_request(:list_data_automation_projects, params)
      request.send_request(options)
    end

    # List tags for an Amazon Bedrock Data Automation resource
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   ARN of a taggable resource
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # Tag an Amazon Bedrock Data Automation resource
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   ARN of a taggable resource
    # @option params [Array<Types::Tag>] :tags
    #   List of tags
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # Untag an Amazon Bedrock Data Automation resource
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   ARN of a taggable resource
    # @option params [Array<String>] :tag_keys
    #   List of tag keys
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # Updates an existing Amazon Bedrock Data Automation Blueprint
    # @param [Hash, Types::UpdateBlueprintRequest] params
    # @option params [String] :blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    # @option params [String] :schema
    #   Schema of the blueprint
    # @option params [String] :blueprint_stage
    #   Stage of the Blueprint
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_arn: "BlueprintArn", # required
    #     schema: "BlueprintSchema", # required
    #     blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprint: { # required
    #       blueprint_arn: "BlueprintArn", # required
    #       schema: "BlueprintSchema", # required
    #       type: "DOCUMENT" # One of: ["DOCUMENT", "IMAGE", "AUDIO", "VIDEO"], # required
    #       creation_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       blueprint_name: "BlueprintName", # required
    #       blueprint_version: "BlueprintVersion",
    #       blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #       kms_key_id: "KmsKeyId",
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       },
    #       optimization_samples: [
    #         {
    #           asset_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           },
    #           ground_truth_s3_object: { # required
    #             s3_uri: "S3Uri", # required
    #             version: "S3ObjectVersion"
    #           }
    #         }
    #       ],
    #       optimization_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateBlueprintResponse]
    def update_blueprint(params = {}, options = {})
      request = build_request(:update_blueprint, params)
      request.send_request(options)
    end

    # Updates an existing Amazon Bedrock Data Automation Library
    # @param [Hash, Types::UpdateDataAutomationLibraryRequest] params
    # @option params [String] :library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    # @option params [String] :library_description
    #   Description of the DataAutomationLibrary
    # @option params [String] :client_token
    #   Client specified token used for idempotency checks
    # @example Request syntax with placeholder values
    #   params = {
    #     library_arn: "DataAutomationLibraryArn", # required
    #     library_description: "DataAutomationLibraryDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_data_automation_library(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     library_arn: "DataAutomationLibraryArn",
    #     status: "ACTIVE" # One of: ["ACTIVE", "DELETING"]
    #   }
    # @return [Types::UpdateDataAutomationLibraryResponse]
    def update_data_automation_library(params = {}, options = {})
      request = build_request(:update_data_automation_library, params)
      request.send_request(options)
    end

    # Updates an existing Amazon Bedrock Data Automation Project
    # @param [Hash, Types::UpdateDataAutomationProjectRequest] params
    # @option params [String] :project_arn
    #   ARN generated at the server side when a DataAutomationProject is created
    # @option params [String] :project_stage
    #   Stage of the Project
    # @option params [String] :project_description
    #   Description of the DataAutomationProject
    # @option params [Types::StandardOutputConfiguration] :standard_output_configuration
    #   Standard output configuration
    # @option params [Types::CustomOutputConfiguration] :custom_output_configuration
    #   Custom output configuration
    # @option params [Types::OverrideConfiguration] :override_configuration
    #   Override configuration
    # @option params [Types::DataAutomationLibraryConfiguration] :data_automation_library_configuration
    #   DataAutomation Library configuration
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   KMS Encryption Configuration
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DataAutomationProjectArn", # required
    #     project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     project_description: "DataAutomationProjectDescription",
    #     standard_output_configuration: { # required
    #       document: {
    #         extraction: {
    #           granularity: { # required
    #             types: ["DOCUMENT" # One of: ["DOCUMENT", "PAGE", "ELEMENT", "WORD", "LINE"]]
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         },
    #         output_format: {
    #           text_format: { # required
    #             types: ["PLAIN_TEXT" # One of: ["PLAIN_TEXT", "MARKDOWN", "HTML", "CSV"]]
    #           },
    #           additional_file_format: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         }
    #       },
    #       image: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "TEXT_DETECTION", "LOGOS"]]
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           types: ["IMAGE_SUMMARY" # One of: ["IMAGE_SUMMARY", "IAB"]]
    #         }
    #       },
    #       video: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["CONTENT_MODERATION" # One of: ["CONTENT_MODERATION", "TEXT_DETECTION", "TRANSCRIPT", "LOGOS"]]
    #           },
    #           bounding_box: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           types: ["VIDEO_SUMMARY" # One of: ["VIDEO_SUMMARY", "IAB", "CHAPTER_SUMMARY"]]
    #         }
    #       },
    #       audio: {
    #         extraction: {
    #           category: { # required
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #             types: ["AUDIO_CONTENT_MODERATION" # One of: ["AUDIO_CONTENT_MODERATION", "TRANSCRIPT", "TOPIC_CONTENT_MODERATION"]],
    #             type_configuration: {
    #               transcript: {
    #                 speaker_labeling: {
    #                   state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                 },
    #                 channel_labeling: {
    #                   state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         generative_field: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #           types: ["AUDIO_SUMMARY" # One of: ["AUDIO_SUMMARY", "IAB", "TOPIC_SUMMARY"]]
    #         }
    #       }
    #     },
    #     custom_output_configuration: {
    #       blueprints: [
    #         {
    #           blueprint_arn: "BlueprintArn", # required
    #           blueprint_version: "BlueprintVersion",
    #           blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #         }
    #       ],
    #       document: {
    #         fallback_blueprints: [
    #           {
    #             blueprint_arn: "BlueprintArn", # required
    #             blueprint_version: "BlueprintVersion",
    #             blueprint_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"]
    #           }
    #         ]
    #       }
    #     },
    #     override_configuration: {
    #       document: {
    #         splitter: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       image: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       video: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       audio: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         language_configuration: {
    #           input_languages: ["EN" # One of: ["EN", "DE", "ES", "FR", "IT", "PT", "JA", "KO", "CN", "TW", "HK"]],
    #           generative_output_language: "DEFAULT" # One of: ["DEFAULT", "EN"],
    #           identify_multiple_languages: false
    #         },
    #         sensitive_data_configuration: {
    #           detection_mode: "DETECTION" # One of: ["DETECTION", "DETECTION_AND_REDACTION"], # required
    #           detection_scope: ["STANDARD" # One of: ["STANDARD", "CUSTOM"]],
    #           pii_entities_configuration: {
    #             pii_entity_types: ["ALL" # One of: ["ALL", "ADDRESS", "AGE", "NAME", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "DRIVER_ID", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "PIN", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "IP_ADDRESS", "MAC_ADDRESS", "URL", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"]],
    #             redaction_mask_mode: "PII" # One of: ["PII", "ENTITY_TYPE"]
    #           }
    #         }
    #       },
    #       modality_routing: {
    #         jpeg: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         png: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mp4: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mov: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"]
    #       }
    #     },
    #     data_automation_library_configuration: {
    #       libraries: [
    #         {
    #           library_arn: "DataAutomationLibraryArn", # required
    #         }
    #       ]
    #     },
    #     encryption_configuration: {
    #       kms_key_id: "KmsKeyId", # required
    #       kms_encryption_context: {
    #         "EncryptionContextKey" => "EncryptionContextValue"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_data_automation_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project_arn: "DataAutomationProjectArn", # required
    #     project_stage: "DEVELOPMENT" # One of: ["DEVELOPMENT", "LIVE"],
    #     status: "COMPLETED" # One of: ["COMPLETED", "IN_PROGRESS", "FAILED"]
    #   }
    # @return [Types::UpdateDataAutomationProjectResponse]
    def update_data_automation_project(params = {}, options = {})
      request = build_request(:update_data_automation_project, params)
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
      context[:gem_name] = 'aws-sdk-bedrockdataautomation'
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
