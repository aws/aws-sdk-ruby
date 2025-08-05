# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

begin
  require 'http/2'
rescue LoadError; end
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'
require 'aws-sdk-core/plugins/event_stream_configuration'

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribestreamingservice)

module Aws::TranscribeStreamingService
  # An API async client for TranscribeStreamingService.  To construct an async client, you need to configure a `:region` and `:credentials`.
  #
  #     async_client = Aws::TranscribeStreamingService::AsyncClient.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :transcribestreamingservice

    set_api(ClientApi::API)

    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::TranscribeStreamingService::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [String] :account_id
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
    #
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::TranscribeStreamingService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::TranscribeStreamingService::EndpointParameters`.
    #
    #   @option options [Integer] :connection_read_timeout (60)
    #     Connection read timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Integer] :connection_timeout (60)
    #     Connection timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Boolean] :enable_alpn (true)
    #     Set to `false` to disable ALPN in HTTP2 over TLS. ALPN requires Openssl version >= 1.0.2.
    #     Note: RFC7540 requires HTTP2 to use ALPN over TLS but some
    #     services may not fully support ALPN and require setting this to `false`.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`, HTTP2 debug output will be sent to the `:logger`.
    #
    #   @option options [Integer] :max_concurrent_streams (100)
    #     Maximum concurrent streams used in HTTP2 connection, defaults to 100. Note that server may send back
    #     :settings_max_concurrent_streams value which will take priority when initializing new streams.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     Defaults to `true`, raises errors if exist when #wait or #join! is called upon async response.
    #
    #   @option options [Integer] :read_chunk_size (1024)
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates. If you do not pass `:ssl_ca_directory` or `:ssl_ca_bundle`
    #     the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate authority
    #     files for verifying peer certificates. If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # Starts a bidirectional HTTP/2 or WebSocket stream where audio is
    # streamed to Amazon Transcribe and the transcription results are
    # streamed to your application. Use this operation for [Call
    # Analytics][1] transcriptions.
    #
    # The following parameters are required:
    #
    # * `language-code`
    #
    # * `media-encoding`
    #
    # * `sample-rate`
    #
    # For more information on streaming with Amazon Transcribe, see
    # [Transcribing streaming audio][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #
    # @option params [required, String] :language_code
    #   Specify the language code that represents the language spoken in your
    #   audio.
    #
    #   For a list of languages supported with real-time Call Analytics, refer
    #   to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [required, Integer] :media_sample_rate_hertz
    #   The sample rate of the input audio (in hertz). Low-quality audio, such
    #   as telephone audio, is typically around 8,000 Hz. High-quality audio
    #   typically ranges from 16,000 Hz to 48,000 Hz. Note that the sample
    #   rate you specify must match that of your audio.
    #
    # @option params [required, String] :media_encoding
    #   Specify the encoding of your input audio. Supported formats are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does not
    #     include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #
    # @option params [String] :vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    #   If the language of the specified custom vocabulary doesn't match the
    #   language identified in your media, the custom vocabulary is not
    #   applied to your transcription.
    #
    #   For more information, see [Custom vocabularies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #
    # @option params [String] :session_id
    #   Specify a name for your Call Analytics transcription session. If you
    #   don't include this parameter in your request, Amazon Transcribe
    #   generates an ID and returns it in the response.
    #
    # @option params [String] :vocabulary_filter_name
    #   Specify the name of the custom vocabulary filter that you want to use
    #   when processing your transcription. Note that vocabulary filter names
    #   are case sensitive.
    #
    #   If the language of the specified custom vocabulary filter doesn't
    #   match the language identified in your media, the vocabulary filter is
    #   not applied to your transcription.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #
    # @option params [String] :vocabulary_filter_method
    #   Specify how you want your vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #
    # @option params [String] :language_model_name
    #   Specify the name of the custom language model that you want to use
    #   when processing your transcription. Note that language model names are
    #   case sensitive.
    #
    #   The language of the specified language model must match the language
    #   code you specify in your transcription request. If the languages
    #   don't match, the custom language model isn't applied. There are no
    #   errors or warnings associated with a language mismatch.
    #
    #   For more information, see [Custom language models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #
    # @option params [Boolean] :enable_partial_results_stabilization
    #   Enables partial result stabilization for your transcription. Partial
    #   result stabilization can reduce latency in your output, but may impact
    #   accuracy. For more information, see [Partial-result stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #
    # @option params [String] :partial_results_stability
    #   Specify the level of stability to use when you enable partial results
    #   stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #
    #   For more information, see [Partial-result stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #
    # @option params [String] :content_identification_type
    #   Labels all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content identification is performed at the segment level; PII
    #   specified in `PiiEntityTypes` is flagged upon complete transcription
    #   of an audio segment. If you don't include `PiiEntityTypes` in your
    #   request, all PII is identified.
    #
    #   You can’t set `ContentIdentificationType` and `ContentRedactionType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #
    # @option params [String] :content_redaction_type
    #   Redacts all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content redaction is performed at the segment level; PII specified in
    #   `PiiEntityTypes` is redacted upon complete transcription of an audio
    #   segment. If you don't include `PiiEntityTypes` in your request, all
    #   PII is redacted.
    #
    #   You can’t set `ContentRedactionType` and `ContentIdentificationType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #
    # @option params [String] :pii_entity_types
    #   Specify which types of personally identifiable information (PII) you
    #   want to redact in your transcript. You can include as many types as
    #   you'd like, or you can select `ALL`.
    #
    #   Values must be comma-separated and can include: `ADDRESS`,
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_CVV`,
    #   `CREDIT_DEBIT_EXPIRY`, `CREDIT_DEBIT_NUMBER`, `EMAIL`, `NAME`,
    #   `PHONE`, `PIN`, `SSN`, or `ALL`.
    #
    #   Note that if you include `PiiEntityTypes` in your request, you must
    #   also include `ContentIdentificationType` or `ContentRedactionType`.
    #
    #   If you include `ContentRedactionType` or `ContentIdentificationType`
    #   in your request, but do not include `PiiEntityTypes`, all PII is
    #   redacted or identified.
    #
    # @return [Types::StartCallAnalyticsStreamTranscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#request_id #request_id} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#language_code #language_code} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#media_sample_rate_hertz #media_sample_rate_hertz} => Integer
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#media_encoding #media_encoding} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#session_id #session_id} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#call_analytics_transcript_result_stream #call_analytics_transcript_result_stream} => Types::CallAnalyticsTranscriptResultStream
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#vocabulary_filter_method #vocabulary_filter_method} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#language_model_name #language_model_name} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#enable_partial_results_stabilization #enable_partial_results_stabilization} => Boolean
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#partial_results_stability #partial_results_stability} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#content_identification_type #content_identification_type} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#content_redaction_type #content_redaction_type} => String
    #   * {Types::StartCallAnalyticsStreamTranscriptionResponse#pii_entity_types #pii_entity_types} => String
    #
    # @example Bi-directional EventStream Operation Example
    #   # You can signal input events after the initial request is established. Events
    #   # will be sent to the stream immediately once the stream connection is
    #   # established successfully.
    #
    #   # To signal events, you can call the #signal methods from an
    #   # Aws::TranscribeStreamingService::EventStreams::AudioStream object.
    #   # You must signal events before calling #wait or #join! on the async response.
    #   input_stream = Aws::TranscribeStreamingService::EventStreams::AudioStream.new
    #
    #   async_resp = client.start_call_analytics_stream_transcription(
    #     # params input
    #     input_event_stream_handler: input_stream
    #   ) do |out_stream|
    #     # register callbacks for events
    #     out_stream.on_utterance_event_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::UtteranceEvent
    #     end
    #     out_stream.on_category_event_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::CategoryEvent
    #     end
    #     out_stream.on_bad_request_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #     end
    #     out_stream.on_limit_exceeded_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #     end
    #     out_stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #     end
    #     out_stream.on_conflict_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ConflictException
    #     end
    #     out_stream.on_service_unavailable_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #     end
    #   end
    #   # => Aws::Seahorse::Client::AsyncResponse
    #
    #   # signal events
    #   input_stream.signal_audio_event_event(
    #     # ...
    #   )
    #   input_stream.signal_configuration_event_event(
    #     # ...
    #   )
    #
    #   # make sure to signal :end_stream at the end
    #   input_stream.signal_end_stream
    #
    #   # wait until stream is closed before finalizing the sync response
    #   resp = async_resp.wait
    #
    #   # Or close the stream and finalize sync response immediately
    #   resp = async_resp.join!
    #
    #   # You can also provide an Aws::TranscribeStreamingService::EventStreams::CallAnalyticsTranscriptResultStream object
    #   # to register callbacks before initializing the request instead of processing
    #   # from the request block.
    #   output_stream = Aws::TranscribeStreamingService::EventStreams::CallAnalyticsTranscriptResultStream.new
    #
    #   # register callbacks for output events
    #   output_stream.on_utterance_event_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::UtteranceEvent
    #   end
    #   output_stream.on_category_event_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::CategoryEvent
    #   end
    #   output_stream.on_bad_request_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #   end
    #   output_stream.on_limit_exceeded_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #   end
    #   output_stream.on_internal_failure_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #   end
    #   output_stream.on_conflict_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ConflictException
    #   end
    #   output_stream.on_service_unavailable_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #   end
    #   output_stream.on_error_event do |event|
    #     # catch unmodeled error event in the stream
    #     raise event
    #     # => Aws::Errors::EventError
    #     # event.event_type => :error
    #     # event.error_code => String
    #     # event.error_message => String
    #   end
    #
    #   async_resp = client.start_call_analytics_stream_transcription(
    #     # params input
    #     input_event_stream_handler: input_stream,
    #     output_event_stream_handler: output_stream
    #   )
    #   resp = async_resp.join!
    #
    #   # You can also iterate through events after the response is complete.
    #   # Events are available at
    #   resp.call_analytics_transcript_result_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.start_call_analytics_stream_transcription({
    #     language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm", # required, accepts pcm, ogg-opus, flac
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     input_event_stream_hander: EventStreams::AudioStream.new,
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #     language_model_name: "ModelName",
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: "high", # accepts high, medium, low
    #     content_identification_type: "PII", # accepts PII
    #     content_redaction_type: "PII", # accepts PII
    #     pii_entity_types: "PiiEntityTypes",
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"
    #   resp.media_sample_rate_hertz #=> Integer
    #   resp.media_encoding #=> String, one of "pcm", "ogg-opus", "flac"
    #   resp.vocabulary_name #=> String
    #   resp.session_id #=> String
    #   # All events are available at resp.call_analytics_transcript_result_stream:
    #   resp.call_analytics_transcript_result_stream #=> Enumerator
    #   resp.call_analytics_transcript_result_stream.event_types #=> [:utterance_event, :category_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception]
    #
    #   # For :utterance_event event available at #on_utterance_event_event callback and response eventstream enumerator:
    #   event.utterance_id #=> String
    #   event.is_partial #=> Boolean
    #   event.participant_role #=> String, one of "AGENT", "CUSTOMER"
    #   event.begin_offset_millis #=> Integer
    #   event.end_offset_millis #=> Integer
    #   event.transcript #=> String
    #   event.items #=> Array
    #   event.items[0].begin_offset_millis #=> Integer
    #   event.items[0].end_offset_millis #=> Integer
    #   event.items[0].type #=> String, one of "pronunciation", "punctuation"
    #   event.items[0].content #=> String
    #   event.items[0].confidence #=> Float
    #   event.items[0].vocabulary_filter_match #=> Boolean
    #   event.items[0].stable #=> Boolean
    #   event.entities #=> Array
    #   event.entities[0].begin_offset_millis #=> Integer
    #   event.entities[0].end_offset_millis #=> Integer
    #   event.entities[0].category #=> String
    #   event.entities[0].type #=> String
    #   event.entities[0].content #=> String
    #   event.entities[0].confidence #=> Float
    #   event.sentiment #=> String, one of "POSITIVE", "NEGATIVE", "MIXED", "NEUTRAL"
    #   event.issues_detected #=> Array
    #   event.issues_detected[0].character_offsets.begin #=> Integer
    #   event.issues_detected[0].character_offsets.end #=> Integer
    #
    #   # For :category_event event available at #on_category_event_event callback and response eventstream enumerator:
    #   event.matched_categories #=> Array
    #   event.matched_categories[0] #=> String
    #   event.matched_details #=> Hash
    #   event.matched_details["String"].timestamp_ranges #=> Array
    #   event.matched_details["String"].timestamp_ranges[0].begin_offset_millis #=> Integer
    #   event.matched_details["String"].timestamp_ranges[0].end_offset_millis #=> Integer
    #
    #   # For :bad_request_exception event available at #on_bad_request_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :limit_exceeded_exception event available at #on_limit_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_unavailable_exception event available at #on_service_unavailable_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.language_model_name #=> String
    #   resp.enable_partial_results_stabilization #=> Boolean
    #   resp.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.content_identification_type #=> String, one of "PII"
    #   resp.content_redaction_type #=> String, one of "PII"
    #   resp.pii_entity_types #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartCallAnalyticsStreamTranscription AWS API Documentation
    #
    # @overload start_call_analytics_stream_transcription(params = {})
    # @param [Hash] params ({})
    def start_call_analytics_stream_transcription(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::AudioStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::CallAnalyticsTranscriptResultStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:start_call_analytics_stream_transcription, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 55)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options, &block)
    end

    # Starts a bidirectional HTTP/2 stream, where audio is streamed to
    # Amazon Web Services HealthScribe and the transcription results are
    # streamed to your application.
    #
    # When you start a stream, you first specify the stream configuration in
    # a `MedicalScribeConfigurationEvent`. This event includes channel
    # definitions, encryption settings, and post-stream analytics settings,
    # such as the output configuration for aggregated transcript and
    # clinical note generation. These are additional streaming session
    # configurations beyond those provided in your initial start request
    # headers. Whether you are starting a new session or resuming an
    # existing session, your first event must be a
    # `MedicalScribeConfigurationEvent`.
    #
    # After you send a `MedicalScribeConfigurationEvent`, you start
    # `AudioEvents` and Amazon Web Services HealthScribe responds with
    # real-time transcription results. When you are finished, to start
    # processing the results with the post-stream analytics, send a
    # `MedicalScribeSessionControlEvent` with a `Type` of `END_OF_SESSION`
    # and Amazon Web Services HealthScribe starts the analytics.
    #
    # You can pause or resume streaming. To pause streaming, complete the
    # input stream without sending the `MedicalScribeSessionControlEvent`.
    # To resume streaming, call the `StartMedicalScribeStream` and specify
    # the same SessionId you used to start the stream.
    #
    # The following parameters are required:
    #
    # * `language-code`
    #
    # * `media-encoding`
    #
    # * `media-sample-rate-hertz`
    #
    #
    #
    # For more information on streaming with Amazon Web Services
    # HealthScribe, see [Amazon Web Services HealthScribe][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe-streaming.html
    #
    # @option params [String] :session_id
    #   Specify an identifier for your streaming session (in UUID format). If
    #   you don't include a SessionId in your request, Amazon Web Services
    #   HealthScribe generates an ID and returns it in the response.
    #
    # @option params [required, String] :language_code
    #   Specify the language code for your HealthScribe streaming session.
    #
    # @option params [required, Integer] :media_sample_rate_hertz
    #   Specify the sample rate of the input audio (in hertz). Amazon Web
    #   Services HealthScribe supports a range from 16,000 Hz to 48,000 Hz.
    #   The sample rate you specify must match that of your audio.
    #
    # @option params [required, String] :media_encoding
    #   Specify the encoding used for the input audio.
    #
    #   Supported formats are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does not
    #     include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #
    # @return [Types::StartMedicalScribeStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMedicalScribeStreamResponse#session_id #session_id} => String
    #   * {Types::StartMedicalScribeStreamResponse#request_id #request_id} => String
    #   * {Types::StartMedicalScribeStreamResponse#language_code #language_code} => String
    #   * {Types::StartMedicalScribeStreamResponse#media_sample_rate_hertz #media_sample_rate_hertz} => Integer
    #   * {Types::StartMedicalScribeStreamResponse#media_encoding #media_encoding} => String
    #   * {Types::StartMedicalScribeStreamResponse#result_stream #result_stream} => Types::MedicalScribeResultStream
    #
    # @example Bi-directional EventStream Operation Example
    #   # You can signal input events after the initial request is established. Events
    #   # will be sent to the stream immediately once the stream connection is
    #   # established successfully.
    #
    #   # To signal events, you can call the #signal methods from an
    #   # Aws::TranscribeStreamingService::EventStreams::MedicalScribeInputStream object.
    #   # You must signal events before calling #wait or #join! on the async response.
    #   input_stream = Aws::TranscribeStreamingService::EventStreams::MedicalScribeInputStream.new
    #
    #   async_resp = client.start_medical_scribe_stream(
    #     # params input
    #     input_event_stream_handler: input_stream
    #   ) do |out_stream|
    #     # register callbacks for events
    #     out_stream.on_transcript_event_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #     end
    #     out_stream.on_bad_request_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #     end
    #     out_stream.on_limit_exceeded_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #     end
    #     out_stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #     end
    #     out_stream.on_conflict_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ConflictException
    #     end
    #     out_stream.on_service_unavailable_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #     end
    #   end
    #   # => Aws::Seahorse::Client::AsyncResponse
    #
    #   # signal events
    #   input_stream.signal_audio_event_event(
    #     # ...
    #   )
    #   input_stream.signal_session_control_event_event(
    #     # ...
    #   )
    #   input_stream.signal_configuration_event_event(
    #     # ...
    #   )
    #
    #   # make sure to signal :end_stream at the end
    #   input_stream.signal_end_stream
    #
    #   # wait until stream is closed before finalizing the sync response
    #   resp = async_resp.wait
    #
    #   # Or close the stream and finalize sync response immediately
    #   resp = async_resp.join!
    #
    #   # You can also provide an Aws::TranscribeStreamingService::EventStreams::MedicalScribeResultStream object
    #   # to register callbacks before initializing the request instead of processing
    #   # from the request block.
    #   output_stream = Aws::TranscribeStreamingService::EventStreams::MedicalScribeResultStream.new
    #
    #   # register callbacks for output events
    #   output_stream.on_transcript_event_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #   end
    #   output_stream.on_bad_request_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #   end
    #   output_stream.on_limit_exceeded_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #   end
    #   output_stream.on_internal_failure_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #   end
    #   output_stream.on_conflict_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ConflictException
    #   end
    #   output_stream.on_service_unavailable_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #   end
    #   output_stream.on_error_event do |event|
    #     # catch unmodeled error event in the stream
    #     raise event
    #     # => Aws::Errors::EventError
    #     # event.event_type => :error
    #     # event.error_code => String
    #     # event.error_message => String
    #   end
    #
    #   async_resp = client.start_medical_scribe_stream(
    #     # params input
    #     input_event_stream_handler: input_stream,
    #     output_event_stream_handler: output_stream
    #   )
    #   resp = async_resp.join!
    #
    #   # You can also iterate through events after the response is complete.
    #   # Events are available at
    #   resp.result_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.start_medical_scribe_stream({
    #     session_id: "SessionId",
    #     language_code: "en-US", # required, accepts en-US
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm", # required, accepts pcm, ogg-opus, flac
    #     input_event_stream_hander: EventStreams::MedicalScribeInputStream.new,
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.request_id #=> String
    #   resp.language_code #=> String, one of "en-US"
    #   resp.media_sample_rate_hertz #=> Integer
    #   resp.media_encoding #=> String, one of "pcm", "ogg-opus", "flac"
    #   # All events are available at resp.result_stream:
    #   resp.result_stream #=> Enumerator
    #   resp.result_stream.event_types #=> [:transcript_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception]
    #
    #   # For :transcript_event event available at #on_transcript_event_event callback and response eventstream enumerator:
    #   event.transcript_segment.segment_id #=> String
    #   event.transcript_segment.begin_audio_time #=> Float
    #   event.transcript_segment.end_audio_time #=> Float
    #   event.transcript_segment.content #=> String
    #   event.transcript_segment.items #=> Array
    #   event.transcript_segment.items[0].begin_audio_time #=> Float
    #   event.transcript_segment.items[0].end_audio_time #=> Float
    #   event.transcript_segment.items[0].type #=> String, one of "pronunciation", "punctuation"
    #   event.transcript_segment.items[0].confidence #=> Float
    #   event.transcript_segment.items[0].content #=> String
    #   event.transcript_segment.items[0].vocabulary_filter_match #=> Boolean
    #   event.transcript_segment.is_partial #=> Boolean
    #   event.transcript_segment.channel_id #=> String
    #
    #   # For :bad_request_exception event available at #on_bad_request_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :limit_exceeded_exception event available at #on_limit_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_unavailable_exception event available at #on_service_unavailable_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartMedicalScribeStream AWS API Documentation
    #
    # @overload start_medical_scribe_stream(params = {})
    # @param [Hash] params ({})
    def start_medical_scribe_stream(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::MedicalScribeInputStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::MedicalScribeResultStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:start_medical_scribe_stream, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 55)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options, &block)
    end

    # Starts a bidirectional HTTP/2 or WebSocket stream where audio is
    # streamed to Amazon Transcribe Medical and the transcription results
    # are streamed to your application.
    #
    # The following parameters are required:
    #
    # * `language-code`
    #
    # * `media-encoding`
    #
    # * `sample-rate`
    #
    # For more information on streaming with Amazon Transcribe Medical, see
    # [Transcribing streaming audio][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #
    # @option params [required, String] :language_code
    #   Specify the language code that represents the language spoken in your
    #   audio.
    #
    #   Amazon Transcribe Medical only supports US English (`en-US`).
    #
    # @option params [required, Integer] :media_sample_rate_hertz
    #   The sample rate of the input audio (in hertz). Amazon Transcribe
    #   Medical supports a range from 16,000 Hz to 48,000 Hz. Note that the
    #   sample rate you specify must match that of your audio.
    #
    # @option params [required, String] :media_encoding
    #   Specify the encoding used for the input audio. Supported formats are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does not
    #     include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #
    # @option params [String] :vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    # @option params [required, String] :specialty
    #   Specify the medical specialty contained in your audio.
    #
    # @option params [required, String] :type
    #   Specify the type of input audio. For example, choose `DICTATION` for a
    #   provider dictating patient notes and `CONVERSATION` for a dialogue
    #   between a patient and a medical professional.
    #
    # @option params [Boolean] :show_speaker_label
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   For more information, see [Partitioning speakers (diarization)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #
    # @option params [String] :session_id
    #   Specify a name for your transcription session. If you don't include
    #   this parameter in your request, Amazon Transcribe Medical generates an
    #   ID and returns it in the response.
    #
    # @option params [Boolean] :enable_channel_identification
    #   Enables channel identification in multi-channel audio.
    #
    #   Channel identification transcribes the audio on each channel
    #   independently, then appends the output for each channel into one
    #   transcript.
    #
    #   If you have multi-channel audio and do not enable channel
    #   identification, your audio is transcribed in a continuous manner and
    #   your transcript is not separated by channel.
    #
    #   If you include `EnableChannelIdentification` in your request, you must
    #   also include `NumberOfChannels`.
    #
    #   For more information, see [Transcribing multi-channel audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html
    #
    # @option params [Integer] :number_of_channels
    #   Specify the number of channels in your audio stream. This value must
    #   be `2`, as only two channels are supported. If your audio doesn't
    #   contain multiple channels, do not include this parameter in your
    #   request.
    #
    #   If you include `NumberOfChannels` in your request, you must also
    #   include `EnableChannelIdentification`.
    #
    # @option params [String] :content_identification_type
    #   Labels all personal health information (PHI) identified in your
    #   transcript.
    #
    #   Content identification is performed at the segment level; PHI is
    #   flagged upon complete transcription of an audio segment.
    #
    #   For more information, see [Identifying personal health information
    #   (PHI) in a transcription][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html
    #
    # @return [Types::StartMedicalStreamTranscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMedicalStreamTranscriptionResponse#request_id #request_id} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#language_code #language_code} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#media_sample_rate_hertz #media_sample_rate_hertz} => Integer
    #   * {Types::StartMedicalStreamTranscriptionResponse#media_encoding #media_encoding} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#specialty #specialty} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#type #type} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#show_speaker_label #show_speaker_label} => Boolean
    #   * {Types::StartMedicalStreamTranscriptionResponse#session_id #session_id} => String
    #   * {Types::StartMedicalStreamTranscriptionResponse#transcript_result_stream #transcript_result_stream} => Types::MedicalTranscriptResultStream
    #   * {Types::StartMedicalStreamTranscriptionResponse#enable_channel_identification #enable_channel_identification} => Boolean
    #   * {Types::StartMedicalStreamTranscriptionResponse#number_of_channels #number_of_channels} => Integer
    #   * {Types::StartMedicalStreamTranscriptionResponse#content_identification_type #content_identification_type} => String
    #
    # @example Bi-directional EventStream Operation Example
    #   # You can signal input events after the initial request is established. Events
    #   # will be sent to the stream immediately once the stream connection is
    #   # established successfully.
    #
    #   # To signal events, you can call the #signal methods from an
    #   # Aws::TranscribeStreamingService::EventStreams::AudioStream object.
    #   # You must signal events before calling #wait or #join! on the async response.
    #   input_stream = Aws::TranscribeStreamingService::EventStreams::AudioStream.new
    #
    #   async_resp = client.start_medical_stream_transcription(
    #     # params input
    #     input_event_stream_handler: input_stream
    #   ) do |out_stream|
    #     # register callbacks for events
    #     out_stream.on_transcript_event_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #     end
    #     out_stream.on_bad_request_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #     end
    #     out_stream.on_limit_exceeded_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #     end
    #     out_stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #     end
    #     out_stream.on_conflict_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ConflictException
    #     end
    #     out_stream.on_service_unavailable_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #     end
    #   end
    #   # => Aws::Seahorse::Client::AsyncResponse
    #
    #   # signal events
    #   input_stream.signal_audio_event_event(
    #     # ...
    #   )
    #   input_stream.signal_configuration_event_event(
    #     # ...
    #   )
    #
    #   # make sure to signal :end_stream at the end
    #   input_stream.signal_end_stream
    #
    #   # wait until stream is closed before finalizing the sync response
    #   resp = async_resp.wait
    #
    #   # Or close the stream and finalize sync response immediately
    #   resp = async_resp.join!
    #
    #   # You can also provide an Aws::TranscribeStreamingService::EventStreams::MedicalTranscriptResultStream object
    #   # to register callbacks before initializing the request instead of processing
    #   # from the request block.
    #   output_stream = Aws::TranscribeStreamingService::EventStreams::MedicalTranscriptResultStream.new
    #
    #   # register callbacks for output events
    #   output_stream.on_transcript_event_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #   end
    #   output_stream.on_bad_request_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #   end
    #   output_stream.on_limit_exceeded_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #   end
    #   output_stream.on_internal_failure_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #   end
    #   output_stream.on_conflict_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ConflictException
    #   end
    #   output_stream.on_service_unavailable_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #   end
    #   output_stream.on_error_event do |event|
    #     # catch unmodeled error event in the stream
    #     raise event
    #     # => Aws::Errors::EventError
    #     # event.event_type => :error
    #     # event.error_code => String
    #     # event.error_message => String
    #   end
    #
    #   async_resp = client.start_medical_stream_transcription(
    #     # params input
    #     input_event_stream_handler: input_stream,
    #     output_event_stream_handler: output_stream
    #   )
    #   resp = async_resp.join!
    #
    #   # You can also iterate through events after the response is complete.
    #   # Events are available at
    #   resp.transcript_result_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.start_medical_stream_transcription({
    #     language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, es-ES, ar-SA, pt-PT, ca-ES, ar-AE, hi-IN, zh-HK, nl-NL, no-NO, sv-SE, pl-PL, fi-FI, zh-TW, en-IN, en-IE, en-NZ, en-AB, en-ZA, en-WL, de-CH, af-ZA, eu-ES, hr-HR, cs-CZ, da-DK, fa-IR, gl-ES, el-GR, he-IL, id-ID, lv-LV, ms-MY, ro-RO, ru-RU, sr-RS, sk-SK, so-SO, tl-PH, uk-UA, vi-VN, zu-ZA
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm", # required, accepts pcm, ogg-opus, flac
    #     vocabulary_name: "VocabularyName",
    #     specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #     type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #     show_speaker_label: false,
    #     session_id: "SessionId",
    #     input_event_stream_hander: EventStreams::AudioStream.new,
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     content_identification_type: "PHI", # accepts PHI
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"
    #   resp.media_sample_rate_hertz #=> Integer
    #   resp.media_encoding #=> String, one of "pcm", "ogg-opus", "flac"
    #   resp.vocabulary_name #=> String
    #   resp.specialty #=> String, one of "PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"
    #   resp.type #=> String, one of "CONVERSATION", "DICTATION"
    #   resp.show_speaker_label #=> Boolean
    #   resp.session_id #=> String
    #   # All events are available at resp.transcript_result_stream:
    #   resp.transcript_result_stream #=> Enumerator
    #   resp.transcript_result_stream.event_types #=> [:transcript_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception]
    #
    #   # For :transcript_event event available at #on_transcript_event_event callback and response eventstream enumerator:
    #   event.transcript.results #=> Array
    #   event.transcript.results[0].result_id #=> String
    #   event.transcript.results[0].start_time #=> Float
    #   event.transcript.results[0].end_time #=> Float
    #   event.transcript.results[0].is_partial #=> Boolean
    #   event.transcript.results[0].alternatives #=> Array
    #   event.transcript.results[0].alternatives[0].transcript #=> String
    #   event.transcript.results[0].alternatives[0].items #=> Array
    #   event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].type #=> String, one of "pronunciation", "punctuation"
    #   event.transcript.results[0].alternatives[0].items[0].content #=> String
    #   event.transcript.results[0].alternatives[0].items[0].confidence #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].speaker #=> String
    #   event.transcript.results[0].alternatives[0].entities #=> Array
    #   event.transcript.results[0].alternatives[0].entities[0].start_time #=> Float
    #   event.transcript.results[0].alternatives[0].entities[0].end_time #=> Float
    #   event.transcript.results[0].alternatives[0].entities[0].category #=> String
    #   event.transcript.results[0].alternatives[0].entities[0].content #=> String
    #   event.transcript.results[0].alternatives[0].entities[0].confidence #=> Float
    #   event.transcript.results[0].channel_id #=> String
    #
    #   # For :bad_request_exception event available at #on_bad_request_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :limit_exceeded_exception event available at #on_limit_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_unavailable_exception event available at #on_service_unavailable_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.enable_channel_identification #=> Boolean
    #   resp.number_of_channels #=> Integer
    #   resp.content_identification_type #=> String, one of "PHI"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartMedicalStreamTranscription AWS API Documentation
    #
    # @overload start_medical_stream_transcription(params = {})
    # @param [Hash] params ({})
    def start_medical_stream_transcription(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::AudioStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::MedicalTranscriptResultStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:start_medical_stream_transcription, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 55)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options, &block)
    end

    # Starts a bidirectional HTTP/2 or WebSocket stream where audio is
    # streamed to Amazon Transcribe and the transcription results are
    # streamed to your application.
    #
    # The following parameters are required:
    #
    # * `language-code` or `identify-language` or
    #   `identify-multiple-language`
    #
    # * `media-encoding`
    #
    # * `sample-rate`
    #
    # For more information on streaming with Amazon Transcribe, see
    # [Transcribing streaming audio][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html
    #
    # @option params [String] :language_code
    #   Specify the language code that represents the language spoken in your
    #   audio.
    #
    #   If you're unsure of the language spoken in your audio, consider using
    #   `IdentifyLanguage` to enable automatic language identification.
    #
    #   For a list of languages supported with Amazon Transcribe streaming,
    #   refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [required, Integer] :media_sample_rate_hertz
    #   The sample rate of the input audio (in hertz). Low-quality audio, such
    #   as telephone audio, is typically around 8,000 Hz. High-quality audio
    #   typically ranges from 16,000 Hz to 48,000 Hz. Note that the sample
    #   rate you specify must match that of your audio.
    #
    # @option params [required, String] :media_encoding
    #   Specify the encoding of your input audio. Supported formats are:
    #
    #   * FLAC
    #
    #   * OPUS-encoded audio in an Ogg container
    #
    #   * PCM (only signed 16-bit little-endian audio formats, which does not
    #     include WAV)
    #
    #   For more information, see [Media formats][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #
    # @option params [String] :vocabulary_name
    #   Specify the name of the custom vocabulary that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    #   If the language of the specified custom vocabulary doesn't match the
    #   language identified in your media, the custom vocabulary is not
    #   applied to your transcription.
    #
    #   This parameter is **not** intended for use with the `IdentifyLanguage`
    #   parameter. If you're including `IdentifyLanguage` in your request and
    #   want to use one or more custom vocabularies with your transcription,
    #   use the `VocabularyNames` parameter instead.
    #
    #   For more information, see [Custom vocabularies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #
    # @option params [String] :session_id
    #   Specify a name for your transcription session. If you don't include
    #   this parameter in your request, Amazon Transcribe generates an ID and
    #   returns it in the response.
    #
    # @option params [String] :vocabulary_filter_name
    #   Specify the name of the custom vocabulary filter that you want to use
    #   when processing your transcription. Note that vocabulary filter names
    #   are case sensitive.
    #
    #   If the language of the specified custom vocabulary filter doesn't
    #   match the language identified in your media, the vocabulary filter is
    #   not applied to your transcription.
    #
    #   This parameter is **not** intended for use with the `IdentifyLanguage`
    #   parameter. If you're including `IdentifyLanguage` in your request and
    #   want to use one or more vocabulary filters with your transcription,
    #   use the `VocabularyFilterNames` parameter instead.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #
    # @option params [String] :vocabulary_filter_method
    #   Specify how you want your vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #
    # @option params [Boolean] :show_speaker_label
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   For more information, see [Partitioning speakers (diarization)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #
    # @option params [Boolean] :enable_channel_identification
    #   Enables channel identification in multi-channel audio.
    #
    #   Channel identification transcribes the audio on each channel
    #   independently, then appends the output for each channel into one
    #   transcript.
    #
    #   If you have multi-channel audio and do not enable channel
    #   identification, your audio is transcribed in a continuous manner and
    #   your transcript is not separated by channel.
    #
    #   If you include `EnableChannelIdentification` in your request, you must
    #   also include `NumberOfChannels`.
    #
    #   For more information, see [Transcribing multi-channel audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html
    #
    # @option params [Integer] :number_of_channels
    #   Specify the number of channels in your audio stream. This value must
    #   be `2`, as only two channels are supported. If your audio doesn't
    #   contain multiple channels, do not include this parameter in your
    #   request.
    #
    #   If you include `NumberOfChannels` in your request, you must also
    #   include `EnableChannelIdentification`.
    #
    # @option params [Boolean] :enable_partial_results_stabilization
    #   Enables partial result stabilization for your transcription. Partial
    #   result stabilization can reduce latency in your output, but may impact
    #   accuracy. For more information, see [Partial-result stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #
    # @option params [String] :partial_results_stability
    #   Specify the level of stability to use when you enable partial results
    #   stabilization (`EnablePartialResultsStabilization`).
    #
    #   Low stability provides the highest accuracy. High stability
    #   transcribes faster, but with slightly lower accuracy.
    #
    #   For more information, see [Partial-result stabilization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html#streaming-partial-result-stabilization
    #
    # @option params [String] :content_identification_type
    #   Labels all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content identification is performed at the segment level; PII
    #   specified in `PiiEntityTypes` is flagged upon complete transcription
    #   of an audio segment. If you don't include `PiiEntityTypes` in your
    #   request, all PII is identified.
    #
    #   You can’t set `ContentIdentificationType` and `ContentRedactionType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #
    # @option params [String] :content_redaction_type
    #   Redacts all personally identifiable information (PII) identified in
    #   your transcript.
    #
    #   Content redaction is performed at the segment level; PII specified in
    #   `PiiEntityTypes` is redacted upon complete transcription of an audio
    #   segment. If you don't include `PiiEntityTypes` in your request, all
    #   PII is redacted.
    #
    #   You can’t set `ContentRedactionType` and `ContentIdentificationType`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Redacting or identifying personally
    #   identifiable information][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/pii-redaction.html
    #
    # @option params [String] :pii_entity_types
    #   Specify which types of personally identifiable information (PII) you
    #   want to redact in your transcript. You can include as many types as
    #   you'd like, or you can select `ALL`.
    #
    #   Values must be comma-separated and can include: `ADDRESS`,
    #   `BANK_ACCOUNT_NUMBER`, `BANK_ROUTING`, `CREDIT_DEBIT_CVV`,
    #   `CREDIT_DEBIT_EXPIRY`, `CREDIT_DEBIT_NUMBER`, `EMAIL`, `NAME`,
    #   `PHONE`, `PIN`, `SSN`, or `ALL`.
    #
    #   Note that if you include `PiiEntityTypes` in your request, you must
    #   also include `ContentIdentificationType` or `ContentRedactionType`.
    #
    #   If you include `ContentRedactionType` or `ContentIdentificationType`
    #   in your request, but do not include `PiiEntityTypes`, all PII is
    #   redacted or identified.
    #
    # @option params [String] :language_model_name
    #   Specify the name of the custom language model that you want to use
    #   when processing your transcription. Note that language model names are
    #   case sensitive.
    #
    #   The language of the specified language model must match the language
    #   code you specify in your transcription request. If the languages
    #   don't match, the custom language model isn't applied. There are no
    #   errors or warnings associated with a language mismatch.
    #
    #   For more information, see [Custom language models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #
    # @option params [Boolean] :identify_language
    #   Enables automatic language identification for your transcription.
    #
    #   If you include `IdentifyLanguage`, you must include a list of language
    #   codes, using `LanguageOptions`, that you think may be present in your
    #   audio stream.
    #
    #   You can also include a preferred language using `PreferredLanguage`.
    #   Adding a preferred language can help Amazon Transcribe identify the
    #   language faster than if you omit this parameter.
    #
    #   If you have multi-channel audio that contains different languages on
    #   each channel, and you've enabled channel identification, automatic
    #   language identification identifies the dominant language on each audio
    #   channel.
    #
    #   Note that you must include either `LanguageCode` or `IdentifyLanguage`
    #   or `IdentifyMultipleLanguages` in your request. If you include more
    #   than one of these parameters, your transcription job fails.
    #
    #   Streaming language identification can't be combined with custom
    #   language models or redaction.
    #
    # @option params [String] :language_options
    #   Specify two or more language codes that represent the languages you
    #   think may be present in your media; including more than five is not
    #   recommended.
    #
    #   Including language options can improve the accuracy of language
    #   identification.
    #
    #   If you include `LanguageOptions` in your request, you must also
    #   include `IdentifyLanguage` or `IdentifyMultipleLanguages`.
    #
    #   For a list of languages supported with Amazon Transcribe streaming,
    #   refer to the [Supported languages][1] table.
    #
    #   You can only include one language dialect per language per stream. For
    #   example, you cannot include `en-US` and `en-AU` in the same request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #
    # @option params [String] :preferred_language
    #   Specify a preferred language from the subset of languages codes you
    #   specified in `LanguageOptions`.
    #
    #   You can only use this parameter if you've included `IdentifyLanguage`
    #   and `LanguageOptions` in your request.
    #
    # @option params [Boolean] :identify_multiple_languages
    #   Enables automatic multi-language identification in your transcription
    #   job request. Use this parameter if your stream contains more than one
    #   language. If your stream contains only one language, use
    #   IdentifyLanguage instead.
    #
    #   If you include `IdentifyMultipleLanguages`, you must include a list of
    #   language codes, using `LanguageOptions`, that you think may be present
    #   in your stream.
    #
    #   If you want to apply a custom vocabulary or a custom vocabulary filter
    #   to your automatic multiple language identification request, include
    #   `VocabularyNames` or `VocabularyFilterNames`.
    #
    #   Note that you must include one of `LanguageCode`, `IdentifyLanguage`,
    #   or `IdentifyMultipleLanguages` in your request. If you include more
    #   than one of these parameters, your transcription job fails.
    #
    # @option params [String] :vocabulary_names
    #   Specify the names of the custom vocabularies that you want to use when
    #   processing your transcription. Note that vocabulary names are case
    #   sensitive.
    #
    #   If none of the languages of the specified custom vocabularies match
    #   the language identified in your media, your job fails.
    #
    #   This parameter is only intended for use **with** the
    #   `IdentifyLanguage` parameter. If you're **not** including
    #   `IdentifyLanguage` in your request and want to use a custom vocabulary
    #   with your transcription, use the `VocabularyName` parameter instead.
    #
    #   For more information, see [Custom vocabularies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #
    # @option params [String] :vocabulary_filter_names
    #   Specify the names of the custom vocabulary filters that you want to
    #   use when processing your transcription. Note that vocabulary filter
    #   names are case sensitive.
    #
    #   If none of the languages of the specified custom vocabulary filters
    #   match the language identified in your media, your job fails.
    #
    #   This parameter is only intended for use **with** the
    #   `IdentifyLanguage` parameter. If you're **not** including
    #   `IdentifyLanguage` in your request and want to use a custom vocabulary
    #   filter with your transcription, use the `VocabularyFilterName`
    #   parameter instead.
    #
    #   For more information, see [Using vocabulary filtering with unwanted
    #   words][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html
    #
    # @return [Types::StartStreamTranscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStreamTranscriptionResponse#request_id #request_id} => String
    #   * {Types::StartStreamTranscriptionResponse#language_code #language_code} => String
    #   * {Types::StartStreamTranscriptionResponse#media_sample_rate_hertz #media_sample_rate_hertz} => Integer
    #   * {Types::StartStreamTranscriptionResponse#media_encoding #media_encoding} => String
    #   * {Types::StartStreamTranscriptionResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::StartStreamTranscriptionResponse#session_id #session_id} => String
    #   * {Types::StartStreamTranscriptionResponse#transcript_result_stream #transcript_result_stream} => Types::TranscriptResultStream
    #   * {Types::StartStreamTranscriptionResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::StartStreamTranscriptionResponse#vocabulary_filter_method #vocabulary_filter_method} => String
    #   * {Types::StartStreamTranscriptionResponse#show_speaker_label #show_speaker_label} => Boolean
    #   * {Types::StartStreamTranscriptionResponse#enable_channel_identification #enable_channel_identification} => Boolean
    #   * {Types::StartStreamTranscriptionResponse#number_of_channels #number_of_channels} => Integer
    #   * {Types::StartStreamTranscriptionResponse#enable_partial_results_stabilization #enable_partial_results_stabilization} => Boolean
    #   * {Types::StartStreamTranscriptionResponse#partial_results_stability #partial_results_stability} => String
    #   * {Types::StartStreamTranscriptionResponse#content_identification_type #content_identification_type} => String
    #   * {Types::StartStreamTranscriptionResponse#content_redaction_type #content_redaction_type} => String
    #   * {Types::StartStreamTranscriptionResponse#pii_entity_types #pii_entity_types} => String
    #   * {Types::StartStreamTranscriptionResponse#language_model_name #language_model_name} => String
    #   * {Types::StartStreamTranscriptionResponse#identify_language #identify_language} => Boolean
    #   * {Types::StartStreamTranscriptionResponse#language_options #language_options} => String
    #   * {Types::StartStreamTranscriptionResponse#preferred_language #preferred_language} => String
    #   * {Types::StartStreamTranscriptionResponse#identify_multiple_languages #identify_multiple_languages} => Boolean
    #   * {Types::StartStreamTranscriptionResponse#vocabulary_names #vocabulary_names} => String
    #   * {Types::StartStreamTranscriptionResponse#vocabulary_filter_names #vocabulary_filter_names} => String
    #
    # @example Bi-directional EventStream Operation Example
    #   # You can signal input events after the initial request is established. Events
    #   # will be sent to the stream immediately once the stream connection is
    #   # established successfully.
    #
    #   # To signal events, you can call the #signal methods from an
    #   # Aws::TranscribeStreamingService::EventStreams::AudioStream object.
    #   # You must signal events before calling #wait or #join! on the async response.
    #   input_stream = Aws::TranscribeStreamingService::EventStreams::AudioStream.new
    #
    #   async_resp = client.start_stream_transcription(
    #     # params input
    #     input_event_stream_handler: input_stream
    #   ) do |out_stream|
    #     # register callbacks for events
    #     out_stream.on_transcript_event_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #     end
    #     out_stream.on_bad_request_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #     end
    #     out_stream.on_limit_exceeded_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #     end
    #     out_stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #     end
    #     out_stream.on_conflict_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ConflictException
    #     end
    #     out_stream.on_service_unavailable_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #     end
    #   end
    #   # => Aws::Seahorse::Client::AsyncResponse
    #
    #   # signal events
    #   input_stream.signal_audio_event_event(
    #     # ...
    #   )
    #   input_stream.signal_configuration_event_event(
    #     # ...
    #   )
    #
    #   # make sure to signal :end_stream at the end
    #   input_stream.signal_end_stream
    #
    #   # wait until stream is closed before finalizing the sync response
    #   resp = async_resp.wait
    #
    #   # Or close the stream and finalize sync response immediately
    #   resp = async_resp.join!
    #
    #   # You can also provide an Aws::TranscribeStreamingService::EventStreams::TranscriptResultStream object
    #   # to register callbacks before initializing the request instead of processing
    #   # from the request block.
    #   output_stream = Aws::TranscribeStreamingService::EventStreams::TranscriptResultStream.new
    #
    #   # register callbacks for output events
    #   output_stream.on_transcript_event_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #   end
    #   output_stream.on_bad_request_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #   end
    #   output_stream.on_limit_exceeded_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #   end
    #   output_stream.on_internal_failure_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #   end
    #   output_stream.on_conflict_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ConflictException
    #   end
    #   output_stream.on_service_unavailable_exception_event do |event|
    #     event # => Aws::TranscribeStreamingService::Types::ServiceUnavailableException
    #   end
    #   output_stream.on_error_event do |event|
    #     # catch unmodeled error event in the stream
    #     raise event
    #     # => Aws::Errors::EventError
    #     # event.event_type => :error
    #     # event.error_code => String
    #     # event.error_message => String
    #   end
    #
    #   async_resp = client.start_stream_transcription(
    #     # params input
    #     input_event_stream_handler: input_stream,
    #     output_event_stream_handler: output_stream
    #   )
    #   resp = async_resp.join!
    #
    #   # You can also iterate through events after the response is complete.
    #   # Events are available at
    #   resp.transcript_result_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.start_stream_transcription({
    #     language_code: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, es-ES, ar-SA, pt-PT, ca-ES, ar-AE, hi-IN, zh-HK, nl-NL, no-NO, sv-SE, pl-PL, fi-FI, zh-TW, en-IN, en-IE, en-NZ, en-AB, en-ZA, en-WL, de-CH, af-ZA, eu-ES, hr-HR, cs-CZ, da-DK, fa-IR, gl-ES, el-GR, he-IL, id-ID, lv-LV, ms-MY, ro-RO, ru-RU, sr-RS, sk-SK, so-SO, tl-PH, uk-UA, vi-VN, zu-ZA
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm", # required, accepts pcm, ogg-opus, flac
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     input_event_stream_hander: EventStreams::AudioStream.new,
    #     vocabulary_filter_name: "VocabularyFilterName",
    #     vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #     show_speaker_label: false,
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: "high", # accepts high, medium, low
    #     content_identification_type: "PII", # accepts PII
    #     content_redaction_type: "PII", # accepts PII
    #     pii_entity_types: "PiiEntityTypes",
    #     language_model_name: "ModelName",
    #     identify_language: false,
    #     language_options: "LanguageOptions",
    #     preferred_language: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, es-ES, ar-SA, pt-PT, ca-ES, ar-AE, hi-IN, zh-HK, nl-NL, no-NO, sv-SE, pl-PL, fi-FI, zh-TW, en-IN, en-IE, en-NZ, en-AB, en-ZA, en-WL, de-CH, af-ZA, eu-ES, hr-HR, cs-CZ, da-DK, fa-IR, gl-ES, el-GR, he-IL, id-ID, lv-LV, ms-MY, ro-RO, ru-RU, sr-RS, sk-SK, so-SO, tl-PH, uk-UA, vi-VN, zu-ZA
    #     identify_multiple_languages: false,
    #     vocabulary_names: "VocabularyNames",
    #     vocabulary_filter_names: "VocabularyFilterNames",
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"
    #   resp.media_sample_rate_hertz #=> Integer
    #   resp.media_encoding #=> String, one of "pcm", "ogg-opus", "flac"
    #   resp.vocabulary_name #=> String
    #   resp.session_id #=> String
    #   # All events are available at resp.transcript_result_stream:
    #   resp.transcript_result_stream #=> Enumerator
    #   resp.transcript_result_stream.event_types #=> [:transcript_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception, :service_unavailable_exception]
    #
    #   # For :transcript_event event available at #on_transcript_event_event callback and response eventstream enumerator:
    #   event.transcript.results #=> Array
    #   event.transcript.results[0].result_id #=> String
    #   event.transcript.results[0].start_time #=> Float
    #   event.transcript.results[0].end_time #=> Float
    #   event.transcript.results[0].is_partial #=> Boolean
    #   event.transcript.results[0].alternatives #=> Array
    #   event.transcript.results[0].alternatives[0].transcript #=> String
    #   event.transcript.results[0].alternatives[0].items #=> Array
    #   event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].type #=> String, one of "pronunciation", "punctuation"
    #   event.transcript.results[0].alternatives[0].items[0].content #=> String
    #   event.transcript.results[0].alternatives[0].items[0].vocabulary_filter_match #=> Boolean
    #   event.transcript.results[0].alternatives[0].items[0].speaker #=> String
    #   event.transcript.results[0].alternatives[0].items[0].confidence #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].stable #=> Boolean
    #   event.transcript.results[0].alternatives[0].entities #=> Array
    #   event.transcript.results[0].alternatives[0].entities[0].start_time #=> Float
    #   event.transcript.results[0].alternatives[0].entities[0].end_time #=> Float
    #   event.transcript.results[0].alternatives[0].entities[0].category #=> String
    #   event.transcript.results[0].alternatives[0].entities[0].type #=> String
    #   event.transcript.results[0].alternatives[0].entities[0].content #=> String
    #   event.transcript.results[0].alternatives[0].entities[0].confidence #=> Float
    #   event.transcript.results[0].channel_id #=> String
    #   event.transcript.results[0].language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"
    #   event.transcript.results[0].language_identification #=> Array
    #   event.transcript.results[0].language_identification[0].language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"
    #   event.transcript.results[0].language_identification[0].score #=> Float
    #
    #   # For :bad_request_exception event available at #on_bad_request_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :limit_exceeded_exception event available at #on_limit_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_unavailable_exception event available at #on_service_unavailable_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.vocabulary_filter_method #=> String, one of "remove", "mask", "tag"
    #   resp.show_speaker_label #=> Boolean
    #   resp.enable_channel_identification #=> Boolean
    #   resp.number_of_channels #=> Integer
    #   resp.enable_partial_results_stabilization #=> Boolean
    #   resp.partial_results_stability #=> String, one of "high", "medium", "low"
    #   resp.content_identification_type #=> String, one of "PII"
    #   resp.content_redaction_type #=> String, one of "PII"
    #   resp.pii_entity_types #=> String
    #   resp.language_model_name #=> String
    #   resp.identify_language #=> Boolean
    #   resp.language_options #=> String
    #   resp.preferred_language #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "es-ES", "ar-SA", "pt-PT", "ca-ES", "ar-AE", "hi-IN", "zh-HK", "nl-NL", "no-NO", "sv-SE", "pl-PL", "fi-FI", "zh-TW", "en-IN", "en-IE", "en-NZ", "en-AB", "en-ZA", "en-WL", "de-CH", "af-ZA", "eu-ES", "hr-HR", "cs-CZ", "da-DK", "fa-IR", "gl-ES", "el-GR", "he-IL", "id-ID", "lv-LV", "ms-MY", "ro-RO", "ru-RU", "sr-RS", "sk-SK", "so-SO", "tl-PH", "uk-UA", "vi-VN", "zu-ZA"
    #   resp.identify_multiple_languages #=> Boolean
    #   resp.vocabulary_names #=> String
    #   resp.vocabulary_filter_names #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartStreamTranscription AWS API Documentation
    #
    # @overload start_stream_transcription(params = {})
    # @param [Hash] params ({})
    def start_stream_transcription(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::AudioStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::TranscriptResultStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:start_stream_transcription, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 55)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::TranscribeStreamingService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        http_response: Seahorse::Client::Http::AsyncResponse.new,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-transcribestreamingservice'
      context[:gem_version] = '1.86.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    private

    def _event_stream_handler(type, handler, event_stream_class)
      case handler
      when event_stream_class then handler
      when Proc then event_stream_class.new.tap(&handler)
      when nil then event_stream_class.new
      else
        msg = "expected #{type}_event_stream_handler to be a block or "\
              "instance of Aws::TranscribeStreamingService::#{event_stream_class}"\
              ", got `#{handler.inspect}` instead"
        raise ArgumentError, msg
      end
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
