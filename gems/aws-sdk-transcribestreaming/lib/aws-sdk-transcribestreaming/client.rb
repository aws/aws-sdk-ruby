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

module Aws::TranscribeStreaming
  # An API client for Aws::TranscribeStreaming.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Transcribe

    add_plugin(::Aws::TranscribeStreaming::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::TranscribeStreaming::EndpointProvider)
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

    # <p>Provides details about the specified Amazon Web Services HealthScribe streaming session.
    #       To view the status of the streaming session, check the <code>StreamStatus</code> field in the response. To get the
    #       details of post-stream analytics, including its status, check the <code>PostStreamAnalyticsResult</code> field in the response.
    #     </p>
    # @param [Hash, Types::GetMedicalScribeStreamRequest] params
    # @option params [String] :session_id
    #   <p>The identifier of the HealthScribe streaming session you want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_medical_scribe_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     medical_scribe_stream_details: {
    #       session_id: "SessionId",
    #       stream_created_at: Time.now,
    #       stream_ended_at: Time.now,
    #       language_code: "en-US" # One of: ["en-US"],
    #       media_sample_rate_hertz: 1,
    #       media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"],
    #       vocabulary_name: "VocabularyName",
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #       resource_access_role_arn: "IamRoleArn",
    #       channel_definitions: [
    #         {
    #           channel_id: 1, # required
    #           participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #         }
    #       ],
    #       encryption_settings: {
    #         kms_encryption_context: {
    #           "NonEmptyString" => "NonEmptyString"
    #         },
    #         kms_key_id: "KMSKeyId", # required
    #       },
    #       stream_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "PAUSED", "FAILED", "COMPLETED"],
    #       post_stream_analytics_settings: {
    #         clinical_note_generation_settings: { # required
    #           output_bucket_name: "BucketName", # required
    #           note_template: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "DAP", "SIRP", "BIRP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"]
    #         }
    #       },
    #       post_stream_analytics_result: {
    #         clinical_note_generation_result: {
    #           clinical_note_output_location: "Uri",
    #           transcript_output_location: "Uri",
    #           status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "FAILED", "COMPLETED"],
    #           failure_reason: "String"
    #         }
    #       },
    #       medical_scribe_context_provided: false
    #     }
    #   }
    # @return [Types::GetMedicalScribeStreamResponse]
    def get_medical_scribe_stream(params = {}, options = {})
      request = build_request(:get_medical_scribe_stream, params)
      request.send_request(options)
    end

    # <p>Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to 
    #       Amazon Transcribe and the transcription results are streamed to your application. Use this operation
    #       for <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html">Call Analytics</a> transcriptions.</p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code> or <code>identify-language</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>sample-rate</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on streaming with Amazon Transcribe, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @param [Hash, Types::StartCallAnalyticsStreamTranscriptionRequest] params
    # @option params [String] :language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <p>For a list of languages supported with real-time Call Analytics, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone audio,
    #         is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 48,000 Hz.
    #         Note that the sample rate you specify must match that of your audio.</p>
    # @option params [String] :media_encoding
    #   <p>Specify the encoding of your input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    # @option params [String] :vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in
    #         your media, the custom vocabulary is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    # @option params [String] :session_id
    #   <p>Specify a name for your Call Analytics transcription session. If you don't include this parameter
    #         in your request, Amazon Transcribe generates an ID and returns it in the response.</p>
    # @option params [Types::AudioStream] :audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @option params [String] :vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your
    #         transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in
    #         your media, the vocabulary filter is not applied to your transcription.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    # @option params [String] :vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    # @option params [String] :language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your
    #         transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify
    #         in your transcription request. If the languages don't match, the custom language model isn't applied. 
    #         There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    # @option params [Boolean] :identify_language
    #   <p>Enables automatic language identification for your Call Analytics transcription.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you must include a list of
    #         language codes, using <code>LanguageOptions</code>, that you think may be present in 
    #         your audio stream. You must provide a minimum of two language selections.</p>
    #            <p>You can also include a preferred language using <code>PreferredLanguage</code>. Adding a 
    #         preferred language can help Amazon Transcribe identify the language faster than if you omit this 
    #         parameter.</p>
    #            <p>Note that you must include either <code>LanguageCode</code> or 
    #         <code>IdentifyLanguage</code> in your request. If you include both parameters, your transcription job
    #         fails.</p>
    # @option params [String] :language_options
    #   <p>Specify two or more language codes that represent the languages you think may be present 
    #         in your media.</p>
    #            <p>Including language options can improve the accuracy of language identification.</p>
    #            <p>If you include <code>LanguageOptions</code> in your request, you must also include 
    #         <code>IdentifyLanguage</code>.</p>
    #            <p>For a list of languages supported with Call Analytics streaming, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    #            <important>
    #               <p>You can only include one language dialect per language per stream. For example, you
    #           cannot include <code>en-US</code> and <code>en-AU</code> in the same request.</p>
    #            </important>
    # @option params [String] :preferred_language
    #   <p>Specify a preferred language from the subset of languages codes you specified in 
    #         <code>LanguageOptions</code>.</p>
    #            <p>You can only use this parameter if you've included <code>IdentifyLanguage</code> and
    #           <code>LanguageOptions</code> in your request.</p>
    # @option params [String] :vocabulary_names
    #   <p>Specify the names of the custom vocabularies that you want to use when processing your
    #         Call Analytics transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the custom vocabulary's language doesn't match the identified media language, it won't be applied to the transcription.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> the
    #             <code>IdentifyLanguage</code> parameter. If you're <b>not</b>
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary
    #           with your transcription, use the <code>VocabularyName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    # @option params [String] :vocabulary_filter_names
    #   <p>Specify the names of the custom vocabulary filters that you want to use when processing
    #         your Call Analytics transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>These filters serve to customize the transcript output.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> 
    #           the <code>IdentifyLanguage</code> parameter. If you're <b>not</b> 
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary filter 
    #           with your transcription, use the <code>VocabularyFilterName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    # @option params [Boolean] :enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce
    #         latency in your output, but may impact accuracy. For more information, see 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #           stabilization</a>.</p>
    # @option params [String] :partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization 
    #         (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly
    #         lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #         stabilization</a>.</p>
    # @option params [String] :content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is identified.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    # @option params [String] :content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is redacted.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>
    #         in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    # @option params [String] :pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your 
    #         transcript. You can include as many types as you'd like, or you can select 
    #         <code>ALL</code>.</p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, 
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, 
    #         <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, 
    #         <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>Note that if you include <code>PiiEntityTypes</code> in your request, you must also include 
    #         <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>If you include <code>ContentRedactionType</code> or 
    #         <code>ContentIdentificationType</code> in your request, but do not include 
    #         <code>PiiEntityTypes</code>, all PII is redacted or identified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"], # required
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     audio_stream: { # required
    #       # One of:
    #       audio_event: {
    #         audio_chunk: "data"
    #       },
    #       configuration_event: {
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"], # required
    #           }
    #         ],
    #         post_call_analytics_settings: {
    #           output_location: "String", # required
    #           data_access_role_arn: "String", # required
    #           content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #           output_encryption_kms_key_id: "String"
    #         }
    #       }
    #     },
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #     language_model_name: "ModelName",
    #     identify_language: false,
    #     language_options: "LanguageOptions",
    #     preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #     vocabulary_names: "VocabularyNames",
    #     vocabulary_filter_names: "VocabularyFilterNames",
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #     content_identification_type: "PII" # One of: ["PII"],
    #     content_redaction_type: "PII" # One of: ["PII"],
    #     pii_entity_types: "PiiEntityTypes"
    #   }
    #   options = {}
    #   response = client.start_call_analytics_stream_transcription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "RequestId",
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #     media_sample_rate_hertz: 1,
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"],
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     call_analytics_transcript_result_stream: {
    #       # One of:
    #       utterance_event: {
    #         utterance_id: "String",
    #         is_partial: false,
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"],
    #         begin_offset_millis: 1,
    #         end_offset_millis: 1,
    #         transcript: "String",
    #         items: [
    #           {
    #             begin_offset_millis: 1,
    #             end_offset_millis: 1,
    #             type: "pronunciation" # One of: ["pronunciation", "punctuation"],
    #             content: "String",
    #             confidence: 1.0,
    #             vocabulary_filter_match: false,
    #             stable: false
    #           }
    #         ],
    #         entities: [
    #           {
    #             begin_offset_millis: 1,
    #             end_offset_millis: 1,
    #             category: "String",
    #             type: "String",
    #             content: "String",
    #             confidence: 1.0
    #           }
    #         ],
    #         sentiment: "POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "MIXED", "NEUTRAL"],
    #         issues_detected: [
    #           {
    #             character_offsets: {
    #               begin: 1,
    #               end: 1
    #             }
    #           }
    #         ],
    #         language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #         language_identification: [
    #           {
    #             language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #             score: 1.0
    #           }
    #         ]
    #       },
    #       category_event: {
    #         matched_categories: ["String"],
    #         matched_details: {
    #           "String" => {
    #             timestamp_ranges: [
    #               {
    #                 begin_offset_millis: 1,
    #                 end_offset_millis: 1
    #               }
    #             ]
    #           }
    #         }
    #       },
    #       bad_request_exception: {
    #         message: "String"
    #       },
    #       limit_exceeded_exception: {
    #         message: "String"
    #       },
    #       internal_failure_exception: {
    #         message: "String"
    #       },
    #       conflict_exception: {
    #         message: "String"
    #       },
    #       service_unavailable_exception: {
    #         message: "String"
    #       }
    #     },
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #     language_model_name: "ModelName",
    #     identify_language: false,
    #     language_options: "LanguageOptions",
    #     preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"],
    #     vocabulary_names: "VocabularyNames",
    #     vocabulary_filter_names: "VocabularyFilterNames",
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #     content_identification_type: "PII" # One of: ["PII"],
    #     content_redaction_type: "PII" # One of: ["PII"],
    #     pii_entity_types: "PiiEntityTypes"
    #   }
    # @return [Types::StartCallAnalyticsStreamTranscriptionResponse]
    def start_call_analytics_stream_transcription(params = {}, options = {})
      request = build_request(:start_call_analytics_stream_transcription, params)
      request.send_request(options)
    end

    # <p>Starts a bidirectional HTTP/2 stream, where audio is streamed to
    #       Amazon Web Services HealthScribe
    #       and the transcription results are streamed to your application.</p>
    #          <p>When you start a stream, you first specify the stream configuration in a <code>MedicalScribeConfigurationEvent</code>. 
    #       This event includes channel definitions, encryption settings, medical scribe context, and post-stream analytics settings, such as the output configuration for aggregated transcript and clinical note generation. These are additional
    #       streaming session configurations beyond those provided in your initial start request headers. Whether you are starting a new session or resuming an existing session, 
    #       your first event must be a <code>MedicalScribeConfigurationEvent</code>. </p>
    #          <p>
    #       After you send a <code>MedicalScribeConfigurationEvent</code>, you start <code>AudioEvents</code> and Amazon Web Services HealthScribe 
    #       responds with real-time transcription results. When you are finished, to start processing the results with the post-stream analytics, send a <code>MedicalScribeSessionControlEvent</code> with a <code>Type</code> of 
    #       <code>END_OF_SESSION</code> and Amazon Web Services HealthScribe starts the analytics.
    #     </p>
    #          <p>You can pause or resume streaming.
    #      To pause streaming, complete the input stream without sending the
    #       <code>MedicalScribeSessionControlEvent</code>.
    #       To resume streaming, call the <code>StartMedicalScribeStream</code> and specify the same SessionId you used to start the stream.
    #     </p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-sample-rate-hertz</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p></p>
    #          <p>For more information on streaming with
    #       Amazon Web Services HealthScribe,
    #       see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe-streaming.html">Amazon Web Services HealthScribe</a>.
    #     </p>
    # @param [Hash, Types::StartMedicalScribeStreamRequest] params
    # @option params [String] :session_id
    #   <p>Specify an identifier for your streaming session (in UUID format).
    #         If you don't include a SessionId in your request,
    #         Amazon Web Services HealthScribe generates an ID and returns it in the response.
    #       </p>
    # @option params [String] :language_code
    #   <p>Specify the language code for your HealthScribe streaming session.</p>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>Specify the sample rate of the input audio (in hertz).
    #         Amazon Web Services HealthScribe supports a range from 16,000 Hz to 48,000 Hz.
    #         The sample rate you specify must match that of your audio.
    #       </p>
    # @option params [String] :media_encoding
    #   <p>Specify the encoding used for the input audio.</p>
    #            <p>Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include
    #             WAV)
    #           </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media
    #         formats</a>.
    #       </p>
    # @option params [Types::MedicalScribeInputStream] :input_stream
    #   <p>Specify the input stream where you will send events in real time.</p>
    #            <p>The first element of the input stream must be a <code>MedicalScribeConfigurationEvent</code>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId",
    #     language_code: "en-US" # One of: ["en-US"], # required
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"], # required
    #     input_stream: { # required
    #       # One of:
    #       audio_event: {
    #         audio_chunk: "data", # required
    #       },
    #       session_control_event: {
    #         type: "END_OF_SESSION" # One of: ["END_OF_SESSION"], # required
    #       },
    #       configuration_event: {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #         resource_access_role_arn: "IamRoleArn", # required
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: "PATIENT" # One of: ["PATIENT", "CLINICIAN"], # required
    #           }
    #         ],
    #         encryption_settings: {
    #           kms_encryption_context: {
    #             "NonEmptyString" => "NonEmptyString"
    #           },
    #           kms_key_id: "KMSKeyId", # required
    #         },
    #         post_stream_analytics_settings: { # required
    #           clinical_note_generation_settings: { # required
    #             output_bucket_name: "BucketName", # required
    #             note_template: "HISTORY_AND_PHYSICAL" # One of: ["HISTORY_AND_PHYSICAL", "GIRPP", "DAP", "SIRP", "BIRP", "BEHAVIORAL_SOAP", "PHYSICAL_SOAP"]
    #           }
    #         },
    #         medical_scribe_context: {
    #           patient_context: {
    #             pronouns: "HE_HIM" # One of: ["HE_HIM", "SHE_HER", "THEY_THEM"]
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_medical_scribe_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "SessionId",
    #     request_id: "RequestId",
    #     language_code: "en-US" # One of: ["en-US"],
    #     media_sample_rate_hertz: 1,
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"],
    #     result_stream: {
    #       # One of:
    #       transcript_event: {
    #         transcript_segment: {
    #           segment_id: "String",
    #           begin_audio_time: 1.0,
    #           end_audio_time: 1.0,
    #           content: "String",
    #           items: [
    #             {
    #               begin_audio_time: 1.0,
    #               end_audio_time: 1.0,
    #               type: "pronunciation" # One of: ["pronunciation", "punctuation"],
    #               confidence: 1.0,
    #               content: "String",
    #               vocabulary_filter_match: false
    #             }
    #           ],
    #           is_partial: false,
    #           channel_id: "String"
    #         }
    #       },
    #       bad_request_exception: {
    #         message: "String"
    #       },
    #       limit_exceeded_exception: {
    #         message: "String"
    #       },
    #       internal_failure_exception: {
    #         message: "String"
    #       },
    #       conflict_exception: {
    #         message: "String"
    #       },
    #       service_unavailable_exception: {
    #         message: "String"
    #       }
    #     }
    #   }
    # @return [Types::StartMedicalScribeStreamResponse]
    def start_medical_scribe_stream(params = {}, options = {})
      request = build_request(:start_medical_scribe_stream, params)
      request.send_request(options)
    end

    # <p>Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to 
    #             Amazon Transcribe Medical and the transcription results are streamed to your
    #             application.</p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>sample-rate</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on streaming with Amazon Transcribe Medical, see 
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing
    #                 streaming audio</a>.</p>
    # @param [Hash, Types::StartMedicalStreamTranscriptionRequest] params
    # @option params [String] :language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <important>
    #               <p>Amazon Transcribe Medical only supports US English (<code>en-US</code>).</p>
    #            </important>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Amazon Transcribe Medical supports a
    #               range from 16,000 Hz to 48,000 Hz. Note that the sample rate you specify must match that
    #               of your audio.</p>
    # @option params [String] :media_encoding
    #   <p>Specify the encoding used for the input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include
    #                       WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    # @option params [String] :vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #               transcription. Note that vocabulary names are case sensitive.</p>
    # @option params [String] :specialty
    #   <p>Specify the medical specialty contained in your audio.</p>
    # @option params [String] :type
    #   <p>Specify the type of input audio. For example, choose <code>DICTATION</code> for a 
    #               provider dictating patient notes and <code>CONVERSATION</code> for a dialogue between a
    #               patient and a medical professional.</p>
    # @option params [Boolean] :show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker
    #               partitioning labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a>.</p>
    # @option params [String] :session_id
    #   <p>Specify a name for your transcription session. If you don't include this parameter in 
    #               your request, Amazon Transcribe Medical generates an ID and returns it in the
    #               response.</p>
    # @option params [Types::AudioStream] :audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @option params [Boolean] :enable_channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #            <p>Channel identification transcribes the audio on each channel independently, then appends
    #               the output for each channel into one transcript.</p>
    #            <p>If you have multi-channel audio and do not enable channel identification, your audio is 
    #               transcribed in a continuous manner and your transcript is not separated by channel.</p>
    #            <p>If you include <code>EnableChannelIdentification</code> in your request, you must also 
    #               include <code>NumberOfChannels</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    # @option params [Integer] :number_of_channels
    #   <p>Specify the number of channels in your audio stream. This value must be 
    #               <code>2</code>, as only two channels are supported. If your audio doesn't contain 
    #               multiple channels, do not include this parameter in your request.</p>
    #            <p>If you include <code>NumberOfChannels</code> in your request, you must also 
    #               include <code>EnableChannelIdentification</code>.</p>
    # @option params [String] :content_identification_type
    #   <p>Labels all personal health information (PHI) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PHI is flagged upon complete
    #               transcription of an audio segment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying personal health information (PHI) in a
    #               transcription</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"], # required
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"], # required
    #     vocabulary_name: "VocabularyName",
    #     specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"], # required
    #     type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"], # required
    #     show_speaker_label: false,
    #     session_id: "SessionId",
    #     audio_stream: { # required
    #       # One of:
    #       audio_event: {
    #         audio_chunk: "data"
    #       },
    #       configuration_event: {
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"], # required
    #           }
    #         ],
    #         post_call_analytics_settings: {
    #           output_location: "String", # required
    #           data_access_role_arn: "String", # required
    #           content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #           output_encryption_kms_key_id: "String"
    #         }
    #       }
    #     },
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     content_identification_type: "PHI" # One of: ["PHI"]
    #   }
    #   options = {}
    #   response = client.start_medical_stream_transcription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "RequestId",
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #     media_sample_rate_hertz: 1,
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"],
    #     vocabulary_name: "VocabularyName",
    #     specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"],
    #     type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"],
    #     show_speaker_label: false,
    #     session_id: "SessionId",
    #     transcript_result_stream: {
    #       # One of:
    #       transcript_event: {
    #         transcript: {
    #           results: [
    #             {
    #               result_id: "String",
    #               start_time: 1.0,
    #               end_time: 1.0,
    #               is_partial: false,
    #               alternatives: [
    #                 {
    #                   transcript: "String",
    #                   items: [
    #                     {
    #                       start_time: 1.0,
    #                       end_time: 1.0,
    #                       type: "pronunciation" # One of: ["pronunciation", "punctuation"],
    #                       content: "String",
    #                       confidence: 1.0,
    #                       speaker: "String"
    #                     }
    #                   ],
    #                   entities: [
    #                     {
    #                       start_time: 1.0,
    #                       end_time: 1.0,
    #                       category: "String",
    #                       content: "String",
    #                       confidence: 1.0
    #                     }
    #                   ]
    #                 }
    #               ],
    #               channel_id: "String"
    #             }
    #           ]
    #         }
    #       },
    #       bad_request_exception: {
    #         message: "String"
    #       },
    #       limit_exceeded_exception: {
    #         message: "String"
    #       },
    #       internal_failure_exception: {
    #         message: "String"
    #       },
    #       conflict_exception: {
    #         message: "String"
    #       },
    #       service_unavailable_exception: {
    #         message: "String"
    #       }
    #     },
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     content_identification_type: "PHI" # One of: ["PHI"]
    #   }
    # @return [Types::StartMedicalStreamTranscriptionResponse]
    def start_medical_stream_transcription(params = {}, options = {})
      request = build_request(:start_medical_stream_transcription, params)
      request.send_request(options)
    end

    # <p>Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to 
    #       Amazon Transcribe and the transcription results are streamed to your application.</p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code> or <code>identify-language</code> or <code>identify-multiple-language</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>sample-rate</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on streaming with Amazon Transcribe, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @param [Hash, Types::StartStreamTranscriptionRequest] params
    # @option params [String] :language_code
    #   <p>Specify the language code that represents the language spoken in your audio.</p>
    #            <p>If you're unsure of the language spoken in your audio, consider using 
    #         <code>IdentifyLanguage</code> to enable automatic language identification.</p>
    #            <p>For a list of languages supported with Amazon Transcribe streaming, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    # @option params [Integer] :media_sample_rate_hertz
    #   <p>The sample rate of the input audio (in hertz). Low-quality audio, such as telephone audio,
    #         is typically around 8,000 Hz. High-quality audio typically ranges from 16,000 Hz to 48,000 Hz.
    #         Note that the sample rate you specify must match that of your audio.</p>
    # @option params [String] :media_encoding
    #   <p>Specify the encoding of your input audio. Supported formats are:</p>
    #            <ul>
    #               <li>
    #                  <p>FLAC</p>
    #               </li>
    #               <li>
    #                  <p>OPUS-encoded audio in an Ogg container</p>
    #               </li>
    #               <li>
    #                  <p>PCM (only signed 16-bit little-endian audio formats, which does not include WAV)</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio">Media formats</a>.</p>
    # @option params [String] :vocabulary_name
    #   <p>Specify the name of the custom vocabulary that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary doesn't match the language identified in
    #         your media, the custom vocabulary is not applied to your transcription.</p>
    #            <important>
    #               <p>This parameter is <b>not</b> intended for use with the
    #             <code>IdentifyLanguage</code> parameter. If you're including <code>IdentifyLanguage</code>
    #           in your request and want to use one or more custom vocabularies with your transcription, use
    #           the <code>VocabularyNames</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    # @option params [String] :session_id
    #   <p>Specify a name for your transcription session. If you don't include this parameter in your request, 
    #         Amazon Transcribe generates an ID and returns it in the response.</p>
    # @option params [Types::AudioStream] :audio_stream
    #   <p>An encoded stream of audio blobs. Audio streams are encoded as either HTTP/2 or WebSocket 
    #         data frames.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @option params [String] :vocabulary_filter_name
    #   <p>Specify the name of the custom vocabulary filter that you want to use when processing your
    #         transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If the language of the specified custom vocabulary filter doesn't match the language identified in
    #         your media, the vocabulary filter is not applied to your transcription.</p>
    #            <important>
    #               <p>This parameter is <b>not</b> intended for use with the
    #             <code>IdentifyLanguage</code> parameter. If you're including <code>IdentifyLanguage</code>
    #           in your request and want to use one or more vocabulary filters with your transcription, use
    #           the <code>VocabularyFilterNames</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    # @option params [String] :vocabulary_filter_method
    #   <p>Specify how you want your vocabulary filter applied to your transcript.</p>
    #            <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>
    #            <p>To delete words, choose <code>remove</code>.</p>
    #            <p>To flag words without changing them, choose <code>tag</code>.</p>
    # @option params [Boolean] :show_speaker_label
    #   <p>Enables speaker partitioning (diarization) in your transcription output. Speaker partitioning 
    #         labels the speech from individual speakers in your media file.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html">Partitioning speakers (diarization)</a>.</p>
    # @option params [Boolean] :enable_channel_identification
    #   <p>Enables channel identification in multi-channel audio.</p>
    #            <p>Channel identification transcribes the audio on each channel independently, then appends the 
    #         output for each channel into one transcript.</p>
    #            <p>If you have multi-channel audio and do not enable channel identification, your audio is 
    #         transcribed in a continuous manner and your transcript is not separated by channel.</p>
    #            <p>If you include <code>EnableChannelIdentification</code> in your request, you must also 
    #         include <code>NumberOfChannels</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html">Transcribing multi-channel audio</a>.</p>
    # @option params [Integer] :number_of_channels
    #   <p>Specify the number of channels in your audio stream. This value must be 
    #         <code>2</code>, as only two channels are supported. If your audio doesn't contain 
    #         multiple channels, do not include this parameter in your request.</p>
    #            <p>If you include <code>NumberOfChannels</code> in your request, you must also 
    #         include <code>EnableChannelIdentification</code>.</p>
    # @option params [Boolean] :enable_partial_results_stabilization
    #   <p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce
    #         latency in your output, but may impact accuracy. For more information, see 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #         stabilization</a>.</p>
    # @option params [String] :partial_results_stability
    #   <p>Specify the level of stability to use when you enable partial results stabilization 
    #         (<code>EnablePartialResultsStabilization</code>).</p>
    #            <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly
    #         lower accuracy.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization">Partial-result 
    #         stabilization</a>.</p>
    # @option params [String] :content_identification_type
    #   <p>Labels all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content identification is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is flagged upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is identified.</p>
    #            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>
    #         in the same request. If you set both, your request returns a
    #         <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    # @option params [String] :content_redaction_type
    #   <p>Redacts all personally identifiable information (PII) identified in your transcript.</p>
    #            <p>Content redaction is performed at the segment level; PII specified in 
    #         <code>PiiEntityTypes</code> is redacted upon complete transcription of an audio segment. If you don't
    #         include <code>PiiEntityTypes</code> in your request, all PII is redacted.</p>
    #            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>
    #         in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html">Redacting or identifying personally identifiable
    #         information</a>.</p>
    # @option params [String] :pii_entity_types
    #   <p>Specify which types of personally identifiable information (PII) you want to redact in your 
    #         transcript. You can include as many types as you'd like, or you can select 
    #         <code>ALL</code>.</p>
    #            <p>Values must be comma-separated and can include: <code>ADDRESS</code>, 
    #         <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>,
    #         <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>,
    #         <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>, 
    #         <code>NAME</code>, <code>PHONE</code>, <code>PIN</code>, 
    #         <code>SSN</code>, or <code>ALL</code>.</p>
    #            <p>Note that if you include <code>PiiEntityTypes</code> in your request, you must also include 
    #         <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>
    #            <p>If you include <code>ContentRedactionType</code> or 
    #         <code>ContentIdentificationType</code> in your request, but do not include 
    #         <code>PiiEntityTypes</code>, all PII is redacted or identified.</p>
    # @option params [String] :language_model_name
    #   <p>Specify the name of the custom language model that you want to use when processing your
    #         transcription. Note that language model names are case sensitive.</p>
    #            <p>The language of the specified language model must match the language code you specify
    #         in your transcription request. If the languages don't match, the custom language model isn't applied. 
    #         There are no errors or warnings associated with a language mismatch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom language models</a>.</p>
    # @option params [Boolean] :identify_language
    #   <p>Enables automatic language identification for your transcription.</p>
    #            <p>If you include <code>IdentifyLanguage</code>, you must include a list of
    #         language codes, using <code>LanguageOptions</code>, that you think may be present in 
    #         your audio stream. </p>
    #            <p>You can also include a preferred language using <code>PreferredLanguage</code>. Adding a 
    #         preferred language can help Amazon Transcribe identify the language faster than if you omit this 
    #         parameter.</p>
    #            <p>If you have multi-channel audio that contains different languages on each channel, and you've 
    #         enabled channel identification, automatic language identification identifies the dominant language on 
    #         each audio channel.</p>
    #            <p>Note that you must include either <code>LanguageCode</code> or 
    #         <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code> in your request. If you include more than one of these parameters, your transcription job
    #         fails.</p>
    #            <p>Streaming language identification can't be combined with custom language models or 
    #         redaction.</p>
    # @option params [String] :language_options
    #   <p>Specify two or more language codes that represent the languages you think may be present 
    #         in your media; including more than five is not recommended.</p>
    #            <p>Including language options can improve the accuracy of language identification.</p>
    #            <p>If you include <code>LanguageOptions</code> in your request, you must also include 
    #         <code>IdentifyLanguage</code> or <code>IdentifyMultipleLanguages</code>.</p>
    #            <p>For a list of languages supported with Amazon Transcribe streaming, refer to the 
    #         <a href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported 
    #           languages</a> table.</p>
    #            <important>
    #               <p>You can only include one language dialect per language per stream. For example, you
    #           cannot include <code>en-US</code> and <code>en-AU</code> in the same request.</p>
    #            </important>
    # @option params [String] :preferred_language
    #   <p>Specify a preferred language from the subset of languages codes you specified in 
    #         <code>LanguageOptions</code>.</p>
    #            <p>You can only use this parameter if you've included <code>IdentifyLanguage</code> and
    #           <code>LanguageOptions</code> in your request.</p>
    # @option params [Boolean] :identify_multiple_languages
    #   <p>Enables automatic multi-language identification in your transcription job request. Use this parameter if your stream contains more than one language. If your stream contains only one language, use IdentifyLanguage instead.</p>
    #            <p>If you include <code>IdentifyMultipleLanguages</code>, you must include a list of language codes, using <code>LanguageOptions</code>, that you think may be present in your stream.</p>
    #            <p>If you want to apply a custom vocabulary or a custom vocabulary filter to your automatic multiple language identification request, include <code>VocabularyNames</code> or <code>VocabularyFilterNames</code>.</p>
    #            <p>Note that you must include one of <code>LanguageCode</code>, <code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code> in your request. If you include more than one of these parameters, your transcription job fails.</p>
    # @option params [String] :vocabulary_names
    #   <p>Specify the names of the custom vocabularies that you want to use when processing your
    #         transcription. Note that vocabulary names are case sensitive.</p>
    #            <p>If none of the languages of the specified custom vocabularies match the language identified in 
    #         your media, your job fails.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> the
    #             <code>IdentifyLanguage</code> parameter. If you're <b>not</b>
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary
    #           with your transcription, use the <code>VocabularyName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html">Custom vocabularies</a>.</p>
    # @option params [String] :vocabulary_filter_names
    #   <p>Specify the names of the custom vocabulary filters that you want to use when processing
    #         your transcription. Note that vocabulary filter names are case sensitive.</p>
    #            <p>If none of the languages of the specified custom vocabulary filters match the language identified
    #         in your media, your job fails.</p>
    #            <important>
    #               <p>This parameter is only intended for use <b>with</b> 
    #           the <code>IdentifyLanguage</code> parameter. If you're <b>not</b> 
    #           including <code>IdentifyLanguage</code> in your request and want to use a custom vocabulary filter 
    #           with your transcription, use the <code>VocabularyFilterName</code> parameter instead.</p>
    #            </important>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html">Using vocabulary filtering with unwanted 
    #         words</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"], # required
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     audio_stream: { # required
    #       # One of:
    #       audio_event: {
    #         audio_chunk: "data"
    #       },
    #       configuration_event: {
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER"], # required
    #           }
    #         ],
    #         post_call_analytics_settings: {
    #           output_location: "String", # required
    #           data_access_role_arn: "String", # required
    #           content_redaction_output: "redacted" # One of: ["redacted", "redacted_and_unredacted"],
    #           output_encryption_kms_key_id: "String"
    #         }
    #       }
    #     },
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #     show_speaker_label: false,
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #     content_identification_type: "PII" # One of: ["PII"],
    #     content_redaction_type: "PII" # One of: ["PII"],
    #     pii_entity_types: "PiiEntityTypes",
    #     language_model_name: "ModelName",
    #     identify_language: false,
    #     language_options: "LanguageOptions",
    #     preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #     identify_multiple_languages: false,
    #     vocabulary_names: "VocabularyNames",
    #     vocabulary_filter_names: "VocabularyFilterNames"
    #   }
    #   options = {}
    #   response = client.start_stream_transcription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "RequestId",
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #     media_sample_rate_hertz: 1,
    #     media_encoding: "pcm" # One of: ["pcm", "ogg-opus", "flac"],
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     transcript_result_stream: {
    #       # One of:
    #       transcript_event: {
    #         transcript: {
    #           results: [
    #             {
    #               result_id: "String",
    #               start_time: 1.0,
    #               end_time: 1.0,
    #               is_partial: false,
    #               alternatives: [
    #                 {
    #                   transcript: "String",
    #                   items: [
    #                     {
    #                       start_time: 1.0,
    #                       end_time: 1.0,
    #                       type: "pronunciation" # One of: ["pronunciation", "punctuation"],
    #                       content: "String",
    #                       vocabulary_filter_match: false,
    #                       speaker: "String",
    #                       confidence: 1.0,
    #                       stable: false
    #                     }
    #                   ],
    #                   entities: [
    #                     {
    #                       start_time: 1.0,
    #                       end_time: 1.0,
    #                       category: "String",
    #                       type: "String",
    #                       content: "String",
    #                       confidence: 1.0
    #                     }
    #                   ]
    #                 }
    #               ],
    #               channel_id: "String",
    #               language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #               language_identification: [
    #                 {
    #                   language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #                   score: 1.0
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       bad_request_exception: {
    #         message: "String"
    #       },
    #       limit_exceeded_exception: {
    #         message: "String"
    #       },
    #       internal_failure_exception: {
    #         message: "String"
    #       },
    #       conflict_exception: {
    #         message: "String"
    #       },
    #       service_unavailable_exception: {
    #         message: "String"
    #       }
    #     },
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #     show_speaker_label: false,
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: "high" # One of: ["high", "medium", "low"],
    #     content_identification_type: "PII" # One of: ["PII"],
    #     content_redaction_type: "PII" # One of: ["PII"],
    #     pii_entity_types: "PiiEntityTypes",
    #     language_model_name: "ModelName",
    #     identify_language: false,
    #     language_options: "LanguageOptions",
    #     preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"],
    #     identify_multiple_languages: false,
    #     vocabulary_names: "VocabularyNames",
    #     vocabulary_filter_names: "VocabularyFilterNames"
    #   }
    # @return [Types::StartStreamTranscriptionResponse]
    def start_stream_transcription(params = {}, options = {})
      request = build_request(:start_stream_transcription, params)
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
      context[:gem_name] = 'aws-sdk-transcribestreaming'
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
