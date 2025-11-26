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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cloudsearch)

module Aws::CloudSearch
  # An API client for Aws::CloudSearch.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::A9SearchCloudConfigService2013
    @identifier = :cloudsearch

    add_plugin(::Aws::CloudSearch::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CloudSearch::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Indexes the search suggestions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters">Configuring Suggesters</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::BuildSuggestersRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.build_suggesters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_names: ["FieldName"]
    #   }
    # @return [Types::BuildSuggestersResponse]
    def build_suggesters(params = {}, options = {})
      request = build_request(:build_suggesters, params)
      request.send_request(options)
    end

    # <p>Creates a new search domain. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html" target="_blank">Creating a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::CreateDomainRequest] params
    # @option params [String] :domain_name
    #   <p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status: {
    #       domain_id: "DomainId", # required
    #       domain_name: "DomainName", # required
    #       arn: "ARN",
    #       created: false,
    #       deleted: false,
    #       doc_service: {
    #         endpoint: "ServiceUrl"
    #       },
    #       search_service: {
    #         endpoint: "ServiceUrl"
    #       },
    #       requires_index_documents: false, # required
    #       processing: false,
    #       search_instance_type: "SearchInstanceType",
    #       search_partition_count: 1,
    #       search_instance_count: 1,
    #       limits: {
    #         maximum_replication_count: 1, # required
    #         maximum_partition_count: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::CreateDomainResponse]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Configures an analysis scheme that can be applied to a <code>text</code> or <code>text-array</code> field to define language-specific text processing options. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DefineAnalysisSchemeRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Types::AnalysisScheme] :analysis_scheme
    #   <p>Configuration information for an analysis scheme. Each analysis scheme has a unique name and specifies the language of the text to be processed. The following options can be configured for an analysis scheme: <code>Synonyms</code>, <code>Stopwords</code>, <code>StemmingDictionary</code>, <code>JapaneseTokenizationDictionary</code> and <code>AlgorithmicStemming</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     analysis_scheme: { # required
    #       analysis_scheme_name: "StandardName", # required
    #       analysis_scheme_language: "ar" # One of: ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"], # required
    #       analysis_options: {
    #         synonyms: "String",
    #         stopwords: "String",
    #         stemming_dictionary: "String",
    #         japanese_tokenization_dictionary: "String",
    #         algorithmic_stemming: "none" # One of: ["none", "minimal", "light", "full"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.define_analysis_scheme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_scheme: { # required
    #       options: { # required
    #         analysis_scheme_name: "StandardName", # required
    #         analysis_scheme_language: "ar" # One of: ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"], # required
    #         analysis_options: {
    #           synonyms: "String",
    #           stopwords: "String",
    #           stemming_dictionary: "String",
    #           japanese_tokenization_dictionary: "String",
    #           algorithmic_stemming: "none" # One of: ["none", "minimal", "light", "full"]
    #         }
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DefineAnalysisSchemeResponse]
    def define_analysis_scheme(params = {}, options = {})
      request = build_request(:define_analysis_scheme, params)
      request.send_request(options)
    end

    # <p>Configures an <code><a>Expression</a></code> for the search domain. Used to create new expressions and modify existing ones.  If the expression exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DefineExpressionRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Types::Expression] :expression
    #   <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     expression: { # required
    #       expression_name: "StandardName", # required
    #       expression_value: "ExpressionValue", # required
    #     }
    #   }
    #   options = {}
    #   response = client.define_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     expression: { # required
    #       options: { # required
    #         expression_name: "StandardName", # required
    #         expression_value: "ExpressionValue", # required
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DefineExpressionResponse]
    def define_expression(params = {}, options = {})
      request = build_request(:define_expression, params)
      request.send_request(options)
    end

    # <p>Configures an <code><a>IndexField</a></code> for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the <code><a>IndexFieldType</a></code>. If the field exists, the new configuration replaces the old one. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    # @param [Hash, Types::DefineIndexFieldRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Types::IndexField] :index_field
    #   <p>The index field and field options you want to configure. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     index_field: { # required
    #       index_field_name: "DynamicFieldName", # required
    #       index_field_type: "int" # One of: ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"], # required
    #       int_options: {
    #         default_value: 1,
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       double_options: {
    #         default_value: 1.0,
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       literal_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       text_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         return_enabled: false,
    #         sort_enabled: false,
    #         highlight_enabled: false,
    #         analysis_scheme: "Word"
    #       },
    #       date_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       lat_lon_options: {
    #         default_value: "FieldValue",
    #         source_field: "FieldName",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false,
    #         sort_enabled: false
    #       },
    #       int_array_options: {
    #         default_value: 1,
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       },
    #       double_array_options: {
    #         default_value: 1.0,
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       },
    #       literal_array_options: {
    #         default_value: "FieldValue",
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       },
    #       text_array_options: {
    #         default_value: "FieldValue",
    #         source_fields: "FieldNameCommaList",
    #         return_enabled: false,
    #         highlight_enabled: false,
    #         analysis_scheme: "Word"
    #       },
    #       date_array_options: {
    #         default_value: "FieldValue",
    #         source_fields: "FieldNameCommaList",
    #         facet_enabled: false,
    #         search_enabled: false,
    #         return_enabled: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.define_index_field(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_field: { # required
    #       options: { # required
    #         index_field_name: "DynamicFieldName", # required
    #         index_field_type: "int" # One of: ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"], # required
    #         int_options: {
    #           default_value: 1,
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         double_options: {
    #           default_value: 1.0,
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         literal_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         text_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           return_enabled: false,
    #           sort_enabled: false,
    #           highlight_enabled: false,
    #           analysis_scheme: "Word"
    #         },
    #         date_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         lat_lon_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         int_array_options: {
    #           default_value: 1,
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         },
    #         double_array_options: {
    #           default_value: 1.0,
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         },
    #         literal_array_options: {
    #           default_value: "FieldValue",
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         },
    #         text_array_options: {
    #           default_value: "FieldValue",
    #           source_fields: "FieldNameCommaList",
    #           return_enabled: false,
    #           highlight_enabled: false,
    #           analysis_scheme: "Word"
    #         },
    #         date_array_options: {
    #           default_value: "FieldValue",
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         }
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DefineIndexFieldResponse]
    def define_index_field(params = {}, options = {})
      request = build_request(:define_index_field, params)
      request.send_request(options)
    end

    # <p>Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DefineSuggesterRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Types::Suggester] :suggester
    #   <p>Configuration information for a search suggester. Each suggester has a unique name and specifies the text field you want to use for suggestions. The following options can be configured for a suggester: <code>FuzzyMatching</code>, <code>SortExpression</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     suggester: { # required
    #       suggester_name: "StandardName", # required
    #       document_suggester_options: { # required
    #         source_field: "FieldName", # required
    #         fuzzy_matching: "none" # One of: ["none", "low", "high"],
    #         sort_expression: "String"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.define_suggester(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suggester: { # required
    #       options: { # required
    #         suggester_name: "StandardName", # required
    #         document_suggester_options: { # required
    #           source_field: "FieldName", # required
    #           fuzzy_matching: "none" # One of: ["none", "low", "high"],
    #           sort_expression: "String"
    #         }
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DefineSuggesterResponse]
    def define_suggester(params = {}, options = {})
      request = build_request(:define_suggester, params)
      request.send_request(options)
    end

    # <p>Deletes an analysis scheme. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    # @param [Hash, Types::DeleteAnalysisSchemeRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :analysis_scheme_name
    #   <p>The name of the analysis scheme you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     analysis_scheme_name: "StandardName", # required
    #   }
    #   options = {}
    #   response = client.delete_analysis_scheme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_scheme: { # required
    #       options: { # required
    #         analysis_scheme_name: "StandardName", # required
    #         analysis_scheme_language: "ar" # One of: ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"], # required
    #         analysis_options: {
    #           synonyms: "String",
    #           stopwords: "String",
    #           stemming_dictionary: "String",
    #           japanese_tokenization_dictionary: "String",
    #           algorithmic_stemming: "none" # One of: ["none", "minimal", "light", "full"]
    #         }
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DeleteAnalysisSchemeResponse]
    def delete_analysis_scheme(params = {}, options = {})
      request = build_request(:delete_analysis_scheme, params)
      request.send_request(options)
    end

    # <p>Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html" target="_blank">Deleting a Search  Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    # @param [Hash, Types::DeleteDomainRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to permanently delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status: {
    #       domain_id: "DomainId", # required
    #       domain_name: "DomainName", # required
    #       arn: "ARN",
    #       created: false,
    #       deleted: false,
    #       doc_service: {
    #         endpoint: "ServiceUrl"
    #       },
    #       search_service: {
    #         endpoint: "ServiceUrl"
    #       },
    #       requires_index_documents: false, # required
    #       processing: false,
    #       search_instance_type: "SearchInstanceType",
    #       search_partition_count: 1,
    #       search_instance_count: 1,
    #       limits: {
    #         maximum_replication_count: 1, # required
    #         maximum_partition_count: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteDomainResponse]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Removes an <code><a>Expression</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteExpressionRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :expression_name
    #   <p>The name of the <code><a>Expression</a></code> to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     expression_name: "StandardName", # required
    #   }
    #   options = {}
    #   response = client.delete_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     expression: { # required
    #       options: { # required
    #         expression_name: "StandardName", # required
    #         expression_value: "ExpressionValue", # required
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DeleteExpressionResponse]
    def delete_expression(params = {}, options = {})
      request = build_request(:delete_expression, params)
      request.send_request(options)
    end

    # <p>Removes an <code><a>IndexField</a></code> from the search domain. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html" target="_blank">Configuring Index Fields</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteIndexFieldRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :index_field_name
    #   <p>The name of the index field your want to remove from the domain's indexing options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     index_field_name: "DynamicFieldName", # required
    #   }
    #   options = {}
    #   response = client.delete_index_field(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_field: { # required
    #       options: { # required
    #         index_field_name: "DynamicFieldName", # required
    #         index_field_type: "int" # One of: ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"], # required
    #         int_options: {
    #           default_value: 1,
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         double_options: {
    #           default_value: 1.0,
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         literal_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         text_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           return_enabled: false,
    #           sort_enabled: false,
    #           highlight_enabled: false,
    #           analysis_scheme: "Word"
    #         },
    #         date_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         lat_lon_options: {
    #           default_value: "FieldValue",
    #           source_field: "FieldName",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false,
    #           sort_enabled: false
    #         },
    #         int_array_options: {
    #           default_value: 1,
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         },
    #         double_array_options: {
    #           default_value: 1.0,
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         },
    #         literal_array_options: {
    #           default_value: "FieldValue",
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         },
    #         text_array_options: {
    #           default_value: "FieldValue",
    #           source_fields: "FieldNameCommaList",
    #           return_enabled: false,
    #           highlight_enabled: false,
    #           analysis_scheme: "Word"
    #         },
    #         date_array_options: {
    #           default_value: "FieldValue",
    #           source_fields: "FieldNameCommaList",
    #           facet_enabled: false,
    #           search_enabled: false,
    #           return_enabled: false
    #         }
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DeleteIndexFieldResponse]
    def delete_index_field(params = {}, options = {})
      request = build_request(:delete_index_field, params)
      request.send_request(options)
    end

    # <p>Deletes a suggester. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteSuggesterRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :suggester_name
    #   <p>Specifies the name of the suggester you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     suggester_name: "StandardName", # required
    #   }
    #   options = {}
    #   response = client.delete_suggester(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suggester: { # required
    #       options: { # required
    #         suggester_name: "StandardName", # required
    #         document_suggester_options: { # required
    #           source_field: "FieldName", # required
    #           fuzzy_matching: "none" # One of: ["none", "low", "high"],
    #           sort_expression: "String"
    #         }
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DeleteSuggesterResponse]
    def delete_suggester(params = {}, options = {})
      request = build_request(:delete_suggester, params)
      request.send_request(options)
    end

    # <p>Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a <code>text</code> field. Can be limited to specific analysis schemes by name.  By default, shows all analysis schemes and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes.  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html" target="_blank">Configuring Analysis Schemes</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeAnalysisSchemesRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    # @option params [Array<String>] :analysis_scheme_names
    #   <p>The analysis schemes you want to describe.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     analysis_scheme_names: ["StandardName"],
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_analysis_schemes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_schemes: [ # required
    #       {
    #         options: { # required
    #           analysis_scheme_name: "StandardName", # required
    #           analysis_scheme_language: "ar" # One of: ["ar", "bg", "ca", "cs", "da", "de", "el", "en", "es", "eu", "fa", "fi", "fr", "ga", "gl", "he", "hi", "hu", "hy", "id", "it", "ja", "ko", "lv", "mul", "nl", "no", "pt", "ro", "ru", "sv", "th", "tr", "zh-Hans", "zh-Hant"], # required
    #           analysis_options: {
    #             synonyms: "String",
    #             stopwords: "String",
    #             stemming_dictionary: "String",
    #             japanese_tokenization_dictionary: "String",
    #             algorithmic_stemming: "none" # One of: ["none", "minimal", "light", "full"]
    #           }
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #           pending_deletion: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAnalysisSchemesResponse]
    def describe_analysis_schemes(params = {}, options = {})
      request = build_request(:describe_analysis_schemes, params)
      request.send_request(options)
    end

    # <p>Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see  <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeAvailabilityOptionsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_availability_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_options: {
    #       options: false, # required
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DescribeAvailabilityOptionsResponse]
    def describe_availability_options(params = {}, options = {})
      request = build_request(:describe_availability_options, params)
      request.send_request(options)
    end

    # <p>Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see  <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html" target="_blank">Configuring Domain Endpoint Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeDomainEndpointOptionsRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to retrieve the latest configuration (which might be in a Processing state) or the current, active configuration. Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_domain_endpoint_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_endpoint_options: {
    #       options: { # required
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DescribeDomainEndpointOptionsResponse]
    def describe_domain_endpoint_options(params = {}, options = {})
      request = build_request(:describe_domain_endpoint_options, params)
      request.send_request(options)
    end

    # <p>Gets information about the search domains owned by this account. Can be limited to specific domains. Shows
    #       all domains by default. To get the number of searchable documents in a domain, use the console or submit a <code>matchall</code> request to your domain's search endpoint: <code>q=matchall&amp;q.parser=structured&amp;size=0</code>. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Information about a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeDomainsRequest] params
    # @option params [Array<String>] :domain_names
    #   <p>The names of the domains you want to include in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_names: ["DomainName"]
    #   }
    #   options = {}
    #   response = client.describe_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_status_list: [ # required
    #       {
    #         domain_id: "DomainId", # required
    #         domain_name: "DomainName", # required
    #         arn: "ARN",
    #         created: false,
    #         deleted: false,
    #         doc_service: {
    #           endpoint: "ServiceUrl"
    #         },
    #         search_service: {
    #           endpoint: "ServiceUrl"
    #         },
    #         requires_index_documents: false, # required
    #         processing: false,
    #         search_instance_type: "SearchInstanceType",
    #         search_partition_count: 1,
    #         search_instance_count: 1,
    #         limits: {
    #           maximum_replication_count: 1, # required
    #           maximum_partition_count: 1, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDomainsResponse]
    def describe_domains(params = {}, options = {})
      request = build_request(:describe_domains, params)
      request.send_request(options)
    end

    # <p>Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information, see  <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeExpressionsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    # @option params [Array<String>] :expression_names
    #   <p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     expression_names: ["StandardName"],
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_expressions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     expressions: [ # required
    #       {
    #         options: { # required
    #           expression_name: "StandardName", # required
    #           expression_value: "ExpressionValue", # required
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #           pending_deletion: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeExpressionsResponse]
    def describe_expressions(params = {}, options = {})
      request = build_request(:describe_expressions, params)
      request.send_request(options)
    end

    # <p>Gets information about the index fields configured for the search domain.
    #       Can be limited to specific fields by name.  By default, shows all fields and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html" target="_blank">Getting Domain Information</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeIndexFieldsRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    # @option params [Array<String>] :field_names
    #   <p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     field_names: ["DynamicFieldName"],
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_index_fields(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_fields: [ # required
    #       {
    #         options: { # required
    #           index_field_name: "DynamicFieldName", # required
    #           index_field_type: "int" # One of: ["int", "double", "literal", "text", "date", "latlon", "int-array", "double-array", "literal-array", "text-array", "date-array"], # required
    #           int_options: {
    #             default_value: 1,
    #             source_field: "FieldName",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false,
    #             sort_enabled: false
    #           },
    #           double_options: {
    #             default_value: 1.0,
    #             source_field: "FieldName",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false,
    #             sort_enabled: false
    #           },
    #           literal_options: {
    #             default_value: "FieldValue",
    #             source_field: "FieldName",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false,
    #             sort_enabled: false
    #           },
    #           text_options: {
    #             default_value: "FieldValue",
    #             source_field: "FieldName",
    #             return_enabled: false,
    #             sort_enabled: false,
    #             highlight_enabled: false,
    #             analysis_scheme: "Word"
    #           },
    #           date_options: {
    #             default_value: "FieldValue",
    #             source_field: "FieldName",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false,
    #             sort_enabled: false
    #           },
    #           lat_lon_options: {
    #             default_value: "FieldValue",
    #             source_field: "FieldName",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false,
    #             sort_enabled: false
    #           },
    #           int_array_options: {
    #             default_value: 1,
    #             source_fields: "FieldNameCommaList",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false
    #           },
    #           double_array_options: {
    #             default_value: 1.0,
    #             source_fields: "FieldNameCommaList",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false
    #           },
    #           literal_array_options: {
    #             default_value: "FieldValue",
    #             source_fields: "FieldNameCommaList",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false
    #           },
    #           text_array_options: {
    #             default_value: "FieldValue",
    #             source_fields: "FieldNameCommaList",
    #             return_enabled: false,
    #             highlight_enabled: false,
    #             analysis_scheme: "Word"
    #           },
    #           date_array_options: {
    #             default_value: "FieldValue",
    #             source_fields: "FieldNameCommaList",
    #             facet_enabled: false,
    #             search_enabled: false,
    #             return_enabled: false
    #           }
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #           pending_deletion: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeIndexFieldsResponse]
    def describe_index_fields(params = {}, options = {})
      request = build_request(:describe_index_fields, params)
      request.send_request(options)
    end

    # <p>Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see   <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeScalingParametersRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.describe_scaling_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_parameters: { # required
    #       options: { # required
    #         desired_instance_type: "search.m1.small" # One of: ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"],
    #         desired_replication_count: 1,
    #         desired_partition_count: 1
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DescribeScalingParametersResponse]
    def describe_scaling_parameters(params = {}, options = {})
      request = build_request(:describe_scaling_parameters, params)
      request.send_request(options)
    end

    # <p>Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes. For more information,
    #       see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">Configuring Access for a Search Domain</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeServiceAccessPoliciesRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_service_access_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policies: { # required
    #       options: "PolicyDocument", # required
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::DescribeServiceAccessPoliciesResponse]
    def describe_service_access_policies(params = {}, options = {})
      request = build_request(:describe_service_access_policies, params)
      request.send_request(options)
    end

    # <p>Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries.  Can be limited to specific suggesters by name.  By default, shows all suggesters and includes any pending changes to the configuration. Set the <code>Deployed</code> option to <code>true</code> to show the active configuration and exclude pending changes.  For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html" target="_blank">Getting Search Suggestions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeSuggestersRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the domain you want to describe.</p>
    # @option params [Array<String>] :suggester_names
    #   <p>The suggesters you want to describe.</p>
    # @option params [Boolean] :deployed
    #   <p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     suggester_names: ["StandardName"],
    #     deployed: false
    #   }
    #   options = {}
    #   response = client.describe_suggesters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suggesters: [ # required
    #       {
    #         options: { # required
    #           suggester_name: "StandardName", # required
    #           document_suggester_options: { # required
    #             source_field: "FieldName", # required
    #             fuzzy_matching: "none" # One of: ["none", "low", "high"],
    #             sort_expression: "String"
    #           }
    #         },
    #         status: { # required
    #           creation_date: Time.now, # required
    #           update_date: Time.now, # required
    #           update_version: 1,
    #           state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #           pending_deletion: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSuggestersResponse]
    def describe_suggesters(params = {}, options = {})
      request = build_request(:describe_suggesters, params)
      request.send_request(options)
    end

    # <p>Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose <a>OptionStatus</a> is  <code>RequiresIndexDocuments</code>.</p>
    # @param [Hash, Types::IndexDocumentsRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #   }
    #   options = {}
    #   response = client.index_documents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     field_names: ["FieldName"]
    #   }
    # @return [Types::IndexDocumentsResponse]
    def index_documents(params = {}, options = {})
      request = build_request(:index_documents, params)
      request.send_request(options)
    end

    # <p>Lists all search domains owned by an account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_domain_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_names: {
    #       "DomainName" => "APIVersion"
    #     }
    #   }
    # @return [Types::ListDomainNamesResponse]
    def list_domain_names(params = {}, options = {})
      request = build_request(:list_domain_names, params)
      request.send_request(options)
    end

    # <p>Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html" target="_blank">Configuring Availability Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateAvailabilityOptionsRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Boolean] :multi_az
    #   <p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     multi_az: false, # required
    #   }
    #   options = {}
    #   response = client.update_availability_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     availability_options: {
    #       options: false, # required
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateAvailabilityOptionsResponse]
    def update_availability_options(params = {}, options = {})
      request = build_request(:update_availability_options, params)
      request.send_request(options)
    end

    # <p>Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html" target="_blank">Configuring Domain Endpoint Options</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateDomainEndpointOptionsRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain.</p>
    # @option params [Types::DomainEndpointOptions] :domain_endpoint_options
    #   <p>Whether to require that all requests to the domain arrive over HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For compatibility with older clients, the default is Policy-Min-TLS-1-0-2019-07. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     domain_endpoint_options: { # required
    #       enforce_https: false,
    #       tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain_endpoint_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_endpoint_options: {
    #       options: { # required
    #         enforce_https: false,
    #         tls_security_policy: "Policy-Min-TLS-1-0-2019-07" # One of: ["Policy-Min-TLS-1-0-2019-07", "Policy-Min-TLS-1-2-2019-07"]
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateDomainEndpointOptionsResponse]
    def update_domain_endpoint_options(params = {}, options = {})
      request = build_request(:update_domain_endpoint_options, params)
      request.send_request(options)
    end

    # <p>Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html" target="_blank">Configuring Scaling Options</a> in the <i>Amazon CloudSearch Developer Guide</i>. </p>
    # @param [Hash, Types::UpdateScalingParametersRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [Types::ScalingParameters] :scaling_parameters
    #   <p>The desired instance type and desired number of replicas of each index partition.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     scaling_parameters: { # required
    #       desired_instance_type: "search.m1.small" # One of: ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"],
    #       desired_replication_count: 1,
    #       desired_partition_count: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_scaling_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scaling_parameters: { # required
    #       options: { # required
    #         desired_instance_type: "search.m1.small" # One of: ["search.m1.small", "search.m1.large", "search.m2.xlarge", "search.m2.2xlarge", "search.m3.medium", "search.m3.large", "search.m3.xlarge", "search.m3.2xlarge", "search.small", "search.medium", "search.large", "search.xlarge", "search.2xlarge", "search.previousgeneration.small", "search.previousgeneration.large", "search.previousgeneration.xlarge", "search.previousgeneration.2xlarge"],
    #         desired_replication_count: 1,
    #         desired_partition_count: 1
    #       },
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateScalingParametersResponse]
    def update_scaling_parameters(params = {}, options = {})
      request = build_request(:update_scaling_parameters, params)
      request.send_request(options)
    end

    # <p>Configures the access rules that control access to the domain's document and search endpoints.
    #       For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html" target="_blank">
    #         Configuring Access for an Amazon CloudSearch Domain</a>.</p>
    # @param [Hash, Types::UpdateServiceAccessPoliciesRequest] params
    # @option params [String] :domain_name
    #   <p>A string that represents the name of a domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    # @option params [String] :access_policies
    #   <p>The access rules you want to configure. These rules replace any existing rules. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "DomainName", # required
    #     access_policies: "PolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.update_service_access_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policies: { # required
    #       options: "PolicyDocument", # required
    #       status: { # required
    #         creation_date: Time.now, # required
    #         update_date: Time.now, # required
    #         update_version: 1,
    #         state: "RequiresIndexDocuments" # One of: ["RequiresIndexDocuments", "Processing", "Active", "FailedToValidate"], # required
    #         pending_deletion: false
    #       }
    #     }
    #   }
    # @return [Types::UpdateServiceAccessPoliciesResponse]
    def update_service_access_policies(params = {}, options = {})
      request = build_request(:update_service_access_policies, params)
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
      context[:gem_name] = 'aws-sdk-cloudsearch'
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
