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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::WAF
  # An API client for Aws::WAF.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSWAF20150824

    add_plugin(::Aws::WAF::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::WAF::EndpointProvider)
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates a <code>ByteMatchSet</code>. You then use <a>UpdateByteMatchSet</a> to identify the part of a 
    # 			web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string. 
    # 			For example, you can create a <code>ByteMatchSet</code> that matches any requests with <code>User-Agent</code> headers 
    # 			that contain the string <code>BadBot</code>. You can then configure AWS WAF to reject those requests.</p>
    # 		       <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<code>UpdateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateByteMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect 
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateByteMatchSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>ByteMatchSet</a>. You can't change <code>Name</code> after you create a 
    #   			<code>ByteMatchSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_byte_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byte_match_set: {
    #       byte_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       byte_match_tuples: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           target_string: "data", # required
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateByteMatchSetResponse]
    def create_byte_match_set(params = {}, options = {})
      request = build_request(:create_byte_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Creates an <a>GeoMatchSet</a>, which you use to specify which web requests you want to allow or block based on the country 
    # 			that the requests originate from. For example, if you're receiving a lot of requests from one or more countries and you want to block the requests, you can create an <code>GeoMatchSet</code> that contains those countries and then configure AWS WAF to block the requests. </p>
    # 		       <p>To create and configure a <code>GeoMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateGeoMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateGeoMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateGeoMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateGeoMatchSetSet</code> request to specify the countries that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateGeoMatchSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>GeoMatchSet</a>. You can't change <code>Name</code> after you create the <code>GeoMatchSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_geo_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geo_match_set: {
    #       geo_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       geo_match_constraints: [ # required
    #         {
    #           type: "Country" # One of: ["Country"], # required
    #           value: "AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateGeoMatchSetResponse]
    def create_geo_match_set(params = {}, options = {})
      request = build_request(:create_geo_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates an <a>IPSet</a>, which you use to specify which web requests
    #          that
    #          you want to allow or block based on the IP addresses that the requests
    #          originate from. For example, if you're receiving a lot of requests from one or more
    #          individual IP addresses or one or more ranges of IP addresses and you want to block the
    #          requests, you can create an <code>IPSet</code> that contains those IP addresses and then
    #          configure AWS WAF to block the requests. </p>
    # 		       <p>To create and configure an <code>IPSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateIPSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateIPSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateIPSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>IPSet</a>. You can't change <code>Name</code> after you create the <code>IPSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To create an IP set
    #   # The following example creates an IP match set named MyIPSetFriendlyName.
    #   params = {
    #     name: "MyIPSetFriendlyName",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.create_ip_set(params, options)
    #   response.to_h #=>
    #   {
    #     ip_set: {
    #       ip_set_descriptors: [
    #         {
    #           type: IPV4,
    #           value: "192.0.2.44/32"
    #         }
    #       ],
    #       ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #       name: "MyIPSetFriendlyName"
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_set: {
    #       ip_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       ip_set_descriptors: [ # required
    #         {
    #           type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #           value: "IPSetDescriptorValue", # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateIPSetResponse]
    def create_ip_set(params = {}, options = {})
      request = build_request(:create_ip_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Creates a <a>RateBasedRule</a>. The <code>RateBasedRule</code> contains a
    #             <code>RateLimit</code>, which specifies the maximum number of requests that AWS WAF allows
    #                 from a specified IP address in a five-minute period.  
    #                 The <code>RateBasedRule</code> also
    #          contains the <code>IPSet</code> objects, <code>ByteMatchSet</code> objects, and other
    #          predicates that identify the requests that you want to count or block if these requests
    #          exceed the <code>RateLimit</code>.</p>
    #          <p>If you add more than one predicate to a <code>RateBasedRule</code>, a request not
    #          only must exceed the <code>RateLimit</code>, but it also must match all the
    #          conditions to be counted or blocked. For example, suppose you add the following to a
    #             <code>RateBasedRule</code>:</p>
    #          <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the
    #                   <code>User-Agent</code> header</p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a <code>RateLimit</code> of 1,000.</p>
    #          <p>You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and specify that
    #          you want to block requests that meet the conditions in the rule. For a request to be
    #          blocked, it must come from the IP address 192.0.2.44 <i>and</i> the
    #             <code>User-Agent</code> header in the request must contain the value
    #          <code>BadBot</code>. Further, requests that match these two conditions must be received at
    #          a rate of more than 1,000 requests every five minutes. If both conditions are met and the
    #          rate is exceeded, AWS WAF blocks the requests. If the rate drops below 1,000 for a
    #          five-minute period, AWS WAF no longer blocks the requests.</p>
    # 		 
    # 		       <p>As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a
    #             <code>RateBasedRule</code>:</p>
    # 			
    # 			 
    #          <ul>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of <code>URI</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>PositionalConstraint</code> of <code>STARTS_WITH</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>TargetString</code> of <code>login</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a <code>RateLimit</code> of 1,000.</p>
    #          <p>By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you could limit requests to your login page without affecting the rest of your site.</p>
    # 		 
    # 		 
    #          <p>To create and configure a <code>RateBasedRule</code>, perform the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in the rule. For more
    #                information, see <a>CreateByteMatchSet</a>, <a>CreateIPSet</a>,
    #                and <a>CreateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide
    #                in the <code>ChangeToken</code> parameter of a <code>CreateRule</code>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRateBasedRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the
    #                   <code>ChangeToken</code> parameter of an <a>UpdateRule</a>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRateBasedRule</code> request to specify the predicates
    #                that you want to include in the rule.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the
    #                   <code>RateBasedRule</code>. For more information, see <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests,
    #          see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer
    #             Guide</a>.</p>
    # @param [Hash, Types::CreateRateBasedRuleRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RateBasedRule</a>. You can't
    #            change the name of a <code>RateBasedRule</code> after you create it.</p>
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>RateBasedRule</code>.
    #             The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #             whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>RateBasedRule</code>.</p>
    # @option params [String] :rate_key
    #   <p>The field that AWS WAF uses to determine if requests are likely arriving from a single
    #            source and thus subject to rate monitoring. The only valid value for <code>RateKey</code>
    #            is <code>IP</code>. <code>IP</code> indicates that requests that arrive from the same IP
    #            address are subject to the <code>RateLimit</code> that is specified in
    #            the <code>RateBasedRule</code>.</p>
    # @option params [Integer] :rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field that is
    #            specified by <code>RateKey</code>, allowed in a five-minute period. If the number of
    #            requests exceeds the <code>RateLimit</code> and the other predicates specified in the rule
    #            are also met, AWS WAF triggers the action that is specified for this rule.</p>
    # @option params [String] :change_token
    #   <p>The <code>ChangeToken</code> that you used to submit the
    #               <code>CreateRateBasedRule</code> request. You can also use this value to query the
    #            status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     rate_key: "IP" # One of: ["IP"], # required
    #     rate_limit: 1, # required
    #     change_token: "ChangeToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rate_based_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       rule_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName",
    #       match_predicates: [ # required
    #         {
    #           negated: false, # required
    #           type: "IPMatch" # One of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"], # required
    #           data_id: "ResourceId", # required
    #         }
    #       ],
    #       rate_key: "IP" # One of: ["IP"], # required
    #       rate_limit: 1, # required
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateRateBasedRuleResponse]
    def create_rate_based_rule(params = {}, options = {})
      request = build_request(:create_rate_based_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Creates a <a>RegexMatchSet</a>. You then use <a>UpdateRegexMatchSet</a> to identify the part of a 
    #          web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string. 
    #          For example, you can create a <code>RegexMatchSet</code> that contains a <code>RegexMatchTuple</code> that looks for any requests with <code>User-Agent</code> headers 
    #          that match a <code>RegexPatternSet</code> with pattern <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
    #          <p>To create and configure a <code>RegexMatchSet</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    #                   <code>CreateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    #                   <code>UpdateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateRegexMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect 
    #                   (for example, the header or the URI) and the value, using a <code>RegexPatternSet</code>, that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    #             <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRegexMatchSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RegexMatchSet</a>. You can't change <code>Name</code> after you create a 
    #   			<code>RegexMatchSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_regex_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regex_match_set: {
    #       regex_match_set_id: "ResourceId",
    #       name: "ResourceName",
    #       regex_match_tuples: [
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           regex_pattern_set_id: "ResourceId", # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateRegexMatchSetResponse]
    def create_regex_match_set(params = {}, options = {})
      request = build_request(:create_regex_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Creates a <code>RegexPatternSet</code>. You then use <a>UpdateRegexPatternSet</a> to specify the regular expression (regex) pattern that you want AWS WAF to search for, such as <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>
    # 		       <p>To create and configure a <code>RegexPatternSet</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    #                   <code>CreateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    #                   <code>UpdateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateRegexPatternSet</a> request to specify the string that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    #             <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRegexPatternSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RegexPatternSet</a>. You can't change <code>Name</code> after you create a 
    #   			<code>RegexPatternSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regex_pattern_set: {
    #       regex_pattern_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       regex_pattern_strings: ["RegexPatternString"], # required
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateRegexPatternSetResponse]
    def create_regex_pattern_set(params = {}, options = {})
      request = build_request(:create_regex_pattern_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates a <code>Rule</code>, which contains the <code>IPSet</code> objects,
    #             <code>ByteMatchSet</code> objects, and other predicates that identify the requests that
    #          you want to block. If you add more than one predicate to a <code>Rule</code>, a request
    #          must match all of the specifications to be allowed or blocked. For example, suppose
    #          that
    #          you add the following to a <code>Rule</code>:</p>
    # 		       <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the <code>User-Agent</code> header</p>
    #             </li>
    #          </ul>
    # 		       <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to blocks requests that satisfy the <code>Rule</code>. 
    # 			For a request to be blocked, it must come from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request 
    # 			must contain the value <code>BadBot</code>.</p>
    # 		       <p>To create and configure a <code>Rule</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in the <code>Rule</code>. For more information, see 
    # 				<a>CreateByteMatchSet</a>, <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateRule</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRule</code> request to specify the predicates that you want to include in the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. For more information, see <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRuleRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>Rule</a>. You can't change the name of a <code>Rule</code> after you create it.</p>
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>Rule</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #   	        whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the
    #               <code>Rule</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p></p>
    # @example To create a rule
    #   # The following example creates a rule named WAFByteHeaderRule.
    #   params = {
    #     name: "WAFByteHeaderRule",
    #     metric_name: "WAFByteHeaderRule",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule: {
    #       metric_name: "WAFByteHeaderRule",
    #       name: "WAFByteHeaderRule",
    #       predicates: [
    #         {
    #           data_id: "MyByteMatchSetID",
    #           negated: false,
    #           type: ByteMatch
    #         }
    #       ],
    #       rule_id: "WAFRule-1-Example"
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     change_token: "ChangeToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       rule_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName",
    #       predicates: [ # required
    #         {
    #           negated: false, # required
    #           type: "IPMatch" # One of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"], # required
    #           data_id: "ResourceId", # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateRuleResponse]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Creates a <code>RuleGroup</code>. A rule group is a collection of predefined rules that you add to a web ACL. You use <a>UpdateRuleGroup</a> to add rules to the rule group.</p>
    # 	        <p>Rule groups are subject to the following limits:</p>
    # 	        <ul>
    #             <li>
    #                <p>Three rule groups per account. You can request an increase to this limit by contacting customer support.</p>
    #             </li>
    #             <li>
    #                <p>One rule group per web ACL.</p>
    #             </li>
    #             <li>
    #                <p>Ten rules per rule group.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateRuleGroupRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>RuleGroup</a>. You can't change <code>Name</code> after you create a 
    #            <code>RuleGroup</code>.</p>
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>RuleGroup</code>. The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #            whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change the name of the metric after you create the <code>RuleGroup</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     change_token: "ChangeToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_group: {
    #       rule_group_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName"
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateRuleGroupResponse]
    def create_rule_group(params = {}, options = {})
      request = build_request(:create_rule_group, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates a <code>SizeConstraintSet</code>. You then use <a>UpdateSizeConstraintSet</a> to identify the part of a 
    # 			web request that you want AWS WAF to check for length, such as the length of the <code>User-Agent</code> header or the length of the query string. 
    # 			For example, you can create a <code>SizeConstraintSet</code> that matches any requests that have a query string that is longer than 100 bytes. 
    # 			You can then configure AWS WAF to reject those requests.</p>
    # 		       <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<code>UpdateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateSizeConstraintSet</a> request to specify the part of the request that you want AWS WAF to inspect 
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateSizeConstraintSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>SizeConstraintSet</a>. You can't change <code>Name</code> after you create a 
    #   			<code>SizeConstraintSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To create a size constraint
    #   # The following example creates size constraint set named MySampleSizeConstraintSet.
    #   params = {
    #     name: "MySampleSizeConstraintSet",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.create_size_constraint_set(params, options)
    #   response.to_h #=>
    #   {
    #     size_constraint_set: {
    #       name: "MySampleSizeConstraintSet",
    #       size_constraints: [
    #         {
    #           comparison_operator: GT,
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           size: 0,
    #           text_transformation: NONE
    #         }
    #       ],
    #       size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_size_constraint_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     size_constraint_set: {
    #       size_constraint_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       size_constraints: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #           size: 1, # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateSizeConstraintSetResponse]
    def create_size_constraint_set(params = {}, options = {})
      request = build_request(:create_size_constraint_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates a <a>SqlInjectionMatchSet</a>, which you use to allow, block, or count requests that contain snippets of SQL code in a 
    # 			specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p> 
    # 		       <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateSqlInjectionMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateSqlInjectionMatchSet</a> request to specify the parts of web requests in which you want to 
    # 				allow, block, or count malicious SQL code.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateSqlInjectionMatchSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description for the <a>SqlInjectionMatchSet</a> that you're creating. You can't change <code>Name</code> 
    #   			after you create the <code>SqlInjectionMatchSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To create a SQL injection match set
    #   # The following example creates a SQL injection match set named MySQLInjectionMatchSet.
    #   params = {
    #     name: "MySQLInjectionMatchSet",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.create_sql_injection_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     sql_injection_match_set: {
    #       name: "MySQLInjectionMatchSet",
    #       sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #       sql_injection_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           text_transformation: URL_DECODE
    #         }
    #       ]
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_sql_injection_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sql_injection_match_set: {
    #       sql_injection_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       sql_injection_match_tuples: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateSqlInjectionMatchSetResponse]
    def create_sql_injection_match_set(params = {}, options = {})
      request = build_request(:create_sql_injection_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates a <code>WebACL</code>, which contains the <code>Rules</code> that identify the CloudFront web requests that you want to allow, block, or count. 
    # 			AWS WAF evaluates <code>Rules</code> in order based on the value of <code>Priority</code> for each <code>Rule</code>.</p>			
    # 		       <p>You also specify a default action, either <code>ALLOW</code> or <code>BLOCK</code>. If a web request doesn't match 
    # 			any of the <code>Rules</code> in a <code>WebACL</code>, AWS WAF responds to the request with the default action. </p>			
    # 		       <p>To create and configure a <code>WebACL</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the <code>ByteMatchSet</code> objects and other predicates that you want to include in <code>Rules</code>. 
    # 				For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>, 
    # 				<a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see 
    # 				<a>CreateRule</a> and <a>UpdateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateWebACL</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateWebACL</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateWebACL</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateWebACL</a> request to specify the <code>Rules</code> that you want to include in the <code>WebACL</code>, 
    # 				to specify the default action, and to associate the <code>WebACL</code> with a CloudFront distribution.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateWebACLRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description of the <a>WebACL</a>. You can't change <code>Name</code> after you create the <code>WebACL</code>.</p>
    # @option params [String] :metric_name
    #   <p>A friendly name or description for the metrics for this <code>WebACL</code>.The name can contain only alphanumeric characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length one. It can't contain
    #   	        whitespace or metric names reserved for AWS WAF, including "All" and "Default_Action." You can't change <code>MetricName</code> after you create the
    #               <code>WebACL</code>.</p>
    # @option params [Types::WafAction] :default_action
    #   <p>The action that you want  AWS WAF to take when a request doesn't match the criteria specified in any of the <code>Rule</code> 
    #   			objects that are associated with the <code>WebACL</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p></p>
    # @example To create a web ACL
    #   # The following example creates a web ACL named CreateExample.
    #   params = {
    #     name: "CreateExample",
    #     metric_name: "CreateExample",
    #     default_action: {
    #       type: ALLOW
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.create_web_acl(params, options)
    #   response.to_h #=>
    #   {
    #     web_acl: {
    #       default_action: {
    #         type: ALLOW
    #       },
    #       metric_name: "CreateExample",
    #       name: "CreateExample",
    #       rules: [
    #         {
    #           action: {
    #             type: ALLOW
    #           },
    #           priority: 1,
    #           rule_id: "WAFRule-1-Example"
    #         }
    #       ],
    #       web_acl_id: "example-46da-4444-5555-example"
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     metric_name: "MetricName", # required
    #     default_action: { # required
    #       type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #     },
    #     change_token: "ChangeToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_acl: {
    #       web_acl_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName",
    #       default_action: { # required
    #         type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #       },
    #       rules: [ # required
    #         {
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #           },
    #           override_action: {
    #             type: "NONE" # One of: ["NONE", "COUNT"], # required
    #           },
    #           type: "REGULAR" # One of: ["REGULAR", "RATE_BASED", "GROUP"],
    #           excluded_rules: [
    #             {
    #               rule_id: "ResourceId", # required
    #             }
    #           ]
    #         }
    #       ],
    #       web_acl_arn: "ResourceArn"
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateWebACLResponse]
    def create_web_acl(params = {}, options = {})
      request = build_request(:create_web_acl, params)
      request.send_request(options)
    end

    # <p>Creates an AWS CloudFormation WAFV2 template for the specified web ACL in the specified Amazon S3 bucket. 
    #            Then, in CloudFormation, you create a stack from the template, to create the web ACL and its resources in AWS WAFV2. 
    #            Use this to migrate your AWS WAF Classic web ACL to the latest version of AWS WAF.</p>
    #          <p>This is part of a larger migration procedure for web ACLs from AWS WAF Classic to the latest version of AWS WAF. 
    #            For the full procedure, including caveats and manual steps to complete 
    #            the migration and switch over to the new web ACL, see  
    #            <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-migrating-from-classic.html">Migrating your AWS WAF Classic resources to AWS WAF</a> in the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF     
    #   Developer Guide</a>.  </p>
    # @param [Hash, Types::CreateWebACLMigrationStackRequest] params
    # @option params [String] :web_acl_id
    #   <p>The UUID of the WAF Classic web ACL that you want to migrate to WAF v2.</p>
    # @option params [String] :s3_bucket_name
    #   <p>The name of the Amazon S3 bucket to store the CloudFormation template in. The S3 bucket must be 
    #              configured as follows for the migration:  </p>
    #            <ul>
    #               <li>
    #                  <p>The bucket name must start with <code>aws-waf-migration-</code>. For example, <code>aws-waf-migration-my-web-acl</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The bucket must be in the Region where you are deploying the template. For example, for a web ACL in us-west-2, you must use an Amazon S3 bucket in us-west-2 and you must deploy the template stack to us-west-2. </p>
    #               </li>
    #               <li>
    #                  <p>The bucket policies must permit the migration process to write data. For listings of the 
    #          bucket policies, see the Examples section. </p>
    #              </li>
    #            </ul>
    # @option params [Boolean] :ignore_unsupported_type
    #   <p>Indicates whether to exclude entities that can't be migrated or to stop the migration.
    #              Set this to true to ignore unsupported entities in the web ACL during the migration. Otherwise, if AWS WAF encounters unsupported 
    #              entities, it stops the process and throws an exception. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_id: "ResourceId", # required
    #     s3_bucket_name: "S3BucketName", # required
    #     ignore_unsupported_type: false, # required
    #   }
    #   options = {}
    #   response = client.create_web_acl_migration_stack(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     s3_object_url: "S3ObjectUrl", # required
    #   }
    # @return [Types::CreateWebACLMigrationStackResponse]
    def create_web_acl_migration_stack(params = {}, options = {})
      request = build_request(:create_web_acl_migration_stack, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Creates an <a>XssMatchSet</a>, which you use to allow, block, or count requests that contain cross-site scripting attacks
    # 			in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p> 
    # 		       <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>CreateXssMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>CreateXssMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateXssMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <a>UpdateXssMatchSet</a> request to specify the parts of web requests in which you want to 
    # 				allow, block, or count cross-site scripting attacks.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::CreateXssMatchSetRequest] params
    # @option params [String] :name
    #   <p>A friendly name or description for the <a>XssMatchSet</a> that you're creating. You can't change <code>Name</code> 
    #   			after you create the <code>XssMatchSet</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To create an XSS match set
    #   # The following example creates an XSS match set named MySampleXssMatchSet.
    #   params = {
    #     name: "MySampleXssMatchSet",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.create_xss_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     xss_match_set: {
    #       name: "MySampleXssMatchSet",
    #       xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #       xss_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           text_transformation: URL_DECODE
    #         }
    #       ]
    #     },
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.create_xss_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     xss_match_set: {
    #       xss_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       xss_match_tuples: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #         }
    #       ]
    #     },
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::CreateXssMatchSetResponse]
    def create_xss_match_set(params = {}, options = {})
      request = build_request(:create_xss_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes a <a>ByteMatchSet</a>. You can't delete a <code>ByteMatchSet</code> if it's still used in any <code>Rules</code> 
    # 			or if it still includes any <a>ByteMatchTuple</a> objects (any filters).</p>		
    # 		       <p>If you just want to remove a <code>ByteMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>		
    # 		       <p>To permanently delete a <code>ByteMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>ByteMatchSet</code> to remove filters, if any. For more information, see <a>UpdateByteMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteByteMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteByteMatchSetRequest] params
    # @option params [String] :byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to delete. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by 
    #   			<a>ListByteMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete a byte match set
    #   # The following example deletes a byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_byte_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     byte_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_byte_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteByteMatchSetResponse]
    def delete_byte_match_set(params = {}, options = {})
      request = build_request(:delete_byte_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes a <a>GeoMatchSet</a>. You can't delete a <code>GeoMatchSet</code> if it's still used in any <code>Rules</code> or 
    # 			if it still includes any countries.</p>
    # 		       <p>If you just want to remove a <code>GeoMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete a <code>GeoMatchSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>GeoMatchSet</code> to remove any countries. For more information, see <a>UpdateGeoMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteGeoMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteGeoMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteGeoMatchSetRequest] params
    # @option params [String] :geo_match_set_id
    #   <p>The <code>GeoMatchSetID</code> of the <a>GeoMatchSet</a> that you want to delete. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by 
    #   			<a>ListGeoMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     geo_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_geo_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteGeoMatchSetResponse]
    def delete_geo_match_set(params = {}, options = {})
      request = build_request(:delete_geo_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes an <a>IPSet</a>. You can't delete an <code>IPSet</code> if it's still used in any <code>Rules</code> or 
    # 			if it still includes any IP addresses.</p>
    # 		       <p>If you just want to remove an <code>IPSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete an <code>IPSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>IPSet</code> to remove IP address ranges, if any. For more information, see <a>UpdateIPSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteIPSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteIPSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteIPSetRequest] params
    # @option params [String] :ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to delete. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by 
    #   			<a>ListIPSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete an IP set
    #   # The following example deletes an IP match set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_ip_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ip_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteIPSetResponse]
    def delete_ip_set(params = {}, options = {})
      request = build_request(:delete_ip_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes the <a>LoggingConfiguration</a> from the specified web
    #          ACL.</p>
    # @param [Hash, Types::DeleteLoggingConfigurationRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL from which you want to delete the <a>LoggingConfiguration</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLoggingConfigurationResponse]
    def delete_logging_configuration(params = {}, options = {})
      request = build_request(:delete_logging_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes an IAM policy from the specified RuleGroup.</p>
    #          <p>The user making the request must be the owner of the RuleGroup.</p>
    # @param [Hash, Types::DeletePermissionPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup from which you want to delete the policy.</p>
    #            <p>The user making the request must be the owner of the RuleGroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_permission_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePermissionPolicyResponse]
    def delete_permission_policy(params = {}, options = {})
      request = build_request(:delete_permission_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes a <a>RateBasedRule</a>. You can't delete a rule if
    #          it's still used in any <code>WebACL</code> objects or if it still includes any predicates,
    #          such as <code>ByteMatchSet</code> objects.</p>
    #          <p>If you just want to remove a rule from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p>
    #          <p>To permanently delete a <code>RateBasedRule</code> from AWS WAF, perform the following
    #          steps:</p>
    #          <ol>
    #             <li>
    #                <p>Update the <code>RateBasedRule</code> to remove predicates, if any. For more
    #                information, see <a>UpdateRateBasedRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide
    #                in the <code>ChangeToken</code> parameter of a <code>DeleteRateBasedRule</code>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRateBasedRule</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteRateBasedRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to
    #            delete. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by
    #               <a>ListRateBasedRules</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_rate_based_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteRateBasedRuleResponse]
    def delete_rate_based_rule(params = {}, options = {})
      request = build_request(:delete_rate_based_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes a <a>RegexMatchSet</a>. You can't delete a <code>RegexMatchSet</code> if it's still used in any <code>Rules</code> 
    #         or if it still includes any <code>RegexMatchTuples</code> objects (any filters).</p>		
    # 		       <p>If you just want to remove a <code>RegexMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>		
    # 		       <p>To permanently delete a <code>RegexMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>RegexMatchSet</code> to remove filters, if any. For more information, see <a>UpdateRegexMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRegexMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteRegexMatchSetRequest] params
    # @option params [String] :regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to delete. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by 
    #   			<a>ListRegexMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regex_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_regex_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteRegexMatchSetResponse]
    def delete_regex_match_set(params = {}, options = {})
      request = build_request(:delete_regex_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes a <a>RegexPatternSet</a>. You can't delete a <code>RegexPatternSet</code> if it's still used in any <code>RegexMatchSet</code> 
    #          or if the <code>RegexPatternSet</code> is not empty. </p>
    # @param [Hash, Types::DeleteRegexPatternSetRequest] params
    # @option params [String] :regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to delete. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by 
    #   			<a>ListRegexPatternSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regex_pattern_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteRegexPatternSetResponse]
    def delete_regex_pattern_set(params = {}, options = {})
      request = build_request(:delete_regex_pattern_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes a <a>Rule</a>. You can't delete a <code>Rule</code> if it's still used in any <code>WebACL</code> 
    # 			objects or if it still includes any predicates, such as <code>ByteMatchSet</code> objects.</p>
    # 		       <p>If you just want to remove a <code>Rule</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p>
    # 		       <p>To permanently delete a <code>Rule</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>Rule</code> to remove predicates, if any. For more information, see <a>UpdateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteRule</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRule</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>Rule</a> that you want to delete. <code>RuleId</code> is returned by <a>CreateRule</a> and by 
    #   			<a>ListRules</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete a rule
    #   # The following example deletes a rule with the ID WAFRule-1-Example.
    #   params = {
    #     rule_id: "WAFRule-1-Example",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteRuleResponse]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Permanently deletes a <a>RuleGroup</a>. You can't delete a <code>RuleGroup</code> if it's still used in any <code>WebACL</code> 
    #          objects or if it still includes any rules.</p>
    #          <p>If you just want to remove a <code>RuleGroup</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p>
    #          <p>To permanently delete a <code>RuleGroup</code> from AWS WAF, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Update the <code>RuleGroup</code> to remove rules, if any. For more information, see <a>UpdateRuleGroup</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    #                <code>DeleteRuleGroup</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteRuleGroup</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteRuleGroupRequest] params
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to delete. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by 
    #            <a>ListRuleGroups</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteRuleGroupResponse]
    def delete_rule_group(params = {}, options = {})
      request = build_request(:delete_rule_group, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes a <a>SizeConstraintSet</a>. You can't delete a <code>SizeConstraintSet</code> if it's still used in any <code>Rules</code> 
    # 			or if it still includes any <a>SizeConstraint</a> objects (any filters).</p>		
    # 		       <p>If you just want to remove a <code>SizeConstraintSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>		
    # 		       <p>To permanently delete a <code>SizeConstraintSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>SizeConstraintSet</code> to remove filters, if any. For more information, see <a>UpdateSizeConstraintSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteSizeConstraintSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteSizeConstraintSetRequest] params
    # @option params [String] :size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to delete. <code>SizeConstraintSetId</code> 
    #   			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete a size constraint set
    #   # The following example deletes a size constraint set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_size_constraint_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     size_constraint_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_size_constraint_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteSizeConstraintSetResponse]
    def delete_size_constraint_set(params = {}, options = {})
      request = build_request(:delete_size_constraint_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes a <a>SqlInjectionMatchSet</a>. You can't delete a <code>SqlInjectionMatchSet</code> if it's 
    # 			still used in any <code>Rules</code> or if it still contains any <a>SqlInjectionMatchTuple</a> objects.</p>
    # 		       <p>If you just want to remove a <code>SqlInjectionMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete a <code>SqlInjectionMatchSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>SqlInjectionMatchSet</code> to remove filters, if any. For more information, see 
    # 				<a>UpdateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteSqlInjectionMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteSqlInjectionMatchSetRequest] params
    # @option params [String] :sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to delete. 
    #   			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete a SQL injection match set
    #   # The following example deletes a SQL injection match set  with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_sql_injection_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     sql_injection_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_sql_injection_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteSqlInjectionMatchSetResponse]
    def delete_sql_injection_match_set(params = {}, options = {})
      request = build_request(:delete_sql_injection_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes a <a>WebACL</a>. You can't delete a <code>WebACL</code> if it still contains any <code>Rules</code>.</p>
    # 		       <p>To delete a <code>WebACL</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>WebACL</code> to remove <code>Rules</code>, if any. For more information, see <a>UpdateWebACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteWebACL</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteWebACL</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteWebACLRequest] params
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to delete. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by 
    #   			<a>ListWebACLs</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete a web ACL
    #   # The following example deletes a web ACL with the ID example-46da-4444-5555-example.
    #   params = {
    #     web_acl_id: "example-46da-4444-5555-example",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_web_acl(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteWebACLResponse]
    def delete_web_acl(params = {}, options = {})
      request = build_request(:delete_web_acl, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Permanently deletes an <a>XssMatchSet</a>. You can't delete an <code>XssMatchSet</code> if it's 
    # 			still used in any <code>Rules</code> or if it still contains any <a>XssMatchTuple</a> objects.</p>
    # 		       <p>If you just want to remove an <code>XssMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p>
    # 		       <p>To permanently delete an <code>XssMatchSet</code> from AWS WAF, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Update the <code>XssMatchSet</code> to remove filters, if any. For more information, see 
    # 				<a>UpdateXssMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a 
    # 				<code>DeleteXssMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit a <code>DeleteXssMatchSet</code> request.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::DeleteXssMatchSetRequest] params
    # @option params [String] :xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to delete. 
    #   			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example To delete an XSS match set
    #   # The following example deletes an XSS match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.delete_xss_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     xss_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.delete_xss_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::DeleteXssMatchSetResponse]
    def delete_xss_match_set(params = {}, options = {})
      request = build_request(:delete_xss_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>ByteMatchSet</a> specified by <code>ByteMatchSetId</code>.</p>
    # @param [Hash, Types::GetByteMatchSetRequest] params
    # @option params [String] :byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to get. <code>ByteMatchSetId</code> is returned by 
    #   			<a>CreateByteMatchSet</a> and by <a>ListByteMatchSets</a>.</p>
    # @example To get a byte match set
    #   # The following example returns the details of a byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5"
    #   }
    #   options = {}
    #   response = client.get_byte_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     byte_match_set: {
    #       byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
    #       byte_match_tuples: [
    #         {
    #           field_to_match: {
    #             data: "referer",
    #             type: HEADER
    #           },
    #           positional_constraint: CONTAINS,
    #           target_string: "badrefer1",
    #           text_transformation: NONE
    #         }
    #       ],
    #       name: "ByteMatchNameExample"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     byte_match_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_byte_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     byte_match_set: {
    #       byte_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       byte_match_tuples: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           target_string: "data", # required
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetByteMatchSetResponse]
    def get_byte_match_set(params = {}, options = {})
      request = build_request(:get_byte_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF.</p>
    # 		       <p>Each create, update, or delete request must use a unique change token. If your application submits a <code>GetChangeToken</code> request 
    # 			and then submits a second <code>GetChangeToken</code> request before submitting a create, update, or delete request, the second 
    # 			<code>GetChangeToken</code> request returns the same value as the first <code>GetChangeToken</code> request.</p>
    # 		       <p>When you use a change token in a create, update, or delete request, the status of the change token changes to <code>PENDING</code>, 
    # 			which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use <code>GetChangeTokenStatus</code> to determine the 
    # 			status of your change token.</p>
    # @param [Hash, Types::GetChangeTokenRequest] params
    # @example To get a change token
    #   # The following example returns a change token to use for a create, update or delete operation.
    #   params = {}
    #   options = {}
    #   response = client.get_change_token(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_change_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::GetChangeTokenResponse]
    def get_change_token(params = {}, options = {})
      request = build_request(:get_change_token, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the status of a <code>ChangeToken</code> that you got by calling <a>GetChangeToken</a>. <code>ChangeTokenStatus</code> is 
    # 			one of the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <code>PROVISIONED</code>: You requested the change token by calling <code>GetChangeToken</code>, but you haven't used it yet 
    # 				in a call to create, update, or delete an AWS WAF object.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>PENDING</code>: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>INSYNC</code>: Propagation is complete.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetChangeTokenStatusRequest] params
    # @option params [String] :change_token
    #   <p>The change token for which you want to get the status. This change token was previously returned in the <code>GetChangeToken</code> response.</p>
    # @example To get the change token status
    #   # The following example returns the status of a change token with the ID abcd12f2-46da-4fdb-b8d5-fbd4c466928f.
    #   params = {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    #   options = {}
    #   response = client.get_change_token_status(params, options)
    #   response.to_h #=>
    #   {
    #     change_token_status: PENDING
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.get_change_token_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token_status: "PROVISIONED" # One of: ["PROVISIONED", "PENDING", "INSYNC"]
    #   }
    # @return [Types::GetChangeTokenStatusResponse]
    def get_change_token_status(params = {}, options = {})
      request = build_request(:get_change_token_status, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns the <a>GeoMatchSet</a> that is specified by <code>GeoMatchSetId</code>.</p>
    # @param [Hash, Types::GetGeoMatchSetRequest] params
    # @option params [String] :geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to get. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by 
    #   			<a>ListGeoMatchSets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     geo_match_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_geo_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     geo_match_set: {
    #       geo_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       geo_match_constraints: [ # required
    #         {
    #           type: "Country" # One of: ["Country"], # required
    #           value: "AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetGeoMatchSetResponse]
    def get_geo_match_set(params = {}, options = {})
      request = build_request(:get_geo_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>IPSet</a> that is specified by <code>IPSetId</code>.</p>
    # @param [Hash, Types::GetIPSetRequest] params
    # @option params [String] :ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to get. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by 
    #   			<a>ListIPSets</a>.</p>
    # @example To get an IP set
    #   # The following example returns the details of an IP match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #   }
    #   options = {}
    #   response = client.get_ip_set(params, options)
    #   response.to_h #=>
    #   {
    #     ip_set: {
    #       ip_set_descriptors: [
    #         {
    #           type: IPV4,
    #           value: "192.0.2.44/32"
    #         }
    #       ],
    #       ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #       name: "MyIPSetFriendlyName"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ip_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ip_set: {
    #       ip_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       ip_set_descriptors: [ # required
    #         {
    #           type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #           value: "IPSetDescriptorValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetIPSetResponse]
    def get_ip_set(params = {}, options = {})
      request = build_request(:get_ip_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns the <a>LoggingConfiguration</a> for the specified web ACL.</p>
    # @param [Hash, Types::GetLoggingConfigurationRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL for which you want to get the <a>LoggingConfiguration</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: {
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #           data: "MatchFieldData"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetLoggingConfigurationResponse]
    def get_logging_configuration(params = {}, options = {})
      request = build_request(:get_logging_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns the IAM policy attached to the RuleGroup.</p>
    # @param [Hash, Types::GetPermissionPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup for which you want to get the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_permission_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyString"
    #   }
    # @return [Types::GetPermissionPolicyResponse]
    def get_permission_policy(params = {}, options = {})
      request = build_request(:get_permission_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns the <a>RateBasedRule</a> that is specified by the
    #             <code>RuleId</code> that you included in the <code>GetRateBasedRule</code>
    #          request.</p>
    # @param [Hash, Types::GetRateBasedRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> that you want to get.
    #               <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_rate_based_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       rule_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName",
    #       match_predicates: [ # required
    #         {
    #           negated: false, # required
    #           type: "IPMatch" # One of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"], # required
    #           data_id: "ResourceId", # required
    #         }
    #       ],
    #       rate_key: "IP" # One of: ["IP"], # required
    #       rate_limit: 1, # required
    #     }
    #   }
    # @return [Types::GetRateBasedRuleResponse]
    def get_rate_based_rule(params = {}, options = {})
      request = build_request(:get_rate_based_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of IP addresses currently being blocked by the <a>RateBasedRule</a> that is specified by the <code>RuleId</code>. The maximum
    #          number of managed keys that will be blocked is 10,000. If more than 10,000 addresses exceed
    #          the rate limit, the 10,000 addresses with the highest rates will be blocked.</p>
    # @param [Hash, Types::GetRateBasedRuleManagedKeysRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>RateBasedRule</a> for which you want to
    #            get a list of <code>ManagedKeys</code>. <code>RuleId</code> is returned by <a>CreateRateBasedRule</a> and by <a>ListRateBasedRules</a>.</p>
    # @option params [String] :next_marker
    #   <p>A null value and not currently used. Do not include this in your request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #     next_marker: "NextMarker"
    #   }
    #   options = {}
    #   response = client.get_rate_based_rule_managed_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_keys: ["ManagedKey"],
    #     next_marker: "NextMarker"
    #   }
    # @return [Types::GetRateBasedRuleManagedKeysResponse]
    def get_rate_based_rule_managed_keys(params = {}, options = {})
      request = build_request(:get_rate_based_rule_managed_keys, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns the <a>RegexMatchSet</a> specified by <code>RegexMatchSetId</code>.</p>
    # @param [Hash, Types::GetRegexMatchSetRequest] params
    # @option params [String] :regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to get. <code>RegexMatchSetId</code> is returned by 
    #   			<a>CreateRegexMatchSet</a> and by <a>ListRegexMatchSets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regex_match_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_regex_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regex_match_set: {
    #       regex_match_set_id: "ResourceId",
    #       name: "ResourceName",
    #       regex_match_tuples: [
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           regex_pattern_set_id: "ResourceId", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetRegexMatchSetResponse]
    def get_regex_match_set(params = {}, options = {})
      request = build_request(:get_regex_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #         <p>Returns the <a>RegexPatternSet</a> specified by <code>RegexPatternSetId</code>.</p>
    # @param [Hash, Types::GetRegexPatternSetRequest] params
    # @option params [String] :regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to get. <code>RegexPatternSetId</code> is returned by 
    #   			<a>CreateRegexPatternSet</a> and by <a>ListRegexPatternSets</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regex_pattern_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     regex_pattern_set: {
    #       regex_pattern_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       regex_pattern_strings: ["RegexPatternString"], # required
    #     }
    #   }
    # @return [Types::GetRegexPatternSetResponse]
    def get_regex_pattern_set(params = {}, options = {})
      request = build_request(:get_regex_pattern_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>Rule</a> that is specified by the <code>RuleId</code> that you included in the <code>GetRule</code> request.</p>
    # @param [Hash, Types::GetRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <a>Rule</a> that you want to get. <code>RuleId</code> is returned by <a>CreateRule</a> and by 
    #   			<a>ListRules</a>.</p>
    # @example To get a rule
    #   # The following example returns the details of a rule with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     rule_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    #   response.to_h #=>
    #   {
    #     rule: {
    #       metric_name: "WAFByteHeaderRule",
    #       name: "WAFByteHeaderRule",
    #       predicates: [
    #         {
    #           data_id: "MyByteMatchSetID",
    #           negated: false,
    #           type: ByteMatch
    #         }
    #       ],
    #       rule_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       rule_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName",
    #       predicates: [ # required
    #         {
    #           negated: false, # required
    #           type: "IPMatch" # One of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"], # required
    #           data_id: "ResourceId", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetRuleResponse]
    def get_rule(params = {}, options = {})
      request = build_request(:get_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns the <a>RuleGroup</a> that is specified by the <code>RuleGroupId</code> that you included in the <code>GetRuleGroup</code> request.</p>
    # 	        <p>To view the rules in a rule group, use <a>ListActivatedRulesInRuleGroup</a>.</p>
    # @param [Hash, Types::GetRuleGroupRequest] params
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to get. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by 
    #            <a>ListRuleGroups</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_group: {
    #       rule_group_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName"
    #     }
    #   }
    # @return [Types::GetRuleGroupResponse]
    def get_rule_group(params = {}, options = {})
      request = build_request(:get_rule_group, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 500 requests, and you can specify any time range in the previous three hours.</p>
    # 		       <p>
    #             <code>GetSampledRequests</code> returns a time range, which is usually the time range that you specified. However, if your resource 
    # 			(such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, <code>GetSampledRequests</code> 
    # 			returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.</p>
    # @param [Hash, Types::GetSampledRequestsRequest] params
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <code>WebACL</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
    # @option params [String] :rule_id
    #   <p>
    #               <code>RuleId</code> is one of three values:</p>
    #   			      <ul>
    #               <li>
    #   				           <p>The <code>RuleId</code> of the <code>Rule</code> or the <code>RuleGroupId</code> of the <code>RuleGroup</code> for which you want <code>GetSampledRequests</code> to return a sample of requests.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Default_Action</code>, which causes <code>GetSampledRequests</code> to return a sample of the requests that 
    #   					didn't match any of the rules in the specified <code>WebACL</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::TimeWindow] :time_window
    #   <p>The start date and time and the end date and time of the range for which you want <code>GetSampledRequests</code> to return a 
    #                           sample of requests. You must specify the times in Coordinated Universal Time (UTC) format. UTC format includes the special  
    #                           designator, <code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can specify any time range in the previous three hours.</p>
    # @option params [Integer] :max_items
    #   <p>The number of requests that you want AWS WAF to return from among the first 5,000 requests that your AWS resource received
    #   			during the time range. If your resource received fewer requests than the value of <code>MaxItems</code>, <code>GetSampledRequests</code> 
    #   			returns information about all of them. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_id: "ResourceId", # required
    #     rule_id: "ResourceId", # required
    #     time_window: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     max_items: 1, # required
    #   }
    #   options = {}
    #   response = client.get_sampled_requests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sampled_requests: [
    #       {
    #         request: { # required
    #           client_ip: "IPString",
    #           country: "Country",
    #           uri: "URIString",
    #           method: "HTTPMethod",
    #           http_version: "HTTPVersion",
    #           headers: [
    #             {
    #               name: "HeaderName",
    #               value: "HeaderValue"
    #             }
    #           ]
    #         },
    #         weight: 1, # required
    #         timestamp: Time.now,
    #         action: "Action",
    #         rule_within_rule_group: "ResourceId"
    #       }
    #     ],
    #     population_size: 1,
    #     time_window: {
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     }
    #   }
    # @return [Types::GetSampledRequestsResponse]
    def get_sampled_requests(params = {}, options = {})
      request = build_request(:get_sampled_requests, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>SizeConstraintSet</a> specified by <code>SizeConstraintSetId</code>.</p>
    # @param [Hash, Types::GetSizeConstraintSetRequest] params
    # @option params [String] :size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to get. <code>SizeConstraintSetId</code> is returned by 
    #   			<a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    # @example To get a size constraint set
    #   # The following example returns the details of a size constraint match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #   }
    #   options = {}
    #   response = client.get_size_constraint_set(params, options)
    #   response.to_h #=>
    #   {
    #     size_constraint_set: {
    #       name: "MySampleSizeConstraintSet",
    #       size_constraints: [
    #         {
    #           comparison_operator: GT,
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           size: 0,
    #           text_transformation: NONE
    #         }
    #       ],
    #       size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     size_constraint_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_size_constraint_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     size_constraint_set: {
    #       size_constraint_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       size_constraints: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #           size: 1, # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetSizeConstraintSetResponse]
    def get_size_constraint_set(params = {}, options = {})
      request = build_request(:get_size_constraint_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>SqlInjectionMatchSet</a> that is specified by <code>SqlInjectionMatchSetId</code>.</p>
    # @param [Hash, Types::GetSqlInjectionMatchSetRequest] params
    # @option params [String] :sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <a>SqlInjectionMatchSet</a> that you want to get. <code>SqlInjectionMatchSetId</code> 
    #   			is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    # @example To get a SQL injection match set
    #   # The following example returns the details of a SQL injection match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #   }
    #   options = {}
    #   response = client.get_sql_injection_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     sql_injection_match_set: {
    #       name: "MySQLInjectionMatchSet",
    #       sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #       sql_injection_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           text_transformation: URL_DECODE
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     sql_injection_match_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_sql_injection_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sql_injection_match_set: {
    #       sql_injection_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       sql_injection_match_tuples: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetSqlInjectionMatchSetResponse]
    def get_sql_injection_match_set(params = {}, options = {})
      request = build_request(:get_sql_injection_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>WebACL</a> that is specified by <code>WebACLId</code>.</p>
    # @param [Hash, Types::GetWebACLRequest] params
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to get. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by 
    #   			<a>ListWebACLs</a>.</p>
    # @example To get a web ACL
    #   # The following example returns the details of a web ACL with the ID createwebacl-1472061481310.
    #   params = {
    #     web_acl_id: "createwebacl-1472061481310"
    #   }
    #   options = {}
    #   response = client.get_web_acl(params, options)
    #   response.to_h #=>
    #   {
    #     web_acl: {
    #       default_action: {
    #         type: ALLOW
    #       },
    #       metric_name: "CreateExample",
    #       name: "CreateExample",
    #       rules: [
    #         {
    #           action: {
    #             type: ALLOW
    #           },
    #           priority: 1,
    #           rule_id: "WAFRule-1-Example"
    #         }
    #       ],
    #       web_acl_id: "createwebacl-1472061481310"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     web_acl: {
    #       web_acl_id: "ResourceId", # required
    #       name: "ResourceName",
    #       metric_name: "MetricName",
    #       default_action: { # required
    #         type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #       },
    #       rules: [ # required
    #         {
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #           },
    #           override_action: {
    #             type: "NONE" # One of: ["NONE", "COUNT"], # required
    #           },
    #           type: "REGULAR" # One of: ["REGULAR", "RATE_BASED", "GROUP"],
    #           excluded_rules: [
    #             {
    #               rule_id: "ResourceId", # required
    #             }
    #           ]
    #         }
    #       ],
    #       web_acl_arn: "ResourceArn"
    #     }
    #   }
    # @return [Types::GetWebACLResponse]
    def get_web_acl(params = {}, options = {})
      request = build_request(:get_web_acl, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns the <a>XssMatchSet</a> that is specified by <code>XssMatchSetId</code>.</p>
    # @param [Hash, Types::GetXssMatchSetRequest] params
    # @option params [String] :xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <a>XssMatchSet</a> that you want to get. <code>XssMatchSetId</code> 
    #   			is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    # @example To get an XSS match set
    #   # The following example returns the details of an XSS match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #   }
    #   options = {}
    #   response = client.get_xss_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     xss_match_set: {
    #       name: "MySampleXssMatchSet",
    #       xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #       xss_match_tuples: [
    #         {
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           text_transformation: URL_DECODE
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     xss_match_set_id: "ResourceId", # required
    #   }
    #   options = {}
    #   response = client.get_xss_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     xss_match_set: {
    #       xss_match_set_id: "ResourceId", # required
    #       name: "ResourceName",
    #       xss_match_tuples: [ # required
    #         {
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetXssMatchSetResponse]
    def get_xss_match_set(params = {}, options = {})
      request = build_request(:get_xss_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>ActivatedRule</a> objects.</p>
    # @param [Hash, Types::ListActivatedRulesInRuleGroupRequest] params
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> for which you want to get a list of <a>ActivatedRule</a> objects.</p>
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ActivatedRules</code> than the value of <code>Limit</code>, 
    #            AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ActivatedRules</code>. 
    #            For the second and subsequent <code>ListActivatedRulesInRuleGroup</code> requests, specify the value of <code>NextMarker</code> 
    #            from the previous response to get information about another batch of <code>ActivatedRules</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>ActivatedRules</code> that you want AWS WAF to return for this request. If you have more <code>ActivatedRules</code> than the number that you specify for <code>Limit</code>, the response includes a 
    #            <code>NextMarker</code> value that you can use to get another batch of <code>ActivatedRules</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_id: "ResourceId",
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_activated_rules_in_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     activated_rules: [
    #       {
    #         priority: 1, # required
    #         rule_id: "ResourceId", # required
    #         action: {
    #           type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #         },
    #         override_action: {
    #           type: "NONE" # One of: ["NONE", "COUNT"], # required
    #         },
    #         type: "REGULAR" # One of: ["REGULAR", "RATE_BASED", "GROUP"],
    #         excluded_rules: [
    #           {
    #             rule_id: "ResourceId", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListActivatedRulesInRuleGroupResponse]
    def list_activated_rules_in_rule_group(params = {}, options = {})
      request = build_request(:list_activated_rules_in_rule_group, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>ByteMatchSetSummary</a> objects.</p>
    # @param [Hash, Types::ListByteMatchSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code> than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. 
    #   			For the second and subsequent <code>ListByteMatchSets</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>ByteMatchSets</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>ByteMatchSet</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>ByteMatchSets</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>ByteMatchSet</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_byte_match_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     byte_match_sets: [
    #       {
    #         byte_match_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListByteMatchSetsResponse]
    def list_byte_match_sets(params = {}, options = {})
      request = build_request(:list_byte_match_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>GeoMatchSetSummary</a> objects in the response.</p>
    # @param [Hash, Types::ListGeoMatchSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>GeoMatchSet</code>s than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>GeoMatchSet</code> objects. 
    #   			For the second and subsequent <code>ListGeoMatchSets</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>GeoMatchSet</code> objects.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>GeoMatchSet</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>GeoMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>GeoMatchSet</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_geo_match_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     geo_match_sets: [
    #       {
    #         geo_match_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListGeoMatchSetsResponse]
    def list_geo_match_sets(params = {}, options = {})
      request = build_request(:list_geo_match_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>IPSetSummary</a> objects in the response.</p>
    # @param [Hash, Types::ListIPSetsRequest] params
    # @option params [String] :next_marker
    #   <p>AWS WAF returns a <code>NextMarker</code> value in the response that allows you to
    #            list another group of <code>IPSets</code>. For the second and subsequent
    #               <code>ListIPSets</code> requests, specify the value of <code>NextMarker</code> from the
    #            previous response to get information about another batch of <code>IPSets</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>IPSet</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>IPSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>IPSet</code> objects.</p>
    # @example To list IP sets
    #   # The following example returns an array of up to 100 IP match sets.
    #   params = {
    #     limit: 100
    #   }
    #   options = {}
    #   response = client.list_ip_sets(params, options)
    #   response.to_h #=>
    #   {
    #     ip_sets: [
    #       {
    #         ip_set_id: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #         name: "MyIPSetFriendlyName"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_ip_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     ip_sets: [
    #       {
    #         ip_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListIPSetsResponse]
    def list_ip_sets(params = {}, options = {})
      request = build_request(:list_ip_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>LoggingConfiguration</a> objects.</p>
    # @param [Hash, Types::ListLoggingConfigurationsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>LoggingConfigurations</code> than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>LoggingConfigurations</code>. 
    #   			For the second and subsequent <code>ListLoggingConfigurations</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>ListLoggingConfigurations</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>LoggingConfigurations</code> that you want AWS WAF to return for this request. If you have more <code>LoggingConfigurations</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>LoggingConfigurations</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_logging_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configurations: [
    #       {
    #         resource_arn: "ResourceArn", # required
    #         log_destination_configs: ["ResourceArn"], # required
    #         redacted_fields: [
    #           {
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           }
    #         ]
    #       }
    #     ],
    #     next_marker: "NextMarker"
    #   }
    # @return [Types::ListLoggingConfigurationsResponse]
    def list_logging_configurations(params = {}, options = {})
      request = build_request(:list_logging_configurations, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>RuleSummary</a> objects.</p>
    # @param [Hash, Types::ListRateBasedRulesRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code>
    #            than the value of <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the
    #            response that allows you to list another group of <code>Rules</code>. For the second and
    #            subsequent <code>ListRateBasedRules</code> requests, specify the value of
    #               <code>NextMarker</code> from the previous response to get information about another
    #            batch of <code>Rules</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this
    #            request. If you have more <code>Rules</code> than the number that you specify for
    #               <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can
    #            use to get another batch of <code>Rules</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_rate_based_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     rules: [
    #       {
    #         rule_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRateBasedRulesResponse]
    def list_rate_based_rules(params = {}, options = {})
      request = build_request(:list_rate_based_rules, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>RegexMatchSetSummary</a> objects.</p>
    # @param [Hash, Types::ListRegexMatchSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RegexMatchSet</code> objects than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>ByteMatchSets</code>. 
    #   			For the second and subsequent <code>ListRegexMatchSets</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>RegexMatchSet</code> objects.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>RegexMatchSet</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>RegexMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>RegexMatchSet</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_regex_match_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     regex_match_sets: [
    #       {
    #         regex_match_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRegexMatchSetsResponse]
    def list_regex_match_sets(params = {}, options = {})
      request = build_request(:list_regex_match_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>RegexPatternSetSummary</a> objects.</p>
    # @param [Hash, Types::ListRegexPatternSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RegexPatternSet</code> objects than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RegexPatternSet</code> objects. 
    #   			For the second and subsequent <code>ListRegexPatternSets</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>RegexPatternSet</code> objects.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>RegexPatternSet</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>RegexPatternSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>RegexPatternSet</code> objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_regex_pattern_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     regex_pattern_sets: [
    #       {
    #         regex_pattern_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRegexPatternSetsResponse]
    def list_regex_pattern_sets(params = {}, options = {})
      request = build_request(:list_regex_pattern_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>RuleGroup</a> objects.</p>
    # @param [Hash, Types::ListRuleGroupsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>RuleGroups</code> than the value of <code>Limit</code>, 
    #            AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>RuleGroups</code>. 
    #            For the second and subsequent <code>ListRuleGroups</code> requests, specify the value of <code>NextMarker</code> 
    #            from the previous response to get information about another batch of <code>RuleGroups</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>RuleGroups</code> that you want AWS WAF to return for this request. If you have more <code>RuleGroups</code> than the number that you specify for <code>Limit</code>, the response includes a <code>NextMarker</code> value that you can use to get another batch of <code>RuleGroups</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     rule_groups: [
    #       {
    #         rule_group_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRuleGroupsResponse]
    def list_rule_groups(params = {}, options = {})
      request = build_request(:list_rule_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>RuleSummary</a> objects.</p>
    # @param [Hash, Types::ListRulesRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>Rules</code> than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>Rules</code>. 
    #   			For the second and subsequent <code>ListRules</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>Rules</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>Rules</code> that you want AWS WAF to return for this request. If you have more 			<code>Rules</code> than the number that you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    # @example To list rules
    #   # The following example returns an array of up to 100 rules.
    #   params = {
    #     limit: 100
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         name: "WAFByteHeaderRule",
    #         rule_id: "WAFRule-1-Example"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     rules: [
    #       {
    #         rule_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListRulesResponse]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>SizeConstraintSetSummary</a> objects.</p>
    # @param [Hash, Types::ListSizeConstraintSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>SizeConstraintSets</code> than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of <code>SizeConstraintSets</code>. 
    #   			For the second and subsequent <code>ListSizeConstraintSets</code> requests, specify the value of <code>NextMarker</code> 			from the previous response to get information about another batch of <code>SizeConstraintSets</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>SizeConstraintSet</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>SizeConstraintSets</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>SizeConstraintSet</code> objects.</p>
    # @example To list a size constraint sets
    #   # The following example returns an array of up to 100 size contraint match sets.
    #   params = {
    #     limit: 100
    #   }
    #   options = {}
    #   response = client.list_size_constraint_sets(params, options)
    #   response.to_h #=>
    #   {
    #     size_constraint_sets: [
    #       {
    #         name: "MySampleSizeConstraintSet",
    #         size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_size_constraint_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     size_constraint_sets: [
    #       {
    #         size_constraint_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListSizeConstraintSetsResponse]
    def list_size_constraint_sets(params = {}, options = {})
      request = build_request(:list_size_constraint_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>SqlInjectionMatchSet</a> objects.</p>
    # @param [Hash, Types::ListSqlInjectionMatchSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <a>SqlInjectionMatchSet</a> objects than the value of 
    #   			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of 
    #   			<code>SqlInjectionMatchSets</code>. For the second and subsequent <code>ListSqlInjectionMatchSets</code> requests, specify the 
    #   			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>SqlInjectionMatchSets</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <a>SqlInjectionMatchSet</a> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>SqlInjectionMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    # @example To list SQL injection match sets
    #   # The following example returns an array of up to 100 SQL injection match sets.
    #   params = {
    #     limit: 100
    #   }
    #   options = {}
    #   response = client.list_sql_injection_match_sets(params, options)
    #   response.to_h #=>
    #   {
    #     sql_injection_match_sets: [
    #       {
    #         name: "MySQLInjectionMatchSet",
    #         sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_sql_injection_match_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     sql_injection_match_sets: [
    #       {
    #         sql_injection_match_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListSqlInjectionMatchSetsResponse]
    def list_sql_injection_match_sets(params = {}, options = {})
      request = build_request(:list_sql_injection_match_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Returns an array of <a>RuleGroup</a> objects that you are subscribed to.</p>
    # @param [Hash, Types::ListSubscribedRuleGroupsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>ByteMatchSets</code>subscribed rule groups than the value of <code>Limit</code>, 
    #   			AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of subscribed rule groups. 
    #   			For the second and subsequent <code>ListSubscribedRuleGroupsRequest</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of subscribed rule groups.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of subscribed rule groups that you want AWS WAF to return for this request. If you have more 
    #   			objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of objects.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_subscribed_rule_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     rule_groups: [
    #       {
    #         rule_group_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #         metric_name: "MetricName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListSubscribedRuleGroupsResponse]
    def list_subscribed_rule_groups(params = {}, options = {})
      request = build_request(:list_subscribed_rule_groups, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #         <p>Retrieves the tags associated with the specified AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
    #         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :next_marker
    #   <p></p>
    # @option params [Integer] :limit
    #   <p></p>
    # @option params [String] :resource_arn
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1,
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     tag_info_for_resource: {
    #       resource_arn: "ResourceArn",
    #       tag_list: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>WebACLSummary</a> objects in the response.</p>
    # @param [Hash, Types::ListWebACLsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <code>WebACL</code> objects than the number that you specify 
    #   			for <code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of 
    #   			<code>WebACL</code> objects. For the second and subsequent <code>ListWebACLs</code> requests, specify the value of <code>NextMarker</code> 
    #   			from the previous response to get information about another batch of <code>WebACL</code> objects.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <code>WebACL</code> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>WebACL</code> objects than the number that you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>WebACL</code> objects.</p>
    # @example To list Web ACLs
    #   # The following example returns an array of up to 100 web ACLs.
    #   params = {
    #     limit: 100
    #   }
    #   options = {}
    #   response = client.list_web_ac_ls(params, options)
    #   response.to_h #=>
    #   {
    #     web_ac_ls: [
    #       {
    #         name: "WebACLexample",
    #         web_acl_id: "webacl-1472061481310"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_web_ac_ls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     web_ac_ls: [
    #       {
    #         web_acl_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListWebACLsResponse]
    def list_web_ac_ls(params = {}, options = {})
      request = build_request(:list_web_ac_ls, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Returns an array of <a>XssMatchSet</a> objects.</p>
    # @param [Hash, Types::ListXssMatchSetsRequest] params
    # @option params [String] :next_marker
    #   <p>If you specify a value for <code>Limit</code> and you have more <a>XssMatchSet</a> objects than the value of 
    #   			<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in the response that allows you to list another group of 
    #   			<code>XssMatchSets</code>. For the second and subsequent <code>ListXssMatchSets</code> requests, specify the 
    #   			value of <code>NextMarker</code> from the previous response to get information about another batch of <code>XssMatchSets</code>.</p>
    # @option params [Integer] :limit
    #   <p>Specifies the number of <a>XssMatchSet</a> objects that you want AWS WAF to return for this request. If you have more 
    #   			<code>XssMatchSet</code> objects than the number you specify for <code>Limit</code>, the response includes a 
    #   			<code>NextMarker</code> value that you can use to get another batch of <code>Rules</code>.</p>
    # @example To list XSS match sets
    #   # The following example returns an array of up to 100 XSS match sets.
    #   params = {
    #     limit: 100
    #   }
    #   options = {}
    #   response = client.list_xss_match_sets(params, options)
    #   response.to_h #=>
    #   {
    #     xss_match_sets: [
    #       {
    #         name: "MySampleXssMatchSet",
    #         xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_marker: "NextMarker",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_xss_match_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_marker: "NextMarker",
    #     xss_match_sets: [
    #       {
    #         xss_match_set_id: "ResourceId", # required
    #         name: "ResourceName", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListXssMatchSetsResponse]
    def list_xss_match_sets(params = {}, options = {})
      request = build_request(:list_xss_match_sets, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Associates a <a>LoggingConfiguration</a> with a specified web ACL.</p>
    # 	        <p>You can access information about all traffic that AWS WAF inspects using the following
    #          steps:</p>
    # 	        <ol>
    #             <li>
    #                <p>Create an Amazon Kinesis Data
    #                Firehose. </p>
    # 	              <p>Create the data firehose with a PUT source and in the region that you are operating. However, if you are capturing logs for Amazon CloudFront, always create the firehose in US East (N. Virginia). </p>
    # 	              <note>
    #                   <p>Do not create the data firehose using a <code>Kinesis stream</code> as your source.</p>
    #                </note>
    #             </li>
    #             <li>
    #                <p>Associate that firehose to your web ACL using a <code>PutLoggingConfiguration</code> request.</p>
    #             </li>
    #          </ol>
    # 	  
    #          <p>When you successfully enable logging using a <code>PutLoggingConfiguration</code> request, AWS WAF will create a service linked role with the necessary permissions to write logs to the Amazon Kinesis Data Firehose.  For more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/logging.html">Logging Web ACL Traffic Information</a> in the <i>AWS WAF Developer Guide</i>.</p>
    # @param [Hash, Types::PutLoggingConfigurationRequest] params
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>The Amazon Kinesis Data Firehose that contains the inspected traffic
    #            information, the redacted fields details, and the Amazon Resource Name (ARN) of the web ACL
    #            to monitor.</p>
    #            <note>
    #               <p>When specifying <code>Type</code> in <code>RedactedFields</code>, you must use one of
    #               the following values: <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>,
    #               or <code>METHOD</code>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_configuration: { # required
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #           data: "MatchFieldData"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: {
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #           data: "MatchFieldData"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutLoggingConfigurationResponse]
    def put_logging_configuration(params = {}, options = {})
      request = build_request(:put_logging_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Attaches an IAM policy to the specified resource. The only supported use for this action is to share a RuleGroup across accounts.</p>
    #          <p>The <code>PutPermissionPolicy</code> is subject to the following restrictions:</p>
    #          <ul>
    #             <li>
    #                <p>You can attach only one policy with each <code>PutPermissionPolicy</code> request.</p>
    #             </li>
    #             <li>
    #                <p>The policy must include an <code>Effect</code>, <code>Action</code> and <code>Principal</code>. </p>
    #             </li>
    #             <li>
    #             
    #                <p>
    #                   <code>Effect</code> must specify <code>Allow</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Action</code> in the policy must be <code>waf:UpdateWebACL</code>, <code>waf-regional:UpdateWebACL</code>, <code>waf:GetRuleGroup</code> and <code>waf-regional:GetRuleGroup</code> . Any extra or wildcard actions in the policy will be rejected.</p>
    #             </li>
    #             <li>
    #                <p>The policy cannot include a <code>Resource</code> parameter.</p>
    #             </li>
    #             <li>
    #                <p>The ARN in the request must be a valid WAF RuleGroup ARN and the RuleGroup must exist in the same region.</p>
    #             </li>
    #             <li>
    #                <p>The user making the request must be the owner of the RuleGroup.</p>
    #             </li>
    #             <li> 
    #                <p>Your policy must be composed using IAM Policy version 2012-10-17.</p>
    #             </li>
    #          </ul>     
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM Policies</a>.  </p>  
    #          
    #          <p>An example of a valid policy parameter is shown in the Examples section below.</p>
    # @param [Hash, Types::PutPermissionPolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the RuleGroup to which you want to attach the policy.</p>
    # @option params [String] :policy
    #   <p>The policy to attach to the specified RuleGroup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   }
    #   options = {}
    #   response = client.put_permission_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutPermissionPolicyResponse]
    def put_permission_policy(params = {}, options = {})
      request = build_request(:put_permission_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #         <p>Associates tags with the specified AWS resource. Tags are key:value pairs that you can use to categorize and manage your resources, for purposes like billing. For example, you might set the tag key to "customer" and the value to the customer name or ID. You can specify one or more tags to add to each AWS resource, up to 50 tags for a resource.</p>
    #         <p>Tagging is only available through the API, SDKs, and CLI. You can't manage or view tags through the AWS WAF Classic console. You can use this action to tag the AWS resources that you manage through AWS WAF Classic: web ACLs, rule groups, and rules.  </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p></p>
    # @option params [Array<Types::Tag>] :tags
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p></p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p></p>
    # @option params [Array<String>] :tag_keys
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
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

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Inserts or deletes <a>ByteMatchTuple</a> objects (filters) in a <a>ByteMatchSet</a>. For each <code>ByteMatchTuple</code> object, 
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change a <code>ByteMatchSetUpdate</code> object, 
    # 				you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p>
    #             </li>
    #             <li>
    #                <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify  
    # 				the values for the AWS WAF API and the AWS CLI or SDKs, see <code>TargetString</code> in the <a>ByteMatchTuple</a> data type. </p>
    #             </li>
    #             <li>
    #                <p>Where to look, such as at the beginning or the end of a query string.</p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
    #             </li>
    #          </ul>
    # 		       <p>For example, you can add a <code>ByteMatchSetUpdate</code> object that matches web requests in which <code>User-Agent</code> headers contain 
    # 			the string <code>BadBot</code>. You can then configure AWS WAF to block those requests.</p>		
    # 		       <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>ByteMatchSet.</code> For more information, see <a>CreateByteMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<code>UpdateByteMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateByteMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect 
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateByteMatchSetRequest] params
    # @option params [String] :byte_match_set_id
    #   <p>The <code>ByteMatchSetId</code> of the <a>ByteMatchSet</a> that you want to update. <code>ByteMatchSetId</code> is returned by <a>CreateByteMatchSet</a> and by 
    #   			<a>ListByteMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::ByteMatchSetUpdate>] :updates
    #   <p>An array of <code>ByteMatchSetUpdate</code> objects that you want to insert into or delete from a <a>ByteMatchSet</a>. 
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>ByteMatchSetUpdate</a>: Contains <code>Action</code> and <code>ByteMatchTuple</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>ByteMatchTuple</a>: Contains <code>FieldToMatch</code>, <code>PositionalConstraint</code>, <code>TargetString</code>, 
    #   				and <code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To update a byte match set
    #   # The following example deletes a ByteMatchTuple object (filters) in an byte match set with the ID exampleIDs3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     byte_match_set_id: "exampleIDs3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         byte_match_tuple: {
    #           field_to_match: {
    #             data: "referer",
    #             type: HEADER
    #           },
    #           positional_constraint: CONTAINS,
    #           target_string: "badrefer1",
    #           text_transformation: NONE
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_byte_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     byte_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         byte_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           target_string: "data", # required
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           positional_constraint: "EXACTLY" # One of: ["EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_byte_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateByteMatchSetResponse]
    def update_byte_match_set(params = {}, options = {})
      request = build_request(:update_byte_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Inserts or deletes <a>GeoMatchConstraint</a> objects in an <code>GeoMatchSet</code>. For each <code>GeoMatchConstraint</code> object, 
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                       <p>Whether to insert or delete the object from the array. If you want to change an <code>GeoMatchConstraint</code> object, you delete the existing object and add a new one.</p>
    #                   </li>
    #             <li>
    # 				           <p>The <code>Type</code>. The only valid value for <code>Type</code> is <code>Country</code>.</p>
    # 				        </li>
    #             <li>
    #                <p>The <code>Value</code>, which is a two character code for the country to add to the <code>GeoMatchConstraint</code> object. Valid codes are listed in <a>GeoMatchConstraint$Value</a>.</p>
    #             </li>
    #          </ul>
    # 		    	
    # 		       <p>To create and configure an <code>GeoMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a <a>CreateGeoMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateGeoMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateGeoMatchSet</code> request to specify the country that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>When you update an <code>GeoMatchSet</code>, you specify the country that you want to add and/or the country that you want to delete. 
    # 			If you want to change a country, you delete the existing country and add the new one.</p>		
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateGeoMatchSetRequest] params
    # @option params [String] :geo_match_set_id
    #   <p>The <code>GeoMatchSetId</code> of the <a>GeoMatchSet</a> that you want to update. <code>GeoMatchSetId</code> is returned by <a>CreateGeoMatchSet</a> and by 
    #   			<a>ListGeoMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::GeoMatchSetUpdate>] :updates
    #   <p>An array of <code>GeoMatchSetUpdate</code> objects that you want to insert into or delete from an <a>GeoMatchSet</a>.
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>GeoMatchSetUpdate</a>: Contains <code>Action</code> and <code>GeoMatchConstraint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>GeoMatchConstraint</a>: Contains <code>Type</code> and <code>Value</code>
    #                  </p>
    #   			            <p>You can have only one <code>Type</code> and <code>Value</code> per <code>GeoMatchConstraint</code>. To add multiple countries, include multiple <code>GeoMatchSetUpdate</code> objects in your request.</p>      
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     geo_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         geo_match_constraint: { # required
    #           type: "Country" # One of: ["Country"], # required
    #           value: "AF" # One of: ["AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_geo_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateGeoMatchSetResponse]
    def update_geo_match_set(params = {}, options = {})
      request = build_request(:update_geo_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Inserts or deletes <a>IPSetDescriptor</a> objects in an
    #          <code>IPSet</code>. For each <code>IPSetDescriptor</code> object, you specify the following
    #          values: </p>
    #          <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change an
    #                   <code>IPSetDescriptor</code> object, you delete the existing object and add a new
    #                one.</p>
    #             </li>
    #             <li>
    #                <p>The IP address version, <code>IPv4</code> or <code>IPv6</code>. </p>
    #             </li>
    #             <li>
    #                <p>The IP address in CIDR notation, for example, <code>192.0.2.0/24</code> (for
    #                the range of IP addresses from <code>192.0.2.0</code> to <code>192.0.2.255</code>) or
    #                   <code>192.0.2.44/32</code> (for the individual IP address
    #                <code>192.0.2.44</code>). </p>
    #             </li>
    #          </ul>
    #          <p>AWS WAF supports IPv4 address ranges: /8 and any range between /16 through /32. AWS
    #          WAF supports IPv6 address ranges: /24, /32, /48, /56, /64, and /128. For more
    #          information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #             Inter-Domain Routing</a>.</p>
    #          <p>IPv6 addresses can be represented using any of the following formats:</p>
    #          <ul>
    #             <li>
    #                <p>1111:0000:0000:0000:0000:0000:0000:0111/128</p>
    #             </li>
    #             <li>
    #                <p>1111:0:0:0:0:0:0:0111/128</p>
    #             </li>
    #             <li>
    #                <p>1111::0111/128</p>
    #             </li>
    #             <li>
    #                <p>1111::111/128</p>
    #             </li>
    #          </ul>
    #          <p>You use an <code>IPSet</code> to specify which web requests you want to allow or
    #          block based on the IP addresses that the requests originated from. For example, if you're
    #          receiving a lot of requests from one or a small number of IP addresses and you want to
    #          block the requests, you can create an <code>IPSet</code> that specifies those IP addresses,
    #          and then configure AWS WAF to block the requests. </p>
    #          <p>To create and configure an <code>IPSet</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Submit a <a>CreateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide
    #                in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a>
    #                request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you
    #                want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    #          <p>When you update an <code>IPSet</code>, you specify the IP addresses that you want to
    #          add and/or the IP addresses that you want to delete. If you want to change an IP address,
    #          you delete the existing IP address and add the new one.</p>
    #          <p>You can insert a maximum of 1000 addresses in a single
    #          request.</p>
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP
    #          requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
    #             Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateIPSetRequest] params
    # @option params [String] :ip_set_id
    #   <p>The <code>IPSetId</code> of the <a>IPSet</a> that you want to update. <code>IPSetId</code> is returned by <a>CreateIPSet</a> and by 
    #   			<a>ListIPSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::IPSetUpdate>] :updates
    #   <p>An array of <code>IPSetUpdate</code> objects that you want to insert into or delete from an <a>IPSet</a>. 
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>IPSetUpdate</a>: Contains <code>Action</code> and <code>IPSetDescriptor</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>IPSetDescriptor</a>: Contains <code>Type</code> and <code>Value</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   	        <p>You can insert a maximum of 1000 addresses in a single request.</p>
    # @example To update an IP set
    #   # The following example deletes an IPSetDescriptor object in an IP match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     ip_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         ip_set_descriptor: {
    #           type: IPV4,
    #           value: "192.0.2.44/32"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_ip_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     ip_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         ip_set_descriptor: { # required
    #           type: "IPV4" # One of: ["IPV4", "IPV6"], # required
    #           value: "IPSetDescriptorValue", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_ip_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateIPSetResponse]
    def update_ip_set(params = {}, options = {})
      request = build_request(:update_ip_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Inserts or deletes <a>Predicate</a> objects in a rule and updates the
    #             <code>RateLimit</code> in the rule. </p>
    #          <p>Each <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests
    #          that you want to block or count. The <code>RateLimit</code> specifies the number of
    #          requests every five minutes that triggers the rule.</p>
    #          <p>If you add more than one predicate to a <code>RateBasedRule</code>, a request must
    #          match all the predicates and exceed the <code>RateLimit</code> to be counted or blocked.
    #          For example, suppose you add the following to a <code>RateBasedRule</code>:</p>
    #          <ul>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the
    #                   <code>User-Agent</code> header</p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a
    #             <code>RateLimit</code> of 1,000.</p>
    #          <p>You then add the <code>RateBasedRule</code> to a <code>WebACL</code> and specify that
    #          you want to block requests that satisfy the rule. For a request to be blocked, it must come
    #          from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header
    #          in the request must contain the value <code>BadBot</code>. Further, requests that match
    #          these two conditions much be received at a rate of more than 1,000 every five minutes. If
    #          the rate drops below this limit, AWS WAF no longer blocks the requests.</p>
    # 		 
    # 		       <p>As a second example, suppose you want to limit requests to a particular page on your site. To do this, you could add the following to a
    #             <code>RateBasedRule</code>:</p>
    # 			
    # 			 
    #          <ul>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> with <code>FieldToMatch</code> of <code>URI</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>PositionalConstraint</code> of <code>STARTS_WITH</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>A <code>TargetString</code> of <code>login</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Further, you specify a <code>RateLimit</code> of 1,000.</p>
    #          <p>By adding this <code>RateBasedRule</code> to a <code>WebACL</code>, you could limit requests to your login page without affecting the rest of your site.</p>
    # @param [Hash, Types::UpdateRateBasedRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <code>RateBasedRule</code> that you want to update.
    #               <code>RuleId</code> is returned by <code>CreateRateBasedRule</code> and by <a>ListRateBasedRules</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::RuleUpdate>] :updates
    #   <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete
    #            from a <a>RateBasedRule</a>. </p>
    # @option params [Integer] :rate_limit
    #   <p>The maximum number of requests, which have an identical value in the field specified by the <code>RateKey</code>, allowed in a
    #            five-minute period. If the number of requests exceeds the <code>RateLimit</code> and the other
    #            predicates specified in the rule are also met,
    #            AWS WAF triggers the action that is specified for this rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         predicate: { # required
    #           negated: false, # required
    #           type: "IPMatch" # One of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"], # required
    #           data_id: "ResourceId", # required
    #         }
    #       }
    #     ],
    #     rate_limit: 1, # required
    #   }
    #   options = {}
    #   response = client.update_rate_based_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateRateBasedRuleResponse]
    def update_rate_based_rule(params = {}, options = {})
      request = build_request(:update_rate_based_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Inserts or deletes <a>RegexMatchTuple</a> objects (filters) in a <a>RegexMatchSet</a>. For each <code>RegexMatchSetUpdate</code> object, 
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change a <code>RegexMatchSetUpdate</code> object, 
    # 				you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to inspectupdate, such as a query string or the value of the <code>User-Agent</code> header. </p>
    #             </li>
    #             <li>
    #                <p>The identifier of the pattern (a regular expression) that you want AWS WAF to look for. For more information, see <a>RegexPatternSet</a>. </p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p>
    #             </li>
    #          </ul>
    # 		       <p> For example, you can create a <code>RegexPatternSet</code> that matches any requests with <code>User-Agent</code> headers 
    #          that contain the string <code>B[a@]dB[o0]t</code>. You can then configure AWS WAF to reject those requests.</p>		
    # 		       <p>To create and configure a <code>RegexMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>RegexMatchSet.</code> For more information, see <a>CreateRegexMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<code>UpdateRegexMatchSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRegexMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect 
    # 				(for example, the header or the URI) and the identifier of the <code>RegexPatternSet</code> that contain the regular expression patters you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateRegexMatchSetRequest] params
    # @option params [String] :regex_match_set_id
    #   <p>The <code>RegexMatchSetId</code> of the <a>RegexMatchSet</a> that you want to update. <code>RegexMatchSetId</code> is returned by <a>CreateRegexMatchSet</a> and by 
    #   			<a>ListRegexMatchSets</a>.</p>
    # @option params [Array<Types::RegexMatchSetUpdate>] :updates
    #   <p>An array of <code>RegexMatchSetUpdate</code> objects that you want to insert into or delete from a <a>RegexMatchSet</a>. 
    #   			For more information, see <a>RegexMatchTuple</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regex_match_set_id: "ResourceId", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         regex_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           regex_pattern_set_id: "ResourceId", # required
    #         }
    #       }
    #     ],
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.update_regex_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateRegexMatchSetResponse]
    def update_regex_match_set(params = {}, options = {})
      request = build_request(:update_regex_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Inserts or deletes <code>RegexPatternString</code> objects in a <a>RegexPatternSet</a>. For each <code>RegexPatternString</code> object, 
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    # 			            <p>Whether to insert or delete the <code>RegexPatternString</code>.</p>
    #             </li>
    #             <li>
    #                <p>The regular expression pattern that you want to insert or delete. For more information, see <a>RegexPatternSet</a>. </p>
    #             </li>
    #          </ul>
    # 		       <p> For example, you can create a <code>RegexPatternString</code> such as <code>B[a@]dB[o0]t</code>. AWS WAF will match this <code>RegexPatternString</code> to:</p>
    #                 <ul>
    #             <li>
    # 				           <p>BadBot</p>
    # 				        </li>
    #             <li>
    # 				           <p>BadB0t</p>
    # 				        </li>
    #             <li>
    # 				           <p>B@dBot</p>
    # 				        </li>
    #             <li>
    # 				           <p>B@dB0t</p>
    # 				        </li>
    #          </ul>
    # 		       <p>To create and configure a <code>RegexPatternSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>RegexPatternSet.</code> For more information, see <a>CreateRegexPatternSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<code>UpdateRegexPatternSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRegexPatternSet</code> request to specify the regular expression pattern that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateRegexPatternSetRequest] params
    # @option params [String] :regex_pattern_set_id
    #   <p>The <code>RegexPatternSetId</code> of the <a>RegexPatternSet</a> that you want to update. <code>RegexPatternSetId</code> is returned by <a>CreateRegexPatternSet</a> and by 
    #   			<a>ListRegexPatternSets</a>.</p>
    # @option params [Array<Types::RegexPatternSetUpdate>] :updates
    #   <p>An array of <code>RegexPatternSetUpdate</code> objects that you want to insert into or delete from a <a>RegexPatternSet</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     regex_pattern_set_id: "ResourceId", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         regex_pattern_string: "RegexPatternString", # required
    #       }
    #     ],
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.update_regex_pattern_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateRegexPatternSetResponse]
    def update_regex_pattern_set(params = {}, options = {})
      request = build_request(:update_regex_pattern_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Inserts or deletes <a>Predicate</a> objects in a <code>Rule</code>. Each
    #             <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests
    #          that you want to allow, block, or count. If you add more than one predicate to a
    #             <code>Rule</code>, a request must match all of the specifications to be allowed,
    #          blocked, or counted. For example, suppose
    #          that
    #          you add the following to a <code>Rule</code>: </p>		
    # 		       <ul>
    #             <li>
    #                <p>A <code>ByteMatchSet</code> that matches the value <code>BadBot</code> in the <code>User-Agent</code> header</p>
    #             </li>
    #             <li>
    #                <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44</code>
    #                </p>
    #             </li>
    #          </ul>		
    # 		       <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to block requests that satisfy the <code>Rule</code>. 
    # 			For a request to be blocked, the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code> 
    # 			         <i>and</i> the request must originate from the IP address 192.0.2.44.</p>		
    # 		       <p>To create and configure a <code>Rule</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create the <code>Rule</code>. See <a>CreateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateRule</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRule</code> request to add predicates to the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. See <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    # 		       <p>If you want to replace one <code>ByteMatchSet</code> or <code>IPSet</code> with another, you delete the existing one and 
    # 			add the new one.</p>		
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The <code>RuleId</code> of the <code>Rule</code> that you want to update. <code>RuleId</code> is returned by 
    #   			<code>CreateRule</code> and by <a>ListRules</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::RuleUpdate>] :updates
    #   <p>An array of <code>RuleUpdate</code> objects that you want to insert into or delete from a 
    #   			<a>Rule</a>. For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>RuleUpdate</a>: Contains <code>Action</code> and <code>Predicate</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>Predicate</a>: Contains <code>DataId</code>, <code>Negated</code>, and <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To update a rule
    #   # The following example deletes a Predicate object in a rule with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     rule_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         predicate: {
    #           data_id: "MyByteMatchSetID",
    #           negated: false,
    #           type: ByteMatch
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         predicate: { # required
    #           negated: false, # required
    #           type: "IPMatch" # One of: ["IPMatch", "ByteMatch", "SqlInjectionMatch", "GeoMatch", "SizeConstraint", "XssMatch", "RegexMatch"], # required
    #           data_id: "ResourceId", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateRuleResponse]
    def update_rule(params = {}, options = {})
      request = build_request(:update_rule, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    #          <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>RuleGroup</code>.</p>
    # 	        <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
    #          <p>You can have a maximum of ten rules per rule group.</p>
    # 	  	  
    #      	
    #          <p>To create and configure a <code>RuleGroup</code>, perform the following steps:</p>
    #          <ol>
    #             <li>
    #                <p>Create and update the <code>Rules</code> that you want to include in the <code>RuleGroup</code>. See <a>CreateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    #                <a>UpdateRuleGroup</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateRuleGroup</code> request to add <code>Rules</code> to the <code>RuleGroup</code>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update a <code>WebACL</code> that contains the <code>RuleGroup</code>. See <a>CreateWebACL</a>.</p>
    #             </li>
    #          </ol>
    #          <p>If you want to replace one <code>Rule</code> with another, you delete the existing one and 
    #          add the new one.</p>		
    #          <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    #          <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateRuleGroupRequest] params
    # @option params [String] :rule_group_id
    #   <p>The <code>RuleGroupId</code> of the <a>RuleGroup</a> that you want to update. <code>RuleGroupId</code> is returned by <a>CreateRuleGroup</a> and by 
    #            <a>ListRuleGroups</a>.</p>
    # @option params [Array<Types::RuleGroupUpdate>] :updates
    #   <p>An array of <code>RuleGroupUpdate</code> objects that you want to insert into or delete from a 
    #            <a>RuleGroup</a>.</p>
    #   		       <p>You can only insert <code>REGULAR</code> rules into a rule group.</p>
    #   		       <p>
    #               <code>ActivatedRule|OverrideAction</code> applies only when updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this case you do not use <code>ActivatedRule|Action</code>.  For all other update requests, <code>ActivatedRule|Action</code> is used instead of <code>ActivatedRule|OverrideAction</code>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_group_id: "ResourceId", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         activated_rule: { # required
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #           },
    #           override_action: {
    #             type: "NONE" # One of: ["NONE", "COUNT"], # required
    #           },
    #           type: "REGULAR" # One of: ["REGULAR", "RATE_BASED", "GROUP"],
    #           excluded_rules: [
    #             {
    #               rule_id: "ResourceId", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     change_token: "ChangeToken", # required
    #   }
    #   options = {}
    #   response = client.update_rule_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateRuleGroupResponse]
    def update_rule_group(params = {}, options = {})
      request = build_request(:update_rule_group, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Inserts or deletes <a>SizeConstraint</a> objects (filters) in a <a>SizeConstraintSet</a>. For each <code>SizeConstraint</code> object, 
    # 			you specify the following values: </p>
    # 		       <ul>
    #             <li>
    #                <p>Whether to insert or delete the object from the array. If you want to change a <code>SizeConstraintSetUpdate</code> object, 
    # 				you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the 
    # 				<code>User-Agent</code> header.</p>
    #             </li>
    #             <li>
    #                <p>Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length. 
    # 				Note that transformations of the request body are not supported because the AWS resource forwards only the first <code>8192</code> bytes 
    # 				of your request to AWS WAF.</p>
    # 				           <p>You can only specify a single type of TextTransformation.</p>
    #             </li>
    #             <li>
    #                <p>A <code>ComparisonOperator</code> used for evaluating the selected part of the request against the specified <code>Size</code>, such as  
    # 				equals, greater than, less than, and so on.</p>
    #             </li>
    #             <li>
    #                <p>The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.</p>
    #             </li>
    #          </ul>
    # 		       <p>For example, you can add a <code>SizeConstraintSetUpdate</code> object that matches web requests in which the length of the 
    # 			<code>User-Agent</code> header is greater than 100 bytes. You can then configure AWS WAF to block those requests.</p>
    # 		  	    <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create a <code>SizeConstraintSet.</code> For more information, see <a>CreateSizeConstraintSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<code>UpdateSizeConstraintSet</code> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateSizeConstraintSet</code> request to specify the part of the request that you want AWS WAF to inspect 
    # 				(for example, the header or the URI) and the value that you want AWS WAF to watch for.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateSizeConstraintSetRequest] params
    # @option params [String] :size_constraint_set_id
    #   <p>The <code>SizeConstraintSetId</code> of the <a>SizeConstraintSet</a> that you want to update. <code>SizeConstraintSetId</code> 
    #   			is returned by <a>CreateSizeConstraintSet</a> and by <a>ListSizeConstraintSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::SizeConstraintSetUpdate>] :updates
    #   <p>An array of <code>SizeConstraintSetUpdate</code> objects that you want to insert into or delete from a <a>SizeConstraintSet</a>. 
    #   			For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>SizeConstraintSetUpdate</a>: Contains <code>Action</code> and <code>SizeConstraint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>SizeConstraint</a>: Contains <code>FieldToMatch</code>, <code>TextTransformation</code>, <code>ComparisonOperator</code>, 
    #   				and <code>Size</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To update a size constraint set
    #   # The following example deletes a SizeConstraint object (filters) in a size constraint set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     size_constraint_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         size_constraint: {
    #           comparison_operator: GT,
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           size: 0,
    #           text_transformation: NONE
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_size_constraint_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     size_constraint_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         size_constraint: { # required
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #           comparison_operator: "EQ" # One of: ["EQ", "NE", "LE", "LT", "GE", "GT"], # required
    #           size: 1, # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_size_constraint_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateSizeConstraintSetResponse]
    def update_size_constraint_set(params = {}, options = {})
      request = build_request(:update_size_constraint_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Inserts or deletes <a>SqlInjectionMatchTuple</a> objects (filters) in a <a>SqlInjectionMatchSet</a>. 
    # 			For each <code>SqlInjectionMatchTuple</code> object, you specify the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <code>Action</code>: Whether to insert the object into or delete the object from the array. To change a 
    # 				<code>SqlInjectionMatchTuple</code>, you delete the existing object and add a new one.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter, 
    # 				the name of the header or parameter.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before 
    # 				inspecting the request for snippets of malicious SQL code.</p>
    # 				           <p>You can only specify a single type of  TextTransformation.</p>
    #             </li>
    #          </ul>
    # 		       <p>You use <code>SqlInjectionMatchSet</code> objects to specify which CloudFront
    #          requests that
    #          you want to allow, block, or count. For example, if you're receiving
    #          requests that contain snippets of SQL code in the query string and you want to block the
    #          requests, you can create a <code>SqlInjectionMatchSet</code> with the applicable settings,
    #          and then configure AWS WAF to block the requests. </p>
    # 		       <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a <a>CreateSqlInjectionMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateSqlInjectionMatchSet</code> request to specify the parts of web requests that you want AWS WAF to 
    # 				inspect for snippets of SQL code.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateSqlInjectionMatchSetRequest] params
    # @option params [String] :sql_injection_match_set_id
    #   <p>The <code>SqlInjectionMatchSetId</code> of the <code>SqlInjectionMatchSet</code> that you want to update. 
    #   			<code>SqlInjectionMatchSetId</code> is returned by <a>CreateSqlInjectionMatchSet</a> and by <a>ListSqlInjectionMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::SqlInjectionMatchSetUpdate>] :updates
    #   <p>An array of <code>SqlInjectionMatchSetUpdate</code> objects that you want to insert into or delete from a 
    #   			<a>SqlInjectionMatchSet</a>. For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>SqlInjectionMatchSetUpdate</a>: Contains <code>Action</code> and <code>SqlInjectionMatchTuple</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>SqlInjectionMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To update a SQL injection match set
    #   # The following example deletes a SqlInjectionMatchTuple object (filters) in a SQL injection match set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     sql_injection_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         sql_injection_match_tuple: {
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           text_transformation: URL_DECODE
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_sql_injection_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     sql_injection_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         sql_injection_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_sql_injection_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateSqlInjectionMatchSetResponse]
    def update_sql_injection_match_set(params = {}, options = {})
      request = build_request(:update_sql_injection_match_set, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>WebACL</code>. Each <code>Rule</code> identifies 
    # 			web requests that you want to allow, block, or count. When you update a <code>WebACL</code>, you specify the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>A default action for the <code>WebACL</code>, either <code>ALLOW</code> or <code>BLOCK</code>. 
    # 				AWS WAF performs the default action if a request doesn't match the criteria in any of the <code>Rules</code> in a <code>WebACL</code>.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Rules</code> that you want to add
    #                or
    #                delete. If you want to replace one <code>Rule</code> with another, you delete the
    #                existing <code>Rule</code> and add the new one.</p>
    #             </li>
    #             <li>
    #                <p>For each <code>Rule</code>, whether you want AWS WAF to allow requests, block requests, or count requests that match 
    # 				the conditions in the <code>Rule</code>.</p>
    #             </li>
    #             <li>
    #                <p>The order in which you want AWS WAF to evaluate the <code>Rules</code> in a
    #                   <code>WebACL</code>. If you add more than one <code>Rule</code> to a
    #                   <code>WebACL</code>, AWS WAF evaluates each request against the <code>Rules</code>
    #                in order based on the value of <code>Priority</code>. (The <code>Rule</code> that has
    #                the lowest value for <code>Priority</code> is evaluated first.) When a web request
    #                matches all
    #                the
    #                predicates (such as <code>ByteMatchSets</code> and <code>IPSets</code>) in a
    #                   <code>Rule</code>, AWS WAF immediately takes the corresponding action, allow or
    #                block, and doesn't evaluate the request against the remaining <code>Rules</code> in
    #                the <code>WebACL</code>, if any. </p>
    #             </li>
    #          </ul>
    # 		
    # 		       <p>To create and configure a <code>WebACL</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Create and update the predicates that you want to include in <code>Rules</code>. 
    # 				For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>, 
    # 				<a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see 
    # 				<a>CreateRule</a> and <a>UpdateRule</a>.</p>
    #             </li>
    #             <li>
    #                <p>Create a <code>WebACL</code>. See <a>CreateWebACL</a>.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateWebACL</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateWebACL</code> request to specify the <code>Rules</code>
    #                that you want to include in the <code>WebACL</code>, to specify the default action,
    #                and to associate the <code>WebACL</code> with a CloudFront distribution. </p>
    #                <p>The <code>ActivatedRule</code> can be a rule group. If you specify a rule group
    #                as your
    #                <code>ActivatedRule</code>
    #                ,
    #                you can exclude specific rules from that rule group.</p>
    #                <p>If you already have a rule group associated with a web ACL and want to submit
    #                an <code>UpdateWebACL</code> request to exclude certain rules from that rule group,
    #                you must first remove the rule group from the web ACL, the re-insert it again,
    #                specifying the excluded rules.
    #                For details,
    #                see
    #                   <a>ActivatedRule$ExcludedRules</a>
    #                .
    #                </p>
    #             </li>
    #          </ol>
    #          <p>Be aware that if you try to add a RATE_BASED rule to a web ACL without setting the rule type when first creating the rule, the  <a>UpdateWebACL</a> request will fail because the request tries to add a REGULAR rule (the default rule type) with the specified ID, which does not exist. 		</p>			
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateWebACLRequest] params
    # @option params [String] :web_acl_id
    #   <p>The <code>WebACLId</code> of the <a>WebACL</a> that you want to update. <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by 
    #   			<a>ListWebACLs</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::WebACLUpdate>] :updates
    #   <p>An array of updates to make to the <a>WebACL</a>.</p>		
    #   		       <p>An array of <code>WebACLUpdate</code> objects that you want to insert into or delete from a 
    #   			<a>WebACL</a>. For more information, see the applicable data types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>WebACLUpdate</a>: Contains <code>Action</code> and <code>ActivatedRule</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>ActivatedRule</a>: Contains <code>Action</code>,
    #                     <code>OverrideAction</code>, <code>Priority</code>, <code>RuleId</code>, and
    #                     <code>Type</code>. <code>ActivatedRule|OverrideAction</code> applies only when
    #                  updating or adding a <code>RuleGroup</code> to a <code>WebACL</code>. In this
    #                  case,
    #                  you do not use <code>ActivatedRule|Action</code>. For all other update requests,
    #                     <code>ActivatedRule|Action</code> is used instead of
    #                     <code>ActivatedRule|OverrideAction</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>WafAction</a>: Contains <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::WafAction] :default_action
    #   <p>A default action for the web ACL, either ALLOW or BLOCK. AWS WAF performs the default
    #            action if a request doesn't match the criteria in any of the rules in a web ACL.</p>
    # @example To update a Web ACL
    #   # The following example deletes an ActivatedRule object in a WebACL with the ID webacl-1472061481310.
    #   params = {
    #     web_acl_id: "webacl-1472061481310",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         activated_rule: {
    #           action: {
    #             type: ALLOW
    #           },
    #           priority: 1,
    #           rule_id: "WAFRule-1-Example"
    #         }
    #       }
    #     ],
    #     default_action: {
    #       type: ALLOW
    #     }
    #   }
    #   options = {}
    #   response = client.update_web_acl(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     web_acl_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         activated_rule: { # required
    #           priority: 1, # required
    #           rule_id: "ResourceId", # required
    #           action: {
    #             type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #           },
    #           override_action: {
    #             type: "NONE" # One of: ["NONE", "COUNT"], # required
    #           },
    #           type: "REGULAR" # One of: ["REGULAR", "RATE_BASED", "GROUP"],
    #           excluded_rules: [
    #             {
    #               rule_id: "ResourceId", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     default_action: {
    #       type: "BLOCK" # One of: ["BLOCK", "ALLOW", "COUNT"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_web_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateWebACLResponse]
    def update_web_acl(params = {}, options = {})
      request = build_request(:update_web_acl, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This is <b>AWS WAF Classic</b> documentation. For
    #       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
    #       WAF Classic</a> in the developer guide.</p>
    #             <p>
    #                <b>For the latest version of AWS
    #       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
    #          </note> 
    # 		       <p>Inserts or deletes <a>XssMatchTuple</a> objects (filters) in an <a>XssMatchSet</a>. 
    # 			For each <code>XssMatchTuple</code> object, you specify the following values:</p>
    # 		       <ul>
    #             <li>
    #                <p>
    #                   <code>Action</code>: Whether to insert the object into or delete the object from the
    #                array. To change an
    #                <code>XssMatchTuple</code>, you delete the existing object and add a new
    #                one.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header or custom query parameter, 
    # 				the name of the header or parameter.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before 
    # 				inspecting the request for cross-site scripting attacks.</p>
    # 				           <p>You can only specify a single type of TextTransformation.</p>
    #             </li>
    #          </ul>
    # 		       <p>You use <code>XssMatchSet</code> objects to specify which CloudFront requests
    #          that
    #          you want to allow, block, or count. For example, if you're receiving
    #          requests that contain cross-site scripting attacks in the request body and you want to
    #          block the requests, you can create an <code>XssMatchSet</code> with the applicable
    #          settings, and then configure AWS WAF to block the requests. </p>		
    # 		       <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p>
    # 		       <ol>
    #             <li>
    #                <p>Submit a <a>CreateXssMatchSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an 
    # 				<a>UpdateIPSet</a> request.</p>
    #             </li>
    #             <li>
    #                <p>Submit an <code>UpdateXssMatchSet</code> request to specify the parts of web requests that you want AWS WAF to 
    # 				inspect for cross-site scripting attacks.</p>
    #             </li>
    #          </ol>
    # 		       <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the 
    # 			<a href="https://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>
    # @param [Hash, Types::UpdateXssMatchSetRequest] params
    # @option params [String] :xss_match_set_id
    #   <p>The <code>XssMatchSetId</code> of the <code>XssMatchSet</code> that you want to update. 
    #   			<code>XssMatchSetId</code> is returned by <a>CreateXssMatchSet</a> and by <a>ListXssMatchSets</a>.</p>
    # @option params [String] :change_token
    #   <p>The value returned by the most recent call to <a>GetChangeToken</a>.</p>
    # @option params [Array<Types::XssMatchSetUpdate>] :updates
    #   <p>An array of <code>XssMatchSetUpdate</code> objects that you want to insert into or
    #            delete from an
    #            <a>XssMatchSet</a>. For more information, see the applicable data
    #            types:</p>
    #   		       <ul>
    #               <li>
    #                  <p>
    #                     <a>XssMatchSetUpdate</a>: Contains <code>Action</code> and <code>XssMatchTuple</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>XssMatchTuple</a>: Contains <code>FieldToMatch</code> and <code>TextTransformation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a>FieldToMatch</a>: Contains <code>Data</code> and <code>Type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example To update an XSS match set
    #   # The following example deletes an XssMatchTuple object (filters) in an XssMatchSet with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    #   params = {
    #     xss_match_set_id: "example1ds3t-46da-4fdb-b8d5-abc321j569j5",
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
    #     updates: [
    #       {
    #         action: DELETE,
    #         xss_match_tuple: {
    #           field_to_match: {
    #             type: QUERY_STRING
    #           },
    #           text_transformation: URL_DECODE
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_xss_match_set(params, options)
    #   response.to_h #=>
    #   {
    #     change_token: "abcd12f2-46da-4fdb-b8d5-fbd4c466928f"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     xss_match_set_id: "ResourceId", # required
    #     change_token: "ChangeToken", # required
    #     updates: [ # required
    #       {
    #         action: "INSERT" # One of: ["INSERT", "DELETE"], # required
    #         xss_match_tuple: { # required
    #           field_to_match: { # required
    #             type: "URI" # One of: ["URI", "QUERY_STRING", "HEADER", "METHOD", "BODY", "SINGLE_QUERY_ARG", "ALL_QUERY_ARGS"], # required
    #             data: "MatchFieldData"
    #           },
    #           text_transformation: "NONE" # One of: ["NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_xss_match_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_token: "ChangeToken"
    #   }
    # @return [Types::UpdateXssMatchSetResponse]
    def update_xss_match_set(params = {}, options = {})
      request = build_request(:update_xss_match_set, params)
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
      context[:gem_name] = 'aws-sdk-waf'
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
