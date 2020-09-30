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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:textract)

module Aws::Textract
  # An API client for Textract.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Textract::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :textract

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
    add_plugin(Aws::Plugins::HttpChecksum)
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
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts.
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
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
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
    #     safely be set per-request on the session.
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
    #     request on the session.
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

    # Analyzes an input document for relationships between detected items.
    #
    # The types of information returned are as follows:
    #
    # * Form data (key-value pairs). The related information is returned in
    #   two Block objects, each of type `KEY_VALUE_SET`\: a KEY `Block`
    #   object and a VALUE `Block` object. For example, *Name: Ana Silva
    #   Carolina* contains a key and value. *Name:* is the key. *Ana Silva
    #   Carolina* is the value.
    #
    # * Table and table cell data. A TABLE `Block` object contains
    #   information about a detected table. A CELL `Block` object is
    #   returned for each cell in a table.
    #
    # * Lines and words of text. A LINE `Block` object contains one or more
    #   WORD `Block` objects. All lines and words that are detected in the
    #   document are returned (including text that doesn't have a
    #   relationship with the value of `FeatureTypes`).
    #
    # Selection elements such as check boxes and option buttons (radio
    # buttons) can be detected in form data and in tables. A
    # SELECTION\_ELEMENT `Block` object contains information about a
    # selection element, including the selection status.
    #
    # You can choose which type of analysis to perform by specifying the
    # `FeatureTypes` list.
    #
    # The output is returned in a list of `Block` objects.
    #
    # `AnalyzeDocument` is a synchronous operation. To analyze documents
    # asynchronously, use StartDocumentAnalysis.
    #
    # For more information, see [Document Text Analysis][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html
    #
    # @option params [required, Types::Document] :document
    #   The input document as base64-encoded bytes or an Amazon S3 object. If
    #   you use the AWS CLI to call Amazon Textract operations, you can't
    #   pass image bytes. The document must be an image in JPEG or PNG format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #
    # @option params [required, Array<String>] :feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list to
    #   return information about the tables that are detected in the input
    #   document. Add FORMS to return detected form data. To perform both
    #   types of analysis, add TABLES and FORMS to `FeatureTypes`. All lines
    #   and words detected in the document are included in the response
    #   (including text that isn't related to the value of `FeatureTypes`).
    #
    # @option params [Types::HumanLoopConfig] :human_loop_config
    #   Sets the configuration for the human in the loop workflow for
    #   analyzing documents.
    #
    # @return [Types::AnalyzeDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AnalyzeDocumentResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::AnalyzeDocumentResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::AnalyzeDocumentResponse#human_loop_activation_output #human_loop_activation_output} => Types::HumanLoopActivationOutput
    #   * {Types::AnalyzeDocumentResponse#analyze_document_model_version #analyze_document_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_document({
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     feature_types: ["TABLES"], # required, accepts TABLES, FORMS
    #     human_loop_config: {
    #       human_loop_name: "HumanLoopName", # required
    #       flow_definition_arn: "FlowDefinitionArn", # required
    #       data_attributes: {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.human_loop_activation_output.human_loop_arn #=> String
    #   resp.human_loop_activation_output.human_loop_activation_reasons #=> Array
    #   resp.human_loop_activation_output.human_loop_activation_reasons[0] #=> String
    #   resp.human_loop_activation_output.human_loop_activation_conditions_evaluation_results #=> String
    #   resp.analyze_document_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeDocument AWS API Documentation
    #
    # @overload analyze_document(params = {})
    # @param [Hash] params ({})
    def analyze_document(params = {}, options = {})
      req = build_request(:analyze_document, params)
      req.send_request(options)
    end

    # Detects text in the input document. Amazon Textract can detect lines
    # of text and the words that make up a line of text. The input document
    # must be an image in JPEG or PNG format. `DetectDocumentText` returns
    # the detected text in an array of Block objects.
    #
    # Each document page has as an associated `Block` of type PAGE. Each
    # PAGE `Block` object is the parent of LINE `Block` objects that
    # represent the lines of detected text on a page. A LINE `Block` object
    # is a parent for each word that makes up the line. Words are
    # represented by `Block` objects of type WORD.
    #
    # `DetectDocumentText` is a synchronous operation. To analyze documents
    # asynchronously, use StartDocumentTextDetection.
    #
    # For more information, see [Document Text Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html
    #
    # @option params [required, Types::Document] :document
    #   The input document as base64-encoded bytes or an Amazon S3 object. If
    #   you use the AWS CLI to call Amazon Textract operations, you can't
    #   pass image bytes. The document must be an image in JPEG or PNG format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #
    # @return [Types::DetectDocumentTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectDocumentTextResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::DetectDocumentTextResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::DetectDocumentTextResponse#detect_document_text_model_version #detect_document_text_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_document_text({
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.detect_document_text_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DetectDocumentText AWS API Documentation
    #
    # @overload detect_document_text(params = {})
    # @param [Hash] params ({})
    def detect_document_text(params = {}, options = {})
      req = build_request(:detect_document_text, params)
      req.send_request(options)
    end

    # Gets the results for an Amazon Textract asynchronous operation that
    # analyzes text in a document.
    #
    # You start asynchronous text analysis by calling StartDocumentAnalysis,
    # which returns a job identifier (`JobId`). When the text analysis
    # operation finishes, Amazon Textract publishes a completion status to
    # the Amazon Simple Notification Service (Amazon SNS) topic that's
    # registered in the initial call to `StartDocumentAnalysis`. To get the
    # results of the text-detection operation, first check that the status
    # value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
    # `GetDocumentAnalysis`, and pass the job identifier (`JobId`) from the
    # initial call to `StartDocumentAnalysis`.
    #
    # `GetDocumentAnalysis` returns an array of Block objects. The following
    # types of information are returned:
    #
    # * Form data (key-value pairs). The related information is returned in
    #   two Block objects, each of type `KEY_VALUE_SET`\: a KEY `Block`
    #   object and a VALUE `Block` object. For example, *Name: Ana Silva
    #   Carolina* contains a key and value. *Name:* is the key. *Ana Silva
    #   Carolina* is the value.
    #
    # * Table and table cell data. A TABLE `Block` object contains
    #   information about a detected table. A CELL `Block` object is
    #   returned for each cell in a table.
    #
    # * Lines and words of text. A LINE `Block` object contains one or more
    #   WORD `Block` objects. All lines and words that are detected in the
    #   document are returned (including text that doesn't have a
    #   relationship with the value of the `StartDocumentAnalysis`
    #   `FeatureTypes` input parameter).
    #
    # Selection elements such as check boxes and option buttons (radio
    # buttons) can be detected in form data and in tables. A
    # SELECTION\_ELEMENT `Block` object contains information about a
    # selection element, including the selection status.
    #
    # Use the `MaxResults` parameter to limit the number of blocks that are
    # returned. If there are more results than specified in `MaxResults`,
    # the value of `NextToken` in the operation response contains a
    # pagination token for getting the next set of results. To get the next
    # page of results, call `GetDocumentAnalysis`, and populate the
    # `NextToken` request parameter with the token value that's returned
    # from the previous call to `GetDocumentAnalysis`.
    #
    # For more information, see [Document Text Analysis][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the text-detection job. The `JobId` is
    #   returned from `StartDocumentAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value that you can specify is 1,000. If you specify a value
    #   greater than 1,000, a maximum of 1,000 results is returned. The
    #   default value is 1,000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more blocks
    #   to retrieve), Amazon Textract returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of blocks.
    #
    # @return [Types::GetDocumentAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentAnalysisResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetDocumentAnalysisResponse#job_status #job_status} => String
    #   * {Types::GetDocumentAnalysisResponse#next_token #next_token} => String
    #   * {Types::GetDocumentAnalysisResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::GetDocumentAnalysisResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetDocumentAnalysisResponse#status_message #status_message} => String
    #   * {Types::GetDocumentAnalysisResponse#analyze_document_model_version #analyze_document_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_analysis({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.next_token #=> String
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.analyze_document_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentAnalysis AWS API Documentation
    #
    # @overload get_document_analysis(params = {})
    # @param [Hash] params ({})
    def get_document_analysis(params = {}, options = {})
      req = build_request(:get_document_analysis, params)
      req.send_request(options)
    end

    # Gets the results for an Amazon Textract asynchronous operation that
    # detects text in a document. Amazon Textract can detect lines of text
    # and the words that make up a line of text.
    #
    # You start asynchronous text detection by calling
    # StartDocumentTextDetection, which returns a job identifier (`JobId`).
    # When the text detection operation finishes, Amazon Textract publishes
    # a completion status to the Amazon Simple Notification Service (Amazon
    # SNS) topic that's registered in the initial call to
    # `StartDocumentTextDetection`. To get the results of the text-detection
    # operation, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call `GetDocumentTextDetection`, and
    # pass the job identifier (`JobId`) from the initial call to
    # `StartDocumentTextDetection`.
    #
    # `GetDocumentTextDetection` returns an array of Block objects.
    #
    # Each document page has as an associated `Block` of type PAGE. Each
    # PAGE `Block` object is the parent of LINE `Block` objects that
    # represent the lines of detected text on a page. A LINE `Block` object
    # is a parent for each word that makes up the line. Words are
    # represented by `Block` objects of type WORD.
    #
    # Use the MaxResults parameter to limit the number of blocks that are
    # returned. If there are more results than specified in `MaxResults`,
    # the value of `NextToken` in the operation response contains a
    # pagination token for getting the next set of results. To get the next
    # page of results, call `GetDocumentTextDetection`, and populate the
    # `NextToken` request parameter with the token value that's returned
    # from the previous call to `GetDocumentTextDetection`.
    #
    # For more information, see [Document Text Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the text detection job. The `JobId` is
    #   returned from `StartDocumentTextDetection`. A `JobId` value is only
    #   valid for 7 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 1,000. If you specify a value greater
    #   than 1,000, a maximum of 1,000 results is returned. The default value
    #   is 1,000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more blocks
    #   to retrieve), Amazon Textract returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of blocks.
    #
    # @return [Types::GetDocumentTextDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentTextDetectionResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetDocumentTextDetectionResponse#job_status #job_status} => String
    #   * {Types::GetDocumentTextDetectionResponse#next_token #next_token} => String
    #   * {Types::GetDocumentTextDetectionResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::GetDocumentTextDetectionResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetDocumentTextDetectionResponse#status_message #status_message} => String
    #   * {Types::GetDocumentTextDetectionResponse#detect_document_text_model_version #detect_document_text_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_text_detection({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.next_token #=> String
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.detect_document_text_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentTextDetection AWS API Documentation
    #
    # @overload get_document_text_detection(params = {})
    # @param [Hash] params ({})
    def get_document_text_detection(params = {}, options = {})
      req = build_request(:get_document_text_detection, params)
      req.send_request(options)
    end

    # Starts the asynchronous analysis of an input document for
    # relationships between detected items such as key-value pairs, tables,
    # and selection elements.
    #
    # `StartDocumentAnalysis` can analyze text in documents that are in
    # JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
    # bucket. Use DocumentLocation to specify the bucket name and file name
    # of the document.
    #
    # `StartDocumentAnalysis` returns a job identifier (`JobId`) that you
    # use to get the results of the operation. When text analysis is
    # finished, Amazon Textract publishes a completion status to the Amazon
    # Simple Notification Service (Amazon SNS) topic that you specify in
    # `NotificationChannel`. To get the results of the text analysis
    # operation, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call GetDocumentAnalysis, and pass
    # the job identifier (`JobId`) from the initial call to
    # `StartDocumentAnalysis`.
    #
    # For more information, see [Document Text Analysis][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html
    #
    # @option params [required, Types::DocumentLocation] :document_location
    #   The location of the document to be processed.
    #
    # @option params [required, Array<String>] :feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list to
    #   return information about the tables that are detected in the input
    #   document. Add FORMS to return detected form data. To perform both
    #   types of analysis, add TABLES and FORMS to `FeatureTypes`. All lines
    #   and words detected in the document are included in the response
    #   (including text that isn't related to the value of `FeatureTypes`).
    #
    # @option params [String] :client_request_token
    #   The idempotent token that you use to identify the start request. If
    #   you use the same token with multiple `StartDocumentAnalysis` requests,
    #   the same `JobId` is returned. Use `ClientRequestToken` to prevent the
    #   same job from being accidentally started more than once. For more
    #   information, see [Calling Amazon Textract Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #
    # @option params [String] :job_tag
    #   An identifier that you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish the
    #   completion status of the operation to.
    #
    # @option params [Types::OutputConfig] :output_config
    #   Sets if the output will go to a customer defined bucket. By default,
    #   Amazon Textract will save the results internally to be accessed by the
    #   GetDocumentAnalysis operation.
    #
    # @return [Types::StartDocumentAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDocumentAnalysisResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_analysis({
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     feature_types: ["TABLES"], # required, accepts TABLES, FORMS
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentAnalysis AWS API Documentation
    #
    # @overload start_document_analysis(params = {})
    # @param [Hash] params ({})
    def start_document_analysis(params = {}, options = {})
      req = build_request(:start_document_analysis, params)
      req.send_request(options)
    end

    # Starts the asynchronous detection of text in a document. Amazon
    # Textract can detect lines of text and the words that make up a line of
    # text.
    #
    # `StartDocumentTextDetection` can analyze text in documents that are in
    # JPEG, PNG, and PDF format. The documents are stored in an Amazon S3
    # bucket. Use DocumentLocation to specify the bucket name and file name
    # of the document.
    #
    # `StartTextDetection` returns a job identifier (`JobId`) that you use
    # to get the results of the operation. When text detection is finished,
    # Amazon Textract publishes a completion status to the Amazon Simple
    # Notification Service (Amazon SNS) topic that you specify in
    # `NotificationChannel`. To get the results of the text detection
    # operation, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call GetDocumentTextDetection, and
    # pass the job identifier (`JobId`) from the initial call to
    # `StartDocumentTextDetection`.
    #
    # For more information, see [Document Text Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html
    #
    # @option params [required, Types::DocumentLocation] :document_location
    #   The location of the document to be processed.
    #
    # @option params [String] :client_request_token
    #   The idempotent token that's used to identify the start request. If
    #   you use the same token with multiple `StartDocumentTextDetection`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #
    # @option params [String] :job_tag
    #   An identifier that you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish the
    #   completion status of the operation to.
    #
    # @option params [Types::OutputConfig] :output_config
    #   Sets if the output will go to a customer defined bucket. By default
    #   Amazon Textract will save the results internally to be accessed with
    #   the GetDocumentTextDetection operation.
    #
    # @return [Types::StartDocumentTextDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDocumentTextDetectionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_text_detection({
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentTextDetection AWS API Documentation
    #
    # @overload start_document_text_detection(params = {})
    # @param [Hash] params ({})
    def start_document_text_detection(params = {}, options = {})
      req = build_request(:start_document_text_detection, params)
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
      context[:gem_name] = 'aws-sdk-textract'
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
