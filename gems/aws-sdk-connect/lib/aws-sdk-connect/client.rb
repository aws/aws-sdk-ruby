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

module Aws::Connect
  # An API client for Aws::Connect.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonConnectService

    add_plugin(::Aws::Connect::Plugins::Endpoint)
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
    # @option options [Aws::Connect::EndpointProvider] :endpoint_provider
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Activates an evaluation form in the specified Amazon Connect instance. After the
    #    evaluation form is activated, it is available to start new evaluations based on the form. </p>
    # @param [Hash, Types::ActivateEvaluationFormRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    # @option params [Integer] :evaluation_form_version
    #   <p>The version of the evaluation form to activate. If the version property is not provided, the
    #      latest version of the evaluation form is activated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #   }
    #   options = {}
    #   response = client.activate_evaluation_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_arn: "ARN", # required
    #     evaluation_form_version: 1, # required
    #   }
    # @return [Types::ActivateEvaluationFormResponse]
    def activate_evaluation_form(params = {}, options = {})
      request = build_request(:activate_evaluation_form, params)
      request.send_request(options)
    end

    # <p>Associates the specified dataset for a Amazon Connect instance with the target account.
    #    You can associate only one dataset in a single call.</p>
    # @param [Hash, Types::AssociateAnalyticsDataSetRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :data_set_id
    #   <p>The identifier of the dataset to associate with the target account.</p>
    # @option params [String] :target_account_id
    #   <p>The identifier of the target account.  Use to associate a dataset to a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     data_set_id: "DataSetId", # required
    #     target_account_id: "AWSAccountId"
    #   }
    #   options = {}
    #   response = client.associate_analytics_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_set_id: "DataSetId",
    #     target_account_id: "AWSAccountId",
    #     resource_share_id: "String",
    #     resource_share_arn: "ARN"
    #   }
    # @return [Types::AssociateAnalyticsDataSetResponse]
    def associate_analytics_data_set(params = {}, options = {})
      request = build_request(:associate_analytics_data_set, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates an approved origin to an Amazon Connect instance.</p>
    # @param [Hash, Types::AssociateApprovedOriginRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :origin
    #   <p>The domain to add to your allow list.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     origin: "Origin", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_approved_origin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_approved_origin(params = {}, options = {})
      request = build_request(:associate_approved_origin, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Allows the specified Amazon Connect instance to access the specified Amazon Lex
    #    or Amazon Lex V2 bot.</p>
    # @param [Hash, Types::AssociateBotRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::LexBot] :lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    # @option params [Types::LexV2Bot] :lex_v2_bot
    #   <p>The Amazon Lex V2 bot to associate with the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     lex_bot: {
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     lex_v2_bot: {
    #       alias_arn: "AliasArn"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_bot(params = {}, options = {})
      request = build_request(:associate_bot, params)
      request.send_request(options)
    end

    # <p>Associates an existing vocabulary as the default. Contact Lens for Amazon Connect uses the vocabulary in post-call
    #    and real-time analysis sessions for the given language.</p>
    # @param [Hash, Types::AssociateDefaultVocabularyRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    # @option params [String] :vocabulary_id
    #   <p>The identifier of the custom vocabulary. If this is empty, the default is set to none.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"], # required
    #     vocabulary_id: "VocabularyId"
    #   }
    #   options = {}
    #   response = client.associate_default_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateDefaultVocabularyResponse]
    def associate_default_vocabulary(params = {}, options = {})
      request = build_request(:associate_default_vocabulary, params)
      request.send_request(options)
    end

    # <p>Associates a connect resource to a flow.</p>
    # @param [Hash, Types::AssociateFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_id: "ARN", # required
    #     flow_id: "ARN", # required
    #     resource_type: "SMS_PHONE_NUMBER" # One of: ["SMS_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR", "WHATSAPP_MESSAGING_PHONE_NUMBER"], # required
    #   }
    #   options = {}
    #   response = client.associate_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateFlowResponse]
    def associate_flow(params = {}, options = {})
      request = build_request(:associate_flow, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates a storage resource type for the first time. You can only associate one type of
    #    storage configuration in a single call. This means, for example, that you can't define an
    #    instance with multiple S3 buckets for storing chat transcripts.</p>
    #          <p>This API does not create a resource that doesn't exist. It only associates it to the
    #    instance. Ensure that the resource being specified in the storage configuration, like an S3
    #    bucket, exists when being used for association.</p>
    # @param [Hash, Types::AssociateInstanceStorageConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type. To <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-contact-analysis-segment-streams.html">enable streaming
    #       for real-time analysis of contacts</a>, use the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>For chat contacts, use <code>REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For voice contacts, use <code>REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>REAL_TIME_CONTACT_ANALYSIS_SEGMENTS</code> is deprecated, but it is still supported
    #       and will apply only to VOICE channel contacts. Use
    #        <code>REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS</code> for voice contacts moving
    #       forward.</p>
    #               <p>If you have previously associated a stream with
    #        <code>REAL_TIME_CONTACT_ANALYSIS_SEGMENTS</code>, no action is needed to update the stream to
    #        <code>REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS</code>.</p>
    #            </note>
    # @option params [Types::InstanceStorageConfig] :storage_config
    #   <p>A valid storage type.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_type: "CHAT_TRANSCRIPTS" # One of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS", "ATTACHMENTS", "CONTACT_EVALUATIONS", "SCREEN_RECORDINGS", "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS", "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS", "EMAIL_MESSAGES"], # required
    #     storage_config: { # required
    #       association_id: "AssociationId",
    #       storage_type: "S3" # One of: ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"], # required
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS" # One of: ["KMS"], # required
    #           key_id: "KeyId", # required
    #         }
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS" # One of: ["KMS"], # required
    #           key_id: "KeyId", # required
    #         }
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_instance_storage_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_id: "AssociationId"
    #   }
    # @return [Types::AssociateInstanceStorageConfigResponse]
    def associate_instance_storage_config(params = {}, options = {})
      request = build_request(:associate_instance_storage_config, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Allows the specified Amazon Connect instance to access the specified Lambda
    #    function.</p>
    # @param [Hash, Types::AssociateLambdaFunctionRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function being associated. Maximum number of characters
    #      allowed is 140.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     function_arn: "FunctionArn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_lambda_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_lambda_function(params = {}, options = {})
      request = build_request(:associate_lambda_function, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Allows the specified Amazon Connect instance to access the specified Amazon Lex
    #    V1 bot. This API only supports the association of Amazon Lex V1 bots.</p>
    # @param [Hash, Types::AssociateLexBotRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::LexBot] :lex_bot
    #   <p>The Amazon Lex bot to associate with the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     lex_bot: { # required
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_lex_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_lex_bot(params = {}, options = {})
      request = build_request(:associate_lex_bot, params)
      request.send_request(options)
    end

    # <p>Associates a flow with a phone number claimed to your Amazon Connect instance.</p>
    #          <important>
    #             <p>If the number is claimed to a traffic distribution group, and you are calling this API using an instance in the
    #      Amazon Web Services Region where the traffic distribution group was created, you can use either a full phone number
    #     ARN or UUID value for the <code>PhoneNumberId</code> URI request parameter. However, if the
    #     number is claimed to a traffic distribution group and you are calling this API using an instance in the alternate
    #      Amazon Web Services Region associated with the traffic distribution group, you must provide a full phone number ARN.
    #     If a UUID is provided
    #     in
    #     this scenario, you will receive a
    #     <code>ResourceNotFoundException</code>.</p>
    #          </important>
    # @param [Hash, Types::AssociatePhoneNumberContactFlowRequest] params
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   }
    #   options = {}
    #   response = client.associate_phone_number_contact_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_phone_number_contact_flow(params = {}, options = {})
      request = build_request(:associate_phone_number_contact_flow, params)
      request.send_request(options)
    end

    # <p>Associates a set of quick connects with a queue.</p>
    # @param [Hash, Types::AssociateQueueQuickConnectsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [Array<String>] :quick_connect_ids
    #   <p>The quick connects to associate with this queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     quick_connect_ids: ["QuickConnectId"], # required
    #   }
    #   options = {}
    #   response = client.associate_queue_quick_connects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_queue_quick_connects(params = {}, options = {})
      request = build_request(:associate_queue_quick_connects, params)
      request.send_request(options)
    end

    # <p>Associates a set of queues with a routing profile.</p>
    # @param [Hash, Types::AssociateRoutingProfileQueuesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   <p>The queues to associate with this routing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_routing_profile_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_routing_profile_queues(params = {}, options = {})
      request = build_request(:associate_routing_profile_queues, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Associates a security key to the instance.</p>
    # @param [Hash, Types::AssociateSecurityKeyRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :key
    #   <p>A valid security key in PEM format as a String.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     key: "PEM", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_security_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     association_id: "AssociationId"
    #   }
    # @return [Types::AssociateSecurityKeyResponse]
    def associate_security_key(params = {}, options = {})
      request = build_request(:associate_security_key, params)
      request.send_request(options)
    end

    # <p>Associates an agent with a traffic distribution group. This API can be called only in the
    #    Region where the traffic distribution group is created.</p>
    # @param [Hash, Types::AssociateTrafficDistributionGroupUserRequest] params
    # @option params [String] :traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account. This can be the ID or the ARN of the user. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.associate_traffic_distribution_group_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AssociateTrafficDistributionGroupUserResponse]
    def associate_traffic_distribution_group_user(params = {}, options = {})
      request = build_request(:associate_traffic_distribution_group_user, params)
      request.send_request(options)
    end

    # <p>Associates a set of proficiencies with a user.</p>
    # @param [Hash, Types::AssociateUserProficienciesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN of the instance).</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [Array<Types::UserProficiency>] :user_proficiencies
    #   <p>The proficiencies to associate with the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     user_proficiencies: [ # required
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #         level: 1.0, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_user_proficiencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def associate_user_proficiencies(params = {}, options = {})
      request = build_request(:associate_user_proficiencies, params)
      request.send_request(options)
    end

    # <p>Associates a list of analytics datasets for a given Amazon Connect instance to a target
    #    account. You can associate multiple datasets in a single call.</p>
    # @param [Hash, Types::BatchAssociateAnalyticsDataSetRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :data_set_ids
    #   <p>An array of dataset identifiers to associate.</p>
    # @option params [String] :target_account_id
    #   <p>The identifier of the target account.  Use to associate a dataset to a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     data_set_ids: ["DataSetId"], # required
    #     target_account_id: "AWSAccountId"
    #   }
    #   options = {}
    #   response = client.batch_associate_analytics_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created: [
    #       {
    #         data_set_id: "DataSetId",
    #         target_account_id: "AWSAccountId",
    #         resource_share_id: "String",
    #         resource_share_arn: "ARN",
    #         resource_share_status: "String"
    #       }
    #     ],
    #     errors: [
    #       {
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAssociateAnalyticsDataSetResponse]
    def batch_associate_analytics_data_set(params = {}, options = {})
      request = build_request(:batch_associate_analytics_data_set, params)
      request.send_request(options)
    end

    # <p>Removes a list of analytics datasets associated with a given Amazon Connect instance.
    #    You can disassociate multiple datasets in a single call.</p>
    # @param [Hash, Types::BatchDisassociateAnalyticsDataSetRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :data_set_ids
    #   <p>An array of associated dataset identifiers to remove.</p>
    # @option params [String] :target_account_id
    #   <p>The identifier of the target account.  Use to disassociate a dataset from a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     data_set_ids: ["DataSetId"], # required
    #     target_account_id: "AWSAccountId"
    #   }
    #   options = {}
    #   response = client.batch_disassociate_analytics_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted: ["DataSetId"],
    #     errors: [
    #       {
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisassociateAnalyticsDataSetResponse]
    def batch_disassociate_analytics_data_set(params = {}, options = {})
      request = build_request(:batch_disassociate_analytics_data_set, params)
      request.send_request(options)
    end

    # <p>Allows you to retrieve metadata about multiple attached files on an associated resource.
    #    Each attached file provided in the input list must be associated with the input
    #    AssociatedResourceArn.</p>
    # @param [Hash, Types::BatchGetAttachedFileMetadataRequest] params
    # @option params [Array<String>] :file_ids
    #   <p>The unique identifiers of the attached file resource.</p>
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Connect instance.</p>
    # @option params [String] :associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_ids: ["FileId"], # required
    #     instance_id: "InstanceId", # required
    #     associated_resource_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.batch_get_attached_file_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     files: [
    #       {
    #         creation_time: "ISO8601Datetime", # required
    #         file_arn: "ARN", # required
    #         file_id: "FileId", # required
    #         file_name: "FileName", # required
    #         file_size_in_bytes: 1, # required
    #         file_status: "APPROVED" # One of: ["APPROVED", "REJECTED", "PROCESSING", "FAILED"], # required
    #         created_by: {
    #           # One of:
    #           connect_user_arn: "ARN",
    #           aws_identity_arn: "ARN"
    #         },
    #         file_use_case_type: "EMAIL_MESSAGE" # One of: ["EMAIL_MESSAGE", "ATTACHMENT"],
    #         associated_resource_arn: "ARN",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage",
    #         file_id: "FileId"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetAttachedFileMetadataResponse]
    def batch_get_attached_file_metadata(params = {}, options = {})
      request = build_request(:batch_get_attached_file_metadata, params)
      request.send_request(options)
    end

    # <p>Retrieve the flow associations for the given resources.</p>
    # @param [Hash, Types::BatchGetFlowAssociationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :resource_ids
    #   <p>A list of resource identifiers to retrieve flow associations.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_type
    #   <p>The type of resource association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_ids: ["ARN"], # required
    #     resource_type: "WHATSAPP_MESSAGING_PHONE_NUMBER" # One of: ["WHATSAPP_MESSAGING_PHONE_NUMBER", "VOICE_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR"]
    #   }
    #   options = {}
    #   response = client.batch_get_flow_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_association_summary_list: [
    #       {
    #         resource_id: "ARN",
    #         flow_id: "ARN",
    #         resource_type: "WHATSAPP_MESSAGING_PHONE_NUMBER" # One of: ["WHATSAPP_MESSAGING_PHONE_NUMBER", "VOICE_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR"]
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetFlowAssociationResponse]
    def batch_get_flow_association(params = {}, options = {})
      request = build_request(:batch_get_flow_association, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Only the Amazon Connect outbound campaigns service principal is allowed to assume a
    #     role in your account and call this API.</p>
    #          </note>
    #          <p>Allows you to create a batch of contacts in Amazon Connect. The outbound campaigns
    #    capability ingests dial requests via the <a href="https://docs.aws.amazon.com/connect-outbound/latest/APIReference/API_PutDialRequestBatch.html">PutDialRequestBatch</a> API. It then uses BatchPutContact to create contacts corresponding
    #    to those dial requests. If agents are available, the dial requests are dialed out, which results
    #    in a voice call. The resulting voice call uses the same contactId that was created by
    #    BatchPutContact. </p>
    # @param [Hash, Types::BatchPutContactRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<Types::ContactDataRequest>] :contact_data_request_list
    #   <p>List of individual contact requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     contact_data_request_list: [ # required
    #       {
    #         system_endpoint: {
    #           type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #           address: "EndpointAddress"
    #         },
    #         customer_endpoint: {
    #           type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #           address: "EndpointAddress"
    #         },
    #         request_identifier: "RequestIdentifier",
    #         queue_id: "QueueId",
    #         attributes: {
    #           "AttributeName" => "AttributeValue"
    #         },
    #         campaign: {
    #           campaign_id: "CampaignId"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_request_list: [
    #       {
    #         request_identifier: "RequestIdentifier",
    #         contact_id: "ContactId"
    #       }
    #     ],
    #     failed_request_list: [
    #       {
    #         request_identifier: "RequestIdentifier",
    #         failure_reason_code: "INVALID_ATTRIBUTE_KEY" # One of: ["INVALID_ATTRIBUTE_KEY", "INVALID_CUSTOMER_ENDPOINT", "INVALID_SYSTEM_ENDPOINT", "INVALID_QUEUE", "MISSING_CAMPAIGN", "MISSING_CUSTOMER_ENDPOINT", "MISSING_QUEUE_ID_AND_SYSTEM_ENDPOINT", "REQUEST_THROTTLED", "IDEMPOTENCY_EXCEPTION", "INTERNAL_ERROR"],
    #         failure_reason_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutContactResponse]
    def batch_put_contact(params = {}, options = {})
      request = build_request(:batch_put_contact, params)
      request.send_request(options)
    end

    # <p>Claims an available phone number to your Amazon Connect instance or traffic distribution
    #    group. You can call this API only in the same Amazon Web Services Region where the Amazon Connect instance or traffic distribution group was created.</p>
    #          <p>For more information about how to use this operation, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html">Claim a phone number in your
    #     country</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html">Claim phone
    #     numbers to traffic distribution groups</a> in the <i>Amazon Connect Administrator
    #     Guide</i>. </p>
    #          <important>
    #             <p>You can call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html">SearchAvailablePhoneNumbers</a> API for available phone numbers that you can claim. Call
    #     the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html">DescribePhoneNumber</a> API to verify the status of a previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html">ClaimPhoneNumber</a>
    #     operation.</p>
    #          </important>
    #          <p>If you plan to claim and release numbers frequently,
    #                 contact us for a service quota exception. Otherwise, it is possible you will be blocked from
    #                 claiming and releasing any more numbers until up to 180 days past the oldest number
    #                 released has expired.</p>
    #          <p>By default you can claim and release up to 200% of your maximum number of active
    #                 phone numbers. If you claim and release phone numbers using
    #                 the UI or API during a rolling 180 day cycle that exceeds 200% of your phone number
    #                 service level quota, you will be blocked from claiming any more numbers until 180
    #                 days past the oldest number released has expired. </p>
    #          <p>For example, if you already have 99 claimed numbers and a service level quota of 99 phone numbers, and in any 180
    #                 day period you release 99, claim 99, and then release 99, you will have exceeded the
    #                 200% limit. At that point you are blocked from claiming any more numbers until you
    #                 open an Amazon Web Services support ticket.</p>
    # @param [Hash, Types::ClaimPhoneNumberRequest] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    # @option params [String] :phone_number
    #   <p>The phone number you want to claim. Phone numbers are formatted <code>[+] [country code]
    #       [subscriber number including area code]</code>.</p>
    # @option params [String] :phone_number_description
    #   <p>The description of the phone number.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #            <p>Pattern: <code>^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     phone_number: "PhoneNumber", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.claim_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_id: "PhoneNumberId",
    #     phone_number_arn: "ARN"
    #   }
    # @return [Types::ClaimPhoneNumberResponse]
    def claim_phone_number(params = {}, options = {})
      request = build_request(:claim_phone_number, params)
      request.send_request(options)
    end

    # <p>Allows you to confirm that the attached file has been uploaded using the pre-signed URL
    #    provided in the StartAttachedFileUpload API.</p>
    # @param [Hash, Types::CompleteAttachedFileUploadRequest] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Connect instance.</p>
    # @option params [String] :file_id
    #   <p>The unique identifier of the attached file resource.</p>
    # @option params [String] :associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     file_id: "FileId", # required
    #     associated_resource_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.complete_attached_file_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CompleteAttachedFileUploadResponse]
    def complete_attached_file_upload(params = {}, options = {})
      request = build_request(:complete_attached_file_upload, params)
      request.send_request(options)
    end

    # <p>Creates an agent status for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::CreateAgentStatusRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the status.</p>
    # @option params [String] :description
    #   <p>The description of the status.</p>
    # @option params [String] :state
    #   <p>The state of the status.</p>
    # @option params [Integer] :display_order
    #   <p>The display order of the status.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "AgentStatusName", # required
    #     description: "AgentStatusDescription",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     display_order: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_agent_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_status_arn: "ARN",
    #     agent_status_id: "AgentStatusId"
    #   }
    # @return [Types::CreateAgentStatusResponse]
    def create_agent_status(params = {}, options = {})
      request = build_request(:create_agent_status, params)
      request.send_request(options)
    end

    # <important>
    #             <p>Only the VOICE, EMAIL, and TASK channels are supported. </p>
    #             <ul>
    #                <li>
    #                   <p>For VOICE: The supported initiation method is <code>TRANSFER</code>. The contacts created
    #       with this initiation method have a subtype <code>connect:ExternalAudio</code>. </p>
    #                </li>
    #                <li>
    #                   <p>For EMAIL: The supported initiation methods are <code>OUTBOUND</code>,
    #        <code>AGENT_REPLY</code>, and <code>FLOW</code>. </p>
    #                </li>
    #                <li>
    #                   <p>For TASK: The supported initiation method is <code>API</code>. Contacts created with this
    #       API have a sub-type of <code>connect:ExternalTask</code>.</p>
    #                </li>
    #             </ul>
    #          </important>
    #          <p>Creates a new VOICE, EMAIL, or TASK contact. </p>
    #          <p>After a contact is created, you can move it to the desired state by using the
    #     <code>InitiateAs</code> parameter. While you can use API to create task contacts that are in the
    #     <code>COMPLETED</code> state, you must contact Amazon Web Services Support before using it for
    #    bulk import use cases. Bulk import causes your requests to be throttled or fail if your
    #    CreateContact limits aren't high enough. </p>
    # @param [Hash, Types::CreateContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :related_contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    # @option params [Hash<String, Types::Reference>] :references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Tasks can have
    #      the following reference types at the time of creation: <code>URL</code> | <code>NUMBER</code> |
    #       <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code> | <code>ATTACHMENT</code>.</p>
    # @option params [String] :channel
    #   <p>The channel for the contact.</p>
    #            <important>
    #               <p>The CHAT channel is not supported. The following information is incorrect. We're working to
    #       correct it.</p>
    #            </important>
    # @option params [String] :initiation_method
    #   <p>Indicates how the contact was initiated. </p>
    #            <important>
    #               <p>CreateContact only supports the following initiation methods. Valid values by channel are: </p>
    #               <ul>
    #                  <li>
    #                     <p>For VOICE: <code>TRANSFER</code> and the subtype <code>connect:ExternalAudio</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>For EMAIL: <code>OUTBOUND</code> | <code>AGENT_REPLY</code> | <code>FLOW</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>For TASK: <code>API</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #               <p>The other channels listed below are incorrect. We're working to correct this
    #       information.</p>
    #            </important>
    # @option params [Integer] :expiry_duration_in_minutes
    #   <p>Number of minutes the contact will be active for before expiring</p>
    # @option params [Types::UserInfo] :user_info
    #   <p>User details for the contact</p>
    #            <important>
    #               <p>UserInfo is required when creating an EMAIL contact with <code>OUTBOUND</code> and
    #        <code>AGENT_REPLY</code> contact initiation methods.</p>
    #            </important>
    # @option params [String] :initiate_as
    #   <p>Initial state of the contact when it's created. Only TASK channel contacts can be initiated
    #      with <code>COMPLETED</code> state.</p>
    # @option params [String] :name
    #   <p>The name of a the contact.</p>
    # @option params [String] :description
    #   <p>A description of the contact.</p>
    # @option params [Hash<String, Types::SegmentAttributeValue>] :segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments (unique
    #      contact ID) using an attribute map. The attributes are standard Amazon Connect attributes.
    #      They can be accessed in flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to set Segment Contact Expiry as a duration in minutes.</p>
    #            <note>
    #               <p>To set contact expiry, a ValueMap must be specified containing the integer number of
    #       minutes the contact will be active for before expiring, with <code>SegmentAttributes</code> like
    #       { <code> "connect:ContactExpiry": {"ValueMap" : { "ExpiryDuration": { "ValueInteger":
    #        135}}}}</code>. </p>
    #            </note>
    # @option params [String] :previous_contact_id
    #   <p>The ID of the previous contact when creating a transfer contact. This value can be provided
    #      only for external audio contacts. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Integrate Amazon Connect Contact Lens
    #       with external voice systems</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     related_contact_id: "ContactId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason"
    #       }
    #     },
    #     channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #     initiation_method: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"], # required
    #     expiry_duration_in_minutes: 1,
    #     user_info: {
    #       user_id: "AgentResourceId"
    #     },
    #     initiate_as: "CONNECTED_TO_USER" # One of: ["CONNECTED_TO_USER", "COMPLETED"],
    #     name: "Name",
    #     description: "Description",
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           }
    #         },
    #         value_integer: 1
    #       }
    #     },
    #     previous_contact_id: "ContactId"
    #   }
    #   options = {}
    #   response = client.create_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId",
    #     contact_arn: "ARN"
    #   }
    # @return [Types::CreateContactResponse]
    def create_contact(params = {}, options = {})
      request = build_request(:create_contact, params)
      request.send_request(options)
    end

    # <p>Creates a flow for the specified Amazon Connect instance.</p>
    #          <p>You can also create and update flows using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    # @param [Hash, Types::CreateContactFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :name
    #   <p>The name of the flow.</p>
    # @option params [String] :type
    #   <p>The type of the flow. For descriptions of the available types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types">Choose a flow type</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    # @option params [String] :description
    #   <p>The description of the flow. </p>
    # @option params [String] :content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 256000.</p>
    # @option params [String] :status
    #   <p>Indicates the flow status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content. the <code>SAVED</code>
    #      status does not initiate validation of the content. <code>SAVED</code> |
    #      <code>PUBLISHED</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowName", # required
    #     type: "CONTACT_FLOW" # One of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"], # required
    #     description: "ContactFlowDescription",
    #     content: "ContactFlowContent", # required
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_contact_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_id: "ContactFlowId",
    #     contact_flow_arn: "ARN",
    #     flow_content_sha256: "FlowContentSha256"
    #   }
    # @return [Types::CreateContactFlowResponse]
    def create_contact_flow(params = {}, options = {})
      request = build_request(:create_contact_flow, params)
      request.send_request(options)
    end

    # <p>Creates a flow module for the specified Amazon Connect instance. </p>
    # @param [Hash, Types::CreateContactFlowModuleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the flow module.</p>
    # @option params [String] :description
    #   <p>The description of the flow module. </p>
    # @option params [String] :content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowModuleName", # required
    #     description: "ContactFlowModuleDescription",
    #     content: "ContactFlowModuleContent", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_contact_flow_module(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ContactFlowModuleId",
    #     arn: "ARN"
    #   }
    # @return [Types::CreateContactFlowModuleResponse]
    def create_contact_flow_module(params = {}, options = {})
      request = build_request(:create_contact_flow_module, params)
      request.send_request(options)
    end

    # <p>Publishes a new version of the flow provided. Versions are immutable and monotonically
    #    increasing. If the <code>FlowContentSha256</code> provided is different from the
    #     <code>FlowContentSha256</code> of the <code>$LATEST</code> published flow content, then an error
    #    is returned. This API only supports creating versions for flows of type
    #    <code>Campaign</code>.</p>
    # @param [Hash, Types::CreateContactFlowVersionRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :description
    #   <p>The description of the flow version.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :flow_content_sha256
    #   <p>Indicates the checksum value of the flow content.</p>
    # @option params [Integer] :contact_flow_version
    #   <p>The identifier of the flow version.</p>
    # @option params [Time] :last_modified_time
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    # @option params [String] :last_modified_region
    #   <p>The Amazon Web Services Region where this resource was last modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     description: "ContactFlowDescription",
    #     contact_flow_id: "ARN", # required
    #     flow_content_sha256: "FlowContentSha256",
    #     contact_flow_version: 1,
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    #   options = {}
    #   response = client.create_contact_flow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_arn: "ARN",
    #     version: 1
    #   }
    # @return [Types::CreateContactFlowVersionResponse]
    def create_contact_flow_version(params = {}, options = {})
      request = build_request(:create_contact_flow_version, params)
      request.send_request(options)
    end

    # <p>Create new email address in the specified Amazon Connect instance. For more information
    #    about email addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html">Create email addresses</a> in the
    #     Amazon Connect Administrator Guide.</p>
    # @param [Hash, Types::CreateEmailAddressRequest] params
    # @option params [String] :description
    #   <p>The description of the email address.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :email_address
    #   <p>The email address, including the domain.</p>
    # @option params [String] :display_name
    #   <p>The display name of email address</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description",
    #     instance_id: "InstanceId", # required
    #     email_address: "EmailAddress", # required
    #     display_name: "EmailAddressDisplayName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_email_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_address_id: "EmailAddressId",
    #     email_address_arn: "EmailAddressArn"
    #   }
    # @return [Types::CreateEmailAddressResponse]
    def create_email_address(params = {}, options = {})
      request = build_request(:create_email_address, params)
      request.send_request(options)
    end

    # <p>Creates an evaluation form in the specified Amazon Connect instance. The form can be
    #    used to define questions related to agent performance, and create sections to organize such
    #    questions. Question and section identifiers cannot be duplicated within the same evaluation
    #    form.</p>
    # @param [Hash, Types::CreateEvaluationFormRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :title
    #   <p>A title of the evaluation form.</p>
    # @option params [String] :description
    #   <p>The description of the evaluation form.</p>
    # @option params [Array<Types::EvaluationFormItem>] :items
    #   <p>Items that are part of the evaluation form.  The total number of sections and questions must not exceed 100 each.  Questions must be contained in a section.</p>
    # @option params [Types::EvaluationFormScoringStrategy] :scoring_strategy
    #   <p>A scoring strategy of the evaluation form.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     title: "EvaluationFormTitle", # required
    #     description: "EvaluationFormDescription",
    #     items: [{ # required
    #       # One of:
    #       section: {
    #         title: "EvaluationFormSectionTitle", # required
    #         ref_id: "ReferenceId", # required
    #         instructions: "EvaluationFormQuestionInstructions",
    #         items: { # required
    #           # recursive EvaluationFormItemsList
    #         },
    #         weight: 1.0
    #       },
    #       question: {
    #         title: "EvaluationFormQuestionTitle", # required
    #         instructions: "EvaluationFormQuestionInstructions",
    #         ref_id: "ReferenceId", # required
    #         not_applicable_enabled: false,
    #         question_type: "TEXT" # One of: ["TEXT", "SINGLESELECT", "NUMERIC"], # required
    #         question_type_properties: {
    #           # One of:
    #           numeric: {
    #             min_value: 1, # required
    #             max_value: 1, # required
    #             options: [
    #               {
    #                 min_value: 1, # required
    #                 max_value: 1, # required
    #                 score: 1,
    #                 automatic_fail: false
    #               }
    #             ],
    #             automation: {
    #               # One of:
    #               property_value: {
    #                 label: "OVERALL_CUSTOMER_SENTIMENT_SCORE" # One of: ["OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"], # required
    #               }
    #             }
    #           },
    #           single_select: {
    #             options: [ # required
    #               {
    #                 ref_id: "ReferenceId", # required
    #                 text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                 score: 1,
    #                 automatic_fail: false
    #               }
    #             ],
    #             display_as: "DROPDOWN" # One of: ["DROPDOWN", "RADIO"],
    #             automation: {
    #               options: [{ # required
    #                 # One of:
    #                 rule_category: {
    #                   category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                   condition: "PRESENT" # One of: ["PRESENT", "NOT_PRESENT"], # required
    #                   option_ref_id: "ReferenceId", # required
    #                 }
    #               }],
    #               default_option_ref_id: "ReferenceId"
    #             }
    #           }
    #         },
    #         weight: 1.0
    #       }
    #     }],
    #     scoring_strategy: {
    #       mode: "QUESTION_ONLY" # One of: ["QUESTION_ONLY", "SECTION_ONLY"], # required
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_evaluation_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_arn: "ARN", # required
    #   }
    # @return [Types::CreateEvaluationFormResponse]
    def create_evaluation_form(params = {}, options = {})
      request = build_request(:create_evaluation_form, params)
      request.send_request(options)
    end

    # <p>Creates hours of operation. </p>
    # @param [Hash, Types::CreateHoursOfOperationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the hours of operation.</p>
    # @option params [String] :description
    #   <p>The description of the hours of operation.</p>
    # @option params [String] :time_zone
    #   <p>The time zone of the hours of operation.</p>
    # @option params [Array<Types::HoursOfOperationConfig>] :config
    #   <p>Configuration information for the hours of operation: day, start time, and end time.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "HoursOfOperationDescription",
    #     time_zone: "TimeZone", # required
    #     config: [ # required
    #       {
    #         day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_hours_of_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operation_id: "HoursOfOperationId",
    #     hours_of_operation_arn: "ARN"
    #   }
    # @return [Types::CreateHoursOfOperationResponse]
    def create_hours_of_operation(params = {}, options = {})
      request = build_request(:create_hours_of_operation, params)
      request.send_request(options)
    end

    # <p>Creates an hours of operation override in an Amazon Connect hours of operation
    #    resource.</p>
    # @param [Hash, Types::CreateHoursOfOperationOverrideRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation</p>
    # @option params [String] :name
    #   <p>The name of the hours of operation override.</p>
    # @option params [String] :description
    #   <p>The description of the hours of operation override.</p>
    # @option params [Array<Types::HoursOfOperationOverrideConfig>] :config
    #   <p>Configuration information for the hours of operation override: day, start time, and end
    #      time.</p>
    # @option params [String] :effective_from
    #   <p>The date from when the hours of operation override is effective.</p>
    # @option params [String] :effective_till
    #   <p>The date until when the hours of operation override is effective.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     name: "CommonHumanReadableName", # required
    #     description: "CommonHumanReadableDescription",
    #     config: [ # required
    #       {
    #         day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"],
    #         start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         }
    #       }
    #     ],
    #     effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #     effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #   }
    #   options = {}
    #   response = client.create_hours_of_operation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId"
    #   }
    # @return [Types::CreateHoursOfOperationOverrideResponse]
    def create_hours_of_operation_override(params = {}, options = {})
      request = build_request(:create_hours_of_operation_override, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Initiates an Amazon Connect instance with all the supported channels enabled. It does
    #    not attach any storage, such as Amazon Simple Storage Service (Amazon S3) or Amazon Kinesis. It
    #    also does not allow for any configurations on features, such as Contact Lens for Amazon Connect. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-instances.html">Create an Amazon Connect
    #     instance</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #          <p>Amazon Connect enforces a limit on the total number of instances that you can create or delete in 30 days. 
    # If you exceed this limit, you will get an error message indicating there has been an excessive number of attempts at creating or deleting instances. 
    # You must wait 30 days before you can restart creating and deleting instances in your account.</p>
    # @param [Hash, Types::CreateInstanceRequest] params
    # @option params [String] :client_token
    #   <p>The idempotency token.</p>
    # @option params [String] :identity_management_type
    #   <p>The type of identity management for your Amazon Connect users.</p>
    # @option params [String] :instance_alias
    #   <p>The name for your instance.</p>
    # @option params [String] :directory_id
    #   <p>The identifier for the directory.</p>
    # @option params [Boolean] :inbound_calls_enabled
    #   <p>Your contact center handles incoming contacts.</p>
    # @option params [Boolean] :outbound_calls_enabled
    #   <p>Your contact center allows outbound calls.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, <code>{
    #       "tags": {"key1":"value1", "key2":"value2"} }</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     identity_management_type: "SAML" # One of: ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"], # required
    #     instance_alias: "DirectoryAlias",
    #     directory_id: "DirectoryId",
    #     inbound_calls_enabled: false, # required
    #     outbound_calls_enabled: false, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "InstanceId",
    #     arn: "ARN"
    #   }
    # @return [Types::CreateInstanceResponse]
    def create_instance(params = {}, options = {})
      request = build_request(:create_instance, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Web Services resource association with an Amazon Connect
    #    instance.</p>
    # @param [Hash, Types::CreateIntegrationAssociationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :integration_type
    #   <p>The type of information to be ingested.</p>
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    #            <note>
    #               <p>When integrating with Amazon Web Services End User Messaging, the Amazon Connect and
    #        Amazon Web Services End User Messaging instances must be in the same account.</p>
    #            </note>
    # @option params [String] :source_application_url
    #   <p>The URL for the external application. This field is only required for the EVENT integration type.</p>
    # @option params [String] :source_application_name
    #   <p>The name of the external application. This field is only required for the EVENT integration type.</p>
    # @option params [String] :source_type
    #   <p>The type of the data source. This field is only required for the EVENT integration type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     integration_type: "EVENT" # One of: ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE", "WISDOM_QUICK_RESPONSES", "Q_MESSAGE_TEMPLATES", "CASES_DOMAIN", "APPLICATION", "FILE_SCANNER", "SES_IDENTITY", "ANALYTICS_CONNECTOR", "CALL_TRANSFER_CONNECTOR", "COGNITO_USER_POOL"], # required
    #     integration_arn: "ARN", # required
    #     source_application_url: "URI",
    #     source_application_name: "SourceApplicationName",
    #     source_type: "SALESFORCE" # One of: ["SALESFORCE", "ZENDESK", "CASES"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_integration_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_association_id: "IntegrationAssociationId",
    #     integration_association_arn: "ARN"
    #   }
    # @return [Types::CreateIntegrationAssociationResponse]
    def create_integration_association(params = {}, options = {})
      request = build_request(:create_integration_association, params)
      request.send_request(options)
    end

    # <p>Adds a new participant into an on-going chat contact or webRTC call. For more information,
    #    see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html">Customize chat flow experiences by integrating custom participants</a> or <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-multiuser-inapp.html">Enable
    #     multi-user web, in-app, and video calling</a>.</p>
    # @param [Hash, Types::CreateParticipantRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance. </p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect.  Supports contacts in the CHAT channel and VOICE (WebRTC) channels. For WebRTC
    #      calls, this should be the initial contact ID that was generated when the contact was first
    #      created (from the StartWebRTCContact API) in the VOICE channel</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Types::ParticipantDetailsToAdd] :participant_details
    #   <p>Information identifying the participant.</p>
    #            <important>
    #               <p>The only valid value for <code>ParticipantRole</code> is <code>CUSTOM_BOT</code> for chat
    #       contact and <code>CUSTOMER</code> for voice contact.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     client_token: "ClientToken",
    #     participant_details: { # required
    #       participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"],
    #       display_name: "DisplayName",
    #       participant_capabilities: {
    #         video: "SEND" # One of: ["SEND"],
    #         screen_share: "SEND" # One of: ["SEND"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_participant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     participant_credentials: {
    #       participant_token: "ParticipantToken",
    #       expiry: "ISO8601Datetime"
    #     },
    #     participant_id: "ParticipantId"
    #   }
    # @return [Types::CreateParticipantResponse]
    def create_participant(params = {}, options = {})
      request = build_request(:create_participant, params)
      request.send_request(options)
    end

    # <p>Enables rehydration of chats for the lifespan of a contact. For more information about chat
    #    rehydration, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable persistent chat</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. </p>
    # @param [Hash, Types::CreatePersistentContactAssociationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :initial_contact_id
    #   <p>This is the contactId of the current contact that the
    #       <code>CreatePersistentContactAssociation</code> API is being called from.</p>
    # @option params [String] :rehydration_type
    #   <p>The contactId chosen for rehydration depends on the type chosen.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENTIRE_PAST_SESSION</code>: Rehydrates a chat from the most recently terminated past
    #        chat contact of the specified past ended chat session. To use this type, provide the
    #         <code>initialContactId</code> of the past ended chat session in the
    #         <code>sourceContactId</code> field. In this type, Amazon Connect determines what the most
    #        recent chat contact on the past ended chat session and uses it to start a persistent chat.
    #       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FROM_SEGMENT</code>: Rehydrates a chat from the specified past chat contact provided
    #        in the <code>sourceContactId</code> field. </p>
    #               </li>
    #            </ul>
    #            <p>The actual contactId used for rehydration is provided in the response of this API.</p>
    #            <p>To illustrate how to use rehydration type, consider the following example: A customer starts
    #      a chat session. Agent a1 accepts the chat and a conversation starts between the customer and
    #      Agent a1. This first contact creates a contact ID <b>C1</b>. Agent a1
    #      then transfers the chat to Agent a2. This creates another contact ID <b>C2</b>. At this point Agent a2 ends the chat. The customer is forwarded to the
    #      disconnect flow for a post chat survey that creates another contact ID <b>C3</b>. After the chat survey, the chat session ends. Later, the customer returns and
    #      wants to resume their past chat session. At this point, the customer can have following use
    #      cases: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Use Case 1</b>: The customer wants to continue the past chat
    #        session but they want to hide the post chat survey. For this they will use the following
    #        configuration:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Configuration</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>SourceContactId = "C2"</p>
    #                           </li>
    #                           <li>
    #                              <p>RehydrationType = "FROM_SEGMENT"</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Expected behavior</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>This starts a persistent chat session from the specified past ended contact (C2).
    #            Transcripts of past chat sessions C2 and C1 are accessible in the current persistent chat
    #            session. Note that chat segment C3 is dropped from the persistent chat session.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Use Case 2</b>: The customer wants to continue the past chat
    #        session and see the transcript of the entire past engagement, including the post chat survey.
    #        For this they will use the following configuration:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <b>Configuration</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>SourceContactId = "C1"</p>
    #                           </li>
    #                           <li>
    #                              <p>RehydrationType = "ENTIRE_PAST_SESSION"</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <b>Expected behavior</b>
    #                        </p>
    #                        <ul>
    #                           <li>
    #                              <p>This starts a persistent chat session from the most recently ended chat contact (C3).
    #            Transcripts of past chat sessions C3, C2 and C1 are accessible in the current persistent
    #            chat session.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :source_contact_id
    #   <p>The contactId from which a persistent chat session must be started.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     initial_contact_id: "ContactId", # required
    #     rehydration_type: "ENTIRE_PAST_SESSION" # One of: ["ENTIRE_PAST_SESSION", "FROM_SEGMENT"], # required
    #     source_contact_id: "ContactId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_persistent_contact_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continued_from_contact_id: "ContactId"
    #   }
    # @return [Types::CreatePersistentContactAssociationResponse]
    def create_persistent_contact_association(params = {}, options = {})
      request = build_request(:create_persistent_contact_association, params)
      request.send_request(options)
    end

    # <p>Creates a new predefined attribute for the specified Amazon Connect instance. <i>Predefined
    #     attributes</i> are attributes in an Amazon Connect instance that can be used to route
    #    contacts to an agent or pools of agents within a queue. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html">Create
    #     predefined attributes for routing contacts to agents</a>.</p>
    # @param [Hash, Types::CreatePredefinedAttributeRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p> The name of the predefined attribute. </p>
    # @option params [Types::PredefinedAttributeValues] :values
    #   <p> The values of the predefined attribute. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #     values: { # required
    #       # One of:
    #       string_list: ["PredefinedAttributeStringValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_predefined_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_predefined_attribute(params = {}, options = {})
      request = build_request(:create_predefined_attribute, params)
      request.send_request(options)
    end

    # <p>Creates a prompt. For more information about prompts, such as supported file types and
    #    maximum length, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html">Create prompts</a> in the <i>Amazon Connect Administrator
    #    Guide</i>.</p>
    # @param [Hash, Types::CreatePromptRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the prompt.</p>
    # @option params [String] :description
    #   <p>The description of the prompt.</p>
    # @option params [String] :s3_uri
    #   <p>The URI for the S3 bucket where the prompt is stored. You can provide S3 pre-signed URLs returned by the 
    #   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html">GetPromptFile</a>
    #    API instead of providing S3 URIs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "PromptDescription",
    #     s3_uri: "S3Uri", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_arn: "ARN",
    #     prompt_id: "PromptId"
    #   }
    # @return [Types::CreatePromptResponse]
    def create_prompt(params = {}, options = {})
      request = build_request(:create_prompt, params)
      request.send_request(options)
    end

    # <p>Creates registration for a device token and a chat contact to receive real-time push
    #    notifications. For more information about push notifications, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-push-notifications-for-mobile-chat.html">Set up push
    #     notifications in Amazon Connect for mobile chat</a> in the <i>Amazon Connect
    #     Administrator Guide</i>.</p>
    # @param [Hash, Types::CreatePushNotificationRegistrationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :pinpoint_app_arn
    #   <p>The Amazon Resource Name (ARN) of the Pinpoint application.</p>
    # @option params [String] :device_token
    #   <p>The push notification token issued by the Apple or Google gateways.</p>
    # @option params [String] :device_type
    #   <p>The device type to use when sending the message.</p>
    # @option params [Types::ContactConfiguration] :contact_configuration
    #   <p>The contact configuration for push notification registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     pinpoint_app_arn: "ARN", # required
    #     device_token: "DeviceToken", # required
    #     device_type: "GCM" # One of: ["GCM", "APNS", "APNS_SANDBOX"], # required
    #     contact_configuration: { # required
    #       contact_id: "ContactId", # required
    #       participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"],
    #       include_raw_message: false
    #     }
    #   }
    #   options = {}
    #   response = client.create_push_notification_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_id: "RegistrationId", # required
    #   }
    # @return [Types::CreatePushNotificationRegistrationResponse]
    def create_push_notification_registration(params = {}, options = {})
      request = build_request(:create_push_notification_registration, params)
      request.send_request(options)
    end

    # <p>Creates a new queue for the specified Amazon Connect instance.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>If the phone number is claimed to a traffic distribution group that was created in the
    #       same Region as the Amazon Connect instance where you are calling this API, then you can use a
    #       full phone number ARN or a UUID for <code>OutboundCallerIdNumberId</code>. However, if the phone number is claimed
    #       to a traffic distribution group that is in one Region, and you are calling this API from an instance in another Amazon Web Services Region that is associated with the traffic distribution group, you must provide a full phone number ARN. If a
    #       UUID is provided in this scenario, you will receive a
    #       <code>ResourceNotFoundException</code>.</p>
    #                </li>
    #                <li>
    #                   <p>Only use the phone number ARN format that doesn't contain <code>instance</code> in the
    #       path, for example, <code>arn:aws:connect:us-east-1:1234567890:phone-number/uuid</code>. This
    #       is the same ARN format that is returned when you call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html">ListPhoneNumbersV2</a>
    #       API.</p>
    #                </li>
    #                <li>
    #                   <p>If you plan to use IAM policies to allow/deny access to this API for phone
    #       number resources claimed to a traffic distribution group, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region">Allow or Deny queue API actions for phone numbers in a replica Region</a>.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::CreateQueueRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the queue.</p>
    # @option params [String] :description
    #   <p>The description of the queue.</p>
    # @option params [Types::OutboundCallerConfig] :outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    # @option params [Types::OutboundEmailConfig] :outbound_email_config
    #   <p>The outbound email address ID for a specified queue.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @option params [Integer] :max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    # @option params [Array<String>] :quick_connect_ids
    #   <p>The quick connects available to agents who are working the queue.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "QueueDescription",
    #     outbound_caller_config: {
    #       outbound_caller_id_name: "OutboundCallerIdName",
    #       outbound_caller_id_number_id: "PhoneNumberId",
    #       outbound_flow_id: "ContactFlowId"
    #     },
    #     outbound_email_config: {
    #       outbound_email_address_id: "EmailAddressId"
    #     },
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     max_contacts: 1,
    #     quick_connect_ids: ["QuickConnectId"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_arn: "ARN",
    #     queue_id: "QueueId"
    #   }
    # @return [Types::CreateQueueResponse]
    def create_queue(params = {}, options = {})
      request = build_request(:create_queue, params)
      request.send_request(options)
    end

    # <p>Creates a quick connect for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::CreateQuickConnectRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>A unique name of the quick connect.</p>
    # @option params [String] :description
    #   <p>The description of the quick connect.</p>
    # @option params [Types::QuickConnectConfig] :quick_connect_config
    #   <p>Configuration settings for the quick connect.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "QuickConnectName", # required
    #     description: "QuickConnectDescription",
    #     quick_connect_config: { # required
    #       quick_connect_type: "USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"], # required
    #       user_config: {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       queue_config: {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       phone_config: {
    #         phone_number: "PhoneNumber", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_quick_connect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_connect_arn: "ARN",
    #     quick_connect_id: "QuickConnectId"
    #   }
    # @return [Types::CreateQuickConnectResponse]
    def create_quick_connect(params = {}, options = {})
      request = build_request(:create_quick_connect, params)
      request.send_request(options)
    end

    # <p>Creates a new routing profile.</p>
    # @param [Hash, Types::CreateRoutingProfileRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    # @option params [String] :description
    #   <p>Description of the routing profile. Must not be more than 250 characters.</p>
    # @option params [String] :default_outbound_queue_id
    #   <p>The default outbound queue for the routing profile.</p>
    # @option params [Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   <p>The inbound queues associated with the routing profile. If no queue is added, the agent can
    #      make only outbound calls.</p>
    #            <p>The limit of 10 array members applies to the maximum number of
    #       <code>RoutingProfileQueueConfig</code> objects that can be passed during a CreateRoutingProfile
    #      API request. It is different from the quota of 50 queues per routing profile per instance that is
    #      listed in <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect service
    #       quotas</a>. </p>
    # @option params [Array<Types::MediaConcurrency>] :media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP) for this routing
    #      profile.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [String] :agent_availability_timer
    #   <p>Whether agents with this routing profile will have their routing order calculated based on
    #       <i>longest idle time</i> or <i>time since their last inbound
    #       contact</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "RoutingProfileName", # required
    #     description: "RoutingProfileDescription", # required
    #     default_outbound_queue_id: "QueueId", # required
    #     queue_configs: [
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       }
    #     ],
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #         concurrency: 1, # required
    #         cross_channel_behavior: {
    #           behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY" # One of: ["ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"], # required
    #         }
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     agent_availability_timer: "TIME_SINCE_LAST_ACTIVITY" # One of: ["TIME_SINCE_LAST_ACTIVITY", "TIME_SINCE_LAST_INBOUND"]
    #   }
    #   options = {}
    #   response = client.create_routing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_profile_arn: "ARN",
    #     routing_profile_id: "RoutingProfileId"
    #   }
    # @return [Types::CreateRoutingProfileResponse]
    def create_routing_profile(params = {}, options = {})
      request = build_request(:create_routing_profile, params)
      request.send_request(options)
    end

    # <p>Creates a rule for the specified Amazon Connect instance.</p>
    #          <p>Use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html">Rules Function language</a> to
    #    code conditions for the rule. </p>
    # @param [Hash, Types::CreateRuleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>A unique name for the rule.</p>
    # @option params [Types::RuleTriggerEventSource] :trigger_event_source
    #   <p>The event source to trigger the rule.</p>
    # @option params [String] :function
    #   <p>The conditions of the rule.</p>
    # @option params [Array<Types::RuleAction>] :actions
    #   <p>A list of actions to be run when the rule is triggered.</p>
    # @option params [String] :publish_status
    #   <p>The publish status of the rule.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "RuleName", # required
    #     trigger_event_source: { # required
    #       event_source_name: "OnPostCallAnalysisAvailable" # One of: ["OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnRealTimeChatAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit", "OnMetricDataUpdate", "OnCaseCreate", "OnCaseUpdate", "OnSlaBreach"], # required
    #       integration_association_id: "IntegrationAssociationId"
    #     },
    #     function: "RuleFunction", # required
    #     actions: [ # required
    #       {
    #         action_type: "CREATE_TASK" # One of: ["CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION", "CREATE_CASE", "UPDATE_CASE", "ASSIGN_SLA", "END_ASSOCIATED_TASKS", "SUBMIT_AUTO_EVALUATION"], # required
    #         task_action: {
    #           name: "TaskNameExpression", # required
    #           description: "TaskDescriptionExpression",
    #           contact_flow_id: "ContactFlowId", # required
    #           references: {
    #             "ReferenceKey" => {
    #               value: "ReferenceValue",
    #               type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #               status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #               arn: "ReferenceArn",
    #               status_reason: "ReferenceStatusReason"
    #             }
    #           }
    #         },
    #         event_bridge_action: {
    #           name: "EventBridgeActionName", # required
    #         },
    #         assign_contact_category_action: {
    #         },
    #         send_notification_action: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL"], # required
    #           subject: "Subject",
    #           content: "Content", # required
    #           content_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT"], # required
    #           recipient: { # required
    #             user_tags: {
    #               "String" => "String"
    #             },
    #             user_ids: ["UserId"]
    #           }
    #         },
    #         create_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue"
    #               }
    #             }
    #           ],
    #           template_id: "TemplateId", # required
    #         },
    #         update_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue"
    #               }
    #             }
    #           ]
    #         },
    #         assign_sla_action: {
    #           sla_assignment_type: "CASES" # One of: ["CASES"], # required
    #           case_sla_configuration: {
    #             name: "SlaName", # required
    #             type: "CaseField" # One of: ["CaseField"], # required
    #             field_id: "FieldValueId",
    #             target_field_values: [
    #               {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue"
    #               }
    #             ],
    #             target_sla_minutes: 1, # required
    #           }
    #         },
    #         end_associated_tasks_action: {
    #         },
    #         submit_auto_evaluation_action: {
    #           evaluation_form_id: "EvaluationFormId", # required
    #         }
    #       }
    #     ],
    #     publish_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "ARN", # required
    #     rule_id: "RuleId", # required
    #   }
    # @return [Types::CreateRuleResponse]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Creates a security profile.</p>
    #          <p>For information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. For a mapping of the API name and
    #    user interface name of the security profile permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security profile
    #     permissions</a>. </p>
    # @param [Hash, Types::CreateSecurityProfileRequest] params
    # @option params [String] :security_profile_name
    #   <p>The name of the security profile.</p>
    # @option params [String] :description
    #   <p>The description of the security profile.</p>
    # @option params [Array<String>] :permissions
    #   <p>Permissions assigned to the security profile. For a list of valid permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security
    #       profile permissions</a>. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [Hash<String, String>] :allowed_access_control_tags
    #   <p>The list of tags that a security profile uses to restrict access to resources in Amazon Connect.</p>
    # @option params [Array<String>] :tag_restricted_resources
    #   <p>The list of resources that a security profile applies tag restrictions to in Amazon Connect. For a list of Amazon Connect resources that you can tag, see
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html">Add tags to resources
    #       in Amazon Connect</a> in the <i>Amazon Connect Administrator
    #      Guide</i>. </p>
    # @option params [Array<Types::Application>] :applications
    #   <p>A list of third-party applications that the security profile will give access to.</p>
    # @option params [Array<String>] :hierarchy_restricted_resources
    #   <p>The list of resources that a security profile applies hierarchy restrictions to in Amazon Connect. Following are acceptable ResourceNames: <code>User</code>.</p>
    # @option params [String] :allowed_access_control_hierarchy_group_id
    #   <p>The identifier of the hierarchy group that a security profile uses to restrict access to
    #      resources in Amazon Connect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_name: "CreateSecurityProfileName", # required
    #     description: "SecurityProfileDescription",
    #     permissions: ["SecurityProfilePermission"],
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     allowed_access_control_tags: {
    #       "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue"
    #     },
    #     tag_restricted_resources: ["TagRestrictedResourceName"],
    #     applications: [
    #       {
    #         namespace: "Namespace",
    #         application_permissions: ["Permission"]
    #       }
    #     ],
    #     hierarchy_restricted_resources: ["HierarchyRestrictedResourceName"],
    #     allowed_access_control_hierarchy_group_id: "HierarchyGroupId"
    #   }
    #   options = {}
    #   response = client.create_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_id: "SecurityProfileId",
    #     security_profile_arn: "ARN"
    #   }
    # @return [Types::CreateSecurityProfileResponse]
    def create_security_profile(params = {}, options = {})
      request = build_request(:create_security_profile, params)
      request.send_request(options)
    end

    # <p>Creates a new task template in the specified Amazon Connect instance.</p>
    # @param [Hash, Types::CreateTaskTemplateRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the task template.</p>
    # @option params [String] :description
    #   <p>The description of the task template.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    # @option params [String] :self_assign_flow_id
    #   <p>The ContactFlowId for the flow that will be run if this template is used to create a
    #      self-assigned task.</p>
    # @option params [Types::TaskTemplateConstraints] :constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    # @option params [Types::TaskTemplateDefaults] :defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    # @option params [String] :status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created. </p>
    # @option params [Array<Types::TaskTemplateField>] :fields
    #   <p>Fields that are part of the template.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "TaskTemplateName", # required
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     self_assign_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ]
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           },
    #           default_value: "TaskTemplateFieldValue"
    #         }
    #       ]
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     fields: [ # required
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName"
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME" # One of: ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL", "SELF_ASSIGN", "EXPIRY_DURATION"],
    #         single_select_options: ["TaskTemplateSingleSelectOption"]
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_task_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "TaskTemplateId", # required
    #     arn: "TaskTemplateArn", # required
    #   }
    # @return [Types::CreateTaskTemplateResponse]
    def create_task_template(params = {}, options = {})
      request = build_request(:create_task_template, params)
      request.send_request(options)
    end

    # <p>Creates a traffic distribution group given an Amazon Connect instance that has been replicated.</p>
    #          <note>
    #             <p>The <code>SignInConfig</code> distribution is available only on a 
    # default <code>TrafficDistributionGroup</code> (see the <code>IsDefault</code> parameter in the 
    # <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html">TrafficDistributionGroup</a>
    #  data type). If you call
    #     <code>UpdateTrafficDistribution</code> with a modified <code>SignInConfig</code> and a non-default <code>TrafficDistributionGroup</code>,
    #     an <code>InvalidRequestException</code> is returned.</p>
    #          </note>
    #          <p>For more information about creating traffic distribution groups, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html">Set up traffic distribution groups</a> in
    #    the <i>Amazon Connect Administrator Guide</i>. </p>
    # @param [Hash, Types::CreateTrafficDistributionGroupRequest] params
    # @option params [String] :name
    #   <p>The name for the traffic distribution group. </p>
    # @option params [String] :description
    #   <p>A description for the traffic distribution group.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance that has been replicated. You can find the
    #       <code>instanceId</code> in the ARN of the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name128", # required
    #     description: "Description250",
    #     instance_id: "InstanceIdOrArn", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_traffic_distribution_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "TrafficDistributionGroupId",
    #     arn: "TrafficDistributionGroupArn"
    #   }
    # @return [Types::CreateTrafficDistributionGroupResponse]
    def create_traffic_distribution_group(params = {}, options = {})
      request = build_request(:create_traffic_distribution_group, params)
      request.send_request(options)
    end

    # <p>Creates a use case for an integration association.</p>
    # @param [Hash, Types::CreateUseCaseRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    # @option params [String] :use_case_type
    #   <p>The type of use case to associate to the integration association. Each integration
    #      association can have only one of each use case type.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     use_case_type: "RULES_EVALUATION" # One of: ["RULES_EVALUATION", "CONNECT_CAMPAIGNS"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_use_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     use_case_id: "UseCaseId",
    #     use_case_arn: "ARN"
    #   }
    # @return [Types::CreateUseCaseResponse]
    def create_use_case(params = {}, options = {})
      request = build_request(:create_use_case, params)
      request.send_request(options)
    end

    # <p>Creates a user account for the specified Amazon Connect instance.</p>
    #          <important>
    #             <p>Certain <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UserIdentityInfo.html">UserIdentityInfo</a> parameters
    #     are required in some situations. For example, <code>Email</code>, <code>FirstName</code> and
    #      <code>LastName</code> are required if you are using Amazon Connect or SAML for identity
    #     management.</p>
    #          </important>
    #          <p>For information about how to create users using the Amazon Connect admin website, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html">Add Users</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :username
    #   <p>The user name for the account. For instances not using SAML for identity management, the
    #      user name can include up to 20 characters. If you are using SAML for identity management, the
    #      user name can include up to 64 characters from [a-zA-Z0-9_-.\@]+.</p>
    #            <p>Username can include @ only if used in an email format. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>Correct: testuser</p>
    #               </li>
    #               <li>
    #                  <p>Correct: testuser@example.com</p>
    #               </li>
    #               <li>
    #                  <p>Incorrect: testuser@example</p>
    #               </li>
    #            </ul>
    # @option params [String] :password
    #   <p>The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.</p>
    # @option params [Types::UserIdentityInfo] :identity_info
    #   <p>The information about the identity of the user.</p>
    # @option params [Types::UserPhoneConfig] :phone_config
    #   <p>The phone settings for the user.</p>
    # @option params [String] :directory_user_id
    #   <p>The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users.
    #      If you include the identifier, we assume that Amazon Connect cannot access the directory.
    #      Otherwise, the identity information is used to authenticate users from your directory.</p>
    #            <p>This parameter is required if you are using an existing directory for identity management in
    #       Amazon Connect when Amazon Connect cannot access your directory to authenticate users.
    #      If you are using SAML for identity management and include this parameter, an error is
    #      returned.</p>
    # @option params [Array<String>] :security_profile_ids
    #   <p>The identifier of the security profile for the user.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group for the user.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "AgentUsername", # required
    #     password: "Password",
    #     identity_info: {
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #       secondary_email: "Email",
    #       mobile: "PhoneNumber"
    #     },
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE" # One of: ["SOFT_PHONE", "DESK_PHONE"], # required
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber"
    #     },
    #     directory_user_id: "DirectoryUserId",
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     hierarchy_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_id: "UserId",
    #     user_arn: "ARN"
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Creates a new user hierarchy group.</p>
    # @param [Hash, Types::CreateUserHierarchyGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the user hierarchy group. Must not be more than 100 characters.</p>
    # @option params [String] :parent_group_id
    #   <p>The identifier for the parent hierarchy group. The user hierarchy is created at level one if
    #      the parent group ID is null.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "HierarchyGroupName", # required
    #     parent_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_hierarchy_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hierarchy_group_id: "HierarchyGroupId",
    #     hierarchy_group_arn: "ARN"
    #   }
    # @return [Types::CreateUserHierarchyGroupResponse]
    def create_user_hierarchy_group(params = {}, options = {})
      request = build_request(:create_user_hierarchy_group, params)
      request.send_request(options)
    end

    # <p>Creates a new view with the possible status of <code>SAVED</code> or
    #    <code>PUBLISHED</code>.</p>
    #          <p>The views will have a unique name for each connect instance.</p>
    #          <p>It performs basic content validation if the status is <code>SAVED</code> or full content
    #    validation if the status is set to <code>PUBLISHED</code>. An error is returned if validation
    #    fails. It associates either the <code>$SAVED</code> qualifier or both of the <code>$SAVED</code>
    #    and <code>$LATEST</code> qualifiers with the provided view content based on the status. The view
    #    is idempotent if ClientToken is provided.</p>
    # @param [Hash, Types::CreateViewRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique Id for each create view request to avoid duplicate view creation. For example, the
    #      view is idempotent ClientToken is provided.</p>
    # @option params [String] :status
    #   <p>Indicates the view status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content.</p>
    # @option params [Types::ViewInputContent] :content
    #   <p>View content containing all content necessary to render a view except for runtime input
    #      data.</p>
    #            <p>The total uncompressed content has a maximum file size of 400kB.</p>
    # @option params [String] :description
    #   <p>The description of the view.</p>
    # @option params [String] :name
    #   <p>The name of the view.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags associated with the view resource (not specific to view version).These tags can be
    #      used to organize, track, or control access for this resource. For example, { "tags":
    #      {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     client_token: "ViewsClientToken",
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"], # required
    #     content: { # required
    #       template: "ViewTemplate",
    #       actions: ["ViewAction"]
    #     },
    #     description: "ViewDescription",
    #     name: "ViewName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       id: "ViewId",
    #       arn: "ARN",
    #       name: "ViewName",
    #       status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #       type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       description: "ViewDescription",
    #       version: 1,
    #       version_description: "ViewDescription",
    #       content: {
    #         input_schema: "ViewInputSchema",
    #         template: "ViewTemplate",
    #         actions: ["ViewAction"]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       view_content_sha256: "ViewContentSha256"
    #     }
    #   }
    # @return [Types::CreateViewResponse]
    def create_view(params = {}, options = {})
      request = build_request(:create_view, params)
      request.send_request(options)
    end

    # <p>Publishes a new version of the view identifier.</p>
    #          <p>Versions are immutable and monotonically increasing.</p>
    #          <p>It returns the highest version if there is no change in content compared to that version. An
    #    error is displayed if the supplied ViewContentSha256 is different from the ViewContentSha256 of
    #    the <code>$LATEST</code> alias.</p>
    # @param [Hash, Types::CreateViewVersionRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    # @option params [String] :version_description
    #   <p>The description for the version being published.</p>
    # @option params [String] :view_content_sha256
    #   <p>Indicates the checksum value of the latest published view content.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     version_description: "ViewDescription",
    #     view_content_sha256: "ViewContentSha256"
    #   }
    #   options = {}
    #   response = client.create_view_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       id: "ViewId",
    #       arn: "ARN",
    #       name: "ViewName",
    #       status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #       type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       description: "ViewDescription",
    #       version: 1,
    #       version_description: "ViewDescription",
    #       content: {
    #         input_schema: "ViewInputSchema",
    #         template: "ViewTemplate",
    #         actions: ["ViewAction"]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       view_content_sha256: "ViewContentSha256"
    #     }
    #   }
    # @return [Types::CreateViewVersionResponse]
    def create_view_version(params = {}, options = {})
      request = build_request(:create_view_version, params)
      request.send_request(options)
    end

    # <p>Creates a custom vocabulary associated with your Amazon Connect instance. You can set a
    #    custom vocabulary to be your default vocabulary for a given language. Contact Lens for Amazon Connect uses the default
    #    vocabulary in post-call and real-time contact analysis sessions for that language.</p>
    # @param [Hash, Types::CreateVocabularyRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>. If a create request is received more than once with same client token,
    #      subsequent requests return the previous response without creating a vocabulary again.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :vocabulary_name
    #   <p>A unique name of the custom vocabulary.</p>
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    # @option params [String] :content
    #   <p>The content of the custom vocabulary in plain-text format with a table of values. Each row
    #      in the table represents a word or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
    #       <code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the fields with TAB
    #      characters. The size limit is 50KB. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table">Create a custom
    #       vocabulary using a table</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"], # required
    #     content: "VocabularyContent", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_arn: "ARN", # required
    #     vocabulary_id: "VocabularyId", # required
    #     state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"], # required
    #   }
    # @return [Types::CreateVocabularyResponse]
    def create_vocabulary(params = {}, options = {})
      request = build_request(:create_vocabulary, params)
      request.send_request(options)
    end

    # <p>Deactivates an evaluation form in the specified Amazon Connect instance. After a form is deactivated,
    #    it is no longer available for users to start new evaluations based on the form. </p>
    # @param [Hash, Types::DeactivateEvaluationFormRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    # @option params [Integer] :evaluation_form_version
    #   <p>A version of the evaluation form. If the version property is not provided, the latest version of the
    #      evaluation form is deactivated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #   }
    #   options = {}
    #   response = client.deactivate_evaluation_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_arn: "ARN", # required
    #     evaluation_form_version: 1, # required
    #   }
    # @return [Types::DeactivateEvaluationFormResponse]
    def deactivate_evaluation_form(params = {}, options = {})
      request = build_request(:deactivate_evaluation_form, params)
      request.send_request(options)
    end

    # <p>Deletes an attached file along with the underlying S3 Object.</p>
    #          <important>
    #             <p>The attached file is <b>permanently deleted</b> if S3 bucket
    #     versioning is not enabled.</p>
    #          </important>
    # @param [Hash, Types::DeleteAttachedFileRequest] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Connect instance.</p>
    # @option params [String] :file_id
    #   <p>The unique identifier of the attached file resource.</p>
    # @option params [String] :associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html">Cases</a> are the only
    #      current supported resource.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     file_id: "FileId", # required
    #     associated_resource_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.delete_attached_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAttachedFileResponse]
    def delete_attached_file(params = {}, options = {})
      request = build_request(:delete_attached_file, params)
      request.send_request(options)
    end

    # <p>Deletes a contact evaluation in the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DeleteContactEvaluationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.delete_contact_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_contact_evaluation(params = {}, options = {})
      request = build_request(:delete_contact_evaluation, params)
      request.send_request(options)
    end

    # <p>Deletes a flow for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DeleteContactFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   }
    #   options = {}
    #   response = client.delete_contact_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactFlowResponse]
    def delete_contact_flow(params = {}, options = {})
      request = build_request(:delete_contact_flow, params)
      request.send_request(options)
    end

    # <p>Deletes the specified flow module.</p>
    # @param [Hash, Types::DeleteContactFlowModuleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_contact_flow_module(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactFlowModuleResponse]
    def delete_contact_flow_module(params = {}, options = {})
      request = build_request(:delete_contact_flow_module, params)
      request.send_request(options)
    end

    # <p>Deletes the particular version specified in flow version identifier.</p>
    # @param [Hash, Types::DeleteContactFlowVersionRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [Integer] :contact_flow_version
    #   <p>The identifier of the flow version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ARN", # required
    #     contact_flow_version: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_contact_flow_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactFlowVersionResponse]
    def delete_contact_flow_version(params = {}, options = {})
      request = build_request(:delete_contact_flow_version, params)
      request.send_request(options)
    end

    # <p>Deletes email address from the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DeleteEmailAddressRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :email_address_id
    #   <p>The identifier of the email address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     email_address_id: "EmailAddressId", # required
    #   }
    #   options = {}
    #   response = client.delete_email_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEmailAddressResponse]
    def delete_email_address(params = {}, options = {})
      request = build_request(:delete_email_address, params)
      request.send_request(options)
    end

    # <p>Deletes an evaluation form in the specified Amazon Connect instance. </p>
    #          <ul>
    #             <li>
    #                <p>If the version property is provided, only the specified version of the evaluation form is
    #      deleted.</p>
    #             </li>
    #             <li>
    #                <p>If no version is provided, then the full form (all versions) is deleted.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::DeleteEvaluationFormRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    # @option params [Integer] :evaluation_form_version
    #   <p>The unique identifier for the evaluation form.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1
    #   }
    #   options = {}
    #   response = client.delete_evaluation_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_evaluation_form(params = {}, options = {})
      request = build_request(:delete_evaluation_form, params)
      request.send_request(options)
    end

    # <p>Deletes an hours of operation.</p>
    # @param [Hash, Types::DeleteHoursOfOperationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   }
    #   options = {}
    #   response = client.delete_hours_of_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_hours_of_operation(params = {}, options = {})
      request = build_request(:delete_hours_of_operation, params)
      request.send_request(options)
    end

    # <p>Deletes an hours of operation override in an Amazon Connect hours of operation
    #    resource.</p>
    # @param [Hash, Types::DeleteHoursOfOperationOverrideRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @option params [String] :hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId", # required
    #   }
    #   options = {}
    #   response = client.delete_hours_of_operation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_hours_of_operation_override(params = {}, options = {})
      request = build_request(:delete_hours_of_operation_override, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Deletes the Amazon Connect instance. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/delete-connect-instance.html">Delete your
    #      Amazon Connect instance</a> in the <i>Amazon Connect Administrator
    #     Guide</i>.</p>
    #          <p>Amazon Connect enforces a limit on the total number of instances that you can create or delete in 30 days. 
    # If you exceed this limit, you will get an error message indicating there has been an excessive number of attempts at creating or deleting instances. 
    # You must wait 30 days before you can restart creating and deleting instances in your account.</p>
    # @param [Hash, Types::DeleteInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_instance(params = {}, options = {})
      request = build_request(:delete_instance, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Web Services resource association from an Amazon Connect instance. The
    #    association must not have any use cases associated with it.</p>
    # @param [Hash, Types::DeleteIntegrationAssociationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #   }
    #   options = {}
    #   response = client.delete_integration_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_integration_association(params = {}, options = {})
      request = build_request(:delete_integration_association, params)
      request.send_request(options)
    end

    # <p>Deletes a predefined attribute from the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DeletePredefinedAttributeRequest] params
    # @option params [String] :instance_id
    #   <p> The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p> The name of the predefined attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #   }
    #   options = {}
    #   response = client.delete_predefined_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_predefined_attribute(params = {}, options = {})
      request = build_request(:delete_predefined_attribute, params)
      request.send_request(options)
    end

    # <p>Deletes a prompt.</p>
    # @param [Hash, Types::DeletePromptRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :prompt_id
    #   <p>A unique identifier for the prompt.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   }
    #   options = {}
    #   response = client.delete_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_prompt(params = {}, options = {})
      request = build_request(:delete_prompt, params)
      request.send_request(options)
    end

    # <p>Deletes registration for a device token and a chat contact.</p>
    # @param [Hash, Types::DeletePushNotificationRegistrationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :registration_id
    #   <p>The identifier for the registration.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact within the Amazon Connect instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     registration_id: "RegistrationId", # required
    #     contact_id: "ContactId", # required
    #   }
    #   options = {}
    #   response = client.delete_push_notification_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePushNotificationRegistrationResponse]
    def delete_push_notification_registration(params = {}, options = {})
      request = build_request(:delete_push_notification_registration, params)
      request.send_request(options)
    end

    # <p>Deletes a queue.</p>
    # @param [Hash, Types::DeleteQueueRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.delete_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_queue(params = {}, options = {})
      request = build_request(:delete_queue, params)
      request.send_request(options)
    end

    # <p>Deletes a quick connect. </p>
    #          <important>
    #             <p>After calling <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteUser.html">DeleteUser</a>, it's important to
    #     call <code>DeleteQuickConnect</code> to delete any records related to the deleted users. This
    #     will help you:</p>
    #             <ul>
    #                <li>
    #                   <p>Avoid dangling resources that impact your service quotas.</p>
    #                </li>
    #                <li>
    #                   <p>Remove deleted users so they don't appear to agents as transfer options.</p>
    #                </li>
    #                <li>
    #                   <p>Avoid the disruption of other Amazon Connect processes, such as instance replication
    #       and syncing if you're using <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html">Amazon Connect
    #        Global Resiliency</a>. </p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::DeleteQuickConnectRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #   }
    #   options = {}
    #   response = client.delete_quick_connect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_quick_connect(params = {}, options = {})
      request = build_request(:delete_quick_connect, params)
      request.send_request(options)
    end

    # <p>Deletes a routing profile.</p>
    # @param [Hash, Types::DeleteRoutingProfileRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_routing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_routing_profile(params = {}, options = {})
      request = build_request(:delete_routing_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a rule for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DeleteRuleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :rule_id
    #   <p>A unique identifier for the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     rule_id: "RuleId", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a security profile.</p>
    # @param [Hash, Types::DeleteSecurityProfileRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     security_profile_id: "SecurityProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_security_profile(params = {}, options = {})
      request = build_request(:delete_security_profile, params)
      request.send_request(options)
    end

    # <p>Deletes the task template.</p>
    # @param [Hash, Types::DeleteTaskTemplateRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     task_template_id: "TaskTemplateId", # required
    #   }
    #   options = {}
    #   response = client.delete_task_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTaskTemplateResponse]
    def delete_task_template(params = {}, options = {})
      request = build_request(:delete_task_template, params)
      request.send_request(options)
    end

    # <p>Deletes a traffic distribution group. This API can be called only in the Region where the traffic distribution group is
    #    created.</p>
    #          <p>For more information about deleting traffic distribution groups, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html">Delete traffic distribution groups</a> in
    #    the <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::DeleteTrafficDistributionGroupRequest] params
    # @option params [String] :traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_traffic_distribution_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTrafficDistributionGroupResponse]
    def delete_traffic_distribution_group(params = {}, options = {})
      request = build_request(:delete_traffic_distribution_group, params)
      request.send_request(options)
    end

    # <p>Deletes a use case from an integration association.</p>
    # @param [Hash, Types::DeleteUseCaseRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    # @option params [String] :use_case_id
    #   <p>The identifier for the use case.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     use_case_id: "UseCaseId", # required
    #   }
    #   options = {}
    #   response = client.delete_use_case(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_use_case(params = {}, options = {})
      request = build_request(:delete_use_case, params)
      request.send_request(options)
    end

    # <p>Deletes a user account from the specified Amazon Connect instance.</p>
    #          <p>For information about what happens to a user's data when their account is deleted, see
    #     <a href="https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html">Delete Users from
    #     Your Amazon Connect Instance</a> in the <i>Amazon Connect Administrator
    #     Guide</i>.</p>
    #          <important>
    #             <p>After calling DeleteUser, call <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteQuickConnect.html">DeleteQuickConnect</a> to
    #     delete any records related to the deleted users. This will help you:</p>
    #             <ul>
    #                <li>
    #                   <p>Avoid dangling resources that impact your service quotas.</p>
    #                </li>
    #                <li>
    #                   <p>Remove deleted users so they don't appear to agents as transfer options.</p>
    #                </li>
    #                <li>
    #                   <p>Avoid the disruption of other Amazon Connect processes, such as instance replication
    #       and syncing if you're using <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html">Amazon Connect
    #        Global Resiliency</a>. </p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Deletes an existing user hierarchy group. It must not be associated with any agents or have
    #    any active child groups.</p>
    # @param [Hash, Types::DeleteUserHierarchyGroupRequest] params
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.delete_user_hierarchy_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user_hierarchy_group(params = {}, options = {})
      request = build_request(:delete_user_hierarchy_group, params)
      request.send_request(options)
    end

    # <p>Deletes the view entirely. It deletes the view and all associated qualifiers (versions and
    #    aliases).</p>
    # @param [Hash, Types::DeleteViewRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #   }
    #   options = {}
    #   response = client.delete_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteViewResponse]
    def delete_view(params = {}, options = {})
      request = build_request(:delete_view, params)
      request.send_request(options)
    end

    # <p>Deletes the particular version specified in <code>ViewVersion</code> identifier.</p>
    # @param [Hash, Types::DeleteViewVersionRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    # @option params [Integer] :view_version
    #   <p>The version number of the view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     view_version: 1, # required
    #   }
    #   options = {}
    #   response = client.delete_view_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteViewVersionResponse]
    def delete_view_version(params = {}, options = {})
      request = build_request(:delete_view_version, params)
      request.send_request(options)
    end

    # <p>Deletes the vocabulary that has the given identifier.</p>
    # @param [Hash, Types::DeleteVocabularyRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     vocabulary_id: "VocabularyId", # required
    #   }
    #   options = {}
    #   response = client.delete_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_arn: "ARN", # required
    #     vocabulary_id: "VocabularyId", # required
    #     state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"], # required
    #   }
    # @return [Types::DeleteVocabularyResponse]
    def delete_vocabulary(params = {}, options = {})
      request = build_request(:delete_vocabulary, params)
      request.send_request(options)
    end

    # <p>Describes an agent status.</p>
    # @param [Hash, Types::DescribeAgentStatusRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :agent_status_id
    #   <p>The identifier for the agent status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #   }
    #   options = {}
    #   response = client.describe_agent_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_status: {
    #       agent_status_arn: "ARN",
    #       agent_status_id: "AgentStatusId",
    #       name: "AgentStatusName",
    #       description: "AgentStatusDescription",
    #       type: "ROUTABLE" # One of: ["ROUTABLE", "CUSTOM", "OFFLINE"],
    #       display_order: 1,
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeAgentStatusResponse]
    def describe_agent_status(params = {}, options = {})
      request = build_request(:describe_agent_status, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change. To 
    # request access to this API, contact Amazon Web Services Support.</p>
    #          <p>Describes the target authentication profile.</p>
    # @param [Hash, Types::DescribeAuthenticationProfileRequest] params
    # @option params [String] :authentication_profile_id
    #   <p>A unique identifier for the authentication profile. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_profile_id: "AuthenticationProfileId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_authentication_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_profile: {
    #       id: "AuthenticationProfileId",
    #       arn: "ARN",
    #       name: "AuthenticationProfileName",
    #       description: "AuthenticationProfileDescription",
    #       allowed_ips: ["IpCidr"],
    #       blocked_ips: ["IpCidr"],
    #       is_default: false,
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName",
    #       periodic_session_duration: 1,
    #       max_session_duration: 1
    #     }
    #   }
    # @return [Types::DescribeAuthenticationProfileResponse]
    def describe_authentication_profile(params = {}, options = {})
      request = build_request(:describe_authentication_profile, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes the specified contact. </p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <code>SystemEndpoint</code> is not populated for contacts with initiation method of
    #       MONITOR, QUEUE_TRANSFER, or CALLBACK</p>
    #                </li>
    #                <li>
    #                   <p>Contact information remains available in Amazon Connect for 24 months from the
    #        <code>InitiationTimestamp</code>, and then it is deleted. Only contact information that is
    #       available in Amazon Connect is returned by this API.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::DescribeContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   }
    #   options = {}
    #   response = client.describe_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact: {
    #       arn: "ARN",
    #       id: "ContactId",
    #       initial_contact_id: "ContactId",
    #       previous_contact_id: "ContactId",
    #       contact_association_id: "ContactId",
    #       initiation_method: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"],
    #       name: "Name",
    #       description: "Description",
    #       channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"],
    #       queue_info: {
    #         id: "QueueId",
    #         enqueue_timestamp: Time.now
    #       },
    #       agent_info: {
    #         id: "AgentResourceId",
    #         connected_to_agent_timestamp: Time.now,
    #         agent_pause_duration_in_seconds: 1,
    #         hierarchy_groups: {
    #           level1: {
    #             arn: "ARN"
    #           },
    #           level2: {
    #             arn: "ARN"
    #           },
    #           level3: {
    #             arn: "ARN"
    #           },
    #           level4: {
    #             arn: "ARN"
    #           },
    #           level5: {
    #             arn: "ARN"
    #           }
    #         },
    #         device_info: {
    #           platform_name: "PlatformName",
    #           platform_version: "PlatformVersion",
    #           operating_system: "OperatingSystem"
    #         },
    #         capabilities: {
    #           video: "SEND" # One of: ["SEND"],
    #           screen_share: "SEND" # One of: ["SEND"]
    #         },
    #         after_contact_work_duration: 1,
    #         after_contact_work_start_timestamp: Time.now,
    #         after_contact_work_end_timestamp: Time.now,
    #         agent_initiated_hold_duration: 1,
    #         state_transitions: [
    #           {
    #             state: "INITIAL" # One of: ["INITIAL", "CONNECTED", "DISCONNECTED", "MISSED"],
    #             state_start_timestamp: Time.now,
    #             state_end_timestamp: Time.now
    #           }
    #         ]
    #       },
    #       initiation_timestamp: Time.now,
    #       disconnect_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       last_paused_timestamp: Time.now,
    #       last_resumed_timestamp: Time.now,
    #       total_pause_count: 1,
    #       total_pause_duration_in_seconds: 1,
    #       scheduled_timestamp: Time.now,
    #       related_contact_id: "ContactId",
    #       wisdom_info: {
    #         session_arn: "ARN"
    #       },
    #       customer_id: "CustomerId",
    #       customer_endpoint: {
    #         type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #         address: "EndpointAddress",
    #         display_name: "EndpointDisplayName"
    #       },
    #       system_endpoint: {
    #         type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #         address: "EndpointAddress",
    #         display_name: "EndpointDisplayName"
    #       },
    #       queue_time_adjustment_seconds: 1,
    #       queue_priority: 1,
    #       tags: {
    #         "ContactTagKey" => "ContactTagValue"
    #       },
    #       connected_to_system_timestamp: Time.now,
    #       routing_criteria: {
    #         steps: [
    #           {
    #             expiry: {
    #               duration_in_seconds: 1,
    #               expiry_timestamp: Time.now
    #             },
    #             expression: {
    #               attribute_condition: {
    #                 name: "PredefinedAttributeName",
    #                 value: "ProficiencyValue",
    #                 proficiency_level: 1.0,
    #                 range: {
    #                   min_proficiency_level: 1.0,
    #                   max_proficiency_level: 1.0
    #                 },
    #                 match_criteria: {
    #                   agents_criteria: {
    #                     agent_ids: ["AgentId"]
    #                   }
    #                 },
    #                 comparison_operator: "ComparisonOperator"
    #               },
    #               and_expression: [
    #                 {
    #                   # recursive Expression
    #                 }
    #               ],
    #               or_expression: [
    #                 {
    #                   # recursive Expression
    #                 }
    #               ],
    #               not_attribute_condition: {
    #                 name: "PredefinedAttributeName",
    #                 value: "ProficiencyValue",
    #                 proficiency_level: 1.0,
    #                 range: {
    #                   min_proficiency_level: 1.0,
    #                   max_proficiency_level: 1.0
    #                 },
    #                 match_criteria: {
    #                   agents_criteria: {
    #                     agent_ids: ["AgentId"]
    #                   }
    #                 },
    #                 comparison_operator: "ComparisonOperator"
    #               }
    #             },
    #             status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "JOINED", "EXPIRED"]
    #           }
    #         ],
    #         activation_timestamp: Time.now,
    #         index: 1
    #       },
    #       customer: {
    #         device_info: {
    #           platform_name: "PlatformName",
    #           platform_version: "PlatformVersion",
    #           operating_system: "OperatingSystem"
    #         },
    #         capabilities: {
    #           video: "SEND" # One of: ["SEND"],
    #           screen_share: "SEND" # One of: ["SEND"]
    #         }
    #       },
    #       campaign: {
    #         campaign_id: "CampaignId"
    #       },
    #       answering_machine_detection_status: "ANSWERED" # One of: ["ANSWERED", "UNDETECTED", "ERROR", "HUMAN_ANSWERED", "SIT_TONE_DETECTED", "SIT_TONE_BUSY", "SIT_TONE_INVALID_NUMBER", "FAX_MACHINE_DETECTED", "VOICEMAIL_BEEP", "VOICEMAIL_NO_BEEP", "AMD_UNRESOLVED", "AMD_UNANSWERED", "AMD_ERROR", "AMD_NOT_APPLICABLE"],
    #       customer_voice_activity: {
    #         greeting_start_timestamp: Time.now,
    #         greeting_end_timestamp: Time.now
    #       },
    #       quality_metrics: {
    #         agent: {
    #           audio: {
    #             quality_score: 1.0,
    #             potential_quality_issues: ["PotentialAudioQualityIssue"]
    #           }
    #         },
    #         customer: {
    #           audio: {
    #             quality_score: 1.0,
    #             potential_quality_issues: ["PotentialAudioQualityIssue"]
    #           }
    #         }
    #       },
    #       chat_metrics: {
    #         chat_contact_metrics: {
    #           multi_party: false,
    #           total_messages: 1,
    #           total_bot_messages: 1,
    #           total_bot_message_length_in_chars: 1,
    #           conversation_close_time_in_millis: 1,
    #           conversation_turn_count: 1,
    #           agent_first_response_timestamp: Time.now,
    #           agent_first_response_time_in_millis: 1
    #         },
    #         agent_metrics: {
    #           participant_id: "ParticipantId",
    #           participant_type: "ALL" # One of: ["ALL", "MANAGER", "AGENT", "CUSTOMER", "THIRDPARTY"],
    #           conversation_abandon: false,
    #           messages_sent: 1,
    #           num_responses: 1,
    #           message_length_in_chars: 1,
    #           total_response_time_in_millis: 1,
    #           max_response_time_in_millis: 1,
    #           last_message_timestamp: Time.now
    #         },
    #         customer_metrics: {
    #           participant_id: "ParticipantId",
    #           participant_type: "ALL" # One of: ["ALL", "MANAGER", "AGENT", "CUSTOMER", "THIRDPARTY"],
    #           conversation_abandon: false,
    #           messages_sent: 1,
    #           num_responses: 1,
    #           message_length_in_chars: 1,
    #           total_response_time_in_millis: 1,
    #           max_response_time_in_millis: 1,
    #           last_message_timestamp: Time.now
    #         }
    #       },
    #       disconnect_details: {
    #         potential_disconnect_issue: "PotentialDisconnectIssue"
    #       },
    #       additional_email_recipients: {
    #         to_list: [
    #           {
    #             address: "EndpointAddress",
    #             display_name: "EndpointDisplayName"
    #           }
    #         ],
    #         cc_list: [
    #           {
    #             address: "EndpointAddress",
    #             display_name: "EndpointDisplayName"
    #           }
    #         ]
    #       },
    #       segment_attributes: {
    #         "SegmentAttributeName" => {
    #           value_string: "SegmentAttributeValueString",
    #           value_map: {
    #             "SegmentAttributeName" => {
    #               # recursive SegmentAttributeValue
    #             }
    #           },
    #           value_integer: 1
    #         }
    #       },
    #       recordings: [
    #         {
    #           storage_type: "S3" # One of: ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"],
    #           location: "RecordingLocation",
    #           media_stream_type: "AUDIO" # One of: ["AUDIO", "VIDEO"],
    #           participant_type: "ALL" # One of: ["ALL", "MANAGER", "AGENT", "CUSTOMER", "THIRDPARTY"],
    #           fragment_start_number: "FragmentNumber",
    #           fragment_stop_number: "FragmentNumber",
    #           start_timestamp: Time.now,
    #           stop_timestamp: Time.now,
    #           status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED"],
    #           deletion_reason: "RecordingDeletionReason"
    #         }
    #       ],
    #       disconnect_reason: "String",
    #       contact_evaluations: {
    #         "EvaluationId" => {
    #           form_id: "FormId",
    #           evaluation_arn: "EvaluationArn",
    #           status: "COMPLETE" # One of: ["COMPLETE", "IN_PROGRESS", "DELETED"],
    #           start_timestamp: Time.now,
    #           end_timestamp: Time.now,
    #           delete_timestamp: Time.now,
    #           export_location: "ExportLocation"
    #         }
    #       },
    #       contact_details: {
    #         name: "ContactDetailName",
    #         description: "ContactDetailDescription"
    #       },
    #       attributes: {
    #         "AttributeName" => "AttributeValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeContactResponse]
    def describe_contact(params = {}, options = {})
      request = build_request(:describe_contact, params)
      request.send_request(options)
    end

    # <p>Describes a contact evaluation in the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DescribeContactEvaluationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.describe_contact_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation: { # required
    #       evaluation_id: "ResourceId", # required
    #       evaluation_arn: "ARN", # required
    #       metadata: { # required
    #         contact_id: "ContactId", # required
    #         evaluator_arn: "ARN", # required
    #         contact_agent_id: "ResourceId",
    #         score: {
    #           percentage: 1.0,
    #           not_applicable: false,
    #           automatic_fail: false
    #         }
    #       },
    #       answers: { # required
    #         "ResourceId" => {
    #           value: {
    #             # One of:
    #             string_value: "EvaluationAnswerDataStringValue",
    #             numeric_value: 1.0,
    #             not_applicable: false
    #           },
    #           system_suggested_value: {
    #             # One of:
    #             string_value: "EvaluationAnswerDataStringValue",
    #             numeric_value: 1.0,
    #             not_applicable: false
    #           }
    #         }
    #       },
    #       notes: { # required
    #         "ResourceId" => {
    #           value: "EvaluationNoteString"
    #         }
    #       },
    #       status: "DRAFT" # One of: ["DRAFT", "SUBMITTED"], # required
    #       scores: {
    #         "ResourceId" => {
    #           percentage: 1.0,
    #           not_applicable: false,
    #           automatic_fail: false
    #         }
    #       },
    #       created_time: Time.now, # required
    #       last_modified_time: Time.now, # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     evaluation_form: { # required
    #       evaluation_form_version: 1, # required
    #       evaluation_form_id: "ResourceId", # required
    #       evaluation_form_arn: "ARN", # required
    #       title: "EvaluationFormTitle", # required
    #       description: "EvaluationFormDescription",
    #       items: [{ # required
    #         # One of:
    #         section: {
    #           title: "EvaluationFormSectionTitle", # required
    #           ref_id: "ReferenceId", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           items: { # required
    #             # recursive EvaluationFormItemsList
    #           },
    #           weight: 1.0
    #         },
    #         question: {
    #           title: "EvaluationFormQuestionTitle", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           ref_id: "ReferenceId", # required
    #           not_applicable_enabled: false,
    #           question_type: "TEXT" # One of: ["TEXT", "SINGLESELECT", "NUMERIC"], # required
    #           question_type_properties: {
    #             # One of:
    #             numeric: {
    #               min_value: 1, # required
    #               max_value: 1, # required
    #               options: [
    #                 {
    #                   min_value: 1, # required
    #                   max_value: 1, # required
    #                   score: 1,
    #                   automatic_fail: false
    #                 }
    #               ],
    #               automation: {
    #                 # One of:
    #                 property_value: {
    #                   label: "OVERALL_CUSTOMER_SENTIMENT_SCORE" # One of: ["OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"], # required
    #                 }
    #               }
    #             },
    #             single_select: {
    #               options: [ # required
    #                 {
    #                   ref_id: "ReferenceId", # required
    #                   text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                   score: 1,
    #                   automatic_fail: false
    #                 }
    #               ],
    #               display_as: "DROPDOWN" # One of: ["DROPDOWN", "RADIO"],
    #               automation: {
    #                 options: [{ # required
    #                   # One of:
    #                   rule_category: {
    #                     category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                     condition: "PRESENT" # One of: ["PRESENT", "NOT_PRESENT"], # required
    #                     option_ref_id: "ReferenceId", # required
    #                   }
    #                 }],
    #                 default_option_ref_id: "ReferenceId"
    #               }
    #             }
    #           },
    #           weight: 1.0
    #         }
    #       }],
    #       scoring_strategy: {
    #         mode: "QUESTION_ONLY" # One of: ["QUESTION_ONLY", "SECTION_ONLY"], # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeContactEvaluationResponse]
    def describe_contact_evaluation(params = {}, options = {})
      request = build_request(:describe_contact_evaluation, params)
      request.send_request(options)
    end

    # <p>Describes the specified flow.</p>
    #          <p>You can also create and update flows using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #          <p>Use the <code>$SAVED</code> alias in the request to describe the <code>SAVED</code> content
    #    of a Flow. For example, <code>arn:aws:.../contact-flow/{id}:$SAVED</code>. After a flow is
    #    published, <code>$SAVED</code> needs to be supplied to view saved content that has not been
    #    published.</p>
    #          <p>Use <code>arn:aws:.../contact-flow/{id}:{version}</code> to retrieve the content of a
    #    specific flow version.</p>
    #          <p>In the response, <b>Status</b> indicates the flow status as either
    #     <code>SAVED</code> or <code>PUBLISHED</code>. The <code>PUBLISHED</code> status will initiate
    #    validation on the content. <code>SAVED</code> does not initiate validation of the content.
    #     <code>SAVED</code> | <code>PUBLISHED</code>
    #          </p>
    # @param [Hash, Types::DescribeContactFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   }
    #   options = {}
    #   response = client.describe_contact_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow: {
    #       arn: "ARN",
    #       id: "ContactFlowId",
    #       name: "ContactFlowName",
    #       type: "CONTACT_FLOW" # One of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"],
    #       state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #       status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #       description: "ContactFlowDescription",
    #       content: "ContactFlowContent",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       flow_content_sha256: "FlowContentSha256",
    #       version: 1,
    #       version_description: "ContactFlowDescription",
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeContactFlowResponse]
    def describe_contact_flow(params = {}, options = {})
      request = build_request(:describe_contact_flow, params)
      request.send_request(options)
    end

    # <p>Describes the specified flow module.</p>
    #          <p>Use the <code>$SAVED</code> alias in the request to describe the <code>SAVED</code> content
    #    of a Flow. For example, <code>arn:aws:.../contact-flow/{id}:$SAVED</code>. After a flow is
    #    published, <code>$SAVED</code> needs to be supplied to view saved content that has not been
    #    published.</p>
    # @param [Hash, Types::DescribeContactFlowModuleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #   }
    #   options = {}
    #   response = client.describe_contact_flow_module(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_module: {
    #       arn: "ARN",
    #       id: "ContactFlowModuleId",
    #       name: "ContactFlowModuleName",
    #       content: "ContactFlowModuleContent",
    #       description: "ContactFlowModuleDescription",
    #       state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #       status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeContactFlowModuleResponse]
    def describe_contact_flow_module(params = {}, options = {})
      request = build_request(:describe_contact_flow_module, params)
      request.send_request(options)
    end

    # <p>Describe email address form the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DescribeEmailAddressRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :email_address_id
    #   <p>The identifier of the email address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     email_address_id: "EmailAddressId", # required
    #   }
    #   options = {}
    #   response = client.describe_email_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_address_id: "EmailAddressId",
    #     email_address_arn: "EmailAddressArn",
    #     email_address: "EmailAddress",
    #     display_name: "EmailAddressDisplayName",
    #     description: "Description",
    #     create_timestamp: "ISO8601Datetime",
    #     modified_timestamp: "ISO8601Datetime",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::DescribeEmailAddressResponse]
    def describe_email_address(params = {}, options = {})
      request = build_request(:describe_email_address, params)
      request.send_request(options)
    end

    # <p>Describes an evaluation form in the specified Amazon Connect instance. If the version
    #    property is not provided, the latest version of the evaluation form is described.</p>
    # @param [Hash, Types::DescribeEvaluationFormRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_form_id
    #   <p>A unique identifier for the contact evaluation.</p>
    # @option params [Integer] :evaluation_form_version
    #   <p>A version of the evaluation form.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1
    #   }
    #   options = {}
    #   response = client.describe_evaluation_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form: { # required
    #       evaluation_form_id: "ResourceId", # required
    #       evaluation_form_version: 1, # required
    #       locked: false, # required
    #       evaluation_form_arn: "ARN", # required
    #       title: "EvaluationFormTitle", # required
    #       description: "EvaluationFormDescription",
    #       status: "DRAFT" # One of: ["DRAFT", "ACTIVE"], # required
    #       items: [{ # required
    #         # One of:
    #         section: {
    #           title: "EvaluationFormSectionTitle", # required
    #           ref_id: "ReferenceId", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           items: { # required
    #             # recursive EvaluationFormItemsList
    #           },
    #           weight: 1.0
    #         },
    #         question: {
    #           title: "EvaluationFormQuestionTitle", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           ref_id: "ReferenceId", # required
    #           not_applicable_enabled: false,
    #           question_type: "TEXT" # One of: ["TEXT", "SINGLESELECT", "NUMERIC"], # required
    #           question_type_properties: {
    #             # One of:
    #             numeric: {
    #               min_value: 1, # required
    #               max_value: 1, # required
    #               options: [
    #                 {
    #                   min_value: 1, # required
    #                   max_value: 1, # required
    #                   score: 1,
    #                   automatic_fail: false
    #                 }
    #               ],
    #               automation: {
    #                 # One of:
    #                 property_value: {
    #                   label: "OVERALL_CUSTOMER_SENTIMENT_SCORE" # One of: ["OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"], # required
    #                 }
    #               }
    #             },
    #             single_select: {
    #               options: [ # required
    #                 {
    #                   ref_id: "ReferenceId", # required
    #                   text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                   score: 1,
    #                   automatic_fail: false
    #                 }
    #               ],
    #               display_as: "DROPDOWN" # One of: ["DROPDOWN", "RADIO"],
    #               automation: {
    #                 options: [{ # required
    #                   # One of:
    #                   rule_category: {
    #                     category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                     condition: "PRESENT" # One of: ["PRESENT", "NOT_PRESENT"], # required
    #                     option_ref_id: "ReferenceId", # required
    #                   }
    #                 }],
    #                 default_option_ref_id: "ReferenceId"
    #               }
    #             }
    #           },
    #           weight: 1.0
    #         }
    #       }],
    #       scoring_strategy: {
    #         mode: "QUESTION_ONLY" # One of: ["QUESTION_ONLY", "SECTION_ONLY"], # required
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       },
    #       created_time: Time.now, # required
    #       created_by: "ARN", # required
    #       last_modified_time: Time.now, # required
    #       last_modified_by: "ARN", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeEvaluationFormResponse]
    def describe_evaluation_form(params = {}, options = {})
      request = build_request(:describe_evaluation_form, params)
      request.send_request(options)
    end

    # <p>Describes the hours of operation.</p>
    # @param [Hash, Types::DescribeHoursOfOperationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   }
    #   options = {}
    #   response = client.describe_hours_of_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operation: {
    #       hours_of_operation_id: "HoursOfOperationId",
    #       hours_of_operation_arn: "ARN",
    #       name: "CommonNameLength127",
    #       description: "HoursOfOperationDescription",
    #       time_zone: "TimeZone",
    #       config: [
    #         {
    #           day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #           start_time: { # required
    #             hours: 1, # required
    #             minutes: 1, # required
    #           },
    #           end_time: { # required
    #             hours: 1, # required
    #             minutes: 1, # required
    #           }
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeHoursOfOperationResponse]
    def describe_hours_of_operation(params = {}, options = {})
      request = build_request(:describe_hours_of_operation, params)
      request.send_request(options)
    end

    # <p>Describes the hours of operation override.</p>
    # @param [Hash, Types::DescribeHoursOfOperationOverrideRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @option params [String] :hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId", # required
    #   }
    #   options = {}
    #   response = client.describe_hours_of_operation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operation_override: {
    #       hours_of_operation_override_id: "HoursOfOperationOverrideId",
    #       hours_of_operation_id: "HoursOfOperationId",
    #       hours_of_operation_arn: "ARN",
    #       name: "CommonHumanReadableName",
    #       description: "CommonHumanReadableDescription",
    #       config: [
    #         {
    #           day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"],
    #           start_time: {
    #             hours: 1, # required
    #             minutes: 1, # required
    #           },
    #           end_time: {
    #             hours: 1, # required
    #             minutes: 1, # required
    #           }
    #         }
    #       ],
    #       effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #       effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat"
    #     }
    #   }
    # @return [Types::DescribeHoursOfOperationOverrideResponse]
    def describe_hours_of_operation_override(params = {}, options = {})
      request = build_request(:describe_hours_of_operation_override, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns the current state of the specified instance identifier. It tracks the instance while
    #    it is being created and returns an error status, if applicable. </p>
    #          <p>If an instance is not created successfully, the instance status reason field returns details
    #    relevant to the reason. The instance in a failed state is returned only for 24 hours after the
    #    CreateInstance API was invoked.</p>
    # @param [Hash, Types::DescribeInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance: {
    #       id: "InstanceId",
    #       arn: "ARN",
    #       identity_management_type: "SAML" # One of: ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"],
    #       instance_alias: "DirectoryAlias",
    #       created_time: Time.now,
    #       service_role: "ARN",
    #       instance_status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"],
    #       status_reason: {
    #         message: "String"
    #       },
    #       inbound_calls_enabled: false,
    #       outbound_calls_enabled: false,
    #       instance_access_url: "Url",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     },
    #     replication_configuration: {
    #       replication_status_summary_list: [
    #         {
    #           region: "AwsRegion",
    #           replication_status: "INSTANCE_REPLICATION_COMPLETE" # One of: ["INSTANCE_REPLICATION_COMPLETE", "INSTANCE_REPLICATION_IN_PROGRESS", "INSTANCE_REPLICATION_FAILED", "INSTANCE_REPLICA_DELETING", "INSTANCE_REPLICATION_DELETION_FAILED", "RESOURCE_REPLICATION_NOT_STARTED"],
    #           replication_status_reason: "ReplicationStatusReason"
    #         }
    #       ],
    #       source_region: "AwsRegion",
    #       global_sign_in_endpoint: "GlobalSignInEndpoint"
    #     }
    #   }
    # @return [Types::DescribeInstanceResponse]
    def describe_instance(params = {}, options = {})
      request = build_request(:describe_instance, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Describes the specified instance attribute.</p>
    # @param [Hash, Types::DescribeInstanceAttributeRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :attribute_type
    #   <p>The type of attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     attribute_type: "INBOUND_CALLS" # One of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING", "ENHANCED_CHAT_MONITORING", "MULTI_PARTY_CHAT_CONFERENCE"], # required
    #   }
    #   options = {}
    #   response = client.describe_instance_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attribute: {
    #       attribute_type: "INBOUND_CALLS" # One of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING", "ENHANCED_CHAT_MONITORING", "MULTI_PARTY_CHAT_CONFERENCE"],
    #       value: "InstanceAttributeValue"
    #     }
    #   }
    # @return [Types::DescribeInstanceAttributeResponse]
    def describe_instance_attribute(params = {}, options = {})
      request = build_request(:describe_instance_attribute, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Retrieves the current storage configurations for the specified resource type, association
    #    ID, and instance ID.</p>
    # @param [Hash, Types::DescribeInstanceStorageConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS" # One of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS", "ATTACHMENTS", "CONTACT_EVALUATIONS", "SCREEN_RECORDINGS", "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS", "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS", "EMAIL_MESSAGES"], # required
    #   }
    #   options = {}
    #   response = client.describe_instance_storage_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_config: {
    #       association_id: "AssociationId",
    #       storage_type: "S3" # One of: ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"], # required
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS" # One of: ["KMS"], # required
    #           key_id: "KeyId", # required
    #         }
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS" # One of: ["KMS"], # required
    #           key_id: "KeyId", # required
    #         }
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeInstanceStorageConfigResponse]
    def describe_instance_storage_config(params = {}, options = {})
      request = build_request(:describe_instance_storage_config, params)
      request.send_request(options)
    end

    # <p>Gets details and status of a phone number that’s claimed to your Amazon Connect instance
    #    or traffic distribution group.</p>
    #          <important>
    #             <p>If the number is claimed to a traffic distribution group, and you are calling in the Amazon Web Services Region
    #     where the traffic distribution group was created, you can use either a phone number ARN or UUID value for the
    #      <code>PhoneNumberId</code> URI request parameter. However, if the number is claimed to a traffic distribution group
    #     and you are calling this API in the alternate Amazon Web Services Region associated with the
    #     traffic distribution group, you must provide a full phone number ARN. If a UUID is provided
    #     in
    #     this scenario, you receive a <code>ResourceNotFoundException</code>.</p>
    #          </important>
    # @param [Hash, Types::DescribePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberId", # required
    #   }
    #   options = {}
    #   response = client.describe_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     claimed_phone_number_summary: {
    #       phone_number_id: "PhoneNumberId",
    #       phone_number_arn: "ARN",
    #       phone_number: "PhoneNumber",
    #       phone_number_country_code: "AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"],
    #       phone_number_type: "TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"],
    #       phone_number_description: "PhoneNumberDescription",
    #       target_arn: "ARN",
    #       instance_id: "InstanceId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       phone_number_status: {
    #         status: "CLAIMED" # One of: ["CLAIMED", "IN_PROGRESS", "FAILED"],
    #         message: "PhoneNumberWorkflowMessage"
    #       },
    #       source_phone_number_arn: "ARN"
    #     }
    #   }
    # @return [Types::DescribePhoneNumberResponse]
    def describe_phone_number(params = {}, options = {})
      request = build_request(:describe_phone_number, params)
      request.send_request(options)
    end

    # <p>Describes a predefined attribute for the specified Amazon Connect instance. <i>Predefined
    #     attributes</i> are attributes in an Amazon Connect instance that can be used to route
    #    contacts to an agent or pools of agents within a queue. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html">Create
    #     predefined attributes for routing contacts to agents</a>.</p>
    # @param [Hash, Types::DescribePredefinedAttributeRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the predefined attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #   }
    #   options = {}
    #   response = client.describe_predefined_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predefined_attribute: {
    #       name: "PredefinedAttributeName",
    #       values: {
    #         # One of:
    #         string_list: ["PredefinedAttributeStringValue"]
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribePredefinedAttributeResponse]
    def describe_predefined_attribute(params = {}, options = {})
      request = build_request(:describe_predefined_attribute, params)
      request.send_request(options)
    end

    # <p>Describes the prompt.</p>
    # @param [Hash, Types::DescribePromptRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :prompt_id
    #   <p>A unique identifier for the prompt.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   }
    #   options = {}
    #   response = client.describe_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt: {
    #       prompt_arn: "ARN",
    #       prompt_id: "PromptId",
    #       name: "CommonNameLength127",
    #       description: "PromptDescription",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribePromptResponse]
    def describe_prompt(params = {}, options = {})
      request = build_request(:describe_prompt, params)
      request.send_request(options)
    end

    # <p>Describes the specified queue.</p>
    # @param [Hash, Types::DescribeQueueRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.describe_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue: {
    #       name: "CommonNameLength127",
    #       queue_arn: "ARN",
    #       queue_id: "QueueId",
    #       description: "QueueDescription",
    #       outbound_caller_config: {
    #         outbound_caller_id_name: "OutboundCallerIdName",
    #         outbound_caller_id_number_id: "PhoneNumberId",
    #         outbound_flow_id: "ContactFlowId"
    #       },
    #       outbound_email_config: {
    #         outbound_email_address_id: "EmailAddressId"
    #       },
    #       hours_of_operation_id: "HoursOfOperationId",
    #       max_contacts: 1,
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeQueueResponse]
    def describe_queue(params = {}, options = {})
      request = build_request(:describe_queue, params)
      request.send_request(options)
    end

    # <p>Describes the quick connect.</p>
    # @param [Hash, Types::DescribeQuickConnectRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #   }
    #   options = {}
    #   response = client.describe_quick_connect(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_connect: {
    #       quick_connect_arn: "ARN",
    #       quick_connect_id: "QuickConnectId",
    #       name: "QuickConnectName",
    #       description: "QuickConnectDescription",
    #       quick_connect_config: {
    #         quick_connect_type: "USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"], # required
    #         user_config: {
    #           user_id: "UserId", # required
    #           contact_flow_id: "ContactFlowId", # required
    #         },
    #         queue_config: {
    #           queue_id: "QueueId", # required
    #           contact_flow_id: "ContactFlowId", # required
    #         },
    #         phone_config: {
    #           phone_number: "PhoneNumber", # required
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeQuickConnectResponse]
    def describe_quick_connect(params = {}, options = {})
      request = build_request(:describe_quick_connect, params)
      request.send_request(options)
    end

    # <p>Describes the specified routing profile.</p>
    #          <note>
    #             <p>
    #                <code>DescribeRoutingProfile</code> does not populate AssociatedQueueIds in its response.
    #     The example Response Syntax shown on this page is incorrect; we are working to update it. <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html">SearchRoutingProfiles</a> does include AssociatedQueueIds.</p>
    #          </note>
    # @param [Hash, Types::DescribeRoutingProfileRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   }
    #   options = {}
    #   response = client.describe_routing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_profile: {
    #       instance_id: "InstanceId",
    #       name: "RoutingProfileName",
    #       routing_profile_arn: "ARN",
    #       routing_profile_id: "RoutingProfileId",
    #       description: "RoutingProfileDescription",
    #       media_concurrencies: [
    #         {
    #           channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #           concurrency: 1, # required
    #           cross_channel_behavior: {
    #             behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY" # One of: ["ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"], # required
    #           }
    #         }
    #       ],
    #       default_outbound_queue_id: "QueueId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       number_of_associated_queues: 1,
    #       number_of_associated_users: 1,
    #       agent_availability_timer: "TIME_SINCE_LAST_ACTIVITY" # One of: ["TIME_SINCE_LAST_ACTIVITY", "TIME_SINCE_LAST_INBOUND"],
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName",
    #       is_default: false,
    #       associated_queue_ids: ["QueueId"]
    #     }
    #   }
    # @return [Types::DescribeRoutingProfileResponse]
    def describe_routing_profile(params = {}, options = {})
      request = build_request(:describe_routing_profile, params)
      request.send_request(options)
    end

    # <p>Describes a rule for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DescribeRuleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :rule_id
    #   <p>A unique identifier for the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     rule_id: "RuleId", # required
    #   }
    #   options = {}
    #   response = client.describe_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: { # required
    #       name: "RuleName", # required
    #       rule_id: "RuleId", # required
    #       rule_arn: "ARN", # required
    #       trigger_event_source: { # required
    #         event_source_name: "OnPostCallAnalysisAvailable" # One of: ["OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnRealTimeChatAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit", "OnMetricDataUpdate", "OnCaseCreate", "OnCaseUpdate", "OnSlaBreach"], # required
    #         integration_association_id: "IntegrationAssociationId"
    #       },
    #       function: "RuleFunction", # required
    #       actions: [ # required
    #         {
    #           action_type: "CREATE_TASK" # One of: ["CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION", "CREATE_CASE", "UPDATE_CASE", "ASSIGN_SLA", "END_ASSOCIATED_TASKS", "SUBMIT_AUTO_EVALUATION"], # required
    #           task_action: {
    #             name: "TaskNameExpression", # required
    #             description: "TaskDescriptionExpression",
    #             contact_flow_id: "ContactFlowId", # required
    #             references: {
    #               "ReferenceKey" => {
    #                 value: "ReferenceValue",
    #                 type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #                 status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #                 arn: "ReferenceArn",
    #                 status_reason: "ReferenceStatusReason"
    #               }
    #             }
    #           },
    #           event_bridge_action: {
    #             name: "EventBridgeActionName", # required
    #           },
    #           assign_contact_category_action: {
    #           },
    #           send_notification_action: {
    #             delivery_method: "EMAIL" # One of: ["EMAIL"], # required
    #             subject: "Subject",
    #             content: "Content", # required
    #             content_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT"], # required
    #             recipient: { # required
    #               user_tags: {
    #                 "String" => "String"
    #               },
    #               user_ids: ["UserId"]
    #             }
    #           },
    #           create_case_action: {
    #             fields: [ # required
    #               {
    #                 id: "FieldValueId", # required
    #                 value: { # required
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   empty_value: {
    #                   },
    #                   string_value: "FieldStringValue"
    #                 }
    #               }
    #             ],
    #             template_id: "TemplateId", # required
    #           },
    #           update_case_action: {
    #             fields: [ # required
    #               {
    #                 id: "FieldValueId", # required
    #                 value: { # required
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   empty_value: {
    #                   },
    #                   string_value: "FieldStringValue"
    #                 }
    #               }
    #             ]
    #           },
    #           assign_sla_action: {
    #             sla_assignment_type: "CASES" # One of: ["CASES"], # required
    #             case_sla_configuration: {
    #               name: "SlaName", # required
    #               type: "CaseField" # One of: ["CaseField"], # required
    #               field_id: "FieldValueId",
    #               target_field_values: [
    #                 {
    #                   boolean_value: false,
    #                   double_value: 1.0,
    #                   empty_value: {
    #                   },
    #                   string_value: "FieldStringValue"
    #                 }
    #               ],
    #               target_sla_minutes: 1, # required
    #             }
    #           },
    #           end_associated_tasks_action: {
    #           },
    #           submit_auto_evaluation_action: {
    #             evaluation_form_id: "EvaluationFormId", # required
    #           }
    #         }
    #       ],
    #       publish_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED"], # required
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       last_updated_by: "ARN", # required
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeRuleResponse]
    def describe_rule(params = {}, options = {})
      request = build_request(:describe_rule, params)
      request.send_request(options)
    end

    # <p>Gets basic information about the security profile.</p>
    #          <p>For information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. For a mapping of the API name and
    #    user interface name of the security profile permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security profile
    #     permissions</a>. </p>
    # @param [Hash, Types::DescribeSecurityProfileRequest] params
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile: {
    #       id: "SecurityProfileId",
    #       organization_resource_id: "InstanceId",
    #       arn: "ARN",
    #       security_profile_name: "SecurityProfileName",
    #       description: "SecurityProfileDescription",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       allowed_access_control_tags: {
    #         "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue"
    #       },
    #       tag_restricted_resources: ["TagRestrictedResourceName"],
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName",
    #       hierarchy_restricted_resources: ["HierarchyRestrictedResourceName"],
    #       allowed_access_control_hierarchy_group_id: "HierarchyGroupId"
    #     }
    #   }
    # @return [Types::DescribeSecurityProfileResponse]
    def describe_security_profile(params = {}, options = {})
      request = build_request(:describe_security_profile, params)
      request.send_request(options)
    end

    # <p>Gets details and status of a traffic distribution group.</p>
    # @param [Hash, Types::DescribeTrafficDistributionGroupRequest] params
    # @option params [String] :traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.describe_traffic_distribution_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     traffic_distribution_group: {
    #       id: "TrafficDistributionGroupId",
    #       arn: "TrafficDistributionGroupArn",
    #       name: "Name128",
    #       description: "Description250",
    #       instance_arn: "InstanceArn",
    #       status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "PENDING_DELETION", "DELETION_FAILED", "UPDATE_IN_PROGRESS"],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       is_default: false
    #     }
    #   }
    # @return [Types::DescribeTrafficDistributionGroupResponse]
    def describe_traffic_distribution_group(params = {}, options = {})
      request = build_request(:describe_traffic_distribution_group, params)
      request.send_request(options)
    end

    # <p>Describes the specified user. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID in the Amazon Connect console</a> (it’s the final part of the ARN). The console does not display the
    #    user IDs. Instead, list the users and note the IDs provided in the output.</p>
    # @param [Hash, Types::DescribeUserRequest] params
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       id: "UserId",
    #       arn: "ARN",
    #       username: "AgentUsername",
    #       identity_info: {
    #         first_name: "AgentFirstName",
    #         last_name: "AgentLastName",
    #         email: "Email",
    #         secondary_email: "Email",
    #         mobile: "PhoneNumber"
    #       },
    #       phone_config: {
    #         phone_type: "SOFT_PHONE" # One of: ["SOFT_PHONE", "DESK_PHONE"], # required
    #         auto_accept: false,
    #         after_contact_work_time_limit: 1,
    #         desk_phone_number: "PhoneNumber"
    #       },
    #       directory_user_id: "DirectoryUserId",
    #       security_profile_ids: ["SecurityProfileId"],
    #       routing_profile_id: "RoutingProfileId",
    #       hierarchy_group_id: "HierarchyGroupId",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeUserResponse]
    def describe_user(params = {}, options = {})
      request = build_request(:describe_user, params)
      request.send_request(options)
    end

    # <p>Describes the specified hierarchy group.</p>
    # @param [Hash, Types::DescribeUserHierarchyGroupRequest] params
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_user_hierarchy_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hierarchy_group: {
    #       id: "HierarchyGroupId",
    #       arn: "ARN",
    #       name: "HierarchyGroupName",
    #       level_id: "HierarchyLevelId",
    #       hierarchy_path: {
    #         level_one: {
    #           id: "HierarchyGroupId",
    #           arn: "ARN",
    #           name: "HierarchyGroupName",
    #           last_modified_time: Time.now,
    #           last_modified_region: "RegionName"
    #         },
    #         level_two: {
    #           id: "HierarchyGroupId",
    #           arn: "ARN",
    #           name: "HierarchyGroupName",
    #           last_modified_time: Time.now,
    #           last_modified_region: "RegionName"
    #         },
    #         level_three: {
    #           id: "HierarchyGroupId",
    #           arn: "ARN",
    #           name: "HierarchyGroupName",
    #           last_modified_time: Time.now,
    #           last_modified_region: "RegionName"
    #         },
    #         level_four: {
    #           id: "HierarchyGroupId",
    #           arn: "ARN",
    #           name: "HierarchyGroupName",
    #           last_modified_time: Time.now,
    #           last_modified_region: "RegionName"
    #         },
    #         level_five: {
    #           id: "HierarchyGroupId",
    #           arn: "ARN",
    #           name: "HierarchyGroupName",
    #           last_modified_time: Time.now,
    #           last_modified_region: "RegionName"
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       last_modified_time: Time.now,
    #       last_modified_region: "RegionName"
    #     }
    #   }
    # @return [Types::DescribeUserHierarchyGroupResponse]
    def describe_user_hierarchy_group(params = {}, options = {})
      request = build_request(:describe_user_hierarchy_group, params)
      request.send_request(options)
    end

    # <p>Describes the hierarchy structure of the specified Amazon Connect instance.</p>
    # @param [Hash, Types::DescribeUserHierarchyStructureRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.describe_user_hierarchy_structure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hierarchy_structure: {
    #       level_one: {
    #         id: "HierarchyLevelId",
    #         arn: "ARN",
    #         name: "HierarchyLevelName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       },
    #       level_two: {
    #         id: "HierarchyLevelId",
    #         arn: "ARN",
    #         name: "HierarchyLevelName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       },
    #       level_three: {
    #         id: "HierarchyLevelId",
    #         arn: "ARN",
    #         name: "HierarchyLevelName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       },
    #       level_four: {
    #         id: "HierarchyLevelId",
    #         arn: "ARN",
    #         name: "HierarchyLevelName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       },
    #       level_five: {
    #         id: "HierarchyLevelId",
    #         arn: "ARN",
    #         name: "HierarchyLevelName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     }
    #   }
    # @return [Types::DescribeUserHierarchyStructureResponse]
    def describe_user_hierarchy_structure(params = {}, options = {})
      request = build_request(:describe_user_hierarchy_structure, params)
      request.send_request(options)
    end

    # <p>Retrieves the view for the specified Amazon Connect instance and view identifier.</p>
    #          <p>The view identifier can be supplied as a ViewId or ARN.</p>
    #          <p>
    #             <code>$SAVED</code> needs to be supplied if a view is unpublished.</p>
    #          <p>The view identifier can contain an optional qualifier, for example,
    #     <code><view-id>:$SAVED</code>, which is either an actual version number or an Amazon Connect managed qualifier <code>$SAVED | $LATEST</code>. If it is not supplied, then
    #     <code>$LATEST</code> is assumed for customer managed views and an error is returned if there is
    #    no published content available. Version 1 is assumed for Amazon Web Services managed views.</p>
    # @param [Hash, Types::DescribeViewRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The ViewId of the view. This must be an ARN for Amazon Web Services managed views.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #   }
    #   options = {}
    #   response = client.describe_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       id: "ViewId",
    #       arn: "ARN",
    #       name: "ViewName",
    #       status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #       type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       description: "ViewDescription",
    #       version: 1,
    #       version_description: "ViewDescription",
    #       content: {
    #         input_schema: "ViewInputSchema",
    #         template: "ViewTemplate",
    #         actions: ["ViewAction"]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       view_content_sha256: "ViewContentSha256"
    #     }
    #   }
    # @return [Types::DescribeViewResponse]
    def describe_view(params = {}, options = {})
      request = build_request(:describe_view, params)
      request.send_request(options)
    end

    # <p>Describes the specified vocabulary.</p>
    # @param [Hash, Types::DescribeVocabularyRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :vocabulary_id
    #   <p>The identifier of the custom vocabulary.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     vocabulary_id: "VocabularyId", # required
    #   }
    #   options = {}
    #   response = client.describe_vocabulary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary: { # required
    #       name: "VocabularyName", # required
    #       id: "VocabularyId", # required
    #       arn: "ARN", # required
    #       language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"], # required
    #       state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"], # required
    #       last_modified_time: Time.now, # required
    #       failure_reason: "VocabularyFailureReason",
    #       content: "VocabularyContent",
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::DescribeVocabularyResponse]
    def describe_vocabulary(params = {}, options = {})
      request = build_request(:describe_vocabulary, params)
      request.send_request(options)
    end

    # <p>Removes the dataset ID associated with a given Amazon Connect instance.</p>
    # @param [Hash, Types::DisassociateAnalyticsDataSetRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :data_set_id
    #   <p>The identifier of the dataset to remove.</p>
    # @option params [String] :target_account_id
    #   <p>The identifier of the target account.  Use to associate a dataset to a different account than the one containing
    #      the Amazon Connect instance. If not specified, by default this value is the Amazon Web Services account that has the Amazon Connect instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     data_set_id: "DataSetId", # required
    #     target_account_id: "AWSAccountId"
    #   }
    #   options = {}
    #   response = client.disassociate_analytics_data_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_analytics_data_set(params = {}, options = {})
      request = build_request(:disassociate_analytics_data_set, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Revokes access to integrated applications from Amazon Connect.</p>
    # @param [Hash, Types::DisassociateApprovedOriginRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :origin
    #   <p>The domain URL of the integrated application.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     origin: "Origin", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_approved_origin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_approved_origin(params = {}, options = {})
      request = build_request(:disassociate_approved_origin, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Revokes authorization from the specified instance to access the specified Amazon Lex or Amazon Lex V2
    #    bot. </p>
    # @param [Hash, Types::DisassociateBotRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::LexBot] :lex_bot
    #   <p>Configuration information of an Amazon Lex bot.</p>
    # @option params [Types::LexV2Bot] :lex_v2_bot
    #   <p>The Amazon Lex V2 bot to disassociate from the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     lex_bot: {
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     lex_v2_bot: {
    #       alias_arn: "AliasArn"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_bot(params = {}, options = {})
      request = build_request(:disassociate_bot, params)
      request.send_request(options)
    end

    # <p>Disassociates a connect resource from a flow.</p>
    # @param [Hash, Types::DisassociateFlowRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_id: "ARN", # required
    #     resource_type: "SMS_PHONE_NUMBER" # One of: ["SMS_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR", "WHATSAPP_MESSAGING_PHONE_NUMBER"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateFlowResponse]
    def disassociate_flow(params = {}, options = {})
      request = build_request(:disassociate_flow, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Removes the storage type configurations for the specified resource type and association
    #    ID.</p>
    # @param [Hash, Types::DisassociateInstanceStorageConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS" # One of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS", "ATTACHMENTS", "CONTACT_EVALUATIONS", "SCREEN_RECORDINGS", "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS", "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS", "EMAIL_MESSAGES"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_instance_storage_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_instance_storage_config(params = {}, options = {})
      request = build_request(:disassociate_instance_storage_config, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Remove the Lambda function from the dropdown options available in the relevant
    #    flow blocks.</p>
    # @param [Hash, Types::DisassociateLambdaFunctionRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance..</p>
    # @option params [String] :function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function being disassociated.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     function_arn: "FunctionArn", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_lambda_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_lambda_function(params = {}, options = {})
      request = build_request(:disassociate_lambda_function, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Revokes authorization from the specified instance to access the specified Amazon Lex
    #    bot.</p>
    # @param [Hash, Types::DisassociateLexBotRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot. Maximum character limit of 50.</p>
    # @option params [String] :lex_region
    #   <p>The Amazon Web Services Region in which the Amazon Lex bot has been created.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     bot_name: "BotName", # required
    #     lex_region: "LexRegion", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_lex_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_lex_bot(params = {}, options = {})
      request = build_request(:disassociate_lex_bot, params)
      request.send_request(options)
    end

    # <p>Removes the flow association from a phone number claimed to your Amazon Connect
    #    instance.</p>
    #          <important>
    #             <p>If the number is claimed to a traffic distribution group, and you are calling this API using an instance in the
    #      Amazon Web Services Region where the traffic distribution group was created, you can use either a full phone number
    #     ARN or UUID value for the <code>PhoneNumberId</code> URI request parameter. However, if the
    #     number is claimed to a traffic distribution group and you are calling this API using an instance in the alternate
    #      Amazon Web Services Region associated with the traffic distribution group, you must provide a full phone number ARN.
    #     If a UUID is provided in this scenario, you will receive a
    #      <code>ResourceNotFoundException</code>.</p>
    #          </important>
    # @param [Hash, Types::DisassociatePhoneNumberContactFlowRequest] params
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_phone_number_contact_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_phone_number_contact_flow(params = {}, options = {})
      request = build_request(:disassociate_phone_number_contact_flow, params)
      request.send_request(options)
    end

    # <p>Disassociates a set of quick connects from a queue.</p>
    # @param [Hash, Types::DisassociateQueueQuickConnectsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [Array<String>] :quick_connect_ids
    #   <p>The quick connects to disassociate from the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     quick_connect_ids: ["QuickConnectId"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_queue_quick_connects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_queue_quick_connects(params = {}, options = {})
      request = build_request(:disassociate_queue_quick_connects, params)
      request.send_request(options)
    end

    # <p>Disassociates a set of queues from a routing profile.</p>
    # @param [Hash, Types::DisassociateRoutingProfileQueuesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [Array<Types::RoutingProfileQueueReference>] :queue_references
    #   <p>The queues to disassociate from this routing profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_references: [ # required
    #       {
    #         queue_id: "QueueId", # required
    #         channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_routing_profile_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_routing_profile_queues(params = {}, options = {})
      request = build_request(:disassociate_routing_profile_queues, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Deletes the specified security key.</p>
    # @param [Hash, Types::DisassociateSecurityKeyRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_security_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_security_key(params = {}, options = {})
      request = build_request(:disassociate_security_key, params)
      request.send_request(options)
    end

    # <p>Disassociates an agent from a traffic distribution group. This API can be called only in the
    #    Region where the traffic distribution group is created.</p>
    # @param [Hash, Types::DisassociateTrafficDistributionGroupUserRequest] params
    # @option params [String] :traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN of the traffic distribution group.</p>
    # @option params [String] :user_id
    #   <p>The identifier for the user. This can be the ID or the ARN of the user.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_traffic_distribution_group_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisassociateTrafficDistributionGroupUserResponse]
    def disassociate_traffic_distribution_group_user(params = {}, options = {})
      request = build_request(:disassociate_traffic_distribution_group_user, params)
      request.send_request(options)
    end

    # <p>Disassociates a set of proficiencies from a user.</p>
    # @param [Hash, Types::DisassociateUserProficienciesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [Array<Types::UserProficiencyDisassociate>] :user_proficiencies
    #   <p>The proficiencies to disassociate from the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     user_proficiencies: [ # required
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_user_proficiencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disassociate_user_proficiencies(params = {}, options = {})
      request = build_request(:disassociate_user_proficiencies, params)
      request.send_request(options)
    end

    # <p>Dismisses contacts from an agent’s CCP and returns the agent to an available state, which
    #    allows the agent to receive a new routed contact. Contacts can only be dismissed if they are in a
    #     <code>MISSED</code>, <code>ERROR</code>, <code>ENDED</code>, or <code>REJECTED</code> state in
    #    the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html">Agent
    #     Event Stream</a>.</p>
    # @param [Hash, Types::DismissUserContactRequest] params
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of the
    #      instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   }
    #   options = {}
    #   response = client.dismiss_user_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DismissUserContactResponse]
    def dismiss_user_contact(params = {}, options = {})
      request = build_request(:dismiss_user_contact, params)
      request.send_request(options)
    end

    # <p>Provides a pre-signed URL for download of an approved attached file. This API also returns
    #    metadata about the attached file. It will only return a downloadURL if the status of the attached
    #    file is <code>APPROVED</code>.</p>
    # @param [Hash, Types::GetAttachedFileRequest] params
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Connect instance.</p>
    # @option params [String] :file_id
    #   <p>The unique identifier of the attached file resource.</p>
    # @option params [Integer] :url_expiry_in_seconds
    #   <p>Optional override for the expiry of the pre-signed S3 URL in seconds. The default value is
    #      300.</p>
    # @option params [String] :associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     file_id: "FileId", # required
    #     url_expiry_in_seconds: 1,
    #     associated_resource_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.get_attached_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_arn: "ARN",
    #     file_id: "FileId",
    #     creation_time: "ISO8601Datetime",
    #     file_status: "APPROVED" # One of: ["APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #     file_name: "FileName",
    #     file_size_in_bytes: 1, # required
    #     associated_resource_arn: "ARN",
    #     file_use_case_type: "EMAIL_MESSAGE" # One of: ["EMAIL_MESSAGE", "ATTACHMENT"],
    #     created_by: {
    #       # One of:
    #       connect_user_arn: "ARN",
    #       aws_identity_arn: "ARN"
    #     },
    #     download_url_metadata: {
    #       url: "MetadataUrl",
    #       url_expiry: "ISO8601Datetime"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetAttachedFileResponse]
    def get_attached_file(params = {}, options = {})
      request = build_request(:get_attached_file, params)
      request.send_request(options)
    end

    # <p>Retrieves the contact attributes for the specified contact.</p>
    # @param [Hash, Types::GetContactAttributesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the initial contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     initial_contact_id: "ContactId", # required
    #   }
    #   options = {}
    #   response = client.get_contact_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     }
    #   }
    # @return [Types::GetContactAttributesResponse]
    def get_contact_attributes(params = {}, options = {})
      request = build_request(:get_contact_attributes, params)
      request.send_request(options)
    end

    # <p>Gets the real-time metrics of the specified contact.</p>
    #          <p>
    #             <b>Use cases</b>
    #          </p>
    #          <p>Following are common uses cases for this API:</p>
    #          <ul>
    #             <li>
    #                <p>You can use this API to retrieve the position of the contact in the queue.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Endpoints</b>: See <a href="https://docs.aws.amazon.com/general/latest/gr/connect_region.html">Amazon Connect endpoints and
    #    quotas</a>.</p>
    # @param [Hash, Types::GetContactMetricsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Array<Types::ContactMetricInfo>] :metrics
    #   <p>A list of contact-level metrics to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceIdOrArn", # required
    #     contact_id: "InstanceIdOrArn", # required
    #     metrics: [ # required
    #       {
    #         name: "POSITION_IN_QUEUE" # One of: ["POSITION_IN_QUEUE"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_contact_metrics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     metric_results: [
    #       {
    #         name: "POSITION_IN_QUEUE" # One of: ["POSITION_IN_QUEUE"], # required
    #         value: { # required
    #           # One of:
    #           number: 1.0
    #         }
    #       }
    #     ],
    #     id: "ContactId",
    #     arn: "ARN"
    #   }
    # @return [Types::GetContactMetricsResponse]
    def get_contact_metrics(params = {}, options = {})
      request = build_request(:get_contact_metrics, params)
      request.send_request(options)
    end

    # <p>Gets the real-time metric data from the specified Amazon Connect instance.</p>
    #          <p>For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics definitions</a> in the
    #      <i>Amazon Connect Administrator Guide</i>.</p>
    #          <note>
    #             <p>When you make a successful API request, you can expect the following metric values in the
    #     response:</p>
    #             <ol>
    #                <li>
    #                   <p>
    #                      <b>Metric value is null</b>: The calculation cannot be
    #       performed due to divide by zero or insufficient data</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Metric value is a number (including 0) of defined type</b>:
    #       The number provided is the calculation result</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>MetricResult list is empty</b>: The request cannot find any
    #       data in the system</p>
    #                </li>
    #             </ol>
    #             <p>The following guidelines can help you work with the API:</p>
    #             <ul>
    #                <li>
    #                   <p>Each dimension in the metric response must contain a value</p>
    #                </li>
    #                <li>
    #                   <p>Each item in MetricResult must include all requested metrics</p>
    #                </li>
    #                <li>
    #                   <p>If the response is slow due to large result sets, try these approaches:</p>
    #                   <ul>
    #                      <li>
    #                         <p>Add filters to reduce the amount of data returned</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetCurrentMetricDataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::Filters] :filters
    #   <p>The filters to apply to returned metrics. You can filter up to the following limits:</p>
    #            <ul>
    #               <li>
    #                  <p>Queues: 100</p>
    #               </li>
    #               <li>
    #                  <p>Routing profiles: 100</p>
    #               </li>
    #               <li>
    #                  <p>Channels: 3 (VOICE, CHAT, and TASK channels are supported.)</p>
    #               </li>
    #               <li>
    #                  <p>RoutingStepExpressions: 50</p>
    #               </li>
    #               <li>
    #                  <p>AgentStatuses: 50</p>
    #               </li>
    #            </ul>
    #            <p>Metric data is retrieved only for the resources associated with the queues or routing
    #      profiles, and by any channels included in the filter. (You cannot filter by both queue AND
    #      routing profile.) You can include both resource IDs and resource ARNs in the same request.</p>
    #            <p>When using <code>AgentStatuses</code> as filter make sure Queues is added as primary
    #      filter.</p>
    #            <p>When using the <code>RoutingStepExpression</code> filter, you need to pass exactly one
    #       <code>QueueId</code>. The filter is also case sensitive so when using the
    #       <code>RoutingStepExpression</code> filter, grouping by <code>ROUTING_STEP_EXPRESSION</code> is
    #      required.</p>
    #            <p>Currently tagging is only supported on the resources that are passed in the filter.</p>
    # @option params [Array<String>] :groupings
    #   <p>Defines the level of aggregation for metrics data by a dimension(s). Its similar to sorting
    #      items into buckets based on a common characteristic, then counting or calculating something for
    #      each bucket. For example, when grouped by <code>QUEUE</code>, the metrics returned apply to each
    #      queue rather than aggregated for all queues. </p>
    #            <p>The grouping list is an ordered list, with the first item in the list defined as the primary
    #      grouping. If no grouping is included in the request, the aggregation happens at the
    #      instance-level.</p>
    #            <ul>
    #               <li>
    #                  <p>If you group by <code>CHANNEL</code>, you should include a Channels filter.
    #        VOICE, CHAT, and TASK channels are supported.</p>
    #               </li>
    #               <li>
    #                  <p>If you group by <code>AGENT_STATUS</code>, you must include the <code>QUEUE</code> as the
    #        primary grouping and use queue filter. When you group by <code>AGENT_STATUS</code>, the only
    #        metric available is the <code>AGENTS_ONLINE</code> metric.</p>
    #               </li>
    #               <li>
    #                  <p>If you group by <code>ROUTING_PROFILE</code>, you must include either a queue or routing
    #        profile filter. In addition, a routing profile filter is required for metrics
    #         <code>CONTACTS_SCHEDULED</code>, <code>CONTACTS_IN_QUEUE</code>, and <code>
    #         OLDEST_CONTACT_AGE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>When using the <code>RoutingStepExpression</code> filter, group by
    #         <code>ROUTING_STEP_EXPRESSION</code> is required.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::CurrentMetric>] :current_metrics
    #   <p>The metrics to retrieve. Specify the name and unit for each metric. The following metrics
    #      are available. For a description of all the metrics, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics definitions</a> in the
    #        <i>Amazon Connect Administrator Guide</i>.</p>
    #            <dl>
    #               <dt>AGENTS_AFTER_CONTACT_WORK</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aftercallwork-real-time">ACW</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#available-real-time">Available</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ERROR</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-real-time">Error</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_NON_PRODUCTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-productive-time-real-time">NPT
    #          (Non-Productive Time)</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CALL</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#on-call-real-time">On
    #         contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ON_CONTACT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#on-call-real-time">On
    #         contact</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_ONLINE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-real-time">Online</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENTS_STAFFED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#staffed-real-time">Staffed</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_IN_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#in-queue-real-time">In
    #         queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_SCHEDULED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-real-time">Scheduled</a>
    #                  </p>
    #               </dd>
    #               <dt>OLDEST_CONTACT_AGE</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>When you use groupings, Unit says SECONDS and the Value is returned in SECONDS. </p>
    #                  <p>When you do not use groupings, Unit says SECONDS but the Value is returned in
    #         MILLISECONDS. For example, if you get a response like this:</p>
    #                  <p>
    #                     <code>{ "Metric": { "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" }, "Value": 24113.0
    #         </code>}</p>
    #                  <p>The actual OLDEST_CONTACT_AGE is 24 seconds.</p>
    #                  <p>When the filter <code>RoutingStepExpression</code> is used, this metric is still
    #         calculated from enqueue time. For example, if a contact that has been queued under
    #          <code><Expression 1></code> for 10 seconds has expired and <code><Expression 2></code>
    #         becomes active, then <code>OLDEST_CONTACT_AGE</code> for this queue will be counted starting
    #         from 10, not 0.</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#oldest-real-time">Oldest</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_ACTIVE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#active-real-time">Active</a>
    #                  </p>
    #               </dd>
    #               <dt>SLOTS_AVAILABLE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Name in real-time metrics report: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#availability-real-time">Availability</a>
    #                  </p>
    #               </dd>
    #            </dl>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use
    #      the token must use the same request parameters as the request that generated the token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Array<Types::CurrentMetricSortCriteria>] :sort_criteria
    #   <p>The way to sort the resulting response based on metrics. You can enter one sort criteria. By
    #      default resources are sorted based on <code>AGENTS_ONLINE</code>, <code>DESCENDING</code>. The
    #      metric collection is sorted based on the input metrics.</p>
    #            <p>Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Sorting on <code>SLOTS_ACTIVE</code> and <code>SLOTS_AVAILABLE</code> is not
    #        supported.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"]],
    #       routing_profiles: ["RoutingProfileId"],
    #       routing_step_expressions: ["RoutingExpression"],
    #       agent_statuses: ["AgentStatusId"]
    #     },
    #     groupings: ["QUEUE" # One of: ["QUEUE", "CHANNEL", "ROUTING_PROFILE", "ROUTING_STEP_EXPRESSION", "AGENT_STATUS"]],
    #     current_metrics: [ # required
    #       {
    #         name: "AGENTS_ONLINE" # One of: ["AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"],
    #         unit: "SECONDS" # One of: ["SECONDS", "COUNT", "PERCENT"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_criteria: [
    #       {
    #         sort_by_metric: "AGENTS_ONLINE" # One of: ["AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"],
    #         sort_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.get_current_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     metric_results: [
    #       {
    #         dimensions: {
    #           queue: {
    #             id: "QueueId",
    #             arn: "ARN"
    #           },
    #           channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"],
    #           routing_profile: {
    #             id: "RoutingProfileId",
    #             arn: "ARN"
    #           },
    #           routing_step_expression: "RoutingExpression",
    #           agent_status: {
    #             arn: "ARN",
    #             id: "AgentStatusId"
    #           }
    #         },
    #         collections: [
    #           {
    #             metric: {
    #               name: "AGENTS_ONLINE" # One of: ["AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"],
    #               unit: "SECONDS" # One of: ["SECONDS", "COUNT", "PERCENT"]
    #             },
    #             value: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     data_snapshot_time: Time.now,
    #     approximate_total_count: 1
    #   }
    # @return [Types::GetCurrentMetricDataResponse]
    def get_current_metric_data(params = {}, options = {})
      request = build_request(:get_current_metric_data, params)
      request.send_request(options)
    end

    # <p>Gets the real-time active user data from the specified Amazon Connect instance. </p>
    # @param [Hash, Types::GetCurrentUserDataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::UserDataFilters] :filters
    #   <p>The filters to apply to returned user data. You can filter up to the following
    #      limits:</p>
    #            <ul>
    #               <li>
    #                  <p>Queues: 100</p>
    #               </li>
    #               <li>
    #                  <p>Routing profiles: 100</p>
    #               </li>
    #               <li>
    #                  <p>Agents: 100</p>
    #               </li>
    #               <li>
    #                  <p>Contact states: 9</p>
    #               </li>
    #               <li>
    #                  <p>User hierarchy groups: 1</p>
    #               </li>
    #            </ul>
    #            <p> The user data is retrieved for only the specified values/resources in the filter. A maximum
    #      of one filter can be passed from queues, routing profiles, agents, and user hierarchy groups. </p>
    #            <p>Currently tagging is only supported on the resources that are passed in the filter.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       contact_filter: {
    #         contact_states: ["INCOMING" # One of: ["INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"]]
    #       },
    #       routing_profiles: ["RoutingProfileId"],
    #       agents: ["UserId"],
    #       user_hierarchy_groups: ["HierarchyGroupId"]
    #     },
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_current_user_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     user_data_list: [
    #       {
    #         user: {
    #           id: "UserId",
    #           arn: "ARN"
    #         },
    #         routing_profile: {
    #           id: "RoutingProfileId",
    #           arn: "ARN"
    #         },
    #         hierarchy_path: {
    #           level_one: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN"
    #           },
    #           level_two: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN"
    #           },
    #           level_three: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN"
    #           },
    #           level_four: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN"
    #           },
    #           level_five: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN"
    #           }
    #         },
    #         status: {
    #           status_start_timestamp: Time.now,
    #           status_arn: "ARN",
    #           status_name: "AgentStatusName"
    #         },
    #         available_slots_by_channel: {
    #           "Channel" => 1
    #         },
    #         max_slots_by_channel: {
    #           "Channel" => 1
    #         },
    #         active_slots_by_channel: {
    #           "Channel" => 1
    #         },
    #         contacts: [
    #           {
    #             contact_id: "ContactId",
    #             channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"],
    #             initiation_method: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"],
    #             agent_contact_state: "INCOMING" # One of: ["INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"],
    #             state_start_timestamp: Time.now,
    #             connected_to_agent_timestamp: Time.now,
    #             queue: {
    #               id: "QueueId",
    #               arn: "ARN"
    #             }
    #           }
    #         ],
    #         next_status: "AgentStatusName"
    #       }
    #     ],
    #     approximate_total_count: 1
    #   }
    # @return [Types::GetCurrentUserDataResponse]
    def get_current_user_data(params = {}, options = {})
      request = build_request(:get_current_user_data, params)
      request.send_request(options)
    end

    # <p>Get the hours of operations with the effective override applied.</p>
    # @param [Hash, Types::GetEffectiveHoursOfOperationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @option params [String] :from_date
    #   <p>The date from when the hours of operation are listed.</p>
    # @option params [String] :to_date
    #   <p>The date until when the hours of operation are listed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     from_date: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #     to_date: "HoursOfOperationOverrideYearMonthDayDateFormat", # required
    #   }
    #   options = {}
    #   response = client.get_effective_hours_of_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effective_hours_of_operation_list: [
    #       {
    #         date: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #         operational_hours: [
    #           {
    #             start: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     time_zone: "TimeZone"
    #   }
    # @return [Types::GetEffectiveHoursOfOperationsResponse]
    def get_effective_hours_of_operations(params = {}, options = {})
      request = build_request(:get_effective_hours_of_operations, params)
      request.send_request(options)
    end

    # <p>Supports SAML sign-in for Amazon Connect. Retrieves a token for federation. The token is
    #    for the Amazon Connect user which corresponds to the IAM credentials that were
    #    used to invoke this action. </p>
    #          <p>For more information about how SAML sign-in works in Amazon Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/configure-saml.html ">Configure SAML with
    #      IAM for Amazon Connect in the <i>Amazon Connect Administrator
    #      Guide</i>.</a>
    #          </p>
    #          <note>
    #             <p>This API doesn't support root users. If you try to invoke GetFederationToken with root
    #     credentials, an error message similar to the following one appears: </p>
    #             <p>
    #                <code>Provided identity: Principal: .... User: .... cannot be used for federation with
    #       Amazon Connect</code>
    #             </p>
    #          </note>
    # @param [Hash, Types::GetFederationTokenRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.get_federation_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       access_token: "SecurityToken",
    #       access_token_expiration: Time.now,
    #       refresh_token: "SecurityToken",
    #       refresh_token_expiration: Time.now
    #     },
    #     sign_in_url: "Url",
    #     user_arn: "ARN",
    #     user_id: "AgentResourceId"
    #   }
    # @return [Types::GetFederationTokenResponse]
    def get_federation_token(params = {}, options = {})
      request = build_request(:get_federation_token, params)
      request.send_request(options)
    end

    # <p>Retrieves the flow associated for a given resource.</p>
    # @param [Hash, Types::GetFlowAssociationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource.</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging SMS phone number ARN when using
    #         <code>SMS_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services End User Messaging Social phone number ARN when using
    #         <code>WHATSAPP_MESSAGING_PHONE_NUMBER</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_id: "ARN", # required
    #     resource_type: "SMS_PHONE_NUMBER" # One of: ["SMS_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR", "WHATSAPP_MESSAGING_PHONE_NUMBER"], # required
    #   }
    #   options = {}
    #   response = client.get_flow_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_id: "ARN",
    #     flow_id: "ARN",
    #     resource_type: "SMS_PHONE_NUMBER" # One of: ["SMS_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR", "WHATSAPP_MESSAGING_PHONE_NUMBER"]
    #   }
    # @return [Types::GetFlowAssociationResponse]
    def get_flow_association(params = {}, options = {})
      request = build_request(:get_flow_association, params)
      request.send_request(options)
    end

    # <p>Gets historical metric data from the specified Amazon Connect instance.</p>
    #          <p>For a description of each historical metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics definitions</a> in the
    #      <i>Amazon Connect Administrator Guide</i>.</p>
    #          <note>
    #             <p>We recommend using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html">GetMetricDataV2</a> API. It
    #     provides more flexibility, features, and the ability to query longer time ranges than
    #      <code>GetMetricData</code>. Use it to retrieve historical agent and contact metrics for the
    #     last 3 months, at varying intervals. You can also use it to build custom dashboards to measure
    #     historical queue and agent performance. For example, you can track the number of incoming
    #     contacts for the last 7 days, with data split by day, to see how contact volume changed per day
    #     of the week.</p>
    #          </note>
    # @param [Hash, Types::GetMetricDataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes,
    #      such as 10:05, 10:10, 10:15.</p>
    #            <p>The start time cannot be earlier than 24 hours before the time of the request. Historical
    #      metrics are available only for 24 hours.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
    #      retrieval of historical metrics data. The time must be specified using an interval of 5 minutes,
    #      such as 11:00, 11:05, 11:10, and must be later than the start time timestamp.</p>
    #            <p>The time range between the start and end time must be less than 24 hours.</p>
    # @option params [Types::Filters] :filters
    #   <p>The queues, up to 100, or channels, to use to filter the metrics returned. Metric data is
    #      retrieved only for the resources associated with the queues or channels included in the filter.
    #      You can include both queue IDs and queue ARNs in the same request. VOICE, CHAT, and TASK channels are supported.</p>
    #            <p>RoutingStepExpression is not a valid filter for GetMetricData and we recommend switching to
    #      GetMetricDataV2 for more up-to-date features.</p>
    #            <note>
    #               <p>To filter by <code>Queues</code>, enter the queue
    #       ID/ARN, not the name of the queue.</p>
    #            </note>
    # @option params [Array<String>] :groupings
    #   <p>The grouping applied to the metrics returned. For example, when results are grouped by
    #      queue, the metrics returned are grouped by queue. The values returned apply to the metrics for
    #      each queue rather than aggregated for all queues.</p>
    #            <p>If no grouping is specified, a summary of metrics for all queues is returned.</p>
    #            <p>RoutingStepExpression is not a valid filter for GetMetricData and we recommend switching to
    #      GetMetricDataV2 for more up-to-date features.</p>
    # @option params [Array<Types::HistoricalMetric>] :historical_metrics
    #   <p>The metrics to retrieve. Specify the name, unit, and statistic for each metric. The
    #      following historical metrics are available. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics
    #       definition</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <note>
    #               <p>This API does not support a contacts
    #       incoming metric (there's no CONTACTS_INCOMING metric missing from the documented list). </p>
    #            </note>
    #            <dl>
    #               <dt>ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #               <dt>AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">After
    #          contact work time</a>
    #                  </p>
    #               </dd>
    #               <dt>API_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled">API contacts
    #          handled</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time">Average
    #          customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>CALLBACK_CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-contacts-handled">Callback
    #          contacts handled</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned">Contacts
    #          abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-agent-hung-up-first">Contacts agent hung up first</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_CONSULTED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-consulted">Contacts
    #          consulted</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled">Contacts
    #          handled</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_INCOMING</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-incoming">Contacts
    #          handled incoming</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_OUTBOUND</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-outbound">Contacts
    #          handled outbound</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect">Contacts
    #          hold disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_MISSED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response">AGENT_NON_RESPONSE</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued">Contacts
    #          queued</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-in">Contacts
    #          transferred in</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out">Contacts
    #          transferred out</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: COUNT</p>
    #                  <p>Statistic: SUM</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time">Average handle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time">Average agent interaction and customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#aaverage-agent-interaction-time">Average agent interaction time</a>
    #                  </p>
    #               </dd>
    #               <dt>OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy">Occupancy</a>
    #                  </p>
    #               </dd>
    #               <dt>QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html##average-queue-answer-time">Average
    #          queue answer time</a>
    #                  </p>
    #               </dd>
    #               <dt>QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: SECONDS</p>
    #                  <p>Statistic: MAX</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time">Minimum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: PERCENT</p>
    #                  <p>Statistic: AVG</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>LT</code> (for
    #         "Less than"). </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #            </dl>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"]],
    #       routing_profiles: ["RoutingProfileId"],
    #       routing_step_expressions: ["RoutingExpression"],
    #       agent_statuses: ["AgentStatusId"]
    #     },
    #     groupings: ["QUEUE" # One of: ["QUEUE", "CHANNEL", "ROUTING_PROFILE", "ROUTING_STEP_EXPRESSION", "AGENT_STATUS"]],
    #     historical_metrics: [ # required
    #       {
    #         name: "CONTACTS_QUEUED" # One of: ["CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"],
    #         threshold: {
    #           comparison: "LT" # One of: ["LT"],
    #           threshold_value: 1.0
    #         },
    #         statistic: "SUM" # One of: ["SUM", "MAX", "AVG"],
    #         unit: "SECONDS" # One of: ["SECONDS", "COUNT", "PERCENT"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_metric_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     metric_results: [
    #       {
    #         dimensions: {
    #           queue: {
    #             id: "QueueId",
    #             arn: "ARN"
    #           },
    #           channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"],
    #           routing_profile: {
    #             id: "RoutingProfileId",
    #             arn: "ARN"
    #           },
    #           routing_step_expression: "RoutingExpression",
    #           agent_status: {
    #             arn: "ARN",
    #             id: "AgentStatusId"
    #           }
    #         },
    #         collections: [
    #           {
    #             metric: {
    #               name: "CONTACTS_QUEUED" # One of: ["CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"],
    #               threshold: {
    #                 comparison: "LT" # One of: ["LT"],
    #                 threshold_value: 1.0
    #               },
    #               statistic: "SUM" # One of: ["SUM", "MAX", "AVG"],
    #               unit: "SECONDS" # One of: ["SECONDS", "COUNT", "PERCENT"]
    #             },
    #             value: 1.0
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetMetricDataResponse]
    def get_metric_data(params = {}, options = {})
      request = build_request(:get_metric_data, params)
      request.send_request(options)
    end

    # <p>Gets metric data from the specified Amazon Connect instance. </p>
    #          <p>
    #             <code>GetMetricDataV2</code> offers more features than <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html">GetMetricData</a>, the previous
    #    version of this API. It has new metrics, offers filtering at a metric level, and offers the
    #    ability to filter and group data by channels, queues, routing profiles, agents, and agent
    #    hierarchy levels. It can retrieve historical data for the last 3 months, at varying intervals. It
    #    does not support agent queues.</p>
    #          <p>For a description of the historical metrics that are supported by
    #     <code>GetMetricDataV2</code> and <code>GetMetricData</code>, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics definitions</a> in the
    #      <i>Amazon Connect Administrator Guide</i>.</p>
    #          <note>
    #             <p>When you make a successful API request, you can expect the following metric values in the
    #     response:</p>
    #             <ol>
    #                <li>
    #                   <p>
    #                      <b>Metric value is null</b>: The calculation cannot be
    #       performed due to divide by zero or insufficient data</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Metric value is a number (including 0) of defined type</b>:
    #       The number provided is the calculation result</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>MetricResult list is empty</b>: The request cannot find any
    #       data in the system</p>
    #                </li>
    #             </ol>
    #             <p>The following guidelines can help you work with the API:</p>
    #             <ul>
    #                <li>
    #                   <p>Each dimension in the metric response must contain a value</p>
    #                </li>
    #                <li>
    #                   <p>Each item in MetricResult must include all requested metrics</p>
    #                </li>
    #                <li>
    #                   <p>If the response is slow due to large result sets, try these approaches:</p>
    #                   <ul>
    #                      <li>
    #                         <p>Narrow the time range of your request</p>
    #                      </li>
    #                      <li>
    #                         <p>Add filters to reduce the amount of data returned</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetMetricDataV2Request] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. This includes the <code>instanceId</code> an Amazon Connect
    #      instance.</p>
    # @option params [Time] :start_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the
    #      retrieval of historical metrics data. The time must be before the end time timestamp. The start
    #      and end time depends on the <code>IntervalPeriod</code> selected. By default the time range
    #      between start and end time is 35 days. Historical metrics are available for 3 months.</p>
    # @option params [Time] :end_time
    #   <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the
    #      retrieval of historical metrics data. The time must be later than the start time timestamp. It
    #      cannot be later than the current timestamp.</p>
    # @option params [Types::IntervalDetails] :interval
    #   <p>The interval period and timezone to apply to returned metrics.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IntervalPeriod</code>: An aggregated grouping applied to request metrics. Valid
    #         <code>IntervalPeriod</code> values are: <code>FIFTEEN_MIN</code> | <code>THIRTY_MIN</code> |
    #         <code>HOUR</code> | <code>DAY</code> | <code>WEEK</code> | <code>TOTAL</code>. </p>
    #                  <p>For example, if <code>IntervalPeriod</code> is selected <code>THIRTY_MIN</code>,
    #         <code>StartTime</code> and <code>EndTime</code> differs by 1 day, then Amazon Connect
    #        returns 48 results in the response. Each result is aggregated by the THIRTY_MIN period. By
    #        default Amazon Connect aggregates results based on the <code>TOTAL</code> interval period. </p>
    #                  <p>The following list describes restrictions on <code>StartTime</code> and
    #         <code>EndTime</code> based on which <code>IntervalPeriod</code> is requested. </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>FIFTEEN_MIN</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 3 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>THIRTY_MIN</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 3 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HOUR</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 3 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DAY</code>: The difference between <code>StartTime</code> and <code>EndTime</code>
    #          must be less than 35 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>WEEK</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 35 days.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TOTAL</code>: The difference between <code>StartTime</code> and
    #           <code>EndTime</code> must be less than 35 days.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TimeZone</code>: The timezone applied to requested metrics.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::FilterV2>] :filters
    #   <p>The filters to apply to returned metrics. You can filter on the following resources:</p>
    #            <ul>
    #               <li>
    #                  <p>Agents</p>
    #               </li>
    #               <li>
    #                  <p>Campaigns</p>
    #               </li>
    #               <li>
    #                  <p>Channels</p>
    #               </li>
    #               <li>
    #                  <p>Feature</p>
    #               </li>
    #               <li>
    #                  <p>Queues</p>
    #               </li>
    #               <li>
    #                  <p>Routing profiles</p>
    #               </li>
    #               <li>
    #                  <p>Routing step expression</p>
    #               </li>
    #               <li>
    #                  <p>User hierarchy groups</p>
    #               </li>
    #            </ul>
    #            <p>At least one filter must be passed from queues, routing profiles, agents, or user hierarchy
    #      groups.</p>
    #            <p>For metrics for outbound campaigns analytics, you can also use campaigns to satisfy at least
    #      one filter requirement.</p>
    #            <p>To filter by phone number, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html">Create a historical
    #       metrics report</a> in the <i>Amazon Connect Administrator
    #      Guide</i>.</p>
    #            <p>Note the following limits:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Filter keys</b>: A maximum of 5 filter keys are supported in
    #        a single request. Valid filter keys: <code>AGENT</code> |
    #         <code>AGENT_HIERARCHY_LEVEL_ONE</code> | <code>AGENT_HIERARCHY_LEVEL_TWO</code> |
    #         <code>AGENT_HIERARCHY_LEVEL_THREE</code> | <code>AGENT_HIERARCHY_LEVEL_FOUR</code> |
    #         <code>AGENT_HIERARCHY_LEVEL_FIVE</code> | <code>ANSWERING_MACHINE_DETECTION_STATUS</code> |
    #         <code> BOT_ID</code> | <code>BOT_ALIAS</code> | <code>BOT_VERSION</code> |
    #         <code>BOT_LOCALE</code> | <code>BOT_INTENT_NAME</code> | <code>CAMPAIGN</code> |
    #         <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code> | <code>CAMPAIGN_EXCLUDED_EVENT_TYPE </code> |
    #         <code>CASE_TEMPLATE_ARN</code> | <code>CASE_STATUS</code> | <code>CHANNEL</code> |
    #         <code>contact/segmentAttributes/connect:Subtype</code> | <code>DISCONNECT_REASON</code> |
    #         <code>EVALUATION_FORM</code> | <code>EVALUATION_SECTION</code> |
    #         <code>EVALUATION_QUESTION</code> | <code>EVALUATION_SOURCE</code> | <code>FEATURE</code> |
    #         <code>FLOW_ACTION_ID</code> | <code>FLOW_TYPE</code> | <code>FLOWS_MODULE_RESOURCE_ID</code> |
    #         <code>FLOWS_NEXT_RESOURCE_ID</code> | <code>FLOWS_NEXT_RESOURCE_QUEUE_ID</code> |
    #         <code>FLOWS_OUTCOME_TYPE</code> | <code>FLOWS_RESOURCE_ID</code> | <code>FORM_VERSION</code> |
    #         <code>INITIATION_METHOD</code> | <code>INVOKING_RESOURCE_PUBLISHED_TIMESTAMP</code> |
    #         <code>INVOKING_RESOURCE_TYPE</code> | <code>PARENT_FLOWS_RESOURCE_ID</code> |
    #         <code>RESOURCE_PUBLISHED_TIMESTAMP</code> | <code>ROUTING_PROFILE</code> |
    #         <code>ROUTING_STEP_EXPRESSION</code> | <code>QUEUE</code> | <code>Q_CONNECT_ENABLED</code> |
    #       </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Filter values</b>: A maximum of 100 filter values are
    #        supported in a single request. VOICE, CHAT, and TASK are valid <code>filterValue</code> for the
    #        CHANNEL filter key. They do not count towards limitation of 100 filter values. For example, a
    #        GetMetricDataV2 request can filter by 50 queues, 35 agents, and 15 routing profiles for a total
    #        of 100 filter values, along with 3 channel filters. </p>
    #                  <p>
    #                     <code>contact_lens_conversational_analytics</code> is a valid filterValue for the
    #         <code>FEATURE</code> filter key. It is available only to contacts analyzed by Contact Lens
    #        conversational analytics.</p>
    #                  <p>
    #                     <code>connect:Chat</code>, <code>connect:SMS</code>, <code>connect:Telephony</code>, and
    #         <code>connect:WebRTC</code> are valid <code>filterValue</code> examples (not exhaustive) for
    #        the <code>contact/segmentAttributes/connect:Subtype filter</code> key.</p>
    #                  <p>
    #                     <code>ROUTING_STEP_EXPRESSION</code> is a valid filter key with a filter value up to 3000
    #        length. This filter is case and order sensitive. JSON string fields must be sorted in ascending
    #        order and JSON array order should be kept as is.</p>
    #                  <p>
    #                     <code>Q_CONNECT_ENABLED</code>. TRUE and FALSE are the only valid filterValues for the
    #         <code>Q_CONNECT_ENABLED</code> filter key. </p>
    #                  <ul>
    #                     <li>
    #                        <p>TRUE includes all contacts that had Amazon Q in Connect enabled as part of the flow.</p>
    #                     </li>
    #                     <li>
    #                        <p>FALSE includes all contacts that did not have Amazon Q in Connect enabled as part of the flow</p>
    #                     </li>
    #                  </ul>
    #                  <p>This filter is available only for contact record-driven metrics. </p>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-outbound-campaigns_Campaign.html">Campaign</a> ARNs are valid <code>filterValues</code> for the <code>CAMPAIGN</code>
    #        filter key.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :groupings
    #   <p>The grouping applied to the metrics that are returned. For example, when results are grouped
    #      by queue, the metrics returned are grouped by queue. The values that are returned apply to the
    #      metrics for each queue. They are not aggregated for all queues.</p>
    #            <p>If no grouping is specified, a summary of all metrics is returned.</p>
    #            <p>Valid grouping keys: <code>AGENT</code> | <code>AGENT_HIERARCHY_LEVEL_ONE</code> |
    #       <code>AGENT_HIERARCHY_LEVEL_TWO</code> | <code>AGENT_HIERARCHY_LEVEL_THREE</code> |
    #       <code>AGENT_HIERARCHY_LEVEL_FOUR</code> | <code>AGENT_HIERARCHY_LEVEL_FIVE</code> |
    #       <code>ANSWERING_MACHINE_DETECTION_STATUS</code> | <code>BOT_ID</code> | <code>BOT_ALIAS</code> |
    #       <code>BOT_VERSION</code> | <code>BOT_LOCALE</code> | <code>BOT_INTENT_NAME</code> |
    #       <code>CAMPAIGN</code> | <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code> |
    #       <code>CAMPAIGN_EXCLUDED_EVENT_TYPE</code> | <code>CAMPAIGN_EXECUTION_TIMESTAMP</code> |
    #       <code>CASE_TEMPLATE_ARN</code> | <code>CASE_STATUS</code> | <code>CHANNEL</code> |
    #       <code>contact/segmentAttributes/connect:Subtype</code> | <code>DISCONNECT_REASON</code> |
    #       <code>EVALUATION_FORM</code> | <code>EVALUATION_SECTION</code> |
    #       <code>EVALUATION_QUESTION</code> | <code>EVALUATION_SOURCE</code> |
    #       <code>FLOWS_RESOURCE_ID</code> | <code>FLOWS_MODULE_RESOURCE_ID</code> |
    #       <code>FLOW_ACTION_ID</code> | <code>FLOW_TYPE</code> | <code>FLOWS_OUTCOME_TYPE</code> |
    #       <code>FORM_VERSION</code> | <code>INITIATION_METHOD</code> |
    #       <code>INVOKING_RESOURCE_PUBLISHED_TIMESTAMP</code> | <code>INVOKING_RESOURCE_TYPE</code> |
    #       <code>PARENT_FLOWS_RESOURCE_ID</code> | <code>Q_CONNECT_ENABLED</code> | <code>QUEUE</code> |
    #       <code>RESOURCE_PUBLISHED_TIMESTAMP</code> | <code>ROUTING_PROFILE</code> |
    #       <code>ROUTING_STEP_EXPRESSION</code>
    #            </p>
    #            <p>Type: Array of strings</p>
    #            <p>Array Members: Maximum number of 4 items</p>
    #            <p>Required: No</p>
    # @option params [Array<Types::MetricV2>] :metrics
    #   <p>The metrics to retrieve. Specify the name, groupings, and filters for each metric. The
    #      following historical metrics are available. For a description of each metric, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html">Metrics
    #       definition</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #            <dl>
    #               <dt>ABANDONMENT_RATE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#abandonment-rate">Abandonment
    #          rate</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_ADHERENT_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only in Amazon Web Services Regions where <a href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting, capacity planning, and scheduling</a> is available.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherent-time">Adherent time</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_ANSWER_RATE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-answer-rate">Agent answer
    #          rate</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_NON_ADHERENT_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-adherent-time">Non-adherent
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_NON_RESPONSE</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response">Agent
    #          non-response</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_NON_RESPONSE_WITHOUT_CUSTOMER_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>Data for this metric is available starting from October 1, 2023 0:00:00 GMT.</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-response-without-customer-abandons">Agent non-response without customer abandons</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_OCCUPANCY</dt>
    #               <dd>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#occupancy">Occupancy</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_SCHEDULE_ADHERENCE</dt>
    #               <dd>
    #                  <p>This metric is available only in Amazon Web Services Regions where <a href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting, capacity planning, and scheduling</a> is available.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#adherence">Adherence</a>
    #                  </p>
    #               </dd>
    #               <dt>AGENT_SCHEDULED_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only in Amazon Web Services Regions where <a href="https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region">Forecasting, capacity planning, and scheduling</a> is available.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#scheduled-time">Scheduled
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_ABANDON_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-abandon-time">Average
    #          queue abandon time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_ACTIVE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-active-time">Average active
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">Average
    #          after contact work time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_AGENT_CONNECTING_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>. For now, this metric only
    #         supports the following as <code>INITIATION_METHOD</code>: <code>INBOUND</code> |
    #          <code>OUTBOUND</code> | <code>CALLBACK</code> | <code>API</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-api-connecting-time">Average agent API connecting time</a>
    #                  </p>
    #                  <note>
    #                     <p>The <code>Negate</code> key in metric-level filters is not applicable for this
    #          metric.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_AGENT_PAUSE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-pause-time">Average
    #          agent pause time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_BOT_CONVERSATION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-time">Average bot
    #          conversation time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_BOT_CONVERSATION_TURNS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#average-bot-conversation-turns">Average bot
    #          conversation turns</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CASE_RELATED_CONTACTS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contacts-per-case">Average
    #          contacts per case</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CASE_RESOLUTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-case-resolution-time">Average
    #          case resolution time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CONTACT_DURATION</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-contact-duration">Average
    #          contact duration</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_CONTACT_FIRST_RESPONSE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-average-contact-first-response-wait-time">Agent average contact first response wait time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CONVERSATION_CLOSE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-close-time">Average conversation close time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_CONVERSATION_DURATION</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-conversation-duration">Average conversation duration</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_DIALS_PER_MINUTE</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns that use the agent assisted voice
    #         and automated voice delivery modes.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Campaign, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-dials-per-minute">Average
    #          dials per minute</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_EVALUATION_SCORE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form ID, Evaluation Section ID,
    #         Evaluation Question ID, Evaluation Source, Form Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-evaluation-score">Average
    #          evaluation score</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_FIRST_RESPONSE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-first-response-time">Average agent first response time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-flow-time">Average flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_GREETING_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-greeting-time">Average
    #          agent greeting time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, RoutingStepExpression</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-handle-time">Average handle
    #          time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time">Average
    #          customer hold time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_HOLD_TIME_ALL_CONTACTS</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-hold-time-all-contacts">Average customer hold time all contacts</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_HOLDS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-holds">Average holds</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-and-customer-hold-time">Average agent interaction and customer hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interaction-time">Average agent interaction time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_INTERRUPTIONS_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruptions">Average
    #          agent interruptions</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_INTERRUPTION_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-interruption-time">Average agent interruption time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGE_LENGTH_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-message-length">Average
    #          agent message length</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGE_LENGTH_CUSTOMER</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-message-length">Average customer message length</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-messages">Average
    #          messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-messages">Average agent
    #          messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES_BOT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-bot-messages">Average bot
    #          messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_MESSAGES_CUSTOMER</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-messages">Average
    #          customer messages</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_NON_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-non-talk-time">Average
    #          non-talk time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_QUEUE_ANSWER_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-queue-answer-time">Average
    #          queue answer time</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>AVG_RESPONSE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-response-time-agent">Average
    #          agent response time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_RESPONSE_TIME_CUSTOMER</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-time-agent">Average
    #          customer response time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_RESOLUTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-resolution-time">Average
    #          resolution time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-talk-time">Average talk
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_TALK_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-agent-talk-time">Average
    #          agent talk time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_TALK_TIME_CUSTOMER</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-customer-talk-time">Average
    #          customer talk time</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_WAIT_TIME_AFTER_CUSTOMER_CONNECTION</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns that use the agent assisted voice
    #         and automated voice delivery modes.</p>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Campaign</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-wait-time-after-customer-connection">Average wait time after customer connection</a>
    #                  </p>
    #               </dd>
    #               <dt>AVG_WEIGHTED_EVALUATION_SCORE</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form Id, Evaluation Section ID,
    #         Evaluation Question ID, Evaluation Source, Form Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#average-weighted-evaluation-score">Average weighted evaluation score</a>
    #                  </p>
    #               </dd>
    #               <dt>BOT_CONVERSATIONS_COMPLETED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-conversations-completed">Bot
    #          conversations completed</a>
    #                  </p>
    #               </dd>
    #               <dt>BOT_INTENTS_COMPLETED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Bot intent name, Flows resource ID, Flows module resource ID, Flow type,
    #         Flow action ID, Invoking resource published timestamp, Initiation method, Invoking resource
    #         type, Parent flows resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#bot-intents-completed">Bot intents
    #          completed</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_CONTACTS_ABANDONED_AFTER_X</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns using the agent assisted voice and
    #         automated voice delivery modes.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Campaign</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>GT</code> (for
    #          <i>Greater than</i>).</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x">Campaign contacts abandoned after X</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_CONTACTS_ABANDONED_AFTER_X_RATE</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns using the agent assisted voice and
    #         automated voice delivery modes.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Campaign</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you must enter <code>GT</code> (for
    #          <i>Greater than</i>).</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-contacts-abandoned-after-x-rate">Campaign contacts abandoned after X rate</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_INTERACTIONS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns using the email delivery mode. </p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: CAMPAIGN_INTERACTION_EVENT_TYPE</p>
    #                  <p>Valid groupings and filters: Campaign</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-interactions">Campaign
    #          interactions</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_PROGRESS_RATE</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-progress-rate">Campaign
    #          progress rate</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_SEND_ATTEMPTS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Channel, contact/segmentAttributes/connect:Subtype </p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-attempts">Campaign send
    #          attempts</a>
    #                  </p>
    #               </dd>
    #               <dt>CAMPAIGN_SEND_EXCLUSIONS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns.</p>
    #                  <p>Valid metric filter key: CAMPAIGN_EXCLUDED_EVENT_TYPE</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Excluded Event Type, Campaign Execution
    #         Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#campaign-send-exclusions">Campaign
    #          send exclusions</a>
    #                  </p>
    #               </dd>
    #               <dt>CASES_CREATED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-created">Cases created</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_CREATED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-created">Contacts
    #          created</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_HANDLED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>,
    #         <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, RoutingStepExpression, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#api-contacts-handled">API contacts
    #          handled</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_HANDLED_BY_CONNECTED_TO_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-handled-by-connected-to-agent-timestamp">Contacts handled (connected to agent timestamp)</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_HOLD_ABANDONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-disconnect">Contacts
    #          hold disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ON_HOLD_AGENT_DISCONNECT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-agent-disconnect">Contacts hold agent disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_ON_HOLD_CUSTOMER_DISCONNECT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-hold-customer-disconnect">Contacts hold customer disconnect</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_PUT_ON_HOLD</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-put-on-hold">Contacts put on
    #          hold</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_EXTERNAL</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-external">Contacts transferred out external</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_INTERNAL</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-internal">Contacts transferred out internal</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued">Contacts
    #          queued</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_QUEUED_BY_ENQUEUE</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-queued-by-enqueue">Contacts
    #          queued (enqueue timestamp)</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_REMOVED_FROM_QUEUE_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-removed-from-queue">Contacts
    #          removed from queue in X seconds</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_RESOLVED_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-resolved">Contacts resolved
    #          in X</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Feature,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out">Contacts
    #          transferred out</a>
    #                  </p>
    #                  <note>
    #                     <p>Feature is a valid filter but not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_BY_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-by-agent">Contacts transferred out by agent</a>
    #                  </p>
    #               </dd>
    #               <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-transferred-out-queue">Contacts transferred out queue</a>
    #                  </p>
    #               </dd>
    #               <dt>CURRENT_CASES</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#current-cases">Current cases</a>
    #                  </p>
    #               </dd>
    #               <dt>CONVERSATIONS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, contact/segmentAttributes/connect:Subtype,
    #         Disconnect Reason, Feature, RoutingStepExpression, Initiation method, Routing Profile, Queue,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#conversations-abandoned">Conversations abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>DELIVERY_ATTEMPTS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid metric filter key: <code>ANSWERING_MACHINE_DETECTION_STATUS</code>,
    #          <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code>, <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Agent, Answering Machine Detection Status, Campaign, Campaign Delivery
    #         EventType, Channel, contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue,
    #         Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempts">Delivery
    #          attempts</a>
    #                  </p>
    #                  <note>
    #                     <p>Campaign Delivery EventType filter and grouping are only available for SMS and Email
    #          campaign delivery modes. Agent, Queue, Routing Profile, Answering Machine Detection Status
    #          and Disconnect Reason are only available for agent assisted voice and automated voice
    #          delivery modes. </p>
    #                  </note>
    #               </dd>
    #               <dt>DELIVERY_ATTEMPT_DISPOSITION_RATE</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns. Dispositions for the agent assisted
    #         voice and automated voice delivery modes are only available with answering machine detection
    #         enabled.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid metric filter key: <code>ANSWERING_MACHINE_DETECTION_STATUS</code>,
    #          <code>CAMPAIGN_DELIVERY_EVENT_TYPE</code>, <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Agent, Answering Machine Detection Status, Campaign, Channel,
    #         contact/segmentAttributes/connect:Subtype, Disconnect Reason, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#delivery-attempt-disposition-rate">Delivery attempt disposition rate</a>
    #                  </p>
    #                  <note>
    #                     <p>Campaign Delivery Event Type filter and grouping are only available for SMS and Email
    #          campaign delivery modes. Agent, Queue, Routing Profile, Answering Machine Detection Status
    #          and Disconnect Reason are only available for agent assisted voice and automated voice
    #          delivery modes. </p>
    #                  </note>
    #               </dd>
    #               <dt>EVALUATIONS_PERFORMED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form ID, Evaluation Source, Form
    #         Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#evaluations-performed">Evaluations
    #          performed</a>
    #                  </p>
    #               </dd>
    #               <dt>FLOWS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome">Flows
    #         outcome</a>
    #                  </p>
    #               </dd>
    #               <dt>FLOWS_STARTED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-started">Flows
    #         started</a>
    #                  </p>
    #               </dd>
    #               <dt>HUMAN_ANSWERED_CALLS</dt>
    #               <dd>
    #                  <p>This metric is available only for outbound campaigns. Dispositions for the agent assisted
    #         voice and automated voice delivery modes are only available with answering machine detection
    #         enabled. </p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Agent, Campaign</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#human-answered">Human
    #          answered</a>
    #                  </p>
    #               </dd>
    #               <dt>MAX_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-flow-time">Maximum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>MAX_QUEUED_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#maximum-queued-time">Maximum queued
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>MIN_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#minimum-flow-time">Minimum flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_AUTOMATIC_FAILS</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Agent, Agent Hierarchy, Channel, Evaluation Form ID, Evaluation Source, Form
    #         Version, Queue, Routing Profile</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#automatic-fails-percent">Automatic
    #          fails percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_BOT_CONVERSATIONS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Flows resource ID, Flows module resource ID, Flow type, Flow action ID,
    #         Invoking resource published timestamp, Initiation method, Invoking resource type, Parent flows
    #         resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-conversations-outcome">Percent
    #          bot conversations outcome</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_BOT_INTENTS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Bot ID, Bot alias, Bot
    #         version, Bot locale, Bot intent name, Flows resource ID, Flows module resource ID, Flow type,
    #         Flow action ID, Invoking resource published timestamp, Initiation method, Invoking resource
    #         type, Parent flows resource ID</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/bot-metrics.html#percent-bot-intents-outcome">Percent bot
    #          intents outcome</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_CASES_FIRST_CONTACT_RESOLVED</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved-on-first-contact">Cases resolved on first contact</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_CONTACTS_STEP_EXPIRED</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, RoutingStepExpression</p>
    #                  <p>UI name: This metric is available in Real-time Metrics UI but not on the Historical
    #         Metrics UI.</p>
    #               </dd>
    #               <dt>PERCENT_CONTACTS_STEP_JOINED</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, RoutingStepExpression</p>
    #                  <p>UI name: This metric is available in Real-time Metrics UI but not on the Historical
    #         Metrics UI.</p>
    #               </dd>
    #               <dt>PERCENT_FLOWS_OUTCOME</dt>
    #               <dd>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid metric filter key: <code>FLOWS_OUTCOME_TYPE</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Channel, contact/segmentAttributes/connect:Subtype, Flow type, Flows module
    #         resource ID, Flows next resource ID, Flows next resource queue ID, Flows outcome type, Flows
    #         resource ID, Initiation method, Resource published timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#flows-outcome-percentage">Flows
    #          outcome percentage</a>.</p>
    #                  <note>
    #                     <p>The <code>FLOWS_OUTCOME_TYPE</code> is not a valid grouping.</p>
    #                  </note>
    #               </dd>
    #               <dt>PERCENT_NON_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#non-talk-time-percent">Non-talk time
    #          percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_TALK_TIME</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#talk-time-percent">Talk time
    #          percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_TALK_TIME_AGENT</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-talk-time-percent">Agent talk
    #          time percent</a>
    #                  </p>
    #               </dd>
    #               <dt>PERCENT_TALK_TIME_CUSTOMER</dt>
    #               <dd>
    #                  <p>This metric is available only for contacts analyzed by Contact Lens conversational
    #         analytics.</p>
    #                  <p>Unit: Percentage</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-talk-time-percent">Customer
    #          talk time percent</a>
    #                  </p>
    #               </dd>
    #               <dt>RECIPIENTS_ATTEMPTED</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-attempted">Recipients
    #          attempted</a>
    #                  </p>
    #               </dd>
    #               <dt>RECIPIENTS_INTERACTED</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Valid metric filter key: CAMPAIGN_INTERACTION_EVENT_TYPE</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Channel,
    #         contact/segmentAttributes/connect:Subtype, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-interacted">Recipients
    #          interacted</a>
    #                  </p>
    #               </dd>
    #               <dt>RECIPIENTS_TARGETED</dt>
    #               <dd>
    #                  <p>This metric is only available for outbound campaigns initiated using a customer segment.
    #         It is not available for event triggered campaigns.</p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Campaign, Campaign Execution Timestamp</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#recipients-targeted">Recipients
    #          targeted</a>
    #                  </p>
    #               </dd>
    #               <dt>REOPENED_CASE_ACTIONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-reopened">Cases
    #          reopened</a>
    #                  </p>
    #               </dd>
    #               <dt>RESOLVED_CASE_ACTIONS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Required filter key: CASE_TEMPLATE_ARN</p>
    #                  <p>Valid groupings and filters: CASE_TEMPLATE_ARN, CASE_STATUS</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#cases-resolved">Cases
    #          resolved</a>
    #                  </p>
    #               </dd>
    #               <dt>SERVICE_LEVEL</dt>
    #               <dd>
    #                  <p>You can include up to 20 SERVICE_LEVEL metrics in a request.</p>
    #                  <p>Unit: Percent</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#service-level">Service level
    #          X</a>
    #                  </p>
    #               </dd>
    #               <dt>STEP_CONTACTS_QUEUED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, RoutingStepExpression</p>
    #                  <p>UI name: This metric is available in Real-time Metrics UI but not on the Historical
    #         Metrics UI.</p>
    #               </dd>
    #               <dt>SUM_AFTER_CONTACT_WORK_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#after-contact-work-time">After
    #          contact work time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONNECTING_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid metric filter key: <code>INITIATION_METHOD</code>. This metric only supports the
    #         following filter keys as <code>INITIATION_METHOD</code>: <code>INBOUND</code> |
    #          <code>OUTBOUND</code> | <code>CALLBACK</code> | <code>API</code>
    #                  </p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-api-connecting-time">Agent API
    #          connecting time</a>
    #                  </p>
    #                  <note>
    #                     <p>The <code>Negate</code> key in metric-level filters is not applicable for this
    #          metric.</p>
    #                  </note>
    #               </dd>
    #               <dt>CONTACTS_ABANDONED</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Metric filter: </p>
    #                  <ul>
    #                     <li>
    #                        <p>Valid values: <code>API</code>| <code>Incoming</code> | <code>Outbound</code> |
    #            <code>Transfer</code> | <code>Callback</code> | <code>Queue_Transfer</code>|
    #            <code>Disconnect</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, RoutingStepExpression, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned">Contact
    #          abandoned</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACTS_ABANDONED_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-abandoned-in-x-seconds">Contacts abandoned in X seconds</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACTS_ANSWERED_IN_X</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>Threshold: For <code>ThresholdValue</code>, enter any whole number from 1 to 604800
    #         (inclusive), in seconds. For <code>Comparison</code>, you can use <code>LT</code> (for "Less
    #         than") or <code>LTE</code> (for "Less than equal").</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contacts-answered-in-x-seconds">Contacts answered in X seconds</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACT_FLOW_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-flow-time">Contact flow
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACT_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-on-contact-time">Agent on
    #          contact time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_CONTACTS_DISCONNECTED </dt>
    #               <dd>
    #                  <p>Valid metric filter key: <code>DISCONNECT_REASON</code>
    #                  </p>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy,
    #         contact/segmentAttributes/connect:Subtype, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-disconnected">Contact
    #          disconnected</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_ERROR_STATUS_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#error-status-time">Error status
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_HANDLE_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#contact-handle-time">Contact handle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#customer-hold-time">Customer hold
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_IDLE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-idle-time">Agent idle
    #          time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_INTERACTION_AND_HOLD_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy, Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-and-hold-time">Agent interaction and hold time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_INTERACTION_TIME</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-interaction-time">Agent
    #          interaction time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_NON_PRODUCTIVE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#agent-non-productive-time">Agent
    #          non-productive time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_ONLINE_TIME_AGENT</dt>
    #               <dd>
    #                  <p>Unit: Seconds</p>
    #                  <p>Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#online-time">Online time</a>
    #                  </p>
    #               </dd>
    #               <dt>SUM_RETRY_CALLBACK_ATTEMPTS</dt>
    #               <dd>
    #                  <p>Unit: Count</p>
    #                  <p>Valid groupings and filters: Queue, Channel, Routing Profile, contact/segmentAttributes/connect:Subtype,
    #         Q in Connect</p>
    #                  <p>UI name: <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html#callback-attempts">Callback
    #          attempts</a>
    #                  </p>
    #               </dd>
    #            </dl>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     interval: {
    #       time_zone: "String",
    #       interval_period: "FIFTEEN_MIN" # One of: ["FIFTEEN_MIN", "THIRTY_MIN", "HOUR", "DAY", "WEEK", "TOTAL"]
    #     },
    #     filters: [ # required
    #       {
    #         filter_key: "ResourceArnOrId",
    #         filter_values: ["ResourceArnOrId"]
    #       }
    #     ],
    #     groupings: ["GroupingV2"],
    #     metrics: [ # required
    #       {
    #         name: "MetricNameV2",
    #         threshold: [
    #           {
    #             comparison: "ResourceArnOrId",
    #             threshold_value: 1.0
    #           }
    #         ],
    #         metric_filters: [
    #           {
    #             metric_filter_key: "String",
    #             metric_filter_values: ["String"],
    #             negate: false
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_metric_data_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken2500",
    #     metric_results: [
    #       {
    #         dimensions: {
    #           "DimensionsV2Key" => "DimensionsV2Value"
    #         },
    #         metric_interval: {
    #           interval: "FIFTEEN_MIN" # One of: ["FIFTEEN_MIN", "THIRTY_MIN", "HOUR", "DAY", "WEEK", "TOTAL"],
    #           start_time: Time.now,
    #           end_time: Time.now
    #         },
    #         collections: [
    #           {
    #             metric: {
    #               name: "MetricNameV2",
    #               threshold: [
    #                 {
    #                   comparison: "ResourceArnOrId",
    #                   threshold_value: 1.0
    #                 }
    #               ],
    #               metric_filters: [
    #                 {
    #                   metric_filter_key: "String",
    #                   metric_filter_values: ["String"],
    #                   negate: false
    #                 }
    #               ]
    #             },
    #             value: 1.0
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetMetricDataV2Response]
    def get_metric_data_v2(params = {}, options = {})
      request = build_request(:get_metric_data_v2, params)
      request.send_request(options)
    end

    # <p>Gets the prompt file.</p>
    # @param [Hash, Types::GetPromptFileRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :prompt_id
    #   <p>A unique identifier for the prompt.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   }
    #   options = {}
    #   response = client.get_prompt_file(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_presigned_url: "PromptPresignedUrl",
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    # @return [Types::GetPromptFileResponse]
    def get_prompt_file(params = {}, options = {})
      request = build_request(:get_prompt_file, params)
      request.send_request(options)
    end

    # <p>Gets details about a specific task template in the specified Amazon Connect
    #    instance.</p>
    # @param [Hash, Types::GetTaskTemplateRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    # @option params [String] :snapshot_version
    #   <p>The system generated version of a task template that is associated with a task, when the
    #      task is created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     task_template_id: "TaskTemplateId", # required
    #     snapshot_version: "SnapshotVersion"
    #   }
    #   options = {}
    #   response = client.get_task_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "InstanceId",
    #     id: "TaskTemplateId", # required
    #     arn: "TaskTemplateArn", # required
    #     name: "TaskTemplateName", # required
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     self_assign_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ]
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           },
    #           default_value: "TaskTemplateFieldValue"
    #         }
    #       ]
    #     },
    #     fields: [
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName"
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME" # One of: ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL", "SELF_ASSIGN", "EXPIRY_DURATION"],
    #         single_select_options: ["TaskTemplateSingleSelectOption"]
    #       }
    #     ],
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     last_modified_time: Time.now,
    #     created_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetTaskTemplateResponse]
    def get_task_template(params = {}, options = {})
      request = build_request(:get_task_template, params)
      request.send_request(options)
    end

    # <p>Retrieves the current traffic distribution for a given traffic distribution group.</p>
    # @param [Hash, Types::GetTrafficDistributionRequest] params
    # @option params [String] :id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficDistributionGroupIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.get_traffic_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     telephony_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         }
    #       ]
    #     },
    #     id: "TrafficDistributionGroupId",
    #     arn: "TrafficDistributionGroupArn",
    #     sign_in_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           enabled: false, # required
    #         }
    #       ]
    #     },
    #     agent_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetTrafficDistributionResponse]
    def get_traffic_distribution(params = {}, options = {})
      request = build_request(:get_traffic_distribution, params)
      request.send_request(options)
    end

    # <p>Imports a claimed phone number from an external service, such as Amazon Web Services End User
    #    Messaging, into an Amazon Connect instance. You can call this API only in the same Amazon Web Services Region where the Amazon Connect instance was created.</p>
    #          <important>
    #             <p>Call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html">DescribePhoneNumber</a> API
    #     to verify the status of a previous <code>ImportPhoneNumber</code> operation. </p>
    #          </important>
    #          <p>If you plan to claim or import numbers and then release numbers frequently, contact us for a
    #    service quota exception. Otherwise, it is possible you will be blocked from claiming and
    #    releasing any more numbers until up to 180 days past the oldest number released has expired. </p>
    #          <p> By default you can claim or import and then release up to 200% of your maximum number of
    #    active phone numbers. If you claim or import and then release phone numbers using the UI or API
    #    during a rolling 180 day cycle that exceeds 200% of your phone number service level quota, you
    #    will be blocked from claiming or importing any more numbers until 180 days past the oldest number
    #    released has expired. </p>
    #          <p>For example, if you already have 99 claimed or imported numbers and a service level quota of
    #    99 phone numbers, and in any 180 day period you release 99, claim 99, and then release 99, you
    #    will have exceeded the 200% limit. At that point you are blocked from claiming any more numbers
    #    until you open an Amazon Web Services Support ticket. </p>
    # @param [Hash, Types::ImportPhoneNumberRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :source_phone_number_arn
    #   <p>The claimed phone number ARN being imported from the external service, such as Amazon Web Services End User Messaging. If it is from Amazon Web Services End User Messaging, it looks
    #      like the ARN of the phone number to import from Amazon Web Services End User Messaging.</p>
    # @option params [String] :phone_number_description
    #   <p>The description of the phone number.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     source_phone_number_arn: "ARN", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.import_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_id: "PhoneNumberId",
    #     phone_number_arn: "ARN"
    #   }
    # @return [Types::ImportPhoneNumberResponse]
    def import_phone_number(params = {}, options = {})
      request = build_request(:import_phone_number, params)
      request.send_request(options)
    end

    # <p>Lists agent statuses.</p>
    # @param [Hash, Types::ListAgentStatusRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Array<String>] :agent_status_types
    #   <p>Available agent status types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     agent_status_types: ["ROUTABLE" # One of: ["ROUTABLE", "CUSTOM", "OFFLINE"]]
    #   }
    #   options = {}
    #   response = client.list_agent_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     agent_status_summary_list: [
    #       {
    #         id: "AgentStatusId",
    #         arn: "ARN",
    #         name: "AgentStatusName",
    #         type: "ROUTABLE" # One of: ["ROUTABLE", "CUSTOM", "OFFLINE"],
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ]
    #   }
    # @return [Types::ListAgentStatusResponse]
    def list_agent_statuses(params = {}, options = {})
      request = build_request(:list_agent_statuses, params)
      request.send_request(options)
    end

    # <p>Lists the association status of requested dataset ID for a given Amazon Connect
    #    instance.</p>
    # @param [Hash, Types::ListAnalyticsDataAssociationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :data_set_id
    #   <p>The identifier of the dataset to get the association status.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     data_set_id: "DataSetId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_analytics_data_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         data_set_id: "DataSetId",
    #         target_account_id: "AWSAccountId",
    #         resource_share_id: "String",
    #         resource_share_arn: "ARN",
    #         resource_share_status: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnalyticsDataAssociationsResponse]
    def list_analytics_data_associations(params = {}, options = {})
      request = build_request(:list_analytics_data_associations, params)
      request.send_request(options)
    end

    # <p>Lists the data lake datasets available to associate with for a given Amazon Connect
    #    instance.</p>
    # @param [Hash, Types::ListAnalyticsDataLakeDataSetsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_analytics_data_lake_data_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         data_set_id: "DataSetId",
    #         data_set_name: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAnalyticsDataLakeDataSetsResponse]
    def list_analytics_data_lake_data_sets(params = {}, options = {})
      request = build_request(:list_analytics_data_lake_data_sets, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all approved origins associated with the instance.</p>
    # @param [Hash, Types::ListApprovedOriginsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_approved_origins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origins: ["Origin"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApprovedOriginsResponse]
    def list_approved_origins(params = {}, options = {})
      request = build_request(:list_approved_origins, params)
      request.send_request(options)
    end

    # <p>Provides information about contact tree, a list of associated contacts with a unique
    #    identifier.</p>
    # @param [Hash, Types::ListAssociatedContactsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_associated_contacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_summary_list: [
    #       {
    #         contact_id: "ContactId",
    #         contact_arn: "ARN",
    #         initiation_timestamp: Time.now,
    #         disconnect_timestamp: Time.now,
    #         initial_contact_id: "ContactId",
    #         previous_contact_id: "ContactId",
    #         related_contact_id: "ContactId",
    #         initiation_method: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"],
    #         channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAssociatedContactsResponse]
    def list_associated_contacts(params = {}, options = {})
      request = build_request(:list_associated_contacts, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change. To 
    # request access to this API, contact Amazon Web Services Support.</p>
    #          <p>Provides summary information about the authentication profiles in a specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListAuthenticationProfilesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_authentication_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_profile_summary_list: [
    #       {
    #         id: "AuthenticationProfileId",
    #         arn: "ARN",
    #         name: "AuthenticationProfileName",
    #         is_default: false,
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAuthenticationProfilesResponse]
    def list_authentication_profiles(params = {}, options = {})
      request = build_request(:list_authentication_profiles, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>For the specified version of Amazon Lex, returns a paginated list of all the Amazon Lex bots currently associated with the instance. Use this API to return both Amazon Lex V1 and V2 bots.</p>
    # @param [Hash, Types::ListBotsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :lex_version
    #   <p>The version of Amazon Lex or Amazon Lex V2.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lex_version: "V1" # One of: ["V1", "V2"], # required
    #   }
    #   options = {}
    #   response = client.list_bots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lex_bots: [
    #       {
    #         lex_bot: {
    #           name: "BotName", # required
    #           lex_region: "LexRegion", # required
    #         },
    #         lex_v2_bot: {
    #           alias_arn: "AliasArn"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBotsResponse]
    def list_bots(params = {}, options = {})
      request = build_request(:list_bots, params)
      request.send_request(options)
    end

    # <p>Lists contact evaluations in the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListContactEvaluationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>This is not expected to be set because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_contact_evaluations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_summary_list: [ # required
    #       {
    #         evaluation_id: "ResourceId", # required
    #         evaluation_arn: "ARN", # required
    #         evaluation_form_title: "EvaluationFormTitle", # required
    #         evaluation_form_id: "ResourceId", # required
    #         status: "DRAFT" # One of: ["DRAFT", "SUBMITTED"], # required
    #         evaluator_arn: "ARN", # required
    #         score: {
    #           percentage: 1.0,
    #           not_applicable: false,
    #           automatic_fail: false
    #         },
    #         created_time: Time.now, # required
    #         last_modified_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactEvaluationsResponse]
    def list_contact_evaluations(params = {}, options = {})
      request = build_request(:list_contact_evaluations, params)
      request.send_request(options)
    end

    # <p>Provides information about the flow modules for the specified Amazon Connect
    #    instance.</p>
    # @param [Hash, Types::ListContactFlowModulesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :contact_flow_module_state
    #   <p>The state of the flow module.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     contact_flow_module_state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"]
    #   }
    #   options = {}
    #   response = client.list_contact_flow_modules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_modules_summary_list: [
    #       {
    #         id: "ContactFlowModuleId",
    #         arn: "ARN",
    #         name: "ContactFlowModuleName",
    #         state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactFlowModulesResponse]
    def list_contact_flow_modules(params = {}, options = {})
      request = build_request(:list_contact_flow_modules, params)
      request.send_request(options)
    end

    # <p>Returns all the available versions for the specified Amazon Connect instance and flow
    #    identifier.</p>
    # @param [Hash, Types::ListContactFlowVersionsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ARN", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_contact_flow_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_version_summary_list: [
    #       {
    #         arn: "ARN",
    #         version_description: "ContactFlowDescription",
    #         version: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactFlowVersionsResponse]
    def list_contact_flow_versions(params = {}, options = {})
      request = build_request(:list_contact_flow_versions, params)
      request.send_request(options)
    end

    # <p>Provides information about the flows for the specified Amazon Connect instance.</p>
    #          <p>You can also create and update flows using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #          <p>For more information about flows, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html">Flows</a> in the
    #      <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::ListContactFlowsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :contact_flow_types
    #   <p>The type of flow.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_types: ["CONTACT_FLOW" # One of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"]],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_contact_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_summary_list: [
    #       {
    #         id: "ContactFlowId",
    #         arn: "ARN",
    #         name: "ContactFlowName",
    #         contact_flow_type: "CONTACT_FLOW" # One of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"],
    #         contact_flow_state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #         contact_flow_status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactFlowsResponse]
    def list_contact_flows(params = {}, options = {})
      request = build_request(:list_contact_flows, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>For the specified <code>referenceTypes</code>, returns a list of references associated with
    #    the contact. <i>References</i> are links to documents that are related to a
    #    contact, such as emails, attachments, or URLs.</p>
    # @param [Hash, Types::ListContactReferencesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the initial contact.</p>
    # @option params [Array<String>] :reference_types
    #   <p>The type of reference.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>This is not expected to be set, because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     reference_types: ["URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"]], # required
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_contact_references(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reference_summary_list: [{
    #       # One of:
    #       url: {
    #         name: "ReferenceKey",
    #         value: "ReferenceValue"
    #       },
    #       attachment: {
    #         name: "ReferenceKey",
    #         value: "ReferenceValue",
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn"
    #       },
    #       email_message: {
    #         name: "ReferenceKey",
    #         arn: "ReferenceArn"
    #       },
    #       string: {
    #         name: "ReferenceKey",
    #         value: "ReferenceValue"
    #       },
    #       number: {
    #         name: "ReferenceKey",
    #         value: "ReferenceValue"
    #       },
    #       date: {
    #         name: "ReferenceKey",
    #         value: "ReferenceValue"
    #       },
    #       email: {
    #         name: "ReferenceKey",
    #         value: "ReferenceValue"
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListContactReferencesResponse]
    def list_contact_references(params = {}, options = {})
      request = build_request(:list_contact_references, params)
      request.send_request(options)
    end

    # <p>Lists the default vocabularies for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListDefaultVocabulariesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"],
    #     max_results: 1,
    #     next_token: "VocabularyNextToken"
    #   }
    #   options = {}
    #   response = client.list_default_vocabularies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_vocabulary_list: [ # required
    #       {
    #         instance_id: "InstanceId", # required
    #         language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"], # required
    #         vocabulary_id: "VocabularyId", # required
    #         vocabulary_name: "VocabularyName", # required
    #       }
    #     ],
    #     next_token: "VocabularyNextToken"
    #   }
    # @return [Types::ListDefaultVocabulariesResponse]
    def list_default_vocabularies(params = {}, options = {})
      request = build_request(:list_default_vocabularies, params)
      request.send_request(options)
    end

    # <p>Lists versions of an evaluation form in the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListEvaluationFormVersionsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_evaluation_form_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form_version_summary_list: [ # required
    #       {
    #         evaluation_form_arn: "ARN", # required
    #         evaluation_form_id: "ResourceId", # required
    #         evaluation_form_version: 1, # required
    #         locked: false, # required
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE"], # required
    #         created_time: Time.now, # required
    #         created_by: "ARN", # required
    #         last_modified_time: Time.now, # required
    #         last_modified_by: "ARN", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEvaluationFormVersionsResponse]
    def list_evaluation_form_versions(params = {}, options = {})
      request = build_request(:list_evaluation_form_versions, params)
      request.send_request(options)
    end

    # <p>Lists evaluation forms in the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListEvaluationFormsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_evaluation_forms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form_summary_list: [ # required
    #       {
    #         evaluation_form_id: "ResourceId", # required
    #         evaluation_form_arn: "ARN", # required
    #         title: "EvaluationFormTitle", # required
    #         created_time: Time.now, # required
    #         created_by: "ARN", # required
    #         last_modified_time: Time.now, # required
    #         last_modified_by: "ARN", # required
    #         last_activated_time: Time.now,
    #         last_activated_by: "ARN",
    #         latest_version: 1, # required
    #         active_version: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEvaluationFormsResponse]
    def list_evaluation_forms(params = {}, options = {})
      request = build_request(:list_evaluation_forms, params)
      request.send_request(options)
    end

    # <p>List the flow association based on the filters.</p>
    # @param [Hash, Types::ListFlowAssociationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_type: "WHATSAPP_MESSAGING_PHONE_NUMBER" # One of: ["WHATSAPP_MESSAGING_PHONE_NUMBER", "VOICE_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_flow_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flow_association_summary_list: [
    #       {
    #         resource_id: "ARN",
    #         flow_id: "ARN",
    #         resource_type: "WHATSAPP_MESSAGING_PHONE_NUMBER" # One of: ["WHATSAPP_MESSAGING_PHONE_NUMBER", "VOICE_PHONE_NUMBER", "INBOUND_EMAIL", "OUTBOUND_EMAIL", "ANALYTICS_CONNECTOR"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFlowAssociationsResponse]
    def list_flow_associations(params = {}, options = {})
      request = build_request(:list_flow_associations, params)
      request.send_request(options)
    end

    # <p>List the hours of operation overrides.</p>
    # @param [Hash, Types::ListHoursOfOperationOverridesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_hours_of_operation_overrides(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     hours_of_operation_override_list: [
    #       {
    #         hours_of_operation_override_id: "HoursOfOperationOverrideId",
    #         hours_of_operation_id: "HoursOfOperationId",
    #         hours_of_operation_arn: "ARN",
    #         name: "CommonHumanReadableName",
    #         description: "CommonHumanReadableDescription",
    #         config: [
    #           {
    #             day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"],
    #             start_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ],
    #         effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #         effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat"
    #       }
    #     ],
    #     last_modified_region: "RegionName",
    #     last_modified_time: Time.now
    #   }
    # @return [Types::ListHoursOfOperationOverridesResponse]
    def list_hours_of_operation_overrides(params = {}, options = {})
      request = build_request(:list_hours_of_operation_overrides, params)
      request.send_request(options)
    end

    # <p>Provides information about the hours of operation for the specified Amazon Connect
    #    instance.</p>
    #          <p>For more information about hours of operation, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html">Set the Hours of Operation for a
    #     Queue</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::ListHoursOfOperationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_hours_of_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operation_summary_list: [
    #       {
    #         id: "HoursOfOperationId",
    #         arn: "ARN",
    #         name: "HoursOfOperationName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListHoursOfOperationsResponse]
    def list_hours_of_operations(params = {}, options = {})
      request = build_request(:list_hours_of_operations, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all attribute types for the given instance.</p>
    # @param [Hash, Types::ListInstanceAttributesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_instance_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         attribute_type: "INBOUND_CALLS" # One of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING", "ENHANCED_CHAT_MONITORING", "MULTI_PARTY_CHAT_CONFERENCE"],
    #         value: "InstanceAttributeValue"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInstanceAttributesResponse]
    def list_instance_attributes(params = {}, options = {})
      request = build_request(:list_instance_attributes, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of storage configs for the identified instance and resource
    #    type.</p>
    # @param [Hash, Types::ListInstanceStorageConfigsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     resource_type: "CHAT_TRANSCRIPTS" # One of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS", "ATTACHMENTS", "CONTACT_EVALUATIONS", "SCREEN_RECORDINGS", "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS", "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS", "EMAIL_MESSAGES"], # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_instance_storage_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     storage_configs: [
    #       {
    #         association_id: "AssociationId",
    #         storage_type: "S3" # One of: ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"], # required
    #         s3_config: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "Prefix", # required
    #           encryption_config: {
    #             encryption_type: "KMS" # One of: ["KMS"], # required
    #             key_id: "KeyId", # required
    #           }
    #         },
    #         kinesis_video_stream_config: {
    #           prefix: "Prefix", # required
    #           retention_period_hours: 1, # required
    #           encryption_config: { # required
    #             encryption_type: "KMS" # One of: ["KMS"], # required
    #             key_id: "KeyId", # required
    #           }
    #         },
    #         kinesis_stream_config: {
    #           stream_arn: "ARN", # required
    #         },
    #         kinesis_firehose_config: {
    #           firehose_arn: "ARN", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInstanceStorageConfigsResponse]
    def list_instance_storage_configs(params = {}, options = {})
      request = build_request(:list_instance_storage_configs, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Return a list of instances which are in active state, creation-in-progress state, and failed
    #    state. Instances that aren't successfully created (they are in a failed state) are returned only
    #    for 24 hours after the CreateInstance API was invoked.</p>
    # @param [Hash, Types::ListInstancesRequest] params
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_summary_list: [
    #       {
    #         id: "InstanceId",
    #         arn: "ARN",
    #         identity_management_type: "SAML" # One of: ["SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"],
    #         instance_alias: "DirectoryAlias",
    #         created_time: Time.now,
    #         service_role: "ARN",
    #         instance_status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"],
    #         inbound_calls_enabled: false,
    #         outbound_calls_enabled: false,
    #         instance_access_url: "Url"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInstancesResponse]
    def list_instances(params = {}, options = {})
      request = build_request(:list_instances, params)
      request.send_request(options)
    end

    # <p>Provides summary information about the Amazon Web Services resource associations for the
    #    specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListIntegrationAssociationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :integration_type
    #   <p>The integration type.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :integration_arn
    #   <p>The Amazon Resource Name (ARN) of the integration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     integration_type: "EVENT" # One of: ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE", "WISDOM_QUICK_RESPONSES", "Q_MESSAGE_TEMPLATES", "CASES_DOMAIN", "APPLICATION", "FILE_SCANNER", "SES_IDENTITY", "ANALYTICS_CONNECTOR", "CALL_TRANSFER_CONNECTOR", "COGNITO_USER_POOL"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     integration_arn: "ARN"
    #   }
    #   options = {}
    #   response = client.list_integration_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     integration_association_summary_list: [
    #       {
    #         integration_association_id: "IntegrationAssociationId",
    #         integration_association_arn: "ARN",
    #         instance_id: "InstanceId",
    #         integration_type: "EVENT" # One of: ["EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE", "WISDOM_QUICK_RESPONSES", "Q_MESSAGE_TEMPLATES", "CASES_DOMAIN", "APPLICATION", "FILE_SCANNER", "SES_IDENTITY", "ANALYTICS_CONNECTOR", "CALL_TRANSFER_CONNECTOR", "COGNITO_USER_POOL"],
    #         integration_arn: "ARN",
    #         source_application_url: "URI",
    #         source_application_name: "SourceApplicationName",
    #         source_type: "SALESFORCE" # One of: ["SALESFORCE", "ZENDESK", "CASES"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIntegrationAssociationsResponse]
    def list_integration_associations(params = {}, options = {})
      request = build_request(:list_integration_associations, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all Lambda functions that display in the dropdown options in the
    #    relevant flow blocks.</p>
    # @param [Hash, Types::ListLambdaFunctionsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_lambda_functions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lambda_functions: ["FunctionArn"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLambdaFunctionsResponse]
    def list_lambda_functions(params = {}, options = {})
      request = build_request(:list_lambda_functions, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all the Amazon Lex V1 bots currently associated with the
    #    instance. To return both Amazon Lex V1 and V2 bots, use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListBots.html">ListBots</a> API.
    #    </p>
    # @param [Hash, Types::ListLexBotsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. If no value is specified, the default is 10.
    #      </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_lex_bots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lex_bots: [
    #       {
    #         name: "BotName", # required
    #         lex_region: "LexRegion", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLexBotsResponse]
    def list_lex_bots(params = {}, options = {})
      request = build_request(:list_lex_bots, params)
      request.send_request(options)
    end

    # <p>Provides information about the phone numbers for the specified Amazon Connect instance. </p>
    #          <p>For more information about phone numbers, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html">Set Up Phone Numbers for Your
    #     Contact Center</a> in the <i>Amazon Connect Administrator
    #    Guide</i>.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>We recommend using <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html">ListPhoneNumbersV2</a> to
    #       return phone number types. ListPhoneNumbers doesn't support number types <code>UIFN</code>,
    #        <code>SHARED</code>, <code>THIRD_PARTY_TF</code>, and <code>THIRD_PARTY_DID</code>. While it
    #       returns numbers of those types, it incorrectly lists them as <code>TOLL_FREE</code> or
    #        <code>DID</code>. </p>
    #                </li>
    #                <li>
    #                   <p>The phone number <code>Arn</code> value that is returned from each of the items in the
    #        <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbers.html#connect-ListPhoneNumbers-response-PhoneNumberSummaryList">PhoneNumberSummaryList</a> cannot be used to tag phone number resources. It will fail
    #       with a <code>ResourceNotFoundException</code>. Instead, use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html">ListPhoneNumbersV2</a> API.
    #       It returns the new phone number ARN that can be used to tag phone number resources.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::ListPhoneNumbersRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :phone_number_types
    #   <p>The type of phone number.</p>
    #            <note>
    #               <p>We recommend using <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html">ListPhoneNumbersV2</a> to
    #       return phone number types. While ListPhoneNumbers returns number types <code>UIFN</code>,
    #        <code>SHARED</code>, <code>THIRD_PARTY_TF</code>, and <code>THIRD_PARTY_DID</code>, it
    #       incorrectly lists them as <code>TOLL_FREE</code> or <code>DID</code>. </p>
    #            </note>
    # @option params [Array<String>] :phone_number_country_codes
    #   <p>The ISO country code.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     phone_number_types: ["TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"]],
    #     phone_number_country_codes: ["AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_summary_list: [
    #       {
    #         id: "PhoneNumberId",
    #         arn: "ARN",
    #         phone_number: "PhoneNumber",
    #         phone_number_type: "TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"],
    #         phone_number_country_code: "AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPhoneNumbersResponse]
    def list_phone_numbers(params = {}, options = {})
      request = build_request(:list_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Lists phone numbers claimed to your Amazon Connect instance or traffic distribution group. If the provided
    #     <code>TargetArn</code> is a traffic distribution group, you can call this API in both Amazon Web Services Regions
    #    associated with traffic distribution group.</p>
    #          <p>For more information about phone numbers, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html">Set Up Phone Numbers for Your
    #     Contact Center</a> in the <i>Amazon Connect Administrator
    #    Guide</i>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>When given an instance ARN, <code>ListPhoneNumbersV2</code> returns only the phone
    #       numbers claimed to the instance.</p>
    #                </li>
    #                <li>
    #                   <p>When given a traffic distribution group ARN <code>ListPhoneNumbersV2</code> returns only the phone numbers
    #       claimed to the traffic distribution group.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListPhoneNumbersV2Request] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. If both <code>TargetArn</code> and <code>InstanceId</code> input are not
    #      provided, this API lists numbers claimed to all the Amazon Connect instances belonging to
    #      your account in the same Amazon Web Services Region as the request.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. If both <code>TargetArn</code> and <code>InstanceId</code> are not
    #      provided, this API lists numbers claimed to all the Amazon Connect instances belonging to your account in
    #      the same AWS Region as the request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Array<String>] :phone_number_country_codes
    #   <p>The ISO country code.</p>
    # @option params [Array<String>] :phone_number_types
    #   <p>The type of phone number.</p>
    # @option params [String] :phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     phone_number_country_codes: ["AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"]],
    #     phone_number_types: ["TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"]],
    #     phone_number_prefix: "PhoneNumberPrefix"
    #   }
    #   options = {}
    #   response = client.list_phone_numbers_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "LargeNextToken",
    #     list_phone_numbers_summary_list: [
    #       {
    #         phone_number_id: "PhoneNumberId",
    #         phone_number_arn: "ARN",
    #         phone_number: "PhoneNumber",
    #         phone_number_country_code: "AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"],
    #         phone_number_type: "TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"],
    #         target_arn: "ARN",
    #         instance_id: "InstanceId",
    #         phone_number_description: "PhoneNumberDescription",
    #         source_phone_number_arn: "ARN"
    #       }
    #     ]
    #   }
    # @return [Types::ListPhoneNumbersV2Response]
    def list_phone_numbers_v2(params = {}, options = {})
      request = build_request(:list_phone_numbers_v2, params)
      request.send_request(options)
    end

    # <p>Lists predefined attributes for the specified Amazon Connect instance. <i>Predefined
    #     attributes</i> are attributes in an Amazon Connect instance that can be used to route
    #    contacts to an agent or pools of agents within a queue. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html">Create
    #     predefined attributes for routing contacts to agents</a>.</p>
    # @param [Hash, Types::ListPredefinedAttributesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_predefined_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     predefined_attribute_summary_list: [
    #       {
    #         name: "PredefinedAttributeName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ]
    #   }
    # @return [Types::ListPredefinedAttributesResponse]
    def list_predefined_attributes(params = {}, options = {})
      request = build_request(:list_predefined_attributes, params)
      request.send_request(options)
    end

    # <p>Provides information about the prompts for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListPromptsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_prompts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_summary_list: [
    #       {
    #         id: "PromptId",
    #         arn: "ARN",
    #         name: "PromptName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPromptsResponse]
    def list_prompts(params = {}, options = {})
      request = build_request(:list_prompts, params)
      request.send_request(options)
    end

    # <p>Lists the quick connects associated with a queue.</p>
    # @param [Hash, Types::ListQueueQuickConnectsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queue_quick_connects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     quick_connect_summary_list: [
    #       {
    #         id: "QuickConnectId",
    #         arn: "ARN",
    #         name: "QuickConnectName",
    #         quick_connect_type: "USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"],
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    # @return [Types::ListQueueQuickConnectsResponse]
    def list_queue_quick_connects(params = {}, options = {})
      request = build_request(:list_queue_quick_connects, params)
      request.send_request(options)
    end

    # <p>Provides information about the queues for the specified Amazon Connect instance.</p>
    #          <p>If you do not specify a <code>QueueTypes</code>
    #    parameter, both standard and agent queues are returned. This might cause an unexpected truncation
    #    of results if you have more than 1000 agents and you limit the number of results of the API call
    #    in code.</p>
    #          <p>For more information about queues, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html">Queues: Standard and
    #     Agent</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::ListQueuesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :queue_types
    #   <p>The type of queue.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_types: ["STANDARD" # One of: ["STANDARD", "AGENT"]],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue_summary_list: [
    #       {
    #         id: "QueueId",
    #         arn: "ARN",
    #         name: "QueueName",
    #         queue_type: "STANDARD" # One of: ["STANDARD", "AGENT"],
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListQueuesResponse]
    def list_queues(params = {}, options = {})
      request = build_request(:list_queues, params)
      request.send_request(options)
    end

    # <p>Provides information about the quick connects for the specified Amazon Connect instance.
    #   </p>
    # @param [Hash, Types::ListQuickConnectsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @option params [Array<String>] :quick_connect_types
    #   <p>The type of quick connect. In the Amazon Connect admin website, when you create a quick connect, you are
    #      prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quick_connect_types: ["USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"]]
    #   }
    #   options = {}
    #   response = client.list_quick_connects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_connect_summary_list: [
    #       {
    #         id: "QuickConnectId",
    #         arn: "ARN",
    #         name: "QuickConnectName",
    #         quick_connect_type: "USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"],
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListQuickConnectsResponse]
    def list_quick_connects(params = {}, options = {})
      request = build_request(:list_quick_connects, params)
      request.send_request(options)
    end

    # <p>Provides a list of analysis segments for a real-time chat analysis session. This API
    #    supports CHAT channels only. </p>
    #          <important>
    #             <p>This API does not support VOICE. If you attempt to use it for VOICE, an
    #      <code>InvalidRequestException</code> occurs.</p>
    #          </important>
    # @param [Hash, Types::ListRealtimeContactAnalysisSegmentsV2Request] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [String] :output_type
    #   <p>The Contact Lens output type to be returned.</p>
    # @option params [Array<String>] :segment_types
    #   <p>Enum with segment types . Each value corresponds to a segment type returned in the segments
    #      list of the API. Each segment type has its own structure. Different channels may have different
    #      sets of supported segment types.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     output_type: "Raw" # One of: ["Raw", "Redacted"], # required
    #     segment_types: ["Transcript" # One of: ["Transcript", "Categories", "Issues", "Event", "Attachments", "PostContactSummary"]], # required
    #   }
    #   options = {}
    #   response = client.list_realtime_contact_analysis_segments_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     channel: "VOICE" # One of: ["VOICE", "CHAT"], # required
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"], # required
    #     segments: [{ # required
    #       # One of:
    #       transcript: {
    #         id: "RealTimeContactAnalysisId256", # required
    #         participant_id: "ParticipantId", # required
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"], # required
    #         display_name: "DisplayName",
    #         content: "RealTimeContactAnalysisTranscriptContent", # required
    #         content_type: "RealTimeContactAnalysisContentType",
    #         time: { # required
    #           # One of:
    #           absolute_time: Time.now
    #         },
    #         redaction: {
    #           character_offsets: [
    #             {
    #               begin_offset_char: 1, # required
    #               end_offset_char: 1, # required
    #             }
    #           ]
    #         },
    #         sentiment: "POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL"]
    #       },
    #       categories: {
    #         matched_details: { # required
    #           "RealTimeContactAnalysisCategoryName" => {
    #             points_of_interest: [ # required
    #               {
    #                 transcript_items: [
    #                   {
    #                     id: "RealTimeContactAnalysisId256", # required
    #                     character_offsets: {
    #                       begin_offset_char: 1, # required
    #                       end_offset_char: 1, # required
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       issues: {
    #         issues_detected: [ # required
    #           {
    #             transcript_items: [ # required
    #               {
    #                 content: "RealTimeContactAnalysisTranscriptContent",
    #                 id: "RealTimeContactAnalysisId256", # required
    #                 character_offsets: {
    #                   begin_offset_char: 1, # required
    #                   end_offset_char: 1, # required
    #                 }
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       event: {
    #         id: "RealTimeContactAnalysisId256", # required
    #         participant_id: "ParticipantId",
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"],
    #         display_name: "DisplayName",
    #         event_type: "RealTimeContactAnalysisEventType", # required
    #         time: { # required
    #           # One of:
    #           absolute_time: Time.now
    #         }
    #       },
    #       attachments: {
    #         id: "RealTimeContactAnalysisId256", # required
    #         participant_id: "ParticipantId", # required
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"], # required
    #         display_name: "DisplayName",
    #         attachments: [ # required
    #           {
    #             attachment_name: "AttachmentName", # required
    #             content_type: "ContentType",
    #             attachment_id: "ArtifactId", # required
    #             status: "APPROVED" # One of: ["APPROVED", "REJECTED", "IN_PROGRESS"]
    #           }
    #         ],
    #         time: { # required
    #           # One of:
    #           absolute_time: Time.now
    #         }
    #       },
    #       post_contact_summary: {
    #         content: "RealTimeContactAnalysisPostContactSummaryContent",
    #         status: "FAILED" # One of: ["FAILED", "COMPLETED"], # required
    #         failure_code: "QUOTA_EXCEEDED" # One of: ["QUOTA_EXCEEDED", "INSUFFICIENT_CONVERSATION_CONTENT", "FAILED_SAFETY_GUIDELINES", "INVALID_ANALYSIS_CONFIGURATION", "INTERNAL_ERROR"]
    #       }
    #     }],
    #     next_token: "LargeNextToken"
    #   }
    # @return [Types::ListRealtimeContactAnalysisSegmentsV2Response]
    def list_realtime_contact_analysis_segments_v2(params = {}, options = {})
      request = build_request(:list_realtime_contact_analysis_segments_v2, params)
      request.send_request(options)
    end

    # <p>Lists the queues associated with a routing profile.</p>
    # @param [Hash, Types::ListRoutingProfileQueuesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_routing_profile_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     routing_profile_queue_config_summary_list: [
    #       {
    #         queue_id: "QueueId", # required
    #         queue_arn: "ARN", # required
    #         queue_name: "QueueName", # required
    #         priority: 1, # required
    #         delay: 1, # required
    #         channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    # @return [Types::ListRoutingProfileQueuesResponse]
    def list_routing_profile_queues(params = {}, options = {})
      request = build_request(:list_routing_profile_queues, params)
      request.send_request(options)
    end

    # <p>Provides summary information about the routing profiles for the specified Amazon Connect
    #    instance.</p>
    #          <p>For more information about routing profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html">Routing Profiles</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html">Create a Routing
    #     Profile</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::ListRoutingProfilesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_routing_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_profile_summary_list: [
    #       {
    #         id: "RoutingProfileId",
    #         arn: "ARN",
    #         name: "RoutingProfileName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRoutingProfilesResponse]
    def list_routing_profiles(params = {}, options = {})
      request = build_request(:list_routing_profiles, params)
      request.send_request(options)
    end

    # <p>List all rules for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListRulesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :publish_status
    #   <p>The publish status of the rule.</p>
    # @option params [String] :event_source_name
    #   <p>The name of the event source.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     publish_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED"],
    #     event_source_name: "OnPostCallAnalysisAvailable" # One of: ["OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnRealTimeChatAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit", "OnMetricDataUpdate", "OnCaseCreate", "OnCaseUpdate", "OnSlaBreach"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_summary_list: [ # required
    #       {
    #         name: "RuleName", # required
    #         rule_id: "RuleId", # required
    #         rule_arn: "ARN", # required
    #         event_source_name: "OnPostCallAnalysisAvailable" # One of: ["OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnRealTimeChatAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit", "OnMetricDataUpdate", "OnCaseCreate", "OnCaseUpdate", "OnSlaBreach"], # required
    #         publish_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED"], # required
    #         action_summaries: [ # required
    #           {
    #             action_type: "CREATE_TASK" # One of: ["CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION", "CREATE_CASE", "UPDATE_CASE", "ASSIGN_SLA", "END_ASSOCIATED_TASKS", "SUBMIT_AUTO_EVALUATION"], # required
    #           }
    #         ],
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRulesResponse]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Returns a paginated list of all security keys associated with the instance.</p>
    # @param [Hash, Types::ListSecurityKeysRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_keys: [
    #       {
    #         association_id: "AssociationId",
    #         key: "PEM",
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityKeysResponse]
    def list_security_keys(params = {}, options = {})
      request = build_request(:list_security_keys, params)
      request.send_request(options)
    end

    # <p>Returns a list of third-party applications in a specific security profile.</p>
    # @param [Hash, Types::ListSecurityProfileApplicationsRequest] params
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_profile_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [
    #       {
    #         namespace: "Namespace",
    #         application_permissions: ["Permission"]
    #       }
    #     ],
    #     next_token: "NextToken",
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    # @return [Types::ListSecurityProfileApplicationsResponse]
    def list_security_profile_applications(params = {}, options = {})
      request = build_request(:list_security_profile_applications, params)
      request.send_request(options)
    end

    # <p>Lists the permissions granted to a security profile.</p>
    #          <p>For information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. For a mapping of the API name and
    #    user interface name of the security profile permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security profile
    #     permissions</a>. </p>
    # @param [Hash, Types::ListSecurityProfilePermissionsRequest] params
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_profile_permissions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     permissions: ["SecurityProfilePermission"],
    #     next_token: "NextToken",
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    # @return [Types::ListSecurityProfilePermissionsResponse]
    def list_security_profile_permissions(params = {}, options = {})
      request = build_request(:list_security_profile_permissions, params)
      request.send_request(options)
    end

    # <p>Provides summary information about the security profiles for the specified Amazon Connect instance.</p>
    #          <p>For more information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. For a mapping of the API name and
    #    user interface name of the security profile permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security profile
    #     permissions</a>. </p>
    # @param [Hash, Types::ListSecurityProfilesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profile_summary_list: [
    #       {
    #         id: "SecurityProfileId",
    #         arn: "ARN",
    #         name: "SecurityProfileName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityProfilesResponse]
    def list_security_profiles(params = {}, options = {})
      request = build_request(:list_security_profiles, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    #          <p>For sample policies that use tags, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html">Amazon Connect
    #     Identity-Based Policy Examples</a> in the <i>Amazon Connect Administrator
    #     Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. All Amazon Connect resources (instances, queues, flows, routing
    #      profiles, etc) have an ARN. To locate the ARN for an instance, for example, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">Find your Amazon Connect instance ID/ARN</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists task templates for the specified Amazon Connect instance.</p>
    # @param [Hash, Types::ListTaskTemplatesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #            <important>
    #               <p>It is not expected that you set this because the value returned in the previous response is
    #       always null.</p>
    #            </important>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #            <important>
    #               <p>It is not expected that you set this.</p>
    #            </important>
    # @option params [String] :status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    # @option params [String] :name
    #   <p>The name of the task template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     name: "TaskTemplateName"
    #   }
    #   options = {}
    #   response = client.list_task_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_templates: [
    #       {
    #         id: "TaskTemplateId",
    #         arn: "TaskTemplateArn",
    #         name: "TaskTemplateName",
    #         description: "TaskTemplateDescription",
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         last_modified_time: Time.now,
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTaskTemplatesResponse]
    def list_task_templates(params = {}, options = {})
      request = build_request(:list_task_templates, params)
      request.send_request(options)
    end

    # <p>Lists traffic distribution group users.</p>
    # @param [Hash, Types::ListTrafficDistributionGroupUsersRequest] params
    # @option params [String] :traffic_distribution_group_id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_traffic_distribution_group_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     traffic_distribution_group_user_summary_list: [
    #       {
    #         user_id: "UserId"
    #       }
    #     ]
    #   }
    # @return [Types::ListTrafficDistributionGroupUsersResponse]
    def list_traffic_distribution_group_users(params = {}, options = {})
      request = build_request(:list_traffic_distribution_group_users, params)
      request.send_request(options)
    end

    # <p>Lists traffic distribution groups.</p>
    # @param [Hash, Types::ListTrafficDistributionGroupsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     instance_id: "InstanceIdOrArn"
    #   }
    #   options = {}
    #   response = client.list_traffic_distribution_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     traffic_distribution_group_summary_list: [
    #       {
    #         id: "TrafficDistributionGroupId",
    #         arn: "TrafficDistributionGroupArn",
    #         name: "Name128",
    #         instance_arn: "InstanceArn",
    #         status: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "PENDING_DELETION", "DELETION_FAILED", "UPDATE_IN_PROGRESS"],
    #         is_default: false
    #       }
    #     ]
    #   }
    # @return [Types::ListTrafficDistributionGroupsResponse]
    def list_traffic_distribution_groups(params = {}, options = {})
      request = build_request(:list_traffic_distribution_groups, params)
      request.send_request(options)
    end

    # <p>Lists the use cases for the integration association. </p>
    # @param [Hash, Types::ListUseCasesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :integration_association_id
    #   <p>The identifier for the integration association.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_use_cases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     use_case_summary_list: [
    #       {
    #         use_case_id: "UseCaseId",
    #         use_case_arn: "ARN",
    #         use_case_type: "RULES_EVALUATION" # One of: ["RULES_EVALUATION", "CONNECT_CAMPAIGNS"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUseCasesResponse]
    def list_use_cases(params = {}, options = {})
      request = build_request(:list_use_cases, params)
      request.send_request(options)
    end

    # <p>Provides summary information about the hierarchy groups for the specified Amazon Connect
    #    instance.</p>
    #          <p>For more information about agent hierarchies, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html">Set Up Agent Hierarchies</a> in the
    #      <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::ListUserHierarchyGroupsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_user_hierarchy_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_hierarchy_group_summary_list: [
    #       {
    #         id: "HierarchyGroupId",
    #         arn: "ARN",
    #         name: "HierarchyGroupName",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUserHierarchyGroupsResponse]
    def list_user_hierarchy_groups(params = {}, options = {})
      request = build_request(:list_user_hierarchy_groups, params)
      request.send_request(options)
    end

    # <p>Lists proficiencies associated with a user.</p>
    # @param [Hash, Types::ListUserProficienciesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_user_proficiencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     user_proficiency_list: [
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #         level: 1.0, # required
    #       }
    #     ],
    #     last_modified_time: Time.now,
    #     last_modified_region: "RegionName"
    #   }
    # @return [Types::ListUserProficienciesResponse]
    def list_user_proficiencies(params = {}, options = {})
      request = build_request(:list_user_proficiencies, params)
      request.send_request(options)
    end

    # <p>Provides summary information about the users for the specified Amazon Connect
    #    instance.</p>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_summary_list: [
    #       {
    #         id: "UserId",
    #         arn: "ARN",
    #         username: "AgentUsername",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Returns all the available versions for the specified Amazon Connect instance and view
    #    identifier.</p>
    #          <p>Results will be sorted from highest to lowest.</p>
    # @param [Hash, Types::ListViewVersionsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     next_token: "ViewsNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_view_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view_version_summary_list: [
    #       {
    #         id: "ViewId",
    #         arn: "ARN",
    #         description: "ViewDescription",
    #         name: "ViewName",
    #         type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #         version: 1,
    #         version_description: "ViewDescription"
    #       }
    #     ],
    #     next_token: "ViewsNextToken"
    #   }
    # @return [Types::ListViewVersionsResponse]
    def list_view_versions(params = {}, options = {})
      request = build_request(:list_view_versions, params)
      request.send_request(options)
    end

    # <p>Returns views in the given instance.</p>
    #          <p>Results are sorted primarily by type, and secondarily by name.</p>
    # @param [Hash, Types::ListViewsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :type
    #   <p>The type of the view.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. The default MaxResult size is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #     next_token: "ViewsNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_views(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     views_summary_list: [
    #       {
    #         id: "ViewId",
    #         arn: "ARN",
    #         name: "ViewName",
    #         type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #         status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #         description: "ViewDescription"
    #       }
    #     ],
    #     next_token: "ViewsNextToken"
    #   }
    # @return [Types::ListViewsResponse]
    def list_views(params = {}, options = {})
      request = build_request(:list_views, params)
      request.send_request(options)
    end

    # <p>Initiates silent monitoring of a contact. The Contact Control Panel (CCP) of the user
    #    specified by <i>userId</i> will be set to silent monitoring mode on the
    #    contact.</p>
    # @param [Hash, Types::MonitorContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [Array<String>] :allowed_monitor_capabilities
    #   <p>Specify which monitoring actions the user is allowed to take. For example, whether the user
    #      is allowed to escalate from silent monitoring to barge. AllowedMonitorCapabilities is required if
    #      barge is enabled.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     user_id: "AgentResourceId", # required
    #     allowed_monitor_capabilities: ["SILENT_MONITOR" # One of: ["SILENT_MONITOR", "BARGE"]],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.monitor_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId",
    #     contact_arn: "ARN"
    #   }
    # @return [Types::MonitorContactResponse]
    def monitor_contact(params = {}, options = {})
      request = build_request(:monitor_contact, params)
      request.send_request(options)
    end

    # <p>Allows pausing an ongoing task contact.</p>
    # @param [Hash, Types::PauseContactRequest] params
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the <code>instanceId</code> in the ARN of
    #      the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId"
    #   }
    #   options = {}
    #   response = client.pause_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PauseContactResponse]
    def pause_contact(params = {}, options = {})
      request = build_request(:pause_contact, params)
      request.send_request(options)
    end

    # <p>Changes the current status of a user or agent in Amazon Connect. If the agent is
    #    currently handling a contact, this sets the agent's next status.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html">Agent status</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html">Set your next
    #     status</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @param [Hash, Types::PutUserStatusRequest] params
    # @option params [String] :user_id
    #   <p>The identifier of the user.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :agent_status_id
    #   <p>The identifier of the agent status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #   }
    #   options = {}
    #   response = client.put_user_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutUserStatusResponse]
    def put_user_status(params = {}, options = {})
      request = build_request(:put_user_status, params)
      request.send_request(options)
    end

    # <p>Releases a phone number previously claimed to an Amazon Connect instance or traffic distribution group. You
    #    can call this API only in the Amazon Web Services Region where the number was claimed.</p>
    #          <important>
    #             <p>To release phone numbers from a traffic distribution group, use the <code>ReleasePhoneNumber</code> API, not the
    #     Amazon Connect admin website.</p>
    #             <p>After releasing a phone number, the phone number enters into a cooldown period for up to
    #     180 days. It cannot be searched for or claimed again until the period has ended. If you
    #     accidentally release a phone number, contact Amazon Web Services Support.</p>
    #          </important>
    #          <p>If you plan to claim and release numbers frequently,
    #                 contact us for a service quota exception. Otherwise, it is possible you will be blocked from
    #                 claiming and releasing any more numbers until up to 180 days past the oldest number
    #                 released has expired.</p>
    #          <p>By default you can claim and release up to 200% of your maximum number of active
    #                 phone numbers. If you claim and release phone numbers using
    #                 the UI or API during a rolling 180 day cycle that exceeds 200% of your phone number
    #                 service level quota, you will be blocked from claiming any more numbers until 180
    #                 days past the oldest number released has expired. </p>
    #          <p>For example, if you already have 99 claimed numbers and a service level quota of 99 phone numbers, and in any 180
    #                 day period you release 99, claim 99, and then release 99, you will have exceeded the
    #                 200% limit. At that point you are blocked from claiming any more numbers until you
    #                 open an Amazon Web Services support ticket.</p>
    # @param [Hash, Types::ReleasePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.release_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def release_phone_number(params = {}, options = {})
      request = build_request(:release_phone_number, params)
      request.send_request(options)
    end

    # <p>Replicates an Amazon Connect instance in the specified Amazon Web Services Region and
    #    copies configuration information for Amazon Connect resources across Amazon Web Services Regions. </p>
    #          <p>For more information about replicating an Amazon Connect instance, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html">Create
    #     a replica of your existing Amazon Connect instance</a> in the <i>Amazon Connect
    #     Administrator Guide</i>.</p>
    # @param [Hash, Types::ReplicateInstanceRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance. You can provide the <code>InstanceId</code>, or the entire ARN.</p>
    # @option params [String] :replica_region
    #   <p>The Amazon Web Services Region where to replicate the Amazon Connect instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :replica_alias
    #   <p>The alias for the replicated instance. The <code>ReplicaAlias</code> must be unique.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceIdOrArn", # required
    #     replica_region: "AwsRegion", # required
    #     client_token: "ClientToken",
    #     replica_alias: "DirectoryAlias", # required
    #   }
    #   options = {}
    #   response = client.replicate_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "InstanceId",
    #     arn: "ARN"
    #   }
    # @return [Types::ReplicateInstanceResponse]
    def replicate_instance(params = {}, options = {})
      request = build_request(:replicate_instance, params)
      request.send_request(options)
    end

    # <p>Allows resuming a task contact in a paused state.</p>
    # @param [Hash, Types::ResumeContactRequest] params
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the <code>instanceId</code> in the ARN of
    #      the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId"
    #   }
    #   options = {}
    #   response = client.resume_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResumeContactResponse]
    def resume_contact(params = {}, options = {})
      request = build_request(:resume_contact, params)
      request.send_request(options)
    end

    # <p>When a contact is being recorded, and the recording has been suspended using
    #    SuspendContactRecording, this API resumes recording whatever recording is selected in the flow
    #    configuration: call, screen, or both. If only call recording or only screen recording is enabled,
    #    then it would resume.</p>
    #          <p>Voice and screen recordings are supported.</p>
    # @param [Hash, Types::ResumeContactRecordingRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    # @option params [String] :contact_recording_type
    #   <p>The type of recording being operated on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     contact_recording_type: "AGENT" # One of: ["AGENT", "IVR", "SCREEN"]
    #   }
    #   options = {}
    #   response = client.resume_contact_recording(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResumeContactRecordingResponse]
    def resume_contact_recording(params = {}, options = {})
      request = build_request(:resume_contact_recording, params)
      request.send_request(options)
    end

    # <p>Searches AgentStatuses in an Amazon Connect instance, with optional filtering.</p>
    # @param [Hash, Types::SearchAgentStatusesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::AgentStatusSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::AgentStatusSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return agent statuses.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       attribute_filter: {
    #         or_conditions: [
    #           {
    #             tag_conditions: [
    #               {
    #                 tag_key: "String",
    #                 tag_value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         and_condition: {
    #           tag_conditions: [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         },
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive AgentStatusSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive AgentStatusSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_agent_statuses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     agent_statuses: [
    #       {
    #         agent_status_arn: "ARN",
    #         agent_status_id: "AgentStatusId",
    #         name: "AgentStatusName",
    #         description: "AgentStatusDescription",
    #         type: "ROUTABLE" # One of: ["ROUTABLE", "CUSTOM", "OFFLINE"],
    #         display_order: 1,
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchAgentStatusesResponse]
    def search_agent_statuses(params = {}, options = {})
      request = build_request(:search_agent_statuses, params)
      request.send_request(options)
    end

    # <p>Searches for available phone numbers that you can claim to your Amazon Connect instance
    #    or traffic distribution group. If the provided <code>TargetArn</code> is a traffic distribution group, you can call this API in both
    #     Amazon Web Services Regions associated with the traffic distribution group.</p>
    # @param [Hash, Types::SearchAvailablePhoneNumbersRequest] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    # @option params [String] :phone_number_country_code
    #   <p>The ISO country code.</p>
    # @option params [String] :phone_number_type
    #   <p>The type of phone number.</p>
    # @option params [String] :phone_number_prefix
    #   <p>The prefix of the phone number. If provided, it must contain <code>+</code> as part of the country code.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     phone_number_country_code: "AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"], # required
    #     phone_number_type: "TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"], # required
    #     phone_number_prefix: "PhoneNumberPrefix",
    #     max_results: 1,
    #     next_token: "LargeNextToken"
    #   }
    #   options = {}
    #   response = client.search_available_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "LargeNextToken",
    #     available_numbers_list: [
    #       {
    #         phone_number: "PhoneNumber",
    #         phone_number_country_code: "AF" # One of: ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"],
    #         phone_number_type: "TOLL_FREE" # One of: ["TOLL_FREE", "DID", "UIFN", "SHARED", "THIRD_PARTY_TF", "THIRD_PARTY_DID", "SHORT_CODE"]
    #       }
    #     ]
    #   }
    # @return [Types::SearchAvailablePhoneNumbersResponse]
    def search_available_phone_numbers(params = {}, options = {})
      request = build_request(:search_available_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Searches the flow modules in an Amazon Connect instance, with optional filtering.</p>
    # @param [Hash, Types::SearchContactFlowModulesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::ContactFlowModuleSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::ContactFlowModuleSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return flow modules.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with a
    #       minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will result in invalid results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive ContactFlowModuleSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive ContactFlowModuleSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       },
    #       state_condition: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #       status_condition: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"]
    #     }
    #   }
    #   options = {}
    #   response = client.search_contact_flow_modules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flow_modules: [
    #       {
    #         arn: "ARN",
    #         id: "ContactFlowModuleId",
    #         name: "ContactFlowModuleName",
    #         content: "ContactFlowModuleContent",
    #         description: "ContactFlowModuleDescription",
    #         state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #         status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchContactFlowModulesResponse]
    def search_contact_flow_modules(params = {}, options = {})
      request = build_request(:search_contact_flow_modules, params)
      request.send_request(options)
    end

    # <p>Searches the flows in an Amazon Connect instance, with optional filtering.</p>
    # @param [Hash, Types::SearchContactFlowsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::ContactFlowSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::ContactFlowSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return flows.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with a
    #       minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will result in invalid results.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive ContactFlowSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive ContactFlowSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       },
    #       type_condition: "CONTACT_FLOW" # One of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"],
    #       state_condition: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #       status_condition: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"]
    #     }
    #   }
    #   options = {}
    #   response = client.search_contact_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_flows: [
    #       {
    #         arn: "ARN",
    #         id: "ContactFlowId",
    #         name: "ContactFlowName",
    #         type: "CONTACT_FLOW" # One of: ["CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER", "CAMPAIGN"],
    #         state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"],
    #         status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #         description: "ContactFlowDescription",
    #         content: "ContactFlowContent",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         flow_content_sha256: "FlowContentSha256",
    #         version: 1,
    #         version_description: "ContactFlowDescription",
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchContactFlowsResponse]
    def search_contact_flows(params = {}, options = {})
      request = build_request(:search_contact_flows, params)
      request.send_request(options)
    end

    # <p>Searches contacts in an Amazon Connect instance.</p>
    # @param [Hash, Types::SearchContactsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of Amazon Connect instance. You can find the instance ID in the Amazon
    #      Resource Name (ARN) of the instance.</p>
    # @option params [Types::SearchContactsTimeRange] :time_range
    #   <p>Time range that you want to search results.</p>
    # @option params [Types::SearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return contacts.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Types::Sort] :sort
    #   <p>Specifies a field to sort by and a sort order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     time_range: { # required
    #       type: "INITIATION_TIMESTAMP" # One of: ["INITIATION_TIMESTAMP", "SCHEDULED_TIMESTAMP", "CONNECTED_TO_AGENT_TIMESTAMP", "DISCONNECT_TIMESTAMP"], # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     search_criteria: {
    #       agent_ids: ["AgentResourceId"],
    #       agent_hierarchy_groups: {
    #         l1_ids: ["HierarchyGroupId"],
    #         l2_ids: ["HierarchyGroupId"],
    #         l3_ids: ["HierarchyGroupId"],
    #         l4_ids: ["HierarchyGroupId"],
    #         l5_ids: ["HierarchyGroupId"]
    #       },
    #       channels: ["VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"]],
    #       contact_analysis: {
    #         transcript: {
    #           criteria: [ # required
    #             {
    #               participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"], # required
    #               search_text: ["SearchText"], # required
    #               match_type: "MATCH_ALL" # One of: ["MATCH_ALL", "MATCH_ANY"], # required
    #             }
    #           ],
    #           match_type: "MATCH_ALL" # One of: ["MATCH_ALL", "MATCH_ANY"]
    #         }
    #       },
    #       initiation_methods: ["INBOUND" # One of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"]],
    #       queue_ids: ["QueueId"],
    #       searchable_contact_attributes: {
    #         criteria: [ # required
    #           {
    #             key: "SearchableContactAttributeKey", # required
    #             values: ["SearchableContactAttributeValue"], # required
    #           }
    #         ],
    #         match_type: "MATCH_ALL" # One of: ["MATCH_ALL", "MATCH_ANY"]
    #       },
    #       searchable_segment_attributes: {
    #         criteria: [ # required
    #           {
    #             key: "SearchableSegmentAttributeKey", # required
    #             values: ["SearchableSegmentAttributeValue"], # required
    #           }
    #         ],
    #         match_type: "MATCH_ALL" # One of: ["MATCH_ALL", "MATCH_ANY"]
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     sort: {
    #       field_name: "INITIATION_TIMESTAMP" # One of: ["INITIATION_TIMESTAMP", "SCHEDULED_TIMESTAMP", "CONNECTED_TO_AGENT_TIMESTAMP", "DISCONNECT_TIMESTAMP", "INITIATION_METHOD", "CHANNEL"], # required
    #       order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.search_contacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contacts: [ # required
    #       {
    #         arn: "ARN",
    #         id: "ContactId",
    #         initial_contact_id: "ContactId",
    #         previous_contact_id: "ContactId",
    #         initiation_method: "INBOUND" # One of: ["INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND", "WEBRTC_API", "AGENT_REPLY", "FLOW"],
    #         channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"],
    #         queue_info: {
    #           id: "QueueId",
    #           enqueue_timestamp: Time.now
    #         },
    #         agent_info: {
    #           id: "AgentResourceId",
    #           connected_to_agent_timestamp: Time.now
    #         },
    #         initiation_timestamp: Time.now,
    #         disconnect_timestamp: Time.now,
    #         scheduled_timestamp: Time.now,
    #         segment_attributes: {
    #           "SegmentAttributeName" => {
    #             value_string: "SegmentAttributeValueString"
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "LargeNextToken",
    #     total_count: 1
    #   }
    # @return [Types::SearchContactsResponse]
    def search_contacts(params = {}, options = {})
      request = build_request(:search_contacts, params)
      request.send_request(options)
    end

    # <p>Searches email address in an instance, with optional filtering.</p>
    # @param [Hash, Types::SearchEmailAddressesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Types::EmailAddressSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return email addresses.</p>
    # @option params [Types::EmailAddressSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken2500",
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive EmailAddressSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive EmailAddressSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     },
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_email_addresses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     email_addresses: [
    #       {
    #         email_address_id: "EmailAddressId",
    #         email_address_arn: "EmailAddressArn",
    #         email_address: "EmailAddress",
    #         description: "Description",
    #         display_name: "EmailAddressDisplayName"
    #       }
    #     ],
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchEmailAddressesResponse]
    def search_email_addresses(params = {}, options = {})
      request = build_request(:search_email_addresses, params)
      request.send_request(options)
    end

    # <p>Searches the hours of operation overrides.</p>
    # @param [Hash, Types::SearchHoursOfOperationOverridesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::HoursOfOperationSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::HoursOfOperationOverrideSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return hours of operations overrides.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive HoursOfOperationOverrideSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive HoursOfOperationOverrideSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       },
    #       date_condition: {
    #         field_name: "String",
    #         value: "DateYearMonthDayFormat",
    #         comparison_type: "GREATER_THAN" # One of: ["GREATER_THAN", "LESS_THAN", "GREATER_THAN_OR_EQUAL_TO", "LESS_THAN_OR_EQUAL_TO", "EQUAL_TO"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_hours_of_operation_overrides(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operation_overrides: [
    #       {
    #         hours_of_operation_override_id: "HoursOfOperationOverrideId",
    #         hours_of_operation_id: "HoursOfOperationId",
    #         hours_of_operation_arn: "ARN",
    #         name: "CommonHumanReadableName",
    #         description: "CommonHumanReadableDescription",
    #         config: [
    #           {
    #             day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"],
    #             start_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: {
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ],
    #         effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #         effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchHoursOfOperationOverridesResponse]
    def search_hours_of_operation_overrides(params = {}, options = {})
      request = build_request(:search_hours_of_operation_overrides, params)
      request.send_request(options)
    end

    # <p>Searches the hours of operation in an Amazon Connect instance, with optional
    #    filtering.</p>
    # @param [Hash, Types::SearchHoursOfOperationsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::HoursOfOperationSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::HoursOfOperationSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return hours of operations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive HoursOfOperationSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive HoursOfOperationSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_hours_of_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hours_of_operations: [
    #       {
    #         hours_of_operation_id: "HoursOfOperationId",
    #         hours_of_operation_arn: "ARN",
    #         name: "CommonNameLength127",
    #         description: "HoursOfOperationDescription",
    #         time_zone: "TimeZone",
    #         config: [
    #           {
    #             day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #             start_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             },
    #             end_time: { # required
    #               hours: 1, # required
    #               minutes: 1, # required
    #             }
    #           }
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchHoursOfOperationsResponse]
    def search_hours_of_operations(params = {}, options = {})
      request = build_request(:search_hours_of_operations, params)
      request.send_request(options)
    end

    # <p>Searches predefined attributes that meet certain criteria. <i>Predefined
    #     attributes</i> are attributes in an Amazon Connect instance that can be used to route
    #    contacts to an agent or pools of agents within a queue. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html">Create
    #     predefined attributes for routing contacts to agents</a>.</p>
    # @param [Hash, Types::SearchPredefinedAttributesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::PredefinedAttributeSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return predefined attributes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive PredefinedAttributeSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive PredefinedAttributeSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_predefined_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     predefined_attributes: [
    #       {
    #         name: "PredefinedAttributeName",
    #         values: {
    #           # One of:
    #           string_list: ["PredefinedAttributeStringValue"]
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchPredefinedAttributesResponse]
    def search_predefined_attributes(params = {}, options = {})
      request = build_request(:search_predefined_attributes, params)
      request.send_request(options)
    end

    # <p>Searches prompts in an Amazon Connect instance, with optional filtering.</p>
    # @param [Hash, Types::SearchPromptsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::PromptSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::PromptSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return prompts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive PromptSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive PromptSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_prompts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompts: [
    #       {
    #         prompt_arn: "ARN",
    #         prompt_id: "PromptId",
    #         name: "CommonNameLength127",
    #         description: "PromptDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchPromptsResponse]
    def search_prompts(params = {}, options = {})
      request = build_request(:search_prompts, params)
      request.send_request(options)
    end

    # <p>Searches queues in an Amazon Connect instance, with optional filtering.</p>
    # @param [Hash, Types::SearchQueuesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::QueueSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::QueueSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return queues.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #       a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will throw invalid results. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive QueueSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive QueueSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       },
    #       queue_type_condition: "STANDARD" # One of: ["STANDARD"]
    #     }
    #   }
    #   options = {}
    #   response = client.search_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queues: [
    #       {
    #         name: "CommonNameLength127",
    #         queue_arn: "ARN",
    #         queue_id: "QueueId",
    #         description: "QueueDescription",
    #         outbound_caller_config: {
    #           outbound_caller_id_name: "OutboundCallerIdName",
    #           outbound_caller_id_number_id: "PhoneNumberId",
    #           outbound_flow_id: "ContactFlowId"
    #         },
    #         outbound_email_config: {
    #           outbound_email_address_id: "EmailAddressId"
    #         },
    #         hours_of_operation_id: "HoursOfOperationId",
    #         max_contacts: 1,
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchQueuesResponse]
    def search_queues(params = {}, options = {})
      request = build_request(:search_queues, params)
      request.send_request(options)
    end

    # <p>Searches quick connects in an Amazon Connect instance, with optional filtering.</p>
    # @param [Hash, Types::SearchQuickConnectsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::QuickConnectSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::QuickConnectSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return quick connects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive QuickConnectSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive QuickConnectSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_quick_connects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quick_connects: [
    #       {
    #         quick_connect_arn: "ARN",
    #         quick_connect_id: "QuickConnectId",
    #         name: "QuickConnectName",
    #         description: "QuickConnectDescription",
    #         quick_connect_config: {
    #           quick_connect_type: "USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"], # required
    #           user_config: {
    #             user_id: "UserId", # required
    #             contact_flow_id: "ContactFlowId", # required
    #           },
    #           queue_config: {
    #             queue_id: "QueueId", # required
    #             contact_flow_id: "ContactFlowId", # required
    #           },
    #           phone_config: {
    #             phone_number: "PhoneNumber", # required
    #           }
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchQuickConnectsResponse]
    def search_quick_connects(params = {}, options = {})
      request = build_request(:search_quick_connects, params)
      request.send_request(options)
    end

    # <p>Searches tags used in an Amazon Connect instance using optional search criteria.</p>
    # @param [Hash, Types::SearchResourceTagsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the Amazon
    #      Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :resource_types
    #   <p>The list of resource types to be used to search tags from. If not provided or if any empty
    #      list is provided, this API will search from all supported resource types. Note that lowercase and
    #      - are required.</p>
    #            <p class="title">
    #               <b>Supported resource types</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>agent</p>
    #               </li>
    #               <li>
    #                  <p>agent-state</p>
    #               </li>
    #               <li>
    #                  <p>routing-profile</p>
    #               </li>
    #               <li>
    #                  <p>standard-queue</p>
    #               </li>
    #               <li>
    #                  <p>security-profile</p>
    #               </li>
    #               <li>
    #                  <p>operating-hours</p>
    #               </li>
    #               <li>
    #                  <p>prompt</p>
    #               </li>
    #               <li>
    #                  <p>contact-flow</p>
    #               </li>
    #               <li>
    #                  <p>flow- module</p>
    #               </li>
    #               <li>
    #                  <p>transfer-destination (also known as quick connect)</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::ResourceTagsSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceIdOrArn", # required
    #     resource_types: ["String"],
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       tag_search_condition: {
    #         tag_key: "TagKeyString",
    #         tag_value: "TagValueString",
    #         tag_key_comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"],
    #         tag_value_comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_resource_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     next_token: "NextToken2500"
    #   }
    # @return [Types::SearchResourceTagsResponse]
    def search_resource_tags(params = {}, options = {})
      request = build_request(:search_resource_tags, params)
      request.send_request(options)
    end

    # <p>Searches routing profiles in an Amazon Connect instance, with optional filtering.</p>
    #          <note>
    #             <p>
    #                <code>SearchRoutingProfiles</code> does not populate LastModifiedRegion, LastModifiedTime,
    #     MediaConcurrencies.CrossChannelBehavior, and AgentAvailabilityTimer in its response, but <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html">DescribeRoutingProfile</a> does.</p>
    #          </note>
    # @param [Hash, Types::SearchRoutingProfilesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::RoutingProfileSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::RoutingProfileSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return routing profiles.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #       a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will throw invalid results. </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive RoutingProfileSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive RoutingProfileSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_routing_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routing_profiles: [
    #       {
    #         instance_id: "InstanceId",
    #         name: "RoutingProfileName",
    #         routing_profile_arn: "ARN",
    #         routing_profile_id: "RoutingProfileId",
    #         description: "RoutingProfileDescription",
    #         media_concurrencies: [
    #           {
    #             channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #             concurrency: 1, # required
    #             cross_channel_behavior: {
    #               behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY" # One of: ["ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"], # required
    #             }
    #           }
    #         ],
    #         default_outbound_queue_id: "QueueId",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         number_of_associated_queues: 1,
    #         number_of_associated_users: 1,
    #         agent_availability_timer: "TIME_SINCE_LAST_ACTIVITY" # One of: ["TIME_SINCE_LAST_ACTIVITY", "TIME_SINCE_LAST_INBOUND"],
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName",
    #         is_default: false,
    #         associated_queue_ids: ["QueueId"]
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchRoutingProfilesResponse]
    def search_routing_profiles(params = {}, options = {})
      request = build_request(:search_routing_profiles, params)
      request.send_request(options)
    end

    # <p>Searches security profiles in an Amazon Connect instance, with optional
    #    filtering.</p>
    #          <p>For information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. For a mapping of the API name and
    #    user interface name of the security profile permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security profile
    #     permissions</a>. </p>
    # @param [Hash, Types::SearchSecurityProfilesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::SecurityProfileSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return security profiles. </p>
    #            <note>
    #               <p>The <code>name</code> field support "contains" queries with a minimum of 2 characters and
    #       maximum of 25 characters. Any queries with character lengths outside of this range will throw
    #       invalid results.</p>
    #            </note>
    #            <note>
    #               <p>The currently supported value for <code>FieldName</code>: <code>name</code>
    #               </p>
    #            </note>
    # @option params [Types::SecurityProfilesSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive SecurityProfileSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive SecurityProfileSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     },
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_security_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_profiles: [
    #       {
    #         id: "SecurityProfileId",
    #         organization_resource_id: "InstanceId",
    #         arn: "ARN",
    #         security_profile_name: "SecurityProfileName",
    #         description: "SecurityProfileDescription",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchSecurityProfilesResponse]
    def search_security_profiles(params = {}, options = {})
      request = build_request(:search_security_profiles, params)
      request.send_request(options)
    end

    # <p>Searches UserHierarchyGroups in an Amazon Connect instance, with optional
    #    filtering.</p>
    #          <important>
    #             <p>The UserHierarchyGroup with <code>"LevelId": "0"</code> is the foundation for building
    #     levels on top of an instance. It is not user-definable, nor is it visible in the UI.</p>
    #          </important>
    # @param [Hash, Types::SearchUserHierarchyGroupsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in
    #      the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::UserHierarchyGroupSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::UserHierarchyGroupSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return UserHierarchyGroups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       attribute_filter: {
    #         or_conditions: [
    #           {
    #             tag_conditions: [
    #               {
    #                 tag_key: "String",
    #                 tag_value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         and_condition: {
    #           tag_conditions: [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         },
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive UserHierarchyGroupSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive UserHierarchyGroupSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_user_hierarchy_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_hierarchy_groups: [
    #       {
    #         id: "HierarchyGroupId",
    #         arn: "ARN",
    #         name: "HierarchyGroupName",
    #         level_id: "HierarchyLevelId",
    #         hierarchy_path: {
    #           level_one: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN",
    #             name: "HierarchyGroupName",
    #             last_modified_time: Time.now,
    #             last_modified_region: "RegionName"
    #           },
    #           level_two: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN",
    #             name: "HierarchyGroupName",
    #             last_modified_time: Time.now,
    #             last_modified_region: "RegionName"
    #           },
    #           level_three: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN",
    #             name: "HierarchyGroupName",
    #             last_modified_time: Time.now,
    #             last_modified_region: "RegionName"
    #           },
    #           level_four: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN",
    #             name: "HierarchyGroupName",
    #             last_modified_time: Time.now,
    #             last_modified_region: "RegionName"
    #           },
    #           level_five: {
    #             id: "HierarchyGroupId",
    #             arn: "ARN",
    #             name: "HierarchyGroupName",
    #             last_modified_time: Time.now,
    #             last_modified_region: "RegionName"
    #           }
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         last_modified_time: Time.now,
    #         last_modified_region: "RegionName"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchUserHierarchyGroupsResponse]
    def search_user_hierarchy_groups(params = {}, options = {})
      request = build_request(:search_user_hierarchy_groups, params)
      request.send_request(options)
    end

    # <p>Searches users in an Amazon Connect instance, with optional filtering. </p>
    #          <note>
    #             <p>
    #                <code>AfterContactWorkTimeLimit</code> is returned in milliseconds. </p>
    #          </note>
    # @param [Hash, Types::SearchUsersRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [Types::UserSearchFilter] :search_filter
    #   <p>Filters to be applied to search results.</p>
    # @option params [Types::UserSearchCriteria] :search_criteria
    #   <p>The search criteria to be used to return users.</p>
    #            <note>
    #               <p>The <code>name</code> and <code>description</code> fields support "contains" queries with
    #       a minimum of 2 characters and a maximum of 25 characters. Any queries with character lengths
    #       outside of this range will throw invalid results.  </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ]
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String"
    #           }
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         }
    #       },
    #       user_attribute_filter: {
    #         or_conditions: [
    #           {
    #             tag_conditions: [
    #               {
    #                 tag_key: "String",
    #                 tag_value: "String"
    #               }
    #             ],
    #             hierarchy_group_condition: {
    #               value: "String",
    #               hierarchy_group_match_type: "EXACT" # One of: ["EXACT", "WITH_CHILD_GROUPS"]
    #             }
    #           }
    #         ],
    #         and_condition: {
    #           tag_conditions: [
    #             {
    #               tag_key: "String",
    #               tag_value: "String"
    #             }
    #           ],
    #           hierarchy_group_condition: {
    #             value: "String",
    #             hierarchy_group_match_type: "EXACT" # One of: ["EXACT", "WITH_CHILD_GROUPS"]
    #           }
    #         },
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String"
    #         },
    #         hierarchy_group_condition: {
    #           value: "String",
    #           hierarchy_group_match_type: "EXACT" # One of: ["EXACT", "WITH_CHILD_GROUPS"]
    #         }
    #       }
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive UserSearchCriteria
    #         }
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive UserSearchCriteria
    #         }
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #       },
    #       list_condition: {
    #         target_list_type: "PROFICIENCIES" # One of: ["PROFICIENCIES"],
    #         conditions: [
    #           {
    #             string_condition: {
    #               field_name: "String",
    #               value: "String",
    #               comparison_type: "STARTS_WITH" # One of: ["STARTS_WITH", "CONTAINS", "EXACT"]
    #             },
    #             number_condition: {
    #               field_name: "String",
    #               min_value: 1,
    #               max_value: 1,
    #               comparison_type: "GREATER_OR_EQUAL" # One of: ["GREATER_OR_EQUAL", "GREATER", "LESSER_OR_EQUAL", "LESSER", "EQUAL", "NOT_EQUAL", "RANGE"]
    #             }
    #           }
    #         ]
    #       },
    #       hierarchy_group_condition: {
    #         value: "String",
    #         hierarchy_group_match_type: "EXACT" # One of: ["EXACT", "WITH_CHILD_GROUPS"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.search_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         arn: "ARN",
    #         directory_user_id: "DirectoryUserId",
    #         hierarchy_group_id: "HierarchyGroupId",
    #         id: "UserId",
    #         identity_info: {
    #           first_name: "AgentFirstName",
    #           last_name: "AgentLastName"
    #         },
    #         phone_config: {
    #           phone_type: "SOFT_PHONE" # One of: ["SOFT_PHONE", "DESK_PHONE"], # required
    #           auto_accept: false,
    #           after_contact_work_time_limit: 1,
    #           desk_phone_number: "PhoneNumber"
    #         },
    #         routing_profile_id: "RoutingProfileId",
    #         security_profile_ids: ["SecurityProfileId"],
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         username: "AgentUsername"
    #       }
    #     ],
    #     next_token: "NextToken2500",
    #     approximate_total_count: 1
    #   }
    # @return [Types::SearchUsersResponse]
    def search_users(params = {}, options = {})
      request = build_request(:search_users, params)
      request.send_request(options)
    end

    # <p>Searches for vocabularies within a specific Amazon Connect instance using
    #     <code>State</code>, <code>NameStartsWith</code>, and <code>LanguageCode</code>.</p>
    # @param [Hash, Types::SearchVocabulariesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    # @option params [String] :state
    #   <p>The current state of the custom vocabulary.</p>
    # @option params [String] :name_starts_with
    #   <p>The starting pattern of the name of the vocabulary.</p>
    # @option params [String] :language_code
    #   <p>The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see 
    #   <a href="https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html">What is Amazon Transcribe?</a>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "VocabularyNextToken",
    #     state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"],
    #     name_starts_with: "VocabularyName",
    #     language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"]
    #   }
    #   options = {}
    #   response = client.search_vocabularies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vocabulary_summary_list: [
    #       {
    #         name: "VocabularyName", # required
    #         id: "VocabularyId", # required
    #         arn: "ARN", # required
    #         language_code: "ar-AE" # One of: ["ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA", "ca-ES", "da-DK", "fi-FI", "id-ID", "ms-MY", "nl-NL", "no-NO", "pl-PL", "sv-SE", "tl-PH"], # required
    #         state: "CREATION_IN_PROGRESS" # One of: ["CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"], # required
    #         last_modified_time: Time.now, # required
    #         failure_reason: "VocabularyFailureReason"
    #       }
    #     ],
    #     next_token: "VocabularyNextToken"
    #   }
    # @return [Types::SearchVocabulariesResponse]
    def search_vocabularies(params = {}, options = {})
      request = build_request(:search_vocabularies, params)
      request.send_request(options)
    end

    # <p>Processes chat integration events from Amazon Web Services or external integrations to
    #     Amazon Connect. A chat integration event includes:</p>
    #          <ul>
    #             <li>
    #                <p>SourceId, DestinationId, and Subtype: a set of identifiers, uniquely representing a
    #      chat</p>
    #             </li>
    #             <li>
    #                <p> ChatEvent: details of the chat action to perform such as sending a message, event, or
    #      disconnecting from a chat</p>
    #             </li>
    #          </ul>
    #          <p>When a chat integration event is sent with chat identifiers that do not map to an active
    #    chat contact, a new chat contact is also created before handling chat action. </p>
    #          <p>Access to this API is currently restricted to Amazon Web Services End User Messaging for
    #    supporting SMS integration. </p>
    # @param [Hash, Types::SendChatIntegrationEventRequest] params
    # @option params [String] :source_id
    #   <p>External identifier of chat customer participant, used in part to uniquely identify a chat.
    #      For SMS, this is the E164 phone number of the chat customer participant.</p>
    # @option params [String] :destination_id
    #   <p>Chat system identifier, used in part to uniquely identify chat. This is associated with the
    #       Amazon Connect instance and flow to be used to start chats. For Server Migration Service, this is
    #      the phone number destination of inbound Server Migration Service messages represented by an Amazon Web Services End User Messaging phone number ARN.</p>
    # @option params [String] :subtype
    #   <p>Classification of a channel. This is used in part to uniquely identify chat. </p>
    #            <p>Valid value: <code>["connect:sms", connect:"WhatsApp"]</code>
    #            </p>
    # @option params [Types::ChatEvent] :event
    #   <p>Chat integration event payload</p>
    # @option params [Types::NewSessionDetails] :new_session_details
    #   <p>Contact properties to apply when starting a new chat. If the integration event is handled
    #      with an existing chat, this is ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_id: "SourceId", # required
    #     destination_id: "DestinationId", # required
    #     subtype: "Subtype",
    #     event: { # required
    #       type: "DISCONNECT" # One of: ["DISCONNECT", "MESSAGE", "EVENT"], # required
    #       content_type: "ChatContentType",
    #       content: "ChatContent"
    #     },
    #     new_session_details: {
    #       supported_messaging_content_types: ["SupportedMessagingContentType"],
    #       participant_details: {
    #         display_name: "DisplayName", # required
    #       },
    #       attributes: {
    #         "AttributeName" => "AttributeValue"
    #       },
    #       streaming_configuration: {
    #         streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.send_chat_integration_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     initial_contact_id: "ContactId",
    #     new_chat_created: false
    #   }
    # @return [Types::SendChatIntegrationEventResponse]
    def send_chat_integration_event(params = {}, options = {})
      request = build_request(:send_chat_integration_event, params)
      request.send_request(options)
    end

    # <p>Send outbound email for outbound campaigns. For more information about outbound campaigns,
    #    see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-outbound-campaigns.html">Set up Amazon Connect outbound campaigns</a>.</p>
    #          <note>
    #             <p>Only the Amazon Connect outbound campaigns service principal is allowed to assume a
    #     role in your account and call this API.</p>
    #          </note>
    # @param [Hash, Types::SendOutboundEmailRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::EmailAddressInfo] :from_email_address
    #   <p>The email address to be used for sending email.</p>
    # @option params [Types::EmailAddressInfo] :destination_email_address
    #   <p>The email address to send the email to.</p>
    # @option params [Types::OutboundAdditionalRecipients] :additional_recipients
    #   <p>The additional recipients address of the email in CC.</p>
    # @option params [Types::OutboundEmailContent] :email_message
    #   <p>The email message body to be sent to the newly created email.</p>
    # @option params [String] :traffic_type
    #   <p>Denotes the class of traffic.</p>
    #            <note>
    #               <p>Only the CAMPAIGN traffic type is supported.</p>
    #            </note>
    # @option params [Types::SourceCampaign] :source_campaign
    #   <p>A Campaign object need for Campaign traffic type.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     from_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName"
    #     },
    #     destination_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName"
    #     },
    #     additional_recipients: {
    #       cc_email_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName"
    #         }
    #       ]
    #     },
    #     email_message: { # required
    #       message_source_type: "TEMPLATE" # One of: ["TEMPLATE", "RAW"], # required
    #       templated_message_config: {
    #         knowledge_base_id: "MessageTemplateKnowledgeBaseId", # required
    #         message_template_id: "MessageTemplateId", # required
    #         template_attributes: { # required
    #           custom_attributes: {
    #             "AttributeName" => "AttributeValue"
    #           },
    #           customer_profile_attributes: "CustomerProfileAttributesSerialized"
    #         }
    #       },
    #       raw_message: {
    #         subject: "OutboundSubject", # required
    #         body: "Body", # required
    #         content_type: "EmailMessageContentType", # required
    #       }
    #     },
    #     traffic_type: "GENERAL" # One of: ["GENERAL", "CAMPAIGN"], # required
    #     source_campaign: {
    #       campaign_id: "CampaignId",
    #       outbound_request_id: "OutboundRequestId"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.send_outbound_email(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendOutboundEmailResponse]
    def send_outbound_email(params = {}, options = {})
      request = build_request(:send_outbound_email, params)
      request.send_request(options)
    end

    # <p>Provides a pre-signed Amazon S3 URL in response for uploading your content.</p>
    #          <important>
    #             <p>You may only use this API to upload attachments to an <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html">Amazon Connect Case</a> or
    #      <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Amazon Connect
    #      Email</a>. </p>
    #          </important>
    # @param [Hash, Types::StartAttachedFileUploadRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :instance_id
    #   <p>The unique identifier of the Amazon Connect instance.</p>
    # @option params [String] :file_name
    #   <p>A case-sensitive name of the attached file being uploaded.</p>
    # @option params [Integer] :file_size_in_bytes
    #   <p>The size of the attached file in bytes.</p>
    # @option params [Integer] :url_expiry_in_seconds
    #   <p>Optional override for the expiry of the pre-signed S3 URL in seconds. The default value is
    #      300.</p>
    # @option params [String] :file_use_case_type
    #   <p>The use case for the file.</p>
    #            <important>
    #               <p> Only <code>ATTACHMENTS</code> are supported.</p>
    #            </important>
    # @option params [String] :associated_resource_arn
    #   <p>The resource to which the attached file is (being) uploaded to. The supported resources are
    #       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cases.html">Cases</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html">Email</a>.</p>
    #            <note>
    #               <p>This value must be a valid ARN.</p>
    #            </note>
    # @option params [Types::CreatedByInfo] :created_by
    #   <p>Represents the identity that created the file.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, <code>{
    #       "Tags": {"key1":"value1", "key2":"value2"} }</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     file_name: "FileName", # required
    #     file_size_in_bytes: 1, # required
    #     url_expiry_in_seconds: 1,
    #     file_use_case_type: "EMAIL_MESSAGE" # One of: ["EMAIL_MESSAGE", "ATTACHMENT"], # required
    #     associated_resource_arn: "ARN", # required
    #     created_by: {
    #       # One of:
    #       connect_user_arn: "ARN",
    #       aws_identity_arn: "ARN"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_attached_file_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     file_arn: "ARN",
    #     file_id: "FileId",
    #     creation_time: "ISO8601Datetime",
    #     file_status: "APPROVED" # One of: ["APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #     created_by: {
    #       # One of:
    #       connect_user_arn: "ARN",
    #       aws_identity_arn: "ARN"
    #     },
    #     upload_url_metadata: {
    #       url: "MetadataUrl",
    #       url_expiry: "ISO8601Datetime",
    #       headers_to_include: {
    #         "UrlMetadataSignedHeadersKey" => "UrlMetadataSignedHeadersValue"
    #       }
    #     }
    #   }
    # @return [Types::StartAttachedFileUploadResponse]
    def start_attached_file_upload(params = {}, options = {})
      request = build_request(:start_attached_file_upload, params)
      request.send_request(options)
    end

    # <p>Initiates a flow to start a new chat for the customer. Response of this API provides a token
    #    required to obtain credentials from the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a> API in the Amazon Connect Participant Service.</p>
    #          <p>When a new chat contact is successfully created, clients must subscribe to the participant’s
    #    connection for the created chat within 5 minutes. This is achieved by invoking <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a> with WEBSOCKET and CONNECTION_CREDENTIALS. </p>
    #          <p>A 429 error occurs in the following situations:</p>
    #          <ul>
    #             <li>
    #                <p>API rate limit is exceeded. API TPS throttling returns a <code>TooManyRequests</code>
    #      exception.</p>
    #             </li>
    #             <li>
    #                <p>The <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">quota for concurrent active
    #       chats</a> is exceeded. Active chat throttling returns a
    #       <code>LimitExceededException</code>.</p>
    #             </li>
    #          </ul>
    #          <p>If you use the <code>ChatDurationInMinutes</code> parameter and receive a 400 error, your
    #    account may not support the ability to configure custom chat durations. For more information,
    #    contact Amazon Web Services Support. </p>
    #          <p>For more information about chat, see the following topics in the <i>Amazon Connect
    #    Administrator Guide</i>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html">Concepts: Web and mobile messaging capabilities in Amazon Connect</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartChatContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow for initiating the chat.
    #      To
    #      see the ContactFlowId in the Amazon Connect admin website, on the navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page,
    #      under the name of the flow, choose <b>Show additional flow
    #       information</b>. The ContactFlowId is the last part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in flows just like any other contact attributes. </p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    # @option params [Types::ParticipantDetails] :participant_details
    #   <p>Information identifying the participant.</p>
    # @option params [Types::ChatMessage] :initial_message
    #   <p>The initial message to be sent to the newly created chat.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Integer] :chat_duration_in_minutes
    #   <p>The total duration of the newly started chat session. If not specified, the chat session
    #      duration defaults to 25 hour. The minimum configurable time is 60 minutes. The maximum
    #      configurable time is 10,080 minutes (7 days).</p>
    # @option params [Array<String>] :supported_messaging_content_types
    #   <p>The supported chat message content types. Supported types are <code>text/plain</code>,
    #       <code>text/markdown</code>, <code>application/json</code>,
    #       <code>application/vnd.amazonaws.connect.message.interactive</code>, and
    #       <code>application/vnd.amazonaws.connect.message.interactive.response</code>. </p>
    #            <p>Content types must always contain <code>text/plain</code>. You can then put any other
    #      supported type in the list. For example, all the following lists are valid because they contain
    #       <code>text/plain</code>: <code>[text/plain, text/markdown, application/json]</code>,
    #       <code>[text/markdown, text/plain]</code>, <code>[text/plain, application/json,
    #       application/vnd.amazonaws.connect.message.interactive.response]</code>. </p>
    #            <note>
    #               <p>The type <code>application/vnd.amazonaws.connect.message.interactive</code> is required to
    #       use the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html">Show
    #        view</a> flow block.</p>
    #            </note>
    # @option params [Types::PersistentChat] :persistent_chat
    #   <p>Enable persistent chats. For more information about enabling persistent chat, and for
    #      example use cases and how to configure for them, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable persistent chat</a>.</p>
    # @option params [String] :related_contact_id
    #   <p>The unique identifier for an Amazon Connect contact. This identifier is related to the
    #      chat starting.</p>
    #            <note>
    #               <p>You cannot provide data for both RelatedContactId and PersistentChat. </p>
    #            </note>
    # @option params [Hash<String, Types::SegmentAttributeValue>] :segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in
    #      flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to show channel subtype, such as <code>connect:Guide</code>.</p>
    #            <note>
    #               <p>The types <code>application/vnd.amazonaws.connect.message.interactive</code> and
    #        <code>application/vnd.amazonaws.connect.message.interactive.response</code> must be present in
    #       the SupportedMessagingContentTypes field of this API in order to set
    #        <code>SegmentAttributes</code> as {<code> "connect:Subtype": {"valueString" : "connect:Guide"
    #        }}</code>.</p>
    #            </note>
    # @option params [String] :customer_id
    #   <p>The customer's identification number. For example, the <code>CustomerId</code> may be a
    #      customer number from your CRM.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     participant_details: { # required
    #       display_name: "DisplayName", # required
    #     },
    #     initial_message: {
    #       content_type: "ChatContentType", # required
    #       content: "ChatContent", # required
    #     },
    #     client_token: "ClientToken",
    #     chat_duration_in_minutes: 1,
    #     supported_messaging_content_types: ["SupportedMessagingContentType"],
    #     persistent_chat: {
    #       rehydration_type: "ENTIRE_PAST_SESSION" # One of: ["ENTIRE_PAST_SESSION", "FROM_SEGMENT"],
    #       source_contact_id: "ContactId"
    #     },
    #     related_contact_id: "ContactId",
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           }
    #         },
    #         value_integer: 1
    #       }
    #     },
    #     customer_id: "CustomerIdNonEmpty"
    #   }
    #   options = {}
    #   response = client.start_chat_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId",
    #     participant_id: "ParticipantId",
    #     participant_token: "ParticipantToken",
    #     continued_from_contact_id: "ContactId"
    #   }
    # @return [Types::StartChatContactResponse]
    def start_chat_contact(params = {}, options = {})
      request = build_request(:start_chat_contact, params)
      request.send_request(options)
    end

    # <p>Starts an empty evaluation in the specified Amazon Connect instance, using the given
    #    evaluation form for the particular contact. The evaluation form version used for the contact
    #    evaluation corresponds to the currently activated version. If no version is activated for the
    #    evaluation form, the contact evaluation cannot be started. </p>
    #          <note>
    #             <p>Evaluations created through the public API do not contain answer values suggested from
    #     automation.</p>
    #          </note>
    # @param [Hash, Types::StartContactEvaluationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [String] :evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_contact_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "ResourceId", # required
    #     evaluation_arn: "ARN", # required
    #   }
    # @return [Types::StartContactEvaluationResponse]
    def start_contact_evaluation(params = {}, options = {})
      request = build_request(:start_contact_evaluation, params)
      request.send_request(options)
    end

    # <p>Starts recording the contact: </p>
    #          <ul>
    #             <li>
    #                <p>If the API is called <i>before</i> the agent joins the call, recording
    #      starts when the agent joins the call.</p>
    #             </li>
    #             <li>
    #                <p>If the API is called <i>after</i> the agent joins the call, recording starts
    #      at the time of the API call.</p>
    #             </li>
    #          </ul>
    #          <p>StartContactRecording is a one-time action. For example, if you use StopContactRecording to
    #    stop recording an ongoing call, you can't use StartContactRecording to restart it. For scenarios
    #    where the recording has started and you want to suspend and resume it, such as when collecting
    #    sensitive information (for example, a credit card number), use SuspendContactRecording and
    #    ResumeContactRecording.</p>
    #          <p>You can use this API to override the recording behavior configured in the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html">Set recording
    #     behavior</a> block.</p>
    #          <p>Only voice recordings are supported at this time.</p>
    # @param [Hash, Types::StartContactRecordingRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    # @option params [Types::VoiceRecordingConfiguration] :voice_recording_configuration
    #   <p>The person being recorded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     voice_recording_configuration: { # required
    #       voice_recording_track: "FROM_AGENT" # One of: ["FROM_AGENT", "TO_AGENT", "ALL"],
    #       ivr_recording_track: "ALL" # One of: ["ALL"]
    #     }
    #   }
    #   options = {}
    #   response = client.start_contact_recording(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartContactRecordingResponse]
    def start_contact_recording(params = {}, options = {})
      request = build_request(:start_contact_recording, params)
      request.send_request(options)
    end

    # <p> Initiates real-time message streaming for a new chat contact.</p>
    #          <p> For more information about message streaming, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html">Enable real-time chat message
    #     streaming</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    #          <p>For more information about chat, see the following topics in the <i>Amazon Connect
    #    Administrator Guide</i>: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html">Concepts: Web and mobile messaging capabilities in Amazon Connect</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartContactStreamingRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    # @option params [Types::ChatStreamingConfiguration] :chat_streaming_configuration
    #   <p>The streaming configuration, such as the Amazon SNS streaming endpoint.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     chat_streaming_configuration: { # required
    #       streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #     },
    #     client_token: "ClientToken", # required
    #   }
    #   options = {}
    #   response = client.start_contact_streaming(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_id: "StreamingId", # required
    #   }
    # @return [Types::StartContactStreamingResponse]
    def start_contact_streaming(params = {}, options = {})
      request = build_request(:start_contact_streaming, params)
      request.send_request(options)
    end

    # <p>Creates an inbound email contact and initiates a flow to start the email contact for the
    #    customer. Response of this API provides the ContactId of the email contact created.</p>
    # @param [Hash, Types::StartEmailContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::EmailAddressInfo] :from_email_address
    #   <p>The email address of the customer.</p>
    # @option params [String] :destination_email_address
    #   <p>The email address associated with the Amazon Connect instance.</p>
    # @option params [String] :description
    #   <p>A description of the email contact.</p>
    # @option params [Hash<String, Types::Reference>] :references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Emails can
    #      have the following reference types at the time of creation: <code>URL</code> |
    #       <code>NUMBER</code> | <code>STRING</code> | <code>DATE</code>. <code>EMAIL</code> |
    #       <code>EMAIL_MESSAGE</code> |<code>ATTACHMENT</code> are not a supported reference type during
    #      email creation.</p>
    # @option params [String] :name
    #   <p>The name of a email that is shown to an agent in the Contact Control Panel (CCP).</p>
    # @option params [Types::InboundEmailContent] :email_message
    #   <p>The email message body to be sent to the newly created email.</p>
    # @option params [Types::InboundAdditionalRecipients] :additional_recipients
    #   <p>The additional recipients address of the email.</p>
    # @option params [Array<Types::EmailAttachment>] :attachments
    #   <p>List of S3 presigned URLs of email attachments and their file name. </p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow for initiating the emails. To see the ContactFlowId in the Amazon Connect admin website,
    #      on the navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    # @option params [String] :related_contact_id
    #   <p>The contactId that is related to this contact. Linking emails together by using
    #       <code>RelatedContactID</code> copies over contact attributes from the related email contact to
    #      the new email contact. All updates to user-defined attributes in the new email contact are
    #      limited to the individual contact ID. There are no limits to the number of contacts that can be
    #      linked by using <code>RelatedContactId</code>. </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    # @option params [Hash<String, Types::SegmentAttributeValue>] :segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in
    #      flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to show channel subtype, such as <code>connect:Guide</code>.</p>
    #            <note>
    #               <p>To set contact expiry, a <code>ValueMap</code> must be specified containing the integer
    #       number of minutes the contact will be active for before expiring, with
    #        <code>SegmentAttributes</code> like { <code> "connect:ContactExpiry": {"ValueMap" : {
    #        "ExpiryDuration": { "ValueInteger":135}}}}</code>.</p>
    #            </note>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     from_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName"
    #     },
    #     destination_email_address: "EmailAddress", # required
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason"
    #       }
    #     },
    #     name: "Name",
    #     email_message: { # required
    #       message_source_type: "RAW" # One of: ["RAW"], # required
    #       raw_message: {
    #         subject: "InboundSubject", # required
    #         body: "Body", # required
    #         content_type: "EmailMessageContentType", # required
    #         headers: {
    #           "EmailHeaderType" => "EmailHeaderValue"
    #         }
    #       }
    #     },
    #     additional_recipients: {
    #       to_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName"
    #         }
    #       ],
    #       cc_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName"
    #         }
    #       ]
    #     },
    #     attachments: [
    #       {
    #         file_name: "FileName", # required
    #         s3_url: "PreSignedAttachmentUrl", # required
    #       }
    #     ],
    #     contact_flow_id: "ContactFlowId",
    #     related_contact_id: "ContactId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           }
    #         },
    #         value_integer: 1
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_email_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId"
    #   }
    # @return [Types::StartEmailContactResponse]
    def start_email_contact(params = {}, options = {})
      request = build_request(:start_email_contact, params)
      request.send_request(options)
    end

    # <p>Initiates a new outbound SMS contact to a customer. Response of this API provides the
    #     <code>ContactId</code> of the outbound SMS contact created.</p>
    #          <p>
    #             <b>SourceEndpoint</b> only supports Endpoints with
    #     <code>CONNECT_PHONENUMBER_ARN</code> as Type and <b>DestinationEndpoint</b> only supports Endpoints with <code>TELEPHONE_NUMBER</code> as
    #    Type. <b>ContactFlowId</b> initiates the flow to manage the new SMS
    #    contact created.</p>
    #          <p>This API can be used to initiate outbound SMS contacts for an agent, or it can also deflect
    #    an ongoing contact to an outbound SMS contact by using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html">StartOutboundChatContact</a> Flow Action.</p>
    #          <p>For more information about using SMS in Amazon Connect, see the following topics in the
    #      <i>Amazon Connect Administrator Guide</i>:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-sms-messaging.html">Set
    #       up SMS messaging</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/connect/latest/adminguide/sms-number.html">Request an
    #       SMS-enabled phone number through AWS End User Messaging SMS</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartOutboundChatContactRequest] params
    # @option params [Types::Endpoint] :source_endpoint
    #   <p>Information about the endpoint.</p>
    # @option params [Types::Endpoint] :destination_endpoint
    #   <p>Information about the endpoint.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the
    #      Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, Types::SegmentAttributeValue>] :segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments using an
    #      attribute map. The attributes are standard Amazon Connect attributes. They can be accessed in
    #      flows.</p>
    #            <ul>
    #               <li>
    #                  <p>Attribute keys can include only alphanumeric, <code>-</code>, and <code>_</code>.</p>
    #               </li>
    #               <li>
    #                  <p>This field can be used to show channel subtype, such as <code>connect:Guide</code> and
    #         <code>connect:SMS</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow for the call. To see the ContactFlowId in the Amazon Connect
    #      console user interface, on the navigation menu go to <b>Routing, Contact
    #       Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold:</p>
    #            <ul>
    #               <li>
    #                  <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>123ec456-a007-89c0-1234-xxxxxxxxxxxx</b>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :chat_duration_in_minutes
    #   <p>The total duration of the newly started chat session. If not specified, the chat session
    #      duration defaults to 25 hour. The minimum configurable time is 60 minutes. The maximum
    #      configurable time is 10,080 minutes (7 days).</p>
    # @option params [Types::ParticipantDetails] :participant_details
    #   <p>The customer's details.</p>
    # @option params [Types::ChatMessage] :initial_system_message
    #   <p>A chat message.</p>
    # @option params [String] :related_contact_id
    #   <p>The unique identifier for an Amazon Connect contact. This identifier is related to the
    #      contact starting.</p>
    # @option params [Array<String>] :supported_messaging_content_types
    #   <p>The supported chat message content types. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>text/plain</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>text/markdown</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/json,
    #        application/vnd.amazonaws.connect.message.interactive</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application/vnd.amazonaws.connect.message.interactive.response</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Content types must always contain <code>text/plain</code>. You can then put any other
    #      supported type in the list. For example, all the following lists are valid because they contain
    #       <code>text/plain</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>[text/plain, text/markdown, application/json]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>[text/markdown, text/plain]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>[text/plain, application/json,
    #         application/vnd.amazonaws.connect.message.interactive.response]</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request. If not provided, the AWS SDK populates this field. For more information about
    #      idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
    #       retries safe with idempotent APIs</a>. The token is valid for 7 days after creation. If a
    #      contact is already started, the contact ID is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_endpoint: { # required
    #       type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #       address: "EndpointAddress"
    #     },
    #     destination_endpoint: { # required
    #       type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #       address: "EndpointAddress"
    #     },
    #     instance_id: "InstanceId", # required
    #     segment_attributes: { # required
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           }
    #         },
    #         value_integer: 1
    #       }
    #     },
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     contact_flow_id: "ContactFlowId", # required
    #     chat_duration_in_minutes: 1,
    #     participant_details: {
    #       display_name: "DisplayName", # required
    #     },
    #     initial_system_message: {
    #       content_type: "ChatContentType", # required
    #       content: "ChatContent", # required
    #     },
    #     related_contact_id: "ContactId",
    #     supported_messaging_content_types: ["SupportedMessagingContentType"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_outbound_chat_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId"
    #   }
    # @return [Types::StartOutboundChatContactResponse]
    def start_outbound_chat_contact(params = {}, options = {})
      request = build_request(:start_outbound_chat_contact, params)
      request.send_request(options)
    end

    # <p>Initiates a flow to send an agent reply or outbound email contact (created from the
    #    CreateContact API) to a customer.</p>
    # @param [Hash, Types::StartOutboundEmailContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Types::EmailAddressInfo] :from_email_address
    #   <p>The email address associated with the Amazon Connect instance.</p>
    # @option params [Types::EmailAddressInfo] :destination_email_address
    #   <p>The email address of the customer.</p>
    # @option params [Types::OutboundAdditionalRecipients] :additional_recipients
    #   <p>The additional recipients address of email in CC.</p>
    # @option params [Types::OutboundEmailContent] :email_message
    #   <p>The email message body to be sent to the newly created email.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     from_email_address: {
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName"
    #     },
    #     destination_email_address: { # required
    #       email_address: "EmailAddress", # required
    #       display_name: "EmailAddressDisplayName"
    #     },
    #     additional_recipients: {
    #       cc_email_addresses: [
    #         {
    #           email_address: "EmailAddress", # required
    #           display_name: "EmailAddressDisplayName"
    #         }
    #       ]
    #     },
    #     email_message: { # required
    #       message_source_type: "TEMPLATE" # One of: ["TEMPLATE", "RAW"], # required
    #       templated_message_config: {
    #         knowledge_base_id: "MessageTemplateKnowledgeBaseId", # required
    #         message_template_id: "MessageTemplateId", # required
    #         template_attributes: { # required
    #           custom_attributes: {
    #             "AttributeName" => "AttributeValue"
    #           },
    #           customer_profile_attributes: "CustomerProfileAttributesSerialized"
    #         }
    #       },
    #       raw_message: {
    #         subject: "OutboundSubject", # required
    #         body: "Body", # required
    #         content_type: "EmailMessageContentType", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.start_outbound_email_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId"
    #   }
    # @return [Types::StartOutboundEmailContactResponse]
    def start_outbound_email_contact(params = {}, options = {})
      request = build_request(:start_outbound_email_contact, params)
      request.send_request(options)
    end

    # <p>Places an outbound call to a contact, and then initiates the flow. It performs the actions
    #    in the flow that's specified (in <code>ContactFlowId</code>).</p>
    #          <p>Agents do not initiate the outbound API, which means that they do not dial the contact. If
    #    the flow places an outbound call to a contact, and then puts the contact in queue, the call is
    #    then routed to the agent, like any other inbound case.</p>
    #          <p>There is a 60-second dialing timeout for this operation. If the call is not connected after
    #    60 seconds, it fails.</p>
    #          <note>
    #             <p>UK numbers with a 447 prefix are not allowed by default. Before you can dial these UK
    #     mobile numbers, you must submit a service quota increase request. For more information, see
    #      <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect Service Quotas</a> in the <i>Amazon Connect Administrator
    #      Guide</i>. </p>
    #          </note>
    #          <note>
    #             <p>Campaign calls are not allowed by default. Before you can make a call with
    #      <code>TrafficType</code> = <code>CAMPAIGN</code>, you must submit a service quota increase
    #     request to the quota <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas">Amazon Connect campaigns</a>. </p>
    #          </note>
    # @param [Hash, Types::StartOutboundVoiceContactRequest] params
    # @option params [String] :name
    #   <p>The name of a voice contact that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    # @option params [String] :description
    #   <p>A description of the voice contact that appears in the agent's snapshot in the CCP logs. For
    #      more information about CCP logs, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/download-ccp-logs.html">Download and review CCP logs</a> in
    #      the <i>Amazon Connect Administrator Guide</i>.</p>
    # @option params [Hash<String, Types::Reference>] :references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Contacts can
    #      have the following reference types at the time of creation: <code>URL</code> |
    #       <code>NUMBER</code> | <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code>.
    #       <code>ATTACHMENT</code> is not a supported reference type during voice contact creation.</p>
    # @option params [String] :related_contact_id
    #   <p>The <code>contactId</code> that is related to this contact. Linking voice, task, or chat by
    #      using <code>RelatedContactID</code> copies over contact attributes from the related contact to
    #      the new contact. All updates to user-defined attributes in the new contact are limited to the
    #      individual contact ID. There are no limits to the number of contacts that can be linked by using
    #       <code>RelatedContactId</code>. </p>
    # @option params [String] :destination_phone_number
    #   <p>The phone number of the customer, in E.164 format.</p>
    # @option params [String] :contact_flow_id
    #   <p>The
    #      identifier of the flow for the outbound call. To see the ContactFlowId in the Amazon Connect admin website, on the
    #      navigation menu go to <b>Routing</b>, <b>Contact
    #       Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>. The token is valid for 7 days after creation. If a contact is already started,
    #      the contact ID is returned.
    #      </p>
    # @option params [String] :source_phone_number
    #   <p>The phone number associated with the Amazon Connect instance, in E.164 format. If you do
    #      not specify a source phone number, you must specify a queue.</p>
    # @option params [String] :queue_id
    #   <p>The queue for the call. If you specify a queue, the phone displayed for caller ID is the
    #      phone number specified in the queue. If you do not specify a queue, the queue defined in the flow
    #      is used. If you do not specify a queue, you must specify a source phone number.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    # @option params [Types::AnswerMachineDetectionConfig] :answer_machine_detection_config
    #   <p>Configuration of the answering machine detection for this outbound call. </p>
    # @option params [String] :campaign_id
    #   <p>The campaign identifier of the outbound communication.</p>
    # @option params [String] :traffic_type
    #   <p>Denotes the class of traffic. Calls with different traffic types are handled differently by
    #       Amazon Connect. The default value is <code>GENERAL</code>. Use <code>CAMPAIGN</code> if
    #       <code>EnableAnswerMachineDetection</code> is set to <code>true</code>. For all other cases, use
    #       <code>GENERAL</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name",
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason"
    #       }
    #     },
    #     related_contact_id: "ContactId",
    #     destination_phone_number: "PhoneNumber", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     source_phone_number: "PhoneNumber",
    #     queue_id: "QueueId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     answer_machine_detection_config: {
    #       enable_answer_machine_detection: false,
    #       await_answer_machine_prompt: false
    #     },
    #     campaign_id: "CampaignId",
    #     traffic_type: "GENERAL" # One of: ["GENERAL", "CAMPAIGN"]
    #   }
    #   options = {}
    #   response = client.start_outbound_voice_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId"
    #   }
    # @return [Types::StartOutboundVoiceContactResponse]
    def start_outbound_voice_contact(params = {}, options = {})
      request = build_request(:start_outbound_voice_contact, params)
      request.send_request(options)
    end

    # <p>Starts screen sharing for a contact. For more information about screen sharing, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html">Set up in-app, web,
    #     video calling, and screen sharing capabilities</a> in the <i>Amazon Connect Administrator
    #     Guide</i>. </p>
    # @param [Hash, Types::StartScreenSharingRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   }
    #   options = {}
    #   response = client.start_screen_sharing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartScreenSharingResponse]
    def start_screen_sharing(params = {}, options = {})
      request = build_request(:start_screen_sharing, params)
      request.send_request(options)
    end

    # <p>Initiates a flow to start a new task contact. For more information about task contacts, see
    #     <a href="https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html">Concepts: Tasks in
    #      Amazon Connect</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    #          <p>When using <code>PreviousContactId</code> and <code>RelatedContactId</code> input
    #    parameters, note the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PreviousContactId</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Any updates to user-defined task contact attributes on any contact linked through the
    #        same <code>PreviousContactId</code> will affect every contact in the chain.</p>
    #                   </li>
    #                   <li>
    #                      <p>There can be a maximum of 12 linked task contacts in a chain. That is, 12 task contacts
    #        can be created that share the same <code>PreviousContactId</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RelatedContactId</code>
    #                </p>
    #                <ul>
    #                   <li>
    #                      <p>Copies contact attributes from the related task contact to the new contact.</p>
    #                   </li>
    #                   <li>
    #                      <p>Any update on attributes in a new task contact does not update attributes on previous
    #        contact.</p>
    #                   </li>
    #                   <li>
    #                      <p>There’s no limit on the number of task contacts that can be created that use the same
    #         <code>RelatedContactId</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>In addition, when calling StartTaskContact include only one of these parameters:
    #     <code>ContactFlowID</code>, <code>QuickConnectID</code>, or <code>TaskTemplateID</code>. Only
    #    one parameter is required as long as the task template has a flow configured to run it. If more
    #    than one parameter is specified, or only the <code>TaskTemplateID</code> is specified but it does
    #    not have a flow configured, the request returns an error because Amazon Connect cannot
    #    identify the unique flow to run when the task is created.</p>
    #          <p>A <code>ServiceQuotaExceededException</code> occurs when the number of open tasks exceeds
    #    the active tasks quota or there are already 12 tasks referencing the same
    #     <code>PreviousContactId</code>. For more information about service quotas for task contacts, see
    #     <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect service quotas</a> in the <i>Amazon Connect Administrator
    #     Guide</i>. </p>
    # @param [Hash, Types::StartTaskContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :previous_contact_id
    #   <p>The identifier of the previous chat, voice, or task contact. Any updates to user-defined
    #      attributes to task contacts linked using the same <code>PreviousContactID</code> will affect
    #      every contact in the chain. There can be a maximum of 12 linked task contacts in a chain.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow for initiating the tasks. To see the ContactFlowId in the Amazon Connect admin website,
    #      on the navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    # @option params [String] :name
    #   <p>The name of a task that is shown to an agent in the Contact Control Panel (CCP).</p>
    # @option params [Hash<String, Types::Reference>] :references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Tasks can have
    #      the following reference types at the time of creation: <code>URL</code> | <code>NUMBER</code> |
    #       <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code>. <code>ATTACHMENT</code> is not a
    #      supported reference type during task creation.</p>
    # @option params [String] :description
    #   <p>A description of the task that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Time] :scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template. For more information about task templates, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/task-templates.html">Create task templates</a> in the
    #        <i>Amazon Connect Administrator Guide</i>. </p>
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect. Tasks that are created by using <code>QuickConnectId</code> will use the
    #      flow that is defined on agent or queue quick connect. For more information about quick connects,
    #      see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/quick-connects.html">Create quick
    #       connects</a>.</p>
    # @option params [String] :related_contact_id
    #   <p>The contactId that is <a href="https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks">related</a> to this contact. Linking
    #      tasks together by using <code>RelatedContactID</code> copies over contact attributes from the
    #      related task contact to the new task contact. All updates to user-defined attributes in the new
    #      task contact are limited to the individual contact ID, unlike what happens when tasks are linked
    #      by using <code>PreviousContactID</code>. There are no limits to the number of contacts that can
    #      be linked by using <code>RelatedContactId</code>. </p>
    # @option params [Hash<String, Types::SegmentAttributeValue>] :segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments (unique
    #      contact ID) using an attribute map. The attributes are standard Amazon Connect attributes.
    #      They can be accessed in flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to set Contact Expiry as a duration in minutes and set a UserId for
    #      the User who created a task.</p>
    #            <note>
    #               <p>To set contact expiry, a ValueMap must be specified containing the integer number of
    #       minutes the contact will be active for before expiring, with <code>SegmentAttributes</code> like
    #       { <code> "connect:ContactExpiry": {"ValueMap" : { "ExpiryDuration": { "ValueInteger":
    #        135}}}}</code>. </p>
    #               <p>To set the created by user, a valid AgentResourceId must be supplied, with
    #        <code>SegmentAttributes</code> like { <code>"connect:CreatedByUser" { "ValueString":
    #        "arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/agent/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"}}}</code>.
    #      </p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     previous_contact_id: "ContactId",
    #     contact_flow_id: "ContactFlowId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     name: "Name", # required
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason"
    #       }
    #     },
    #     description: "Description",
    #     client_token: "ClientToken",
    #     scheduled_time: Time.now,
    #     task_template_id: "TaskTemplateId",
    #     quick_connect_id: "QuickConnectId",
    #     related_contact_id: "ContactId",
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           }
    #         },
    #         value_integer: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_task_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId"
    #   }
    # @return [Types::StartTaskContactResponse]
    def start_task_contact(params = {}, options = {})
      request = build_request(:start_task_contact, params)
      request.send_request(options)
    end

    # <p>Places an inbound in-app, web, or video call to a contact, and then initiates the flow. It
    #    performs the actions in the flow that are specified (in ContactFlowId) and present in the Amazon Connect instance (specified as InstanceId).</p>
    # @param [Hash, Types::StartWebRTCContactRequest] params
    # @option params [Hash<String, String>] :attributes
    #   <p>A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in flows just like any other contact attributes.</p>
    #            <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per contact. Attribute keys
    #      can include only alphanumeric, -, and _ characters.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #            <p>The token is valid for 7 days after creation. If a contact is already started, the contact
    #      ID is returned.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow for the call. To see the ContactFlowId in the Amazon Connect admin website, on the
    #      navigation menu go to <b>Routing</b>, <b>Flows</b>. Choose the flow. On the flow page, under the name of the flow, choose
    #       <b>Show additional flow information</b>. The ContactFlowId is the last
    #      part of the ARN, shown here in bold: </p>
    #            <p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<b>846ec553-a005-41c0-8341-xxxxxxxxxxxx</b>
    #            </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::AllowedCapabilities] :allowed_capabilities
    #   <p>Information about the video sharing capabilities of the participants (customer,
    #      agent).</p>
    # @option params [Types::ParticipantDetails] :participant_details
    #   <p>The customer's details.</p>
    # @option params [String] :related_contact_id
    #   <p>The unique identifier for an Amazon Connect contact. This identifier is related to the
    #      contact starting.</p>
    # @option params [Hash<String, Types::Reference>] :references
    #   <p>A formatted URL that is shown to an agent in the Contact Control Panel (CCP). Tasks can have
    #      the following reference types at the time of creation: <code>URL</code> | <code>NUMBER</code> |
    #       <code>STRING</code> | <code>DATE</code> | <code>EMAIL</code>. <code>ATTACHMENT</code> is not a
    #      supported reference type during task creation.</p>
    # @option params [String] :description
    #   <p>A description of the task that is shown to an agent in the Contact Control Panel
    #      (CCP).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attributes: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     client_token: "ClientToken",
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     allowed_capabilities: {
    #       customer: {
    #         video: "SEND" # One of: ["SEND"],
    #         screen_share: "SEND" # One of: ["SEND"]
    #       },
    #       agent: {
    #         video: "SEND" # One of: ["SEND"],
    #         screen_share: "SEND" # One of: ["SEND"]
    #       }
    #     },
    #     participant_details: { # required
    #       display_name: "DisplayName", # required
    #     },
    #     related_contact_id: "ContactId",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason"
    #       }
    #     },
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.start_web_rtc_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_data: {
    #       attendee: {
    #         attendee_id: "AttendeeId",
    #         join_token: "JoinToken"
    #       },
    #       meeting: {
    #         media_region: "MediaRegion",
    #         media_placement: {
    #           audio_host_url: "URI",
    #           audio_fallback_url: "URI",
    #           signaling_url: "URI",
    #           turn_control_url: "URI",
    #           event_ingestion_url: "URI"
    #         },
    #         meeting_features: {
    #           audio: {
    #             echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #           }
    #         },
    #         meeting_id: "MeetingId"
    #       }
    #     },
    #     contact_id: "ContactId",
    #     participant_id: "ParticipantId",
    #     participant_token: "ParticipantToken"
    #   }
    # @return [Types::StartWebRTCContactResponse]
    def start_web_rtc_contact(params = {}, options = {})
      request = build_request(:start_web_rtc_contact, params)
      request.send_request(options)
    end

    # <p>Ends the specified contact. Use this API to stop queued callbacks. It does not work for
    #    voice contacts that use the following initiation methods:</p>
    #          <ul>
    #             <li>
    #                <p>DISCONNECT</p>
    #             </li>
    #             <li>
    #                <p>TRANSFER</p>
    #             </li>
    #             <li>
    #                <p>QUEUE_TRANSFER</p>
    #             </li>
    #             <li>
    #                <p>EXTERNAL_OUTBOUND</p>
    #             </li>
    #             <li>
    #                <p>MONITOR</p>
    #             </li>
    #          </ul>
    #          <p>Chat and task contacts can be terminated in any state, regardless of initiation
    #    method.</p>
    # @param [Hash, Types::StopContactRequest] params
    # @option params [String] :contact_id
    #   <p>The ID of the contact.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Types::DisconnectReason] :disconnect_reason
    #   <p>The reason a contact can be disconnected. Only Amazon Connect outbound campaigns can
    #      provide this field.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     disconnect_reason: {
    #       code: "DisconnectReasonCode"
    #     }
    #   }
    #   options = {}
    #   response = client.stop_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopContactResponse]
    def stop_contact(params = {}, options = {})
      request = build_request(:stop_contact, params)
      request.send_request(options)
    end

    # <p>Stops recording a call when a contact is being recorded. StopContactRecording is a one-time
    #    action. If you use StopContactRecording to stop recording an ongoing call, you can't use
    #    StartContactRecording to restart it. For scenarios where the recording has started and you want
    #    to suspend it for sensitive information (for example, to collect a credit card number), and then
    #    restart it, use SuspendContactRecording and ResumeContactRecording.</p>
    #          <p>Only voice recordings are supported at this time.</p>
    # @param [Hash, Types::StopContactRecordingRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    # @option params [String] :contact_recording_type
    #   <p>The type of recording being operated on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     contact_recording_type: "AGENT" # One of: ["AGENT", "IVR", "SCREEN"]
    #   }
    #   options = {}
    #   response = client.stop_contact_recording(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopContactRecordingResponse]
    def stop_contact_recording(params = {}, options = {})
      request = build_request(:stop_contact_recording, params)
      request.send_request(options)
    end

    # <p> Ends message streaming on a specified contact. To restart message streaming on that
    #    contact, call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html">StartContactStreaming</a>
    #    API. </p>
    # @param [Hash, Types::StopContactStreamingRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact that is associated with
    #      the first interaction with the contact center.</p>
    # @option params [String] :streaming_id
    #   <p>The identifier of the streaming configuration enabled. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     streaming_id: "StreamingId", # required
    #   }
    #   options = {}
    #   response = client.stop_contact_streaming(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopContactStreamingResponse]
    def stop_contact_streaming(params = {}, options = {})
      request = build_request(:stop_contact_streaming, params)
      request.send_request(options)
    end

    # <p>Submits a contact evaluation in the specified Amazon Connect instance. Answers included
    #    in the request are merged with existing answers for the given evaluation. If no answers or notes
    #    are passed, the evaluation is submitted with the existing answers and notes. You can delete an
    #    answer or note by passing an empty object (<code>{}</code>) to the question identifier. </p>
    #          <p>If a contact evaluation is already in submitted state, this operation will trigger a
    #    resubmission.</p>
    # @param [Hash, Types::SubmitContactEvaluationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    # @option params [Hash<String, Types::EvaluationAnswerInput>] :answers
    #   <p>A map of question identifiers to answer value.</p>
    # @option params [Hash<String, Types::EvaluationNote>] :notes
    #   <p>A map of question identifiers to note value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #     answers: {
    #       "ResourceId" => {
    #         value: {
    #           # One of:
    #           string_value: "EvaluationAnswerDataStringValue",
    #           numeric_value: 1.0,
    #           not_applicable: false
    #         }
    #       }
    #     },
    #     notes: {
    #       "ResourceId" => {
    #         value: "EvaluationNoteString"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.submit_contact_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "ResourceId", # required
    #     evaluation_arn: "ARN", # required
    #   }
    # @return [Types::SubmitContactEvaluationResponse]
    def submit_contact_evaluation(params = {}, options = {})
      request = build_request(:submit_contact_evaluation, params)
      request.send_request(options)
    end

    # <p>When a contact is being recorded, this API suspends recording whatever is selected in the
    #    flow configuration: call (IVR or agent), screen, or both. If only call recording or only screen
    #    recording is enabled, then it would be suspended. For example, you might suspend the screen
    #    recording while collecting sensitive information, such as a credit card number. Then use <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ResumeContactRecording.html">ResumeContactRecording</a> to restart recording the screen.</p>
    #          <p>The period of time that the recording is suspended is filled with silence in the final
    #    recording. </p>
    #          <p> Voice (IVR, agent) and screen recordings are supported.</p>
    # @param [Hash, Types::SuspendContactRecordingRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    # @option params [String] :contact_recording_type
    #   <p>The type of recording being operated on.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     contact_recording_type: "AGENT" # One of: ["AGENT", "IVR", "SCREEN"]
    #   }
    #   options = {}
    #   response = client.suspend_contact_recording(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SuspendContactRecordingResponse]
    def suspend_contact_recording(params = {}, options = {})
      request = build_request(:suspend_contact_recording, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the contact resource. For more information about this API is
    #    used, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html">Set
    #     up granular billing for a detailed view of your Amazon Connect usage</a>. </p>
    # @param [Hash, Types::TagContactRequest] params
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be assigned to the contact resource. For example, { "Tags": {"key1":"value1",
    #      "key2":"value2"} }.</p>
    #            <note>
    #               <p>Authorization is not supported by this tag.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     tags: { # required
    #       "ContactTagKey" => "ContactTagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagContactResponse]
    def tag_contact(params = {}, options = {})
      request = build_request(:tag_contact, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource.</p>
    #          <p>Some of the supported resource types are agents, routing profiles, queues, quick connects,
    #    flows, agent statuses, hours of operation, phone numbers, security profiles, and task templates.
    #    For a complete list, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html">Tagging resources in Amazon Connect</a>.</p>
    #          <p>For sample policies that use tags, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html">Amazon Connect
    #     Identity-Based Policy Examples</a> in the <i>Amazon Connect Administrator
    #     Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource. For example, { "Tags": {"key1":"value1", "key2":"value2"} }.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Transfers <code>TASK</code> or <code>EMAIL</code>
    #     contacts from one agent or queue to another agent or queue at any point
    #    after a contact is created. You can transfer a contact to another queue by providing the flow
    #    which orchestrates the contact to the destination queue. This gives you more control over contact
    #    handling and helps you adhere to the service level agreement (SLA) guaranteed to your
    #    customers.</p>
    #          <p>Note the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Transfer is only supported for <code>TASK</code> and <code>EMAIL</code> contacts.</p>
    #             </li>
    #             <li>
    #                <p>Do not use both <code>QueueId</code> and <code>UserId</code> in the same call.</p>
    #             </li>
    #             <li>
    #                <p>The following flow types are supported: Inbound flow, Transfer to agent flow, and Transfer
    #      to queue flow.</p>
    #             </li>
    #             <li>
    #                <p>The <code>TransferContact</code> API can be called only on active contacts.</p>
    #             </li>
    #             <li>
    #                <p>A contact cannot be transferred more than 11 times.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TransferContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [String] :user_id
    #   <p>The identifier for the user. This can be the ID or the ARN of the user.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     queue_id: "QueueId",
    #     user_id: "AgentResourceId",
    #     contact_flow_id: "ContactFlowId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.transfer_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_id: "ContactId",
    #     contact_arn: "ARN"
    #   }
    # @return [Types::TransferContactResponse]
    def transfer_contact(params = {}, options = {})
      request = build_request(:transfer_contact, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the contact resource. For more information about this API is
    #    used, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html">Set
    #     up granular billing for a detailed view of your Amazon Connect usage</a>.</p>
    # @param [Hash, Types::UntagContactRequest] params
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Existing tags on the contact whose keys are members of this list will be
    #      removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     tag_keys: ["ContactTagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagContactResponse]
    def untag_contact(params = {}, options = {})
      request = build_request(:untag_contact, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates agent status.</p>
    # @param [Hash, Types::UpdateAgentStatusRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :agent_status_id
    #   <p>The identifier of the agent status.</p>
    # @option params [String] :name
    #   <p>The name of the agent status.</p>
    # @option params [String] :description
    #   <p>The description of the agent status.</p>
    # @option params [String] :state
    #   <p>The state of the agent status.</p>
    # @option params [Integer] :display_order
    #   <p>The display order of the agent status.</p>
    # @option params [Boolean] :reset_order_number
    #   <p>A number indicating the reset order of the agent status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #     name: "AgentStatusName",
    #     description: "UpdateAgentStatusDescription",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     display_order: 1,
    #     reset_order_number: false
    #   }
    #   options = {}
    #   response = client.update_agent_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_agent_status(params = {}, options = {})
      request = build_request(:update_agent_status, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change. To 
    # request access to this API, contact Amazon Web Services Support.</p>
    #          <p>Updates the selected authentication profile.</p>
    # @param [Hash, Types::UpdateAuthenticationProfileRequest] params
    # @option params [String] :authentication_profile_id
    #   <p>A unique identifier for the authentication profile. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name for the authentication profile.</p>
    # @option params [String] :description
    #   <p>The description for the authentication profile.</p>
    # @option params [Array<String>] :allowed_ips
    #   <p>A list of IP address range strings that are allowed to access the instance. For more
    #      information on how to configure IP addresses, see<a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts">Configure session timeouts</a> in the <i>Amazon Connect Administrator
    #       Guide</i>.</p>
    # @option params [Array<String>] :blocked_ips
    #   <p>A list of IP address range strings that are blocked from accessing the instance. For more
    #      information on how to configure IP addresses, For more information on how to configure IP
    #      addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-ip-based-ac">Configure
    #       IP-based access control</a> in the <i>Amazon Connect Administrator
    #       Guide</i>. </p>
    # @option params [Integer] :periodic_session_duration
    #   <p>The short lived session duration configuration for users logged in to Amazon Connect, in
    #      minutes. This value determines the maximum possible time before an agent is authenticated. For
    #      more information, For more information on how to configure IP addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/authentication-profiles.html#configure-session-timeouts">Configure session timeouts</a> in the <i>Amazon Connect Administrator
    #       Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     authentication_profile_id: "AuthenticationProfileId", # required
    #     instance_id: "InstanceId", # required
    #     name: "AuthenticationProfileName",
    #     description: "AuthenticationProfileDescription",
    #     allowed_ips: ["IpCidr"],
    #     blocked_ips: ["IpCidr"],
    #     periodic_session_duration: 1
    #   }
    #   options = {}
    #   response = client.update_authentication_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_authentication_profile(params = {}, options = {})
      request = build_request(:update_authentication_profile, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Adds or updates user-defined contact information associated with the specified contact. At
    #    least one field to be updated must be present in the request.</p>
    #          <important>
    #             <p>You can add or update user-defined contact information for both ongoing and completed
    #     contacts.</p>
    #          </important>
    # @param [Hash, Types::UpdateContactRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with your contact center.</p>
    # @option params [String] :name
    #   <p>The name of the contact.</p>
    # @option params [String] :description
    #   <p>The description of the contact.</p>
    # @option params [Hash<String, Types::Reference>] :references
    #   <p>Well-formed data on contact, shown to agents on Contact Control Panel (CCP).</p>
    # @option params [Hash<String, Types::SegmentAttributeValue>] :segment_attributes
    #   <p>A set of system defined key-value pairs stored on individual contact segments (unique
    #      contact ID) using an attribute map. The attributes are standard Amazon Connect attributes.
    #      They can be accessed in flows.</p>
    #            <p>Attribute keys can include only alphanumeric, -, and _.</p>
    #            <p>This field can be used to show channel subtype, such as <code>connect:Guide</code>.</p>
    #            <p>Currently Contact Expiry is the only segment attribute which can be updated by using the
    #      UpdateContact API.</p>
    # @option params [Types::QueueInfoInput] :queue_info
    #   <p> Information about the queue associated with a contact. This parameter can only be updated
    #      for external audio contacts. It is used when you integrate third-party systems with Contact Lens for
    #      analytics. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens integration</a> in
    #      the <i>
    #       Amazon Connect Administrator Guide</i>.</p>
    # @option params [Types::UserInfo] :user_info
    #   <p>Information about the agent associated with a contact. This parameter can only be updated
    #      for external audio contacts. It is used when you integrate third-party systems with Contact Lens for
    #      analytics. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens integration</a> in
    #      the <i>
    #       Amazon Connect Administrator Guide</i>.</p>
    # @option params [Types::Endpoint] :customer_endpoint
    #   <p>The endpoint of the customer for which the contact was initiated. For external audio
    #      contacts, this is usually the end customer's phone number. This value can only be updated for
    #      external audio contacts. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens
    #       integration</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @option params [Types::Endpoint] :system_endpoint
    #   <p>External system endpoint for the contact was initiated. For external audio contacts, this is
    #      the phone number of the external system such as the contact center. This value can only be
    #      updated for external audio contacts. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/contact-lens-integration.html">Amazon Connect Contact Lens
    #       integration</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     name: "Name",
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue",
    #         type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #         arn: "ReferenceArn",
    #         status_reason: "ReferenceStatusReason"
    #       }
    #     },
    #     segment_attributes: {
    #       "SegmentAttributeName" => {
    #         value_string: "SegmentAttributeValueString",
    #         value_map: {
    #           "SegmentAttributeName" => {
    #             # recursive SegmentAttributeValue
    #           }
    #         },
    #         value_integer: 1
    #       }
    #     },
    #     queue_info: {
    #       id: "QueueId"
    #     },
    #     user_info: {
    #       user_id: "AgentResourceId"
    #     },
    #     customer_endpoint: {
    #       type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #       address: "EndpointAddress"
    #     },
    #     system_endpoint: {
    #       type: "TELEPHONE_NUMBER" # One of: ["TELEPHONE_NUMBER", "VOIP", "CONTACT_FLOW", "CONNECT_PHONENUMBER_ARN", "EMAIL_ADDRESS"],
    #       address: "EndpointAddress"
    #     }
    #   }
    #   options = {}
    #   response = client.update_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactResponse]
    def update_contact(params = {}, options = {})
      request = build_request(:update_contact, params)
      request.send_request(options)
    end

    # <p>Creates or updates
    #    user-defined contact attributes
    #    associated with the specified contact.</p>
    #          <p>You can create or update user-defined attributes for both ongoing and completed contacts.
    #    For example, while the call is active, you can update the customer's name or the reason the
    #    customer called. You can add notes about steps that the agent took during the call that display
    #    to the next agent that takes the call. You can also update attributes for a contact using data
    #    from your CRM application and save the data with the contact in Amazon Connect. You could
    #    also flag calls for additional analysis, such as legal review or to identify abusive
    #    callers.</p>
    #          <p>Contact attributes are available in Amazon Connect for 24 months, and are then deleted.
    #    For information about contact record retention and the maximum size of the contact record
    #    attributes section, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits">Feature
    #     specifications</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    # @param [Hash, Types::UpdateContactAttributesRequest] params
    # @option params [String] :initial_contact_id
    #   <p>The identifier of the contact. This is the identifier of the contact associated with the
    #      first interaction with the contact center.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>The Amazon Connect attributes. These attributes can be accessed in flows just like any
    #      other contact attributes.</p>
    #            <p>You can have up to 32,768 UTF-8 bytes across all attributes for a contact. Attribute keys
    #      can include only alphanumeric, dash, and underscore characters.</p>
    #            <p>In the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html">Set contact attributes</a>
    #      block, when the attributes for a contact exceed 32 KB, the contact is routed down the Error
    #      branch of the flow. As a mitigation, consider the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Remove unnecessary attributes by setting their values to empty.</p>
    #               </li>
    #               <li>
    #                  <p>If the attributes are only used in one flow and don't need to be referred to outside of
    #        that flow (for example, by a Lambda or another flow), then use flow attributes. This way you
    #        aren't needlessly persisting the 32 KB of information from one flow to another. For more
    #        information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/set-contact-attributes.html">Flow block: Set contact
    #         attributes</a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     initial_contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     attributes: { # required
    #       "AttributeName" => "AttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_contact_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactAttributesResponse]
    def update_contact_attributes(params = {}, options = {})
      request = build_request(:update_contact_attributes, params)
      request.send_request(options)
    end

    # <p>Updates details about a contact evaluation in the specified Amazon Connect instance. A
    #    contact evaluation must be in draft state. Answers included in the request are merged with
    #    existing answers for the given evaluation. An answer or note can be deleted by passing an empty
    #    object (<code>{}</code>) to the question identifier. </p>
    # @param [Hash, Types::UpdateContactEvaluationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_id
    #   <p>A unique identifier for the contact evaluation.</p>
    # @option params [Hash<String, Types::EvaluationAnswerInput>] :answers
    #   <p>A map of question identifiers to answer value.</p>
    # @option params [Hash<String, Types::EvaluationNote>] :notes
    #   <p>A map of question identifiers to note value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #     answers: {
    #       "ResourceId" => {
    #         value: {
    #           # One of:
    #           string_value: "EvaluationAnswerDataStringValue",
    #           numeric_value: 1.0,
    #           not_applicable: false
    #         }
    #       }
    #     },
    #     notes: {
    #       "ResourceId" => {
    #         value: "EvaluationNoteString"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_contact_evaluation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_id: "ResourceId", # required
    #     evaluation_arn: "ARN", # required
    #   }
    # @return [Types::UpdateContactEvaluationResponse]
    def update_contact_evaluation(params = {}, options = {})
      request = build_request(:update_contact_evaluation, params)
      request.send_request(options)
    end

    # <p>Updates the specified flow.</p>
    #          <p>You can also create and update flows using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    #          <p>Use the <code>$SAVED</code> alias in the request to describe the <code>SAVED</code> content
    #    of a Flow. For example, <code>arn:aws:.../contact-flow/{id}:$SAVED</code>. After a flow is
    #    published, <code>$SAVED</code> needs to be supplied to view saved content that has not been
    #    published.</p>
    # @param [Hash, Types::UpdateContactFlowContentRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 256000.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     content: "ContactFlowContent", # required
    #   }
    #   options = {}
    #   response = client.update_contact_flow_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactFlowContentResponse]
    def update_contact_flow_content(params = {}, options = {})
      request = build_request(:update_contact_flow_content, params)
      request.send_request(options)
    end

    # <p>Updates metadata about specified flow.</p>
    # @param [Hash, Types::UpdateContactFlowMetadataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :name
    #   <p>The name of the flow.</p>
    # @option params [String] :description
    #   <p>The description of the flow.</p>
    # @option params [String] :contact_flow_state
    #   <p>The state of flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription",
    #     contact_flow_state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"]
    #   }
    #   options = {}
    #   response = client.update_contact_flow_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactFlowMetadataResponse]
    def update_contact_flow_metadata(params = {}, options = {})
      request = build_request(:update_contact_flow_metadata, params)
      request.send_request(options)
    end

    # <p>Updates specified flow module for the specified Amazon Connect instance. </p>
    #          <p>Use the <code>$SAVED</code> alias in the request to describe the <code>SAVED</code> content
    #    of a Flow. For example, <code>arn:aws:.../contact-flow/{id}:$SAVED</code>. After a flow is
    #    published, <code>$SAVED</code> needs to be supplied to view saved content that has not been
    #    published.</p>
    # @param [Hash, Types::UpdateContactFlowModuleContentRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    # @option params [String] :content
    #   <p>The JSON string that represents the content of the flow. For an example, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
    #       flow in Amazon Connect Flow language</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #     content: "ContactFlowModuleContent", # required
    #   }
    #   options = {}
    #   response = client.update_contact_flow_module_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactFlowModuleContentResponse]
    def update_contact_flow_module_content(params = {}, options = {})
      request = build_request(:update_contact_flow_module_content, params)
      request.send_request(options)
    end

    # <p>Updates metadata about specified flow module.</p>
    # @param [Hash, Types::UpdateContactFlowModuleMetadataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_flow_module_id
    #   <p>The identifier of the flow module.</p>
    # @option params [String] :name
    #   <p>The name of the flow module.</p>
    # @option params [String] :description
    #   <p>The description of the flow module.</p>
    # @option params [String] :state
    #   <p>The state of flow module.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #     name: "ContactFlowModuleName",
    #     description: "ContactFlowModuleDescription",
    #     state: "ACTIVE" # One of: ["ACTIVE", "ARCHIVED"]
    #   }
    #   options = {}
    #   response = client.update_contact_flow_module_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactFlowModuleMetadataResponse]
    def update_contact_flow_module_metadata(params = {}, options = {})
      request = build_request(:update_contact_flow_module_metadata, params)
      request.send_request(options)
    end

    # <p>The name of the flow.</p>
    #          <p>You can also create and update flows using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html">Amazon Connect
    #    Flow language</a>.</p>
    # @param [Hash, Types::UpdateContactFlowNameRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow.</p>
    # @option params [String] :name
    #   <p>The name of the flow.</p>
    # @option params [String] :description
    #   <p>The description of the flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription"
    #   }
    #   options = {}
    #   response = client.update_contact_flow_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactFlowNameResponse]
    def update_contact_flow_name(params = {}, options = {})
      request = build_request(:update_contact_flow_name, params)
      request.send_request(options)
    end

    # <p>Updates routing priority and age on the contact (<b>QueuePriority</b> and <b>QueueTimeAdjustmentInSeconds</b>).
    #    These properties can be used to change a customer's position in the queue. For example, you can
    #    move a contact to the back of the queue by setting a lower routing priority relative to other
    #    contacts in queue; or you can move a contact to the front of the queue by increasing the routing
    #    age which will make the contact look artificially older and therefore higher up in the
    #    first-in-first-out routing order. Note that adjusting the routing age of a contact affects only
    #    its position in queue, and not its actual queue wait time as reported through metrics. These
    #    properties can also be updated by using <a href="https://docs.aws.amazon.com/connect/latest/adminguide/change-routing-priority.html">the Set routing priority / age flow
    #     block</a>.</p>
    #          <note>
    #             <p>Either <b>QueuePriority</b> or <b>QueueTimeAdjustmentInSeconds</b> should be provided within the request body, but not
    #     both.</p>
    #          </note>
    # @param [Hash, Types::UpdateContactRoutingDataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Integer] :queue_time_adjustment_seconds
    #   <p>The number of seconds to add or subtract from the contact's routing age. Contacts are routed
    #      to agents on a first-come, first-serve basis. This means that changing their amount of time in
    #      queue compared to others also changes their position in queue.</p>
    # @option params [Integer] :queue_priority
    #   <p>Priority of the contact in the queue. The default priority for new contacts is 5. You can
    #      raise the priority of a contact compared to other contacts in the queue by assigning them a
    #      higher priority, such as 1 or 2.</p>
    # @option params [Types::RoutingCriteriaInput] :routing_criteria
    #   <p>Updates the routing criteria on the contact. These properties can be used to change how a 
    #      contact is routed within the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     queue_time_adjustment_seconds: 1,
    #     queue_priority: 1,
    #     routing_criteria: {
    #       steps: [
    #         {
    #           expiry: {
    #             duration_in_seconds: 1
    #           },
    #           expression: {
    #             attribute_condition: {
    #               name: "PredefinedAttributeName",
    #               value: "ProficiencyValue",
    #               proficiency_level: 1.0,
    #               range: {
    #                 min_proficiency_level: 1.0,
    #                 max_proficiency_level: 1.0
    #               },
    #               match_criteria: {
    #                 agents_criteria: {
    #                   agent_ids: ["AgentId"]
    #                 }
    #               },
    #               comparison_operator: "ComparisonOperator"
    #             },
    #             and_expression: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             or_expression: [
    #               {
    #                 # recursive Expression
    #               }
    #             ],
    #             not_attribute_condition: {
    #               name: "PredefinedAttributeName",
    #               value: "ProficiencyValue",
    #               proficiency_level: 1.0,
    #               range: {
    #                 min_proficiency_level: 1.0,
    #                 max_proficiency_level: 1.0
    #               },
    #               match_criteria: {
    #                 agents_criteria: {
    #                   agent_ids: ["AgentId"]
    #                 }
    #               },
    #               comparison_operator: "ComparisonOperator"
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_contact_routing_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactRoutingDataResponse]
    def update_contact_routing_data(params = {}, options = {})
      request = build_request(:update_contact_routing_data, params)
      request.send_request(options)
    end

    # <p>Updates the scheduled time of a task contact that is already scheduled.</p>
    # @param [Hash, Types::UpdateContactScheduleRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact.</p>
    # @option params [Time] :scheduled_time
    #   <p>The timestamp, in Unix Epoch seconds format, at which to start running the inbound flow. The scheduled time cannot be in the past. It must be within up to 6 days in future. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     scheduled_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.update_contact_schedule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactScheduleResponse]
    def update_contact_schedule(params = {}, options = {})
      request = build_request(:update_contact_schedule, params)
      request.send_request(options)
    end

    # <p>Updates an email address metadata. For more information about email addresses, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html">Create email
    #     addresses</a> in the Amazon Connect Administrator Guide.</p>
    # @param [Hash, Types::UpdateEmailAddressMetadataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :email_address_id
    #   <p>The identifier of the email address.</p>
    # @option params [String] :description
    #   <p>The description of the email address.</p>
    # @option params [String] :display_name
    #   <p>The display name of email address.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     email_address_id: "EmailAddressId", # required
    #     description: "Description",
    #     display_name: "EmailAddressDisplayName",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_email_address_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     email_address_id: "EmailAddressId",
    #     email_address_arn: "EmailAddressArn"
    #   }
    # @return [Types::UpdateEmailAddressMetadataResponse]
    def update_email_address_metadata(params = {}, options = {})
      request = build_request(:update_email_address_metadata, params)
      request.send_request(options)
    end

    # <p>Updates details about a specific evaluation form version in the specified Amazon Connect
    #    instance. Question and section identifiers cannot be duplicated within the same evaluation
    #    form.</p>
    #          <p>This operation does not support partial updates. Instead it does a full update of evaluation
    #    form content.</p>
    # @param [Hash, Types::UpdateEvaluationFormRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :evaluation_form_id
    #   <p>The unique identifier for the evaluation form.</p>
    # @option params [Integer] :evaluation_form_version
    #   <p>A version of the evaluation form to update.</p>
    # @option params [Boolean] :create_new_version
    #   <p>A flag indicating whether the operation must create a new version.</p>
    # @option params [String] :title
    #   <p>A title of the evaluation form.</p>
    # @option params [String] :description
    #   <p>The description of the evaluation form.</p>
    # @option params [Array<Types::EvaluationFormItem>] :items
    #   <p>Items that are part of the evaluation form.  The total number of sections and questions must not exceed 100 each.  Questions must be contained in a section.</p>
    # @option params [Types::EvaluationFormScoringStrategy] :scoring_strategy
    #   <p>A scoring strategy of the evaluation form.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #     create_new_version: false,
    #     title: "EvaluationFormTitle", # required
    #     description: "EvaluationFormDescription",
    #     items: [{ # required
    #       # One of:
    #       section: {
    #         title: "EvaluationFormSectionTitle", # required
    #         ref_id: "ReferenceId", # required
    #         instructions: "EvaluationFormQuestionInstructions",
    #         items: { # required
    #           # recursive EvaluationFormItemsList
    #         },
    #         weight: 1.0
    #       },
    #       question: {
    #         title: "EvaluationFormQuestionTitle", # required
    #         instructions: "EvaluationFormQuestionInstructions",
    #         ref_id: "ReferenceId", # required
    #         not_applicable_enabled: false,
    #         question_type: "TEXT" # One of: ["TEXT", "SINGLESELECT", "NUMERIC"], # required
    #         question_type_properties: {
    #           # One of:
    #           numeric: {
    #             min_value: 1, # required
    #             max_value: 1, # required
    #             options: [
    #               {
    #                 min_value: 1, # required
    #                 max_value: 1, # required
    #                 score: 1,
    #                 automatic_fail: false
    #               }
    #             ],
    #             automation: {
    #               # One of:
    #               property_value: {
    #                 label: "OVERALL_CUSTOMER_SENTIMENT_SCORE" # One of: ["OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"], # required
    #               }
    #             }
    #           },
    #           single_select: {
    #             options: [ # required
    #               {
    #                 ref_id: "ReferenceId", # required
    #                 text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                 score: 1,
    #                 automatic_fail: false
    #               }
    #             ],
    #             display_as: "DROPDOWN" # One of: ["DROPDOWN", "RADIO"],
    #             automation: {
    #               options: [{ # required
    #                 # One of:
    #                 rule_category: {
    #                   category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                   condition: "PRESENT" # One of: ["PRESENT", "NOT_PRESENT"], # required
    #                   option_ref_id: "ReferenceId", # required
    #                 }
    #               }],
    #               default_option_ref_id: "ReferenceId"
    #             }
    #           }
    #         },
    #         weight: 1.0
    #       }
    #     }],
    #     scoring_strategy: {
    #       mode: "QUESTION_ONLY" # One of: ["QUESTION_ONLY", "SECTION_ONLY"], # required
    #       status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_evaluation_form(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_arn: "ARN", # required
    #     evaluation_form_version: 1, # required
    #   }
    # @return [Types::UpdateEvaluationFormResponse]
    def update_evaluation_form(params = {}, options = {})
      request = build_request(:update_evaluation_form, params)
      request.send_request(options)
    end

    # <p>Updates the hours of operation.</p>
    # @param [Hash, Types::UpdateHoursOfOperationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier of the hours of operation.</p>
    # @option params [String] :name
    #   <p>The name of the hours of operation.</p>
    # @option params [String] :description
    #   <p>The description of the hours of operation.</p>
    # @option params [String] :time_zone
    #   <p>The time zone of the hours of operation.</p>
    # @option params [Array<Types::HoursOfOperationConfig>] :config
    #   <p>Configuration information of the hours of operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     name: "CommonNameLength127",
    #     description: "UpdateHoursOfOperationDescription",
    #     time_zone: "TimeZone",
    #     config: [
    #       {
    #         day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"], # required
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_hours_of_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_hours_of_operation(params = {}, options = {})
      request = build_request(:update_hours_of_operation, params)
      request.send_request(options)
    end

    # <p>Update the hours of operation override.</p>
    # @param [Hash, Types::UpdateHoursOfOperationOverrideRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @option params [String] :hours_of_operation_override_id
    #   <p>The identifier for the hours of operation override.</p>
    # @option params [String] :name
    #   <p>The name of the hours of operation override.</p>
    # @option params [String] :description
    #   <p>The description of the hours of operation override.</p>
    # @option params [Array<Types::HoursOfOperationOverrideConfig>] :config
    #   <p>Configuration information for the hours of operation override: day, start time, and end
    #      time.</p>
    # @option params [String] :effective_from
    #   <p>The date from when the hours of operation override would be effective.</p>
    # @option params [String] :effective_till
    #   <p>The date till when the hours of operation override would be effective.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     hours_of_operation_override_id: "HoursOfOperationOverrideId", # required
    #     name: "CommonHumanReadableName",
    #     description: "CommonHumanReadableDescription",
    #     config: [
    #       {
    #         day: "SUNDAY" # One of: ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"],
    #         start_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: {
    #           hours: 1, # required
    #           minutes: 1, # required
    #         }
    #       }
    #     ],
    #     effective_from: "HoursOfOperationOverrideYearMonthDayDateFormat",
    #     effective_till: "HoursOfOperationOverrideYearMonthDayDateFormat"
    #   }
    #   options = {}
    #   response = client.update_hours_of_operation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_hours_of_operation_override(params = {}, options = {})
      request = build_request(:update_hours_of_operation_override, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates the value for the specified attribute type.</p>
    # @param [Hash, Types::UpdateInstanceAttributeRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :attribute_type
    #   <p>The type of attribute.</p>
    #            <note>
    #               <p>Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To access this feature,
    #       contact Amazon Web Services Support for allowlisting.</p>
    #            </note>
    # @option params [String] :value
    #   <p>The value for the attribute. Maximum character limit is 100. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     attribute_type: "INBOUND_CALLS" # One of: ["INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING", "ENHANCED_CHAT_MONITORING", "MULTI_PARTY_CHAT_CONFERENCE"], # required
    #     value: "InstanceAttributeValue", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_instance_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_instance_attribute(params = {}, options = {})
      request = build_request(:update_instance_attribute, params)
      request.send_request(options)
    end

    # <p>This API is in preview release for Amazon Connect and is subject to change.</p>
    #          <p>Updates an existing configuration for a resource type. This API is idempotent.</p>
    # @param [Hash, Types::UpdateInstanceStorageConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :association_id
    #   <p>The existing association identifier that uniquely identifies the resource type and storage config for the given instance ID.</p>
    # @option params [String] :resource_type
    #   <p>A valid resource type.</p>
    # @option params [Types::InstanceStorageConfig] :storage_config
    #   <p>The storage configuration for the instance.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS" # One of: ["CHAT_TRANSCRIPTS", "CALL_RECORDINGS", "SCHEDULED_REPORTS", "MEDIA_STREAMS", "CONTACT_TRACE_RECORDS", "AGENT_EVENTS", "REAL_TIME_CONTACT_ANALYSIS_SEGMENTS", "ATTACHMENTS", "CONTACT_EVALUATIONS", "SCREEN_RECORDINGS", "REAL_TIME_CONTACT_ANALYSIS_CHAT_SEGMENTS", "REAL_TIME_CONTACT_ANALYSIS_VOICE_SEGMENTS", "EMAIL_MESSAGES"], # required
    #     storage_config: { # required
    #       association_id: "AssociationId",
    #       storage_type: "S3" # One of: ["S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"], # required
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS" # One of: ["KMS"], # required
    #           key_id: "KeyId", # required
    #         }
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS" # One of: ["KMS"], # required
    #           key_id: "KeyId", # required
    #         }
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_instance_storage_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_instance_storage_config(params = {}, options = {})
      request = build_request(:update_instance_storage_config, params)
      request.send_request(options)
    end

    # <p>Instructs Amazon Connect to resume the authentication process. The subsequent actions
    #    depend on the request body contents:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>If a code is provided</b>: Connect retrieves the identity
    #      information from Amazon Cognito and imports it into Connect Customer Profiles.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>If an error is provided</b>: The error branch of the
    #      Authenticate Customer block is executed.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The API returns a success response to acknowledge the request. However, the interaction and
    #     exchange of identity information occur asynchronously after the response is returned.</p>
    #          </note>
    # @param [Hash, Types::UpdateParticipantAuthenticationRequest] params
    # @option params [String] :state
    #   <p>The <code>state</code> query parameter that was provided by Cognito in the
    #       <code>redirectUri</code>. This will also match the <code>state</code> parameter provided in the
    #       <code>AuthenticationUrl</code> from the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetAuthenticationUrl.html">GetAuthenticationUrl</a>
    #      response.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :code
    #   <p>The <code>code</code> query parameter provided by Cognito in the
    #      <code>redirectUri</code>.</p>
    # @option params [String] :error
    #   <p>The <code>error</code> query parameter provided by Cognito in the
    #      <code>redirectUri</code>.</p>
    # @option params [String] :error_description
    #   <p>The <code>error_description</code> parameter provided by Cognito in the
    #       <code>redirectUri</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     state: "ParticipantToken", # required
    #     instance_id: "InstanceId", # required
    #     code: "AuthorizationCode",
    #     error: "AuthenticationError",
    #     error_description: "AuthenticationErrorDescription"
    #   }
    #   options = {}
    #   response = client.update_participant_authentication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateParticipantAuthenticationResponse]
    def update_participant_authentication(params = {}, options = {})
      request = build_request(:update_participant_authentication, params)
      request.send_request(options)
    end

    # <p>Updates timeouts for when human chat participants are to be considered idle, and when agents
    #    are automatically disconnected from a chat due to idleness. You can set four timers:</p>
    #          <ul>
    #             <li>
    #                <p>Customer idle timeout</p>
    #             </li>
    #             <li>
    #                <p>Customer auto-disconnect timeout</p>
    #             </li>
    #             <li>
    #                <p>Agent idle timeout</p>
    #             </li>
    #             <li>
    #                <p>Agent auto-disconnect timeout</p>
    #             </li>
    #          </ul>
    #          <p>For more information about how chat timeouts work, see 
    #    <a href="https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html">Set up chat timeouts for human participants</a>. </p>
    # @param [Hash, Types::UpdateParticipantRoleConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :contact_id
    #   <p>The identifier of the contact in this instance of Amazon Connect. </p>
    # @option params [Types::UpdateParticipantRoleConfigChannelInfo] :channel_configuration
    #   <p>The Amazon Connect channel you want to configure.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     channel_configuration: { # required
    #       # One of:
    #       chat: {
    #         participant_timer_config_list: [ # required
    #           {
    #             participant_role: "CUSTOMER" # One of: ["CUSTOMER", "AGENT"], # required
    #             timer_type: "IDLE" # One of: ["IDLE", "DISCONNECT_NONCUSTOMER"], # required
    #             timer_value: { # required
    #               # One of:
    #               participant_timer_action: "Unset" # One of: ["Unset"],
    #               participant_timer_duration_in_minutes: 1
    #             }
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_participant_role_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateParticipantRoleConfigResponse]
    def update_participant_role_config(params = {}, options = {})
      request = build_request(:update_participant_role_config, params)
      request.send_request(options)
    end

    # <p>Updates your claimed phone number from its current Amazon Connect instance or traffic distribution group to
    #    another Amazon Connect instance or traffic distribution group in the same Amazon Web Services Region.</p>
    #          <important>
    #             <p>After using this API, you must verify that the phone number is attached to the correct flow
    #     in the target instance or traffic distribution group. You need to do this because the API
    #     switches only the phone number to a new instance or traffic distribution group. It doesn't
    #     migrate the flow configuration of the phone number, too.</p>
    #             <p>You can call <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html">DescribePhoneNumber</a> API
    #     to verify the status of a previous <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html">UpdatePhoneNumber</a>
    #     operation.</p>
    #          </important>
    # @param [Hash, Types::UpdatePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>A unique identifier for the phone number.</p>
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) for Amazon Connect instances or traffic distribution groups that phone number inbound traffic is routed through. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance that phone numbers are claimed to. You
    #      can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the
    #       instance ID</a> in the Amazon Resource Name (ARN) of the instance. You must enter <code>InstanceId</code> or <code>TargetArn</code>. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberId", # required
    #     target_arn: "ARN",
    #     instance_id: "InstanceId",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_id: "PhoneNumberId",
    #     phone_number_arn: "ARN"
    #   }
    # @return [Types::UpdatePhoneNumberResponse]
    def update_phone_number(params = {}, options = {})
      request = build_request(:update_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates a phone number’s metadata.</p>
    #          <important>
    #             <p>To verify the status of a previous UpdatePhoneNumberMetadata operation, call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html">DescribePhoneNumber</a> API.</p>
    #          </important>
    # @param [Hash, Types::UpdatePhoneNumberMetadataRequest] params
    # @option params [String] :phone_number_id
    #   <p>The Amazon Resource Name (ARN) or resource ID of the phone number.</p>
    # @option params [String] :phone_number_description
    #   <p>The description of the phone number.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberId", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_phone_number_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_phone_number_metadata(params = {}, options = {})
      request = build_request(:update_phone_number_metadata, params)
      request.send_request(options)
    end

    # <p>Updates a predefined attribute for the specified Amazon Connect instance. <i>Predefined
    #     attributes</i> are attributes in an Amazon Connect instance that can be used to route
    #    contacts to an agent or pools of agents within a queue. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html">Create
    #     predefined attributes for routing contacts to agents</a>.</p>
    # @param [Hash, Types::UpdatePredefinedAttributeRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the predefined attribute.</p>
    # @option params [Types::PredefinedAttributeValues] :values
    #   <p>The values of the predefined attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     name: "PredefinedAttributeName", # required
    #     values: {
    #       # One of:
    #       string_list: ["PredefinedAttributeStringValue"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_predefined_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_predefined_attribute(params = {}, options = {})
      request = build_request(:update_predefined_attribute, params)
      request.send_request(options)
    end

    # <p>Updates a prompt.</p>
    # @param [Hash, Types::UpdatePromptRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :prompt_id
    #   <p>A unique identifier for the prompt.</p>
    # @option params [String] :name
    #   <p>The name of the prompt.</p>
    # @option params [String] :description
    #   <p>A description of the prompt.</p>
    # @option params [String] :s3_uri
    #   <p>The URI for the S3 bucket where the prompt is stored. You can provide S3 pre-signed URLs returned by the 
    #   <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_GetPromptFile.html">GetPromptFile</a>
    #    API instead of providing S3 URIs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #     name: "CommonNameLength127",
    #     description: "PromptDescription",
    #     s3_uri: "S3Uri"
    #   }
    #   options = {}
    #   response = client.update_prompt(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     prompt_arn: "ARN",
    #     prompt_id: "PromptId"
    #   }
    # @return [Types::UpdatePromptResponse]
    def update_prompt(params = {}, options = {})
      request = build_request(:update_prompt, params)
      request.send_request(options)
    end

    # <p>Updates the hours of operation for the specified queue.</p>
    # @param [Hash, Types::UpdateQueueHoursOfOperationRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [String] :hours_of_operation_id
    #   <p>The identifier for the hours of operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   }
    #   options = {}
    #   response = client.update_queue_hours_of_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_queue_hours_of_operation(params = {}, options = {})
      request = build_request(:update_queue_hours_of_operation, params)
      request.send_request(options)
    end

    # <p>Updates the maximum number of contacts allowed in a queue before it is considered
    #    full.</p>
    # @param [Hash, Types::UpdateQueueMaxContactsRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [Integer] :max_contacts
    #   <p>The maximum number of contacts that can be in the queue before it is considered full.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     max_contacts: 1
    #   }
    #   options = {}
    #   response = client.update_queue_max_contacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_queue_max_contacts(params = {}, options = {})
      request = build_request(:update_queue_max_contacts, params)
      request.send_request(options)
    end

    # <p>Updates the name and description of a queue. At least <code>Name</code> or <code>Description</code> must be provided.</p>
    # @param [Hash, Types::UpdateQueueNameRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [String] :name
    #   <p>The name of the queue.</p>
    # @option params [String] :description
    #   <p>The description of the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     name: "CommonNameLength127",
    #     description: "QueueDescription"
    #   }
    #   options = {}
    #   response = client.update_queue_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_queue_name(params = {}, options = {})
      request = build_request(:update_queue_name, params)
      request.send_request(options)
    end

    # <p>Updates the outbound caller ID name, number, and outbound whisper flow for a specified
    #    queue.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>If the phone number is claimed to a traffic distribution group that was created in the
    #       same Region as the Amazon Connect instance where you are calling this API, then you can use a
    #       full phone number ARN or a UUID for <code>OutboundCallerIdNumberId</code>. However, if the phone number is claimed
    #       to a traffic distribution group that is in one Region, and you are calling this API from an instance in another Amazon Web Services Region that is associated with the traffic distribution group, you must provide a full phone number ARN. If a
    #       UUID is provided in this scenario, you will receive a
    #       <code>ResourceNotFoundException</code>.</p>
    #                </li>
    #                <li>
    #                   <p>Only use the phone number ARN format that doesn't contain <code>instance</code> in the
    #       path, for example, <code>arn:aws:connect:us-east-1:1234567890:phone-number/uuid</code>. This
    #       is the same ARN format that is returned when you call the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html">ListPhoneNumbersV2</a>
    #       API.</p>
    #                </li>
    #                <li>
    #                   <p>If you plan to use IAM policies to allow/deny access to this API for phone
    #       number resources claimed to a traffic distribution group, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region">Allow or Deny queue API actions for phone numbers in a replica Region</a>.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::UpdateQueueOutboundCallerConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [Types::OutboundCallerConfig] :outbound_caller_config
    #   <p>The outbound caller ID name, number, and outbound whisper flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     outbound_caller_config: { # required
    #       outbound_caller_id_name: "OutboundCallerIdName",
    #       outbound_caller_id_number_id: "PhoneNumberId",
    #       outbound_flow_id: "ContactFlowId"
    #     }
    #   }
    #   options = {}
    #   response = client.update_queue_outbound_caller_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_queue_outbound_caller_config(params = {}, options = {})
      request = build_request(:update_queue_outbound_caller_config, params)
      request.send_request(options)
    end

    # <p>Updates the outbound email address Id for a specified queue.</p>
    # @param [Hash, Types::UpdateQueueOutboundEmailConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [Types::OutboundEmailConfig] :outbound_email_config
    #   <p>The outbound email address ID for a specified queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     outbound_email_config: { # required
    #       outbound_email_address_id: "EmailAddressId"
    #     }
    #   }
    #   options = {}
    #   response = client.update_queue_outbound_email_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_queue_outbound_email_config(params = {}, options = {})
      request = build_request(:update_queue_outbound_email_config, params)
      request.send_request(options)
    end

    # <p>Updates the status of the queue.</p>
    # @param [Hash, Types::UpdateQueueStatusRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :queue_id
    #   <p>The identifier for the queue.</p>
    # @option params [String] :status
    #   <p>The status of the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_queue_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_queue_status(params = {}, options = {})
      request = build_request(:update_queue_status, params)
      request.send_request(options)
    end

    # <p>Updates the configuration settings for the specified quick connect.</p>
    # @param [Hash, Types::UpdateQuickConnectConfigRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    # @option params [Types::QuickConnectConfig] :quick_connect_config
    #   <p>Information about the configuration settings for the quick connect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #     quick_connect_config: { # required
    #       quick_connect_type: "USER" # One of: ["USER", "QUEUE", "PHONE_NUMBER"], # required
    #       user_config: {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       queue_config: {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       phone_config: {
    #         phone_number: "PhoneNumber", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_quick_connect_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_quick_connect_config(params = {}, options = {})
      request = build_request(:update_quick_connect_config, params)
      request.send_request(options)
    end

    # <p>Updates the name and description of a quick connect. The request accepts the following data in JSON format. At least <code>Name</code> or <code>Description</code> must be provided.</p>
    # @param [Hash, Types::UpdateQuickConnectNameRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :quick_connect_id
    #   <p>The identifier for the quick connect.</p>
    # @option params [String] :name
    #   <p>The name of the quick connect.</p>
    # @option params [String] :description
    #   <p>The description of the quick connect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #     name: "QuickConnectName",
    #     description: "UpdateQuickConnectDescription"
    #   }
    #   options = {}
    #   response = client.update_quick_connect_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_quick_connect_name(params = {}, options = {})
      request = build_request(:update_quick_connect_name, params)
      request.send_request(options)
    end

    # <p>Whether agents with this routing profile will have their routing order calculated based on
    #     <i>time since their last inbound contact</i> or <i>longest idle
    #     time</i>. </p>
    # @param [Hash, Types::UpdateRoutingProfileAgentAvailabilityTimerRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [String] :agent_availability_timer
    #   <p>Whether agents with this routing profile will have their routing order calculated based on
    #       <i>time since their last inbound contact</i> or <i>longest idle
    #       time</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     agent_availability_timer: "TIME_SINCE_LAST_ACTIVITY" # One of: ["TIME_SINCE_LAST_ACTIVITY", "TIME_SINCE_LAST_INBOUND"], # required
    #   }
    #   options = {}
    #   response = client.update_routing_profile_agent_availability_timer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_routing_profile_agent_availability_timer(params = {}, options = {})
      request = build_request(:update_routing_profile_agent_availability_timer, params)
      request.send_request(options)
    end

    # <p>Updates the channels that agents can handle in the Contact Control Panel (CCP) for a routing
    #    profile.</p>
    # @param [Hash, Types::UpdateRoutingProfileConcurrencyRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [Array<Types::MediaConcurrency>] :media_concurrencies
    #   <p>The channels that agents can handle in the Contact Control Panel (CCP).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #         concurrency: 1, # required
    #         cross_channel_behavior: {
    #           behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY" # One of: ["ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_routing_profile_concurrency(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_routing_profile_concurrency(params = {}, options = {})
      request = build_request(:update_routing_profile_concurrency, params)
      request.send_request(options)
    end

    # <p>Updates the default outbound queue of a routing profile.</p>
    # @param [Hash, Types::UpdateRoutingProfileDefaultOutboundQueueRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [String] :default_outbound_queue_id
    #   <p>The identifier for the default outbound queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     default_outbound_queue_id: "QueueId", # required
    #   }
    #   options = {}
    #   response = client.update_routing_profile_default_outbound_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_routing_profile_default_outbound_queue(params = {}, options = {})
      request = build_request(:update_routing_profile_default_outbound_queue, params)
      request.send_request(options)
    end

    # <p>Updates the name and description of a routing profile. The request accepts the following data in JSON format.
    #    At least <code>Name</code> or <code>Description</code> must be provided.</p>
    # @param [Hash, Types::UpdateRoutingProfileNameRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [String] :name
    #   <p>The name of the routing profile. Must not be more than 127 characters.</p>
    # @option params [String] :description
    #   <p>The description of the routing profile. Must not be more than 250 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     name: "RoutingProfileName",
    #     description: "RoutingProfileDescription"
    #   }
    #   options = {}
    #   response = client.update_routing_profile_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_routing_profile_name(params = {}, options = {})
      request = build_request(:update_routing_profile_name, params)
      request.send_request(options)
    end

    # <p>Updates the properties associated with a set of queues for a routing profile.</p>
    # @param [Hash, Types::UpdateRoutingProfileQueuesRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile.</p>
    # @option params [Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   <p>The queues to be updated for this routing profile.
    #      Queues must first be associated to the routing
    #      profile. You can do this using AssociateRoutingProfileQueues.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE" # One of: ["VOICE", "CHAT", "TASK", "EMAIL"], # required
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_routing_profile_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_routing_profile_queues(params = {}, options = {})
      request = build_request(:update_routing_profile_queues, params)
      request.send_request(options)
    end

    # <p>Updates a rule for the specified Amazon Connect instance.</p>
    #          <p>Use the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html">Rules Function language</a> to
    #    code conditions for the rule. </p>
    # @param [Hash, Types::UpdateRuleRequest] params
    # @option params [String] :rule_id
    #   <p>A unique identifier for the rule.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the rule. You can change the name only if <code>TriggerEventSource</code> is one
    #      of the following values: <code>OnZendeskTicketCreate</code> |
    #       <code>OnZendeskTicketStatusUpdate</code> | <code>OnSalesforceCaseCreate</code>
    #            </p>
    # @option params [String] :function
    #   <p>The conditions of the rule.</p>
    # @option params [Array<Types::RuleAction>] :actions
    #   <p>A list of actions to be run when the rule is triggered.</p>
    # @option params [String] :publish_status
    #   <p>The publish status of the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "RuleId", # required
    #     instance_id: "InstanceId", # required
    #     name: "RuleName", # required
    #     function: "RuleFunction", # required
    #     actions: [ # required
    #       {
    #         action_type: "CREATE_TASK" # One of: ["CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION", "CREATE_CASE", "UPDATE_CASE", "ASSIGN_SLA", "END_ASSOCIATED_TASKS", "SUBMIT_AUTO_EVALUATION"], # required
    #         task_action: {
    #           name: "TaskNameExpression", # required
    #           description: "TaskDescriptionExpression",
    #           contact_flow_id: "ContactFlowId", # required
    #           references: {
    #             "ReferenceKey" => {
    #               value: "ReferenceValue",
    #               type: "URL" # One of: ["URL", "ATTACHMENT", "CONTACT_ANALYSIS", "NUMBER", "STRING", "DATE", "EMAIL", "EMAIL_MESSAGE"], # required
    #               status: "AVAILABLE" # One of: ["AVAILABLE", "DELETED", "APPROVED", "REJECTED", "PROCESSING", "FAILED"],
    #               arn: "ReferenceArn",
    #               status_reason: "ReferenceStatusReason"
    #             }
    #           }
    #         },
    #         event_bridge_action: {
    #           name: "EventBridgeActionName", # required
    #         },
    #         assign_contact_category_action: {
    #         },
    #         send_notification_action: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL"], # required
    #           subject: "Subject",
    #           content: "Content", # required
    #           content_type: "PLAIN_TEXT" # One of: ["PLAIN_TEXT"], # required
    #           recipient: { # required
    #             user_tags: {
    #               "String" => "String"
    #             },
    #             user_ids: ["UserId"]
    #           }
    #         },
    #         create_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue"
    #               }
    #             }
    #           ],
    #           template_id: "TemplateId", # required
    #         },
    #         update_case_action: {
    #           fields: [ # required
    #             {
    #               id: "FieldValueId", # required
    #               value: { # required
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue"
    #               }
    #             }
    #           ]
    #         },
    #         assign_sla_action: {
    #           sla_assignment_type: "CASES" # One of: ["CASES"], # required
    #           case_sla_configuration: {
    #             name: "SlaName", # required
    #             type: "CaseField" # One of: ["CaseField"], # required
    #             field_id: "FieldValueId",
    #             target_field_values: [
    #               {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 empty_value: {
    #                 },
    #                 string_value: "FieldStringValue"
    #               }
    #             ],
    #             target_sla_minutes: 1, # required
    #           }
    #         },
    #         end_associated_tasks_action: {
    #         },
    #         submit_auto_evaluation_action: {
    #           evaluation_form_id: "EvaluationFormId", # required
    #         }
    #       }
    #     ],
    #     publish_status: "DRAFT" # One of: ["DRAFT", "PUBLISHED"], # required
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_rule(params = {}, options = {})
      request = build_request(:update_rule, params)
      request.send_request(options)
    end

    # <p>Updates a security profile.</p>
    #          <p>For information about security profiles, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html">Security Profiles</a> in the
    #      <i>Amazon Connect Administrator Guide</i>. For a mapping of the API name and
    #    user interface name of the security profile permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security profile
    #     permissions</a>. </p>
    # @param [Hash, Types::UpdateSecurityProfileRequest] params
    # @option params [String] :description
    #   <p>The description of the security profile.</p>
    # @option params [Array<String>] :permissions
    #   <p>The permissions granted to a security profile. For a list of valid permissions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List of security
    #       profile permissions</a>.</p>
    # @option params [String] :security_profile_id
    #   <p>The identifier for the security profle.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [Hash<String, String>] :allowed_access_control_tags
    #   <p>The list of tags that a security profile uses to restrict access to resources in Amazon Connect.</p>
    # @option params [Array<String>] :tag_restricted_resources
    #   <p>The list of resources that a security profile applies tag restrictions to in Amazon Connect.</p>
    # @option params [Array<Types::Application>] :applications
    #   <p>A list of the third-party application's metadata.</p>
    # @option params [Array<String>] :hierarchy_restricted_resources
    #   <p>The list of resources that a security profile applies hierarchy restrictions to in Amazon Connect. Following are acceptable ResourceNames: <code>User</code>.</p>
    # @option params [String] :allowed_access_control_hierarchy_group_id
    #   <p>The identifier of the hierarchy group that a security profile uses to restrict access to
    #      resources in Amazon Connect.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "SecurityProfileDescription",
    #     permissions: ["SecurityProfilePermission"],
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     allowed_access_control_tags: {
    #       "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue"
    #     },
    #     tag_restricted_resources: ["TagRestrictedResourceName"],
    #     applications: [
    #       {
    #         namespace: "Namespace",
    #         application_permissions: ["Permission"]
    #       }
    #     ],
    #     hierarchy_restricted_resources: ["HierarchyRestrictedResourceName"],
    #     allowed_access_control_hierarchy_group_id: "HierarchyGroupId"
    #   }
    #   options = {}
    #   response = client.update_security_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_security_profile(params = {}, options = {})
      request = build_request(:update_security_profile, params)
      request.send_request(options)
    end

    # <p>Updates details about a specific task template in the specified Amazon Connect instance.
    #    This operation does not support partial updates. Instead it does a full update of template
    #    content.</p>
    # @param [Hash, Types::UpdateTaskTemplateRequest] params
    # @option params [String] :task_template_id
    #   <p>A unique identifier for the task template.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @option params [String] :name
    #   <p>The name of the task template.</p>
    # @option params [String] :description
    #   <p>The description of the task template.</p>
    # @option params [String] :contact_flow_id
    #   <p>The identifier of the flow that runs by default when a task is created by referencing this template.</p>
    # @option params [String] :self_assign_flow_id
    #   <p>The ContactFlowId for the flow that will be run if this template is used to create a
    #      self-assigned task.</p>
    # @option params [Types::TaskTemplateConstraints] :constraints
    #   <p>Constraints that are applicable to the fields listed.</p>
    # @option params [Types::TaskTemplateDefaults] :defaults
    #   <p>The default values for fields when a task is created by referencing this template.</p>
    # @option params [String] :status
    #   <p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code> for a task to refer to it. 
    #   Tasks can only be created from <code>ACTIVE</code> templates.
    #   If a template is marked as <code>INACTIVE</code>, then a task that refers to this template cannot be created.</p>
    # @option params [Array<Types::TaskTemplateField>] :fields
    #   <p>Fields that are part of the template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_template_id: "TaskTemplateId", # required
    #     instance_id: "InstanceId", # required
    #     name: "TaskTemplateName",
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     self_assign_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ]
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           },
    #           default_value: "TaskTemplateFieldValue"
    #         }
    #       ]
    #     },
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     fields: [
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName"
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME" # One of: ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL", "SELF_ASSIGN", "EXPIRY_DURATION"],
    #         single_select_options: ["TaskTemplateSingleSelectOption"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_task_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_id: "InstanceId",
    #     id: "TaskTemplateId",
    #     arn: "TaskTemplateArn",
    #     name: "TaskTemplateName",
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     self_assign_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           }
    #         }
    #       ]
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName"
    #           },
    #           default_value: "TaskTemplateFieldValue"
    #         }
    #       ]
    #     },
    #     fields: [
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName"
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME" # One of: ["NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL", "SELF_ASSIGN", "EXPIRY_DURATION"],
    #         single_select_options: ["TaskTemplateSingleSelectOption"]
    #       }
    #     ],
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     last_modified_time: Time.now,
    #     created_time: Time.now
    #   }
    # @return [Types::UpdateTaskTemplateResponse]
    def update_task_template(params = {}, options = {})
      request = build_request(:update_task_template, params)
      request.send_request(options)
    end

    # <p>Updates the traffic distribution for a given traffic distribution group. </p>
    #          <important>
    #             <p>When you shift telephony traffic, also shift agents and/or agent sign-ins to ensure they
    #     can handle the calls in the other Region. If you don't shift the agents, voice calls will go to
    #     the shifted Region but there won't be any agents available to receive the calls.</p>
    #          </important>
    #          <note>
    #             <p>The <code>SignInConfig</code> distribution is available only on a 
    # default <code>TrafficDistributionGroup</code> (see the <code>IsDefault</code> parameter in the 
    # <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html">TrafficDistributionGroup</a>
    #  data type). If you call
    #     <code>UpdateTrafficDistribution</code> with a modified <code>SignInConfig</code> and a non-default <code>TrafficDistributionGroup</code>,
    #     an <code>InvalidRequestException</code> is returned.</p>
    #          </note>
    #          <p>For more information about updating a traffic distribution group, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html">Update telephony
    #     traffic distribution across Amazon Web Services Regions
    #    </a> in the <i>Amazon Connect Administrator Guide</i>. </p>
    # @param [Hash, Types::UpdateTrafficDistributionRequest] params
    # @option params [String] :id
    #   <p>The identifier of the traffic distribution group.
    #   This can be the ID or the ARN if the API is being called in the Region where the traffic distribution group was created.
    #   The ARN must be provided if the call is from the replicated Region. </p>
    # @option params [Types::TelephonyConfig] :telephony_config
    #   <p>The distribution of traffic between the instance and its replica(s).</p>
    # @option params [Types::SignInConfig] :sign_in_config
    #   <p>The distribution that determines which Amazon Web Services Regions should be used to sign in
    #      agents in to both the instance and its replica(s).</p>
    # @option params [Types::AgentConfig] :agent_config
    #   <p>The distribution of agents between the instance and its replica(s).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "TrafficDistributionGroupIdOrArn", # required
    #     telephony_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         }
    #       ]
    #     },
    #     sign_in_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           enabled: false, # required
    #         }
    #       ]
    #     },
    #     agent_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_traffic_distribution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateTrafficDistributionResponse]
    def update_traffic_distribution(params = {}, options = {})
      request = build_request(:update_traffic_distribution, params)
      request.send_request(options)
    end

    # <p>Assigns the specified hierarchy group to the specified user.</p>
    # @param [Hash, Types::UpdateUserHierarchyRequest] params
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hierarchy_group_id: "HierarchyGroupId",
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_hierarchy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_hierarchy(params = {}, options = {})
      request = build_request(:update_user_hierarchy, params)
      request.send_request(options)
    end

    # <p>Updates the name of the user hierarchy group. </p>
    # @param [Hash, Types::UpdateUserHierarchyGroupNameRequest] params
    # @option params [String] :name
    #   <p>The name of the hierarchy group. Must not be more than 100 characters.</p>
    # @option params [String] :hierarchy_group_id
    #   <p>The identifier of the hierarchy group.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "HierarchyGroupName", # required
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_hierarchy_group_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_hierarchy_group_name(params = {}, options = {})
      request = build_request(:update_user_hierarchy_group_name, params)
      request.send_request(options)
    end

    # <p>Updates the user hierarchy structure: add, remove, and rename user hierarchy levels.</p>
    # @param [Hash, Types::UpdateUserHierarchyStructureRequest] params
    # @option params [Types::HierarchyStructureUpdate] :hierarchy_structure
    #   <p>The hierarchy levels to update.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hierarchy_structure: { # required
    #       level_one: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_two: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_three: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_four: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_five: {
    #         name: "HierarchyLevelName", # required
    #       }
    #     },
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_hierarchy_structure(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_hierarchy_structure(params = {}, options = {})
      request = build_request(:update_user_hierarchy_structure, params)
      request.send_request(options)
    end

    # <p>Updates the identity information for the specified user.</p>
    #          <important>
    #             <p>We strongly recommend limiting who has the ability to invoke
    #      <code>UpdateUserIdentityInfo</code>. Someone with that ability can change the login credentials
    #     of other users by changing their email address. This poses a security risk to your organization.
    #     They can change the email address of a user to the attacker's email address, and then reset the
    #     password through email. For more information, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html">Best Practices for
    #      Security Profiles</a> in the <i>Amazon Connect Administrator
    #     Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::UpdateUserIdentityInfoRequest] params
    # @option params [Types::UserIdentityInfo] :identity_info
    #   <p>The identity information for the user.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identity_info: { # required
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #       secondary_email: "Email",
    #       mobile: "PhoneNumber"
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_identity_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_identity_info(params = {}, options = {})
      request = build_request(:update_user_identity_info, params)
      request.send_request(options)
    end

    # <p>Updates the phone configuration settings for the specified user.</p>
    # @param [Hash, Types::UpdateUserPhoneConfigRequest] params
    # @option params [Types::UserPhoneConfig] :phone_config
    #   <p>Information about phone configuration settings for the user.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE" # One of: ["SOFT_PHONE", "DESK_PHONE"], # required
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber"
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_phone_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_phone_config(params = {}, options = {})
      request = build_request(:update_user_phone_config, params)
      request.send_request(options)
    end

    # <p>Updates the properties associated with the proficiencies of a user.</p>
    # @param [Hash, Types::UpdateUserProficienciesRequest] params
    # @option params [String] :instance_id
    #   <p> The identifier of the Amazon Connect instance. You can find the instance ID in the Amazon Resource
    #      Name (ARN) of the instance.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [Array<Types::UserProficiency>] :user_proficiencies
    #   <p>The proficiencies to be updated for the user. Proficiencies must first be associated to the
    #      user. You can do this using AssociateUserProficiencies API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #     user_proficiencies: [ # required
    #       {
    #         attribute_name: "PredefinedAttributeName", # required
    #         attribute_value: "PredefinedAttributeStringValue", # required
    #         level: 1.0, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_user_proficiencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_proficiencies(params = {}, options = {})
      request = build_request(:update_user_proficiencies, params)
      request.send_request(options)
    end

    # <p>Assigns the specified routing profile to the specified user.</p>
    # @param [Hash, Types::UpdateUserRoutingProfileRequest] params
    # @option params [String] :routing_profile_id
    #   <p>The identifier of the routing profile for the user.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     routing_profile_id: "RoutingProfileId", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_routing_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_routing_profile(params = {}, options = {})
      request = build_request(:update_user_routing_profile, params)
      request.send_request(options)
    end

    # <p>Assigns the specified security profiles to the specified user.</p>
    # @param [Hash, Types::UpdateUserSecurityProfilesRequest] params
    # @option params [Array<String>] :security_profile_ids
    #   <p>The identifiers of the security profiles for the user.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user account.</p>
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can <a href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find the instance ID</a> in the Amazon Resource Name (ARN) of the instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   }
    #   options = {}
    #   response = client.update_user_security_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_user_security_profiles(params = {}, options = {})
      request = build_request(:update_user_security_profiles, params)
      request.send_request(options)
    end

    # <p>Updates the view content of the given view identifier in the specified Amazon Connect
    #    instance.</p>
    #          <p>It performs content validation if <code>Status</code> is set to <code>SAVED</code> and
    #    performs full content validation if <code>Status</code> is <code>PUBLISHED</code>. Note that the
    #     <code>$SAVED</code> alias' content will always be updated, but the <code>$LATEST</code> alias'
    #    content will only be updated if <code>Status</code> is <code>PUBLISHED</code>.</p>
    # @param [Hash, Types::UpdateViewContentRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    # @option params [String] :status
    #   <p>Indicates the view status as either <code>SAVED</code> or <code>PUBLISHED</code>. The
    #       <code>PUBLISHED</code> status will initiate validation on the content.</p>
    # @option params [Types::ViewInputContent] :content
    #   <p>View content containing all content necessary to render a view except for runtime input data
    #      and the runtime input schema, which is auto-generated by this operation.</p>
    #            <p>The total uncompressed content has a maximum file size of 400kB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"], # required
    #     content: { # required
    #       template: "ViewTemplate",
    #       actions: ["ViewAction"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_view_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       id: "ViewId",
    #       arn: "ARN",
    #       name: "ViewName",
    #       status: "PUBLISHED" # One of: ["PUBLISHED", "SAVED"],
    #       type: "CUSTOMER_MANAGED" # One of: ["CUSTOMER_MANAGED", "AWS_MANAGED"],
    #       description: "ViewDescription",
    #       version: 1,
    #       version_description: "ViewDescription",
    #       content: {
    #         input_schema: "ViewInputSchema",
    #         template: "ViewTemplate",
    #         actions: ["ViewAction"]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       created_time: Time.now,
    #       last_modified_time: Time.now,
    #       view_content_sha256: "ViewContentSha256"
    #     }
    #   }
    # @return [Types::UpdateViewContentResponse]
    def update_view_content(params = {}, options = {})
      request = build_request(:update_view_content, params)
      request.send_request(options)
    end

    # <p>Updates the view metadata. Note that either <code>Name</code> or <code>Description</code>
    #    must be provided.</p>
    # @param [Hash, Types::UpdateViewMetadataRequest] params
    # @option params [String] :instance_id
    #   <p>The identifier of the Amazon Connect instance. You can find the instanceId in the ARN of
    #      the instance.</p>
    # @option params [String] :view_id
    #   <p>The identifier of the view. Both <code>ViewArn</code> and <code>ViewId</code> can be
    #      used.</p>
    # @option params [String] :name
    #   <p>The name of the view.</p>
    # @option params [String] :description
    #   <p>The description of the view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_id: "ViewsInstanceId", # required
    #     view_id: "ViewId", # required
    #     name: "ViewName",
    #     description: "ViewDescription"
    #   }
    #   options = {}
    #   response = client.update_view_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateViewMetadataResponse]
    def update_view_metadata(params = {}, options = {})
      request = build_request(:update_view_metadata, params)
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
      context[:gem_name] = 'aws-sdk-connect'
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
