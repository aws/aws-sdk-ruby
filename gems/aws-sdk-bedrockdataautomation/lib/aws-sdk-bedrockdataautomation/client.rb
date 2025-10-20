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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BedrockDataAutomation::EndpointProvider)
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
    #       }
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
    #       }
    #     }
    #   }
    # @return [Types::CreateBlueprintVersionResponse]
    def create_blueprint_version(params = {}, options = {})
      request = build_request(:create_blueprint_version, params)
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
    # @option params [Types::StandardOutputConfiguration] :standard_output_configuration
    #   Standard output configuration
    # @option params [Types::CustomOutputConfiguration] :custom_output_configuration
    #   Custom output configuration
    # @option params [Types::OverrideConfiguration] :override_configuration
    #   Override configuration
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
    #       ]
    #     },
    #     override_configuration: {
    #       document: {
    #         splitter: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       image: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       video: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       audio: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       modality_routing: {
    #         jpeg: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         png: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mp4: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mov: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"]
    #       }
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
    #       }
    #     }
    #   }
    # @return [Types::GetBlueprintResponse]
    def get_blueprint(params = {}, options = {})
      request = build_request(:get_blueprint, params)
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
    #         ]
    #       },
    #       override_configuration: {
    #         document: {
    #           splitter: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           },
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         image: {
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         video: {
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         audio: {
    #           modality_processing: {
    #             state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         modality_routing: {
    #           jpeg: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #           png: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #           mp4: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #           mov: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"]
    #         }
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
    #     resource_owner: "SERVICE" # One of: ["SERVICE", "ACCOUNT"]
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
    #       }
    #     }
    #   }
    # @return [Types::UpdateBlueprintResponse]
    def update_blueprint(params = {}, options = {})
      request = build_request(:update_blueprint, params)
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
    #       ]
    #     },
    #     override_configuration: {
    #       document: {
    #         splitter: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       image: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       video: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       audio: {
    #         modality_processing: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       modality_routing: {
    #         jpeg: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         png: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mp4: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"],
    #         mov: "IMAGE" # One of: ["IMAGE", "DOCUMENT", "AUDIO", "VIDEO"]
    #       }
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
    end
  end
end
