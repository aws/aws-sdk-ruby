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
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Determines the dominant language of the input text for a batch of
    # documents. For a list of languages that Amazon Comprehend can detect,
    # see [Amazon Comprehend Supported Languages][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html
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

    # Inspects the text of a batch of documents for named entities and
    # returns information about them. For more information about named
    # entities, see how-entities
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   than 5,000 bytes of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
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
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
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
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
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
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
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
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
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
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
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

    # Inspects the text of a batch of documents for the syntax and part of
    # speech of the words in the document and returns information about
    # them. For more information, see how-syntax.
    #
    # @option params [required, Array<String>] :text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
    #
    # @return [Types::BatchDetectSyntaxResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDetectSyntaxResponse#result_list #result_list} => Array&lt;Types::BatchDetectSyntaxItemResult&gt;
    #   * {Types::BatchDetectSyntaxResponse#error_list #error_list} => Array&lt;Types::BatchItemError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_detect_syntax({
    #     text_list: ["String"], # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #   })
    #
    # @example Response structure
    #
    #   resp.result_list #=> Array
    #   resp.result_list[0].index #=> Integer
    #   resp.result_list[0].syntax_tokens #=> Array
    #   resp.result_list[0].syntax_tokens[0].token_id #=> Integer
    #   resp.result_list[0].syntax_tokens[0].text #=> String
    #   resp.result_list[0].syntax_tokens[0].begin_offset #=> Integer
    #   resp.result_list[0].syntax_tokens[0].end_offset #=> Integer
    #   resp.result_list[0].syntax_tokens[0].part_of_speech.tag #=> String, one of "ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"
    #   resp.result_list[0].syntax_tokens[0].part_of_speech.score #=> Float
    #   resp.error_list #=> Array
    #   resp.error_list[0].index #=> Integer
    #   resp.error_list[0].error_code #=> String
    #   resp.error_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntax AWS API Documentation
    #
    # @overload batch_detect_syntax(params = {})
    # @param [Hash] params ({})
    def batch_detect_syntax(params = {}, options = {})
      req = build_request(:batch_detect_syntax, params)
      req.send_request(options)
    end

    # Creates a new document classifier that you can use to categorize
    # documents. To create a classifier you provide a set of training
    # documents that labeled with the categories that you want to use. After
    # the classifier is trained you can use it to categorize a set of
    # labeled documents into the categories. For more information, see
    # how-document-classification.
    #
    # @option params [required, String] :document_classifier_name
    #   The name of the document classifier.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your input
    #   data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be associated with the document classifier being created. A
    #   tag is a key-value pair that adds as a metadata to a resource used by
    #   Amazon Comprehend. For example, a tag with "Sales" as the key might
    #   be added to a resource to indicate its use by the sales department.
    #
    # @option params [required, Types::DocumentClassifierInputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [Types::DocumentClassifierOutputDataConfig] :output_data_config
    #   Enables the addition of output results configuration parameters for
    #   custom classifier jobs.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your custom
    #   classifier. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::CreateDocumentClassifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDocumentClassifierResponse#document_classifier_arn #document_classifier_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_document_classifier({
    #     document_classifier_name: "ComprehendArnName", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     output_data_config: {
    #       s3_uri: "S3Uri",
    #       kms_key_id: "KmsKeyId",
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDocumentClassifier AWS API Documentation
    #
    # @overload create_document_classifier(params = {})
    # @param [Hash] params ({})
    def create_document_classifier(params = {}, options = {})
      req = build_request(:create_document_classifier, params)
      req.send_request(options)
    end

    # Creates an entity recognizer using submitted files. After your
    # `CreateEntityRecognizer` request is submitted, you can check job
    # status using the API.
    #
    # @option params [required, String] :recognizer_name
    #   The name given to the newly created recognizer. Recognizer names can
    #   be a maximum of 256 characters. Alphanumeric characters, hyphens (-)
    #   and underscores (\_) are allowed. The name must be unique in the
    #   account/region.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your input
    #   data.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be associated with the entity recognizer being created. A tag
    #   is a key-value pair that adds as a metadata to a resource used by
    #   Amazon Comprehend. For example, a tag with "Sales" as the key might
    #   be added to a resource to indicate its use by the sales department.
    #
    # @option params [required, Types::EntityRecognizerInputDataConfig] :input_data_config
    #   Specifies the format and location of the input data. The S3 bucket
    #   containing the input data must be located in the same region as the
    #   entity recognizer being created.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language. Only English ("en") is currently supported.
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your custom entity
    #   recognizer. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::CreateEntityRecognizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEntityRecognizerResponse#entity_recognizer_arn #entity_recognizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entity_recognizer({
    #     recognizer_name: "ComprehendArnName", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     input_data_config: { # required
    #       entity_types: [ # required
    #         {
    #           type: "EntityTypeName", # required
    #         },
    #       ],
    #       documents: { # required
    #         s3_uri: "S3Uri", # required
    #       },
    #       annotations: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       entity_list: {
    #         s3_uri: "S3Uri", # required
    #       },
    #     },
    #     client_request_token: "ClientRequestTokenString",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEntityRecognizer AWS API Documentation
    #
    # @overload create_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def create_entity_recognizer(params = {}, options = {})
      req = build_request(:create_entity_recognizer, params)
      req.send_request(options)
    end

    # Deletes a previously created document classifier
    #
    # Only those classifiers that are in terminated states (IN\_ERROR,
    # TRAINED) will be deleted. If an active inference job is using the
    # model, a `ResourceInUseException` will be returned.
    #
    # This is an asynchronous action that puts the classifier into a
    # DELETING state, and it is then removed by a background job. Once
    # removed, the classifier disappears from your account and is no longer
    # available for use.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document_classifier({
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteDocumentClassifier AWS API Documentation
    #
    # @overload delete_document_classifier(params = {})
    # @param [Hash] params ({})
    def delete_document_classifier(params = {}, options = {})
      req = build_request(:delete_document_classifier, params)
      req.send_request(options)
    end

    # Deletes an entity recognizer.
    #
    # Only those recognizers that are in terminated states (IN\_ERROR,
    # TRAINED) will be deleted. If an active inference job is using the
    # model, a `ResourceInUseException` will be returned.
    #
    # This is an asynchronous action that puts the recognizer into a
    # DELETING state, and it is then removed by a background job. Once
    # removed, the recognizer disappears from your account and is no longer
    # available for use.
    #
    # @option params [required, String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entity_recognizer({
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEntityRecognizer AWS API Documentation
    #
    # @overload delete_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def delete_entity_recognizer(params = {}, options = {})
      req = build_request(:delete_entity_recognizer, params)
      req.send_request(options)
    end

    # Gets the properties associated with a document classification job. Use
    # this operation to get the status of a classification job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribeDocumentClassificationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentClassificationJobResponse#document_classification_job_properties #document_classification_job_properties} => Types::DocumentClassificationJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_classification_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classification_job_properties.job_id #=> String
    #   resp.document_classification_job_properties.job_name #=> String
    #   resp.document_classification_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.document_classification_job_properties.message #=> String
    #   resp.document_classification_job_properties.submit_time #=> Time
    #   resp.document_classification_job_properties.end_time #=> Time
    #   resp.document_classification_job_properties.document_classifier_arn #=> String
    #   resp.document_classification_job_properties.input_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.document_classification_job_properties.output_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties.output_data_config.kms_key_id #=> String
    #   resp.document_classification_job_properties.data_access_role_arn #=> String
    #   resp.document_classification_job_properties.volume_kms_key_id #=> String
    #   resp.document_classification_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.document_classification_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.document_classification_job_properties.vpc_config.subnets #=> Array
    #   resp.document_classification_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassificationJob AWS API Documentation
    #
    # @overload describe_document_classification_job(params = {})
    # @param [Hash] params ({})
    def describe_document_classification_job(params = {}, options = {})
      req = build_request(:describe_document_classification_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a document classifier.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier. The operation returns this identifier in its response.
    #
    # @return [Types::DescribeDocumentClassifierResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentClassifierResponse#document_classifier_properties #document_classifier_properties} => Types::DocumentClassifierProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_classifier({
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_properties.document_classifier_arn #=> String
    #   resp.document_classifier_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.document_classifier_properties.status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"
    #   resp.document_classifier_properties.message #=> String
    #   resp.document_classifier_properties.submit_time #=> Time
    #   resp.document_classifier_properties.end_time #=> Time
    #   resp.document_classifier_properties.training_start_time #=> Time
    #   resp.document_classifier_properties.training_end_time #=> Time
    #   resp.document_classifier_properties.input_data_config.s3_uri #=> String
    #   resp.document_classifier_properties.output_data_config.s3_uri #=> String
    #   resp.document_classifier_properties.output_data_config.kms_key_id #=> String
    #   resp.document_classifier_properties.classifier_metadata.number_of_labels #=> Integer
    #   resp.document_classifier_properties.classifier_metadata.number_of_trained_documents #=> Integer
    #   resp.document_classifier_properties.classifier_metadata.number_of_test_documents #=> Integer
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.accuracy #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.precision #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.recall #=> Float
    #   resp.document_classifier_properties.classifier_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.document_classifier_properties.data_access_role_arn #=> String
    #   resp.document_classifier_properties.volume_kms_key_id #=> String
    #   resp.document_classifier_properties.vpc_config.security_group_ids #=> Array
    #   resp.document_classifier_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.document_classifier_properties.vpc_config.subnets #=> Array
    #   resp.document_classifier_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassifier AWS API Documentation
    #
    # @overload describe_document_classifier(params = {})
    # @param [Hash] params ({})
    def describe_document_classifier(params = {}, options = {})
      req = build_request(:describe_document_classifier, params)
      req.send_request(options)
    end

    # Gets the properties associated with a dominant language detection job.
    # Use this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribeDominantLanguageDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDominantLanguageDetectionJobResponse#dominant_language_detection_job_properties #dominant_language_detection_job_properties} => Types::DominantLanguageDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dominant_language_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dominant_language_detection_job_properties.job_id #=> String
    #   resp.dominant_language_detection_job_properties.job_name #=> String
    #   resp.dominant_language_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.dominant_language_detection_job_properties.message #=> String
    #   resp.dominant_language_detection_job_properties.submit_time #=> Time
    #   resp.dominant_language_detection_job_properties.end_time #=> Time
    #   resp.dominant_language_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.dominant_language_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties.data_access_role_arn #=> String
    #   resp.dominant_language_detection_job_properties.volume_kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.dominant_language_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.dominant_language_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.dominant_language_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDominantLanguageDetectionJob AWS API Documentation
    #
    # @overload describe_dominant_language_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_dominant_language_detection_job(params = {}, options = {})
      req = build_request(:describe_dominant_language_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with an entities detection job. Use
    # this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribeEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntitiesDetectionJobResponse#entities_detection_job_properties #entities_detection_job_properties} => Types::EntitiesDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entities_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities_detection_job_properties.job_id #=> String
    #   resp.entities_detection_job_properties.job_name #=> String
    #   resp.entities_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.entities_detection_job_properties.message #=> String
    #   resp.entities_detection_job_properties.submit_time #=> Time
    #   resp.entities_detection_job_properties.end_time #=> Time
    #   resp.entities_detection_job_properties.entity_recognizer_arn #=> String
    #   resp.entities_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.entities_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.entities_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.entities_detection_job_properties.data_access_role_arn #=> String
    #   resp.entities_detection_job_properties.volume_kms_key_id #=> String
    #   resp.entities_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.entities_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.entities_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.entities_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntitiesDetectionJob AWS API Documentation
    #
    # @overload describe_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_entities_detection_job(params = {}, options = {})
      req = build_request(:describe_entities_detection_job, params)
      req.send_request(options)
    end

    # Provides details about an entity recognizer including status, S3
    # buckets containing training data, recognizer metadata, metrics, and so
    # on.
    #
    # @option params [required, String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer.
    #
    # @return [Types::DescribeEntityRecognizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntityRecognizerResponse#entity_recognizer_properties #entity_recognizer_properties} => Types::EntityRecognizerProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entity_recognizer({
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_properties.entity_recognizer_arn #=> String
    #   resp.entity_recognizer_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.entity_recognizer_properties.status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"
    #   resp.entity_recognizer_properties.message #=> String
    #   resp.entity_recognizer_properties.submit_time #=> Time
    #   resp.entity_recognizer_properties.end_time #=> Time
    #   resp.entity_recognizer_properties.training_start_time #=> Time
    #   resp.entity_recognizer_properties.training_end_time #=> Time
    #   resp.entity_recognizer_properties.input_data_config.entity_types #=> Array
    #   resp.entity_recognizer_properties.input_data_config.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties.input_data_config.documents.s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.annotations.s3_uri #=> String
    #   resp.entity_recognizer_properties.input_data_config.entity_list.s3_uri #=> String
    #   resp.entity_recognizer_properties.recognizer_metadata.number_of_trained_documents #=> Integer
    #   resp.entity_recognizer_properties.recognizer_metadata.number_of_test_documents #=> Integer
    #   resp.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.precision #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.recall #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types #=> Array
    #   resp.entity_recognizer_properties.recognizer_metadata.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties.data_access_role_arn #=> String
    #   resp.entity_recognizer_properties.volume_kms_key_id #=> String
    #   resp.entity_recognizer_properties.vpc_config.security_group_ids #=> Array
    #   resp.entity_recognizer_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.entity_recognizer_properties.vpc_config.subnets #=> Array
    #   resp.entity_recognizer_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntityRecognizer AWS API Documentation
    #
    # @overload describe_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def describe_entity_recognizer(params = {}, options = {})
      req = build_request(:describe_entity_recognizer, params)
      req.send_request(options)
    end

    # Gets the properties associated with a key phrases detection job. Use
    # this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribeKeyPhrasesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeyPhrasesDetectionJobResponse#key_phrases_detection_job_properties #key_phrases_detection_job_properties} => Types::KeyPhrasesDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_key_phrases_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_phrases_detection_job_properties.job_id #=> String
    #   resp.key_phrases_detection_job_properties.job_name #=> String
    #   resp.key_phrases_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.key_phrases_detection_job_properties.message #=> String
    #   resp.key_phrases_detection_job_properties.submit_time #=> Time
    #   resp.key_phrases_detection_job_properties.end_time #=> Time
    #   resp.key_phrases_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.key_phrases_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.key_phrases_detection_job_properties.data_access_role_arn #=> String
    #   resp.key_phrases_detection_job_properties.volume_kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.key_phrases_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.key_phrases_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.key_phrases_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeKeyPhrasesDetectionJob AWS API Documentation
    #
    # @overload describe_key_phrases_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_key_phrases_detection_job(params = {}, options = {})
      req = build_request(:describe_key_phrases_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a sentiment detection job. Use
    # this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #
    # @return [Types::DescribeSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSentimentDetectionJobResponse#sentiment_detection_job_properties #sentiment_detection_job_properties} => Types::SentimentDetectionJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sentiment_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sentiment_detection_job_properties.job_id #=> String
    #   resp.sentiment_detection_job_properties.job_name #=> String
    #   resp.sentiment_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.sentiment_detection_job_properties.message #=> String
    #   resp.sentiment_detection_job_properties.submit_time #=> Time
    #   resp.sentiment_detection_job_properties.end_time #=> Time
    #   resp.sentiment_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.sentiment_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.sentiment_detection_job_properties.language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.sentiment_detection_job_properties.data_access_role_arn #=> String
    #   resp.sentiment_detection_job_properties.volume_kms_key_id #=> String
    #   resp.sentiment_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.sentiment_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.sentiment_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.sentiment_detection_job_properties.vpc_config.subnets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeSentimentDetectionJob AWS API Documentation
    #
    # @overload describe_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_sentiment_detection_job(params = {}, options = {})
      req = build_request(:describe_sentiment_detection_job, params)
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
    #   resp.topics_detection_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.topics_detection_job_properties.message #=> String
    #   resp.topics_detection_job_properties.submit_time #=> Time
    #   resp.topics_detection_job_properties.end_time #=> Time
    #   resp.topics_detection_job_properties.input_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties.input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.topics_detection_job_properties.output_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties.output_data_config.kms_key_id #=> String
    #   resp.topics_detection_job_properties.number_of_topics #=> Integer
    #   resp.topics_detection_job_properties.data_access_role_arn #=> String
    #   resp.topics_detection_job_properties.volume_kms_key_id #=> String
    #   resp.topics_detection_job_properties.vpc_config.security_group_ids #=> Array
    #   resp.topics_detection_job_properties.vpc_config.security_group_ids[0] #=> String
    #   resp.topics_detection_job_properties.vpc_config.subnets #=> Array
    #   resp.topics_detection_job_properties.vpc_config.subnets[0] #=> String
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
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html
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

    # Inspects text for named entities, and returns information about them.
    # For more information, about named entities, see how-entities.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
    #
    # @return [Types::DetectEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectEntitiesResponse#entities #entities} => Array&lt;Types::Entity&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
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
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
    #
    # @return [Types::DetectKeyPhrasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectKeyPhrasesResponse#key_phrases #key_phrases} => Array&lt;Types::KeyPhrase&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_key_phrases({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
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
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
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
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
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

    # Inspects text for syntax and the part of speech of words in the
    # document. For more information, how-syntax.
    #
    # @option params [required, String] :text
    #   A UTF-8 string. Each string must contain fewer that 5,000 bytes of UTF
    #   encoded characters.
    #
    # @option params [required, String] :language_code
    #   The language code of the input documents. You can specify English
    #   ("en") or Spanish ("es").
    #
    # @return [Types::DetectSyntaxResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectSyntaxResponse#syntax_tokens #syntax_tokens} => Array&lt;Types::SyntaxToken&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_syntax({
    #     text: "String", # required
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #   })
    #
    # @example Response structure
    #
    #   resp.syntax_tokens #=> Array
    #   resp.syntax_tokens[0].token_id #=> Integer
    #   resp.syntax_tokens[0].text #=> String
    #   resp.syntax_tokens[0].begin_offset #=> Integer
    #   resp.syntax_tokens[0].end_offset #=> Integer
    #   resp.syntax_tokens[0].part_of_speech.tag #=> String, one of "ADJ", "ADP", "ADV", "AUX", "CONJ", "CCONJ", "DET", "INTJ", "NOUN", "NUM", "O", "PART", "PRON", "PROPN", "PUNCT", "SCONJ", "SYM", "VERB"
    #   resp.syntax_tokens[0].part_of_speech.score #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntax AWS API Documentation
    #
    # @overload detect_syntax(params = {})
    # @param [Hash] params ({})
    def detect_syntax(params = {}, options = {})
      req = build_request(:detect_syntax, params)
      req.send_request(options)
    end

    # Gets a list of the documentation classification jobs that you have
    # submitted.
    #
    # @option params [Types::DocumentClassificationJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   names, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListDocumentClassificationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentClassificationJobsResponse#document_classification_job_properties_list #document_classification_job_properties_list} => Array&lt;Types::DocumentClassificationJobProperties&gt;
    #   * {Types::ListDocumentClassificationJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classification_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classification_job_properties_list #=> Array
    #   resp.document_classification_job_properties_list[0].job_id #=> String
    #   resp.document_classification_job_properties_list[0].job_name #=> String
    #   resp.document_classification_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.document_classification_job_properties_list[0].message #=> String
    #   resp.document_classification_job_properties_list[0].submit_time #=> Time
    #   resp.document_classification_job_properties_list[0].end_time #=> Time
    #   resp.document_classification_job_properties_list[0].document_classifier_arn #=> String
    #   resp.document_classification_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.document_classification_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.document_classification_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.document_classification_job_properties_list[0].data_access_role_arn #=> String
    #   resp.document_classification_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.document_classification_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.document_classification_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.document_classification_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.document_classification_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassificationJobs AWS API Documentation
    #
    # @overload list_document_classification_jobs(params = {})
    # @param [Hash] params ({})
    def list_document_classification_jobs(params = {}, options = {})
      req = build_request(:list_document_classification_jobs, params)
      req.send_request(options)
    end

    # Gets a list of the document classifiers that you have created.
    #
    # @option params [Types::DocumentClassifierFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListDocumentClassifiersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDocumentClassifiersResponse#document_classifier_properties_list #document_classifier_properties_list} => Array&lt;Types::DocumentClassifierProperties&gt;
    #   * {Types::ListDocumentClassifiersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_document_classifiers({
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.document_classifier_properties_list #=> Array
    #   resp.document_classifier_properties_list[0].document_classifier_arn #=> String
    #   resp.document_classifier_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.document_classifier_properties_list[0].status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"
    #   resp.document_classifier_properties_list[0].message #=> String
    #   resp.document_classifier_properties_list[0].submit_time #=> Time
    #   resp.document_classifier_properties_list[0].end_time #=> Time
    #   resp.document_classifier_properties_list[0].training_start_time #=> Time
    #   resp.document_classifier_properties_list[0].training_end_time #=> Time
    #   resp.document_classifier_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.document_classifier_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.document_classifier_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.document_classifier_properties_list[0].classifier_metadata.number_of_labels #=> Integer
    #   resp.document_classifier_properties_list[0].classifier_metadata.number_of_trained_documents #=> Integer
    #   resp.document_classifier_properties_list[0].classifier_metadata.number_of_test_documents #=> Integer
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.accuracy #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.precision #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.recall #=> Float
    #   resp.document_classifier_properties_list[0].classifier_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.document_classifier_properties_list[0].data_access_role_arn #=> String
    #   resp.document_classifier_properties_list[0].volume_kms_key_id #=> String
    #   resp.document_classifier_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.document_classifier_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.document_classifier_properties_list[0].vpc_config.subnets #=> Array
    #   resp.document_classifier_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifiers AWS API Documentation
    #
    # @overload list_document_classifiers(params = {})
    # @param [Hash] params ({})
    def list_document_classifiers(params = {}, options = {})
      req = build_request(:list_document_classifiers, params)
      req.send_request(options)
    end

    # Gets a list of the dominant language detection jobs that you have
    # submitted.
    #
    # @option params [Types::DominantLanguageDetectionJobFilter] :filter
    #   Filters that jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListDominantLanguageDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDominantLanguageDetectionJobsResponse#dominant_language_detection_job_properties_list #dominant_language_detection_job_properties_list} => Array&lt;Types::DominantLanguageDetectionJobProperties&gt;
    #   * {Types::ListDominantLanguageDetectionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dominant_language_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dominant_language_detection_job_properties_list #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].job_id #=> String
    #   resp.dominant_language_detection_job_properties_list[0].job_name #=> String
    #   resp.dominant_language_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.dominant_language_detection_job_properties_list[0].message #=> String
    #   resp.dominant_language_detection_job_properties_list[0].submit_time #=> Time
    #   resp.dominant_language_detection_job_properties_list[0].end_time #=> Time
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.dominant_language_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.dominant_language_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.dominant_language_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.dominant_language_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDominantLanguageDetectionJobs AWS API Documentation
    #
    # @overload list_dominant_language_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_dominant_language_detection_jobs(params = {}, options = {})
      req = build_request(:list_dominant_language_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of the entity detection jobs that you have submitted.
    #
    # @option params [Types::EntitiesDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListEntitiesDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesDetectionJobsResponse#entities_detection_job_properties_list #entities_detection_job_properties_list} => Array&lt;Types::EntitiesDetectionJobProperties&gt;
    #   * {Types::ListEntitiesDetectionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities_detection_job_properties_list #=> Array
    #   resp.entities_detection_job_properties_list[0].job_id #=> String
    #   resp.entities_detection_job_properties_list[0].job_name #=> String
    #   resp.entities_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.entities_detection_job_properties_list[0].message #=> String
    #   resp.entities_detection_job_properties_list[0].submit_time #=> Time
    #   resp.entities_detection_job_properties_list[0].end_time #=> Time
    #   resp.entities_detection_job_properties_list[0].entity_recognizer_arn #=> String
    #   resp.entities_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.entities_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.entities_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.entities_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.entities_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.entities_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.entities_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.entities_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.entities_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.entities_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntitiesDetectionJobs AWS API Documentation
    #
    # @overload list_entities_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_entities_detection_jobs(params = {}, options = {})
      req = build_request(:list_entities_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of the properties of all entity recognizers that you
    # created, including recognizers currently in training. Allows you to
    # filter the list of recognizers based on criteria such as status and
    # submission time. This call returns up to 500 entity recognizers in the
    # list, with a default number of 100 recognizers in the list.
    #
    # The results of this list are not in any particular order. Please get
    # the list and sort locally if needed.
    #
    # @option params [Types::EntityRecognizerFilter] :filter
    #   Filters the list of entities returned. You can filter on `Status`,
    #   `SubmitTimeBefore`, or `SubmitTimeAfter`. You can only set one filter
    #   at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #
    # @return [Types::ListEntityRecognizersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntityRecognizersResponse#entity_recognizer_properties_list #entity_recognizer_properties_list} => Array&lt;Types::EntityRecognizerProperties&gt;
    #   * {Types::ListEntityRecognizersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_recognizers({
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_recognizer_properties_list #=> Array
    #   resp.entity_recognizer_properties_list[0].entity_recognizer_arn #=> String
    #   resp.entity_recognizer_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.entity_recognizer_properties_list[0].status #=> String, one of "SUBMITTED", "TRAINING", "DELETING", "STOP_REQUESTED", "STOPPED", "IN_ERROR", "TRAINED"
    #   resp.entity_recognizer_properties_list[0].message #=> String
    #   resp.entity_recognizer_properties_list[0].submit_time #=> Time
    #   resp.entity_recognizer_properties_list[0].end_time #=> Time
    #   resp.entity_recognizer_properties_list[0].training_start_time #=> Time
    #   resp.entity_recognizer_properties_list[0].training_end_time #=> Time
    #   resp.entity_recognizer_properties_list[0].input_data_config.entity_types #=> Array
    #   resp.entity_recognizer_properties_list[0].input_data_config.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.documents.s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.annotations.s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].input_data_config.entity_list.s3_uri #=> String
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.number_of_trained_documents #=> Integer
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.number_of_test_documents #=> Integer
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.precision #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.recall #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.evaluation_metrics.f1_score #=> Float
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types #=> Array
    #   resp.entity_recognizer_properties_list[0].recognizer_metadata.entity_types[0].type #=> String
    #   resp.entity_recognizer_properties_list[0].data_access_role_arn #=> String
    #   resp.entity_recognizer_properties_list[0].volume_kms_key_id #=> String
    #   resp.entity_recognizer_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.entity_recognizer_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.entity_recognizer_properties_list[0].vpc_config.subnets #=> Array
    #   resp.entity_recognizer_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizers AWS API Documentation
    #
    # @overload list_entity_recognizers(params = {})
    # @param [Hash] params ({})
    def list_entity_recognizers(params = {}, options = {})
      req = build_request(:list_entity_recognizers, params)
      req.send_request(options)
    end

    # Get a list of key phrase detection jobs that you have submitted.
    #
    # @option params [Types::KeyPhrasesDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListKeyPhrasesDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeyPhrasesDetectionJobsResponse#key_phrases_detection_job_properties_list #key_phrases_detection_job_properties_list} => Array&lt;Types::KeyPhrasesDetectionJobProperties&gt;
    #   * {Types::ListKeyPhrasesDetectionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_key_phrases_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key_phrases_detection_job_properties_list #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].job_id #=> String
    #   resp.key_phrases_detection_job_properties_list[0].job_name #=> String
    #   resp.key_phrases_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.key_phrases_detection_job_properties_list[0].message #=> String
    #   resp.key_phrases_detection_job_properties_list[0].submit_time #=> Time
    #   resp.key_phrases_detection_job_properties_list[0].end_time #=> Time
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.key_phrases_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.key_phrases_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.key_phrases_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.key_phrases_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.key_phrases_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListKeyPhrasesDetectionJobs AWS API Documentation
    #
    # @overload list_key_phrases_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_key_phrases_detection_jobs(params = {}, options = {})
      req = build_request(:list_key_phrases_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of sentiment detection jobs that you have submitted.
    #
    # @option params [Types::SentimentDetectionJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs on their name,
    #   status, or the date and time that they were submitted. You can only
    #   set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListSentimentDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSentimentDetectionJobsResponse#sentiment_detection_job_properties_list #sentiment_detection_job_properties_list} => Array&lt;Types::SentimentDetectionJobProperties&gt;
    #   * {Types::ListSentimentDetectionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sentiment_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.sentiment_detection_job_properties_list #=> Array
    #   resp.sentiment_detection_job_properties_list[0].job_id #=> String
    #   resp.sentiment_detection_job_properties_list[0].job_name #=> String
    #   resp.sentiment_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.sentiment_detection_job_properties_list[0].message #=> String
    #   resp.sentiment_detection_job_properties_list[0].submit_time #=> Time
    #   resp.sentiment_detection_job_properties_list[0].end_time #=> Time
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.sentiment_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.sentiment_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.sentiment_detection_job_properties_list[0].language_code #=> String, one of "en", "es", "fr", "de", "it", "pt"
    #   resp.sentiment_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.sentiment_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.sentiment_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListSentimentDetectionJobs AWS API Documentation
    #
    # @overload list_sentiment_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_sentiment_detection_jobs(params = {}, options = {})
      req = build_request(:list_sentiment_detection_jobs, params)
      req.send_request(options)
    end

    # Lists all tags associated with a given Amazon Comprehend resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
    #   you are querying.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ComprehendArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
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
    #   The maximum number of results to return in each page. The default is
    #   100.
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
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
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
    #   resp.topics_detection_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.topics_detection_job_properties_list[0].message #=> String
    #   resp.topics_detection_job_properties_list[0].submit_time #=> Time
    #   resp.topics_detection_job_properties_list[0].end_time #=> Time
    #   resp.topics_detection_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties_list[0].input_data_config.input_format #=> String, one of "ONE_DOC_PER_FILE", "ONE_DOC_PER_LINE"
    #   resp.topics_detection_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.topics_detection_job_properties_list[0].output_data_config.kms_key_id #=> String
    #   resp.topics_detection_job_properties_list[0].number_of_topics #=> Integer
    #   resp.topics_detection_job_properties_list[0].data_access_role_arn #=> String
    #   resp.topics_detection_job_properties_list[0].volume_kms_key_id #=> String
    #   resp.topics_detection_job_properties_list[0].vpc_config.security_group_ids #=> Array
    #   resp.topics_detection_job_properties_list[0].vpc_config.security_group_ids[0] #=> String
    #   resp.topics_detection_job_properties_list[0].vpc_config.subnets #=> Array
    #   resp.topics_detection_job_properties_list[0].vpc_config.subnets[0] #=> String
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

    # Starts an asynchronous document classification job. Use the operation
    # to track the progress of the job.
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) of the document classifier to use to
    #   process the job.
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
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your document
    #   classification job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::StartDocumentClassificationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDocumentClassificationJobResponse#job_id #job_id} => String
    #   * {Types::StartDocumentClassificationJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_classification_job({
    #     job_name: "JobName",
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDocumentClassificationJob AWS API Documentation
    #
    # @overload start_document_classification_job(params = {})
    # @param [Hash] params ({})
    def start_document_classification_job(params = {}, options = {})
      req = build_request(:start_document_classification_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous dominant language detection job for a
    # collection of documents. Use the operation to track the status of a
    # job.
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
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   An identifier for the job.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your dominant
    #   language detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::StartDominantLanguageDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDominantLanguageDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartDominantLanguageDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_dominant_language_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDominantLanguageDetectionJob AWS API Documentation
    #
    # @overload start_dominant_language_detection_job(params = {})
    # @param [Hash] params ({})
    def start_dominant_language_detection_job(params = {}, options = {})
      req = build_request(:start_dominant_language_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous entity detection job for a collection of
    # documents. Use the operation to track the status of a job.
    #
    # This API can be used for either standard entity detection or custom
    # entity recognition. In order to be used for custom entity recognition,
    # the optional `EntityRecognizerArn` must be used in order to provide
    # access to the recognizer being used to detect the custom entity.
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
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the specific entity
    #   recognizer to be used by the `StartEntitiesDetectionJob`. This ARN is
    #   optional and is only used for a custom entity recognition job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language. You can specify any of the languages supported by Amazon
    #   Comprehend: English ("en"), Spanish ("es"), French ("fr"),
    #   German ("de"), Italian ("it"), or Portuguese ("pt"). If custom
    #   entities recognition is used, this parameter is ignored and the
    #   language used for training the model is used instead.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your entity detection
    #   job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::StartEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEntitiesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartEntitiesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_entities_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     entity_recognizer_arn: "EntityRecognizerArn",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJob AWS API Documentation
    #
    # @overload start_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def start_entities_detection_job(params = {}, options = {})
      req = build_request(:start_entities_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous key phrase detection job for a collection of
    # documents. Use the operation to track the status of a job.
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
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your key phrases
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::StartKeyPhrasesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartKeyPhrasesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartKeyPhrasesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_key_phrases_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartKeyPhrasesDetectionJob AWS API Documentation
    #
    # @overload start_key_phrases_detection_job(params = {})
    # @param [Hash] params ({})
    def start_key_phrases_detection_job(params = {}, options = {})
      req = build_request(:start_key_phrases_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous sentiment detection job for a collection of
    # documents. use the operation to track the status of a job.
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
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. You can specify English ("en")
    #   or Spanish ("es"). All documents must be in the same language.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your sentiment
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @return [Types::StartSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSentimentDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StartSentimentDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sentiment_detection_job({
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     language_code: "en", # required, accepts en, es, fr, de, it, pt
    #     client_request_token: "ClientRequestTokenString",
    #     volume_kms_key_id: "KmsKeyId",
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnets: ["SubnetId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartSentimentDetectionJob AWS API Documentation
    #
    # @overload start_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def start_sentiment_detection_job(params = {}, options = {})
      req = build_request(:start_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous topic detection job. Use the
    # `DescribeTopicDetectionJob` operation to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files. The output is a compressed
    #   archive with two files, `topic-terms.csv` that lists the terms
    #   associated with each topic, and `doc-topics.csv` that lists the
    #   documents associated with each topic
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
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
    # @option params [String] :volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    #   uses to encrypt data on the storage volume attached to the ML compute
    #   instance(s) that process the analysis job. The VolumeKmsKeyId can be
    #   either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Configuration parameters for an optional private Virtual Private Cloud
    #   (VPC) containing the resources you are using for your topic detection
    #   job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
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
    #       kms_key_id: "KmsKeyId",
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
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJob AWS API Documentation
    #
    # @overload start_topics_detection_job(params = {})
    # @param [Hash] params ({})
    def start_topics_detection_job(params = {}, options = {})
      req = build_request(:start_topics_detection_job, params)
      req.send_request(options)
    end

    # Stops a dominant language detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the dominant language detection job to stop.
    #
    # @return [Types::StopDominantLanguageDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDominantLanguageDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopDominantLanguageDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_dominant_language_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopDominantLanguageDetectionJob AWS API Documentation
    #
    # @overload stop_dominant_language_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_dominant_language_detection_job(params = {}, options = {})
      req = build_request(:stop_dominant_language_detection_job, params)
      req.send_request(options)
    end

    # Stops an entities detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the entities detection job to stop.
    #
    # @return [Types::StopEntitiesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopEntitiesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopEntitiesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_entities_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEntitiesDetectionJob AWS API Documentation
    #
    # @overload stop_entities_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_entities_detection_job(params = {}, options = {})
      req = build_request(:stop_entities_detection_job, params)
      req.send_request(options)
    end

    # Stops a key phrases detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the key phrases detection job to stop.
    #
    # @return [Types::StopKeyPhrasesDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopKeyPhrasesDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopKeyPhrasesDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_key_phrases_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopKeyPhrasesDetectionJob AWS API Documentation
    #
    # @overload stop_key_phrases_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_key_phrases_detection_job(params = {}, options = {})
      req = build_request(:stop_key_phrases_detection_job, params)
      req.send_request(options)
    end

    # Stops a sentiment detection job in progress.
    #
    # If the job state is `IN_PROGRESS` the job is marked for termination
    # and put into the `STOP_REQUESTED` state. If the job completes before
    # it can be stopped, it is put into the `COMPLETED` state; otherwise the
    # job is be stopped and put into the `STOPPED` state.
    #
    # If the job is in the `COMPLETED` or `FAILED` state when you call the
    # `StopDominantLanguageDetectionJob` operation, the operation returns a
    # 400 Internal Request Exception.
    #
    # When a job is stopped, any documents already processed are written to
    # the output location.
    #
    # @option params [required, String] :job_id
    #   The identifier of the sentiment detection job to stop.
    #
    # @return [Types::StopSentimentDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopSentimentDetectionJobResponse#job_id #job_id} => String
    #   * {Types::StopSentimentDetectionJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_sentiment_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopSentimentDetectionJob AWS API Documentation
    #
    # @overload stop_sentiment_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_sentiment_detection_job(params = {}, options = {})
      req = build_request(:stop_sentiment_detection_job, params)
      req.send_request(options)
    end

    # Stops a document classifier training job while in progress.
    #
    # If the training job state is `TRAINING`, the job is marked for
    # termination and put into the `STOP_REQUESTED` state. If the training
    # job completes before it can be stopped, it is put into the `TRAINED`;
    # otherwise the training job is stopped and put into the `STOPPED` state
    # and the service sends back an HTTP 200 response with an empty HTTP
    # body.
    #
    # @option params [required, String] :document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document classifier
    #   currently being trained.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_document_classifier({
    #     document_classifier_arn: "DocumentClassifierArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingDocumentClassifier AWS API Documentation
    #
    # @overload stop_training_document_classifier(params = {})
    # @param [Hash] params ({})
    def stop_training_document_classifier(params = {}, options = {})
      req = build_request(:stop_training_document_classifier, params)
      req.send_request(options)
    end

    # Stops an entity recognizer training job while in progress.
    #
    # If the training job state is `TRAINING`, the job is marked for
    # termination and put into the `STOP_REQUESTED` state. If the training
    # job completes before it can be stopped, it is put into the `TRAINED`;
    # otherwise the training job is stopped and putted into the `STOPPED`
    # state and the service sends back an HTTP 200 response with an empty
    # HTTP body.
    #
    # @option params [required, String] :entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer
    #   currently being trained.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_training_entity_recognizer({
    #     entity_recognizer_arn: "EntityRecognizerArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingEntityRecognizer AWS API Documentation
    #
    # @overload stop_training_entity_recognizer(params = {})
    # @param [Hash] params ({})
    def stop_training_entity_recognizer(params = {}, options = {})
      req = build_request(:stop_training_entity_recognizer, params)
      req.send_request(options)
    end

    # Associates a specific tag with an Amazon Comprehend resource. A tag is
    # a key-value pair that adds as a metadata to a resource used by Amazon
    # Comprehend. For example, a tag with "Sales" as the key might be
    # added to a resource to indicate its use by the sales department.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
    #   to which you want to associate the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags being associated with a specific Amazon Comprehend resource.
    #   There can be a maximum of 50 tags (both existing and pending)
    #   associated with a specific resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ComprehendArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a specific tag associated with an Amazon Comprehend resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
    #   from which you want to remove the tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The initial part of a key-value pair that forms a tag being removed
    #   from a given resource. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department. Keys must be unique and cannot be duplicated for a
    #   particular resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ComprehendArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_version] = '1.21.0'
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
