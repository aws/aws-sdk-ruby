# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribeservice)

module Aws::TranscribeService
  # An API client for TranscribeService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #   client = Aws::TranscribeService::Client.new(
  #     region: region_name,
  #     credentials: credentials,
  #     # ...
  #   )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :transcribeservice

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
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
    #       * `legacy` - The pre-existing retry behavior.  This is default value if
    #         no retry mode is provided.
    #       * `standard` - A standardized set of retry rules across the AWS SDKs.
    #         This includes support for retry quotas, which limit the number of
    #         unsuccessful retries a client can make.
    #       * `adaptive` - An experimental retry mode that includes all the
    #         functionality of `standard` mode along with automatic client side
    #         throttling.  This is a provisional mode that may change behavior
    #         in the future.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yielded by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yielded by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a new custom vocabulary that you can use to change the way
    # Amazon Transcribe handles transcription of an audio file.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary. The name must be unique within an AWS
    #   account. The name is case-sensitive.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries.
    #
    # @option params [Array<String>] :phrases
    #   An array of strings that contains the vocabulary entries.
    #
    # @option params [String] :vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is
    #
    #   `
    #   https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/examplebucket/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary
    #
    # @return [Types::CreateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::CreateVocabularyResponse#language_code #language_code} => String
    #   * {Types::CreateVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::CreateVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateVocabularyResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabulary AWS API Documentation
    #
    # @overload create_vocabulary(params = {})
    # @param [Hash] params ({})
    def create_vocabulary(params = {}, options = {})
      req = build_request(:create_vocabulary, params)
      req.send_request(options)
    end

    # Creates a new vocabulary filter that you can use to filter words, such
    # as profane words, from the output of a transcription job.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The vocabulary filter name. The name must be unique within the account
    #   that contains it.
    #
    # @option params [required, String] :language_code
    #   The language code of the words in the vocabulary filter. All words in
    #   the filter must be in the same language. The vocabulary filter can
    #   only be used with transcription jobs in the specified language.
    #
    # @option params [Array<String>] :words
    #   The words to use in the vocabulary filter. Only use characters from
    #   the character set defined for custom vocabularies. For a list of
    #   character sets, see [Character Sets for Custom Vocabularies][1].
    #
    #   If you provide a list of words in the `Words` parameter, you can't
    #   use the `VocabularyFilterFileUri` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   The Amazon S3 location of a text file used as input to create the
    #   vocabulary filter. Only use characters from the character set defined
    #   for custom vocabularies. For a list of character sets, see [Character
    #   Sets for Custom Vocabularies][1].
    #
    #   The specified file must be less than 50 KB of UTF-8 characters.
    #
    #   If you provide the location of a list of words in the
    #   `VocabularyFilterFileUri` parameter, you can't use the `Words`
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
    #
    # @return [Types::CreateVocabularyFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyFilterResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::CreateVocabularyFilterResponse#language_code #language_code} => String
    #   * {Types::CreateVocabularyFilterResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyFilter AWS API Documentation
    #
    # @overload create_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def create_vocabulary_filter(params = {}, options = {})
      req = build_request(:create_vocabulary_filter, params)
      req.send_request(options)
    end

    # Deletes a previously submitted transcription job along with any other
    # generated results such as the transcription, models, and so on.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the transcription job to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteTranscriptionJob AWS API Documentation
    #
    # @overload delete_transcription_job(params = {})
    # @param [Hash] params ({})
    def delete_transcription_job(params = {}, options = {})
      req = build_request(:delete_transcription_job, params)
      req.send_request(options)
    end

    # Deletes a vocabulary from Amazon Transcribe.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabulary AWS API Documentation
    #
    # @overload delete_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary(params = {}, options = {})
      req = build_request(:delete_vocabulary, params)
      req.send_request(options)
    end

    # Removes a vocabulary filter.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the vocabulary filter to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabularyFilter AWS API Documentation
    #
    # @overload delete_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary_filter(params = {}, options = {})
      req = build_request(:delete_vocabulary_filter, params)
      req.send_request(options)
    end

    # Returns information about a transcription job. To see the status of
    # the job, check the `TranscriptionJobStatus` field. If the status is
    # `COMPLETED`, the job is finished and you can find the results at the
    # location specified in the `TranscriptFileUri` field. If you enable
    # content redaction, the redacted transcript appears in
    # `RedactedTranscriptFileUri`.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the job.
    #
    # @return [Types::GetTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transcription_job.transcription_job_name #=> String
    #   resp.transcription_job.transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac"
    #   resp.transcription_job.media.media_file_uri #=> String
    #   resp.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.transcription_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.transcription_job.start_time #=> Time
    #   resp.transcription_job.creation_time #=> Time
    #   resp.transcription_job.completion_time #=> Time
    #   resp.transcription_job.failure_reason #=> String
    #   resp.transcription_job.settings.vocabulary_name #=> String
    #   resp.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.transcription_job.settings.channel_identification #=> Boolean
    #   resp.transcription_job.settings.show_alternatives #=> Boolean
    #   resp.transcription_job.settings.max_alternatives #=> Integer
    #   resp.transcription_job.settings.vocabulary_filter_name #=> String
    #   resp.transcription_job.settings.vocabulary_filter_method #=> String, one of "remove", "mask"
    #   resp.transcription_job.job_execution_settings.allow_deferred_execution #=> Boolean
    #   resp.transcription_job.job_execution_settings.data_access_role_arn #=> String
    #   resp.transcription_job.content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job.content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJob AWS API Documentation
    #
    # @overload get_transcription_job(params = {})
    # @param [Hash] params ({})
    def get_transcription_job(params = {}, options = {})
      req = build_request(:get_transcription_job, params)
      req.send_request(options)
    end

    # Gets information about a vocabulary.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to return information about. The name is
    #   case-sensitive.
    #
    # @return [Types::GetVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::GetVocabularyResponse#language_code #language_code} => String
    #   * {Types::GetVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::GetVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetVocabularyResponse#failure_reason #failure_reason} => String
    #   * {Types::GetVocabularyResponse#download_uri #download_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #   resp.download_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabulary AWS API Documentation
    #
    # @overload get_vocabulary(params = {})
    # @param [Hash] params ({})
    def get_vocabulary(params = {}, options = {})
      req = build_request(:get_vocabulary, params)
      req.send_request(options)
    end

    # Returns information about a vocabulary filter.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the vocabulary filter for which to return information.
    #
    # @return [Types::GetVocabularyFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVocabularyFilterResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::GetVocabularyFilterResponse#language_code #language_code} => String
    #   * {Types::GetVocabularyFilterResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetVocabularyFilterResponse#download_uri #download_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.last_modified_time #=> Time
    #   resp.download_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyFilter AWS API Documentation
    #
    # @overload get_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def get_vocabulary_filter(params = {}, options = {})
      req = build_request(:get_vocabulary_filter, params)
      req.send_request(options)
    end

    # Lists transcription jobs with the specified status.
    #
    # @option params [String] :status
    #   When specified, returns only transcription jobs with the specified
    #   status. Jobs are ordered by creation date, with the newest jobs
    #   returned first. If you don’t specify a status, Amazon Transcribe
    #   returns all transcription jobs ordered by creation date.
    #
    # @option params [String] :job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListTranscriptionJobs` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #
    # @return [Types::ListTranscriptionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTranscriptionJobsResponse#status #status} => String
    #   * {Types::ListTranscriptionJobsResponse#next_token #next_token} => String
    #   * {Types::ListTranscriptionJobsResponse#transcription_job_summaries #transcription_job_summaries} => Array&lt;Types::TranscriptionJobSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transcription_jobs({
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.transcription_job_summaries #=> Array
    #   resp.transcription_job_summaries[0].transcription_job_name #=> String
    #   resp.transcription_job_summaries[0].creation_time #=> Time
    #   resp.transcription_job_summaries[0].start_time #=> Time
    #   resp.transcription_job_summaries[0].completion_time #=> Time
    #   resp.transcription_job_summaries[0].language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.transcription_job_summaries[0].transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job_summaries[0].failure_reason #=> String
    #   resp.transcription_job_summaries[0].output_location_type #=> String, one of "CUSTOMER_BUCKET", "SERVICE_BUCKET"
    #   resp.transcription_job_summaries[0].content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job_summaries[0].content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobs AWS API Documentation
    #
    # @overload list_transcription_jobs(params = {})
    # @param [Hash] params ({})
    def list_transcription_jobs(params = {}, options = {})
      req = build_request(:list_transcription_jobs, params)
      req.send_request(options)
    end

    # Returns a list of vocabularies that match the specified criteria. If
    # no criteria are specified, returns the entire list of vocabularies.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListVocabularies` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of vocabularies to return in the response. If there
    #   are fewer results in the list, this response contains only the actual
    #   results.
    #
    # @option params [String] :state_equals
    #   When specified, only returns vocabularies with the `VocabularyState`
    #   field equal to the specified state.
    #
    # @option params [String] :name_contains
    #   When specified, the vocabularies returned in the list are limited to
    #   vocabularies whose name contains the specified string. The search is
    #   case-insensitive, `ListVocabularies` will return both
    #   "vocabularyname" and "VocabularyName" in the response list.
    #
    # @return [Types::ListVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVocabulariesResponse#status #status} => String
    #   * {Types::ListVocabulariesResponse#next_token #next_token} => String
    #   * {Types::ListVocabulariesResponse#vocabularies #vocabularies} => Array&lt;Types::VocabularyInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabularies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state_equals: "PENDING", # accepts PENDING, READY, FAILED
    #     name_contains: "VocabularyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.vocabularies #=> Array
    #   resp.vocabularies[0].vocabulary_name #=> String
    #   resp.vocabularies[0].language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.vocabularies[0].last_modified_time #=> Time
    #   resp.vocabularies[0].vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularies AWS API Documentation
    #
    # @overload list_vocabularies(params = {})
    # @param [Hash] params ({})
    def list_vocabularies(params = {}, options = {})
      req = build_request(:list_vocabularies, params)
      req.send_request(options)
    end

    # Gets information about vocabulary filters.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListVocabularyFilters` was
    #   truncated, include the `NextToken` to fetch the next set of
    #   collections.
    #
    # @option params [Integer] :max_results
    #   The maximum number of filters to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #
    # @option params [String] :name_contains
    #   Filters the response so that it only contains vocabulary filters whose
    #   name contains the specified string.
    #
    # @return [Types::ListVocabularyFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVocabularyFiltersResponse#next_token #next_token} => String
    #   * {Types::ListVocabularyFiltersResponse#vocabulary_filters #vocabulary_filters} => Array&lt;Types::VocabularyFilterInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabulary_filters({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "VocabularyFilterName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vocabulary_filters #=> Array
    #   resp.vocabulary_filters[0].vocabulary_filter_name #=> String
    #   resp.vocabulary_filters[0].language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.vocabulary_filters[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularyFilters AWS API Documentation
    #
    # @overload list_vocabulary_filters(params = {})
    # @param [Hash] params ({})
    def list_vocabulary_filters(params = {}, options = {})
      req = build_request(:list_vocabulary_filters, params)
      req.send_request(options)
    end

    # Starts an asynchronous job to transcribe speech to text.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the job. Note that you can't use the strings "." or
    #   ".." by themselves as the job name. The name must also be unique
    #   within an AWS account.
    #
    # @option params [required, String] :language_code
    #   The language code for the language used in the input media file.
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media file.
    #
    #   If you do not specify the media sample rate, Amazon Transcribe
    #   determines the sample rate. If you specify the sample rate, it must
    #   match the sample rate detected by Amazon Transcribe. In most cases,
    #   you should leave the `MediaSampleRateHertz` field blank and let Amazon
    #   Transcribe determine the sample rate.
    #
    # @option params [String] :media_format
    #   The format of the input media file.
    #
    # @option params [required, Types::Media] :media
    #   An object that describes the input media for a transcription job.
    #
    # @option params [String] :output_bucket_name
    #   The location where the transcription is stored.
    #
    #   If you set the `OutputBucketName`, Amazon Transcribe puts the
    #   transcript in the specified S3 bucket. When you call the
    #   GetTranscriptionJob operation, the operation returns this location in
    #   the `TranscriptFileUri` field. If you enable content redaction, the
    #   redacted transcript appears in `RedactedTranscriptFileUri`. If you
    #   enable content redaction and choose to output an unredacted
    #   transcript, that transcript's location still appears in the
    #   `TranscriptFileUri`. The S3 bucket must have permissions that allow
    #   Amazon Transcribe to put files in the bucket. For more information,
    #   see [Permissions Required for IAM User Roles][1].
    #
    #   You can specify an AWS Key Management Service (KMS) key to encrypt the
    #   output of your transcription using the `OutputEncryptionKMSKeyId`
    #   parameter. If you don't specify a KMS key, Amazon Transcribe uses the
    #   default Amazon S3 key for server-side encryption of transcripts that
    #   are placed in your S3 bucket.
    #
    #   If you don't set the `OutputBucketName`, Amazon Transcribe generates
    #   a pre-signed URL, a shareable URL that provides secure access to your
    #   transcription, and returns it in the `TranscriptFileUri` field. Use
    #   this URL to download the transcription.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #
    # @option params [String] :output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service (KMS)
    #   key used to encrypt the output of the transcription job. The user
    #   calling the `StartTranscriptionJob` operation must have permission to
    #   use the specified KMS key.
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     "arn:aws:kms:region:account
    #     ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * ARN of a KMS Key Alias: "arn:aws:kms:region:account
    #     ID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the
    #   transcription job is encrypted with the default Amazon S3 key
    #   (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also specify
    #   an output location in the `OutputBucketName` parameter.
    #
    # @option params [Types::Settings] :settings
    #   A `Settings` object that provides optional settings for a
    #   transcription job.
    #
    # @option params [Types::JobExecutionSettings] :job_execution_settings
    #   Provides information about how a transcription job is executed. Use
    #   this field to indicate that the job can be queued for deferred
    #   execution if the concurrency limit is reached and there are no slots
    #   available to immediately run the job.
    #
    # @option params [Types::ContentRedaction] :content_redaction
    #   An object that contains the request parameters for content redaction.
    #
    # @return [Types::StartTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
    #     media_sample_rate_hertz: 1,
    #     media_format: "mp3", # accepts mp3, mp4, wav, flac
    #     media: { # required
    #       media_file_uri: "Uri",
    #     },
    #     output_bucket_name: "OutputBucketName",
    #     output_encryption_kms_key_id: "KMSKeyId",
    #     settings: {
    #       vocabulary_name: "VocabularyName",
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #       show_alternatives: false,
    #       max_alternatives: 1,
    #       vocabulary_filter_name: "VocabularyFilterName",
    #       vocabulary_filter_method: "remove", # accepts remove, mask
    #     },
    #     job_execution_settings: {
    #       allow_deferred_execution: false,
    #       data_access_role_arn: "DataAccessRoleArn",
    #     },
    #     content_redaction: {
    #       redaction_type: "PII", # required, accepts PII
    #       redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transcription_job.transcription_job_name #=> String
    #   resp.transcription_job.transcription_job_status #=> String, one of "QUEUED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac"
    #   resp.transcription_job.media.media_file_uri #=> String
    #   resp.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.transcription_job.transcript.redacted_transcript_file_uri #=> String
    #   resp.transcription_job.start_time #=> Time
    #   resp.transcription_job.creation_time #=> Time
    #   resp.transcription_job.completion_time #=> Time
    #   resp.transcription_job.failure_reason #=> String
    #   resp.transcription_job.settings.vocabulary_name #=> String
    #   resp.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.transcription_job.settings.channel_identification #=> Boolean
    #   resp.transcription_job.settings.show_alternatives #=> Boolean
    #   resp.transcription_job.settings.max_alternatives #=> Integer
    #   resp.transcription_job.settings.vocabulary_filter_name #=> String
    #   resp.transcription_job.settings.vocabulary_filter_method #=> String, one of "remove", "mask"
    #   resp.transcription_job.job_execution_settings.allow_deferred_execution #=> Boolean
    #   resp.transcription_job.job_execution_settings.data_access_role_arn #=> String
    #   resp.transcription_job.content_redaction.redaction_type #=> String, one of "PII"
    #   resp.transcription_job.content_redaction.redaction_output #=> String, one of "redacted", "redacted_and_unredacted"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJob AWS API Documentation
    #
    # @overload start_transcription_job(params = {})
    # @param [Hash] params ({})
    def start_transcription_job(params = {}, options = {})
      req = build_request(:start_transcription_job, params)
      req.send_request(options)
    end

    # Updates an existing vocabulary with new values. The `UpdateVocabulary`
    # operation overwrites all of the existing information with the values
    # that you provide in the request.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to update. The name is case-sensitive.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries.
    #
    # @option params [Array<String>] :phrases
    #   An array of strings containing the vocabulary entries.
    #
    # @option params [String] :vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is
    #
    #   `
    #   https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/examplebucket/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary
    #
    # @return [Types::UpdateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::UpdateVocabularyResponse#language_code #language_code} => String
    #   * {Types::UpdateVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
    #     phrases: ["Phrase"],
    #     vocabulary_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.last_modified_time #=> Time
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabulary AWS API Documentation
    #
    # @overload update_vocabulary(params = {})
    # @param [Hash] params ({})
    def update_vocabulary(params = {}, options = {})
      req = build_request(:update_vocabulary, params)
      req.send_request(options)
    end

    # Updates a vocabulary filter with a new list of filtered words.
    #
    # @option params [required, String] :vocabulary_filter_name
    #   The name of the vocabulary filter to update.
    #
    # @option params [Array<String>] :words
    #   The words to use in the vocabulary filter. Only use characters from
    #   the character set defined for custom vocabularies. For a list of
    #   character sets, see [Character Sets for Custom Vocabularies][1].
    #
    #   If you provide a list of words in the `Words` parameter, you can't
    #   use the `VocabularyFilterFileUri` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
    #
    # @option params [String] :vocabulary_filter_file_uri
    #   The Amazon S3 location of a text file used as input to create the
    #   vocabulary filter. Only use characters from the character set defined
    #   for custom vocabularies. For a list of character sets, see [Character
    #   Sets for Custom Vocabularies][1].
    #
    #   The specified file must be less than 50 KB of UTF-8 characters.
    #
    #   If you provide the location of a list of words in the
    #   `VocabularyFilterFileUri` parameter, you can't use the `Words`
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
    #
    # @return [Types::UpdateVocabularyFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVocabularyFilterResponse#vocabulary_filter_name #vocabulary_filter_name} => String
    #   * {Types::UpdateVocabularyFilterResponse#language_code #language_code} => String
    #   * {Types::UpdateVocabularyFilterResponse#last_modified_time #last_modified_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary_filter({
    #     vocabulary_filter_name: "VocabularyFilterName", # required
    #     words: ["Word"],
    #     vocabulary_filter_file_uri: "Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_filter_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US", "en-AU", "fr-CA", "en-GB", "de-DE", "pt-BR", "fr-FR", "it-IT", "ko-KR", "es-ES", "en-IN", "hi-IN", "ar-SA", "ru-RU", "zh-CN", "nl-NL", "id-ID", "ta-IN", "fa-IR", "en-IE", "en-AB", "en-WL", "pt-PT", "te-IN", "tr-TR", "de-CH", "he-IL", "ms-MY", "ja-JP", "ar-AE"
    #   resp.last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyFilter AWS API Documentation
    #
    # @overload update_vocabulary_filter(params = {})
    # @param [Hash] params ({})
    def update_vocabulary_filter(params = {}, options = {})
      req = build_request(:update_vocabulary_filter, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-transcribeservice'
      context[:gem_version] = '1.38.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
