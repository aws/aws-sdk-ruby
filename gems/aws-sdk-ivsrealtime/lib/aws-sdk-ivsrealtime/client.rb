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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ivsrealtime)

module Aws::IVSRealTime
  # An API client for Aws::IVSRealTime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonInteractiveVideoServiceRealTime
    @identifier = :ivsrealtime

    add_plugin(::Aws::IVSRealTime::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IVSRealTime::EndpointProvider)
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

    # <p>Creates an EncoderConfiguration object.</p>
    # @param [Hash, Types::CreateEncoderConfigurationRequest] params
    # @option params [String] :name
    #   <p>Optional name to identify the resource.</p>
    # @option params [Types::Video] :video
    #   <p>Video configuration. Default: video resolution 1280x720, bitrate 2500 kbps, 30
    #            fps.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #            (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EncoderConfigurationName",
    #     video: {
    #       width: 1,
    #       height: 1,
    #       framerate: 1.0,
    #       bitrate: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_encoder_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encoder_configuration: {
    #       arn: "EncoderConfigurationArn", # required
    #       name: "EncoderConfigurationName",
    #       video: {
    #         width: 1,
    #         height: 1,
    #         framerate: 1.0,
    #         bitrate: 1
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateEncoderConfigurationResponse]
    def create_encoder_configuration(params = {}, options = {})
      request = build_request(:create_encoder_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new IngestConfiguration resource, used to specify the ingest protocol for a stage.</p>
    # @param [Hash, Types::CreateIngestConfigurationRequest] params
    # @option params [String] :name
    #   <p>Optional name that can be specified for the IngestConfiguration being created.</p>
    # @option params [String] :stage_arn
    #   <p>ARN of the stage with which the IngestConfiguration is associated.</p>
    # @option params [String] :user_id
    #   <p>Customer-assigned name to help identify the participant using the IngestConfiguration; this can be used to link a participant to a user in the customer’s own systems. This can be any UTF-8 encoded text.
    #         <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i>
    #            </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-provided attributes to store in the IngestConfiguration and attach to a stage. Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total.
    #         <i>This field is exposed to all stage participants and should not be used for personally identifying, confidential, or sensitive information.</i>
    #            </p>
    # @option params [String] :ingest_protocol
    #   <p>Type of ingest protocol that the user employs to broadcast. If this is set to <code>RTMP</code>, <code>insecureIngest</code> must be set to <code>true</code>.</p>
    # @option params [Boolean] :insecure_ingest
    #   <p>Whether the stage allows insecure RTMP ingest. This must be set to <code>true</code>, if <code>ingestProtocol</code> is set to <code>RTMP</code>. Default: <code>false</code>. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #            (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #   	 there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IngestConfigurationName",
    #     stage_arn: "IngestConfigurationStageArn",
    #     user_id: "UserId",
    #     attributes: {
    #       "String" => "String"
    #     },
    #     ingest_protocol: "RTMP" # One of: ["RTMP", "RTMPS"], # required
    #     insecure_ingest: false,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_ingest_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingest_configuration: {
    #       name: "IngestConfigurationName",
    #       arn: "IngestConfigurationArn", # required
    #       ingest_protocol: "RTMP" # One of: ["RTMP", "RTMPS"], # required
    #       stream_key: "StreamKey", # required
    #       stage_arn: "IngestConfigurationStageArn", # required
    #       participant_id: "ParticipantId", # required
    #       state: "IngestConfigurationState", # required
    #       user_id: "UserId",
    #       attributes: {
    #         "String" => "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateIngestConfigurationResponse]
    def create_ingest_configuration(params = {}, options = {})
      request = build_request(:create_ingest_configuration, params)
      request.send_request(options)
    end

    # <p>Creates an additional token for a specified stage. This can be done after stage creation
    #          or when tokens expire. Tokens always are scoped to the stage for which they are
    #          created.</p>
    #          <p>Encryption keys are owned by Amazon IVS and never used directly by your
    #          application.</p>
    # @param [Hash, Types::CreateParticipantTokenInput] params
    # @option params [String] :stage_arn
    #   <p>ARN of the stage to which this token is scoped.</p>
    # @option params [Integer] :duration
    #   <p>Duration (in minutes), after which the token expires. Default: 720 (12 hours).</p>
    # @option params [String] :user_id
    #   <p>Name that can be specified to help identify the token. This can be any UTF-8 encoded
    #            text. <i>This field is exposed to all stage participants and should not be used for
    #               personally identifying, confidential, or sensitive information.</i>
    #            </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-provided attributes to encode into the token and attach to a stage. Map keys
    #            and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total.
    #               <i>This field is exposed to all stage participants and should not be used for
    #               personally identifying, confidential, or sensitive information.</i>
    #            </p>
    # @option params [Array<String>] :capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the stage. Default:
    #               <code>PUBLISH, SUBSCRIBE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     duration: 1,
    #     user_id: "ParticipantTokenUserId",
    #     attributes: {
    #       "String" => "String"
    #     },
    #     capabilities: ["ParticipantTokenCapability"]
    #   }
    #   options = {}
    #   response = client.create_participant_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     participant_token: {
    #       participant_id: "ParticipantTokenId",
    #       token: "ParticipantTokenString",
    #       user_id: "ParticipantTokenUserId",
    #       attributes: {
    #         "String" => "String"
    #       },
    #       duration: 1,
    #       capabilities: ["ParticipantTokenCapability"],
    #       expiration_time: Time.now
    #     }
    #   }
    # @return [Types::CreateParticipantTokenOutput]
    def create_participant_token(params = {}, options = {})
      request = build_request(:create_participant_token, params)
      request.send_request(options)
    end

    # <p>Creates a new stage (and optionally participant tokens).</p>
    # @param [Hash, Types::CreateStageInput] params
    # @option params [String] :name
    #   <p>Optional name that can be specified for the stage being created.</p>
    # @option params [Array<Types::ParticipantTokenConfiguration>] :participant_token_configurations
    #   <p>Array of participant token configuration objects to attach to the new stage.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #            (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there. </p>
    # @option params [Types::AutoParticipantRecordingConfiguration] :auto_participant_recording_configuration
    #   <p>Configuration object for individual participant recording, to attach to the new stage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StageName",
    #     participant_token_configurations: [
    #       {
    #         duration: 1,
    #         user_id: "ParticipantTokenUserId",
    #         attributes: {
    #           "String" => "String"
    #         },
    #         capabilities: ["ParticipantTokenCapability"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     auto_participant_recording_configuration: {
    #       storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #       media_types: ["AUDIO_VIDEO" # One of: ["AUDIO_VIDEO", "AUDIO_ONLY", "NONE"]],
    #       thumbnail_configuration: {
    #         target_interval_seconds: 1,
    #         storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]],
    #         recording_mode: "INTERVAL" # One of: ["INTERVAL", "DISABLED"]
    #       },
    #       recording_reconnect_window_seconds: 1,
    #       hls_configuration: {
    #         target_segment_duration_seconds: 1
    #       },
    #       record_participant_replicas: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stage: {
    #       arn: "StageArn", # required
    #       name: "StageName",
    #       active_session_id: "StageSessionId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       auto_participant_recording_configuration: {
    #         storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #         media_types: ["AUDIO_VIDEO" # One of: ["AUDIO_VIDEO", "AUDIO_ONLY", "NONE"]],
    #         thumbnail_configuration: {
    #           target_interval_seconds: 1,
    #           storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]],
    #           recording_mode: "INTERVAL" # One of: ["INTERVAL", "DISABLED"]
    #         },
    #         recording_reconnect_window_seconds: 1,
    #         hls_configuration: {
    #           target_segment_duration_seconds: 1
    #         },
    #         record_participant_replicas: false
    #       },
    #       endpoints: {
    #         events: "StageEndpoint",
    #         whip: "StageEndpoint",
    #         rtmp: "StageEndpoint",
    #         rtmps: "StageEndpoint"
    #       }
    #     },
    #     participant_tokens: [
    #       {
    #         participant_id: "ParticipantTokenId",
    #         token: "ParticipantTokenString",
    #         user_id: "ParticipantTokenUserId",
    #         attributes: {
    #           "String" => "String"
    #         },
    #         duration: 1,
    #         capabilities: ["ParticipantTokenCapability"],
    #         expiration_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::CreateStageOutput]
    def create_stage(params = {}, options = {})
      request = build_request(:create_stage, params)
      request.send_request(options)
    end

    # <p>Creates a new storage configuration, used to enable recording to Amazon S3. 
    # 	  When a StorageConfiguration is created, IVS will modify the S3 bucketPolicy of the provided bucket. 
    # 	  This will ensure that IVS has sufficient permissions to write content to the provided bucket.</p>
    # @param [Hash, Types::CreateStorageConfigurationRequest] params
    # @option params [String] :name
    #   <p>Storage configuration name. The value does not need to be unique.</p>
    # @option params [Types::S3StorageConfiguration] :s3
    #   <p>A complex type that contains a storage configuration for where recorded video will be stored.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #            (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #   	 in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StorageConfigurationName",
    #     s3: { # required
    #       bucket_name: "S3BucketName", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_configuration: {
    #       arn: "StorageConfigurationArn", # required
    #       name: "StorageConfigurationName",
    #       s3: {
    #         bucket_name: "S3BucketName", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateStorageConfigurationResponse]
    def create_storage_configuration(params = {}, options = {})
      request = build_request(:create_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an EncoderConfiguration resource. Ensures that no Compositions are using this
    #          template; otherwise, returns an error.</p>
    # @param [Hash, Types::DeleteEncoderConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the EncoderConfiguration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EncoderConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_encoder_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEncoderConfigurationResponse]
    def delete_encoder_configuration(params = {}, options = {})
      request = build_request(:delete_encoder_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a specified IngestConfiguration, so it can no longer be used to broadcast. An IngestConfiguration cannot be deleted if the publisher is actively streaming to a stage, unless <code>force</code> is set to <code>true</code>.</p>
    # @param [Hash, Types::DeleteIngestConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the IngestConfiguration.</p>
    # @option params [Boolean] :force
    #   <p>Optional field to force deletion of the IngestConfiguration. If this is set to <code>true</code> when a participant is actively publishing, the participant is disconnected from the stage, followed by deletion of the IngestConfiguration. Default: <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "IngestConfigurationArn", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_ingest_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIngestConfigurationResponse]
    def delete_ingest_configuration(params = {}, options = {})
      request = build_request(:delete_ingest_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the specified public key used to sign stage participant tokens. 
    # 	  This invalidates future participant tokens generated using the key pair’s private key.
    # </p>
    # @param [Hash, Types::DeletePublicKeyRequest] params
    # @option params [String] :arn
    #   <p>ARN of the public key to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PublicKeyArn", # required
    #   }
    #   options = {}
    #   response = client.delete_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePublicKeyResponse]
    def delete_public_key(params = {}, options = {})
      request = build_request(:delete_public_key, params)
      request.send_request(options)
    end

    # <p>Shuts down and deletes the specified stage (disconnecting all participants). This operation also
    #             removes the <code>stageArn</code> from the associated <a>IngestConfiguration</a>, if there are participants
    # 	    using the IngestConfiguration to publish to the stage.</p>
    # @param [Hash, Types::DeleteStageInput] params
    # @option params [String] :arn
    #   <p>ARN of the stage to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StageArn", # required
    #   }
    #   options = {}
    #   response = client.delete_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStageOutput]
    def delete_stage(params = {}, options = {})
      request = build_request(:delete_stage, params)
      request.send_request(options)
    end

    # <p>Deletes the storage configuration for the specified ARN.</p>
    #          <p>If you try to delete a storage configuration that is used by a Composition, you will get an error (409 ConflictException). 
    # 	  To avoid this, for all Compositions that reference the storage configuration, first use <a>StopComposition</a> and wait for it to complete, 
    # 	  then use DeleteStorageConfiguration.</p>
    # @param [Hash, Types::DeleteStorageConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the storage configuration to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StorageConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.delete_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteStorageConfigurationResponse]
    def delete_storage_configuration(params = {}, options = {})
      request = build_request(:delete_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Disconnects a specified participant from a specified stage. If the participant is publishing using
    #             an <a>IngestConfiguration</a>, DisconnectParticipant also updates the <code>stageArn</code>
    # 	    in the IngestConfiguration to be an empty string.</p>
    # @param [Hash, Types::DisconnectParticipantInput] params
    # @option params [String] :stage_arn
    #   <p>ARN of the stage to which the participant is attached.</p>
    # @option params [String] :participant_id
    #   <p>Identifier of the participant to be disconnected. IVS assigns this; it is returned
    #               by <a>CreateParticipantToken</a> (for streams using WebRTC ingest) or <a>CreateIngestConfiguration</a> (for
    #   	    streams using RTMP ingest).</p>
    # @option params [String] :reason
    #   <p>Description of why this participant is being disconnected.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     participant_id: "ParticipantTokenId", # required
    #     reason: "DisconnectParticipantReason"
    #   }
    #   options = {}
    #   response = client.disconnect_participant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisconnectParticipantOutput]
    def disconnect_participant(params = {}, options = {})
      request = build_request(:disconnect_participant, params)
      request.send_request(options)
    end

    # <p>Get information about the specified Composition resource.</p>
    # @param [Hash, Types::GetCompositionRequest] params
    # @option params [String] :arn
    #   <p>ARN of the Composition resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "CompositionArn", # required
    #   }
    #   options = {}
    #   response = client.get_composition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     composition: {
    #       arn: "CompositionArn", # required
    #       stage_arn: "StageArn", # required
    #       state: "CompositionState", # required
    #       layout: { # required
    #         grid: {
    #           featured_participant_attribute: "AttributeKey",
    #           omit_stopped_video: false,
    #           video_aspect_ratio: "AUTO" # One of: ["AUTO", "VIDEO", "SQUARE", "PORTRAIT"],
    #           video_fill_mode: "FILL" # One of: ["FILL", "COVER", "CONTAIN"],
    #           grid_gap: 1,
    #           participant_order_attribute: "AttributeKey"
    #         },
    #         pip: {
    #           featured_participant_attribute: "AttributeKey",
    #           omit_stopped_video: false,
    #           video_fill_mode: "FILL" # One of: ["FILL", "COVER", "CONTAIN"],
    #           grid_gap: 1,
    #           pip_participant_attribute: "AttributeKey",
    #           pip_behavior: "STATIC" # One of: ["STATIC", "DYNAMIC"],
    #           pip_offset: 1,
    #           pip_position: "TOP_LEFT" # One of: ["TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT"],
    #           pip_width: 1,
    #           pip_height: 1,
    #           participant_order_attribute: "AttributeKey"
    #         }
    #       },
    #       destinations: [ # required
    #         {
    #           id: "String", # required
    #           state: "DestinationState", # required
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           configuration: { # required
    #             name: "DestinationConfigurationName",
    #             channel: {
    #               channel_arn: "ChannelArn", # required
    #               encoder_configuration_arn: "EncoderConfigurationArn"
    #             },
    #             s3: {
    #               storage_configuration_arn: "StorageConfigurationArn", # required
    #               encoder_configuration_arns: ["EncoderConfigurationArn"], # required
    #               recording_configuration: {
    #                 hls_configuration: {
    #                   target_segment_duration_seconds: 1
    #                 },
    #                 format: "RecordingConfigurationFormat"
    #               },
    #               thumbnail_configurations: [
    #                 {
    #                   target_interval_seconds: 1,
    #                   storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]]
    #                 }
    #               ]
    #             }
    #           },
    #           detail: {
    #             s3: {
    #               recording_prefix: "String", # required
    #             }
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::GetCompositionResponse]
    def get_composition(params = {}, options = {})
      request = build_request(:get_composition, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified EncoderConfiguration resource. </p>
    # @param [Hash, Types::GetEncoderConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the EncoderConfiguration resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "EncoderConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_encoder_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encoder_configuration: {
    #       arn: "EncoderConfigurationArn", # required
    #       name: "EncoderConfigurationName",
    #       video: {
    #         width: 1,
    #         height: 1,
    #         framerate: 1.0,
    #         bitrate: 1
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetEncoderConfigurationResponse]
    def get_encoder_configuration(params = {}, options = {})
      request = build_request(:get_encoder_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified IngestConfiguration.</p>
    # @param [Hash, Types::GetIngestConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the ingest for which the information is to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "IngestConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_ingest_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingest_configuration: {
    #       name: "IngestConfigurationName",
    #       arn: "IngestConfigurationArn", # required
    #       ingest_protocol: "RTMP" # One of: ["RTMP", "RTMPS"], # required
    #       stream_key: "StreamKey", # required
    #       stage_arn: "IngestConfigurationStageArn", # required
    #       participant_id: "ParticipantId", # required
    #       state: "IngestConfigurationState", # required
    #       user_id: "UserId",
    #       attributes: {
    #         "String" => "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetIngestConfigurationResponse]
    def get_ingest_configuration(params = {}, options = {})
      request = build_request(:get_ingest_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about the specified participant token.</p>
    # @param [Hash, Types::GetParticipantRequest] params
    # @option params [String] :stage_arn
    #   <p>Stage ARN.</p>
    # @option params [String] :session_id
    #   <p>ID of a session within the stage.</p>
    # @option params [String] :participant_id
    #   <p>Unique identifier for the participant. This is assigned by IVS and returned by <a>CreateParticipantToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #     participant_id: "ParticipantId", # required
    #   }
    #   options = {}
    #   response = client.get_participant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     participant: {
    #       participant_id: "ParticipantId",
    #       user_id: "UserId",
    #       state: "ParticipantState",
    #       first_join_time: Time.now,
    #       attributes: {
    #         "String" => "String"
    #       },
    #       published: false,
    #       isp_name: "ParticipantClientAttribute",
    #       os_name: "ParticipantClientAttribute",
    #       os_version: "ParticipantClientAttribute",
    #       browser_name: "ParticipantClientAttribute",
    #       browser_version: "ParticipantClientAttribute",
    #       sdk_version: "ParticipantClientAttribute",
    #       recording_s3_bucket_name: "ParticipantRecordingS3BucketName",
    #       recording_s3_prefix: "ParticipantRecordingS3Prefix",
    #       recording_state: "ParticipantRecordingState",
    #       protocol: "UNKNOWN" # One of: ["UNKNOWN", "WHIP", "RTMP", "RTMPS"],
    #       replication_type: "ReplicationType",
    #       replication_state: "ReplicationState",
    #       source_stage_arn: "StageArn",
    #       source_session_id: "StageSessionId"
    #     }
    #   }
    # @return [Types::GetParticipantResponse]
    def get_participant(params = {}, options = {})
      request = build_request(:get_participant, params)
      request.send_request(options)
    end

    # <p>Gets information for the specified public key.</p>
    # @param [Hash, Types::GetPublicKeyRequest] params
    # @option params [String] :arn
    #   <p>ARN of the public key for which the information is to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PublicKeyArn", # required
    #   }
    #   options = {}
    #   response = client.get_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key: {
    #       arn: "PublicKeyArn",
    #       name: "PublicKeyName",
    #       public_key_material: "PublicKeyMaterial",
    #       fingerprint: "PublicKeyFingerprint",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetPublicKeyResponse]
    def get_public_key(params = {}, options = {})
      request = build_request(:get_public_key, params)
      request.send_request(options)
    end

    # <p>Gets information for the specified stage.</p>
    # @param [Hash, Types::GetStageInput] params
    # @option params [String] :arn
    #   <p>ARN of the stage for which the information is to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StageArn", # required
    #   }
    #   options = {}
    #   response = client.get_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stage: {
    #       arn: "StageArn", # required
    #       name: "StageName",
    #       active_session_id: "StageSessionId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       auto_participant_recording_configuration: {
    #         storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #         media_types: ["AUDIO_VIDEO" # One of: ["AUDIO_VIDEO", "AUDIO_ONLY", "NONE"]],
    #         thumbnail_configuration: {
    #           target_interval_seconds: 1,
    #           storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]],
    #           recording_mode: "INTERVAL" # One of: ["INTERVAL", "DISABLED"]
    #         },
    #         recording_reconnect_window_seconds: 1,
    #         hls_configuration: {
    #           target_segment_duration_seconds: 1
    #         },
    #         record_participant_replicas: false
    #       },
    #       endpoints: {
    #         events: "StageEndpoint",
    #         whip: "StageEndpoint",
    #         rtmp: "StageEndpoint",
    #         rtmps: "StageEndpoint"
    #       }
    #     }
    #   }
    # @return [Types::GetStageOutput]
    def get_stage(params = {}, options = {})
      request = build_request(:get_stage, params)
      request.send_request(options)
    end

    # <p>Gets information for the specified stage session.</p>
    # @param [Hash, Types::GetStageSessionRequest] params
    # @option params [String] :stage_arn
    #   <p>ARN of the stage for which the information is to be retrieved.</p>
    # @option params [String] :session_id
    #   <p>ID of a session within the stage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #   }
    #   options = {}
    #   response = client.get_stage_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stage_session: {
    #       session_id: "StageSessionId",
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::GetStageSessionResponse]
    def get_stage_session(params = {}, options = {})
      request = build_request(:get_stage_session, params)
      request.send_request(options)
    end

    # <p>Gets the storage configuration for the specified ARN.</p>
    # @param [Hash, Types::GetStorageConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the storage configuration to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StorageConfigurationArn", # required
    #   }
    #   options = {}
    #   response = client.get_storage_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_configuration: {
    #       arn: "StorageConfigurationArn", # required
    #       name: "StorageConfigurationName",
    #       s3: {
    #         bucket_name: "S3BucketName", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetStorageConfigurationResponse]
    def get_storage_configuration(params = {}, options = {})
      request = build_request(:get_storage_configuration, params)
      request.send_request(options)
    end

    # <p>Import a public key to be used for signing stage participant tokens.</p>
    # @param [Hash, Types::ImportPublicKeyRequest] params
    # @option params [String] :public_key_material
    #   <p>The content of the public key to be imported.</p>
    # @option params [String] :name
    #   <p>Name of the public key to be imported.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #            (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     public_key_material: "PublicKeyMaterial", # required
    #     name: "PublicKeyName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.import_public_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_key: {
    #       arn: "PublicKeyArn",
    #       name: "PublicKeyName",
    #       public_key_material: "PublicKeyMaterial",
    #       fingerprint: "PublicKeyFingerprint",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::ImportPublicKeyResponse]
    def import_public_key(params = {}, options = {})
      request = build_request(:import_public_key, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all Compositions in your account, in the AWS region
    #          where the API request is processed. </p>
    # @param [Hash, Types::ListCompositionsRequest] params
    # @option params [String] :filter_by_stage_arn
    #   <p>Filters the Composition list to match the specified Stage ARN.</p>
    # @option params [String] :filter_by_encoder_configuration_arn
    #   <p>Filters the Composition list to match the specified EncoderConfiguration attached to at
    #            least one of its output.</p>
    # @option params [String] :next_token
    #   <p>The first Composition to retrieve. This is used for pagination; see the
    #            <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_by_stage_arn: "StageArn",
    #     filter_by_encoder_configuration_arn: "EncoderConfigurationArn",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_compositions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compositions: [ # required
    #       {
    #         arn: "CompositionArn", # required
    #         stage_arn: "StageArn", # required
    #         destinations: [ # required
    #           {
    #             id: "String", # required
    #             state: "DestinationState", # required
    #             start_time: Time.now,
    #             end_time: Time.now
    #           }
    #         ],
    #         state: "CompositionState", # required
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListCompositionsResponse]
    def list_compositions(params = {}, options = {})
      request = build_request(:list_compositions, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all EncoderConfigurations in your account, in the AWS
    #          region where the API request is processed.</p>
    # @param [Hash, Types::ListEncoderConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>The first encoder configuration to retrieve. This is used for pagination; see the
    #               <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_encoder_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     encoder_configurations: [ # required
    #       {
    #         arn: "EncoderConfigurationArn", # required
    #         name: "EncoderConfigurationName",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListEncoderConfigurationsResponse]
    def list_encoder_configurations(params = {}, options = {})
      request = build_request(:list_encoder_configurations, params)
      request.send_request(options)
    end

    # <p>Lists all IngestConfigurations in your account, in the AWS region where the API request is processed.</p>
    # @param [Hash, Types::ListIngestConfigurationsRequest] params
    # @option params [String] :filter_by_stage_arn
    #   <p>Filters the response list to match the specified stage ARN. Only one filter (by stage ARN or by state) can be used at a time.</p>
    # @option params [String] :filter_by_state
    #   <p>Filters the response list to match the specified state. Only one filter (by stage ARN or by state) can be used at a time.</p>
    # @option params [String] :next_token
    #   <p>The first IngestConfiguration to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter_by_stage_arn: "StageArn",
    #     filter_by_state: "IngestConfigurationState",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_ingest_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingest_configurations: [ # required
    #       {
    #         name: "IngestConfigurationName",
    #         arn: "IngestConfigurationArn", # required
    #         ingest_protocol: "RTMP" # One of: ["RTMP", "RTMPS"], # required
    #         stage_arn: "IngestConfigurationStageArn", # required
    #         participant_id: "ParticipantId", # required
    #         state: "IngestConfigurationState", # required
    #         user_id: "UserId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListIngestConfigurationsResponse]
    def list_ingest_configurations(params = {}, options = {})
      request = build_request(:list_ingest_configurations, params)
      request.send_request(options)
    end

    # <p>Lists events for a specified participant that occurred during a specified stage
    #          session.</p>
    # @param [Hash, Types::ListParticipantEventsRequest] params
    # @option params [String] :stage_arn
    #   <p>Stage ARN.</p>
    # @option params [String] :session_id
    #   <p>ID of a session within the stage.</p>
    # @option params [String] :participant_id
    #   <p>Unique identifier for this participant. This is assigned by IVS and returned by <a>CreateParticipantToken</a>.</p>
    # @option params [String] :next_token
    #   <p>The first participant event to retrieve. This is used for pagination; see the
    #               <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #     participant_id: "ParticipantId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_participant_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events: [ # required
    #       {
    #         name: "EventName",
    #         participant_id: "ParticipantId",
    #         event_time: Time.now,
    #         remote_participant_id: "ParticipantId",
    #         error_code: "INSUFFICIENT_CAPABILITIES" # One of: ["INSUFFICIENT_CAPABILITIES", "QUOTA_EXCEEDED", "PUBLISHER_NOT_FOUND", "BITRATE_EXCEEDED", "RESOLUTION_EXCEEDED", "STREAM_DURATION_EXCEEDED", "INVALID_AUDIO_CODEC", "INVALID_VIDEO_CODEC", "INVALID_PROTOCOL", "INVALID_STREAM_KEY", "REUSE_OF_STREAM_KEY", "B_FRAME_PRESENT", "INVALID_INPUT", "INTERNAL_SERVER_EXCEPTION"],
    #         destination_stage_arn: "StageArn",
    #         destination_session_id: "StageSessionId",
    #         replica: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListParticipantEventsResponse]
    def list_participant_events(params = {}, options = {})
      request = build_request(:list_participant_events, params)
      request.send_request(options)
    end

    # <p>Lists all the replicas for a participant from a source stage.</p>
    # @param [Hash, Types::ListParticipantReplicasRequest] params
    # @option params [String] :source_stage_arn
    #   <p>ARN of the stage where the participant is publishing.</p>
    # @option params [String] :participant_id
    #   <p>Participant ID of the publisher that has been replicated. This is assigned by IVS and returned by 
    #   		<a>CreateParticipantToken</a> 
    #   		or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed">create a self signed token</a>.</p>
    # @option params [String] :next_token
    #   <p>The first participant to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_stage_arn: "StageArn", # required
    #     participant_id: "ParticipantId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_participant_replicas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replicas: [ # required
    #       {
    #         source_stage_arn: "StageArn", # required
    #         participant_id: "ParticipantId", # required
    #         source_session_id: "StageSessionId", # required
    #         destination_stage_arn: "StageArn", # required
    #         destination_session_id: "StageSessionId", # required
    #         replication_state: "ReplicationState", # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListParticipantReplicasResponse]
    def list_participant_replicas(params = {}, options = {})
      request = build_request(:list_participant_replicas, params)
      request.send_request(options)
    end

    # <p>Lists all participants in a specified stage session.</p>
    # @param [Hash, Types::ListParticipantsRequest] params
    # @option params [String] :stage_arn
    #   <p>Stage ARN.</p>
    # @option params [String] :session_id
    #   <p>ID of the session within the stage.</p>
    # @option params [String] :filter_by_user_id
    #   <p>Filters the response list to match the specified user ID. 
    #               Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, 
    #               <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.
    #   	    A <code>userId</code> is a
    #               customer-assigned name to help identify the token; this can be used to link a participant
    #               to a user in the customer’s own systems.</p>
    # @option params [Boolean] :filter_by_published
    #   <p>Filters the response list to only show participants who published during the stage session.
    #               Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, 
    #               <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>
    # @option params [String] :filter_by_state
    #   <p>Filters the response list to only show participants in the specified state. 
    #               Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, 
    #               <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>
    # @option params [String] :next_token
    #   <p>The first participant to retrieve. This is used for pagination; see the
    #               <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @option params [String] :filter_by_recording_state
    #   <p>Filters the response list to only show participants with the specified recording state.
    #               Only one of <code>filterByUserId</code>, <code>filterByPublished</code>, 
    #               <code>filterByState</code>, or <code>filterByRecordingState</code> can be provided per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     session_id: "StageSessionId", # required
    #     filter_by_user_id: "UserId",
    #     filter_by_published: false,
    #     filter_by_state: "ParticipantState",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     filter_by_recording_state: "ParticipantRecordingFilterByRecordingState"
    #   }
    #   options = {}
    #   response = client.list_participants(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     participants: [ # required
    #       {
    #         participant_id: "ParticipantId",
    #         user_id: "UserId",
    #         state: "ParticipantState",
    #         first_join_time: Time.now,
    #         published: false,
    #         recording_state: "ParticipantRecordingState",
    #         replication_type: "ReplicationType",
    #         replication_state: "ReplicationState",
    #         source_stage_arn: "StageArn",
    #         source_session_id: "StageSessionId"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListParticipantsResponse]
    def list_participants(params = {}, options = {})
      request = build_request(:list_participants, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all public keys in your account, in the AWS region where the API request is processed.</p>
    # @param [Hash, Types::ListPublicKeysRequest] params
    # @option params [String] :next_token
    #   <p>The first public key to retrieve. This is used for pagination; see the <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_public_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     public_keys: [ # required
    #       {
    #         arn: "PublicKeyArn",
    #         name: "PublicKeyName",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPublicKeysResponse]
    def list_public_keys(params = {}, options = {})
      request = build_request(:list_public_keys, params)
      request.send_request(options)
    end

    # <p>Gets all sessions for a specified stage.</p>
    # @param [Hash, Types::ListStageSessionsRequest] params
    # @option params [String] :stage_arn
    #   <p>Stage ARN.</p>
    # @option params [String] :next_token
    #   <p>The first stage session to retrieve. This is used for pagination; see the
    #               <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stage_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stage_sessions: [ # required
    #       {
    #         session_id: "StageSessionId",
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStageSessionsResponse]
    def list_stage_sessions(params = {}, options = {})
      request = build_request(:list_stage_sessions, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all stages in your account, in the AWS region where the
    #          API request is processed.</p>
    # @param [Hash, Types::ListStagesInput] params
    # @option params [String] :next_token
    #   <p>The first stage to retrieve. This is used for pagination; see the <code>nextToken</code>
    #            response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_stages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stages: [ # required
    #       {
    #         arn: "StageArn", # required
    #         name: "StageName",
    #         active_session_id: "StageSessionId",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStagesOutput]
    def list_stages(params = {}, options = {})
      request = build_request(:list_stages, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all storage configurations in your account, 
    # 	  in the AWS region where the API request is processed.</p>
    # @param [Hash, Types::ListStorageConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>The first storage configuration to retrieve. This is used for pagination; 
    #   	  see the <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of storage configurations to return. Default: your service quota or 100, 
    #   	  whichever is smaller.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_storage_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_configurations: [ # required
    #       {
    #         arn: "StorageConfigurationArn", # required
    #         name: "StorageConfigurationName",
    #         s3: {
    #           bucket_name: "S3BucketName", # required
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListStorageConfigurationsResponse]
    def list_storage_configurations(params = {}, options = {})
      request = build_request(:list_storage_configurations, params)
      request.send_request(options)
    end

    # <p>Gets information about AWS tags for the specified ARN.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts a Composition from a stage based on the configuration provided in the
    #          request.</p>
    #          <p>A Composition is an ephemeral resource that exists after this operation returns
    #          successfully. Composition stops and the resource is deleted:</p>
    #          <ul>
    #             <li>
    #                <p>When <a>StopComposition</a> is called.</p>
    #             </li>
    #             <li>
    #                <p>After a 1-minute timeout, when all participants are disconnected from the
    #                stage.</p>
    #             </li>
    #             <li>
    #                <p>After a 1-minute timeout, if there are no participants in the stage when
    #                StartComposition is called.</p>
    #             </li>
    #             <li>
    #                <p>When broadcasting to the IVS channel fails and all retries are exhausted.</p>
    #             </li>
    #             <li>
    #                <p>When broadcasting is disconnected and all attempts to reconnect are
    #                exhausted.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartCompositionRequest] params
    # @option params [String] :stage_arn
    #   <p>ARN of the stage to be used for compositing.</p>
    # @option params [String] :idempotency_token
    #   <p>Idempotency token.</p>
    # @option params [Types::LayoutConfiguration] :layout
    #   <p>Layout object to configure composition parameters.</p>
    # @option params [Array<Types::DestinationConfiguration>] :destinations
    #   <p>Array of destination configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags attached to the resource. Array of maps, each of the form <code>string:string
    #            (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     stage_arn: "StageArn", # required
    #     idempotency_token: "CompositionClientToken",
    #     layout: {
    #       grid: {
    #         featured_participant_attribute: "AttributeKey",
    #         omit_stopped_video: false,
    #         video_aspect_ratio: "AUTO" # One of: ["AUTO", "VIDEO", "SQUARE", "PORTRAIT"],
    #         video_fill_mode: "FILL" # One of: ["FILL", "COVER", "CONTAIN"],
    #         grid_gap: 1,
    #         participant_order_attribute: "AttributeKey"
    #       },
    #       pip: {
    #         featured_participant_attribute: "AttributeKey",
    #         omit_stopped_video: false,
    #         video_fill_mode: "FILL" # One of: ["FILL", "COVER", "CONTAIN"],
    #         grid_gap: 1,
    #         pip_participant_attribute: "AttributeKey",
    #         pip_behavior: "STATIC" # One of: ["STATIC", "DYNAMIC"],
    #         pip_offset: 1,
    #         pip_position: "TOP_LEFT" # One of: ["TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT"],
    #         pip_width: 1,
    #         pip_height: 1,
    #         participant_order_attribute: "AttributeKey"
    #       }
    #     },
    #     destinations: [ # required
    #       {
    #         name: "DestinationConfigurationName",
    #         channel: {
    #           channel_arn: "ChannelArn", # required
    #           encoder_configuration_arn: "EncoderConfigurationArn"
    #         },
    #         s3: {
    #           storage_configuration_arn: "StorageConfigurationArn", # required
    #           encoder_configuration_arns: ["EncoderConfigurationArn"], # required
    #           recording_configuration: {
    #             hls_configuration: {
    #               target_segment_duration_seconds: 1
    #             },
    #             format: "RecordingConfigurationFormat"
    #           },
    #           thumbnail_configurations: [
    #             {
    #               target_interval_seconds: 1,
    #               storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]]
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_composition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     composition: {
    #       arn: "CompositionArn", # required
    #       stage_arn: "StageArn", # required
    #       state: "CompositionState", # required
    #       layout: { # required
    #         grid: {
    #           featured_participant_attribute: "AttributeKey",
    #           omit_stopped_video: false,
    #           video_aspect_ratio: "AUTO" # One of: ["AUTO", "VIDEO", "SQUARE", "PORTRAIT"],
    #           video_fill_mode: "FILL" # One of: ["FILL", "COVER", "CONTAIN"],
    #           grid_gap: 1,
    #           participant_order_attribute: "AttributeKey"
    #         },
    #         pip: {
    #           featured_participant_attribute: "AttributeKey",
    #           omit_stopped_video: false,
    #           video_fill_mode: "FILL" # One of: ["FILL", "COVER", "CONTAIN"],
    #           grid_gap: 1,
    #           pip_participant_attribute: "AttributeKey",
    #           pip_behavior: "STATIC" # One of: ["STATIC", "DYNAMIC"],
    #           pip_offset: 1,
    #           pip_position: "TOP_LEFT" # One of: ["TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT"],
    #           pip_width: 1,
    #           pip_height: 1,
    #           participant_order_attribute: "AttributeKey"
    #         }
    #       },
    #       destinations: [ # required
    #         {
    #           id: "String", # required
    #           state: "DestinationState", # required
    #           start_time: Time.now,
    #           end_time: Time.now,
    #           configuration: { # required
    #             name: "DestinationConfigurationName",
    #             channel: {
    #               channel_arn: "ChannelArn", # required
    #               encoder_configuration_arn: "EncoderConfigurationArn"
    #             },
    #             s3: {
    #               storage_configuration_arn: "StorageConfigurationArn", # required
    #               encoder_configuration_arns: ["EncoderConfigurationArn"], # required
    #               recording_configuration: {
    #                 hls_configuration: {
    #                   target_segment_duration_seconds: 1
    #                 },
    #                 format: "RecordingConfigurationFormat"
    #               },
    #               thumbnail_configurations: [
    #                 {
    #                   target_interval_seconds: 1,
    #                   storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]]
    #                 }
    #               ]
    #             }
    #           },
    #           detail: {
    #             s3: {
    #               recording_prefix: "String", # required
    #             }
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::StartCompositionResponse]
    def start_composition(params = {}, options = {})
      request = build_request(:start_composition, params)
      request.send_request(options)
    end

    # <p>Starts replicating a publishing participant from a source stage to a destination stage.</p>
    # @param [Hash, Types::StartParticipantReplicationRequest] params
    # @option params [String] :source_stage_arn
    #   <p>ARN of the stage where the participant is publishing.</p>
    # @option params [String] :destination_stage_arn
    #   <p>ARN of the stage to which the participant will be replicated.</p>
    # @option params [String] :participant_id
    #   <p>Participant ID of the publisher that will be replicated. This is assigned by IVS and returned by 
    #   		<a>CreateParticipantToken</a> 
    #   		or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed">create a self signed token</a>.
    #   	  </p>
    # @option params [Integer] :reconnect_window_seconds
    #   <p>If the participant disconnects and then reconnects within the specified interval, replication will continue to be <code>ACTIVE</code>. 
    #   	  Default: 0.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-provided attributes to set on the replicated participant in the destination stage. 
    #   	  Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1 KB total. 
    #   	  <i>This field is exposed to all stage participants and should not be used for personally identifying, 
    #   	  confidential, or sensitive information.</i>
    #            </p>
    #            <p>These attributes are merged with any attributes set for this participant when creating the token. 
    #   	  If there is overlap in keys, the values in these attributes are replaced.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_stage_arn: "StageArn", # required
    #     destination_stage_arn: "StageArn", # required
    #     participant_id: "ParticipantId", # required
    #     reconnect_window_seconds: 1,
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_participant_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_control_allow_origin: "String",
    #     access_control_expose_headers: "String",
    #     cache_control: "String",
    #     content_security_policy: "String",
    #     strict_transport_security: "String",
    #     x_content_type_options: "String",
    #     x_frame_options: "String"
    #   }
    # @return [Types::StartParticipantReplicationResponse]
    def start_participant_replication(params = {}, options = {})
      request = build_request(:start_participant_replication, params)
      request.send_request(options)
    end

    # <p>Stops and deletes a Composition resource. Any broadcast from the Composition resource
    #          is stopped.</p>
    # @param [Hash, Types::StopCompositionRequest] params
    # @option params [String] :arn
    #   <p>ARN of the Composition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "CompositionArn", # required
    #   }
    #   options = {}
    #   response = client.stop_composition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopCompositionResponse]
    def stop_composition(params = {}, options = {})
      request = build_request(:stop_composition, params)
      request.send_request(options)
    end

    # <p>Stops a replicated participant session.</p>
    # @param [Hash, Types::StopParticipantReplicationRequest] params
    # @option params [String] :source_stage_arn
    #   <p>ARN of the stage where the participant is publishing.</p>
    # @option params [String] :destination_stage_arn
    #   <p>ARN of the stage where the participant has been replicated.</p>
    # @option params [String] :participant_id
    #   <p>Participant ID of the publisher that has been replicated. This is assigned by IVS and returned by 
    #   		<a>CreateParticipantToken</a> 
    #   		or the <code>jti</code> (JWT ID) used to <a href="https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started-distribute-tokens.html#getting-started-distribute-tokens-self-signed">
    #   				  create a self signed token</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_stage_arn: "StageArn", # required
    #     destination_stage_arn: "StageArn", # required
    #     participant_id: "ParticipantId", # required
    #   }
    #   options = {}
    #   response = client.stop_participant_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_control_allow_origin: "String",
    #     access_control_expose_headers: "String",
    #     cache_control: "String",
    #     content_security_policy: "String",
    #     strict_transport_security: "String",
    #     x_content_type_options: "String",
    #     x_frame_options: "String"
    #   }
    # @return [Types::StopParticipantReplicationResponse]
    def stop_participant_replication(params = {}, options = {})
      request = build_request(:stop_participant_replication, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for the AWS resource with the specified ARN.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be tagged. The ARN must be URL-encoded.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated. Array of maps, each of the form
    #            <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from the resource with the specified ARN.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be untagged. The ARN must be URL-encoded.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tag keys (strings) for the tags to be removed.
    #            See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a>
    #            in <i>Tagging AWS Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming
    #            limits and requirements"; Amazon IVS has no constraints on tags beyond what is documented
    #            there.</p>
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
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a specified IngestConfiguration. Only the stage ARN attached to the IngestConfiguration can be updated. An IngestConfiguration that is active cannot be updated.</p>
    # @param [Hash, Types::UpdateIngestConfigurationRequest] params
    # @option params [String] :arn
    #   <p>ARN of the IngestConfiguration, for which the related stage ARN needs to be updated.</p>
    # @option params [String] :stage_arn
    #   <p>Stage ARN that needs to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "IngestConfigurationArn", # required
    #     stage_arn: "IngestConfigurationStageArn"
    #   }
    #   options = {}
    #   response = client.update_ingest_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingest_configuration: {
    #       name: "IngestConfigurationName",
    #       arn: "IngestConfigurationArn", # required
    #       ingest_protocol: "RTMP" # One of: ["RTMP", "RTMPS"], # required
    #       stream_key: "StreamKey", # required
    #       stage_arn: "IngestConfigurationStageArn", # required
    #       participant_id: "ParticipantId", # required
    #       state: "IngestConfigurationState", # required
    #       user_id: "UserId",
    #       attributes: {
    #         "String" => "String"
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateIngestConfigurationResponse]
    def update_ingest_configuration(params = {}, options = {})
      request = build_request(:update_ingest_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a stage’s configuration.</p>
    # @param [Hash, Types::UpdateStageInput] params
    # @option params [String] :arn
    #   <p>ARN of the stage to be updated.</p>
    # @option params [String] :name
    #   <p>Name of the stage to be updated.</p>
    # @option params [Types::AutoParticipantRecordingConfiguration] :auto_participant_recording_configuration
    #   <p>Configuration object for individual participant recording, to attach to the stage. Note that this cannot be updated while recording is active.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "StageArn", # required
    #     name: "StageName",
    #     auto_participant_recording_configuration: {
    #       storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #       media_types: ["AUDIO_VIDEO" # One of: ["AUDIO_VIDEO", "AUDIO_ONLY", "NONE"]],
    #       thumbnail_configuration: {
    #         target_interval_seconds: 1,
    #         storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]],
    #         recording_mode: "INTERVAL" # One of: ["INTERVAL", "DISABLED"]
    #       },
    #       recording_reconnect_window_seconds: 1,
    #       hls_configuration: {
    #         target_segment_duration_seconds: 1
    #       },
    #       record_participant_replicas: false
    #     }
    #   }
    #   options = {}
    #   response = client.update_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     stage: {
    #       arn: "StageArn", # required
    #       name: "StageName",
    #       active_session_id: "StageSessionId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       auto_participant_recording_configuration: {
    #         storage_configuration_arn: "AutoParticipantRecordingStorageConfigurationArn", # required
    #         media_types: ["AUDIO_VIDEO" # One of: ["AUDIO_VIDEO", "AUDIO_ONLY", "NONE"]],
    #         thumbnail_configuration: {
    #           target_interval_seconds: 1,
    #           storage: ["SEQUENTIAL" # One of: ["SEQUENTIAL", "LATEST"]],
    #           recording_mode: "INTERVAL" # One of: ["INTERVAL", "DISABLED"]
    #         },
    #         recording_reconnect_window_seconds: 1,
    #         hls_configuration: {
    #           target_segment_duration_seconds: 1
    #         },
    #         record_participant_replicas: false
    #       },
    #       endpoints: {
    #         events: "StageEndpoint",
    #         whip: "StageEndpoint",
    #         rtmp: "StageEndpoint",
    #         rtmps: "StageEndpoint"
    #       }
    #     }
    #   }
    # @return [Types::UpdateStageOutput]
    def update_stage(params = {}, options = {})
      request = build_request(:update_stage, params)
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
      context[:gem_name] = 'aws-sdk-ivsrealtime'
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
