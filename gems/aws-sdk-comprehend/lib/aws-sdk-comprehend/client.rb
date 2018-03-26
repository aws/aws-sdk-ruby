# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:comprehend)

module Aws::Comprehend
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :comprehend

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Determines the dominant language of the input text for a batch of
    # documents. For a list of languages that Amazon Comprehend can detect,
    # see [Amazon Comprehend Supported Languages][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document should contain at
    #   least 20 characters and must contain fewer than 5,000 bytes of UTF-8
    #   encoded characters.
    #
    # @return [Types::BatchDetectDominantLanguageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectDominantLanguageResponse#result_list #result_list} => Array&lt;Types::BatchDetectDominantLanguageItemResult&gt;
    #   * {Types::BatchDetectDominantLanguageResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_dominant_language({
    #     text_list: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].languages #=> Array
    #   resp.result_list[0].languages[0].language_code #=> String
    #   resp.result_list[0].languages[0].score #=> Float
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectDominantLanguage AWS API Documentation
    #
    # @overload batch_detect_dominant_language(params = {})
    # @param [Hash] params ({})
    def batch_detect_dominant_language(params = {}, options = {})
      req = build_request(:batch_detect_dominant_language, params)
      req.send_request(options)
    end

    # Inspects the text of a batch of documents and returns information
    # about them. For more information about entities, see how-entities
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   than 5,000 bytes of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::BatchDetectEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectEntitiesResponse#result_list #result_list} => Array&lt;Types::BatchDetectEntitiesItemResult&gt;
    #   * {Types::BatchDetectEntitiesResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_entities({
    #     text_list: ["String"], # required
    #     language_code: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].entities #=> Array
    #   resp.result_list[0].entities[0].score #=> Float
    #   resp.result_list[0].entities[0].type #=> String, one of "PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"
    #   resp.result_list[0].entities[0].text #=> String
    #   resp.result_list[0].entities[0].begin_offset #=> Integer
    #   resp.result_list[0].entities[0].end_offset #=> Integer
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntities AWS API Documentation
    #
    # @overload batch_detect_entities(params = {})
    # @param [Hash] params ({})
    def batch_detect_entities(params = {}, options = {})
      req = build_request(:batch_detect_entities, params)
      req.send_request(options)
    end

    # Detects the key noun phrases found in a batch of documents.
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::BatchDetectKeyPhrasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectKeyPhrasesResponse#result_list #result_list} => Array&lt;Types::BatchDetectKeyPhrasesItemResult&gt;
    #   * {Types::BatchDetectKeyPhrasesResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_key_phrases({
    #     text_list: ["String"], # required
    #     language_code: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].key_phrases #=> Array
    #   resp.result_list[0].key_phrases[0].score #=> Float
    #   resp.result_list[0].key_phrases[0].text #=> String
    #   resp.result_list[0].key_phrases[0].begin_offset #=> Integer
    #   resp.result_list[0].key_phrases[0].end_offset #=> Integer
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrases AWS API Documentation
    #
    # @overload batch_detect_key_phrases(params = {})
    # @param [Hash] params ({})
    def batch_detect_key_phrases(params = {}, options = {})
      req = build_request(:batch_detect_key_phrases, params)
      req.send_request(options)
    end

    # Inspects a batch of documents and returns an inference of the
    # prevailing sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`,
    # in each one.
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::BatchDetectSentimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectSentimentResponse#result_list #result_list} => Array&lt;Types::BatchDetectSentimentItemResult&gt;
    #   * {Types::BatchDetectSentimentResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_sentiment({
    #     text_list: ["String"], # required
    #     language_code: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.result_list[0].sentiment_score.positive #=> Float
    #   resp.result_list[0].sentiment_score.negative #=> Float
    #   resp.result_list[0].sentiment_score.neutral #=> Float
    #   resp.result_list[0].sentiment_score.mixed #=> Float
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentiment AWS API Documentation
    #
    # @overload batch_detect_sentiment(params = {})
    # @param [Hash] params ({})
    def batch_detect_sentiment(params = {}, options = {})
      req = build_request(:batch_detect_sentiment, params)
      req.send_request(options)
    end

    # Gets the properties associated with a topic detection job. Use this
    # operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier assigned by the user to the detection job.
    #
    # @return [Types::DescribeTopicsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTopicsDetectionJobResponse#topics_detection_job_properties #topics_detection_job_properties} => Types::TopicsDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_topics_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.topics_detection_job_properties.job_id #=> String
    #   resp.topics_detection_job_properties.job_name #=> String
    #   resp.topics_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.topics_detection_job_properties.message #=> String
    #   resp.topics_detection_job_properties.submit_time #=> Time
    #   resp.topics_detection_job_properties.end_time #=> Time
    #   resp.topics_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.topics_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties.number_of_topics #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTopicsDetectionJob AWS API Documentation
    #
    # @overload describe_topics_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_topics_detection_job(params = {}, options = {})
      req = build_request(:describe_topics_detection_job, params)
      req.send_request(options)
    end

    # Determines the dominant language of the input text. For a list of
    # languages that Amazon Comprehend can detect, see [Amazon Comprehend
    # Supported Languages][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. Each string should contain at least 20 characters
    #   and must contain fewer that 5,000 bytes of UTF-8 encoded characters.
    #
    # @return [Types::DetectDominantLanguageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectDominantLanguageResponse#languages #languages} => Array&lt;Types::DominantLanguage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_dominant_language({
    #     text: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.languages #=> Array
    #   resp.languages[0].language_code #=> String
    #   resp.languages[0].score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectDominantLanguage AWS API Documentation
    #
    # @overload detect_dominant_language(params = {})
    # @param [Hash] params ({})
    def detect_dominant_language(params = {}, options = {})
      req = build_request(:detect_dominant_language, params)
      req.send_request(options)
    end

    # Inspects text for entities, and returns information about them. For
    # more information, about entities, see how-entities.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The RFC 5646 language code of the input text. If the request does not
    #   specify the language code, the service detects the dominant language.
    #   If you specify a language code that the service does not support, it
    #   returns `UnsupportedLanguageException` exception. For more information
    #   about RFC 5646, see [Tags for Identifying Languages][1] on the *IETF
    #   Tools* web site.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5646
    #
    # @return [Types::DetectEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectEntitiesResponse#entities #entities} => Array&lt;Types::Entity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].type #=> String, one of "PERSON", "LOCATION", "ORGANIZATION", "COMMERCIAL_ITEM", "EVENT", "DATE", "QUANTITY", "TITLE", "OTHER"
    #   resp.entities[0].text #=> String
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntities AWS API Documentation
    #
    # @overload detect_entities(params = {})
    # @param [Hash] params ({})
    def detect_entities(params = {}, options = {})
      req = build_request(:detect_entities, params)
      req.send_request(options)
    end

    # Detects the key noun phrases found in the text.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The RFC 5646 language code for the input text. If you don't specify a
    #   language code, Amazon Comprehend detects the dominant language. If you
    #   specify the code for a language that Amazon Comprehend does not
    #   support, it returns and `UnsupportedLanguageException`. For more
    #   information about RFC 5646, see [Tags for Identifying Languages][1] on
    #   the *IETF Tools* web site.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5646
    #
    # @return [Types::DetectKeyPhrasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectKeyPhrasesResponse#key_phrases #key_phrases} => Array&lt;Types::KeyPhrase&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_key_phrases({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es
    #   })
    #
    # @example Response structure
    #
    #   resp.key_phrases #=> Array
    #   resp.key_phrases[0].score #=> Float
    #   resp.key_phrases[0].text #=> String
    #   resp.key_phrases[0].begin_offset #=> Integer
    #   resp.key_phrases[0].end_offset #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectKeyPhrases AWS API Documentation
    #
    # @overload detect_key_phrases(params = {})
    # @param [Hash] params ({})
    def detect_key_phrases(params = {}, options = {})
      req = build_request(:detect_key_phrases, params)
      req.send_request(options)
    end

    # Inspects text and returns an inference of the prevailing sentiment
    # (`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`).
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The RFC 5646 language code for the input text. If you don't specify a
    #   language code, Amazon Comprehend detects the dominant language. If you
    #   specify the code for a language that Amazon Comprehend does not
    #   support, it returns and `UnsupportedLanguageException`. For more
    #   information about RFC 5646, see [Tags for Identifying Languages][1] on
    #   the *IETF Tools* web site.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5646
    #
    # @return [Types::DetectSentimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectSentimentResponse#sentiment #sentiment} => String
    #   * {Types::DetectSentimentResponse#sentiment_score #sentiment_score} => Types::SentimentScore
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_sentiment({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es
    #   })
    #
    # @example Response structure
    #
    #   resp.sentiment #=> String, one of "POSITIVE", "NEGATIVE", "NEUTRAL", "MIXED"
    #   resp.sentiment_score.positive #=> Float
    #   resp.sentiment_score.negative #=> Float
    #   resp.sentiment_score.neutral #=> Float
    #   resp.sentiment_score.mixed #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSentiment AWS API Documentation
    #
    # @overload detect_sentiment(params = {})
    # @param [Hash] params ({})
    def detect_sentiment(params = {}, options = {})
      req = build_request(:detect_sentiment, params)
      req.send_request(options)
    end

    # Gets a list of the topic detection jobs that you have submitted.
    #
    # @option params [Types::TopicsDetectionJobFilter] :filter
    #   Filters the jobs that are returned. Jobs can be filtered on their
    #   name, status, or the date and time that they were submitted. You can
    #   set only one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page.
    #
    # @return [Types::ListTopicsDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicsDetectionJobsResponse#topics_detection_job_properties_list #topics_detection_job_properties_list} => Array&lt;Types::TopicsDetectionJobProperties&gt;
    #   * {Types::ListTopicsDetectionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topics_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.topics_detection_job_properties_list #=> Array
    #   resp.topics_detection_job_properties_list[0].job_id #=> String
    #   resp.topics_detection_job_properties_list[0].job_name #=> String
    #   resp.topics_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.topics_detection_job_properties_list[0].message #=> String
    #   resp.topics_detection_job_properties_list[0].submit_time #=> Time
    #   resp.topics_detection_job_properties_list[0].end_time #=> Time
    #   resp.topics_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.topics_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties_list[0].number_of_topics #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTopicsDetectionJobs AWS API Documentation
    #
    # @overload list_topics_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_topics_detection_jobs(params = {}, options = {})
      req = build_request(:list_topics_detection_jobs, params)
      req.send_request(options)
    end

    # Starts an asynchronous topic detection job. Use the
    # `DescribeTopicDetectionJob` operation to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data.
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [Integer] :number_of_topics
    #   The number of topics to detect.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartTopicsDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTopicsDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartTopicsDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_topics_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     number_of_topics: 1,
    #     client_request_token: "ClientRequestTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJob AWS API Documentation
    #
    # @overload start_topics_detection_job(params = {})
    # @param [Hash] params ({})
    def start_topics_detection_job(params = {}, options = {})
      req = build_request(:start_topics_detection_job, params)
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
      context[:gem_name] = 'aws-sdk-comprehend'
      context[:gem_version] = '1.0.0'
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
