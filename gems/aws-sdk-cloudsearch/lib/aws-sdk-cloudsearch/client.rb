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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudsearch)

module Aws::CloudSearch
  # An API client for CloudSearch.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudSearch::Client.new(
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

    @identifier = :cloudsearch

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
    add_plugin(Aws::Plugins::Protocols::Query)

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

    # Indexes the search suggestions. For more information, see [Configuring
    # Suggesters][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @return [Types::BuildSuggestersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BuildSuggestersResponse#field_names #field_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.build_suggesters({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_names #=> Array
    #   resp.field_names[0] #=> String
    #
    # @overload build_suggesters(params = {})
    # @param [Hash] params ({})
    def build_suggesters(params = {}, options = {})
      req = build_request(:build_suggesters, params)
      req.send_request(options)
    end

    # Creates a new search domain. For more information, see [Creating a
    # Search Domain][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html
    #
    # @option params [required, String] :domain_name
    #   A name for the domain you are creating. Allowed characters are a-z
    #   (lower-case letters), 0-9, and hyphen (-). Domain names must start
    #   with a letter or number and be at least 3 and no more than 28
    #   characters long.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.doc_service.endpoint #=> String
    #   resp.domain_status.search_service.endpoint #=> String
    #   resp.domain_status.requires_index_documents #=> Boolean
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.search_instance_type #=> String
    #   resp.domain_status.search_partition_count #=> Integer
    #   resp.domain_status.search_instance_count #=> Integer
    #   resp.domain_status.limits.maximum_replication_count #=> Integer
    #   resp.domain_status.limits.maximum_partition_count #=> Integer
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Configures an analysis scheme that can be applied to a `text` or
    # `text-array` field to define language-specific text processing
    # options. For more information, see [Configuring Analysis Schemes][1]
    # in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, Types::AnalysisScheme] :analysis_scheme
    #   Configuration information for an analysis scheme. Each analysis scheme
    #   has a unique name and specifies the language of the text to be
    #   processed. The following options can be configured for an analysis
    #   scheme: `Synonyms`, `Stopwords`, `StemmingDictionary`,
    #   `JapaneseTokenizationDictionary` and `AlgorithmicStemming`.
    #
    # @return [Types::DefineAnalysisSchemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DefineAnalysisSchemeResponse#analysis_scheme #analysis_scheme} => Types::AnalysisSchemeStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_analysis_scheme({
    #     domain_name: "DomainName", # required
    #     analysis_scheme: { # required
    #       analysis_scheme_name: "StandardName", # required
    #       analysis_scheme_language: "ar", # required, accepts ar, bg, ca, cs, da, de, el, en, es, eu, fa, fi, fr, ga, gl, he, hi, hu, hy, id, it, ja, ko, lv, mul, nl, no, pt, ro, ru, sv, th, tr, zh-Hans, zh-Hant
    #       analysis_options: {
    #         synonyms: "String",
    #         stopwords: "String",
    #         stemming_dictionary: "String",
    #         japanese_tokenization_dictionary: "String",
    #         algorithmic_stemming: "none", # accepts none, minimal, light, full
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_scheme.options.analysis_scheme_name #=> String
    #   resp.analysis_scheme.options.analysis_scheme_language #=> String, one of "ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"
    #   resp.analysis_scheme.options.analysis_options.synonyms #=> String
    #   resp.analysis_scheme.options.analysis_options.stopwords #=> String
    #   resp.analysis_scheme.options.analysis_options.stemming_dictionary #=> String
    #   resp.analysis_scheme.options.analysis_options.japanese_tokenization_dictionary #=> String
    #   resp.analysis_scheme.options.analysis_options.algorithmic_stemming #=> String, one of "none", "minimal", "light", "full"
    #   resp.analysis_scheme.status.creation_date #=> Time
    #   resp.analysis_scheme.status.update_date #=> Time
    #   resp.analysis_scheme.status.update_version #=> Integer
    #   resp.analysis_scheme.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.analysis_scheme.status.pending_deletion #=> Boolean
    #
    # @overload define_analysis_scheme(params = {})
    # @param [Hash] params ({})
    def define_analysis_scheme(params = {}, options = {})
      req = build_request(:define_analysis_scheme, params)
      req.send_request(options)
    end

    # Configures an `Expression` for the search domain. Used to create new
    # expressions and modify existing ones. If the expression exists, the
    # new configuration replaces the old one. For more information, see
    # [Configuring Expressions][1] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, Types::Expression] :expression
    #   A named expression that can be evaluated at search time. Can be used
    #   to sort the search results, define other expressions, or return
    #   computed information in the search results.
    #
    # @return [Types::DefineExpressionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DefineExpressionResponse#expression #expression} => Types::ExpressionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_expression({
    #     domain_name: "DomainName", # required
    #     expression: { # required
    #       expression_name: "StandardName", # required
    #       expression_value: "ExpressionValue", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.expression.options.expression_name #=> String
    #   resp.expression.options.expression_value #=> String
    #   resp.expression.status.creation_date #=> Time
    #   resp.expression.status.update_date #=> Time
    #   resp.expression.status.update_version #=> Integer
    #   resp.expression.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.expression.status.pending_deletion #=> Boolean
    #
    # @overload define_expression(params = {})
    # @param [Hash] params ({})
    def define_expression(params = {}, options = {})
      req = build_request(:define_expression, params)
      req.send_request(options)
    end

    # Configures an `IndexField` for the search domain. Used to create new
    # fields and modify existing ones. You must specify the name of the
    # domain you are configuring and an index field configuration. The index
    # field configuration specifies a unique name, the index field type, and
    # the options you want to configure for the field. The options you can
    # specify depend on the `IndexFieldType`. If the field exists, the new
    # configuration replaces the old one. For more information, see
    # [Configuring Index Fields][1] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, Types::IndexField] :index_field
    #   The index field and field options you want to configure.
    #
    # @return [Types::DefineIndexFieldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DefineIndexFieldResponse#index_field #index_field} => Types::IndexFieldStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_index_field({
    #     domain_name: "DomainName", # required
    #     index_field: { # required
    #       index_field_name: "DynamicFieldName", # required
    #       index_field_type: "int", # required, accepts int, double, literal, text, date, latlon, int-array, double-array, literal-array, text-array, date-array
    #       int_options: {
    #         default_value: 1,
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false,
    #       },
    #       double_options: {
    #         default_value: 1.0,
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false,
    #       },
    #       literal_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false,
    #       },
    #       text_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         return_enabled: false,
    #         sort_enabled: false,
    #         highlight_enabled: false,
    #         analysis_scheme: "Word",
    #       },
    #       date_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false,
    #       },
    #       lat_lon_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false,
    #       },
    #       int_array_options: {
    #         default_value: 1,
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #       },
    #       double_array_options: {
    #         default_value: 1.0,
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #       },
    #       literal_array_options: {
    #         default_value: "FieldValue",
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #       },
    #       text_array_options: {
    #         default_value: "FieldValue",
    #         source_fields: "FieldNameCommaList",
    #         return_enabled: false,
    #         highlight_enabled: false,
    #         analysis_scheme: "Word",
    #       },
    #       date_array_options: {
    #         default_value: "FieldValue",
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.index_field.options.index_field_name #=> String
    #   resp.index_field.options.index_field_type #=> String, one of "int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"
    #   resp.index_field.options.int_options.default_value #=> Integer
    #   resp.index_field.options.int_options.source_field #=> String
    #   resp.index_field.options.int_options.facet_enabled #=> Boolean
    #   resp.index_field.options.int_options.search_enabled #=> Boolean
    #   resp.index_field.options.int_options.return_enabled #=> Boolean
    #   resp.index_field.options.int_options.sort_enabled #=> Boolean
    #   resp.index_field.options.double_options.default_value #=> Float
    #   resp.index_field.options.double_options.source_field #=> String
    #   resp.index_field.options.double_options.facet_enabled #=> Boolean
    #   resp.index_field.options.double_options.search_enabled #=> Boolean
    #   resp.index_field.options.double_options.return_enabled #=> Boolean
    #   resp.index_field.options.double_options.sort_enabled #=> Boolean
    #   resp.index_field.options.literal_options.default_value #=> String
    #   resp.index_field.options.literal_options.source_field #=> String
    #   resp.index_field.options.literal_options.facet_enabled #=> Boolean
    #   resp.index_field.options.literal_options.search_enabled #=> Boolean
    #   resp.index_field.options.literal_options.return_enabled #=> Boolean
    #   resp.index_field.options.literal_options.sort_enabled #=> Boolean
    #   resp.index_field.options.text_options.default_value #=> String
    #   resp.index_field.options.text_options.source_field #=> String
    #   resp.index_field.options.text_options.return_enabled #=> Boolean
    #   resp.index_field.options.text_options.sort_enabled #=> Boolean
    #   resp.index_field.options.text_options.highlight_enabled #=> Boolean
    #   resp.index_field.options.text_options.analysis_scheme #=> String
    #   resp.index_field.options.date_options.default_value #=> String
    #   resp.index_field.options.date_options.source_field #=> String
    #   resp.index_field.options.date_options.facet_enabled #=> Boolean
    #   resp.index_field.options.date_options.search_enabled #=> Boolean
    #   resp.index_field.options.date_options.return_enabled #=> Boolean
    #   resp.index_field.options.date_options.sort_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.default_value #=> String
    #   resp.index_field.options.lat_lon_options.source_field #=> String
    #   resp.index_field.options.lat_lon_options.facet_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.search_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.return_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.sort_enabled #=> Boolean
    #   resp.index_field.options.int_array_options.default_value #=> Integer
    #   resp.index_field.options.int_array_options.source_fields #=> String
    #   resp.index_field.options.int_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.int_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.int_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.double_array_options.default_value #=> Float
    #   resp.index_field.options.double_array_options.source_fields #=> String
    #   resp.index_field.options.double_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.double_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.double_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.literal_array_options.default_value #=> String
    #   resp.index_field.options.literal_array_options.source_fields #=> String
    #   resp.index_field.options.literal_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.literal_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.literal_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.text_array_options.default_value #=> String
    #   resp.index_field.options.text_array_options.source_fields #=> String
    #   resp.index_field.options.text_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.text_array_options.highlight_enabled #=> Boolean
    #   resp.index_field.options.text_array_options.analysis_scheme #=> String
    #   resp.index_field.options.date_array_options.default_value #=> String
    #   resp.index_field.options.date_array_options.source_fields #=> String
    #   resp.index_field.options.date_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.date_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.date_array_options.return_enabled #=> Boolean
    #   resp.index_field.status.creation_date #=> Time
    #   resp.index_field.status.update_date #=> Time
    #   resp.index_field.status.update_version #=> Integer
    #   resp.index_field.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.index_field.status.pending_deletion #=> Boolean
    #
    # @overload define_index_field(params = {})
    # @param [Hash] params ({})
    def define_index_field(params = {}, options = {})
      req = build_request(:define_index_field, params)
      req.send_request(options)
    end

    # Configures a suggester for a domain. A suggester enables you to
    # display possible matches before users finish typing their queries.
    # When you configure a suggester, you must specify the name of the text
    # field you want to search for possible matches and a unique name for
    # the suggester. For more information, see [Getting Search
    # Suggestions][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, Types::Suggester] :suggester
    #   Configuration information for a search suggester. Each suggester has a
    #   unique name and specifies the text field you want to use for
    #   suggestions. The following options can be configured for a suggester:
    #   `FuzzyMatching`, `SortExpression`.
    #
    # @return [Types::DefineSuggesterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DefineSuggesterResponse#suggester #suggester} => Types::SuggesterStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.define_suggester({
    #     domain_name: "DomainName", # required
    #     suggester: { # required
    #       suggester_name: "StandardName", # required
    #       document_suggester_options: { # required
    #         source_field: "FieldName", # required
    #         fuzzy_matching: "none", # accepts none, low, high
    #         sort_expression: "String",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.suggester.options.suggester_name #=> String
    #   resp.suggester.options.document_suggester_options.source_field #=> String
    #   resp.suggester.options.document_suggester_options.fuzzy_matching #=> String, one of "none", "low", "high"
    #   resp.suggester.options.document_suggester_options.sort_expression #=> String
    #   resp.suggester.status.creation_date #=> Time
    #   resp.suggester.status.update_date #=> Time
    #   resp.suggester.status.update_version #=> Integer
    #   resp.suggester.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.suggester.status.pending_deletion #=> Boolean
    #
    # @overload define_suggester(params = {})
    # @param [Hash] params ({})
    def define_suggester(params = {}, options = {})
      req = build_request(:define_suggester, params)
      req.send_request(options)
    end

    # Deletes an analysis scheme. For more information, see [Configuring
    # Analysis Schemes][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :analysis_scheme_name
    #   The name of the analysis scheme you want to delete.
    #
    # @return [Types::DeleteAnalysisSchemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAnalysisSchemeResponse#analysis_scheme #analysis_scheme} => Types::AnalysisSchemeStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analysis_scheme({
    #     domain_name: "DomainName", # required
    #     analysis_scheme_name: "StandardName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_scheme.options.analysis_scheme_name #=> String
    #   resp.analysis_scheme.options.analysis_scheme_language #=> String, one of "ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"
    #   resp.analysis_scheme.options.analysis_options.synonyms #=> String
    #   resp.analysis_scheme.options.analysis_options.stopwords #=> String
    #   resp.analysis_scheme.options.analysis_options.stemming_dictionary #=> String
    #   resp.analysis_scheme.options.analysis_options.japanese_tokenization_dictionary #=> String
    #   resp.analysis_scheme.options.analysis_options.algorithmic_stemming #=> String, one of "none", "minimal", "light", "full"
    #   resp.analysis_scheme.status.creation_date #=> Time
    #   resp.analysis_scheme.status.update_date #=> Time
    #   resp.analysis_scheme.status.update_version #=> Integer
    #   resp.analysis_scheme.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.analysis_scheme.status.pending_deletion #=> Boolean
    #
    # @overload delete_analysis_scheme(params = {})
    # @param [Hash] params ({})
    def delete_analysis_scheme(params = {}, options = {})
      req = build_request(:delete_analysis_scheme, params)
      req.send_request(options)
    end

    # Permanently deletes a search domain and all of its data. Once a domain
    # has been deleted, it cannot be recovered. For more information, see
    # [Deleting a Search Domain][1] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to permanently delete.
    #
    # @return [Types::DeleteDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResponse#domain_status #domain_status} => Types::DomainStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status.domain_id #=> String
    #   resp.domain_status.domain_name #=> String
    #   resp.domain_status.arn #=> String
    #   resp.domain_status.created #=> Boolean
    #   resp.domain_status.deleted #=> Boolean
    #   resp.domain_status.doc_service.endpoint #=> String
    #   resp.domain_status.search_service.endpoint #=> String
    #   resp.domain_status.requires_index_documents #=> Boolean
    #   resp.domain_status.processing #=> Boolean
    #   resp.domain_status.search_instance_type #=> String
    #   resp.domain_status.search_partition_count #=> Integer
    #   resp.domain_status.search_instance_count #=> Integer
    #   resp.domain_status.limits.maximum_replication_count #=> Integer
    #   resp.domain_status.limits.maximum_partition_count #=> Integer
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Removes an `Expression` from the search domain. For more information,
    # see [Configuring Expressions][1] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :expression_name
    #   The name of the `Expression` to delete.
    #
    # @return [Types::DeleteExpressionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteExpressionResponse#expression #expression} => Types::ExpressionStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_expression({
    #     domain_name: "DomainName", # required
    #     expression_name: "StandardName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.expression.options.expression_name #=> String
    #   resp.expression.options.expression_value #=> String
    #   resp.expression.status.creation_date #=> Time
    #   resp.expression.status.update_date #=> Time
    #   resp.expression.status.update_version #=> Integer
    #   resp.expression.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.expression.status.pending_deletion #=> Boolean
    #
    # @overload delete_expression(params = {})
    # @param [Hash] params ({})
    def delete_expression(params = {}, options = {})
      req = build_request(:delete_expression, params)
      req.send_request(options)
    end

    # Removes an `IndexField` from the search domain. For more information,
    # see [Configuring Index Fields][1] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :index_field_name
    #   The name of the index field your want to remove from the domain's
    #   indexing options.
    #
    # @return [Types::DeleteIndexFieldResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIndexFieldResponse#index_field #index_field} => Types::IndexFieldStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index_field({
    #     domain_name: "DomainName", # required
    #     index_field_name: "DynamicFieldName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_field.options.index_field_name #=> String
    #   resp.index_field.options.index_field_type #=> String, one of "int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"
    #   resp.index_field.options.int_options.default_value #=> Integer
    #   resp.index_field.options.int_options.source_field #=> String
    #   resp.index_field.options.int_options.facet_enabled #=> Boolean
    #   resp.index_field.options.int_options.search_enabled #=> Boolean
    #   resp.index_field.options.int_options.return_enabled #=> Boolean
    #   resp.index_field.options.int_options.sort_enabled #=> Boolean
    #   resp.index_field.options.double_options.default_value #=> Float
    #   resp.index_field.options.double_options.source_field #=> String
    #   resp.index_field.options.double_options.facet_enabled #=> Boolean
    #   resp.index_field.options.double_options.search_enabled #=> Boolean
    #   resp.index_field.options.double_options.return_enabled #=> Boolean
    #   resp.index_field.options.double_options.sort_enabled #=> Boolean
    #   resp.index_field.options.literal_options.default_value #=> String
    #   resp.index_field.options.literal_options.source_field #=> String
    #   resp.index_field.options.literal_options.facet_enabled #=> Boolean
    #   resp.index_field.options.literal_options.search_enabled #=> Boolean
    #   resp.index_field.options.literal_options.return_enabled #=> Boolean
    #   resp.index_field.options.literal_options.sort_enabled #=> Boolean
    #   resp.index_field.options.text_options.default_value #=> String
    #   resp.index_field.options.text_options.source_field #=> String
    #   resp.index_field.options.text_options.return_enabled #=> Boolean
    #   resp.index_field.options.text_options.sort_enabled #=> Boolean
    #   resp.index_field.options.text_options.highlight_enabled #=> Boolean
    #   resp.index_field.options.text_options.analysis_scheme #=> String
    #   resp.index_field.options.date_options.default_value #=> String
    #   resp.index_field.options.date_options.source_field #=> String
    #   resp.index_field.options.date_options.facet_enabled #=> Boolean
    #   resp.index_field.options.date_options.search_enabled #=> Boolean
    #   resp.index_field.options.date_options.return_enabled #=> Boolean
    #   resp.index_field.options.date_options.sort_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.default_value #=> String
    #   resp.index_field.options.lat_lon_options.source_field #=> String
    #   resp.index_field.options.lat_lon_options.facet_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.search_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.return_enabled #=> Boolean
    #   resp.index_field.options.lat_lon_options.sort_enabled #=> Boolean
    #   resp.index_field.options.int_array_options.default_value #=> Integer
    #   resp.index_field.options.int_array_options.source_fields #=> String
    #   resp.index_field.options.int_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.int_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.int_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.double_array_options.default_value #=> Float
    #   resp.index_field.options.double_array_options.source_fields #=> String
    #   resp.index_field.options.double_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.double_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.double_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.literal_array_options.default_value #=> String
    #   resp.index_field.options.literal_array_options.source_fields #=> String
    #   resp.index_field.options.literal_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.literal_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.literal_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.text_array_options.default_value #=> String
    #   resp.index_field.options.text_array_options.source_fields #=> String
    #   resp.index_field.options.text_array_options.return_enabled #=> Boolean
    #   resp.index_field.options.text_array_options.highlight_enabled #=> Boolean
    #   resp.index_field.options.text_array_options.analysis_scheme #=> String
    #   resp.index_field.options.date_array_options.default_value #=> String
    #   resp.index_field.options.date_array_options.source_fields #=> String
    #   resp.index_field.options.date_array_options.facet_enabled #=> Boolean
    #   resp.index_field.options.date_array_options.search_enabled #=> Boolean
    #   resp.index_field.options.date_array_options.return_enabled #=> Boolean
    #   resp.index_field.status.creation_date #=> Time
    #   resp.index_field.status.update_date #=> Time
    #   resp.index_field.status.update_version #=> Integer
    #   resp.index_field.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.index_field.status.pending_deletion #=> Boolean
    #
    # @overload delete_index_field(params = {})
    # @param [Hash] params ({})
    def delete_index_field(params = {}, options = {})
      req = build_request(:delete_index_field, params)
      req.send_request(options)
    end

    # Deletes a suggester. For more information, see [Getting Search
    # Suggestions][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :suggester_name
    #   Specifies the name of the suggester you want to delete.
    #
    # @return [Types::DeleteSuggesterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSuggesterResponse#suggester #suggester} => Types::SuggesterStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_suggester({
    #     domain_name: "DomainName", # required
    #     suggester_name: "StandardName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.suggester.options.suggester_name #=> String
    #   resp.suggester.options.document_suggester_options.source_field #=> String
    #   resp.suggester.options.document_suggester_options.fuzzy_matching #=> String, one of "none", "low", "high"
    #   resp.suggester.options.document_suggester_options.sort_expression #=> String
    #   resp.suggester.status.creation_date #=> Time
    #   resp.suggester.status.update_date #=> Time
    #   resp.suggester.status.update_version #=> Integer
    #   resp.suggester.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.suggester.status.pending_deletion #=> Boolean
    #
    # @overload delete_suggester(params = {})
    # @param [Hash] params ({})
    def delete_suggester(params = {}, options = {})
      req = build_request(:delete_suggester, params)
      req.send_request(options)
    end

    # Gets the analysis schemes configured for a domain. An analysis scheme
    # defines language-specific text processing options for a `text` field.
    # Can be limited to specific analysis schemes by name. By default, shows
    # all analysis schemes and includes any pending changes to the
    # configuration. Set the `Deployed` option to `true` to show the active
    # configuration and exclude pending changes. For more information, see
    # [Configuring Analysis Schemes][1] in the *Amazon CloudSearch Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to describe.
    #
    # @option params [Array<String>] :analysis_scheme_names
    #   The analysis schemes you want to describe.
    #
    # @option params [Boolean] :deployed
    #   Whether to display the deployed configuration (`true`) or include any
    #   pending changes (`false`). Defaults to `false`.
    #
    # @return [Types::DescribeAnalysisSchemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAnalysisSchemesResponse#analysis_schemes #analysis_schemes} => Array&lt;Types::AnalysisSchemeStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_analysis_schemes({
    #     domain_name: "DomainName", # required
    #     analysis_scheme_names: ["StandardName"],
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_schemes #=> Array
    #   resp.analysis_schemes[0].options.analysis_scheme_name #=> String
    #   resp.analysis_schemes[0].options.analysis_scheme_language #=> String, one of "ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"
    #   resp.analysis_schemes[0].options.analysis_options.synonyms #=> String
    #   resp.analysis_schemes[0].options.analysis_options.stopwords #=> String
    #   resp.analysis_schemes[0].options.analysis_options.stemming_dictionary #=> String
    #   resp.analysis_schemes[0].options.analysis_options.japanese_tokenization_dictionary #=> String
    #   resp.analysis_schemes[0].options.analysis_options.algorithmic_stemming #=> String, one of "none", "minimal", "light", "full"
    #   resp.analysis_schemes[0].status.creation_date #=> Time
    #   resp.analysis_schemes[0].status.update_date #=> Time
    #   resp.analysis_schemes[0].status.update_version #=> Integer
    #   resp.analysis_schemes[0].status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.analysis_schemes[0].status.pending_deletion #=> Boolean
    #
    # @overload describe_analysis_schemes(params = {})
    # @param [Hash] params ({})
    def describe_analysis_schemes(params = {}, options = {})
      req = build_request(:describe_analysis_schemes, params)
      req.send_request(options)
    end

    # Gets the availability options configured for a domain. By default,
    # shows the configuration with any pending changes. Set the `Deployed`
    # option to `true` to show the active configuration and exclude pending
    # changes. For more information, see [Configuring Availability
    # Options][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to describe.
    #
    # @option params [Boolean] :deployed
    #   Whether to display the deployed configuration (`true`) or include any
    #   pending changes (`false`). Defaults to `false`.
    #
    # @return [Types::DescribeAvailabilityOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAvailabilityOptionsResponse#availability_options #availability_options} => Types::AvailabilityOptionsStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_availability_options({
    #     domain_name: "DomainName", # required
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_options.options #=> Boolean
    #   resp.availability_options.status.creation_date #=> Time
    #   resp.availability_options.status.update_date #=> Time
    #   resp.availability_options.status.update_version #=> Integer
    #   resp.availability_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.availability_options.status.pending_deletion #=> Boolean
    #
    # @overload describe_availability_options(params = {})
    # @param [Hash] params ({})
    def describe_availability_options(params = {}, options = {})
      req = build_request(:describe_availability_options, params)
      req.send_request(options)
    end

    # Returns the domain's endpoint options, specifically whether all
    # requests to the domain must arrive over HTTPS. For more information,
    # see [Configuring Domain Endpoint Options][1] in the *Amazon
    # CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain.
    #
    # @option params [Boolean] :deployed
    #   Whether to retrieve the latest configuration (which might be in a
    #   Processing state) or the current, active configuration. Defaults to
    #   `false`.
    #
    # @return [Types::DescribeDomainEndpointOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainEndpointOptionsResponse#domain_endpoint_options #domain_endpoint_options} => Types::DomainEndpointOptionsStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_endpoint_options({
    #     domain_name: "DomainName", # required
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.domain_endpoint_options.options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.domain_endpoint_options.status.pending_deletion #=> Boolean
    #
    # @overload describe_domain_endpoint_options(params = {})
    # @param [Hash] params ({})
    def describe_domain_endpoint_options(params = {}, options = {})
      req = build_request(:describe_domain_endpoint_options, params)
      req.send_request(options)
    end

    # Gets information about the search domains owned by this account. Can
    # be limited to specific domains. Shows all domains by default. To get
    # the number of searchable documents in a domain, use the console or
    # submit a `matchall` request to your domain's search endpoint:
    # `q=matchall&amp;q.parser=structured&amp;size=0`. For more information,
    # see [Getting Information about a Search Domain][1] in the *Amazon
    # CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html
    #
    # @option params [Array<String>] :domain_names
    #   The names of the domains you want to include in the response.
    #
    # @return [Types::DescribeDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainsResponse#domain_status_list #domain_status_list} => Array&lt;Types::DomainStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domains({
    #     domain_names: ["DomainName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_status_list #=> Array
    #   resp.domain_status_list[0].domain_id #=> String
    #   resp.domain_status_list[0].domain_name #=> String
    #   resp.domain_status_list[0].arn #=> String
    #   resp.domain_status_list[0].created #=> Boolean
    #   resp.domain_status_list[0].deleted #=> Boolean
    #   resp.domain_status_list[0].doc_service.endpoint #=> String
    #   resp.domain_status_list[0].search_service.endpoint #=> String
    #   resp.domain_status_list[0].requires_index_documents #=> Boolean
    #   resp.domain_status_list[0].processing #=> Boolean
    #   resp.domain_status_list[0].search_instance_type #=> String
    #   resp.domain_status_list[0].search_partition_count #=> Integer
    #   resp.domain_status_list[0].search_instance_count #=> Integer
    #   resp.domain_status_list[0].limits.maximum_replication_count #=> Integer
    #   resp.domain_status_list[0].limits.maximum_partition_count #=> Integer
    #
    # @overload describe_domains(params = {})
    # @param [Hash] params ({})
    def describe_domains(params = {}, options = {})
      req = build_request(:describe_domains, params)
      req.send_request(options)
    end

    # Gets the expressions configured for the search domain. Can be limited
    # to specific expressions by name. By default, shows all expressions and
    # includes any pending changes to the configuration. Set the `Deployed`
    # option to `true` to show the active configuration and exclude pending
    # changes. For more information, see [Configuring Expressions][1] in the
    # *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to describe.
    #
    # @option params [Array<String>] :expression_names
    #   Limits the `DescribeExpressions` response to the specified
    #   expressions. If not specified, all expressions are shown.
    #
    # @option params [Boolean] :deployed
    #   Whether to display the deployed configuration (`true`) or include any
    #   pending changes (`false`). Defaults to `false`.
    #
    # @return [Types::DescribeExpressionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExpressionsResponse#expressions #expressions} => Array&lt;Types::ExpressionStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_expressions({
    #     domain_name: "DomainName", # required
    #     expression_names: ["StandardName"],
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.expressions #=> Array
    #   resp.expressions[0].options.expression_name #=> String
    #   resp.expressions[0].options.expression_value #=> String
    #   resp.expressions[0].status.creation_date #=> Time
    #   resp.expressions[0].status.update_date #=> Time
    #   resp.expressions[0].status.update_version #=> Integer
    #   resp.expressions[0].status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.expressions[0].status.pending_deletion #=> Boolean
    #
    # @overload describe_expressions(params = {})
    # @param [Hash] params ({})
    def describe_expressions(params = {}, options = {})
      req = build_request(:describe_expressions, params)
      req.send_request(options)
    end

    # Gets information about the index fields configured for the search
    # domain. Can be limited to specific fields by name. By default, shows
    # all fields and includes any pending changes to the configuration. Set
    # the `Deployed` option to `true` to show the active configuration and
    # exclude pending changes. For more information, see [Getting Domain
    # Information][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to describe.
    #
    # @option params [Array<String>] :field_names
    #   A list of the index fields you want to describe. If not specified,
    #   information is returned for all configured index fields.
    #
    # @option params [Boolean] :deployed
    #   Whether to display the deployed configuration (`true`) or include any
    #   pending changes (`false`). Defaults to `false`.
    #
    # @return [Types::DescribeIndexFieldsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIndexFieldsResponse#index_fields #index_fields} => Array&lt;Types::IndexFieldStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index_fields({
    #     domain_name: "DomainName", # required
    #     field_names: ["DynamicFieldName"],
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.index_fields #=> Array
    #   resp.index_fields[0].options.index_field_name #=> String
    #   resp.index_fields[0].options.index_field_type #=> String, one of "int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"
    #   resp.index_fields[0].options.int_options.default_value #=> Integer
    #   resp.index_fields[0].options.int_options.source_field #=> String
    #   resp.index_fields[0].options.int_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.int_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.int_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.int_options.sort_enabled #=> Boolean
    #   resp.index_fields[0].options.double_options.default_value #=> Float
    #   resp.index_fields[0].options.double_options.source_field #=> String
    #   resp.index_fields[0].options.double_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.double_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.double_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.double_options.sort_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_options.default_value #=> String
    #   resp.index_fields[0].options.literal_options.source_field #=> String
    #   resp.index_fields[0].options.literal_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_options.sort_enabled #=> Boolean
    #   resp.index_fields[0].options.text_options.default_value #=> String
    #   resp.index_fields[0].options.text_options.source_field #=> String
    #   resp.index_fields[0].options.text_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.text_options.sort_enabled #=> Boolean
    #   resp.index_fields[0].options.text_options.highlight_enabled #=> Boolean
    #   resp.index_fields[0].options.text_options.analysis_scheme #=> String
    #   resp.index_fields[0].options.date_options.default_value #=> String
    #   resp.index_fields[0].options.date_options.source_field #=> String
    #   resp.index_fields[0].options.date_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.date_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.date_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.date_options.sort_enabled #=> Boolean
    #   resp.index_fields[0].options.lat_lon_options.default_value #=> String
    #   resp.index_fields[0].options.lat_lon_options.source_field #=> String
    #   resp.index_fields[0].options.lat_lon_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.lat_lon_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.lat_lon_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.lat_lon_options.sort_enabled #=> Boolean
    #   resp.index_fields[0].options.int_array_options.default_value #=> Integer
    #   resp.index_fields[0].options.int_array_options.source_fields #=> String
    #   resp.index_fields[0].options.int_array_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.int_array_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.int_array_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.double_array_options.default_value #=> Float
    #   resp.index_fields[0].options.double_array_options.source_fields #=> String
    #   resp.index_fields[0].options.double_array_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.double_array_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.double_array_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_array_options.default_value #=> String
    #   resp.index_fields[0].options.literal_array_options.source_fields #=> String
    #   resp.index_fields[0].options.literal_array_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_array_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.literal_array_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.text_array_options.default_value #=> String
    #   resp.index_fields[0].options.text_array_options.source_fields #=> String
    #   resp.index_fields[0].options.text_array_options.return_enabled #=> Boolean
    #   resp.index_fields[0].options.text_array_options.highlight_enabled #=> Boolean
    #   resp.index_fields[0].options.text_array_options.analysis_scheme #=> String
    #   resp.index_fields[0].options.date_array_options.default_value #=> String
    #   resp.index_fields[0].options.date_array_options.source_fields #=> String
    #   resp.index_fields[0].options.date_array_options.facet_enabled #=> Boolean
    #   resp.index_fields[0].options.date_array_options.search_enabled #=> Boolean
    #   resp.index_fields[0].options.date_array_options.return_enabled #=> Boolean
    #   resp.index_fields[0].status.creation_date #=> Time
    #   resp.index_fields[0].status.update_date #=> Time
    #   resp.index_fields[0].status.update_version #=> Integer
    #   resp.index_fields[0].status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.index_fields[0].status.pending_deletion #=> Boolean
    #
    # @overload describe_index_fields(params = {})
    # @param [Hash] params ({})
    def describe_index_fields(params = {}, options = {})
      req = build_request(:describe_index_fields, params)
      req.send_request(options)
    end

    # Gets the scaling parameters configured for a domain. A domain's
    # scaling parameters specify the desired search instance type and
    # replication count. For more information, see [Configuring Scaling
    # Options][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @return [Types::DescribeScalingParametersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingParametersResponse#scaling_parameters #scaling_parameters} => Types::ScalingParametersStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_parameters({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_parameters.options.desired_instance_type #=> String, one of "search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge"
    #   resp.scaling_parameters.options.desired_replication_count #=> Integer
    #   resp.scaling_parameters.options.desired_partition_count #=> Integer
    #   resp.scaling_parameters.status.creation_date #=> Time
    #   resp.scaling_parameters.status.update_date #=> Time
    #   resp.scaling_parameters.status.update_version #=> Integer
    #   resp.scaling_parameters.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.scaling_parameters.status.pending_deletion #=> Boolean
    #
    # @overload describe_scaling_parameters(params = {})
    # @param [Hash] params ({})
    def describe_scaling_parameters(params = {}, options = {})
      req = build_request(:describe_scaling_parameters, params)
      req.send_request(options)
    end

    # Gets information about the access policies that control access to the
    # domain's document and search endpoints. By default, shows the
    # configuration with any pending changes. Set the `Deployed` option to
    # `true` to show the active configuration and exclude pending changes.
    # For more information, see [Configuring Access for a Search Domain][1]
    # in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to describe.
    #
    # @option params [Boolean] :deployed
    #   Whether to display the deployed configuration (`true`) or include any
    #   pending changes (`false`). Defaults to `false`.
    #
    # @return [Types::DescribeServiceAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceAccessPoliciesResponse#access_policies #access_policies} => Types::AccessPoliciesStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_access_policies({
    #     domain_name: "DomainName", # required
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policies.options #=> String
    #   resp.access_policies.status.creation_date #=> Time
    #   resp.access_policies.status.update_date #=> Time
    #   resp.access_policies.status.update_version #=> Integer
    #   resp.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.access_policies.status.pending_deletion #=> Boolean
    #
    # @overload describe_service_access_policies(params = {})
    # @param [Hash] params ({})
    def describe_service_access_policies(params = {}, options = {})
      req = build_request(:describe_service_access_policies, params)
      req.send_request(options)
    end

    # Gets the suggesters configured for a domain. A suggester enables you
    # to display possible matches before users finish typing their queries.
    # Can be limited to specific suggesters by name. By default, shows all
    # suggesters and includes any pending changes to the configuration. Set
    # the `Deployed` option to `true` to show the active configuration and
    # exclude pending changes. For more information, see [Getting Search
    # Suggestions][1] in the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html
    #
    # @option params [required, String] :domain_name
    #   The name of the domain you want to describe.
    #
    # @option params [Array<String>] :suggester_names
    #   The suggesters you want to describe.
    #
    # @option params [Boolean] :deployed
    #   Whether to display the deployed configuration (`true`) or include any
    #   pending changes (`false`). Defaults to `false`.
    #
    # @return [Types::DescribeSuggestersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSuggestersResponse#suggesters #suggesters} => Array&lt;Types::SuggesterStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_suggesters({
    #     domain_name: "DomainName", # required
    #     suggester_names: ["StandardName"],
    #     deployed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.suggesters #=> Array
    #   resp.suggesters[0].options.suggester_name #=> String
    #   resp.suggesters[0].options.document_suggester_options.source_field #=> String
    #   resp.suggesters[0].options.document_suggester_options.fuzzy_matching #=> String, one of "none", "low", "high"
    #   resp.suggesters[0].options.document_suggester_options.sort_expression #=> String
    #   resp.suggesters[0].status.creation_date #=> Time
    #   resp.suggesters[0].status.update_date #=> Time
    #   resp.suggesters[0].status.update_version #=> Integer
    #   resp.suggesters[0].status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.suggesters[0].status.pending_deletion #=> Boolean
    #
    # @overload describe_suggesters(params = {})
    # @param [Hash] params ({})
    def describe_suggesters(params = {}, options = {})
      req = build_request(:describe_suggesters, params)
      req.send_request(options)
    end

    # Tells the search domain to start indexing its documents using the
    # latest indexing options. This operation must be invoked to activate
    # options whose OptionStatus is `RequiresIndexDocuments`.
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @return [Types::IndexDocumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IndexDocumentsResponse#field_names #field_names} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.index_documents({
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.field_names #=> Array
    #   resp.field_names[0] #=> String
    #
    # @overload index_documents(params = {})
    # @param [Hash] params ({})
    def index_documents(params = {}, options = {})
      req = build_request(:index_documents, params)
      req.send_request(options)
    end

    # Lists all search domains owned by an account.
    #
    # @return [Types::ListDomainNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainNamesResponse#domain_names #domain_names} => Hash&lt;String,String&gt;
    #
    # @example Response structure
    #
    #   resp.domain_names #=> Hash
    #   resp.domain_names["DomainName"] #=> String
    #
    # @overload list_domain_names(params = {})
    # @param [Hash] params ({})
    def list_domain_names(params = {}, options = {})
      req = build_request(:list_domain_names, params)
      req.send_request(options)
    end

    # Configures the availability options for a domain. Enabling the
    # Multi-AZ option expands an Amazon CloudSearch domain to an additional
    # Availability Zone in the same Region to increase fault tolerance in
    # the event of a service disruption. Changes to the Multi-AZ option can
    # take about half an hour to become active. For more information, see
    # [Configuring Availability Options][1] in the *Amazon CloudSearch
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, Boolean] :multi_az
    #   You expand an existing search domain to a second Availability Zone by
    #   setting the Multi-AZ option to true. Similarly, you can turn off the
    #   Multi-AZ option to downgrade the domain to a single Availability Zone
    #   by setting the Multi-AZ option to `false`.
    #
    # @return [Types::UpdateAvailabilityOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAvailabilityOptionsResponse#availability_options #availability_options} => Types::AvailabilityOptionsStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_availability_options({
    #     domain_name: "DomainName", # required
    #     multi_az: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.availability_options.options #=> Boolean
    #   resp.availability_options.status.creation_date #=> Time
    #   resp.availability_options.status.update_date #=> Time
    #   resp.availability_options.status.update_version #=> Integer
    #   resp.availability_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.availability_options.status.pending_deletion #=> Boolean
    #
    # @overload update_availability_options(params = {})
    # @param [Hash] params ({})
    def update_availability_options(params = {}, options = {})
      req = build_request(:update_availability_options, params)
      req.send_request(options)
    end

    # Updates the domain's endpoint options, specifically whether all
    # requests to the domain must arrive over HTTPS. For more information,
    # see [Configuring Domain Endpoint Options][1] in the *Amazon
    # CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain.
    #
    # @option params [required, Types::DomainEndpointOptions] :domain_endpoint_options
    #   Whether to require that all requests to the domain arrive over HTTPS.
    #   We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For
    #   compatibility with older clients, the default is
    #   Policy-Min-TLS-1-0-2019-07.
    #
    # @return [Types::UpdateDomainEndpointOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainEndpointOptionsResponse#domain_endpoint_options #domain_endpoint_options} => Types::DomainEndpointOptionsStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_endpoint_options({
    #     domain_name: "DomainName", # required
    #     domain_endpoint_options: { # required
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07", # accepts Policy-Min-TLS-1-0-2019-07, Policy-Min-TLS-1-2-2019-07
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_endpoint_options.options.enforce_https #=> Boolean
    #   resp.domain_endpoint_options.options.tls_security_policy #=> String, one of "Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"
    #   resp.domain_endpoint_options.status.creation_date #=> Time
    #   resp.domain_endpoint_options.status.update_date #=> Time
    #   resp.domain_endpoint_options.status.update_version #=> Integer
    #   resp.domain_endpoint_options.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.domain_endpoint_options.status.pending_deletion #=> Boolean
    #
    # @overload update_domain_endpoint_options(params = {})
    # @param [Hash] params ({})
    def update_domain_endpoint_options(params = {}, options = {})
      req = build_request(:update_domain_endpoint_options, params)
      req.send_request(options)
    end

    # Configures scaling parameters for a domain. A domain's scaling
    # parameters specify the desired search instance type and replication
    # count. Amazon CloudSearch will still automatically scale your domain
    # based on the volume of data and traffic, but not below the desired
    # instance type and replication count. If the Multi-AZ option is
    # enabled, these values control the resources used per Availability
    # Zone. For more information, see [Configuring Scaling Options][1] in
    # the *Amazon CloudSearch Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, Types::ScalingParameters] :scaling_parameters
    #   The desired instance type and desired number of replicas of each index
    #   partition.
    #
    # @return [Types::UpdateScalingParametersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScalingParametersResponse#scaling_parameters #scaling_parameters} => Types::ScalingParametersStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scaling_parameters({
    #     domain_name: "DomainName", # required
    #     scaling_parameters: { # required
    #       desired_instance_type: "search.m1.small", # accepts search.m1.small, search.m1.large, search.m2.xlarge, search.m2.2xlarge, search.m3.medium, search.m3.large, search.m3.xlarge, search.m3.2xlarge
    #       desired_replication_count: 1,
    #       desired_partition_count: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_parameters.options.desired_instance_type #=> String, one of "search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge"
    #   resp.scaling_parameters.options.desired_replication_count #=> Integer
    #   resp.scaling_parameters.options.desired_partition_count #=> Integer
    #   resp.scaling_parameters.status.creation_date #=> Time
    #   resp.scaling_parameters.status.update_date #=> Time
    #   resp.scaling_parameters.status.update_version #=> Integer
    #   resp.scaling_parameters.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.scaling_parameters.status.pending_deletion #=> Boolean
    #
    # @overload update_scaling_parameters(params = {})
    # @param [Hash] params ({})
    def update_scaling_parameters(params = {}, options = {})
      req = build_request(:update_scaling_parameters, params)
      req.send_request(options)
    end

    # Configures the access rules that control access to the domain's
    # document and search endpoints. For more information, see [ Configuring
    # Access for an Amazon CloudSearch Domain][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html
    #
    # @option params [required, String] :domain_name
    #   A string that represents the name of a domain. Domain names are unique
    #   across the domains owned by an account within an AWS region. Domain
    #   names start with a letter or number and can contain the following
    #   characters: a-z (lowercase), 0-9, and - (hyphen).
    #
    # @option params [required, String] :access_policies
    #   The access rules you want to configure. These rules replace any
    #   existing rules.
    #
    # @return [Types::UpdateServiceAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceAccessPoliciesResponse#access_policies #access_policies} => Types::AccessPoliciesStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_access_policies({
    #     domain_name: "DomainName", # required
    #     access_policies: "PolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policies.options #=> String
    #   resp.access_policies.status.creation_date #=> Time
    #   resp.access_policies.status.update_date #=> Time
    #   resp.access_policies.status.update_version #=> Integer
    #   resp.access_policies.status.state #=> String, one of "RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"
    #   resp.access_policies.status.pending_deletion #=> Boolean
    #
    # @overload update_service_access_policies(params = {})
    # @param [Hash] params ({})
    def update_service_access_policies(params = {}, options = {})
      req = build_request(:update_service_access_policies, params)
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
      context[:gem_name] = 'aws-sdk-cloudsearch'
      context[:gem_version] = '1.26.0'
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
