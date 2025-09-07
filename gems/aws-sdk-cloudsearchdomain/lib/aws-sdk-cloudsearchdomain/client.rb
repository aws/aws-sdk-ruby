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

module Aws::CloudSearchDomain
  # An API client for Aws::CloudSearchDomain.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonCloudSearch2013

    add_plugin(::Aws::CloudSearchDomain::Plugins::Endpoint)
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
    # @option options [Aws::CloudSearchDomain::EndpointProvider] :endpoint_provider
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

    # <p>Retrieves a list of documents that match the specified search criteria. How you specify the search criteria depends on which query parser you use. Amazon CloudSearch supports four query parsers:</p>
    #       <ul>
    #          <li><code>simple</code>: search all <code>text</code> and <code>text-array</code> fields for the specified string. Search for phrases, individual terms, and prefixes. </li>
    #          <li><code>structured</code>: search specific fields, construct compound queries using Boolean operators, and use advanced features such as term boosting and proximity searching.</li>
    #          <li><code>lucene</code>: specify search criteria using the Apache Lucene query parser syntax.</li>
    #          <li><code>dismax</code>: specify search criteria using the simplified subset of the Apache Lucene query parser syntax defined by the DisMax query parser.</li>
    #       </ul>
    #       <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    #       <p>The endpoint for submitting <code>Search</code> requests is domain-specific. You submit search requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
    # @param [Hash, Types::SearchRequest] params
    # @option params [String] :cursor
    #   <p>Retrieves a cursor value you can use to page through large result sets.
    #            Use the <code>size</code> parameter to control the number of hits to include in each response. You can specify either the <code>cursor</code> or
    #            <code>start</code> parameter in a request; they are mutually exclusive. To get the first cursor, set the cursor value to <code>initial</code>. In subsequent requests, specify the cursor value returned in the hits section of the response. </p>
    #         <p>For more
    #            information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html">Paginating Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [String] :expr
    #   <p>Defines one or more numeric expressions that can be used to sort results or specify search or filter
    #            criteria. You can also specify expressions as return fields. </p>
    #         <p>You specify the expressions in JSON using the form <code>{"EXPRESSIONNAME":"EXPRESSION"}</code>. You can define and use multiple expressions in a search request. For example:</p>
    #         <p><code>
    #            {"expression1":"_score*rating", "expression2":"(1/rank)*year"}
    #         </code> </p>
    #         <p>For information about the variables, operators, and functions you can use in expressions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html#writing-expressions">Writing Expressions</a>
    #            in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [String] :facet
    #   <p>Specifies one or more fields for which to get facet information, and options that control how the facet information is returned. Each specified field must be facet-enabled in the domain configuration. The fields and options are specified in JSON using the form <code>{"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}</code>.</p>
    #            <p>You can specify the following faceting options:</p>
    #         <ul>
    #            <li>
    #               <p><code>buckets</code> specifies an array of the facet values or
    #                  ranges to count. Ranges are specified using the same syntax that you use to search for a range of values.
    #                  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-ranges.html">
    #                     Searching for a Range of Values</a> in the <i>Amazon CloudSearch Developer Guide</i>. Buckets are returned in the order they
    #                  are specified in the request. The <code>sort</code> and <code>size</code> options are
    #                  not valid if you specify <code>buckets</code>.</p>
    #            </li>
    #            <li>
    #               <p><code>size</code> specifies the maximum number of facets to include in the results. By
    #                  default, Amazon CloudSearch returns counts for the top 10. The
    #                  <code>size</code> parameter is only valid when you specify
    #                  the <code>sort</code> option; it cannot be used in conjunction
    #                  with <code>buckets</code>.</p>
    #            </li>
    #            <li>
    #               <p><code>sort</code> specifies how you want to sort the facets in
    #                  the results: <code>bucket</code> or <code>count</code>. Specify
    #                  <code>bucket</code> to sort alphabetically or numerically by
    #                  facet value (in ascending order). Specify <code>count</code> to
    #                  sort by the facet counts computed for each facet value (in
    #                  descending order). To retrieve facet counts for particular
    #                  values or ranges of values, use the <code>buckets</code> option
    #                  instead of <code>sort</code>. </p>
    #            </li>
    #         </ul>
    #         <p>If no facet options are specified, facet counts are computed for all field values, the facets are sorted by facet count, and the top 10 facets are returned in the results.</p>
    #   
    #         <p>To count particular buckets of values, use the <code>buckets</code> option. For example, the following request uses the <code>buckets</code> option to calculate and return facet counts by decade.</p>
    #         <p><code>
    #            {"year":{"buckets":["[1970,1979]","[1980,1989]","[1990,1999]","[2000,2009]","[2010,}"]}}
    #         </code></p>
    #   
    #            <p>To sort facets by facet count, use the <code>count</code> option. For example, the following request sets the <code>sort</code> option to <code>count</code> to sort the facet values by facet count, with the facet
    #               values that have the most matching documents listed first. Setting the <code>size</code> option to 3 returns only the top three facet values.</p>
    #            <p><code>
    #               {"year":{"sort":"count","size":3}}
    #            </code></p>
    #   
    #            <p>To sort the facets by value, use the <code>bucket</code> option. For example, the following  request sets the <code>sort</code> option to <code>bucket</code> to sort the facet values numerically by year, with earliest year listed first. </p>
    #            <p><code>
    #               {"year":{"sort":"bucket"}}
    #            </code></p>
    #         <p>For more
    #            information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/faceting.html">Getting and Using Facet Information</a>
    #            in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [String] :filter_query
    #   <p>Specifies a structured query that filters the results of a search without affecting how the results are scored and sorted. You use <code>filterQuery</code> in conjunction with the <code>query</code> parameter to filter the documents that match the constraints specified in the <code>query</code> parameter. Specifying a filter controls only which matching documents are included in the results, it has no effect on how they are scored and sorted. The <code>filterQuery</code> parameter supports the full structured query syntax. </p>
    #         <p>For more information about using filters, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/filtering-results.html">Filtering Matching Documents</a>
    #            in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [String] :highlight
    #   <p>Retrieves highlights for matches in the specified <code>text</code> or
    #            <code>text-array</code> fields. Each specified field must be highlight enabled in the domain configuration. The fields and options are specified in JSON using the form <code>{"FIELD":{"OPTION":VALUE,"OPTION:"STRING"},"FIELD":{"OPTION":VALUE,"OPTION":"STRING"}}</code>.</p>
    #         <p>You can specify the following highlight options:</p>
    #            <ul>
    #               <li>
    #                  <code>format</code>: specifies the format of the data in the
    #                     text field: <code>text</code> or <code>html</code>. When data is
    #                     returned as HTML, all non-alphanumeric characters are encoded.
    #                     The default is <code>html</code>.
    #               </li>
    #               <li>
    #                  <code>max_phrases</code>: specifies the maximum number of
    #                     occurrences of the search term(s) you want to highlight. By
    #                     default, the first occurrence is highlighted.
    #               </li>
    #               <li>
    #                  <code>pre_tag</code>: specifies the string to prepend to an
    #                     occurrence of a search term. The default for HTML highlights is
    #                  <code>&lt;em&gt;</code>. The default for text highlights is
    #                     <code>*</code>.
    #               </li>
    #               <li>
    #                  <code>post_tag</code>: specifies the string to append to an
    #                     occurrence of a search term. The default for HTML highlights is
    #                     <code>&lt;/em&gt;</code>. The default for text highlights is
    #                     <code>*</code>.
    #               </li>
    #            </ul>
    #            <p>If no highlight options are specified for a field, the returned field text is treated as HTML and the first match is
    #               highlighted with emphasis tags:  <code>&lt;em>search-term&lt;/em&gt;</code>.</p>
    #               <p>For example, the following request retrieves highlights for the <code>actors</code> and <code>title</code> fields.</p>
    #                    <p> <code>{
    #       "actors": {},
    #       "title": {"format": "text","max_phrases": 2,"pre_tag": "<b>","post_tag": "</b>"}
    #                       }</code></p>
    # @option params [Boolean] :partial
    #   <p>Enables partial results to be returned if one or more index partitions are unavailable. When your search index is partitioned across multiple search instances, by default Amazon CloudSearch only returns results if every partition can be queried. This means that the failure of a single search instance can result in 5xx (internal server) errors. When you enable partial results, Amazon CloudSearch returns whatever results are available and includes the percentage of documents searched in the search results (percent-searched). This enables you to more gracefully degrade your users' search experience. For example, rather than displaying no results, you could display the partial results and a message indicating that the results might be incomplete due to a temporary system outage.</p>
    # @option params [String] :query
    #   <p>Specifies the search criteria for the request. How you specify the search
    #            criteria depends on the query parser used for the request and the parser options
    #            specified in the <code>queryOptions</code> parameter. By default,
    #            the <code>simple</code> query parser is used to process requests. To use
    #            the <code>structured</code>, <code>lucene</code>, or <code>dismax</code> query parser,
    #            you must also specify the <code>queryParser</code> parameter. </p>
    #               <p>For more information about specifying search criteria, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html">Searching Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [String] :query_options
    #   <p>Configures options for the query parser specified in the <code>queryParser</code> parameter. You specify the options in JSON using the following form <code>{"OPTION1":"VALUE1","OPTION2":VALUE2"..."OPTIONN":"VALUEN"}.</code></p>
    #   
    #         <p>The options you can configure vary according to which parser you use:</p>
    #         <ul>
    #            <li><code>defaultOperator</code>: The default operator used to combine individual terms in the search string. For example: <code>defaultOperator: 'or'</code>. For the <code>dismax</code> parser, you specify a percentage that represents the percentage of terms in the search string (rounded down) that must match, rather than a default operator. A value of <code>0%</code> is the equivalent to OR, and a value of <code>100%</code> is equivalent to AND. The percentage must be specified as a value in the range 0-100 followed by the percent (%) symbol. For example, <code>defaultOperator: 50%</code>. Valid values: <code>and</code>, <code>or</code>, a percentage in the range 0%-100% (<code>dismax</code>). Default: <code>and</code> (<code>simple</code>, <code>structured</code>, <code>lucene</code>) or <code>100</code> (<code>dismax</code>). Valid for: <code>simple</code>, <code>structured</code>, <code>lucene</code>, and <code>dismax</code>.</li>
    #            <li><code>fields</code>: An array of the fields to search when no fields are specified in a search. If no fields are specified in a search and this option is not specified, all text and text-array fields are searched. You can specify a weight for each field to control the relative importance of each field when Amazon CloudSearch calculates relevance scores. To specify a field weight, append a caret (<code>^</code>) symbol and the weight to the field name. For example, to boost the importance of the <code>title</code> field over the <code>description</code> field you could specify: <code>"fields":["title^5","description"]</code>.  Valid values: The name of any configured field and an optional numeric value greater than zero. Default: All <code>text</code> and <code>text-array</code> fields. Valid for: <code>simple</code>, <code>structured</code>, <code>lucene</code>, and <code>dismax</code>.</li>
    #            <li><code>operators</code>: An array of the operators or special characters you want to
    #               disable for the simple query parser. If you disable the
    #               <code>and</code>, <code>or</code>, or <code>not</code>
    #               operators, the corresponding operators (<code>+</code>,
    #               <code>|</code>, <code>-</code>) have no special meaning and
    #               are dropped from the search string. Similarly, disabling
    #               <code>prefix</code> disables the wildcard operator
    #               (<code>*</code>) and disabling <code>phrase</code> disables
    #               the ability to search for phrases by enclosing phrases in double
    #               quotes. Disabling precedence disables the ability to control
    #               order of precedence using parentheses. Disabling <code>near</code> disables
    #               the ability to use the ~ operator to perform a sloppy phrase search.
    #               Disabling the <code>fuzzy</code> operator disables the ability to use the ~ operator to perform a fuzzy search.
    #               <code>escape</code> disables the ability to use a backslash
    #               (<code>\</code>) to escape special characters within the
    #               search string. Disabling whitespace is an advanced option that
    #               prevents the parser from tokenizing on whitespace, which can be
    #               useful for Vietnamese. (It prevents Vietnamese words from being
    #               split incorrectly.) For example, you could disable all operators
    #               other than the phrase operator to support just simple term and
    #               phrase queries: <code>"operators":["and","not","or",
    #                  "prefix"]</code>. Valid values: <code>and</code>, <code>escape</code>,
    #               <code>fuzzy</code>, <code>near</code>, <code>not</code>, <code>or</code>,
    #               <code>phrase</code>, <code>precedence</code>, <code>prefix</code>,
    #               <code>whitespace</code>. Default: All
    #               operators and special characters are enabled. Valid for:
    #               <code>simple</code>.</li>
    #            <li><code>phraseFields</code>: An array of the <code>text</code> or <code>text-array</code> fields you want to use for
    #               phrase searches. When the terms in the search string appear in
    #               close proximity within a field, the field scores higher. You can
    #               specify a weight for each field to boost that score. The
    #               <code>phraseSlop</code> option controls how much the matches
    #               can deviate from the search string and still be boosted. To
    #               specify a field weight, append a caret (<code>^</code>) symbol
    #               and the weight to the field name. For example, to boost phrase
    #               matches in the <code>title</code> field over the
    #               <code>abstract</code> field, you could specify:
    #               <code>"phraseFields":["title^3",
    #                  "plot"]</code>
    #               Valid values: The name of any <code>text</code> or
    #               <code>text-array</code> field and an optional numeric value greater than zero. Default: No fields. If you don't specify any fields with <code>phraseFields</code>, proximity scoring is disabled even if <code>phraseSlop</code> is specified. Valid
    #               for: <code>dismax</code>.</li>
    #            <li><code>phraseSlop</code>: An integer value that specifies how much matches can deviate from the search phrase and still be boosted according to the weights specified in the <code>phraseFields</code> option; for example, <code>phraseSlop: 2</code>. You must also specify <code>phraseFields</code> to enable proximity scoring. Valid values: positive integers. Default: 0. Valid for: <code>dismax</code>.</li>
    #            <li><code>explicitPhraseSlop</code>: An integer value that specifies how much a match can deviate from the search phrase when the phrase is enclosed in double quotes in the search string. (Phrases that exceed this proximity distance are not considered a match.) For example, to specify a slop of three for dismax phrase queries, you would specify <code>"explicitPhraseSlop":3</code>. Valid values: positive integers. Default: 0. Valid for: <code>dismax</code>.</li>
    #            <li><code>tieBreaker</code>: When a term in the search string is found in a document's field, a score is calculated for that field based on how common the word is in that field compared to other documents. If the term occurs in multiple fields within a document, by default only the highest scoring field contributes to the document's overall score. You can specify a <code>tieBreaker</code> value to enable the matches in lower-scoring fields to contribute to the document's score. That way, if two documents have the same max field score for a particular term, the score for the document that has matches in more fields will be higher. The formula for calculating the score with a tieBreaker is <code>(max field score) + (tieBreaker) * (sum of the scores for the rest of the matching fields)</code>.
    #   
    #               Set <code>tieBreaker</code> to 0 to disregard all but the highest scoring field (pure max): <code>"tieBreaker":0</code>. Set to 1 to sum the scores from all fields (pure sum): <code>"tieBreaker":1</code>. Valid values: 0.0 to 1.0. Default: 0.0. Valid for: <code>dismax</code>.
    #            </li>
    #         </ul>
    # @option params [String] :query_parser
    #   <p>Specifies which
    #            query parser to use to process the request. If <code>queryParser</code> is not specified, Amazon CloudSearch
    #            uses the <code>simple</code> query parser. </p>
    #         <p>Amazon CloudSearch supports four query parsers:</p>
    #         <ul>
    #            <li>
    #               <code>simple</code>: perform simple searches of <code>text</code> and
    #                  <code>text-array</code> fields. By default, the
    #                  <code>simple</code> query parser searches all
    #                  <code>text</code> and <code>text-array</code> fields. You
    #                  can specify which fields to search by with the
    #                  <code>queryOptions</code> parameter. If you prefix a search
    #                  term with a plus sign (+) documents must contain the term to be considered a match.
    #                  (This is the default, unless you configure the default operator with the <code>queryOptions</code> parameter.)
    #                  You can use the <code>-</code> (NOT), <code>|</code>
    #                  (OR), and <code>*</code> (wildcard) operators to exclude
    #                  particular terms, find results that match any of the specified
    #                  terms, or search for a prefix. To search for a phrase rather
    #                  than individual terms, enclose the phrase in double quotes. For
    #                  more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-text.html">Searching for Text</a> in the <i>Amazon CloudSearch Developer Guide</i>.
    #            </li>
    #            <li>
    #               <code>structured</code>: perform advanced searches by combining
    #                  multiple expressions to define the search criteria. You can also search
    #                  within particular fields, search for values and ranges of values, and use
    #                  advanced options such as term boosting, <code>matchall</code>, and <code>near</code>.
    #                  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-compound-queries.html">Constructing Compound Queries</a> in the <i>Amazon CloudSearch Developer Guide</i>.
    #            </li>
    #            <li>
    #               <code>lucene</code>: search using the Apache Lucene query parser syntax.
    #                  For more information, see <a href="http://lucene.apache.org/core/4_6_0/queryparser/org/apache/lucene/queryparser/classic/package-summary.html#package_description">Apache Lucene Query Parser Syntax</a>.
    #            </li>
    #            <li>
    #               <code>dismax</code>: search using the simplified subset of the Apache Lucene query parser syntax
    #                  defined by the DisMax query parser.
    #                  For more information, see <a href="http://wiki.apache.org/solr/DisMaxQParserPlugin#Query_Syntax">DisMax Query Parser Syntax</a>.
    #            </li>
    #   
    #         </ul>
    # @option params [String] :return
    #   <p>Specifies the field and expression values to include in the response. Multiple fields or expressions are specified as a comma-separated list. By default, a search response includes all
    #            return enabled fields (<code>_all_fields</code>).
    #            To  return only the document IDs for the matching documents,
    #            specify <code>_no_fields</code>.
    #            To retrieve the relevance score calculated for each document,
    #            specify <code>_score</code>.  </p>
    # @option params [Integer] :size
    #   <p>Specifies the maximum number of search hits to include in the response. </p>
    # @option params [String] :sort
    #   <p>Specifies the fields or custom expressions to use to sort the search
    #            results. Multiple fields or expressions are specified as a comma-separated list.
    #            You must specify the sort direction (<code>asc</code> or
    #            <code>desc</code>) for each field; for example, <code>year
    #               desc,title asc</code>. To use a field to sort results, the field must be sort-enabled in
    #            the domain configuration. Array type fields cannot be used for sorting.
    #            If no <code>sort</code> parameter is specified, results are sorted by
    #            their default relevance scores in descending order: <code>_score
    #               desc</code>. You can also sort by document ID
    #            (<code>_id asc</code>) and version (<code>_version desc</code>).</p>
    #         <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/sorting-results.html">Sorting Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [Integer] :start
    #   <p>Specifies the offset of the first search hit you want to return. Note that the result set is zero-based; the first result is at index 0. You can specify either the <code>start</code> or <code>cursor</code> parameter in a request, they are mutually exclusive.  </p>
    #         <p>For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html">Paginating Results</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @option params [String] :stats
    #   <p>Specifies one or more fields for which to get statistics information. Each specified field must be facet-enabled in the domain configuration. The fields are specified in JSON using the form:</p>
    #         <code>{"FIELD-A":{},"FIELD-B":{}}</code>
    #         <p>There are currently no options supported for statistics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cursor: "Cursor",
    #     expr: "Expr",
    #     facet: "Facet",
    #     filter_query: "FilterQuery",
    #     highlight: "Highlight",
    #     partial: false,
    #     query: "Query", # required
    #     query_options: "QueryOptions",
    #     query_parser: "simple" # One of: ["simple", "structured", "lucene", "dismax"],
    #     return: "Return",
    #     size: 1,
    #     sort: "Sort",
    #     start: 1,
    #     stats: "Stat"
    #   }
    #   options = {}
    #   response = client.search(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: {
    #       timems: 1,
    #       rid: "String"
    #     },
    #     hits: {
    #       found: 1,
    #       start: 1,
    #       cursor: "String",
    #       hit: [
    #         {
    #           id: "String",
    #           fields: {
    #             "String" => ["String"]
    #           },
    #           exprs: {
    #             "String" => "String"
    #           },
    #           highlights: {
    #             "String" => "String"
    #           }
    #         }
    #       ]
    #     },
    #     facets: {
    #       "String" => {
    #         buckets: [
    #           {
    #             value: "String",
    #             count: 1
    #           }
    #         ]
    #       }
    #     },
    #     stats: {
    #       "String" => {
    #         min: "String",
    #         max: "String",
    #         count: 1,
    #         missing: 1,
    #         sum: 1.0,
    #         sum_of_squares: 1.0,
    #         mean: "String",
    #         stddev: 1.0
    #       }
    #     }
    #   }
    # @return [Types::SearchResponse]
    def search(params = {}, options = {})
      request = build_request(:search, params)
      request.send_request(options)
    end

    # <p>Retrieves autocomplete suggestions for a partial query string. You can use suggestions enable you to display likely matches before users finish typing. In Amazon CloudSearch, suggestions are based on the contents of a particular text field. When you request suggestions, Amazon CloudSearch finds all of the documents whose values in the suggester field start with the specified query string. The beginning of the field must match the query string to be considered a match. </p>
    #       <p>For more information about configuring suggesters and retrieving suggestions, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html">Getting Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    # 
    #       <p>The endpoint for submitting <code>Suggest</code> requests is domain-specific. You submit suggest requests to a domain's search endpoint. To get the search endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
    # @param [Hash, Types::SuggestRequest] params
    # @option params [String] :query
    #   <p>Specifies the string for which you want to get suggestions.</p>
    # @option params [String] :suggester
    #   <p>Specifies the name of the suggester to use to find suggested matches.</p>
    # @option params [Integer] :size
    #   <p>Specifies the maximum number of suggestions to return. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query: "Query", # required
    #     suggester: "Suggester", # required
    #     size: 1
    #   }
    #   options = {}
    #   response = client.suggest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: {
    #       timems: 1,
    #       rid: "String"
    #     },
    #     suggest: {
    #       query: "String",
    #       found: 1,
    #       suggestions: [
    #         {
    #           suggestion: "String",
    #           score: 1,
    #           id: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::SuggestResponse]
    def suggest(params = {}, options = {})
      request = build_request(:suggest, params)
      request.send_request(options)
    end

    # <p>Posts a batch of documents to a search domain for indexing.  A document batch is a collection of add and delete operations that represent the documents you want to add, update, or delete from your domain. Batches can be described in either JSON or XML. Each item that you want Amazon CloudSearch to return as a search result (such as a product) is represented as a document. Every document has a unique ID and one or more fields that contain the data that you want to search and return in results. Individual documents  cannot contain more than 1 MB of data. The entire batch cannot exceed 5 MB. To get the best possible upload performance, group add and delete operations in batches that are close the 5 MB limit. Submitting a large volume of single-document batches can overload a domain's document service.  </p>
    #       <p>The endpoint for submitting <code>UploadDocuments</code> requests is domain-specific. To get the document endpoint for your domain, use the Amazon CloudSearch configuration service <code>DescribeDomains</code> action. A domain's endpoints are also displayed on the domain dashboard in the Amazon CloudSearch console. </p>
    #       <p>For more information about formatting your data for Amazon CloudSearch, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html">Preparing Your Data</a> in the <i>Amazon CloudSearch Developer Guide</i>.
    #       For more information about uploading data for indexing, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html">Uploading Data</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    # @param [Hash, Types::UploadDocumentsRequest] params
    # @option params [String] :documents
    #   <p>A batch of documents formatted in JSON or HTML.</p>
    # @option params [String] :content_type
    #   <p>The format of the batch you are uploading. Amazon CloudSearch supports two document batch formats:</p>
    #         <ul>
    #            <li>application/json</li>
    #            <li>application/xml</li>
    #         </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     documents: File.read("source_file"), # required
    #     content_type: "application/json" # One of: ["application/json", "application/xml"], # required
    #   }
    #   options = {}
    #   response = client.upload_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     adds: 1,
    #     deletes: 1,
    #     warnings: [
    #       {
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UploadDocumentsResponse]
    def upload_documents(params = {}, options = {})
      request = build_request(:upload_documents, params)
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
      context[:gem_name] = 'aws-sdk-cloudsearchdomain'
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
