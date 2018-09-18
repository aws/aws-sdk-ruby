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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-cloudsearchdomain/plugins/conditional_signing.rb'
require 'aws-sdk-cloudsearchdomain/plugins/switch_to_post.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudsearchdomain)

module Aws::CloudSearchDomain
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cloudsearchdomain

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::CloudSearchDomain::Plugins::ConditionalSigning)
    add_plugin(Aws::CloudSearchDomain::Plugins::SwitchToPost)

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
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
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
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [String] :sigv4_region
    #   Only needed when sending authenticated/signed requests to a Cloud
    #   Search domain and the endpoint does not contain the region name.
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

    # Retrieves a list of documents that match the specified search
    # criteria. How you specify the search criteria depends on which query
    # parser you use. Amazon CloudSearch supports four query parsers:
    #
    # * `simple`\: search all `text` and `text-array` fields for the
    #   specified string. Search for phrases, individual terms, and
    #   prefixes.
    # * `structured`\: search specific fields, construct compound queries
    #   using Boolean operators, and use advanced features such as term
    #   boosting and proximity searching.
    # * `lucene`\: specify search criteria using the Apache Lucene query
    #   parser syntax.
    # * `dismax`\: specify search criteria using the simplified subset of
    #   the Apache Lucene query parser syntax defined by the DisMax query
    #   parser.
    #
    # For more information, see [Searching Your Data][1] in the *Amazon
    # CloudSearch Developer Guide*.
    #
    # The endpoint for submitting `Search` requests is domain-specific. You
    # submit search requests to a domain's search endpoint. To get the
    # search endpoint for your domain, use the Amazon CloudSearch
    # configuration service `DescribeDomains` action. A domain's endpoints
    # are also displayed on the domain dashboard in the Amazon CloudSearch
    # console.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html
    #
    # @option params [String] :cursor
    #   Retrieves a cursor value you can use to page through large result
    #   sets. Use the `size` parameter to control the number of hits to
    #   include in each response. You can specify either the `cursor` or
    #   `start` parameter in a request; they are mutually exclusive. To get
    #   the first cursor, set the cursor value to `initial`. In subsequent
    #   requests, specify the cursor value returned in the hits section of the
    #   response.
    #
    #   For more information, see [Paginating Results][1] in the *Amazon
    #   CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html
    #
    # @option params [String] :expr
    #   Defines one or more numeric expressions that can be used to sort
    #   results or specify search or filter criteria. You can also specify
    #   expressions as return fields.
    #
    #   You specify the expressions in JSON using the form
    #   `\{"EXPRESSIONNAME":"EXPRESSION"\}`. You can define and use multiple
    #   expressions in a search request. For example:
    #
    #   ` \{"expression1":"_score*rating", "expression2":"(1/rank)*year"\} `
    #
    #   For information about the variables, operators, and functions you can
    #   use in expressions, see [Writing Expressions][1] in the *Amazon
    #   CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html#writing-expressions
    #
    # @option params [String] :facet
    #   Specifies one or more fields for which to get facet information, and
    #   options that control how the facet information is returned. Each
    #   specified field must be facet-enabled in the domain configuration. The
    #   fields and options are specified in JSON using the form
    #   `\{"FIELD":\{"OPTION":VALUE,"OPTION:"STRING"\},"FIELD":\{"OPTION":VALUE,"OPTION":"STRING"\}\}`.
    #
    #   You can specify the following faceting options:
    #
    #   * `buckets` specifies an array of the facet values or ranges to count.
    #     Ranges are specified using the same syntax that you use to search
    #     for a range of values. For more information, see [ Searching for a
    #     Range of Values][1] in the *Amazon CloudSearch Developer Guide*.
    #     Buckets are returned in the order they are specified in the request.
    #     The `sort` and `size` options are not valid if you specify
    #     `buckets`.
    #
    #   * `size` specifies the maximum number of facets to include in the
    #     results. By default, Amazon CloudSearch returns counts for the top
    #     10. The `size` parameter is only valid when you specify the `sort`
    #     option; it cannot be used in conjunction with `buckets`.
    #
    #   * `sort` specifies how you want to sort the facets in the results:
    #     `bucket` or `count`. Specify `bucket` to sort alphabetically or
    #     numerically by facet value (in ascending order). Specify `count` to
    #     sort by the facet counts computed for each facet value (in
    #     descending order). To retrieve facet counts for particular values or
    #     ranges of values, use the `buckets` option instead of `sort`.
    #
    #   If no facet options are specified, facet counts are computed for all
    #   field values, the facets are sorted by facet count, and the top 10
    #   facets are returned in the results.
    #
    #   To count particular buckets of values, use the `buckets` option. For
    #   example, the following request uses the `buckets` option to calculate
    #   and return facet counts by decade.
    #
    #   `
    #   \{"year":\{"buckets":["[1970,1979]","[1980,1989]","[1990,1999]","[2000,2009]","[2010,\}"]\}\}
    #   `
    #
    #   To sort facets by facet count, use the `count` option. For example,
    #   the following request sets the `sort` option to `count` to sort the
    #   facet values by facet count, with the facet values that have the most
    #   matching documents listed first. Setting the `size` option to 3
    #   returns only the top three facet values.
    #
    #   ` \{"year":\{"sort":"count","size":3\}\} `
    #
    #   To sort the facets by value, use the `bucket` option. For example, the
    #   following request sets the `sort` option to `bucket` to sort the facet
    #   values numerically by year, with earliest year listed first.
    #
    #   ` \{"year":\{"sort":"bucket"\}\} `
    #
    #   For more information, see [Getting and Using Facet Information][2] in
    #   the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-ranges.html
    #   [2]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/faceting.html
    #
    # @option params [String] :filter_query
    #   Specifies a structured query that filters the results of a search
    #   without affecting how the results are scored and sorted. You use
    #   `filterQuery` in conjunction with the `query` parameter to filter the
    #   documents that match the constraints specified in the `query`
    #   parameter. Specifying a filter controls only which matching documents
    #   are included in the results, it has no effect on how they are scored
    #   and sorted. The `filterQuery` parameter supports the full structured
    #   query syntax.
    #
    #   For more information about using filters, see [Filtering Matching
    #   Documents][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/filtering-results.html
    #
    # @option params [String] :highlight
    #   Retrieves highlights for matches in the specified `text` or
    #   `text-array` fields. Each specified field must be highlight enabled in
    #   the domain configuration. The fields and options are specified in JSON
    #   using the form
    #   `\{"FIELD":\{"OPTION":VALUE,"OPTION:"STRING"\},"FIELD":\{"OPTION":VALUE,"OPTION":"STRING"\}\}`.
    #
    #   You can specify the following highlight options:
    #
    #   * `format`\: specifies the format of the data in the text field:
    #     `text` or `html`. When data is returned as HTML, all
    #     non-alphanumeric characters are encoded. The default is `html`.
    #   * `max_phrases`\: specifies the maximum number of occurrences of the
    #     search term(s) you want to highlight. By default, the first
    #     occurrence is highlighted.
    #   * `pre_tag`\: specifies the string to prepend to an occurrence of a
    #     search term. The default for HTML highlights is `&lt;em&gt;`. The
    #     default for text highlights is `*`.
    #   * `post_tag`\: specifies the string to append to an occurrence of a
    #     search term. The default for HTML highlights is `&lt;/em&gt;`. The
    #     default for text highlights is `*`.
    #
    #   If no highlight options are specified for a field, the returned field
    #   text is treated as HTML and the first match is highlighted with
    #   emphasis tags: `&lt;em>search-term&lt;/em&gt;`.
    #
    #   For example, the following request retrieves highlights for the
    #   `actors` and `title` fields.
    #
    #   `\{ "actors": \{\}, "title": \{"format": "text","max_phrases":
    #   2,"pre_tag": "","post_tag": ""\} \}`
    #
    # @option params [Boolean] :partial
    #   Enables partial results to be returned if one or more index partitions
    #   are unavailable. When your search index is partitioned across multiple
    #   search instances, by default Amazon CloudSearch only returns results
    #   if every partition can be queried. This means that the failure of a
    #   single search instance can result in 5xx (internal server) errors.
    #   When you enable partial results, Amazon CloudSearch returns whatever
    #   results are available and includes the percentage of documents
    #   searched in the search results (percent-searched). This enables you to
    #   more gracefully degrade your users' search experience. For example,
    #   rather than displaying no results, you could display the partial
    #   results and a message indicating that the results might be incomplete
    #   due to a temporary system outage.
    #
    # @option params [required, String] :query
    #   Specifies the search criteria for the request. How you specify the
    #   search criteria depends on the query parser used for the request and
    #   the parser options specified in the `queryOptions` parameter. By
    #   default, the `simple` query parser is used to process requests. To use
    #   the `structured`, `lucene`, or `dismax` query parser, you must also
    #   specify the `queryParser` parameter.
    #
    #   For more information about specifying search criteria, see [Searching
    #   Your Data][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching.html
    #
    # @option params [String] :query_options
    #   Configures options for the query parser specified in the `queryParser`
    #   parameter. You specify the options in JSON using the following form
    #   `\{"OPTION1":"VALUE1","OPTION2":VALUE2"..."OPTIONN":"VALUEN"\}.`
    #
    #   The options you can configure vary according to which parser you use:
    #
    #   * `defaultOperator`\: The default operator used to combine individual
    #     terms in the search string. For example: `defaultOperator: 'or'`.
    #     For the `dismax` parser, you specify a percentage that represents
    #     the percentage of terms in the search string (rounded down) that
    #     must match, rather than a default operator. A value of `0%` is the
    #     equivalent to OR, and a value of `100%` is equivalent to AND. The
    #     percentage must be specified as a value in the range 0-100 followed
    #     by the percent (%) symbol. For example, `defaultOperator: 50%`.
    #     Valid values: `and`, `or`, a percentage in the range 0%-100%
    #     (`dismax`). Default: `and` (`simple`, `structured`, `lucene`) or
    #     `100` (`dismax`). Valid for: `simple`, `structured`, `lucene`, and
    #     `dismax`.
    #   * `fields`\: An array of the fields to search when no fields are
    #     specified in a search. If no fields are specified in a search and
    #     this option is not specified, all text and text-array fields are
    #     searched. You can specify a weight for each field to control the
    #     relative importance of each field when Amazon CloudSearch calculates
    #     relevance scores. To specify a field weight, append a caret (`^`)
    #     symbol and the weight to the field name. For example, to boost the
    #     importance of the `title` field over the `description` field you
    #     could specify: `"fields":["title^5","description"]`. Valid values:
    #     The name of any configured field and an optional numeric value
    #     greater than zero. Default: All `text` and `text-array` fields.
    #     Valid for: `simple`, `structured`, `lucene`, and `dismax`.
    #   * `operators`\: An array of the operators or special characters you
    #     want to disable for the simple query parser. If you disable the
    #     `and`, `or`, or `not` operators, the corresponding operators (`+`,
    #     `|`, `-`) have no special meaning and are dropped from the search
    #     string. Similarly, disabling `prefix` disables the wildcard operator
    #     (`*`) and disabling `phrase` disables the ability to search for
    #     phrases by enclosing phrases in double quotes. Disabling precedence
    #     disables the ability to control order of precedence using
    #     parentheses. Disabling `near` disables the ability to use the ~
    #     operator to perform a sloppy phrase search. Disabling the `fuzzy`
    #     operator disables the ability to use the ~ operator to perform a
    #     fuzzy search. `escape` disables the ability to use a backslash (``)
    #     to escape special characters within the search string. Disabling
    #     whitespace is an advanced option that prevents the parser from
    #     tokenizing on whitespace, which can be useful for Vietnamese. (It
    #     prevents Vietnamese words from being split incorrectly.) For
    #     example, you could disable all operators other than the phrase
    #     operator to support just simple term and phrase queries:
    #     `"operators":["and","not","or", "prefix"]`. Valid values: `and`,
    #     `escape`, `fuzzy`, `near`, `not`, `or`, `phrase`, `precedence`,
    #     `prefix`, `whitespace`. Default: All operators and special
    #     characters are enabled. Valid for: `simple`.
    #   * `phraseFields`\: An array of the `text` or `text-array` fields you
    #     want to use for phrase searches. When the terms in the search string
    #     appear in close proximity within a field, the field scores higher.
    #     You can specify a weight for each field to boost that score. The
    #     `phraseSlop` option controls how much the matches can deviate from
    #     the search string and still be boosted. To specify a field weight,
    #     append a caret (`^`) symbol and the weight to the field name. For
    #     example, to boost phrase matches in the `title` field over the
    #     `abstract` field, you could specify: `"phraseFields":["title^3",
    #     "plot"]` Valid values: The name of any `text` or `text-array` field
    #     and an optional numeric value greater than zero. Default: No fields.
    #     If you don't specify any fields with `phraseFields`, proximity
    #     scoring is disabled even if `phraseSlop` is specified. Valid for:
    #     `dismax`.
    #   * `phraseSlop`\: An integer value that specifies how much matches can
    #     deviate from the search phrase and still be boosted according to the
    #     weights specified in the `phraseFields` option; for example,
    #     `phraseSlop: 2`. You must also specify `phraseFields` to enable
    #     proximity scoring. Valid values: positive integers. Default: 0.
    #     Valid for: `dismax`.
    #   * `explicitPhraseSlop`\: An integer value that specifies how much a
    #     match can deviate from the search phrase when the phrase is enclosed
    #     in double quotes in the search string. (Phrases that exceed this
    #     proximity distance are not considered a match.) For example, to
    #     specify a slop of three for dismax phrase queries, you would specify
    #     `"explicitPhraseSlop":3`. Valid values: positive integers. Default:
    #     0. Valid for: `dismax`.
    #   * `tieBreaker`\: When a term in the search string is found in a
    #     document's field, a score is calculated for that field based on how
    #     common the word is in that field compared to other documents. If the
    #     term occurs in multiple fields within a document, by default only
    #     the highest scoring field contributes to the document's overall
    #     score. You can specify a `tieBreaker` value to enable the matches in
    #     lower-scoring fields to contribute to the document's score. That
    #     way, if two documents have the same max field score for a particular
    #     term, the score for the document that has matches in more fields
    #     will be higher. The formula for calculating the score with a
    #     tieBreaker is `(max field score) + (tieBreaker) * (sum of the scores
    #     for the rest of the matching fields)`. Set `tieBreaker` to 0 to
    #     disregard all but the highest scoring field (pure max):
    #     `"tieBreaker":0`. Set to 1 to sum the scores from all fields (pure
    #     sum): `"tieBreaker":1`. Valid values: 0.0 to 1.0. Default: 0.0.
    #     Valid for: `dismax`.
    #
    # @option params [String] :query_parser
    #   Specifies which query parser to use to process the request. If
    #   `queryParser` is not specified, Amazon CloudSearch uses the `simple`
    #   query parser.
    #
    #   Amazon CloudSearch supports four query parsers:
    #
    #   * `simple`\: perform simple searches of `text` and `text-array`
    #     fields. By default, the `simple` query parser searches all `text`
    #     and `text-array` fields. You can specify which fields to search by
    #     with the `queryOptions` parameter. If you prefix a search term with
    #     a plus sign (+) documents must contain the term to be considered a
    #     match. (This is the default, unless you configure the default
    #     operator with the `queryOptions` parameter.) You can use the `-`
    #     (NOT), `|` (OR), and `*` (wildcard) operators to exclude particular
    #     terms, find results that match any of the specified terms, or search
    #     for a prefix. To search for a phrase rather than individual terms,
    #     enclose the phrase in double quotes. For more information, see
    #     [Searching for Text][1] in the *Amazon CloudSearch Developer Guide*.
    #   * `structured`\: perform advanced searches by combining multiple
    #     expressions to define the search criteria. You can also search
    #     within particular fields, search for values and ranges of values,
    #     and use advanced options such as term boosting, `matchall`, and
    #     `near`. For more information, see [Constructing Compound Queries][2]
    #     in the *Amazon CloudSearch Developer Guide*.
    #   * `lucene`\: search using the Apache Lucene query parser syntax. For
    #     more information, see [Apache Lucene Query Parser Syntax][3].
    #   * `dismax`\: search using the simplified subset of the Apache Lucene
    #     query parser syntax defined by the DisMax query parser. For more
    #     information, see [DisMax Query Parser Syntax][4].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-text.html
    #   [2]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/searching-compound-queries.html
    #   [3]: http://lucene.apache.org/core/4_6_0/queryparser/org/apache/lucene/queryparser/classic/package-summary.html#package_description
    #   [4]: http://wiki.apache.org/solr/DisMaxQParserPlugin#Query_Syntax
    #
    # @option params [String] :return
    #   Specifies the field and expression values to include in the response.
    #   Multiple fields or expressions are specified as a comma-separated
    #   list. By default, a search response includes all return enabled fields
    #   (`_all_fields`). To return only the document IDs for the matching
    #   documents, specify `_no_fields`. To retrieve the relevance score
    #   calculated for each document, specify `_score`.
    #
    # @option params [Integer] :size
    #   Specifies the maximum number of search hits to include in the
    #   response.
    #
    # @option params [String] :sort
    #   Specifies the fields or custom expressions to use to sort the search
    #   results. Multiple fields or expressions are specified as a
    #   comma-separated list. You must specify the sort direction (`asc` or
    #   `desc`) for each field; for example, `year desc,title asc`. To use a
    #   field to sort results, the field must be sort-enabled in the domain
    #   configuration. Array type fields cannot be used for sorting. If no
    #   `sort` parameter is specified, results are sorted by their default
    #   relevance scores in descending order: `_score desc`. You can also sort
    #   by document ID (`_id asc`) and version (`_version desc`).
    #
    #   For more information, see [Sorting Results][1] in the *Amazon
    #   CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/sorting-results.html
    #
    # @option params [Integer] :start
    #   Specifies the offset of the first search hit you want to return. Note
    #   that the result set is zero-based; the first result is at index 0. You
    #   can specify either the `start` or `cursor` parameter in a request,
    #   they are mutually exclusive.
    #
    #   For more information, see [Paginating Results][1] in the *Amazon
    #   CloudSearch Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/paginating-results.html
    #
    # @option params [String] :stats
    #   Specifies one or more fields for which to get statistics information.
    #   Each specified field must be facet-enabled in the domain
    #   configuration. The fields are specified in JSON using the form:
    #
    #    `\{"FIELD-A":\{\},"FIELD-B":\{\}\}` There are currently no options supported for statistics.
    #
    # @return [Types::SearchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResponse#status #status} => Types::SearchStatus
    #   * {Types::SearchResponse#hits #hits} => Types::Hits
    #   * {Types::SearchResponse#facets #facets} => Hash&lt;String,Types::BucketInfo&gt;
    #   * {Types::SearchResponse#stats #stats} => Hash&lt;String,Types::FieldStats&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search({
    #     cursor: "Cursor",
    #     expr: "Expr",
    #     facet: "Facet",
    #     filter_query: "FilterQuery",
    #     highlight: "Highlight",
    #     partial: false,
    #     query: "Query", # required
    #     query_options: "QueryOptions",
    #     query_parser: "simple", # accepts simple, structured, lucene, dismax
    #     return: "Return",
    #     size: 1,
    #     sort: "Sort",
    #     start: 1,
    #     stats: "Stat",
    #   })
    #
    # @example Response structure
    #
    #   resp.status.timems #=> Integer
    #   resp.status.rid #=> String
    #   resp.hits.found #=> Integer
    #   resp.hits.start #=> Integer
    #   resp.hits.cursor #=> String
    #   resp.hits.hit #=> Array
    #   resp.hits.hit[0].id #=> String
    #   resp.hits.hit[0].fields #=> Hash
    #   resp.hits.hit[0].fields["String"] #=> Array
    #   resp.hits.hit[0].fields["String"][0] #=> String
    #   resp.hits.hit[0].exprs #=> Hash
    #   resp.hits.hit[0].exprs["String"] #=> String
    #   resp.hits.hit[0].highlights #=> Hash
    #   resp.hits.hit[0].highlights["String"] #=> String
    #   resp.facets #=> Hash
    #   resp.facets["String"].buckets #=> Array
    #   resp.facets["String"].buckets[0].value #=> String
    #   resp.facets["String"].buckets[0].count #=> Integer
    #   resp.stats #=> Hash
    #   resp.stats["String"].min #=> String
    #   resp.stats["String"].max #=> String
    #   resp.stats["String"].count #=> Integer
    #   resp.stats["String"].missing #=> Integer
    #   resp.stats["String"].sum #=> Float
    #   resp.stats["String"].sum_of_squares #=> Float
    #   resp.stats["String"].mean #=> String
    #   resp.stats["String"].stddev #=> Float
    #
    # @overload search(params = {})
    # @param [Hash] params ({})
    def search(params = {}, options = {})
      req = build_request(:search, params)
      req.send_request(options)
    end

    # Retrieves autocomplete suggestions for a partial query string. You can
    # use suggestions enable you to display likely matches before users
    # finish typing. In Amazon CloudSearch, suggestions are based on the
    # contents of a particular text field. When you request suggestions,
    # Amazon CloudSearch finds all of the documents whose values in the
    # suggester field start with the specified query string. The beginning
    # of the field must match the query string to be considered a match.
    #
    # For more information about configuring suggesters and retrieving
    # suggestions, see [Getting Suggestions][1] in the *Amazon CloudSearch
    # Developer Guide*.
    #
    # The endpoint for submitting `Suggest` requests is domain-specific. You
    # submit suggest requests to a domain's search endpoint. To get the
    # search endpoint for your domain, use the Amazon CloudSearch
    # configuration service `DescribeDomains` action. A domain's endpoints
    # are also displayed on the domain dashboard in the Amazon CloudSearch
    # console.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
    #
    # @option params [required, String] :query
    #   Specifies the string for which you want to get suggestions.
    #
    # @option params [required, String] :suggester
    #   Specifies the name of the suggester to use to find suggested matches.
    #
    # @option params [Integer] :size
    #   Specifies the maximum number of suggestions to return.
    #
    # @return [Types::SuggestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SuggestResponse#status #status} => Types::SuggestStatus
    #   * {Types::SuggestResponse#suggest #suggest} => Types::SuggestModel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suggest({
    #     query: "Query", # required
    #     suggester: "Suggester", # required
    #     size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status.timems #=> Integer
    #   resp.status.rid #=> String
    #   resp.suggest.query #=> String
    #   resp.suggest.found #=> Integer
    #   resp.suggest.suggestions #=> Array
    #   resp.suggest.suggestions[0].suggestion #=> String
    #   resp.suggest.suggestions[0].score #=> Integer
    #   resp.suggest.suggestions[0].id #=> String
    #
    # @overload suggest(params = {})
    # @param [Hash] params ({})
    def suggest(params = {}, options = {})
      req = build_request(:suggest, params)
      req.send_request(options)
    end

    # Posts a batch of documents to a search domain for indexing. A document
    # batch is a collection of add and delete operations that represent the
    # documents you want to add, update, or delete from your domain. Batches
    # can be described in either JSON or XML. Each item that you want Amazon
    # CloudSearch to return as a search result (such as a product) is
    # represented as a document. Every document has a unique ID and one or
    # more fields that contain the data that you want to search and return
    # in results. Individual documents cannot contain more than 1 MB of
    # data. The entire batch cannot exceed 5 MB. To get the best possible
    # upload performance, group add and delete operations in batches that
    # are close the 5 MB limit. Submitting a large volume of single-document
    # batches can overload a domain's document service.
    #
    # The endpoint for submitting `UploadDocuments` requests is
    # domain-specific. To get the document endpoint for your domain, use the
    # Amazon CloudSearch configuration service `DescribeDomains` action. A
    # domain's endpoints are also displayed on the domain dashboard in the
    # Amazon CloudSearch console.
    #
    # For more information about formatting your data for Amazon
    # CloudSearch, see [Preparing Your Data][1] in the *Amazon CloudSearch
    # Developer Guide*. For more information about uploading data for
    # indexing, see [Uploading Data][2] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/preparing-data.html
    # [2]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/uploading-data.html
    #
    # @option params [required, String, IO] :documents
    #   A batch of documents formatted in JSON or HTML.
    #
    # @option params [required, String] :content_type
    #   The format of the batch you are uploading. Amazon CloudSearch supports
    #   two document batch formats:
    #
    #   * application/json
    #   * application/xml
    #
    # @return [Types::UploadDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadDocumentsResponse#status #status} => String
    #   * {Types::UploadDocumentsResponse#adds #adds} => Integer
    #   * {Types::UploadDocumentsResponse#deletes #deletes} => Integer
    #   * {Types::UploadDocumentsResponse#warnings #warnings} => Array&lt;Types::DocumentServiceWarning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_documents({
    #     documents: "data", # required
    #     content_type: "application/json", # required, accepts application/json, application/xml
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.adds #=> Integer
    #   resp.deletes #=> Integer
    #   resp.warnings #=> Array
    #   resp.warnings[0].message #=> String
    #
    # @overload upload_documents(params = {})
    # @param [Hash] params ({})
    def upload_documents(params = {}, options = {})
      req = build_request(:upload_documents, params)
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
      context[:gem_name] = 'aws-sdk-cloudsearchdomain'
      context[:gem_version] = '1.3.0'
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
