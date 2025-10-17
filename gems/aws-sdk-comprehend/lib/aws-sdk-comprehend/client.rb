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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Comprehend
  # An API client for Aws::Comprehend.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Comprehend20171127

    add_plugin(::Aws::Comprehend::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Comprehend::EndpointProvider)
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

    # <p>Determines the dominant language of the input text for a batch of documents. For a list
    #       of languages that Amazon Comprehend can detect, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>.
    #     </p>
    # @param [Hash, Types::BatchDetectDominantLanguageRequest] params
    # @option params [Array<String>] :text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. Each document should contain at least 20 characters. The maximum size of each document is 5 KB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_list: ["CustomerInputString"], # required
    #   }
    #   options = {}
    #   response = client.batch_detect_dominant_language(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [ # required
    #       {
    #         index: 1,
    #         languages: [
    #           {
    #             language_code: "String",
    #             score: 1.0
    #           }
    #         ]
    #       }
    #     ],
    #     error_list: [ # required
    #       {
    #         index: 1,
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDetectDominantLanguageResponse]
    def batch_detect_dominant_language(params = {}, options = {})
      request = build_request(:batch_detect_dominant_language, params)
      request.send_request(options)
    end

    # <p>Inspects the text of a batch of documents for named entities and returns information
    #       about them. For more information about named entities, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html">Entities</a> in the Comprehend Developer Guide.
    #     </p>
    # @param [Hash, Types::BatchDetectEntitiesRequest] params
    # @option params [Array<String>] :text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size of each document is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.batch_detect_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [ # required
    #       {
    #         index: 1,
    #         entities: [
    #           {
    #             score: 1.0,
    #             type: "PERSON" # One of: ["PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"],
    #             text: "String",
    #             begin_offset: 1,
    #             end_offset: 1,
    #             block_references: [
    #               {
    #                 block_id: "String",
    #                 begin_offset: 1,
    #                 end_offset: 1,
    #                 child_blocks: [
    #                   {
    #                     child_block_id: "String",
    #                     begin_offset: 1,
    #                     end_offset: 1
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     error_list: [ # required
    #       {
    #         index: 1,
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDetectEntitiesResponse]
    def batch_detect_entities(params = {}, options = {})
      request = build_request(:batch_detect_entities, params)
      request.send_request(options)
    end

    # <p>Detects the key noun phrases found in a batch of documents.</p>
    # @param [Hash, Types::BatchDetectKeyPhrasesRequest] params
    # @option params [Array<String>] :text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size of each document is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.batch_detect_key_phrases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [ # required
    #       {
    #         index: 1,
    #         key_phrases: [
    #           {
    #             score: 1.0,
    #             text: "String",
    #             begin_offset: 1,
    #             end_offset: 1
    #           }
    #         ]
    #       }
    #     ],
    #     error_list: [ # required
    #       {
    #         index: 1,
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDetectKeyPhrasesResponse]
    def batch_detect_key_phrases(params = {}, options = {})
      request = build_request(:batch_detect_key_phrases, params)
      request.send_request(options)
    end

    # <p>Inspects a batch of documents and returns an inference of the prevailing sentiment,
    #         <code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>,
    #       in each one.</p>
    # @param [Hash, Types::BatchDetectSentimentRequest] params
    # @option params [Array<String>] :text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size of each document is 5 KB. </p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.batch_detect_sentiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [ # required
    #       {
    #         index: 1,
    #         sentiment: "POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"],
    #         sentiment_score: {
    #           positive: 1.0,
    #           negative: 1.0,
    #           neutral: 1.0,
    #           mixed: 1.0
    #         }
    #       }
    #     ],
    #     error_list: [ # required
    #       {
    #         index: 1,
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDetectSentimentResponse]
    def batch_detect_sentiment(params = {}, options = {})
      request = build_request(:batch_detect_sentiment, params)
      request.send_request(options)
    end

    # <p>Inspects the text of a batch of documents for the syntax and part of speech of the words
    #       in the document and returns information about them. For more information, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html">Syntax</a> in the Comprehend Developer Guide.
    #     </p>
    # @param [Hash, Types::BatchDetectSyntaxRequest] params
    # @option params [Array<String>] :text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size for each document is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt"], # required
    #   }
    #   options = {}
    #   response = client.batch_detect_syntax(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [ # required
    #       {
    #         index: 1,
    #         syntax_tokens: [
    #           {
    #             token_id: 1,
    #             text: "String",
    #             begin_offset: 1,
    #             end_offset: 1,
    #             part_of_speech: {
    #               tag: "ADJ" # One of: ["ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"],
    #               score: 1.0
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     error_list: [ # required
    #       {
    #         index: 1,
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDetectSyntaxResponse]
    def batch_detect_syntax(params = {}, options = {})
      request = build_request(:batch_detect_syntax, params)
      request.send_request(options)
    end

    # <p>Inspects a batch of documents and returns a sentiment analysis
    #       for each entity identified in the documents.</p>
    #          <p>For more information about targeted sentiment, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html">Targeted sentiment</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::BatchDetectTargetedSentimentRequest] params
    # @option params [Array<String>] :text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents.
    #         The list can contain a maximum of 25 documents. The maximum size of each document is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only supported language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_list: ["CustomerInputString"], # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.batch_detect_targeted_sentiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [ # required
    #       {
    #         index: 1,
    #         entities: [
    #           {
    #             descriptive_mention_index: [1],
    #             mentions: [
    #               {
    #                 score: 1.0,
    #                 group_score: 1.0,
    #                 text: "String",
    #                 type: "PERSON" # One of: ["PERSON", "LOCATION", "ORGANIZATION", "FACILITY", "BRAND", "COMMERCIAL_ITEM", "MOVIE", "MUSIC", "BOOK", "SOFTWARE", "GAME", "PERSONAL_TITLE", "EVENT", "DATE", "QUANTITY", "ATTRIBUTE", "OTHER"],
    #                 mention_sentiment: {
    #                   sentiment: "POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"],
    #                   sentiment_score: {
    #                     positive: 1.0,
    #                     negative: 1.0,
    #                     neutral: 1.0,
    #                     mixed: 1.0
    #                   }
    #                 },
    #                 begin_offset: 1,
    #                 end_offset: 1
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     error_list: [ # required
    #       {
    #         index: 1,
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDetectTargetedSentimentResponse]
    def batch_detect_targeted_sentiment(params = {}, options = {})
      request = build_request(:batch_detect_targeted_sentiment, params)
      request.send_request(options)
    end

    # <p>Creates a classification request to analyze a single document in real-time. <code>ClassifyDocument</code> 
    #       supports the following model types:</p>
    #          <ul>
    #             <li>
    #                <p>Custom classifier - a custom model that you have created and trained. 
    #         For input, you can provide plain text, a single-page document (PDF, Word, or image), or 
    #         Amazon Textract API output. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html">Custom classification</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>Prompt safety classifier - Amazon Comprehend provides a pre-trained model for classifying 
    #         input prompts for generative AI applications. 
    #         For input, you provide English plain text input.
    #         For prompt safety classification, the response includes only the <code>Classes</code> field.
    #         For more information about prompt safety classifiers, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification">Prompt safety classification</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p>If the system detects errors while processing a page in the input document,
    #       the API response includes an <code>Errors</code> field that describes the errors.</p>
    #          <p>If the system detects a document-level error in your input document, the API returns an
    #       <code>InvalidRequestException</code> error response.
    #       For details about this exception, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html">
    #         Errors in semi-structured documents</a> in the Comprehend Developer Guide.
    #     </p>
    # @param [Hash, Types::ClassifyDocumentRequest] params
    # @option params [String] :text
    #   <p>The document text to be analyzed. If you enter text using this parameter,
    #         do not use the <code>Bytes</code> parameter.</p>
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint. </p>
    #            <p>For prompt safety classification, Amazon Comprehend provides the endpoint ARN. For more information about prompt safety classifiers, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification">Prompt safety classification</a> in the <i>Amazon Comprehend Developer Guide</i>
    #            </p>
    #            <p>For custom classification, you create an endpoint for your custom model. For more information, 
    #         see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/using-endpoints.html">Using Amazon Comprehend endpoints</a>.</p>
    # @option params [String] :bytes
    #   <p>Use the <code>Bytes</code> parameter to input a text, PDF, Word or image file.</p>
    #            <p>When you classify a document using a custom model, you can also use the <code>Bytes</code> parameter to input an Amazon Textract <code>DetectDocumentText</code>
    #           or <code>AnalyzeDocument</code> output file.</p>
    #            <p>To classify a document using the prompt safety classifier, use the <code>Text</code> parameter for input.</p>
    #            <p>Provide the input document as a sequence of base64-encoded bytes.
    #         If your code uses an Amazon Web Services SDK to classify documents, the SDK may encode
    #         the document file bytes for you. </p>
    #            <p>The maximum length of this field depends on the input document type. For details, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html">
    #           Inputs for real-time custom analysis</a> in the Comprehend Developer Guide. </p>
    #            <p>If you use the <code>Bytes</code> parameter, do not use the <code>Text</code> parameter.</p>
    # @option params [Types::DocumentReaderConfig] :document_reader_config
    #   <p>Provides configuration parameters to override the default actions for extracting text
    #         from PDF documents and image files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString",
    #     endpoint_arn: "DocumentClassifierEndpointArn", # required
    #     bytes: "data",
    #     document_reader_config: {
    #       document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #       document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #       feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #     }
    #   }
    #   options = {}
    #   response = client.classify_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     classes: [
    #       {
    #         name: "String",
    #         score: 1.0,
    #         page: 1
    #       }
    #     ],
    #     labels: [
    #       {
    #         name: "String",
    #         score: 1.0,
    #         page: 1
    #       }
    #     ],
    #     document_metadata: {
    #       pages: 1,
    #       extracted_characters: [
    #         {
    #           page: 1,
    #           count: 1
    #         }
    #       ]
    #     },
    #     document_type: [
    #       {
    #         page: 1,
    #         type: "NATIVE_PDF" # One of: ["NATIVE_PDF", "SCANNED_PDF", "MS_WORD", "IMAGE", "PLAIN_TEXT", "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON", "TEXTRACT_ANALYZE_DOCUMENT_JSON"]
    #       }
    #     ],
    #     errors: [
    #       {
    #         page: 1,
    #         error_code: "TEXTRACT_BAD_PAGE" # One of: ["TEXTRACT_BAD_PAGE", "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED", "PAGE_CHARACTERS_EXCEEDED", "PAGE_SIZE_EXCEEDED", "INTERNAL_SERVER_ERROR"],
    #         error_message: "String"
    #       }
    #     ],
    #     warnings: [
    #       {
    #         page: 1,
    #         warn_code: "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL" # One of: ["INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL", "INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL"],
    #         warn_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ClassifyDocumentResponse]
    def classify_document(params = {}, options = {})
      request = build_request(:classify_document, params)
      request.send_request(options)
    end

    # <p>Analyzes input text for the presence of personally identifiable information (PII) and
    #       returns the labels of identified PII entity types such as name, address, bank account number,
    #       or phone number.</p>
    # @param [Hash, Types::ContainsPiiEntitiesRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The maximum string size is 100 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "String", # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.contains_pii_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     labels: [
    #       {
    #         name: "BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"],
    #         score: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::ContainsPiiEntitiesResponse]
    def contains_pii_entities(params = {}, options = {})
      request = build_request(:contains_pii_entities, params)
      request.send_request(options)
    end

    # <p>Creates a dataset to upload training or test data for a model associated with a flywheel.
    #       For more information about datasets, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::CreateDatasetRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel of the flywheel to receive the data.</p>
    # @option params [String] :dataset_name
    #   <p>Name of the dataset.</p>
    # @option params [String] :dataset_type
    #   <p>The dataset type. You can specify that the data in a dataset is for training
    #         the model or for testing the model.</p>
    # @option params [String] :description
    #   <p>Description of the dataset.</p>
    # @option params [Types::DatasetInputDataConfig] :input_data_config
    #   <p>Information about the input data configuration. The type of input data varies based
    #         on the format of the input and whether the data is for a classifier model or an entity recognition model.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags for the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     dataset_name: "ComprehendArnName", # required
    #     dataset_type: "TRAIN" # One of: ["TRAIN", "TEST"],
    #     description: "Description",
    #     input_data_config: { # required
    #       augmented_manifests: [
    #         {
    #           attribute_names: ["AttributeNamesListItem"], # required
    #           s3_uri: "S3Uri", # required
    #           annotation_data_s3_uri: "S3Uri",
    #           source_documents_s3_uri: "S3Uri",
    #           document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #         }
    #       ],
    #       data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #       document_classifier_input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         label_delimiter: "LabelDelimiter"
    #       },
    #       entity_recognizer_input_data_config: {
    #         annotations: {
    #           s3_uri: "S3Uri", # required
    #         },
    #         documents: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #         },
    #         entity_list: {
    #           s3_uri: "S3Uri", # required
    #         }
    #       }
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_arn: "ComprehendDatasetArn"
    #   }
    # @return [Types::CreateDatasetResponse]
    def create_dataset(params = {}, options = {})
      request = build_request(:create_dataset, params)
      request.send_request(options)
    end

    # <p>Creates a new document classifier that you can use to categorize documents. To create a
    #       classifier, you provide a set of training documents that are labeled with the categories that you
    #       want to use. For more information, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html">Training classifier models</a> 
    #       in the Comprehend Developer Guide.
    #     </p>
    # @param [Hash, Types::CreateDocumentClassifierRequest] params
    # @option params [String] :document_classifier_name
    #   <p>The name of the document classifier.</p>
    # @option params [String] :version_name
    #   <p>The version name given to the newly created classifier. Version names can have a maximum
    #         of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same classifier name in the Amazon Web Services account/Amazon Web Services Region.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the document classifier. A tag is a key-value
    #         pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    # @option params [Types::DocumentClassifierInputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::DocumentClassifierOutputDataConfig] :output_data_config
    #   <p>Specifies the location for the output files from a custom classifier job.
    #         This parameter is required for a request that creates a native document model.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom classifier. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [String] :mode
    #   <p>Indicates the mode in which the classifier will be trained. The classifier can be trained
    #         in multi-class (single-label) mode or multi-label mode. 
    #         Multi-class mode identifies a single class label for each document and
    #         multi-label mode identifies one or more class labels for each document. Multiple
    #         labels for an individual document are separated by a delimiter. The default delimiter between
    #         labels is a pipe (|).</p>
    # @option params [String] :model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :model_policy
    #   <p>The resource-based policy to attach to your custom document classifier model. You can use
    #         this policy to allow another Amazon Web Services account to import your custom model.</p>
    #            <p>Provide your policy as a JSON body that you enter as a UTF-8 encoded string without line
    #         breaks. To provide valid JSON, enclose the attribute names and values in double quotes. If the
    #         JSON body is also enclosed in double quotes, then you must escape the double quotes that are
    #         inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_classifier_name: "ComprehendArnName", # required
    #     version_name: "VersionName",
    #     data_access_role_arn: "IamRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     input_data_config: { # required
    #       data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #       s3_uri: "S3Uri",
    #       test_s3_uri: "S3Uri",
    #       label_delimiter: "LabelDelimiter",
    #       augmented_manifests: [
    #         {
    #           s3_uri: "S3Uri", # required
    #           split: "TRAIN" # One of: ["TRAIN", "TEST"],
    #           attribute_names: ["AttributeNamesListItem"], # required
    #           annotation_data_s3_uri: "S3Uri",
    #           source_documents_s3_uri: "S3Uri",
    #           document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #         }
    #       ],
    #       document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"],
    #       documents: {
    #         s3_uri: "S3Uri", # required
    #         test_s3_uri: "S3Uri"
    #       },
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: {
    #       s3_uri: "S3Uri",
    #       kms_key_id: "KmsKeyId",
    #       flywheel_stats_s3_prefix: "S3Uri"
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     mode: "MULTI_CLASS" # One of: ["MULTI_CLASS", "MULTI_LABEL"],
    #     model_kms_key_id: "KmsKeyId",
    #     model_policy: "Policy"
    #   }
    #   options = {}
    #   response = client.create_document_classifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_classifier_arn: "DocumentClassifierArn"
    #   }
    # @return [Types::CreateDocumentClassifierResponse]
    def create_document_classifier(params = {}, options = {})
      request = build_request(:create_document_classifier, params)
      request.send_request(options)
    end

    # <p>Creates a model-specific endpoint for synchronous inference for a previously trained
    #       custom model 
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @param [Hash, Types::CreateEndpointRequest] params
    # @option params [String] :endpoint_name
    #   <p>This is the descriptive suffix that becomes part of the <code>EndpointArn</code> used for
    #         all subsequent requests to this resource. </p>
    # @option params [String] :model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint will be
    #         attached.</p>
    # @option params [Integer] :desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #         
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    # @option params [String] :client_request_token
    #   <p>An idempotency token provided by the customer. If this token matches a previous endpoint
    #         creation request, Amazon Comprehend will not return a <code>ResourceInUseException</code>.
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the endpoint. A tag is a key-value pair that adds
    #         metadata to the endpoint. For example, a tag with "Sales" as the key might be added to an
    #         endpoint to indicate its use by the sales department. </p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to trained custom models encrypted with a customer
    #         managed key (ModelKmsKeyId).</p>
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel to which the endpoint will be
    #         attached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_name: "ComprehendEndpointName", # required
    #     model_arn: "ComprehendModelArn",
    #     desired_inference_units: 1, # required
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     data_access_role_arn: "IamRoleArn",
    #     flywheel_arn: "ComprehendFlywheelArn"
    #   }
    #   options = {}
    #   response = client.create_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_arn: "ComprehendEndpointArn",
    #     model_arn: "ComprehendModelArn"
    #   }
    # @return [Types::CreateEndpointResponse]
    def create_endpoint(params = {}, options = {})
      request = build_request(:create_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates an entity recognizer using submitted files. After your
    #         <code>CreateEntityRecognizer</code> request is submitted, you can check job status using the
    #         <code>DescribeEntityRecognizer</code> API. </p>
    # @param [Hash, Types::CreateEntityRecognizerRequest] params
    # @option params [String] :recognizer_name
    #   <p>The name given to the newly created recognizer. Recognizer names can be a maximum of 256
    #         characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The name
    #         must be unique in the account/Region.</p>
    # @option params [String] :version_name
    #   <p>The version name given to the newly created recognizer. Version names can be a maximum of
    #         256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same recognizer name in the account/Region.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the entity recognizer. A tag is a key-value pair
    #         that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    # @option params [Types::EntityRecognizerInputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data. The S3 bucket containing the input
    #         data must be located in the same Region as the entity recognizer being created. </p>
    # @option params [String] :client_request_token
    #   <p> A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :language_code
    #   <p> You can specify any of the following languages: English
    #         ("en"), Spanish ("es"), French ("fr"), Italian ("it"), German ("de"), or Portuguese ("pt").
    #         If you plan to use this entity recognizer with PDF, Word, or image input files, you must
    #         specify English as the language.
    #         All training documents must be in the same language.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom entity recognizer. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [String] :model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :model_policy
    #   <p>The JSON resource-based policy to attach to your custom entity recognizer model. You can
    #         use this policy to allow another Amazon Web Services account to import your custom model.</p>
    #            <p>Provide your JSON as a UTF-8 encoded string without line breaks. To provide valid JSON for
    #         your policy, enclose the attribute names and values in double quotes. If the JSON body is also
    #         enclosed in double quotes, then you must escape the double quotes that are inside the
    #         policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     recognizer_name: "ComprehendArnName", # required
    #     version_name: "VersionName",
    #     data_access_role_arn: "IamRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     input_data_config: { # required
    #       data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #       entity_types: [ # required
    #         {
    #           type: "EntityTypeName", # required
    #         }
    #       ],
    #       documents: {
    #         s3_uri: "S3Uri", # required
    #         test_s3_uri: "S3Uri",
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #       },
    #       annotations: {
    #         s3_uri: "S3Uri", # required
    #         test_s3_uri: "S3Uri"
    #       },
    #       entity_list: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       augmented_manifests: [
    #         {
    #           s3_uri: "S3Uri", # required
    #           split: "TRAIN" # One of: ["TRAIN", "TEST"],
    #           attribute_names: ["AttributeNamesListItem"], # required
    #           annotation_data_s3_uri: "S3Uri",
    #           source_documents_s3_uri: "S3Uri",
    #           document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #         }
    #       ]
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     model_kms_key_id: "KmsKeyId",
    #     model_policy: "Policy"
    #   }
    #   options = {}
    #   response = client.create_entity_recognizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_recognizer_arn: "EntityRecognizerArn"
    #   }
    # @return [Types::CreateEntityRecognizerResponse]
    def create_entity_recognizer(params = {}, options = {})
      request = build_request(:create_entity_recognizer, params)
      request.send_request(options)
    end

    # <p>A flywheel is an Amazon Web Services resource that orchestrates the ongoing training of a model for custom classification
    #       or custom entity recognition. You can create a flywheel to start with an existing trained model, or
    #       Comprehend can create and train a new model.</p>
    #          <p>When you create the flywheel, Comprehend creates a data lake in your account. The data lake holds the training
    #       data and test data for all versions of the model.</p>
    #          <p>To use a flywheel with an existing trained model, you specify the active model version. Comprehend copies the model's
    #       training data and test data into the flywheel's data lake.</p>
    #          <p>To use the flywheel with a new model, you need to provide a dataset for training data (and optional test data)
    #       when you create the flywheel.</p>
    #          <p>For more information about flywheels, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::CreateFlywheelRequest] params
    # @option params [String] :flywheel_name
    #   <p>Name for the flywheel.</p>
    # @option params [String] :active_model_arn
    #   <p>To associate an existing model with the flywheel, specify the Amazon Resource Number (ARN) of the model version.
    #         Do not set <code>TaskConfig</code> or <code>ModelType</code> if you specify an <code>ActiveModelArn</code>.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend the permissions required to access the flywheel data in the data lake.</p>
    # @option params [Types::TaskConfig] :task_config
    #   <p>Configuration about the model associated with the flywheel.
    #         You need to set <code>TaskConfig</code> if you are creating a flywheel for a new model.</p>
    # @option params [String] :model_type
    #   <p>The model type. You need to set <code>ModelType</code> if you are creating a flywheel for a new model.</p>
    # @option params [String] :data_lake_s3_uri
    #   <p>Enter the S3 location for the data lake. You can specify a new S3 bucket or a new folder of an
    #       existing S3 bucket. The flywheel creates the data lake at this location.</p>
    # @option params [Types::DataSecurityConfig] :data_security_config
    #   <p>Data security configurations.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to associate with this flywheel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_name: "ComprehendArnName", # required
    #     active_model_arn: "ComprehendModelArn",
    #     data_access_role_arn: "IamRoleArn", # required
    #     task_config: {
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #       document_classification_config: {
    #         mode: "MULTI_CLASS" # One of: ["MULTI_CLASS", "MULTI_LABEL"], # required
    #         labels: ["LabelListItem"]
    #       },
    #       entity_recognition_config: {
    #         entity_types: [ # required
    #           {
    #             type: "EntityTypeName", # required
    #           }
    #         ]
    #       }
    #     },
    #     model_type: "DOCUMENT_CLASSIFIER" # One of: ["DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"],
    #     data_lake_s3_uri: "FlywheelS3Uri", # required
    #     data_security_config: {
    #       model_kms_key_id: "KmsKeyId",
    #       volume_kms_key_id: "KmsKeyId",
    #       data_lake_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_flywheel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_arn: "ComprehendFlywheelArn",
    #     active_model_arn: "ComprehendModelArn"
    #   }
    # @return [Types::CreateFlywheelResponse]
    def create_flywheel(params = {}, options = {})
      request = build_request(:create_flywheel, params)
      request.send_request(options)
    end

    # <p>Deletes a previously created document classifier</p>
    #          <p>Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted.
    #       If an active inference job is using the model, a <code>ResourceInUseException</code> will be
    #       returned.</p>
    #          <p>This is an asynchronous action that puts the classifier into a DELETING state, and it is
    #       then removed by a background job. Once removed, the classifier disappears from your account
    #       and is no longer available for use. </p>
    # @param [Hash, Types::DeleteDocumentClassifierRequest] params
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   }
    #   options = {}
    #   response = client.delete_document_classifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDocumentClassifierResponse]
    def delete_document_classifier(params = {}, options = {})
      request = build_request(:delete_document_classifier, params)
      request.send_request(options)
    end

    # <p>Deletes a model-specific endpoint for a previously-trained custom model. All endpoints
    #       must be deleted in order for the model to be deleted.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @param [Hash, Types::DeleteEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "ComprehendEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEndpointResponse]
    def delete_endpoint(params = {}, options = {})
      request = build_request(:delete_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes an entity recognizer.</p>
    #          <p>Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted.
    #       If an active inference job is using the model, a <code>ResourceInUseException</code> will be
    #       returned.</p>
    #          <p>This is an asynchronous action that puts the recognizer into a DELETING state, and it is
    #       then removed by a background job. Once removed, the recognizer disappears from your account
    #       and is no longer available for use. </p>
    # @param [Hash, Types::DeleteEntityRecognizerRequest] params
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   }
    #   options = {}
    #   response = client.delete_entity_recognizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEntityRecognizerResponse]
    def delete_entity_recognizer(params = {}, options = {})
      request = build_request(:delete_entity_recognizer, params)
      request.send_request(options)
    end

    # <p>Deletes a flywheel. When you delete the flywheel, Amazon Comprehend
    #       does not delete the data lake or the model associated with the flywheel.</p>
    #          <p>For more information about flywheels, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteFlywheelRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #   }
    #   options = {}
    #   response = client.delete_flywheel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFlywheelResponse]
    def delete_flywheel(params = {}, options = {})
      request = build_request(:delete_flywheel, params)
      request.send_request(options)
    end

    # <p>Deletes a resource-based policy that is attached to a custom model.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model version that has the policy to delete.</p>
    # @option params [String] :policy_revision_id
    #   <p>The revision ID of the policy to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ComprehendModelArn", # required
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Returns information about the dataset that you specify. 
    #       For more information about datasets, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeDatasetRequest] params
    # @option params [String] :dataset_arn
    #   <p>The ARN of the dataset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     dataset_arn: "ComprehendDatasetArn", # required
    #   }
    #   options = {}
    #   response = client.describe_dataset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_properties: {
    #       dataset_arn: "ComprehendDatasetArn",
    #       dataset_name: "ComprehendArnName",
    #       dataset_type: "TRAIN" # One of: ["TRAIN", "TEST"],
    #       dataset_s3_uri: "S3Uri",
    #       description: "Description",
    #       status: "CREATING" # One of: ["CREATING", "COMPLETED", "FAILED"],
    #       message: "AnyLengthString",
    #       number_of_documents: 1,
    #       creation_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeDatasetResponse]
    def describe_dataset(params = {}, options = {})
      request = build_request(:describe_dataset, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a document classification job. Use this operation to
    #       get the status of a classification job.</p>
    # @param [Hash, Types::DescribeDocumentClassificationJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  
    #         <code>StartDocumentClassificationJob</code> operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_document_classification_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_classification_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       document_classifier_arn: "DocumentClassifierArn",
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #       flywheel_arn: "ComprehendFlywheelArn"
    #     }
    #   }
    # @return [Types::DescribeDocumentClassificationJobResponse]
    def describe_document_classification_job(params = {}, options = {})
      request = build_request(:describe_document_classification_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a document classifier.</p>
    # @param [Hash, Types::DescribeDocumentClassifierRequest] params
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. The  
    #         <code>CreateDocumentClassifier</code> operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   }
    #   options = {}
    #   response = client.describe_document_classifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_classifier_properties: {
    #       document_classifier_arn: "DocumentClassifierArn",
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       training_start_time: Time.now,
    #       training_end_time: Time.now,
    #       input_data_config: {
    #         data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #         s3_uri: "S3Uri",
    #         test_s3_uri: "S3Uri",
    #         label_delimiter: "LabelDelimiter",
    #         augmented_manifests: [
    #           {
    #             s3_uri: "S3Uri", # required
    #             split: "TRAIN" # One of: ["TRAIN", "TEST"],
    #             attribute_names: ["AttributeNamesListItem"], # required
    #             annotation_data_s3_uri: "S3Uri",
    #             source_documents_s3_uri: "S3Uri",
    #             document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #           }
    #         ],
    #         document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"],
    #         documents: {
    #           s3_uri: "S3Uri", # required
    #           test_s3_uri: "S3Uri"
    #         },
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri",
    #         kms_key_id: "KmsKeyId",
    #         flywheel_stats_s3_prefix: "S3Uri"
    #       },
    #       classifier_metadata: {
    #         number_of_labels: 1,
    #         number_of_trained_documents: 1,
    #         number_of_test_documents: 1,
    #         evaluation_metrics: {
    #           accuracy: 1.0,
    #           precision: 1.0,
    #           recall: 1.0,
    #           f1_score: 1.0,
    #           micro_precision: 1.0,
    #           micro_recall: 1.0,
    #           micro_f1_score: 1.0,
    #           hamming_loss: 1.0
    #         }
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #       mode: "MULTI_CLASS" # One of: ["MULTI_CLASS", "MULTI_LABEL"],
    #       model_kms_key_id: "KmsKeyId",
    #       version_name: "VersionName",
    #       source_model_arn: "DocumentClassifierArn",
    #       flywheel_arn: "ComprehendFlywheelArn"
    #     }
    #   }
    # @return [Types::DescribeDocumentClassifierResponse]
    def describe_document_classifier(params = {}, options = {})
      request = build_request(:describe_document_classifier, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a dominant language detection job. Use this operation
    #       to get the status of a detection job.</p>
    # @param [Hash, Types::DescribeDominantLanguageDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  
    #         <code>StartDominantLanguageDetectionJob</code> operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_dominant_language_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dominant_language_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeDominantLanguageDetectionJobResponse]
    def describe_dominant_language_detection_job(params = {}, options = {})
      request = build_request(:describe_dominant_language_detection_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a specific endpoint. Use this operation to get the
    #       status of an endpoint.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @param [Hash, Types::DescribeEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "ComprehendEndpointArn", # required
    #   }
    #   options = {}
    #   response = client.describe_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_properties: {
    #       endpoint_arn: "ComprehendEndpointArn",
    #       status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"],
    #       message: "AnyLengthString",
    #       model_arn: "ComprehendModelArn",
    #       desired_model_arn: "ComprehendModelArn",
    #       desired_inference_units: 1,
    #       current_inference_units: 1,
    #       creation_time: Time.now,
    #       last_modified_time: Time.now,
    #       data_access_role_arn: "IamRoleArn",
    #       desired_data_access_role_arn: "IamRoleArn",
    #       flywheel_arn: "ComprehendFlywheelArn"
    #     }
    #   }
    # @return [Types::DescribeEndpointResponse]
    def describe_endpoint(params = {}, options = {})
      request = build_request(:describe_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with an entities detection job. Use this operation to get
    #       the status of a detection job.</p>
    # @param [Hash, Types::DescribeEntitiesDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The 
    #           <code>StartEntitiesDetectionJob</code> operation returns this identifier in its response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_entities_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       entity_recognizer_arn: "EntityRecognizerArn",
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #       flywheel_arn: "ComprehendFlywheelArn"
    #     }
    #   }
    # @return [Types::DescribeEntitiesDetectionJobResponse]
    def describe_entities_detection_job(params = {}, options = {})
      request = build_request(:describe_entities_detection_job, params)
      request.send_request(options)
    end

    # <p>Provides details about an entity recognizer including status, S3 buckets containing
    #       training data, recognizer metadata, metrics, and so on.</p>
    # @param [Hash, Types::DescribeEntityRecognizerRequest] params
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   }
    #   options = {}
    #   response = client.describe_entity_recognizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_recognizer_properties: {
    #       entity_recognizer_arn: "EntityRecognizerArn",
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       training_start_time: Time.now,
    #       training_end_time: Time.now,
    #       input_data_config: {
    #         data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #         entity_types: [ # required
    #           {
    #             type: "EntityTypeName", # required
    #           }
    #         ],
    #         documents: {
    #           s3_uri: "S3Uri", # required
    #           test_s3_uri: "S3Uri",
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #         },
    #         annotations: {
    #           s3_uri: "S3Uri", # required
    #           test_s3_uri: "S3Uri"
    #         },
    #         entity_list: {
    #           s3_uri: "S3Uri", # required
    #         },
    #         augmented_manifests: [
    #           {
    #             s3_uri: "S3Uri", # required
    #             split: "TRAIN" # One of: ["TRAIN", "TEST"],
    #             attribute_names: ["AttributeNamesListItem"], # required
    #             annotation_data_s3_uri: "S3Uri",
    #             source_documents_s3_uri: "S3Uri",
    #             document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #           }
    #         ]
    #       },
    #       recognizer_metadata: {
    #         number_of_trained_documents: 1,
    #         number_of_test_documents: 1,
    #         evaluation_metrics: {
    #           precision: 1.0,
    #           recall: 1.0,
    #           f1_score: 1.0
    #         },
    #         entity_types: [
    #           {
    #             type: "AnyLengthString",
    #             evaluation_metrics: {
    #               precision: 1.0,
    #               recall: 1.0,
    #               f1_score: 1.0
    #             },
    #             number_of_train_mentions: 1
    #           }
    #         ]
    #       },
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       },
    #       model_kms_key_id: "KmsKeyId",
    #       version_name: "VersionName",
    #       source_model_arn: "EntityRecognizerArn",
    #       flywheel_arn: "ComprehendFlywheelArn",
    #       output_data_config: {
    #         flywheel_stats_s3_prefix: "S3Uri"
    #       }
    #     }
    #   }
    # @return [Types::DescribeEntityRecognizerResponse]
    def describe_entity_recognizer(params = {}, options = {})
      request = build_request(:describe_entity_recognizer, params)
      request.send_request(options)
    end

    # <p>Gets the status and details of an events detection job.</p>
    # @param [Hash, Types::DescribeEventsDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the events detection job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_events_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       data_access_role_arn: "IamRoleArn",
    #       target_event_types: ["EventTypeString"]
    #     }
    #   }
    # @return [Types::DescribeEventsDetectionJobResponse]
    def describe_events_detection_job(params = {}, options = {})
      request = build_request(:describe_events_detection_job, params)
      request.send_request(options)
    end

    # <p>Provides configuration information about the flywheel. For more information about flywheels, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeFlywheelRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #   }
    #   options = {}
    #   response = client.describe_flywheel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_properties: {
    #       flywheel_arn: "ComprehendFlywheelArn",
    #       active_model_arn: "ComprehendModelArn",
    #       data_access_role_arn: "IamRoleArn",
    #       task_config: {
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #         document_classification_config: {
    #           mode: "MULTI_CLASS" # One of: ["MULTI_CLASS", "MULTI_LABEL"], # required
    #           labels: ["LabelListItem"]
    #         },
    #         entity_recognition_config: {
    #           entity_types: [ # required
    #             {
    #               type: "EntityTypeName", # required
    #             }
    #           ]
    #         }
    #       },
    #       data_lake_s3_uri: "S3Uri",
    #       data_security_config: {
    #         model_kms_key_id: "KmsKeyId",
    #         volume_kms_key_id: "KmsKeyId",
    #         data_lake_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #       model_type: "DOCUMENT_CLASSIFIER" # One of: ["DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"],
    #       message: "AnyLengthString",
    #       creation_time: Time.now,
    #       last_modified_time: Time.now,
    #       latest_flywheel_iteration: "FlywheelIterationId"
    #     }
    #   }
    # @return [Types::DescribeFlywheelResponse]
    def describe_flywheel(params = {}, options = {})
      request = build_request(:describe_flywheel, params)
      request.send_request(options)
    end

    # <p>Retrieve the configuration properties of a flywheel iteration.
    #       For more information about flywheels, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeFlywheelIterationRequest] params
    # @option params [String] :flywheel_arn
    #   <p></p>
    # @option params [String] :flywheel_iteration_id
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     flywheel_iteration_id: "FlywheelIterationId", # required
    #   }
    #   options = {}
    #   response = client.describe_flywheel_iteration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_iteration_properties: {
    #       flywheel_arn: "ComprehendFlywheelArn",
    #       flywheel_iteration_id: "FlywheelIterationId",
    #       creation_time: Time.now,
    #       end_time: Time.now,
    #       status: "TRAINING" # One of: ["TRAINING", "EVALUATING", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       evaluated_model_arn: "ComprehendModelArn",
    #       evaluated_model_metrics: {
    #         average_f1_score: 1.0,
    #         average_precision: 1.0,
    #         average_recall: 1.0,
    #         average_accuracy: 1.0
    #       },
    #       trained_model_arn: "ComprehendModelArn",
    #       trained_model_metrics: {
    #         average_f1_score: 1.0,
    #         average_precision: 1.0,
    #         average_recall: 1.0,
    #         average_accuracy: 1.0
    #       },
    #       evaluation_manifest_s3_prefix: "S3Uri"
    #     }
    #   }
    # @return [Types::DescribeFlywheelIterationResponse]
    def describe_flywheel_iteration(params = {}, options = {})
      request = build_request(:describe_flywheel_iteration, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a key phrases detection job. Use this operation to get
    #       the status of a detection job.</p>
    # @param [Hash, Types::DescribeKeyPhrasesDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The 
    #           <code>StartKeyPhrasesDetectionJob</code> operation returns this identifier in its
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_key_phrases_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_phrases_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeKeyPhrasesDetectionJobResponse]
    def describe_key_phrases_detection_job(params = {}, options = {})
      request = build_request(:describe_key_phrases_detection_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a PII entities detection job. For example, you can use
    #       this operation to get the job status.</p>
    # @param [Hash, Types::DescribePiiEntitiesDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_pii_entities_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pii_entities_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       redaction_config: {
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]],
    #         mask_mode: "MASK" # One of: ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"],
    #         mask_character: "MaskCharacter"
    #       },
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       data_access_role_arn: "IamRoleArn",
    #       mode: "ONLY_REDACTION" # One of: ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #     }
    #   }
    # @return [Types::DescribePiiEntitiesDetectionJobResponse]
    def describe_pii_entities_detection_job(params = {}, options = {})
      request = build_request(:describe_pii_entities_detection_job, params)
      request.send_request(options)
    end

    # <p>Gets the details of a resource-based policy that is attached to a custom model, including
    #       the JSON body of the policy.</p>
    # @param [Hash, Types::DescribeResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model version that has the resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ComprehendModelArn", # required
    #   }
    #   options = {}
    #   response = client.describe_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_policy: "Policy",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::DescribeResourcePolicyResponse]
    def describe_resource_policy(params = {}, options = {})
      request = build_request(:describe_resource_policy, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a sentiment detection job. Use this operation to get
    #       the status of a detection job.</p>
    # @param [Hash, Types::DescribeSentimentDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_sentiment_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sentiment_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeSentimentDetectionJobResponse]
    def describe_sentiment_detection_job(params = {}, options = {})
      request = build_request(:describe_sentiment_detection_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a targeted sentiment detection job. Use this operation
    #       to get the status of the job.</p>
    # @param [Hash, Types::DescribeTargetedSentimentDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  
    #         <code>StartTargetedSentimentDetectionJob</code> operation returns this identifier in its
    #         response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_targeted_sentiment_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targeted_sentiment_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeTargetedSentimentDetectionJobResponse]
    def describe_targeted_sentiment_detection_job(params = {}, options = {})
      request = build_request(:describe_targeted_sentiment_detection_job, params)
      request.send_request(options)
    end

    # <p>Gets the properties associated with a topic detection job. Use this operation to get
    #       the status of a detection job.</p>
    # @param [Hash, Types::DescribeTopicsDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier assigned by the user to the detection job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_topics_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topics_detection_job_properties: {
    #       job_id: "JobId",
    #       job_arn: "ComprehendArn",
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       message: "AnyLengthString",
    #       submit_time: Time.now,
    #       end_time: Time.now,
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #         document_reader_config: {
    #           document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #           document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #           feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #         }
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       number_of_topics: 1,
    #       data_access_role_arn: "IamRoleArn",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeTopicsDetectionJobResponse]
    def describe_topics_detection_job(params = {}, options = {})
      request = build_request(:describe_topics_detection_job, params)
      request.send_request(options)
    end

    # <p>Determines the dominant language of the input text. For a list of languages that Amazon
    #       Comprehend can detect, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html">Amazon Comprehend Supported Languages</a>. </p>
    # @param [Hash, Types::DetectDominantLanguageRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The string must contain at least 20 characters. The maximum string size is 100 KB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString", # required
    #   }
    #   options = {}
    #   response = client.detect_dominant_language(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     languages: [
    #       {
    #         language_code: "String",
    #         score: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::DetectDominantLanguageResponse]
    def detect_dominant_language(params = {}, options = {})
      request = build_request(:detect_dominant_language, params)
      request.send_request(options)
    end

    # <p>Detects named entities in input text when you use the pre-trained model.
    #       Detects custom entities if you have a custom entity recognition model. </p>
    #          <p>
    #       When detecting named entities using the pre-trained model, use plain text as the input.
    #       For more information about named entities, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html">Entities</a> in the Comprehend Developer Guide.</p>
    #          <p>When you use a custom entity recognition model,
    #       you can input plain text or you can upload a single-page input document (text, PDF, Word, or image). </p>
    #          <p>If the system detects errors while processing a page in the input document, the API response
    #        includes an entry in <code>Errors</code> for each error. </p>
    #          <p>If the system detects a document-level error in your input document, the API returns an
    #        <code>InvalidRequestException</code> error response.
    #       For details about this exception, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html">
    #         Errors in semi-structured documents</a> in the Comprehend Developer Guide.
    #     </p>
    # @param [Hash, Types::DetectEntitiesRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The maximum string size is 100 KB. If you enter text using this parameter,
    #       do not use the <code>Bytes</code> parameter.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. If your request includes the endpoint for a custom entity recognition model, Amazon
    #         Comprehend uses the language of your custom model, and it ignores any language code that you
    #         specify here.</p>
    #            <p>All input documents must be in the same language.</p>
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Name of an endpoint that is associated with a custom entity
    #         recognition model. Provide an endpoint if you want to detect entities by using your own custom
    #         model instead of the default model that is used by Amazon Comprehend.</p>
    #            <p>If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and
    #         it ignores any language code that you provide in your request.</p>
    #            <p>For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @option params [String] :bytes
    #   <p>This field applies only when you use a custom entity recognition model that
    #         was trained with PDF annotations. For other cases,
    #         enter your text input in the <code>Text</code> field.</p>
    #            <p>
    #         Use the <code>Bytes</code> parameter to input a text, PDF, Word or image file.
    #         Using a plain-text file in the <code>Bytes</code> parameter is equivelent to using the
    #         <code>Text</code> parameter (the <code>Entities</code> field in the response is identical).</p>
    #            <p>You can also use the <code>Bytes</code> parameter to input an Amazon Textract <code>DetectDocumentText</code>
    #         or <code>AnalyzeDocument</code> output file.</p>
    #            <p>Provide the input document as a sequence of base64-encoded bytes.
    #         If your code uses an Amazon Web Services SDK to detect entities, the SDK may encode
    #         the document file bytes for you. </p>
    #            <p>The maximum length of this field depends on the input document type. For details, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html">
    #           Inputs for real-time custom analysis</a> in the Comprehend Developer Guide. </p>
    #            <p>If you use the <code>Bytes</code> parameter, do not use the <code>Text</code> parameter.</p>
    # @option params [Types::DocumentReaderConfig] :document_reader_config
    #   <p>Provides configuration parameters to override the default actions for extracting text
    #         from PDF documents and image files.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #     endpoint_arn: "EntityRecognizerEndpointArn",
    #     bytes: "data",
    #     document_reader_config: {
    #       document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #       document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #       feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #     }
    #   }
    #   options = {}
    #   response = client.detect_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         score: 1.0,
    #         type: "PERSON" # One of: ["PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"],
    #         text: "String",
    #         begin_offset: 1,
    #         end_offset: 1,
    #         block_references: [
    #           {
    #             block_id: "String",
    #             begin_offset: 1,
    #             end_offset: 1,
    #             child_blocks: [
    #               {
    #                 child_block_id: "String",
    #                 begin_offset: 1,
    #                 end_offset: 1
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     document_metadata: {
    #       pages: 1,
    #       extracted_characters: [
    #         {
    #           page: 1,
    #           count: 1
    #         }
    #       ]
    #     },
    #     document_type: [
    #       {
    #         page: 1,
    #         type: "NATIVE_PDF" # One of: ["NATIVE_PDF", "SCANNED_PDF", "MS_WORD", "IMAGE", "PLAIN_TEXT", "TEXTRACT_DETECT_DOCUMENT_TEXT_JSON", "TEXTRACT_ANALYZE_DOCUMENT_JSON"]
    #       }
    #     ],
    #     blocks: [
    #       {
    #         id: "String",
    #         block_type: "LINE" # One of: ["LINE", "WORD"],
    #         text: "String",
    #         page: 1,
    #         geometry: {
    #           bounding_box: {
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0,
    #             width: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ]
    #         },
    #         relationships: [
    #           {
    #             ids: ["String"],
    #             type: "CHILD" # One of: ["CHILD"]
    #           }
    #         ]
    #       }
    #     ],
    #     errors: [
    #       {
    #         page: 1,
    #         error_code: "TEXTRACT_BAD_PAGE" # One of: ["TEXTRACT_BAD_PAGE", "TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED", "PAGE_CHARACTERS_EXCEEDED", "PAGE_SIZE_EXCEEDED", "INTERNAL_SERVER_ERROR"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DetectEntitiesResponse]
    def detect_entities(params = {}, options = {})
      request = build_request(:detect_entities, params)
      request.send_request(options)
    end

    # <p>Detects the key noun phrases found in the text. </p>
    # @param [Hash, Types::DetectKeyPhrasesRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The string must contain less than 100 KB of UTF-8 encoded
    #         characters.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString", # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.detect_key_phrases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_phrases: [
    #       {
    #         score: 1.0,
    #         text: "String",
    #         begin_offset: 1,
    #         end_offset: 1
    #       }
    #     ]
    #   }
    # @return [Types::DetectKeyPhrasesResponse]
    def detect_key_phrases(params = {}, options = {})
      request = build_request(:detect_key_phrases, params)
      request.send_request(options)
    end

    # <p>Inspects the input text for entities that contain personally identifiable information
    #       (PII) and returns information about them.</p>
    # @param [Hash, Types::DetectPiiEntitiesRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The maximum string size is 100 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input text.   
    #         Enter the language code for English (en) or Spanish (es).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "String", # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.detect_pii_entities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         score: 1.0,
    #         type: "BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"],
    #         begin_offset: 1,
    #         end_offset: 1
    #       }
    #     ]
    #   }
    # @return [Types::DetectPiiEntitiesResponse]
    def detect_pii_entities(params = {}, options = {})
      request = build_request(:detect_pii_entities, params)
      request.send_request(options)
    end

    # <p>Inspects text and returns an inference of the prevailing sentiment
    #         (<code>POSITIVE</code>, <code>NEUTRAL</code>, <code>MIXED</code>, or <code>NEGATIVE</code>). </p>
    # @param [Hash, Types::DetectSentimentRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The maximum string size is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString", # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.detect_sentiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sentiment: "POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"],
    #     sentiment_score: {
    #       positive: 1.0,
    #       negative: 1.0,
    #       neutral: 1.0,
    #       mixed: 1.0
    #     }
    #   }
    # @return [Types::DetectSentimentResponse]
    def detect_sentiment(params = {}, options = {})
      request = build_request(:detect_sentiment, params)
      request.send_request(options)
    end

    # <p>Inspects text for syntax and the part of speech of words in the document. For more
    #       information, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html">Syntax</a> in the Comprehend Developer Guide.
    #     </p>
    # @param [Hash, Types::DetectSyntaxRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 string. The maximum string size is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language code of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt").</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString", # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt"], # required
    #   }
    #   options = {}
    #   response = client.detect_syntax(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     syntax_tokens: [
    #       {
    #         token_id: 1,
    #         text: "String",
    #         begin_offset: 1,
    #         end_offset: 1,
    #         part_of_speech: {
    #           tag: "ADJ" # One of: ["ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"],
    #           score: 1.0
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DetectSyntaxResponse]
    def detect_syntax(params = {}, options = {})
      request = build_request(:detect_syntax, params)
      request.send_request(options)
    end

    # <p>Inspects the input text and returns a sentiment analysis for each entity identified in the text.</p>
    #          <p>For more information about targeted sentiment, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html">Targeted sentiment</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::DetectTargetedSentimentRequest] params
    # @option params [String] :text
    #   <p>A UTF-8 text string. The maximum string length is 5 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only supported language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text: "CustomerInputString", # required
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.detect_targeted_sentiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities: [
    #       {
    #         descriptive_mention_index: [1],
    #         mentions: [
    #           {
    #             score: 1.0,
    #             group_score: 1.0,
    #             text: "String",
    #             type: "PERSON" # One of: ["PERSON", "LOCATION", "ORGANIZATION", "FACILITY", "BRAND", "COMMERCIAL_ITEM", "MOVIE", "MUSIC", "BOOK", "SOFTWARE", "GAME", "PERSONAL_TITLE", "EVENT", "DATE", "QUANTITY", "ATTRIBUTE", "OTHER"],
    #             mention_sentiment: {
    #               sentiment: "POSITIVE" # One of: ["POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"],
    #               sentiment_score: {
    #                 positive: 1.0,
    #                 negative: 1.0,
    #                 neutral: 1.0,
    #                 mixed: 1.0
    #               }
    #             },
    #             begin_offset: 1,
    #             end_offset: 1
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DetectTargetedSentimentResponse]
    def detect_targeted_sentiment(params = {}, options = {})
      request = build_request(:detect_targeted_sentiment, params)
      request.send_request(options)
    end

    # <p>Performs toxicity analysis on the list of text strings that you provide as input.
    #       The API response contains a results list that matches the size of the input list.
    #       For more information about toxicity detection, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html">Toxicity detection</a> in the <i>Amazon Comprehend Developer Guide</i>.
    #     </p>
    # @param [Hash, Types::DetectToxicContentRequest] params
    # @option params [Array<Types::TextSegment>] :text_segments
    #   <p>A list of up to 10 text strings. Each string has a maximum size of 1 KB, and
    #         the maximum size of the list is 10 KB.</p>
    # @option params [String] :language_code
    #   <p>The language of the input text. Currently, English is the only supported language.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     text_segments: [ # required
    #       {
    #         text: "CustomerInputString", # required
    #       }
    #     ],
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #   }
    #   options = {}
    #   response = client.detect_toxic_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result_list: [
    #       {
    #         labels: [
    #           {
    #             name: "GRAPHIC" # One of: ["GRAPHIC", "HARASSMENT_OR_ABUSE", "HATE_SPEECH", "INSULT", "PROFANITY", "SEXUAL", "VIOLENCE_OR_THREAT"],
    #             score: 1.0
    #           }
    #         ],
    #         toxicity: 1.0
    #       }
    #     ]
    #   }
    # @return [Types::DetectToxicContentResponse]
    def detect_toxic_content(params = {}, options = {})
      request = build_request(:detect_toxic_content, params)
      request.send_request(options)
    end

    # <p>Creates a new custom model that replicates a source custom model that you import. The
    #       source model can be in your Amazon Web Services account or another one.</p>
    #          <p>If the source model is in another Amazon Web Services account, then it must have a resource-based policy
    #       that authorizes you to import it.</p>
    #          <p>The source model must be in the same Amazon Web Services Region that you're using when you import. You
    #       can't import a model that's in a different Region.</p>
    # @param [Hash, Types::ImportModelRequest] params
    # @option params [String] :source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to import.</p>
    # @option params [String] :model_name
    #   <p>The name to assign to the custom model that is created in Amazon Comprehend by this
    #         import.</p>
    # @option params [String] :version_name
    #   <p>The version name given to the custom model that is created by this import. Version names
    #         can have a maximum of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_)
    #         are allowed. The version name must be unique among all models with the same classifier name in
    #         the account/Region.</p>
    # @option params [String] :model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend permission to use Amazon Key Management Service (KMS) to encrypt or decrypt the custom
    #         model.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the custom model that is created by this import. A tag is a
    #         key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a
    #         tag with "Sales" as the key might be added to a resource to indicate its use by the sales
    #         department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_model_arn: "ComprehendModelArn", # required
    #     model_name: "ComprehendArnName",
    #     version_name: "VersionName",
    #     model_kms_key_id: "KmsKeyId",
    #     data_access_role_arn: "IamRoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.import_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_arn: "ComprehendModelArn"
    #   }
    # @return [Types::ImportModelResponse]
    def import_model(params = {}, options = {})
      request = build_request(:import_model, params)
      request.send_request(options)
    end

    # <p>List the datasets that you have configured in this Region. For more information about datasets, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::ListDatasetsRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel.</p>
    # @option params [Types::DatasetFilter] :filter
    #   <p>Filters the datasets to be returned in the response.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a response. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn",
    #     filter: {
    #       status: "CREATING" # One of: ["CREATING", "COMPLETED", "FAILED"],
    #       dataset_type: "TRAIN" # One of: ["TRAIN", "TEST"],
    #       creation_time_after: Time.now,
    #       creation_time_before: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_datasets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dataset_properties_list: [
    #       {
    #         dataset_arn: "ComprehendDatasetArn",
    #         dataset_name: "ComprehendArnName",
    #         dataset_type: "TRAIN" # One of: ["TRAIN", "TEST"],
    #         dataset_s3_uri: "S3Uri",
    #         description: "Description",
    #         status: "CREATING" # One of: ["CREATING", "COMPLETED", "FAILED"],
    #         message: "AnyLengthString",
    #         number_of_documents: 1,
    #         creation_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDatasetsResponse]
    def list_datasets(params = {}, options = {})
      request = build_request(:list_datasets, params)
      request.send_request(options)
    end

    # <p>Gets a list of the documentation classification jobs that you have submitted.</p>
    # @param [Hash, Types::ListDocumentClassificationJobsRequest] params
    # @option params [Types::DocumentClassificationJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their names, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_document_classification_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_classification_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         document_classifier_arn: "DocumentClassifierArn",
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         flywheel_arn: "ComprehendFlywheelArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDocumentClassificationJobsResponse]
    def list_document_classification_jobs(params = {}, options = {})
      request = build_request(:list_document_classification_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of summaries of the document classifiers that you have created</p>
    # @param [Hash, Types::ListDocumentClassifierSummariesRequest] params
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_document_classifier_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_classifier_summaries_list: [
    #       {
    #         document_classifier_name: "ComprehendArnName",
    #         number_of_versions: 1,
    #         latest_version_created_at: Time.now,
    #         latest_version_name: "VersionName",
    #         latest_version_status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDocumentClassifierSummariesResponse]
    def list_document_classifier_summaries(params = {}, options = {})
      request = build_request(:list_document_classifier_summaries, params)
      request.send_request(options)
    end

    # <p>Gets a list of the document classifiers that you have created.</p>
    # @param [Hash, Types::ListDocumentClassifiersRequest] params
    # @option params [Types::DocumentClassifierFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"],
    #       document_classifier_name: "ComprehendArnName",
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_document_classifiers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_classifier_properties_list: [
    #       {
    #         document_classifier_arn: "DocumentClassifierArn",
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         training_start_time: Time.now,
    #         training_end_time: Time.now,
    #         input_data_config: {
    #           data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #           s3_uri: "S3Uri",
    #           test_s3_uri: "S3Uri",
    #           label_delimiter: "LabelDelimiter",
    #           augmented_manifests: [
    #             {
    #               s3_uri: "S3Uri", # required
    #               split: "TRAIN" # One of: ["TRAIN", "TEST"],
    #               attribute_names: ["AttributeNamesListItem"], # required
    #               annotation_data_s3_uri: "S3Uri",
    #               source_documents_s3_uri: "S3Uri",
    #               document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #             }
    #           ],
    #           document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"],
    #           documents: {
    #             s3_uri: "S3Uri", # required
    #             test_s3_uri: "S3Uri"
    #           },
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri",
    #           kms_key_id: "KmsKeyId",
    #           flywheel_stats_s3_prefix: "S3Uri"
    #         },
    #         classifier_metadata: {
    #           number_of_labels: 1,
    #           number_of_trained_documents: 1,
    #           number_of_test_documents: 1,
    #           evaluation_metrics: {
    #             accuracy: 1.0,
    #             precision: 1.0,
    #             recall: 1.0,
    #             f1_score: 1.0,
    #             micro_precision: 1.0,
    #             micro_recall: 1.0,
    #             micro_f1_score: 1.0,
    #             hamming_loss: 1.0
    #           }
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         mode: "MULTI_CLASS" # One of: ["MULTI_CLASS", "MULTI_LABEL"],
    #         model_kms_key_id: "KmsKeyId",
    #         version_name: "VersionName",
    #         source_model_arn: "DocumentClassifierArn",
    #         flywheel_arn: "ComprehendFlywheelArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDocumentClassifiersResponse]
    def list_document_classifiers(params = {}, options = {})
      request = build_request(:list_document_classifiers, params)
      request.send_request(options)
    end

    # <p>Gets a list of the dominant language detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListDominantLanguageDetectionJobsRequest] params
    # @option params [Types::DominantLanguageDetectionJobFilter] :filter
    #   <p>Filters that jobs that are returned. You can filter jobs on their name, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_dominant_language_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     dominant_language_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDominantLanguageDetectionJobsResponse]
    def list_dominant_language_detection_jobs(params = {}, options = {})
      request = build_request(:list_dominant_language_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of all existing endpoints that you've created.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @param [Hash, Types::ListEndpointsRequest] params
    # @option params [Types::EndpointFilter] :filter
    #   <p>Filters the endpoints that are returned. You can filter endpoints on their name, model,
    #         status, or the date and time that they were created. You can only set one filter at a time.
    #       </p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       model_arn: "ComprehendModelArn",
    #       status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"],
    #       creation_time_before: Time.now,
    #       creation_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_properties_list: [
    #       {
    #         endpoint_arn: "ComprehendEndpointArn",
    #         status: "CREATING" # One of: ["CREATING", "DELETING", "FAILED", "IN_SERVICE", "UPDATING"],
    #         message: "AnyLengthString",
    #         model_arn: "ComprehendModelArn",
    #         desired_model_arn: "ComprehendModelArn",
    #         desired_inference_units: 1,
    #         current_inference_units: 1,
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         data_access_role_arn: "IamRoleArn",
    #         desired_data_access_role_arn: "IamRoleArn",
    #         flywheel_arn: "ComprehendFlywheelArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEndpointsResponse]
    def list_endpoints(params = {}, options = {})
      request = build_request(:list_endpoints, params)
      request.send_request(options)
    end

    # <p>Gets a list of the entity detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListEntitiesDetectionJobsRequest] params
    # @option params [Types::EntitiesDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entities_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entities_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         entity_recognizer_arn: "EntityRecognizerArn",
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         flywheel_arn: "ComprehendFlywheelArn"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntitiesDetectionJobsResponse]
    def list_entities_detection_jobs(params = {}, options = {})
      request = build_request(:list_entities_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of summaries for the entity recognizers that you have created.</p>
    # @param [Hash, Types::ListEntityRecognizerSummariesRequest] params
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entity_recognizer_summaries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_recognizer_summaries_list: [
    #       {
    #         recognizer_name: "ComprehendArnName",
    #         number_of_versions: 1,
    #         latest_version_created_at: Time.now,
    #         latest_version_name: "VersionName",
    #         latest_version_status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntityRecognizerSummariesResponse]
    def list_entity_recognizer_summaries(params = {}, options = {})
      request = build_request(:list_entity_recognizer_summaries, params)
      request.send_request(options)
    end

    # <p>Gets a list of the properties of all entity recognizers that you created, including
    #       recognizers currently in training. Allows you to filter the list of recognizers based on
    #       criteria such as status and submission time. This call returns up to 500 entity recognizers in
    #       the list, with a default number of 100 recognizers in the list.</p>
    #          <p>The results of this list are not in any particular order. Please get the list and sort
    #       locally if needed.</p>
    # @param [Hash, Types::ListEntityRecognizersRequest] params
    # @option params [Types::EntityRecognizerFilter] :filter
    #   <p>Filters the list of entities returned. You can filter on <code>Status</code>,
    #           <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter
    #         at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of results to return on each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"],
    #       recognizer_name: "ComprehendArnName",
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_entity_recognizers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_recognizer_properties_list: [
    #       {
    #         entity_recognizer_arn: "EntityRecognizerArn",
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED", "TRAINED_WITH_WARNING"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         training_start_time: Time.now,
    #         training_end_time: Time.now,
    #         input_data_config: {
    #           data_format: "COMPREHEND_CSV" # One of: ["COMPREHEND_CSV", "AUGMENTED_MANIFEST"],
    #           entity_types: [ # required
    #             {
    #               type: "EntityTypeName", # required
    #             }
    #           ],
    #           documents: {
    #             s3_uri: "S3Uri", # required
    #             test_s3_uri: "S3Uri",
    #             input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"]
    #           },
    #           annotations: {
    #             s3_uri: "S3Uri", # required
    #             test_s3_uri: "S3Uri"
    #           },
    #           entity_list: {
    #             s3_uri: "S3Uri", # required
    #           },
    #           augmented_manifests: [
    #             {
    #               s3_uri: "S3Uri", # required
    #               split: "TRAIN" # One of: ["TRAIN", "TEST"],
    #               attribute_names: ["AttributeNamesListItem"], # required
    #               annotation_data_s3_uri: "S3Uri",
    #               source_documents_s3_uri: "S3Uri",
    #               document_type: "PLAIN_TEXT_DOCUMENT" # One of: ["PLAIN_TEXT_DOCUMENT", "SEMI_STRUCTURED_DOCUMENT"]
    #             }
    #           ]
    #         },
    #         recognizer_metadata: {
    #           number_of_trained_documents: 1,
    #           number_of_test_documents: 1,
    #           evaluation_metrics: {
    #             precision: 1.0,
    #             recall: 1.0,
    #             f1_score: 1.0
    #           },
    #           entity_types: [
    #             {
    #               type: "AnyLengthString",
    #               evaluation_metrics: {
    #                 precision: 1.0,
    #                 recall: 1.0,
    #                 f1_score: 1.0
    #               },
    #               number_of_train_mentions: 1
    #             }
    #           ]
    #         },
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         model_kms_key_id: "KmsKeyId",
    #         version_name: "VersionName",
    #         source_model_arn: "EntityRecognizerArn",
    #         flywheel_arn: "ComprehendFlywheelArn",
    #         output_data_config: {
    #           flywheel_stats_s3_prefix: "S3Uri"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEntityRecognizersResponse]
    def list_entity_recognizers(params = {}, options = {})
      request = build_request(:list_entity_recognizers, params)
      request.send_request(options)
    end

    # <p>Gets a list of the events detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListEventsDetectionJobsRequest] params
    # @option params [Types::EventsDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_events_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     events_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         data_access_role_arn: "IamRoleArn",
    #         target_event_types: ["EventTypeString"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEventsDetectionJobsResponse]
    def list_events_detection_jobs(params = {}, options = {})
      request = build_request(:list_events_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Information about the history of a flywheel iteration.
    #       For more information about flywheels, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::ListFlywheelIterationHistoryRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The ARN of the flywheel.</p>
    # @option params [Types::FlywheelIterationFilter] :filter
    #   <p>Filter the flywheel iteration history based on creation time.</p>
    # @option params [String] :next_token
    #   <p>Next token</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of iteration history results to return</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     filter: {
    #       creation_time_after: Time.now,
    #       creation_time_before: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_flywheel_iteration_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_iteration_properties_list: [
    #       {
    #         flywheel_arn: "ComprehendFlywheelArn",
    #         flywheel_iteration_id: "FlywheelIterationId",
    #         creation_time: Time.now,
    #         end_time: Time.now,
    #         status: "TRAINING" # One of: ["TRAINING", "EVALUATING", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         evaluated_model_arn: "ComprehendModelArn",
    #         evaluated_model_metrics: {
    #           average_f1_score: 1.0,
    #           average_precision: 1.0,
    #           average_recall: 1.0,
    #           average_accuracy: 1.0
    #         },
    #         trained_model_arn: "ComprehendModelArn",
    #         trained_model_metrics: {
    #           average_f1_score: 1.0,
    #           average_precision: 1.0,
    #           average_recall: 1.0,
    #           average_accuracy: 1.0
    #         },
    #         evaluation_manifest_s3_prefix: "S3Uri"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFlywheelIterationHistoryResponse]
    def list_flywheel_iteration_history(params = {}, options = {})
      request = build_request(:list_flywheel_iteration_history, params)
      request.send_request(options)
    end

    # <p>Gets a list of the flywheels that you have created.</p>
    # @param [Hash, Types::ListFlywheelsRequest] params
    # @option params [Types::FlywheelFilter] :filter
    #   <p>Filters the flywheels that are returned. You can filter flywheels on their status,
    #         or the date and time that they were submitted. You can only set one filter at a time.
    #       </p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a response. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #       creation_time_after: Time.now,
    #       creation_time_before: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_flywheels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_summary_list: [
    #       {
    #         flywheel_arn: "ComprehendFlywheelArn",
    #         active_model_arn: "ComprehendModelArn",
    #         data_lake_s3_uri: "S3Uri",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #         model_type: "DOCUMENT_CLASSIFIER" # One of: ["DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"],
    #         message: "AnyLengthString",
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         latest_flywheel_iteration: "FlywheelIterationId"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFlywheelsResponse]
    def list_flywheels(params = {}, options = {})
      request = build_request(:list_flywheels, params)
      request.send_request(options)
    end

    # <p>Get a list of key phrase detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListKeyPhrasesDetectionJobsRequest] params
    # @option params [Types::KeyPhrasesDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_key_phrases_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     key_phrases_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListKeyPhrasesDetectionJobsResponse]
    def list_key_phrases_detection_jobs(params = {}, options = {})
      request = build_request(:list_key_phrases_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of the PII entity detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListPiiEntitiesDetectionJobsRequest] params
    # @option params [Types::PiiEntitiesDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pii_entities_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pii_entities_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         redaction_config: {
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]],
    #           mask_mode: "MASK" # One of: ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"],
    #           mask_character: "MaskCharacter"
    #         },
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         data_access_role_arn: "IamRoleArn",
    #         mode: "ONLY_REDACTION" # One of: ["ONLY_REDACTION", "ONLY_OFFSETS"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPiiEntitiesDetectionJobsResponse]
    def list_pii_entities_detection_jobs(params = {}, options = {})
      request = build_request(:list_pii_entities_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of sentiment detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListSentimentDetectionJobsRequest] params
    # @option params [Types::SentimentDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_sentiment_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sentiment_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSentimentDetectionJobsResponse]
    def list_sentiment_detection_jobs(params = {}, options = {})
      request = build_request(:list_sentiment_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with a given Amazon Comprehend resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are querying.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ComprehendArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "ComprehendArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Gets a list of targeted sentiment detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListTargetedSentimentDetectionJobsRequest] params
    # @option params [Types::TargetedSentimentDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_targeted_sentiment_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targeted_sentiment_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"],
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTargetedSentimentDetectionJobsResponse]
    def list_targeted_sentiment_detection_jobs(params = {}, options = {})
      request = build_request(:list_targeted_sentiment_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Gets a list of the topic detection jobs that you have submitted.</p>
    # @param [Hash, Types::ListTopicsDetectionJobsRequest] params
    # @option params [Types::TopicsDetectionJobFilter] :filter
    #   <p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the
    #         date and time that they were submitted. You can set only one filter at a time.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_topics_detection_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topics_detection_job_properties_list: [
    #       {
    #         job_id: "JobId",
    #         job_arn: "ComprehendArn",
    #         job_name: "JobName",
    #         job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #         message: "AnyLengthString",
    #         submit_time: Time.now,
    #         end_time: Time.now,
    #         input_data_config: {
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #           document_reader_config: {
    #             document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #             document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #             feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #           }
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId"
    #         },
    #         number_of_topics: 1,
    #         data_access_role_arn: "IamRoleArn",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTopicsDetectionJobsResponse]
    def list_topics_detection_jobs(params = {}, options = {})
      request = build_request(:list_topics_detection_jobs, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based policy to a custom model. You can use this policy to authorize
    #       an entity in another Amazon Web Services account to import the custom model, which replicates it in Amazon
    #       Comprehend in their account.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to attach the policy to.</p>
    # @option params [String] :resource_policy
    #   <p>The JSON resource-based policy to attach to your custom model. Provide your JSON as a
    #         UTF-8 encoded string without line breaks. To provide valid JSON for your policy, enclose the
    #         attribute names and values in double quotes. If the JSON body is also enclosed in double
    #         quotes, then you must escape the double quotes that are inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    # @option params [String] :policy_revision_id
    #   <p>The revision ID that Amazon Comprehend assigned to the policy that you are updating. If
    #         you are creating a new policy that has no prior version, don't use this parameter. Amazon
    #         Comprehend creates the revision ID for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ComprehendModelArn", # required
    #     resource_policy: "Policy", # required
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous document classification job using a custom classification model.  Use the 
    #       <code>DescribeDocumentClassificationJob</code>
    #           operation to track the progress of the job.</p>
    # @param [Hash, Types::StartDocumentClassificationJobRequest] params
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) of the document classifier to use to process the
    #         job.</p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your document classification job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the document classification job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel associated with the model to use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "JobName",
    #     document_classifier_arn: "DocumentClassifierArn",
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     flywheel_arn: "ComprehendFlywheelArn"
    #   }
    #   options = {}
    #   response = client.start_document_classification_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #     document_classifier_arn: "DocumentClassifierArn"
    #   }
    # @return [Types::StartDocumentClassificationJobResponse]
    def start_document_classification_job(params = {}, options = {})
      request = build_request(:start_document_classification_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous dominant language detection job for a collection of documents. Use
    #       the  operation to track the status
    #       of a job.</p>
    # @param [Hash, Types::StartDominantLanguageDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    # @option params [String] :job_name
    #   <p>An identifier for the job.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your dominant language detection job. For more information,
    #         see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the dominant language detection job. A tag is a key-value pair
    #         that adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as
    #         the key might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_dominant_language_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartDominantLanguageDetectionJobResponse]
    def start_dominant_language_detection_job(params = {}, options = {})
      request = build_request(:start_dominant_language_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous entity detection job for a collection of documents. Use the  operation to track the status of a job.</p>
    #          <p>This API can be used for either standard entity detection or custom entity recognition. In
    #       order to be used for custom entity recognition, the optional <code>EntityRecognizerArn</code>
    #       must be used in order to provide access to the recognizer being used to detect the custom
    #       entity.</p>
    # @param [Hash, Types::StartEntitiesDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used
    #         by the <code>StartEntitiesDetectionJob</code>. This ARN is optional and is only used for a
    #         custom entity recognition job.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. All documents must be in the same language. You can
    #         specify any of the languages supported by Amazon Comprehend. If custom entities recognition is
    #         used, this parameter is ignored and the language used for training the model is used
    #         instead.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your entity detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the entities detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel associated with the model to use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     entity_recognizer_arn: "EntityRecognizerArn",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     flywheel_arn: "ComprehendFlywheelArn"
    #   }
    #   options = {}
    #   response = client.start_entities_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"],
    #     entity_recognizer_arn: "EntityRecognizerArn"
    #   }
    # @return [Types::StartEntitiesDetectionJobResponse]
    def start_entities_detection_job(params = {}, options = {})
      request = build_request(:start_entities_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous event detection job for a collection of documents.</p>
    # @param [Hash, Types::StartEventsDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the events detection job.</p>
    # @option params [String] :language_code
    #   <p>The language code of the input documents.</p>
    # @option params [String] :client_request_token
    #   <p>An unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [Array<String>] :target_event_types
    #   <p>The types of events to detect in the input documents.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the events detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     client_request_token: "ClientRequestTokenString",
    #     target_event_types: ["EventTypeString"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_events_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartEventsDetectionJobResponse]
    def start_events_detection_job(params = {}, options = {})
      request = build_request(:start_events_detection_job, params)
      request.send_request(options)
    end

    # <p>Start the flywheel iteration.This operation uses any new datasets to train a new model version.
    #       For more information about flywheels, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html">
    #       Flywheel overview</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @param [Hash, Types::StartFlywheelIterationRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The ARN of the flywheel.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     client_request_token: "ClientRequestTokenString"
    #   }
    #   options = {}
    #   response = client.start_flywheel_iteration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_arn: "ComprehendFlywheelArn",
    #     flywheel_iteration_id: "FlywheelIterationId"
    #   }
    # @return [Types::StartFlywheelIterationResponse]
    def start_flywheel_iteration(params = {}, options = {})
      request = build_request(:start_flywheel_iteration, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous key phrase detection job for a collection of documents. Use the
    #          operation to track the status of a
    #       job.</p>
    # @param [Hash, Types::StartKeyPhrasesDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your key phrases detection job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the key phrases detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_key_phrases_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartKeyPhrasesDetectionJobResponse]
    def start_key_phrases_detection_job(params = {}, options = {})
      request = build_request(:start_key_phrases_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous PII entity detection job for a collection of documents.</p>
    # @param [Hash, Types::StartPiiEntitiesDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input properties for a PII entities detection job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Provides conﬁguration parameters for the output of PII entity detection jobs.</p>
    # @option params [String] :mode
    #   <p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
    #         which PII entities are redacted.</p>
    # @option params [Types::RedactionConfig] :redaction_config
    #   <p>Provides configuration parameters for PII entity redaction.</p>
    #            <p>This parameter is required if you set the <code>Mode</code> parameter to
    #           <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
    #         definition that includes the <code>PiiEntityTypes</code> parameter.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. 
    #         Enter the language code for English (en) or Spanish (es).</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the PII entities detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     mode: "ONLY_REDACTION" # One of: ["ONLY_REDACTION", "ONLY_OFFSETS"], # required
    #     redaction_config: {
    #       pii_entity_types: ["BANK_ACCOUNT_NUMBER" # One of: ["BANK_ACCOUNT_NUMBER", "BANK_ROUTING", "CREDIT_DEBIT_NUMBER", "CREDIT_DEBIT_CVV", "CREDIT_DEBIT_EXPIRY", "PIN", "EMAIL", "ADDRESS", "NAME", "PHONE", "SSN", "DATE_TIME", "PASSPORT_NUMBER", "DRIVER_ID", "URL", "AGE", "USERNAME", "PASSWORD", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "IP_ADDRESS", "MAC_ADDRESS", "ALL", "LICENSE_PLATE", "VEHICLE_IDENTIFICATION_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "IN_PERMANENT_ACCOUNT_NUMBER", "IN_NREGA", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "CA_HEALTH_NUMBER", "IN_AADHAAR", "IN_VOTER_NUMBER"]],
    #       mask_mode: "MASK" # One of: ["MASK", "REPLACE_WITH_PII_ENTITY_TYPE"],
    #       mask_character: "MaskCharacter"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     client_request_token: "ClientRequestTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_pii_entities_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartPiiEntitiesDetectionJobResponse]
    def start_pii_entities_detection_job(params = {}, options = {})
      request = build_request(:start_pii_entities_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous sentiment detection job for a collection of documents. Use the
    #          operation to track the status of a
    #       job.</p>
    # @param [Hash, Types::StartSentimentDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files. </p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your sentiment detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_sentiment_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartSentimentDetectionJobResponse]
    def start_sentiment_detection_job(params = {}, options = {})
      request = build_request(:start_sentiment_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous targeted sentiment detection job for a collection of documents. Use the
    #       <code>DescribeTargetedSentimentDetectionJob</code> operation to track the status of a
    #       job.</p>
    # @param [Hash, Types::StartTargetedSentimentDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input properties for an inference job. The document reader config field applies
    #         only to non-text inputs for custom analysis.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files. </p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [String] :language_code
    #   <p>The language of the input documents. Currently, English is the only supported language.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #             <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the targeted sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_targeted_sentiment_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartTargetedSentimentDetectionJobResponse]
    def start_targeted_sentiment_detection_job(params = {}, options = {})
      request = build_request(:start_targeted_sentiment_detection_job, params)
      request.send_request(options)
    end

    # <p>Starts an asynchronous topic detection job. Use the
    #         <code>DescribeTopicDetectionJob</code> operation to track the status of a job.</p>
    # @param [Hash, Types::StartTopicsDetectionJobRequest] params
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>Specifies where to send the output files. The output is a compressed archive with two
    #         files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and
    #           <code>doc-topics.csv</code> that lists the documents associated with each topic</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    # @option params [String] :job_name
    #   <p>The identifier of the job.</p>
    # @option params [Integer] :number_of_topics
    #   <p>The number of topics to detect.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    # @option params [String] :volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your topic detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the topics detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE" # One of: ["ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"],
    #       document_reader_config: {
    #         document_read_action: "TEXTRACT_DETECT_DOCUMENT_TEXT" # One of: ["TEXTRACT_DETECT_DOCUMENT_TEXT", "TEXTRACT_ANALYZE_DOCUMENT"], # required
    #         document_read_mode: "SERVICE_DEFAULT" # One of: ["SERVICE_DEFAULT", "FORCE_DOCUMENT_READ_ACTION"],
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS"]]
    #       }
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     number_of_topics: 1,
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_topics_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_arn: "ComprehendArn",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StartTopicsDetectionJobResponse]
    def start_topics_detection_job(params = {}, options = {})
      request = build_request(:start_topics_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops a dominant language detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code> the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    # @param [Hash, Types::StopDominantLanguageDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the dominant language detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_dominant_language_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopDominantLanguageDetectionJobResponse]
    def stop_dominant_language_detection_job(params = {}, options = {})
      request = build_request(:stop_dominant_language_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops an entities detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code> the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    # @param [Hash, Types::StopEntitiesDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the entities detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_entities_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopEntitiesDetectionJobResponse]
    def stop_entities_detection_job(params = {}, options = {})
      request = build_request(:stop_entities_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops an events detection job in progress.</p>
    # @param [Hash, Types::StopEventsDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the events detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_events_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopEventsDetectionJobResponse]
    def stop_events_detection_job(params = {}, options = {})
      request = build_request(:stop_events_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops a key phrases detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code> the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    # @param [Hash, Types::StopKeyPhrasesDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the key phrases detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_key_phrases_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopKeyPhrasesDetectionJobResponse]
    def stop_key_phrases_detection_job(params = {}, options = {})
      request = build_request(:stop_key_phrases_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops a PII entities detection job in progress.</p>
    # @param [Hash, Types::StopPiiEntitiesDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the PII entities detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_pii_entities_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopPiiEntitiesDetectionJobResponse]
    def stop_pii_entities_detection_job(params = {}, options = {})
      request = build_request(:stop_pii_entities_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops a sentiment detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code>, the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is be stopped and put into the
    #         <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #         <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    # @param [Hash, Types::StopSentimentDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the sentiment detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_sentiment_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopSentimentDetectionJobResponse]
    def stop_sentiment_detection_job(params = {}, options = {})
      request = build_request(:stop_sentiment_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops a targeted sentiment detection job in progress.</p>
    #          <p>If the job state is <code>IN_PROGRESS</code>, the job is marked for termination and put
    #       into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it
    #       is put into the <code>COMPLETED</code> state; otherwise the job is be stopped and put into the
    #       <code>STOPPED</code> state.</p>
    #          <p>If the job is in the <code>COMPLETED</code> or <code>FAILED</code> state when you call the
    #       <code>StopDominantLanguageDetectionJob</code> operation, the operation returns a 400
    #       Internal Request Exception. </p>
    #          <p>When a job is stopped, any documents already processed are written to the output
    #       location.</p>
    # @param [Hash, Types::StopTargetedSentimentDetectionJobRequest] params
    # @option params [String] :job_id
    #   <p>The identifier of the targeted sentiment detection job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.stop_targeted_sentiment_detection_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId",
    #     job_status: "SUBMITTED" # One of: ["SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"]
    #   }
    # @return [Types::StopTargetedSentimentDetectionJobResponse]
    def stop_targeted_sentiment_detection_job(params = {}, options = {})
      request = build_request(:stop_targeted_sentiment_detection_job, params)
      request.send_request(options)
    end

    # <p>Stops a document classifier training job while in progress.</p>
    #          <p>If the training job state is <code>TRAINING</code>, the job is marked for termination and
    #       put into the <code>STOP_REQUESTED</code> state. If the training job completes before it can be
    #       stopped, it is put into the <code>TRAINED</code>; otherwise the training job is stopped and
    #       put into the <code>STOPPED</code> state and the service sends back an HTTP 200 response with
    #       an empty HTTP body. </p>
    # @param [Hash, Types::StopTrainingDocumentClassifierRequest] params
    # @option params [String] :document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier currently being
    #         trained.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   }
    #   options = {}
    #   response = client.stop_training_document_classifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopTrainingDocumentClassifierResponse]
    def stop_training_document_classifier(params = {}, options = {})
      request = build_request(:stop_training_document_classifier, params)
      request.send_request(options)
    end

    # <p>Stops an entity recognizer training job while in progress.</p>
    #          <p>If the training job state is <code>TRAINING</code>, the job is marked for termination and
    #       put into the <code>STOP_REQUESTED</code> state. If the training job completes before it can be
    #       stopped, it is put into the <code>TRAINED</code>; otherwise the training job is stopped and
    #       putted into the <code>STOPPED</code> state and the service sends back an HTTP 200 response
    #       with an empty HTTP body.</p>
    # @param [Hash, Types::StopTrainingEntityRecognizerRequest] params
    # @option params [String] :entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer currently being
    #         trained.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   }
    #   options = {}
    #   response = client.stop_training_entity_recognizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopTrainingEntityRecognizerResponse]
    def stop_training_entity_recognizer(params = {}, options = {})
      request = build_request(:stop_training_entity_recognizer, params)
      request.send_request(options)
    end

    # <p>Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair
    #       that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #       "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #     </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource to which you want
    #         to associate the tags. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags being associated with a specific Amazon Comprehend resource. There can be a maximum
    #         of 50 tags (both existing and pending) associated with a specific resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ComprehendArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
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

    # <p>Removes a specific tag associated with an Amazon Comprehend resource. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) of the given Amazon Comprehend resource from which you
    #         want to remove the tags. </p>
    # @option params [Array<String>] :tag_keys
    #   <p>The initial part of a key-value pair that forms a tag being removed from a given resource.
    #         For example, a tag with "Sales" as the key might be added to a resource to indicate its use by
    #         the sales department. Keys must be unique and cannot be duplicated for a particular resource.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ComprehendArn", # required
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

    # <p>Updates information about the specified endpoint.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @param [Hash, Types::UpdateEndpointRequest] params
    # @option params [String] :endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being updated.</p>
    # @option params [String] :desired_model_arn
    #   <p>The ARN of the new model to use when updating an existing endpoint.</p>
    # @option params [Integer] :desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #         
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    # @option params [String] :desired_data_access_role_arn
    #   <p>Data access role ARN to use in case the new model is encrypted with a customer CMK.</p>
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "ComprehendEndpointArn", # required
    #     desired_model_arn: "ComprehendModelArn",
    #     desired_inference_units: 1,
    #     desired_data_access_role_arn: "IamRoleArn",
    #     flywheel_arn: "ComprehendFlywheelArn"
    #   }
    #   options = {}
    #   response = client.update_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     desired_model_arn: "ComprehendModelArn"
    #   }
    # @return [Types::UpdateEndpointResponse]
    def update_endpoint(params = {}, options = {})
      request = build_request(:update_endpoint, params)
      request.send_request(options)
    end

    # <p>Update the configuration information for an existing flywheel.</p>
    # @param [Hash, Types::UpdateFlywheelRequest] params
    # @option params [String] :flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel to update.</p>
    # @option params [String] :active_model_arn
    #   <p>The Amazon Resource Number (ARN) of the active model version.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend permission to access the flywheel data.</p>
    # @option params [Types::UpdateDataSecurityConfig] :data_security_config
    #   <p>Flywheel data security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     flywheel_arn: "ComprehendFlywheelArn", # required
    #     active_model_arn: "ComprehendModelArn",
    #     data_access_role_arn: "IamRoleArn",
    #     data_security_config: {
    #       model_kms_key_id: "KmsKeyId",
    #       volume_kms_key_id: "KmsKeyId",
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_flywheel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     flywheel_properties: {
    #       flywheel_arn: "ComprehendFlywheelArn",
    #       active_model_arn: "ComprehendModelArn",
    #       data_access_role_arn: "IamRoleArn",
    #       task_config: {
    #         language_code: "en" # One of: ["en", "es", "fr", "de", "it", "pt", "ar", "hi", "ja", "ko", "zh", "zh-TW"], # required
    #         document_classification_config: {
    #           mode: "MULTI_CLASS" # One of: ["MULTI_CLASS", "MULTI_LABEL"], # required
    #           labels: ["LabelListItem"]
    #         },
    #         entity_recognition_config: {
    #           entity_types: [ # required
    #             {
    #               type: "EntityTypeName", # required
    #             }
    #           ]
    #         }
    #       },
    #       data_lake_s3_uri: "S3Uri",
    #       data_security_config: {
    #         model_kms_key_id: "KmsKeyId",
    #         volume_kms_key_id: "KmsKeyId",
    #         data_lake_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         }
    #       },
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"],
    #       model_type: "DOCUMENT_CLASSIFIER" # One of: ["DOCUMENT_CLASSIFIER", "ENTITY_RECOGNIZER"],
    #       message: "AnyLengthString",
    #       creation_time: Time.now,
    #       last_modified_time: Time.now,
    #       latest_flywheel_iteration: "FlywheelIterationId"
    #     }
    #   }
    # @return [Types::UpdateFlywheelResponse]
    def update_flywheel(params = {}, options = {})
      request = build_request(:update_flywheel, params)
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
      context[:gem_name] = 'aws-sdk-comprehend'
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
