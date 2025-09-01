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
require 'aws-sdk-core/plugins/rest_json'

module Aws::Polly
  # An API client for Aws::Polly.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ParrotV1

    add_plugin(::Aws::Polly::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJson)

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
    # @option options [Aws::Polly::EndpointProvider] :endpoint_provider
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

    # <p>Deletes the specified pronunciation lexicon stored in an Amazon Web Services Region. A lexicon which has been deleted is not available for
    #       speech synthesis, nor is it possible to retrieve it using either the
    #         <code>GetLexicon</code> or <code>ListLexicon</code> APIs.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    # @param [Hash, Types::DeleteLexiconInput] params
    # @option params [String] :name
    #   <p>The name of the lexicon to delete. Must be an existing lexicon in
    #         the region.</p>
    # @example To delete a lexicon
    #   # Deletes a specified pronunciation lexicon stored in an AWS Region.
    #   params = {
    #     name: "example"
    #   }
    #   options = {}
    #   response = client.delete_lexicon(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LexiconName", # required
    #   }
    #   options = {}
    #   response = client.delete_lexicon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLexiconOutput]
    def delete_lexicon(params = {}, options = {})
      request = build_request(:delete_lexicon, params)
      request.send_request(options)
    end

    # <p>Returns the list of voices that are available for use when
    #       requesting speech synthesis. Each voice speaks a specified language, is
    #       either male or female, and is identified by an ID, which is the ASCII
    #       version of the voice name. </p>
    #          <p>When synthesizing speech ( <code>SynthesizeSpeech</code> ), you
    #       provide the voice ID for the voice you want from the list of voices
    #       returned by <code>DescribeVoices</code>.</p>
    #          <p>For example, you want your news reader application to read news in
    #       a specific language, but giving a user the option to choose the voice.
    #       Using the <code>DescribeVoices</code> operation you can provide the user
    #       with a list of available voices to select from.</p>
    #          <p> You can optionally specify a language code to filter the available
    #       voices. For example, if you specify <code>en-US</code>, the operation
    #       returns a list of all available US English voices. </p>
    #          <p>This operation requires permissions to perform the
    #         <code>polly:DescribeVoices</code> action.</p>
    # @param [Hash, Types::DescribeVoicesInput] params
    # @option params [String] :engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code> or <code>generative</code>) used by Amazon Polly when
    #         processing input text for speech synthesis. </p>
    # @option params [String] :language_code
    #   <p> The language identification tag (ISO 639 code for the language
    #         name-ISO 3166 country code) for filtering the list of voices returned. If
    #         you don't specify this optional parameter, all available voices are
    #         returned. </p>
    # @option params [Boolean] :include_additional_language_codes
    #   <p>Boolean value indicating whether to return any bilingual voices that
    #         use the specified language as an additional language. For instance, if you
    #         request all languages that use US English (es-US), and there is an Italian
    #         voice that speaks both Italian (it-IT) and US English, that voice will be
    #         included if you specify <code>yes</code> but not if you specify
    #           <code>no</code>.</p>
    # @option params [String] :next_token
    #   <p>An opaque pagination token returned from the previous
    #           <code>DescribeVoices</code> operation. If present, this indicates where
    #         to continue the listing.</p>
    # @example To describe available voices
    #   # Returns the list of voices that are available for use when requesting speech synthesis. Displayed languages are those within the specified language code. If no language code is specified, voices for all available languages are displayed.
    #   params = {
    #     language_code: en-GB
    #   }
    #   options = {}
    #   response = client.describe_voices(params, options)
    #   response.to_h #=>
    #   {
    #     voices: [
    #       {
    #         gender: Female,
    #         name: "Emma",
    #         language_name: "British English",
    #         id: Emma,
    #         language_code: en-GB
    #       },
    #       {
    #         gender: Male,
    #         name: "Brian",
    #         language_name: "British English",
    #         id: Brian,
    #         language_code: en-GB
    #       },
    #       {
    #         gender: Female,
    #         name: "Amy",
    #         language_name: "British English",
    #         id: Amy,
    #         language_code: en-GB
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "standard" # One of: ["standard", "neural", "long-form", "generative"],
    #     language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"],
    #     include_additional_language_codes: false,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_voices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voices: [
    #       {
    #         gender: "Female" # One of: ["Female", "Male"],
    #         id: "Aditi" # One of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"],
    #         language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"],
    #         language_name: "LanguageName",
    #         name: "VoiceName",
    #         additional_language_codes: ["arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"]],
    #         supported_engines: ["standard" # One of: ["standard", "neural", "long-form", "generative"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeVoicesOutput]
    def describe_voices(params = {}, options = {})
      request = build_request(:describe_voices, params)
      request.send_request(options)
    end

    # <p>Returns the content of the specified pronunciation lexicon stored
    #       in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    # @param [Hash, Types::GetLexiconInput] params
    # @option params [String] :name
    #   <p>Name of the lexicon.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LexiconName", # required
    #   }
    #   options = {}
    #   response = client.get_lexicon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lexicon: {
    #       content: "LexiconContent",
    #       name: "LexiconName"
    #     },
    #     lexicon_attributes: {
    #       alphabet: "Alphabet",
    #       language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"],
    #       last_modified: Time.now,
    #       lexicon_arn: "LexiconArn",
    #       lexemes_count: 1,
    #       size: 1
    #     }
    #   }
    # @return [Types::GetLexiconOutput]
    def get_lexicon(params = {}, options = {})
      request = build_request(:get_lexicon, params)
      request.send_request(options)
    end

    # <p>Retrieves a specific SpeechSynthesisTask object based on its TaskID.
    #       This object contains information about the given speech synthesis task,
    #       including the status of the task, and a link to the S3 bucket containing
    #       the output of the task.</p>
    # @param [Hash, Types::GetSpeechSynthesisTaskInput] params
    # @option params [String] :task_id
    #   <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "TaskId", # required
    #   }
    #   options = {}
    #   response = client.get_speech_synthesis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     synthesis_task: {
    #       engine: "standard" # One of: ["standard", "neural", "long-form", "generative"],
    #       task_id: "TaskId",
    #       task_status: "scheduled" # One of: ["scheduled", "inProgress", "completed", "failed"],
    #       task_status_reason: "TaskStatusReason",
    #       output_uri: "OutputUri",
    #       creation_time: Time.now,
    #       request_characters: 1,
    #       sns_topic_arn: "SnsTopicArn",
    #       lexicon_names: ["LexiconName"],
    #       output_format: "json" # One of: ["json", "mp3", "ogg_vorbis", "pcm"],
    #       sample_rate: "SampleRate",
    #       speech_mark_types: ["sentence" # One of: ["sentence", "ssml", "viseme", "word"]],
    #       text_type: "ssml" # One of: ["ssml", "text"],
    #       voice_id: "Aditi" # One of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"],
    #       language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"]
    #     }
    #   }
    # @return [Types::GetSpeechSynthesisTaskOutput]
    def get_speech_synthesis_task(params = {}, options = {})
      request = build_request(:get_speech_synthesis_task, params)
      request.send_request(options)
    end

    # <p>Returns a list of pronunciation lexicons stored in an Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    # @param [Hash, Types::ListLexiconsInput] params
    # @option params [String] :next_token
    #   <p>An opaque pagination token returned from previous
    #           <code>ListLexicons</code> operation. If present, indicates where to
    #         continue the list of lexicons.</p>
    # @example To list all lexicons in a region
    #   # Returns a list of pronunciation lexicons stored in an AWS Region.
    #   params = {}
    #   options = {}
    #   response = client.list_lexicons(params, options)
    #   response.to_h #=>
    #   {
    #     lexicons: [
    #       {
    #         attributes: {
    #           language_code: en-US,
    #           last_modified: Time.parse(1478542980.117),
    #           alphabet: "ipa",
    #           lexemes_count: 1,
    #           lexicon_arn: "arn:aws:polly:us-east-1:123456789012:lexicon/example",
    #           size: 503
    #         },
    #         name: "example"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_lexicons(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lexicons: [
    #       {
    #         name: "LexiconName",
    #         attributes: {
    #           alphabet: "Alphabet",
    #           language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"],
    #           last_modified: Time.now,
    #           lexicon_arn: "LexiconArn",
    #           lexemes_count: 1,
    #           size: 1
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLexiconsOutput]
    def list_lexicons(params = {}, options = {})
      request = build_request(:list_lexicons, params)
      request.send_request(options)
    end

    # <p>Returns a list of SpeechSynthesisTask objects ordered by their
    #       creation date. This operation can filter the tasks by their status, for
    #       example, allowing users to list only tasks that are completed.</p>
    # @param [Hash, Types::ListSpeechSynthesisTasksInput] params
    # @option params [Integer] :max_results
    #   <p>Maximum number of speech synthesis tasks returned in a List
    #         operation.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to use in the next request to continue the
    #         listing of speech synthesis tasks. </p>
    # @option params [String] :status
    #   <p>Status of the speech synthesis tasks returned in a List
    #         operation</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "scheduled" # One of: ["scheduled", "inProgress", "completed", "failed"]
    #   }
    #   options = {}
    #   response = client.list_speech_synthesis_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     synthesis_tasks: [
    #       {
    #         engine: "standard" # One of: ["standard", "neural", "long-form", "generative"],
    #         task_id: "TaskId",
    #         task_status: "scheduled" # One of: ["scheduled", "inProgress", "completed", "failed"],
    #         task_status_reason: "TaskStatusReason",
    #         output_uri: "OutputUri",
    #         creation_time: Time.now,
    #         request_characters: 1,
    #         sns_topic_arn: "SnsTopicArn",
    #         lexicon_names: ["LexiconName"],
    #         output_format: "json" # One of: ["json", "mp3", "ogg_vorbis", "pcm"],
    #         sample_rate: "SampleRate",
    #         speech_mark_types: ["sentence" # One of: ["sentence", "ssml", "viseme", "word"]],
    #         text_type: "ssml" # One of: ["ssml", "text"],
    #         voice_id: "Aditi" # One of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"],
    #         language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"]
    #       }
    #     ]
    #   }
    # @return [Types::ListSpeechSynthesisTasksOutput]
    def list_speech_synthesis_tasks(params = {}, options = {})
      request = build_request(:list_speech_synthesis_tasks, params)
      request.send_request(options)
    end

    # <p>Stores a pronunciation lexicon in an Amazon Web Services Region. If
    #       a lexicon with the same name already exists in the region, it is
    #       overwritten by the new lexicon. Lexicon operations have eventual
    #       consistency, therefore, it might take some time before the lexicon is
    #       available to the SynthesizeSpeech operation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
    # @param [Hash, Types::PutLexiconInput] params
    # @option params [String] :name
    #   <p>Name of the lexicon. The name must follow the regular express
    #         format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive
    #         alphanumeric string up to 20 characters long. </p>
    # @option params [String] :content
    #   <p>Content of the PLS lexicon as string data.</p>
    # @example To save a lexicon
    #   # Stores a pronunciation lexicon in an AWS Region.
    #   params = {
    #     name: "W3C",
    #     content: "<Lexicon Content>"
    #   }
    #   options = {}
    #   response = client.put_lexicon(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LexiconName", # required
    #     content: "LexiconContent", # required
    #   }
    #   options = {}
    #   response = client.put_lexicon(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutLexiconOutput]
    def put_lexicon(params = {}, options = {})
      request = build_request(:put_lexicon, params)
      request.send_request(options)
    end

    # <p>Allows the creation of an asynchronous synthesis task, by starting a
    #       new <code>SpeechSynthesisTask</code>. This operation requires all the
    #       standard information needed for speech synthesis, plus the name of an
    #       Amazon S3 bucket for the service to store the output of the synthesis task
    #       and two optional parameters (<code>OutputS3KeyPrefix</code> and
    #         <code>SnsTopicArn</code>). Once the synthesis task is created, this
    #       operation will return a <code>SpeechSynthesisTask</code> object, which
    #       will include an identifier of this task as well as the current status. The
    #         <code>SpeechSynthesisTask</code> object is available for 72 hours after
    #       starting the asynchronous synthesis task.</p>
    # @param [Hash, Types::StartSpeechSynthesisTaskInput] params
    # @option params [String] :engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code> or <code>generative</code>) for Amazon Polly to use
    #         when processing input text for speech synthesis. Using a voice that
    #         is not supported for the engine selected will result in an error.</p>
    # @option params [String] :language_code
    #   <p>Optional language code for the Speech Synthesis request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    # @option params [Array<String>] :lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the service
    #         to apply during synthesis. Lexicons are applied only if the language of
    #         the lexicon is the same as the language of the voice. </p>
    # @option params [String] :output_format
    #   <p>The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    # @option params [String] :output_s3_bucket_name
    #   <p>Amazon S3 bucket name to which the output file will be saved.</p>
    # @option params [String] :output_s3_key_prefix
    #   <p>The Amazon S3 key prefix for the output speech file.</p>
    # @option params [String] :sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000". The default value for long-form voices
    #         is "24000". The default value for generative voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    # @option params [String] :sns_topic_arn
    #   <p>ARN for the SNS topic optionally used for providing status
    #         notification for a speech synthesis task.</p>
    # @option params [Array<String>] :speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    # @option params [String] :text
    #   <p>The input text to synthesize. If you specify ssml as the TextType,
    #         follow the SSML format for the input text. </p>
    # @option params [String] :text_type
    #   <p>Specifies whether the input text is plain text or SSML. The default
    #         value is plain text. </p>
    # @option params [String] :voice_id
    #   <p>Voice ID to use for the synthesis. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "standard" # One of: ["standard", "neural", "long-form", "generative"],
    #     language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"],
    #     lexicon_names: ["LexiconName"],
    #     output_format: "json" # One of: ["json", "mp3", "ogg_vorbis", "pcm"], # required
    #     output_s3_bucket_name: "OutputS3BucketName", # required
    #     output_s3_key_prefix: "OutputS3KeyPrefix",
    #     sample_rate: "SampleRate",
    #     sns_topic_arn: "SnsTopicArn",
    #     speech_mark_types: ["sentence" # One of: ["sentence", "ssml", "viseme", "word"]],
    #     text: "Text", # required
    #     text_type: "ssml" # One of: ["ssml", "text"],
    #     voice_id: "Aditi" # One of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"], # required
    #   }
    #   options = {}
    #   response = client.start_speech_synthesis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     synthesis_task: {
    #       engine: "standard" # One of: ["standard", "neural", "long-form", "generative"],
    #       task_id: "TaskId",
    #       task_status: "scheduled" # One of: ["scheduled", "inProgress", "completed", "failed"],
    #       task_status_reason: "TaskStatusReason",
    #       output_uri: "OutputUri",
    #       creation_time: Time.now,
    #       request_characters: 1,
    #       sns_topic_arn: "SnsTopicArn",
    #       lexicon_names: ["LexiconName"],
    #       output_format: "json" # One of: ["json", "mp3", "ogg_vorbis", "pcm"],
    #       sample_rate: "SampleRate",
    #       speech_mark_types: ["sentence" # One of: ["sentence", "ssml", "viseme", "word"]],
    #       text_type: "ssml" # One of: ["ssml", "text"],
    #       voice_id: "Aditi" # One of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"],
    #       language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"]
    #     }
    #   }
    # @return [Types::StartSpeechSynthesisTaskOutput]
    def start_speech_synthesis_task(params = {}, options = {})
      request = build_request(:start_speech_synthesis_task, params)
      request.send_request(options)
    end

    # <p>Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes.
    #       SSML input must be valid, well-formed SSML. Some alphabets might not be
    #       available with all the voices (for example, Cyrillic might not be read at
    #       all by English voices) unless phoneme mapping is used. For more
    #       information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html">How it Works</a>.</p>
    # @param [Hash, Types::SynthesizeSpeechInput] params
    # @option params [String] :engine
    #   <p>Specifies the engine (<code>standard</code>, <code>neural</code>,
    #         <code>long-form</code>, or <code>generative</code>) for Amazon Polly
    #         to use when processing input text for speech synthesis. Provide an engine
    #         that is supported by the voice you select. If you don't provide an engine,
    #         the standard engine is selected by default. If a chosen voice isn't supported
    #         by the standard engine, this will result in an error. For information on
    #         Amazon Polly voices and which voices are available for each engine, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Available Voices</a>.</p>
    #            <p>Type: String</p>
    #            <p>Valid Values: <code>standard</code> | <code>neural</code> |
    #         <code>long-form</code> | <code>generative</code>
    #            </p>
    #            <p>Required: Yes</p>
    # @option params [String] :language_code
    #   <p>Optional language code for the Synthesize Speech request. This is only
    #         necessary if using a bilingual voice, such as Aditi, which can be used for
    #         either Indian English (en-IN) or Hindi (hi-IN). </p>
    #            <p>If a bilingual voice is used and no language code is specified, Amazon Polly
    #         uses the default language of the bilingual voice. The default language for
    #         any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code>
    #         parameter. For example, if no language code is specified, Aditi will use
    #         Indian English rather than Hindi.</p>
    # @option params [Array<String>] :lexicon_names
    #   <p>List of one or more pronunciation lexicon names you want the
    #         service to apply during synthesis. Lexicons are applied only if the
    #         language of the lexicon is the same as the language of the voice. For
    #         information about storing lexicons, see <a href="https://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
    # @option params [String] :output_format
    #   <p> The format in which the returned output will be encoded. For audio
    #         stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will
    #         be json. </p>
    #            <p>When pcm is used, the content returned is audio/pcm in a signed
    #         16-bit, 1 channel (mono), little-endian format. </p>
    # @option params [String] :sample_rate
    #   <p>The audio frequency specified in Hz.</p>
    #            <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
    #         and "24000". The default value for standard voices is "22050". The default
    #         value for neural voices is "24000". The default value for long-form voices
    #         is "24000". The default value for generative voices is "24000".</p>
    #            <p>Valid values for pcm are "8000" and "16000" The default value is
    #         "16000". </p>
    # @option params [Array<String>] :speech_mark_types
    #   <p>The type of speech marks returned for the input text.</p>
    # @option params [String] :text
    #   <p> Input text to synthesize. If you specify <code>ssml</code> as the
    #           <code>TextType</code>, follow the SSML format for the input text.
    #       </p>
    # @option params [String] :text_type
    #   <p> Specifies whether the input text is plain text or SSML. The
    #         default value is plain text. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using
    #           SSML</a>.</p>
    # @option params [String] :voice_id
    #   <p> Voice ID to use for the synthesis. You can get a list of available
    #         voice IDs by calling the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
    # @example To synthesize speech
    #   # Synthesizes plain text or SSML into a file of human-like speech.
    #   params = {
    #     lexicon_names: [
    #       "example"
    #     ],
    #     output_format: mp3,
    #     sample_rate: "8000",
    #     text: "All Gaul is divided into three parts",
    #     text_type: text,
    #     voice_id: Joanna
    #   }
    #   options = {}
    #   response = client.synthesize_speech(params, options)
    #   response.to_h #=>
    #   {
    #     audio_stream: "TEXT",
    #     content_type: "audio/mpeg",
    #     request_characters: 37
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "standard" # One of: ["standard", "neural", "long-form", "generative"],
    #     language_code: "arb" # One of: ["arb", "cmn-CN", "cy-GB", "da-DK", "de-DE", "en-AU", "en-GB", "en-GB-WLS", "en-IN", "en-US", "es-ES", "es-MX", "es-US", "fr-CA", "fr-FR", "is-IS", "it-IT", "ja-JP", "hi-IN", "ko-KR", "nb-NO", "nl-NL", "pl-PL", "pt-BR", "pt-PT", "ro-RO", "ru-RU", "sv-SE", "tr-TR", "en-NZ", "en-ZA", "ca-ES", "de-AT", "yue-CN", "ar-AE", "fi-FI", "en-IE", "nl-BE", "fr-BE", "cs-CZ", "de-CH", "en-SG"],
    #     lexicon_names: ["LexiconName"],
    #     output_format: "json" # One of: ["json", "mp3", "ogg_vorbis", "pcm"], # required
    #     sample_rate: "SampleRate",
    #     speech_mark_types: ["sentence" # One of: ["sentence", "ssml", "viseme", "word"]],
    #     text: "Text", # required
    #     text_type: "ssml" # One of: ["ssml", "text"],
    #     voice_id: "Aditi" # One of: ["Aditi", "Amy", "Astrid", "Bianca", "Brian", "Camila", "Carla", "Carmen", "Celine", "Chantal", "Conchita", "Cristiano", "Dora", "Emma", "Enrique", "Ewa", "Filiz", "Gabrielle", "Geraint", "Giorgio", "Gwyneth", "Hans", "Ines", "Ivy", "Jacek", "Jan", "Joanna", "Joey", "Justin", "Karl", "Kendra", "Kevin", "Kimberly", "Lea", "Liv", "Lotte", "Lucia", "Lupe", "Mads", "Maja", "Marlene", "Mathieu", "Matthew", "Maxim", "Mia", "Miguel", "Mizuki", "Naja", "Nicole", "Olivia", "Penelope", "Raveena", "Ricardo", "Ruben", "Russell", "Salli", "Seoyeon", "Takumi", "Tatyana", "Vicki", "Vitoria", "Zeina", "Zhiyu", "Aria", "Ayanda", "Arlet", "Hannah", "Arthur", "Daniel", "Liam", "Pedro", "Kajal", "Hiujin", "Laura", "Elin", "Ida", "Suvi", "Ola", "Hala", "Andres", "Sergio", "Remi", "Adriano", "Thiago", "Ruth", "Stephen", "Kazuha", "Tomoko", "Niamh", "Sofie", "Lisa", "Isabelle", "Zayd", "Danielle", "Gregory", "Burcu", "Jitka", "Sabrina", "Jasmine", "Jihye"], # required
    #   }
    #   options = {}
    #   response = client.synthesize_speech(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     audio_stream: File.read("source_file"),
    #     content_type: "ContentType",
    #     request_characters: 1
    #   }
    # @return [Types::SynthesizeSpeechOutput]
    def synthesize_speech(params = {}, options = {})
      request = build_request(:synthesize_speech, params)
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
      context[:gem_name] = 'aws-sdk-polly'
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
