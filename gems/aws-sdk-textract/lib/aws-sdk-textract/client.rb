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
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:textract)

module Aws::Textract
  # An API client for Aws::Textract.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Textract
    @identifier = :textract

    add_plugin(::Aws::Textract::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Textract::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
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

    # <p>Analyzes an input document for relationships between detected items. </p>
    #          <p>The types of information returned are as follows: </p>
    #          <ul>
    #             <li>
    #                <p>Form data (key-value pairs). The related information is returned in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a KEY
    #                   <code>Block</code> object and a VALUE <code>Block</code> object. For example,
    #                   <i>Name: Ana Silva Carolina</i> contains a key and value.
    #                   <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is
    #                the value.</p>
    #             </li>
    #             <li>
    #                <p>Table and table cell data. A TABLE <code>Block</code> object contains information
    #                about a detected table. A CELL <code>Block</code> object is returned for each cell in
    #                a table.</p>
    #             </li>
    #             <li>
    #                <p>Lines and words of text. A LINE <code>Block</code> object contains one or more
    #                WORD <code>Block</code> objects. All lines and words that are detected in the
    #                document are returned (including text that doesn't have a relationship with the value
    #                of <code>FeatureTypes</code>). </p>
    #             </li>
    #             <li>
    #                <p>Signatures. A SIGNATURE <code>Block</code> object contains the location information
    #                of a signature in a document. If used in conjunction with forms or tables, a signature
    #                can be given a Key-Value pairing or be detected in the cell of a table.</p>
    #             </li>
    #             <li>
    #                <p>Query. A QUERY Block object contains the query text, alias and link to the
    #                associated Query results block object.</p>
    #             </li>
    #             <li>
    #                <p>Query Result. A QUERY_RESULT Block object contains the answer to the query and an
    #                ID that connects it to the query asked. This Block also contains a confidence
    #                score.</p>
    #             </li>
    #          </ul>
    #          <p>Selection elements such as check boxes and option buttons (radio buttons) can be
    #          detected in form data and in tables. A SELECTION_ELEMENT <code>Block</code> object contains
    #          information about a selection element, including the selection status.</p>
    #          <p>You can choose which type of analysis to perform by specifying the
    #             <code>FeatureTypes</code> list. </p>
    #          <p>The output is returned in a list of <code>Block</code> objects.</p>
    #          <p>
    #             <code>AnalyzeDocument</code> is a synchronous operation. To analyze documents
    #          asynchronously, use <a>StartDocumentAnalysis</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document Text
    #          Analysis</a>.</p>
    # @param [Hash, Types::AnalyzeDocumentRequest] params
    # @option params [Types::Document] :document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS
    #            CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an
    #            image in JPEG, PNG, PDF, or TIFF format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    # @option params [Array<String>] :feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected form
    #            data. Add SIGNATURES to return the locations of detected signatures. Add LAYOUT to the list
    #            to return information about the layout of the document.  All lines and words detected in the document are included in the response (including
    #            text that isn't related to the value of <code>FeatureTypes</code>). </p>
    # @option params [Types::HumanLoopConfig] :human_loop_config
    #   <p>Sets the configuration for the human in the loop workflow for analyzing
    #            documents.</p>
    # @option params [Types::QueriesConfig] :queries_config
    #   <p>Contains Queries and the alias for those Queries, as determined by the input. </p>
    # @option params [Types::AdaptersConfig] :adapters_config
    #   <p>Specifies the adapter to be used when analyzing a document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]], # required
    #     human_loop_config: {
    #       human_loop_name: "HumanLoopName", # required
    #       flow_definition_arn: "FlowDefinitionArn", # required
    #       data_attributes: {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation" # One of: ["FreeOfPersonallyIdentifiableInformation", "FreeOfAdultContent"]]
    #       }
    #     },
    #     queries_config: {
    #       queries: [ # required
    #         {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"]
    #         }
    #       ]
    #     },
    #     adapters_config: {
    #       adapters: [ # required
    #         {
    #           adapter_id: "AdapterId", # required
    #           pages: ["AdapterPage"],
    #           version: "AdapterVersion", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.analyze_document(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     blocks: [
    #       {
    #         block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #         confidence: 1.0,
    #         text: "String",
    #         text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #         row_index: 1,
    #         column_index: 1,
    #         row_span: 1,
    #         column_span: 1,
    #         geometry: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           rotation_angle: 1.0
    #         },
    #         id: "NonEmptyString",
    #         relationships: [
    #           {
    #             type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #             ids: ["NonEmptyString"]
    #           }
    #         ],
    #         entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #         selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #         page: 1,
    #         query: {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"]
    #         }
    #       }
    #     ],
    #     human_loop_activation_output: {
    #       human_loop_arn: "HumanLoopArn",
    #       human_loop_activation_reasons: ["HumanLoopActivationReason"],
    #       human_loop_activation_conditions_evaluation_results: "SynthesizedJsonHumanLoopActivationConditionsEvaluationResults"
    #     },
    #     analyze_document_model_version: "String"
    #   }
    # @return [Types::AnalyzeDocumentResponse]
    def analyze_document(params = {}, options = {})
      request = build_request(:analyze_document, params)
      request.send_request(options)
    end

    # <p>
    #             <code>AnalyzeExpense</code> synchronously analyzes an input document for financially
    #          related relationships between text.</p>
    #          <p>Information is returned as <code>ExpenseDocuments</code> and seperated as
    #          follows:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LineItemGroups</code>- A data set containing <code>LineItems</code> which
    #                store information about the lines of text, such as an item purchased and its price on
    #                a receipt.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SummaryFields</code>- Contains all other information a receipt, such as
    #                header information or the vendors name.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AnalyzeExpenseRequest] params
    # @option params [Types::Document] :document
    #   <p>The input document, either as bytes or as an S3 object.</p>
    #            <p>You pass image bytes to an Amazon Textract API operation by using the <code>Bytes</code>
    #            property. For example, you would use the <code>Bytes</code> property to pass a document
    #            loaded from a local file system. Image bytes passed by using the <code>Bytes</code>
    #            property must be base64 encoded. Your code might not need to encode document file bytes if
    #            you're using an AWS SDK to call Amazon Textract API operations. </p>
    #            <p>You pass images stored in an S3 bucket to an Amazon Textract API operation by using the
    #               <code>S3Object</code> property. Documents stored in an S3 bucket don't need to be base64
    #            encoded.</p>
    #            <p>The AWS Region for the S3 bucket that contains the S3 object must match the AWS
    #            Region that you use for Amazon Textract operations.</p>
    #            <p>If you use the AWS CLI to call Amazon Textract operations, passing image bytes using
    #            the Bytes property isn't supported. You must first upload the document to an Amazon S3
    #            bucket, and then call the operation using the S3Object property.</p>
    #            <p>For Amazon Textract to process an S3 object, the user must have permission
    #            to access the S3 object. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.analyze_expense(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     expense_documents: [
    #       {
    #         expense_index: 1,
    #         summary_fields: [
    #           {
    #             type: {
    #               text: "String",
    #               confidence: 1.0
    #             },
    #             label_detection: {
    #               text: "String",
    #               geometry: {
    #                 bounding_box: {
    #                   width: 1.0,
    #                   height: 1.0,
    #                   left: 1.0,
    #                   top: 1.0
    #                 },
    #                 polygon: [
    #                   {
    #                     x: 1.0,
    #                     y: 1.0
    #                   }
    #                 ],
    #                 rotation_angle: 1.0
    #               },
    #               confidence: 1.0
    #             },
    #             value_detection: {
    #               text: "String",
    #               geometry: {
    #                 bounding_box: {
    #                   width: 1.0,
    #                   height: 1.0,
    #                   left: 1.0,
    #                   top: 1.0
    #                 },
    #                 polygon: [
    #                   {
    #                     x: 1.0,
    #                     y: 1.0
    #                   }
    #                 ],
    #                 rotation_angle: 1.0
    #               },
    #               confidence: 1.0
    #             },
    #             page_number: 1,
    #             currency: {
    #               code: "String",
    #               confidence: 1.0
    #             },
    #             group_properties: [
    #               {
    #                 types: ["String"],
    #                 id: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         line_item_groups: [
    #           {
    #             line_item_group_index: 1,
    #             line_items: [
    #               {
    #                 line_item_expense_fields: [
    #                   {
    #                     type: {
    #                       text: "String",
    #                       confidence: 1.0
    #                     },
    #                     label_detection: {
    #                       text: "String",
    #                       geometry: {
    #                         bounding_box: {
    #                           width: 1.0,
    #                           height: 1.0,
    #                           left: 1.0,
    #                           top: 1.0
    #                         },
    #                         polygon: [
    #                           {
    #                             x: 1.0,
    #                             y: 1.0
    #                           }
    #                         ],
    #                         rotation_angle: 1.0
    #                       },
    #                       confidence: 1.0
    #                     },
    #                     value_detection: {
    #                       text: "String",
    #                       geometry: {
    #                         bounding_box: {
    #                           width: 1.0,
    #                           height: 1.0,
    #                           left: 1.0,
    #                           top: 1.0
    #                         },
    #                         polygon: [
    #                           {
    #                             x: 1.0,
    #                             y: 1.0
    #                           }
    #                         ],
    #                         rotation_angle: 1.0
    #                       },
    #                       confidence: 1.0
    #                     },
    #                     page_number: 1,
    #                     currency: {
    #                       code: "String",
    #                       confidence: 1.0
    #                     },
    #                     group_properties: [
    #                       {
    #                         types: ["String"],
    #                         id: "String"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ],
    #         blocks: [
    #           {
    #             block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #             confidence: 1.0,
    #             text: "String",
    #             text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #             row_index: 1,
    #             column_index: 1,
    #             row_span: 1,
    #             column_span: 1,
    #             geometry: {
    #               bounding_box: {
    #                 width: 1.0,
    #                 height: 1.0,
    #                 left: 1.0,
    #                 top: 1.0
    #               },
    #               polygon: [
    #                 {
    #                   x: 1.0,
    #                   y: 1.0
    #                 }
    #               ],
    #               rotation_angle: 1.0
    #             },
    #             id: "NonEmptyString",
    #             relationships: [
    #               {
    #                 type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #                 ids: ["NonEmptyString"]
    #               }
    #             ],
    #             entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #             selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #             page: 1,
    #             query: {
    #               text: "QueryInput", # required
    #               alias: "QueryInput",
    #               pages: ["QueryPage"]
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::AnalyzeExpenseResponse]
    def analyze_expense(params = {}, options = {})
      request = build_request(:analyze_expense, params)
      request.send_request(options)
    end

    # <p>Analyzes identity documents for relevant information. This information is extracted and
    #          returned as <code>IdentityDocumentFields</code>, which records both the normalized field
    #          and value of the extracted text. Unlike other Amazon Textract operations,
    #             <code>AnalyzeID</code> doesn't return any Geometry data.</p>
    # @param [Hash, Types::AnalyzeIDRequest] params
    # @option params [Array<Types::Document>] :document_pages
    #   <p>The document being passed to AnalyzeID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_pages: [ # required
    #       {
    #         bytes: "data",
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.analyze_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_documents: [
    #       {
    #         document_index: 1,
    #         identity_document_fields: [
    #           {
    #             type: {
    #               text: "String", # required
    #               normalized_value: {
    #                 value: "String",
    #                 value_type: "DATE" # One of: ["DATE"]
    #               },
    #               confidence: 1.0
    #             },
    #             value_detection: {
    #               text: "String", # required
    #               normalized_value: {
    #                 value: "String",
    #                 value_type: "DATE" # One of: ["DATE"]
    #               },
    #               confidence: 1.0
    #             }
    #           }
    #         ],
    #         blocks: [
    #           {
    #             block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #             confidence: 1.0,
    #             text: "String",
    #             text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #             row_index: 1,
    #             column_index: 1,
    #             row_span: 1,
    #             column_span: 1,
    #             geometry: {
    #               bounding_box: {
    #                 width: 1.0,
    #                 height: 1.0,
    #                 left: 1.0,
    #                 top: 1.0
    #               },
    #               polygon: [
    #                 {
    #                   x: 1.0,
    #                   y: 1.0
    #                 }
    #               ],
    #               rotation_angle: 1.0
    #             },
    #             id: "NonEmptyString",
    #             relationships: [
    #               {
    #                 type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #                 ids: ["NonEmptyString"]
    #               }
    #             ],
    #             entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #             selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #             page: 1,
    #             query: {
    #               text: "QueryInput", # required
    #               alias: "QueryInput",
    #               pages: ["QueryPage"]
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     document_metadata: {
    #       pages: 1
    #     },
    #     analyze_id_model_version: "String"
    #   }
    # @return [Types::AnalyzeIDResponse]
    def analyze_id(params = {}, options = {})
      request = build_request(:analyze_id, params)
      request.send_request(options)
    end

    # <p>Creates an adapter, which can be fine-tuned for enhanced performance on user provided
    #          documents. Takes an AdapterName and FeatureType. Currently the only supported feature type
    #          is <code>QUERIES</code>. You can also provide a Description, Tags, and a
    #          ClientRequestToken. You can choose whether or not the adapter should be AutoUpdated with
    #          the AutoUpdate argument. By default, AutoUpdate is set to DISABLED.</p>
    # @param [Hash, Types::CreateAdapterRequest] params
    # @option params [String] :adapter_name
    #   <p>The name to be assigned to the adapter being created.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token is used to recognize the request. If the same token is used with multiple 
    #            CreateAdapter requests, the same session is returned. 
    #            This token is employed to avoid unintentionally creating the same session multiple times.</p>
    # @option params [String] :description
    #   <p>The description to be assigned to the adapter being created.</p>
    # @option params [Array<String>] :feature_types
    #   <p>The type of feature that the adapter is being trained on. Currrenly, supported feature
    #            types are: <code>QUERIES</code>
    #            </p>
    # @option params [String] :auto_update
    #   <p>Controls whether or not the adapter should automatically update.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to be added to the adapter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_name: "AdapterName", # required
    #     client_request_token: "ClientRequestToken",
    #     description: "AdapterDescription",
    #     feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]], # required
    #     auto_update: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_adapter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapter_id: "AdapterId"
    #   }
    # @return [Types::CreateAdapterResponse]
    def create_adapter(params = {}, options = {})
      request = build_request(:create_adapter, params)
      request.send_request(options)
    end

    # <p>Creates  a new version of an adapter. Operates on a provided AdapterId and a specified 
    #          dataset provided via the DatasetConfig argument. Requires that you 
    #          specify an Amazon S3 bucket with the OutputConfig argument. You can provide an optional KMSKeyId, 
    #          an optional ClientRequestToken, and optional tags.</p>
    # @param [Hash, Types::CreateAdapterVersionRequest] params
    # @option params [String] :adapter_id
    #   <p>A string containing a unique ID for the adapter that will receive a new version.</p>
    # @option params [String] :client_request_token
    #   <p>Idempotent token is used to recognize the request. If the same token is used with multiple 
    #            CreateAdapterVersion requests, the same session is returned. 
    #            This token is employed to avoid unintentionally creating the same session multiple times.</p>
    # @option params [Types::AdapterVersionDatasetConfig] :dataset_config
    #   <p>Specifies a dataset used to train a new adapter version. Takes a ManifestS3Object as the
    #            value.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt your documents.</p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #            of the bucket, and the prefix on the output file.</p>
    #            <p>
    #               <code>OutputConfig</code> is an optional parameter which lets you adjust where your
    #            output will be placed. By default, Amazon Textract will store the results internally and can
    #            only be accessed by the Get API operations. With <code>OutputConfig</code> enabled, you can
    #            set the name of the bucket the output will be sent to the file prefix of the results where
    #            you can download your results. Additionally, you can set the <code>KMSKeyID</code>
    #            parameter to a customer master key (CMK) to encrypt your output. Without this parameter set
    #            Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #            <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
    #            is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
    #            the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #            </p>
    #            <p>For more information on data privacy,
    #            see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #               FAQ</a>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags (key-value pairs) that you want to attach to the adapter version. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId", # required
    #     client_request_token: "ClientRequestToken",
    #     dataset_config: { # required
    #       manifest_s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     kms_key_id: "KMSKeyId",
    #     output_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_adapter_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapter_id: "AdapterId",
    #     adapter_version: "AdapterVersion"
    #   }
    # @return [Types::CreateAdapterVersionResponse]
    def create_adapter_version(params = {}, options = {})
      request = build_request(:create_adapter_version, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Textract adapter. Takes an AdapterId and deletes the adapter specified by the ID.</p>
    # @param [Hash, Types::DeleteAdapterRequest] params
    # @option params [String] :adapter_id
    #   <p>A string containing a unique ID for the adapter to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId", # required
    #   }
    #   options = {}
    #   response = client.delete_adapter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAdapterResponse]
    def delete_adapter(params = {}, options = {})
      request = build_request(:delete_adapter, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Textract adapter version. Requires that you specify both an AdapterId and a 
    #          AdapterVersion. Deletes the adapter version specified by the AdapterId and the AdapterVersion.</p>
    # @param [Hash, Types::DeleteAdapterVersionRequest] params
    # @option params [String] :adapter_id
    #   <p>A string containing a unique ID for the adapter version that will be deleted.</p>
    # @option params [String] :adapter_version
    #   <p>Specifies the adapter version to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId", # required
    #     adapter_version: "AdapterVersion", # required
    #   }
    #   options = {}
    #   response = client.delete_adapter_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAdapterVersionResponse]
    def delete_adapter_version(params = {}, options = {})
      request = build_request(:delete_adapter_version, params)
      request.send_request(options)
    end

    # <p>Detects text in the input document. Amazon Textract can detect lines of text and the
    #          words that make up a line of text. The input document must be in one of the following image
    #          formats:  JPEG, PNG, PDF, or TIFF. <code>DetectDocumentText</code> returns the detected
    #          text in an array of <a>Block</a> objects. </p>
    #          <p>Each document page has as an associated <code>Block</code> of type PAGE. Each PAGE <code>Block</code> object
    #          is the parent of LINE <code>Block</code> objects that represent the lines of detected text on a page. A LINE <code>Block</code> object is
    #          a parent for each word that makes up the line. Words are represented by <code>Block</code> objects of type WORD.</p>
    #          <p>
    #             <code>DetectDocumentText</code> is a synchronous operation. To analyze documents 
    #          asynchronously, use <a>StartDocumentTextDetection</a>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document Text Detection</a>.</p>
    # @param [Hash, Types::DetectDocumentTextRequest] params
    # @option params [Types::Document] :document
    #   <p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI
    #            to call Amazon Textract operations, you can't pass image bytes. The document must be an image 
    #         in JPEG or PNG format.</p>
    #            <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode
    #            image bytes that are passed using the <code>Bytes</code> field. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.detect_document_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     blocks: [
    #       {
    #         block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #         confidence: 1.0,
    #         text: "String",
    #         text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #         row_index: 1,
    #         column_index: 1,
    #         row_span: 1,
    #         column_span: 1,
    #         geometry: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           rotation_angle: 1.0
    #         },
    #         id: "NonEmptyString",
    #         relationships: [
    #           {
    #             type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #             ids: ["NonEmptyString"]
    #           }
    #         ],
    #         entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #         selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #         page: 1,
    #         query: {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"]
    #         }
    #       }
    #     ],
    #     detect_document_text_model_version: "String"
    #   }
    # @return [Types::DetectDocumentTextResponse]
    def detect_document_text(params = {}, options = {})
      request = build_request(:detect_document_text, params)
      request.send_request(options)
    end

    # <p>Gets configuration information for an adapter specified by an AdapterId, returning information on AdapterName, Description,
    #          CreationTime, AutoUpdate status, and FeatureTypes.</p>
    # @param [Hash, Types::GetAdapterRequest] params
    # @option params [String] :adapter_id
    #   <p>A string containing a unique ID for the adapter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId", # required
    #   }
    #   options = {}
    #   response = client.get_adapter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapter_id: "AdapterId",
    #     adapter_name: "AdapterName",
    #     creation_time: Time.now,
    #     description: "AdapterDescription",
    #     feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]],
    #     auto_update: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetAdapterResponse]
    def get_adapter(params = {}, options = {})
      request = build_request(:get_adapter, params)
      request.send_request(options)
    end

    # <p>Gets configuration information for the specified adapter version, including: 
    #          AdapterId, AdapterVersion, FeatureTypes, Status, StatusMessage, DatasetConfig, 
    #          KMSKeyId, OutputConfig, Tags and EvaluationMetrics.</p>
    # @param [Hash, Types::GetAdapterVersionRequest] params
    # @option params [String] :adapter_id
    #   <p>A string specifying a unique ID for the adapter version you want to retrieve information for.</p>
    # @option params [String] :adapter_version
    #   <p>A string specifying the adapter version you want to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId", # required
    #     adapter_version: "AdapterVersion", # required
    #   }
    #   options = {}
    #   response = client.get_adapter_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapter_id: "AdapterId",
    #     adapter_version: "AdapterVersion",
    #     creation_time: Time.now,
    #     feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]],
    #     status: "ACTIVE" # One of: ["ACTIVE", "AT_RISK", "DEPRECATED", "CREATION_ERROR", "CREATION_IN_PROGRESS"],
    #     status_message: "AdapterVersionStatusMessage",
    #     dataset_config: {
    #       manifest_s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     kms_key_id: "KMSKeyId",
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName"
    #     },
    #     evaluation_metrics: [
    #       {
    #         baseline: {
    #           f1_score: 1.0,
    #           precision: 1.0,
    #           recall: 1.0
    #         },
    #         adapter_version: {
    #           f1_score: 1.0,
    #           precision: 1.0,
    #           recall: 1.0
    #         },
    #         feature_type: "TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetAdapterVersionResponse]
    def get_adapter_version(params = {}, options = {})
      request = build_request(:get_adapter_version, params)
      request.send_request(options)
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that analyzes text in a
    #          document.</p>
    #          <p>You start asynchronous text analysis by calling <a>StartDocumentAnalysis</a>,
    #          which returns a job identifier (<code>JobId</code>). When the text analysis operation
    #          finishes, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic
    #          that's registered in the initial call to <code>StartDocumentAnalysis</code>. To get the
    #          results of the text-detection operation, first check that the status value published to the
    #          Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <code>GetDocumentAnalysis</code>, and
    #          pass the job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentAnalysis</code>.</p>
    #          <p>
    #             <code>GetDocumentAnalysis</code> returns an array of <a>Block</a> objects.
    #          The following types of information are returned: </p>
    #          <ul>
    #             <li>
    #                <p>Form data (key-value pairs). The related information is returned in two <a>Block</a> objects, each of type <code>KEY_VALUE_SET</code>: a KEY
    #                   <code>Block</code> object and a VALUE <code>Block</code> object. For example,
    #                   <i>Name: Ana Silva Carolina</i> contains a key and value.
    #                   <i>Name:</i> is the key. <i>Ana Silva Carolina</i> is
    #                the value.</p>
    #             </li>
    #             <li>
    #                <p>Table and table cell data. A TABLE <code>Block</code> object contains information
    #                about a detected table. A CELL <code>Block</code> object is returned for each cell in
    #                a table.</p>
    #             </li>
    #             <li>
    #                <p>Lines and words of text. A LINE <code>Block</code> object contains one or more
    #                WORD <code>Block</code> objects. All lines and words that are detected in the
    #                document are returned (including text that doesn't have a relationship with the value
    #                of the <code>StartDocumentAnalysis</code>
    #                   <code>FeatureTypes</code> input parameter). </p>
    #             </li>
    #             <li>
    #                <p>Query. A QUERY Block object contains the query text, alias and link to the
    #                associated Query results block object.</p>
    #             </li>
    #             <li>
    #                <p>Query Results. A QUERY_RESULT Block object contains the answer to the query and an
    #                ID that connects it to the query asked. This Block also contains a confidence
    #                score.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>While processing a document with queries, look out for
    #                <code>INVALID_REQUEST_PARAMETERS</code> output. This indicates that either the per
    #             page query limit has been exceeded or that the operation is trying to query a page in
    #             the document which doesn’t exist. </p>
    #          </note>
    #          <p>Selection elements such as check boxes and option buttons (radio buttons) can be
    #          detected in form data and in tables. A SELECTION_ELEMENT <code>Block</code> object contains
    #          information about a selection element, including the selection status.</p>
    #          <p>Use the <code>MaxResults</code> parameter to limit the number of blocks that are
    #          returned. If there are more results than specified in <code>MaxResults</code>, the value of
    #             <code>NextToken</code> in the operation response contains a pagination token for getting
    #          the next set of results. To get the next page of results, call
    #             <code>GetDocumentAnalysis</code>, and populate the <code>NextToken</code> request
    #          parameter with the token value that's returned from the previous call to
    #             <code>GetDocumentAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document Text
    #          Analysis</a>.</p>
    # @param [Hash, Types::GetDocumentAnalysisRequest] params
    # @option params [String] :job_id
    #   <p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from
    #               <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7
    #            days.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value that you
    #            can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results
    #            is returned. The default value is 1,000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve),
    #            Amazon Textract returns a pagination token in the response. You can use this pagination
    #            token to retrieve the next set of blocks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_document_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"],
    #     next_token: "PaginationToken",
    #     blocks: [
    #       {
    #         block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #         confidence: 1.0,
    #         text: "String",
    #         text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #         row_index: 1,
    #         column_index: 1,
    #         row_span: 1,
    #         column_span: 1,
    #         geometry: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           rotation_angle: 1.0
    #         },
    #         id: "NonEmptyString",
    #         relationships: [
    #           {
    #             type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #             ids: ["NonEmptyString"]
    #           }
    #         ],
    #         entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #         selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #         page: 1,
    #         query: {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"]
    #         }
    #       }
    #     ],
    #     warnings: [
    #       {
    #         error_code: "ErrorCode",
    #         pages: [1]
    #       }
    #     ],
    #     status_message: "StatusMessage",
    #     analyze_document_model_version: "String"
    #   }
    # @return [Types::GetDocumentAnalysisResponse]
    def get_document_analysis(params = {}, options = {})
      request = build_request(:get_document_analysis, params)
      request.send_request(options)
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that detects text in a document. 
    #      Amazon Textract can detect lines of text and the words that make up a line of text.</p>
    #          <p>You start asynchronous text detection by calling <a>StartDocumentTextDetection</a>, which returns a job identifier
    #             (<code>JobId</code>). When the text detection operation finishes, Amazon Textract publishes a
    #          completion status to the Amazon Simple Notification Service (Amazon SNS) topic that's registered in the initial call to
    #             <code>StartDocumentTextDetection</code>. To get the results of the text-detection
    #          operation, first check that the status value published to the Amazon SNS topic is
    #             <code>SUCCEEDED</code>. If so, call <code>GetDocumentTextDetection</code>, and pass the
    #          job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentTextDetection</code>.</p>
    #          <p>
    #             <code>GetDocumentTextDetection</code> returns an array of <a>Block</a>
    #          objects. </p>
    #          <p>Each document page has as an associated <code>Block</code> of type PAGE. Each PAGE <code>Block</code> object
    #         is the parent of LINE <code>Block</code> objects that represent the lines of detected text on a page. A LINE <code>Block</code> object is
    #         a parent for each word that makes up the line. Words are represented by <code>Block</code> objects of type WORD.</p>
    #          <p>Use the MaxResults parameter to limit the number of blocks that are returned. If there
    #          are more results than specified in <code>MaxResults</code>, the value of
    #             <code>NextToken</code> in the operation response contains a pagination token for getting
    #          the next set of results. To get the next page of results, call
    #             <code>GetDocumentTextDetection</code>, and populate the <code>NextToken</code> request
    #          parameter with the token value that's returned from the previous call to
    #             <code>GetDocumentTextDetection</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document Text Detection</a>.</p>
    # @param [Hash, Types::GetDocumentTextDetectionRequest] params
    # @option params [String] :job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #            <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #            specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is
    #            returned. The default value is 1,000.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #            token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_document_text_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"],
    #     next_token: "PaginationToken",
    #     blocks: [
    #       {
    #         block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #         confidence: 1.0,
    #         text: "String",
    #         text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #         row_index: 1,
    #         column_index: 1,
    #         row_span: 1,
    #         column_span: 1,
    #         geometry: {
    #           bounding_box: {
    #             width: 1.0,
    #             height: 1.0,
    #             left: 1.0,
    #             top: 1.0
    #           },
    #           polygon: [
    #             {
    #               x: 1.0,
    #               y: 1.0
    #             }
    #           ],
    #           rotation_angle: 1.0
    #         },
    #         id: "NonEmptyString",
    #         relationships: [
    #           {
    #             type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #             ids: ["NonEmptyString"]
    #           }
    #         ],
    #         entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #         selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #         page: 1,
    #         query: {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"]
    #         }
    #       }
    #     ],
    #     warnings: [
    #       {
    #         error_code: "ErrorCode",
    #         pages: [1]
    #       }
    #     ],
    #     status_message: "StatusMessage",
    #     detect_document_text_model_version: "String"
    #   }
    # @return [Types::GetDocumentTextDetectionResponse]
    def get_document_text_detection(params = {}, options = {})
      request = build_request(:get_document_text_detection, params)
      request.send_request(options)
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that analyzes invoices and
    #    receipts. Amazon Textract finds contact information, items purchased, and vendor name, from input
    #    invoices and receipts.</p>
    #          <p>You start asynchronous invoice/receipt analysis by calling <a>StartExpenseAnalysis</a>, which returns a job identifier (<code>JobId</code>). Upon
    #    completion of the invoice/receipt analysis, Amazon Textract publishes the completion status to the
    #    Amazon Simple Notification Service (Amazon SNS) topic. This topic must be registered in the initial call to
    #     <code>StartExpenseAnalysis</code>. To get the results of the invoice/receipt analysis operation,
    #    first ensure that the status value published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so,
    #    call <code>GetExpenseAnalysis</code>, and pass the job identifier (<code>JobId</code>) from the
    #    initial call to <code>StartExpenseAnalysis</code>.</p>
    #          <p>Use the MaxResults parameter to limit the number of blocks that are returned. If there are
    #    more results than specified in <code>MaxResults</code>, the value of <code>NextToken</code> in
    #    the operation response contains a pagination token for getting the next set of results. To get
    #    the next page of results, call <code>GetExpenseAnalysis</code>, and populate the
    #     <code>NextToken</code> request parameter with the token value that's returned from the previous
    #    call to <code>GetExpenseAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html">Analyzing Invoices and Receipts</a>.</p>
    # @param [Hash, Types::GetExpenseAnalysisRequest] params
    # @option params [String] :job_id
    #   <p>A unique identifier for the text detection job. The <code>JobId</code> is returned from
    #       <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value you can
    #      specify is 20. If you specify a value greater than 20, a maximum of 20 results is
    #      returned. The default value is 20.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination
    #      token in the response. You can use this pagination token to retrieve the next set of blocks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_expense_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"],
    #     next_token: "PaginationToken",
    #     expense_documents: [
    #       {
    #         expense_index: 1,
    #         summary_fields: [
    #           {
    #             type: {
    #               text: "String",
    #               confidence: 1.0
    #             },
    #             label_detection: {
    #               text: "String",
    #               geometry: {
    #                 bounding_box: {
    #                   width: 1.0,
    #                   height: 1.0,
    #                   left: 1.0,
    #                   top: 1.0
    #                 },
    #                 polygon: [
    #                   {
    #                     x: 1.0,
    #                     y: 1.0
    #                   }
    #                 ],
    #                 rotation_angle: 1.0
    #               },
    #               confidence: 1.0
    #             },
    #             value_detection: {
    #               text: "String",
    #               geometry: {
    #                 bounding_box: {
    #                   width: 1.0,
    #                   height: 1.0,
    #                   left: 1.0,
    #                   top: 1.0
    #                 },
    #                 polygon: [
    #                   {
    #                     x: 1.0,
    #                     y: 1.0
    #                   }
    #                 ],
    #                 rotation_angle: 1.0
    #               },
    #               confidence: 1.0
    #             },
    #             page_number: 1,
    #             currency: {
    #               code: "String",
    #               confidence: 1.0
    #             },
    #             group_properties: [
    #               {
    #                 types: ["String"],
    #                 id: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         line_item_groups: [
    #           {
    #             line_item_group_index: 1,
    #             line_items: [
    #               {
    #                 line_item_expense_fields: [
    #                   {
    #                     type: {
    #                       text: "String",
    #                       confidence: 1.0
    #                     },
    #                     label_detection: {
    #                       text: "String",
    #                       geometry: {
    #                         bounding_box: {
    #                           width: 1.0,
    #                           height: 1.0,
    #                           left: 1.0,
    #                           top: 1.0
    #                         },
    #                         polygon: [
    #                           {
    #                             x: 1.0,
    #                             y: 1.0
    #                           }
    #                         ],
    #                         rotation_angle: 1.0
    #                       },
    #                       confidence: 1.0
    #                     },
    #                     value_detection: {
    #                       text: "String",
    #                       geometry: {
    #                         bounding_box: {
    #                           width: 1.0,
    #                           height: 1.0,
    #                           left: 1.0,
    #                           top: 1.0
    #                         },
    #                         polygon: [
    #                           {
    #                             x: 1.0,
    #                             y: 1.0
    #                           }
    #                         ],
    #                         rotation_angle: 1.0
    #                       },
    #                       confidence: 1.0
    #                     },
    #                     page_number: 1,
    #                     currency: {
    #                       code: "String",
    #                       confidence: 1.0
    #                     },
    #                     group_properties: [
    #                       {
    #                         types: ["String"],
    #                         id: "String"
    #                       }
    #                     ]
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         ],
    #         blocks: [
    #           {
    #             block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #             confidence: 1.0,
    #             text: "String",
    #             text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #             row_index: 1,
    #             column_index: 1,
    #             row_span: 1,
    #             column_span: 1,
    #             geometry: {
    #               bounding_box: {
    #                 width: 1.0,
    #                 height: 1.0,
    #                 left: 1.0,
    #                 top: 1.0
    #               },
    #               polygon: [
    #                 {
    #                   x: 1.0,
    #                   y: 1.0
    #                 }
    #               ],
    #               rotation_angle: 1.0
    #             },
    #             id: "NonEmptyString",
    #             relationships: [
    #               {
    #                 type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #                 ids: ["NonEmptyString"]
    #               }
    #             ],
    #             entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #             selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #             page: 1,
    #             query: {
    #               text: "QueryInput", # required
    #               alias: "QueryInput",
    #               pages: ["QueryPage"]
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     warnings: [
    #       {
    #         error_code: "ErrorCode",
    #         pages: [1]
    #       }
    #     ],
    #     status_message: "StatusMessage",
    #     analyze_expense_model_version: "String"
    #   }
    # @return [Types::GetExpenseAnalysisResponse]
    def get_expense_analysis(params = {}, options = {})
      request = build_request(:get_expense_analysis, params)
      request.send_request(options)
    end

    # <p>Gets the results for an Amazon Textract asynchronous operation that analyzes text in a
    #             lending document. </p>
    #          <p>You start asynchronous text analysis by calling <code>StartLendingAnalysis</code>,
    #             which returns a job identifier (<code>JobId</code>). When the text analysis operation
    #             finishes, Amazon Textract publishes a completion status to the Amazon Simple
    #             Notification Service (Amazon SNS) topic that's registered in the initial call to
    #                 <code>StartLendingAnalysis</code>. </p>
    #          <p>To get the results of the text analysis operation, first check that the status value
    #             published to the Amazon SNS topic is SUCCEEDED. If so, call GetLendingAnalysis, and pass
    #             the job identifier (<code>JobId</code>) from the initial call to
    #                 <code>StartLendingAnalysis</code>.</p>
    # @param [Hash, Types::GetLendingAnalysisRequest] params
    # @option params [String] :job_id
    #   <p>A unique identifier for the lending or text-detection job. The <code>JobId</code> is
    #               returned from <code>StartLendingAnalysis</code>. A <code>JobId</code> value is only
    #               valid for 7 days.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per paginated call. The largest value that you
    #               can specify is 30. If you specify a value greater than 30, a maximum of 30 results is
    #               returned. The default value is 30.</p>
    # @option params [String] :next_token
    #   <p>If the previous response was incomplete, Amazon Textract returns a pagination token in
    #               the response. You can use this pagination token to retrieve the next set of lending
    #               results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_lending_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"],
    #     next_token: "PaginationToken",
    #     results: [
    #       {
    #         page: 1,
    #         page_classification: {
    #           page_type: [ # required
    #             {
    #               value: "NonEmptyString",
    #               confidence: 1.0
    #             }
    #           ],
    #           page_number: [ # required
    #             {
    #               value: "NonEmptyString",
    #               confidence: 1.0
    #             }
    #           ]
    #         },
    #         extractions: [
    #           {
    #             lending_document: {
    #               lending_fields: [
    #                 {
    #                   type: "String",
    #                   key_detection: {
    #                     text: "String",
    #                     selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #                     geometry: {
    #                       bounding_box: {
    #                         width: 1.0,
    #                         height: 1.0,
    #                         left: 1.0,
    #                         top: 1.0
    #                       },
    #                       polygon: [
    #                         {
    #                           x: 1.0,
    #                           y: 1.0
    #                         }
    #                       ],
    #                       rotation_angle: 1.0
    #                     },
    #                     confidence: 1.0
    #                   },
    #                   value_detections: [
    #                     {
    #                       text: "String",
    #                       selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #                       geometry: {
    #                         bounding_box: {
    #                           width: 1.0,
    #                           height: 1.0,
    #                           left: 1.0,
    #                           top: 1.0
    #                         },
    #                         polygon: [
    #                           {
    #                             x: 1.0,
    #                             y: 1.0
    #                           }
    #                         ],
    #                         rotation_angle: 1.0
    #                       },
    #                       confidence: 1.0
    #                     }
    #                   ]
    #                 }
    #               ],
    #               signature_detections: [
    #                 {
    #                   confidence: 1.0,
    #                   geometry: {
    #                     bounding_box: {
    #                       width: 1.0,
    #                       height: 1.0,
    #                       left: 1.0,
    #                       top: 1.0
    #                     },
    #                     polygon: [
    #                       {
    #                         x: 1.0,
    #                         y: 1.0
    #                       }
    #                     ],
    #                     rotation_angle: 1.0
    #                   }
    #                 }
    #               ]
    #             },
    #             expense_document: {
    #               expense_index: 1,
    #               summary_fields: [
    #                 {
    #                   type: {
    #                     text: "String",
    #                     confidence: 1.0
    #                   },
    #                   label_detection: {
    #                     text: "String",
    #                     geometry: {
    #                       bounding_box: {
    #                         width: 1.0,
    #                         height: 1.0,
    #                         left: 1.0,
    #                         top: 1.0
    #                       },
    #                       polygon: [
    #                         {
    #                           x: 1.0,
    #                           y: 1.0
    #                         }
    #                       ],
    #                       rotation_angle: 1.0
    #                     },
    #                     confidence: 1.0
    #                   },
    #                   value_detection: {
    #                     text: "String",
    #                     geometry: {
    #                       bounding_box: {
    #                         width: 1.0,
    #                         height: 1.0,
    #                         left: 1.0,
    #                         top: 1.0
    #                       },
    #                       polygon: [
    #                         {
    #                           x: 1.0,
    #                           y: 1.0
    #                         }
    #                       ],
    #                       rotation_angle: 1.0
    #                     },
    #                     confidence: 1.0
    #                   },
    #                   page_number: 1,
    #                   currency: {
    #                     code: "String",
    #                     confidence: 1.0
    #                   },
    #                   group_properties: [
    #                     {
    #                       types: ["String"],
    #                       id: "String"
    #                     }
    #                   ]
    #                 }
    #               ],
    #               line_item_groups: [
    #                 {
    #                   line_item_group_index: 1,
    #                   line_items: [
    #                     {
    #                       line_item_expense_fields: [
    #                         {
    #                           type: {
    #                             text: "String",
    #                             confidence: 1.0
    #                           },
    #                           label_detection: {
    #                             text: "String",
    #                             geometry: {
    #                               bounding_box: {
    #                                 width: 1.0,
    #                                 height: 1.0,
    #                                 left: 1.0,
    #                                 top: 1.0
    #                               },
    #                               polygon: [
    #                                 {
    #                                   x: 1.0,
    #                                   y: 1.0
    #                                 }
    #                               ],
    #                               rotation_angle: 1.0
    #                             },
    #                             confidence: 1.0
    #                           },
    #                           value_detection: {
    #                             text: "String",
    #                             geometry: {
    #                               bounding_box: {
    #                                 width: 1.0,
    #                                 height: 1.0,
    #                                 left: 1.0,
    #                                 top: 1.0
    #                               },
    #                               polygon: [
    #                                 {
    #                                   x: 1.0,
    #                                   y: 1.0
    #                                 }
    #                               ],
    #                               rotation_angle: 1.0
    #                             },
    #                             confidence: 1.0
    #                           },
    #                           page_number: 1,
    #                           currency: {
    #                             code: "String",
    #                             confidence: 1.0
    #                           },
    #                           group_properties: [
    #                             {
    #                               types: ["String"],
    #                               id: "String"
    #                             }
    #                           ]
    #                         }
    #                       ]
    #                     }
    #                   ]
    #                 }
    #               ],
    #               blocks: [
    #                 {
    #                   block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #                   confidence: 1.0,
    #                   text: "String",
    #                   text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #                   row_index: 1,
    #                   column_index: 1,
    #                   row_span: 1,
    #                   column_span: 1,
    #                   geometry: {
    #                     bounding_box: {
    #                       width: 1.0,
    #                       height: 1.0,
    #                       left: 1.0,
    #                       top: 1.0
    #                     },
    #                     polygon: [
    #                       {
    #                         x: 1.0,
    #                         y: 1.0
    #                       }
    #                     ],
    #                     rotation_angle: 1.0
    #                   },
    #                   id: "NonEmptyString",
    #                   relationships: [
    #                     {
    #                       type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #                       ids: ["NonEmptyString"]
    #                     }
    #                   ],
    #                   entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #                   selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #                   page: 1,
    #                   query: {
    #                     text: "QueryInput", # required
    #                     alias: "QueryInput",
    #                     pages: ["QueryPage"]
    #                   }
    #                 }
    #               ]
    #             },
    #             identity_document: {
    #               document_index: 1,
    #               identity_document_fields: [
    #                 {
    #                   type: {
    #                     text: "String", # required
    #                     normalized_value: {
    #                       value: "String",
    #                       value_type: "DATE" # One of: ["DATE"]
    #                     },
    #                     confidence: 1.0
    #                   },
    #                   value_detection: {
    #                     text: "String", # required
    #                     normalized_value: {
    #                       value: "String",
    #                       value_type: "DATE" # One of: ["DATE"]
    #                     },
    #                     confidence: 1.0
    #                   }
    #                 }
    #               ],
    #               blocks: [
    #                 {
    #                   block_type: "KEY_VALUE_SET" # One of: ["KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"],
    #                   confidence: 1.0,
    #                   text: "String",
    #                   text_type: "HANDWRITING" # One of: ["HANDWRITING", "PRINTED"],
    #                   row_index: 1,
    #                   column_index: 1,
    #                   row_span: 1,
    #                   column_span: 1,
    #                   geometry: {
    #                     bounding_box: {
    #                       width: 1.0,
    #                       height: 1.0,
    #                       left: 1.0,
    #                       top: 1.0
    #                     },
    #                     polygon: [
    #                       {
    #                         x: 1.0,
    #                         y: 1.0
    #                       }
    #                     ],
    #                     rotation_angle: 1.0
    #                   },
    #                   id: "NonEmptyString",
    #                   relationships: [
    #                     {
    #                       type: "VALUE" # One of: ["VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"],
    #                       ids: ["NonEmptyString"]
    #                     }
    #                   ],
    #                   entity_types: ["KEY" # One of: ["KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"]],
    #                   selection_status: "SELECTED" # One of: ["SELECTED", "NOT_SELECTED"],
    #                   page: 1,
    #                   query: {
    #                     text: "QueryInput", # required
    #                     alias: "QueryInput",
    #                     pages: ["QueryPage"]
    #                   }
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     warnings: [
    #       {
    #         error_code: "ErrorCode",
    #         pages: [1]
    #       }
    #     ],
    #     status_message: "StatusMessage",
    #     analyze_lending_model_version: "String"
    #   }
    # @return [Types::GetLendingAnalysisResponse]
    def get_lending_analysis(params = {}, options = {})
      request = build_request(:get_lending_analysis, params)
      request.send_request(options)
    end

    # <p>Gets summarized results for the <code>StartLendingAnalysis</code> operation, which analyzes
    #    text in a lending document. The returned summary consists of information about documents grouped
    #    together by a common document type. Information like detected signatures, page numbers, and split
    #    documents is returned with respect to the type of grouped document. </p>
    #          <p>You start asynchronous text analysis by calling <code>StartLendingAnalysis</code>, which
    #    returns a job identifier (<code>JobId</code>). When the text analysis operation finishes, Amazon
    #    Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS)
    #    topic that's registered in the initial call to <code>StartLendingAnalysis</code>. </p>
    #          <p>To get the results of the text analysis operation, first check that the status value
    #    published to the Amazon SNS topic is SUCCEEDED. If so, call
    #     <code>GetLendingAnalysisSummary</code>, and pass the job identifier (<code>JobId</code>) from
    #    the initial call to <code>StartLendingAnalysis</code>.</p>
    # @param [Hash, Types::GetLendingAnalysisSummaryRequest] params
    # @option params [String] :job_id
    #   <p> A unique identifier for the lending or text-detection job. The <code>JobId</code> is
    #      returned from StartLendingAnalysis. A <code>JobId</code> value is only valid for 7 days.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_lending_analysis_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     document_metadata: {
    #       pages: 1
    #     },
    #     job_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"],
    #     summary: {
    #       document_groups: [
    #         {
    #           type: "NonEmptyString",
    #           split_documents: [
    #             {
    #               index: 1,
    #               pages: [1]
    #             }
    #           ],
    #           detected_signatures: [
    #             {
    #               page: 1
    #             }
    #           ],
    #           undetected_signatures: [
    #             {
    #               page: 1
    #             }
    #           ]
    #         }
    #       ],
    #       undetected_document_types: ["NonEmptyString"]
    #     },
    #     warnings: [
    #       {
    #         error_code: "ErrorCode",
    #         pages: [1]
    #       }
    #     ],
    #     status_message: "StatusMessage",
    #     analyze_lending_model_version: "String"
    #   }
    # @return [Types::GetLendingAnalysisSummaryResponse]
    def get_lending_analysis_summary(params = {}, options = {})
      request = build_request(:get_lending_analysis_summary, params)
      request.send_request(options)
    end

    # <p>List all version of an adapter that meet the specified filtration criteria.</p>
    # @param [Hash, Types::ListAdapterVersionsRequest] params
    # @option params [String] :adapter_id
    #   <p>A string containing a unique ID for the adapter to match for when listing adapter versions.</p>
    # @option params [Time] :after_creation_time
    #   <p>Specifies the lower bound for the ListAdapterVersions operation. 
    #            Ensures ListAdapterVersions returns only adapter versions created after the specified creation time.</p>
    # @option params [Time] :before_creation_time
    #   <p>Specifies the upper bound for the ListAdapterVersions operation. 
    #            Ensures ListAdapterVersions returns only adapter versions created after the specified creation time.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return when listing adapter versions.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return when listing adapter versions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId",
    #     after_creation_time: Time.now,
    #     before_creation_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_adapter_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapter_versions: [
    #       {
    #         adapter_id: "AdapterId",
    #         adapter_version: "AdapterVersion",
    #         creation_time: Time.now,
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]],
    #         status: "ACTIVE" # One of: ["ACTIVE", "AT_RISK", "DEPRECATED", "CREATION_ERROR", "CREATION_IN_PROGRESS"],
    #         status_message: "AdapterVersionStatusMessage"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAdapterVersionsResponse]
    def list_adapter_versions(params = {}, options = {})
      request = build_request(:list_adapter_versions, params)
      request.send_request(options)
    end

    # <p>Lists all adapters that match the specified filtration criteria.</p>
    # @param [Hash, Types::ListAdaptersRequest] params
    # @option params [Time] :after_creation_time
    #   <p>Specifies the lower bound for the ListAdapters operation. 
    #            Ensures ListAdapters returns only adapters created after the specified creation time.</p>
    # @option params [Time] :before_creation_time
    #   <p>Specifies the upper bound for the ListAdapters operation. 
    #            Ensures ListAdapters returns only adapters created before the specified creation time.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return when listing adapters.</p>
    # @option params [String] :next_token
    #   <p>Identifies the next page of results to return when listing adapters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     after_creation_time: Time.now,
    #     before_creation_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_adapters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapters: [
    #       {
    #         adapter_id: "AdapterId",
    #         adapter_name: "AdapterName",
    #         creation_time: Time.now,
    #         feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAdaptersResponse]
    def list_adapters(params = {}, options = {})
      request = build_request(:list_adapters, params)
      request.send_request(options)
    end

    # <p>Lists all tags for an Amazon Textract resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Starts the asynchronous analysis of an input document for relationships between detected
    #          items such as key-value pairs, tables, and selection elements.</p>
    #          <p>
    #             <code>StartDocumentAnalysis</code> can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The
    #          documents are stored in an Amazon S3 bucket. Use <a>DocumentLocation</a> to specify the bucket name and file name
    #          of the document.
    #          </p>
    #          <p>
    #             <code>StartDocumentAnalysis</code> returns a job identifier
    #             (<code>JobId</code>) that you use to get the results of the operation. When text
    #          analysis is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS)
    #          topic that you specify in <code>NotificationChannel</code>. To get the results of the text
    #          analysis operation, first check that the status value published to the Amazon SNS topic is
    #             <code>SUCCEEDED</code>. If so, call <a>GetDocumentAnalysis</a>, and pass
    #          the job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html">Document Text Analysis</a>.</p>
    # @param [Hash, Types::StartDocumentAnalysisRequest] params
    # @option params [Types::DocumentLocation] :document_location
    #   <p>The location of the document to be processed.</p>
    # @option params [Array<String>] :feature_types
    #   <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    #            about the tables that are detected in the input document. Add FORMS to return detected
    #            form data. To perform both types of analysis, add TABLES
    #            and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are
    #            included in the response (including text that isn't related to the value of
    #               <code>FeatureTypes</code>). </p>
    # @option params [String] :client_request_token
    #   <p>The idempotent token that you use to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentAnalysis</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    # @option params [String] :job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save
    #            the results internally to be accessed by the GetDocumentAnalysis operation.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be 
    #            in either Key ID or Key Alias format. When a KMS key is provided, the 
    #            KMS key will be used for server-side encryption of the objects in the 
    #            customer bucket. When this parameter is not enabled, the result will 
    #            be encrypted server side,using SSE-S3.</p>
    # @option params [Types::QueriesConfig] :queries_config
    #   <p></p>
    # @option params [Types::AdaptersConfig] :adapters_config
    #   <p>Specifies the adapter to be used when analyzing a document.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]], # required
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName"
    #     },
    #     kms_key_id: "KMSKeyId",
    #     queries_config: {
    #       queries: [ # required
    #         {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"]
    #         }
    #       ]
    #     },
    #     adapters_config: {
    #       adapters: [ # required
    #         {
    #           adapter_id: "AdapterId", # required
    #           pages: ["AdapterPage"],
    #           version: "AdapterVersion", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.start_document_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartDocumentAnalysisResponse]
    def start_document_analysis(params = {}, options = {})
      request = build_request(:start_document_analysis, params)
      request.send_request(options)
    end

    # <p>Starts the asynchronous detection of text in a document. Amazon Textract can detect lines of
    #          text and the words that make up a line of text.</p>
    #          <p>
    #             <code>StartDocumentTextDetection</code> can analyze text in documents that are in JPEG, PNG, TIFF, and PDF format. The
    #         documents are stored in an Amazon S3 bucket. Use <a>DocumentLocation</a> to specify the bucket name and file name
    #         of the document.
    #      </p>
    #          <p>
    #             <code>StartDocumentTextDetection</code> returns a job identifier
    #             (<code>JobId</code>) that you use to get the results of the operation. When text
    #          detection is finished, Amazon Textract publishes a completion status to the Amazon Simple Notification Service (Amazon SNS)
    #          topic that you specify in <code>NotificationChannel</code>. To get the results of the text
    #          detection operation, first check that the status value published to the Amazon SNS topic is
    #             <code>SUCCEEDED</code>. If so, call <a>GetDocumentTextDetection</a>, and
    #          pass the job identifier (<code>JobId</code>) from the initial call to
    #             <code>StartDocumentTextDetection</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html">Document Text Detection</a>.</p>
    # @param [Hash, Types::StartDocumentTextDetectionRequest] params
    # @option params [Types::DocumentLocation] :document_location
    #   <p>The location of the document to be processed.</p>
    # @option params [String] :client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same
    #            token with multiple <code>StartDocumentTextDetection</code> requests, the same
    #               <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    #            job from being accidentally started more than once. For more information, see
    #            <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    # @option params [String] :job_tag
    #   <p>An identifier that you specify that's included in the completion notification published
    #            to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #            document that the completion notification corresponds to (such as a tax form or a
    #            receipt).</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #            operation to. </p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will
    #            save the results internally to be accessed with the GetDocumentTextDetection operation.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be 
    #            in either Key ID or Key Alias format. When a KMS key is provided, the 
    #            KMS key will be used for server-side encryption of the objects in the 
    #            customer bucket. When this parameter is not enabled, the result will 
    #            be encrypted server side,using SSE-S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName"
    #     },
    #     kms_key_id: "KMSKeyId"
    #   }
    #   options = {}
    #   response = client.start_document_text_detection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartDocumentTextDetectionResponse]
    def start_document_text_detection(params = {}, options = {})
      request = build_request(:start_document_text_detection, params)
      request.send_request(options)
    end

    # <p>Starts the asynchronous analysis of invoices or receipts for data like contact information,
    #    items purchased, and vendor names.</p>
    #          <p>
    #             <code>StartExpenseAnalysis</code> can analyze text in documents that are in JPEG, PNG, and
    #    PDF format. The documents must be stored in an Amazon S3 bucket. Use the <a>DocumentLocation</a> parameter to specify the name of your S3 bucket and the name of the
    #    document in that bucket. </p>
    #          <p>
    #             <code>StartExpenseAnalysis</code> returns a job identifier (<code>JobId</code>) that you
    #    will provide to <code>GetExpenseAnalysis</code> to retrieve the results of the operation. When
    #    the analysis of the input invoices/receipts is finished, Amazon Textract publishes a completion
    #    status to the Amazon Simple Notification Service (Amazon SNS) topic that you provide to the <code>NotificationChannel</code>.
    #    To obtain the results of the invoice and receipt analysis operation, ensure that the status value
    #    published to the Amazon SNS topic is <code>SUCCEEDED</code>. If so, call <a>GetExpenseAnalysis</a>, and pass the job identifier (<code>JobId</code>) that was
    #    returned by your call to <code>StartExpenseAnalysis</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html">Analyzing Invoices and Receipts</a>.</p>
    # @param [Hash, Types::StartExpenseAnalysisRequest] params
    # @option params [Types::DocumentLocation] :document_location
    #   <p>The location of the document to be processed.</p>
    # @option params [String] :client_request_token
    #   <p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned. 
    #      Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. 
    #      For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>
    #            </p>
    # @option params [String] :job_tag
    #   <p>An identifier you specify that's included in the completion notification published
    #      to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #      document that the completion notification corresponds to (such as a tax form or a
    #      receipt).</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    #      operation to. </p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will
    #      save the results internally to be accessed by the <code>GetExpenseAnalysis</code>
    #      operation.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be 
    #      in either Key ID or Key Alias format. When a KMS key is provided, the 
    #      KMS key will be used for server-side encryption of the objects in the 
    #      customer bucket. When this parameter is not enabled, the result will 
    #      be encrypted server side,using SSE-S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName"
    #     },
    #     kms_key_id: "KMSKeyId"
    #   }
    #   options = {}
    #   response = client.start_expense_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartExpenseAnalysisResponse]
    def start_expense_analysis(params = {}, options = {})
      request = build_request(:start_expense_analysis, params)
      request.send_request(options)
    end

    # <p>Starts the classification and analysis of an input document.
    #     <code>StartLendingAnalysis</code> initiates the classification and analysis of a packet of
    #    lending documents. <code>StartLendingAnalysis</code> operates on a document file located in an
    #    Amazon S3 bucket.</p>
    #          <p>
    #             <code>StartLendingAnalysis</code> can analyze text in documents that are in one of the
    #    following formats: JPEG, PNG, TIFF, PDF. Use <code>DocumentLocation</code> to specify the bucket
    #    name and the file name of the document. </p>
    #          <p>
    #             <code>StartLendingAnalysis</code> returns a job identifier (<code>JobId</code>) that you use
    #    to get the results of the operation. When the text analysis is finished, Amazon Textract
    #    publishes a completion status to the Amazon Simple Notification Service (Amazon SNS) topic that
    #    you specify in <code>NotificationChannel</code>. To get the results of the text analysis
    #    operation, first check that the status value published to the Amazon SNS topic is SUCCEEDED. If
    #    the status is SUCCEEDED you can call either <code>GetLendingAnalysis</code> or
    #     <code>GetLendingAnalysisSummary</code> and provide the <code>JobId</code> to obtain the results
    #    of the analysis.</p>
    #          <p>If using <code>OutputConfig</code> to specify an Amazon S3 bucket, the output will be contained
    #    within the specified prefix in a directory labeled with the job-id. In the directory there are 3
    #    sub-directories: </p>
    #          <ul>
    #             <li>
    #                <p>detailedResponse (contains the GetLendingAnalysis response)</p>
    #             </li>
    #             <li>
    #                <p>summaryResponse (for the GetLendingAnalysisSummary response)</p>
    #             </li>
    #             <li>
    #                <p>splitDocuments (documents split across logical boundaries)</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartLendingAnalysisRequest] params
    # @option params [Types::DocumentLocation] :document_location
    #   <p>The Amazon S3 bucket that contains the document to be processed. It's used by asynchronous
    #            operations.</p>
    #            <p>The input document can be an image file in JPEG or PNG format. It can also be a file in
    #            PDF format.</p>
    # @option params [String] :client_request_token
    #   <p>The idempotent token that you use to identify the start request. If you use the same token
    #      with multiple <code>StartLendingAnalysis</code> requests, the same <code>JobId</code> is
    #      returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidentally
    #      started more than once. For more information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/api-sync.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    # @option params [String] :job_tag
    #   <p>An identifier that you specify to be included in the completion notification published to
    #      the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    #      document that the completion notification corresponds to (such as a tax form or a
    #      receipt).</p>
    # @option params [Types::NotificationChannel] :notification_channel
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Textract publishes the completion status of
    #            an asynchronous document operation. </p>
    # @option params [Types::OutputConfig] :output_config
    #   <p>Sets whether or not your output will go to a user created bucket. Used to set the name
    #            of the bucket, and the prefix on the output file.</p>
    #            <p>
    #               <code>OutputConfig</code> is an optional parameter which lets you adjust where your
    #            output will be placed. By default, Amazon Textract will store the results internally and can
    #            only be accessed by the Get API operations. With <code>OutputConfig</code> enabled, you can
    #            set the name of the bucket the output will be sent to the file prefix of the results where
    #            you can download your results. Additionally, you can set the <code>KMSKeyID</code>
    #            parameter to a customer master key (CMK) to encrypt your output. Without this parameter set
    #            Amazon Textract will encrypt server-side using the AWS managed CMK for Amazon S3.</p>
    #            <p>Decryption of Customer Content is necessary for processing of the documents by Amazon Textract. If your account 
    #            is opted out under an AI services opt out policy then all unencrypted Customer Content is immediately and permanently deleted after 
    #            the Customer Content has been processed by the service. No copy of of the output is retained by Amazon Textract. For information about how to opt out, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html"> Managing AI services opt-out policy. </a>
    #            </p>
    #            <p>For more information on data privacy,
    #            see the <a href="https://aws.amazon.com/compliance/data-privacy-faq/">Data Privacy
    #               FAQ</a>.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key used to encrypt the inference results. This can be in either Key ID or Key
    #      Alias format. When a KMS key is provided, the KMS key will be used for server-side encryption of
    #      the objects in the customer bucket. When this parameter is not enabled, the result will be
    #      encrypted server side, using SSE-S3. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion"
    #       }
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName"
    #     },
    #     kms_key_id: "KMSKeyId"
    #   }
    #   options = {}
    #   response = client.start_lending_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId"
    #   }
    # @return [Types::StartLendingAnalysisResponse]
    def start_lending_analysis(params = {}, options = {})
      request = build_request(:start_lending_analysis, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the resource to be tagged.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags (key-value pairs) that you want to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # <p>Removes any tags with the specified keys from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the resource to be untagged.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies the tags to be removed from the resource specified by the ResourceARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Update the configuration for an adapter. FeatureTypes configurations cannot be updated.
    #          At least one new parameter must be specified as an argument.</p>
    # @param [Hash, Types::UpdateAdapterRequest] params
    # @option params [String] :adapter_id
    #   <p>A string containing a unique ID for the adapter that will be updated.</p>
    # @option params [String] :description
    #   <p>The new description to be applied to the adapter.</p>
    # @option params [String] :adapter_name
    #   <p>The new name to be applied to the adapter.</p>
    # @option params [String] :auto_update
    #   <p>The new auto-update status to be applied to the adapter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     adapter_id: "AdapterId", # required
    #     description: "AdapterDescription",
    #     adapter_name: "AdapterName",
    #     auto_update: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    #   options = {}
    #   response = client.update_adapter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     adapter_id: "AdapterId",
    #     adapter_name: "AdapterName",
    #     creation_time: Time.now,
    #     description: "AdapterDescription",
    #     feature_types: ["TABLES" # One of: ["TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"]],
    #     auto_update: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #   }
    # @return [Types::UpdateAdapterResponse]
    def update_adapter(params = {}, options = {})
      request = build_request(:update_adapter, params)
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
      context[:gem_name] = 'aws-sdk-textract'
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
