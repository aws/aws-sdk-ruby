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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::GeoPlaces
  # An API client for Aws::GeoPlaces.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PlacesService

    add_plugin(::Aws::GeoPlaces::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GeoPlaces::EndpointProvider)
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

    # <p> <code>Autocomplete</code> completes potential places and addresses as the user types, based on the partial input. The API enhances the efficiency and accuracy of address by completing query based on a few entered keystrokes. It helps you by completing partial queries with valid address completion. Also, the API supports the filtering of results based on geographic location, country, or specific place types, and can be tailored using optional parameters like language and political views.</p>
    # @param [Hash, Types::AutocompleteRequest] params
    # @option params [String] :query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of results returned in a single call. </p>
    # @option params [Array<Float>] :bias_position
    #   <p>The position in longitude and latitude that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WSG84 format.</p> <note> <p>The fields <code>BiasPosition</code>, <code>FilterBoundingBox</code>, and <code>FilterCircle</code> are mutually exclusive.</p> </note>
    # @option params [Types::AutocompleteFilter] :filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @option params [String] :postal_code_mode
    #   <p>The <code>PostalCodeMode</code> affects how postal code results are returned. If a postal code spans multiple localities and this value is empty, partial district or locality information may be returned under a single postal code result entry. If it's populated with the value <code>EnumerateSpannedLocalities</code>, all cities in that postal code are returned.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p> <p>The following political views are currently supported:</p> <ul> <li> <p> <code>ARG</code>: Argentina's view on the Southern Patagonian Ice Field and Tierra Del Fuego, including the Falkland Islands, South Georgia, and South Sandwich Islands</p> </li> <li> <p> <code>EGY</code>: Egypt's view on Bir Tawil</p> </li> <li> <p> <code>IND</code>: India's view on Gilgit-Baltistan</p> </li> <li> <p> <code>KEN</code>: Kenya's view on the Ilemi Triangle</p> </li> <li> <p> <code>MAR</code>: Morocco's view on Western Sahara</p> </li> <li> <p> <code>RUS</code>: Russia's view on Crimea</p> </li> <li> <p> <code>SDN</code>: Sudan's view on the Halaib Triangle</p> </li> <li> <p> <code>SRB</code>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands</p> </li> <li> <p> <code>SUR</code>: Suriname's view on the Courantyne Headwaters and Lawa Headwaters</p> </li> <li> <p> <code>SYR</code>: Syria's view on the Golan Heights</p> </li> <li> <p> <code>TUR</code>: Turkey's view on Cyprus and Northern Cyprus</p> </li> <li> <p> <code>TZA</code>: Tanzania's view on Lake Malawi</p> </li> <li> <p> <code>URY</code>: Uruguay's view on Rincon de Artigas</p> </li> <li> <p> <code>VNM</code>: Vietnam's view on the Paracel Islands and Spratly Islands</p> </li> </ul>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_text: "SensitiveString", # required
    #     max_results: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       bounding_box: [1.0],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1, # required
    #       },
    #       include_countries: ["CountryCode"],
    #       include_place_types: ["AutocompleteFilterPlaceType"]
    #     },
    #     postal_code_mode: "PostalCodeMode",
    #     additional_features: ["AutocompleteAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "AutocompleteIntendedUse",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.autocomplete(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_bucket: "String", # required
    #     result_items: [
    #       {
    #         place_id: "SensitiveString", # required
    #         place_type: "PlaceType", # required
    #         title: "SensitiveString", # required
    #         address: {
    #           label: "SensitiveString",
    #           country: {
    #             code2: "CountryCode2",
    #             code3: "CountryCode3",
    #             name: "SensitiveString"
    #           },
    #           region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           sub_region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           locality: "SensitiveString",
    #           district: "SensitiveString",
    #           sub_district: "SensitiveString",
    #           postal_code: "SensitiveString",
    #           block: "SensitiveString",
    #           sub_block: "SensitiveString",
    #           intersection: ["IntersectionStreet"],
    #           street: "SensitiveString",
    #           street_components: [
    #             {
    #               base_name: "SensitiveString",
    #               type: "SensitiveString",
    #               type_placement: "TypePlacement",
    #               type_separator: "TypeSeparator",
    #               prefix: "SensitiveString",
    #               suffix: "SensitiveString",
    #               direction: "SensitiveString",
    #               language: "LanguageTag"
    #             }
    #           ],
    #           address_number: "SensitiveString",
    #           building: "SensitiveString",
    #           secondary_address_components: [
    #             {
    #               number: "SensitiveString", # required
    #             }
    #           ]
    #         },
    #         distance: 1,
    #         language: "LanguageTag",
    #         political_view: "CountryCode3",
    #         highlights: {
    #           title: [
    #             {
    #               start_index: 1,
    #               end_index: 1,
    #               value: "SensitiveString"
    #             }
    #           ],
    #           address: {
    #             label: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             country: {
    #               code: [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ],
    #               name: [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ]
    #             },
    #             region: {
    #               code: [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ],
    #               name: [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ]
    #             },
    #             sub_region: {
    #               code: [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ],
    #               name: [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ]
    #             },
    #             locality: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             district: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             sub_district: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             street: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             block: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             sub_block: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             intersection: [
    #               [
    #                 {
    #                   start_index: 1,
    #                   end_index: 1,
    #                   value: "SensitiveString"
    #                 }
    #               ]
    #             ],
    #             postal_code: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             address_number: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ],
    #             building: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AutocompleteResponse]
    def autocomplete(params = {}, options = {})
      request = build_request(:autocomplete, params)
      request.send_request(options)
    end

    # <p> <code>Geocode</code> converts a textual address or place into geographic coordinates. You can obtain geographic coordinates, address component, and other related information. It supports flexible queries, including free-form text or structured queries with components like street names, postal codes, and regions. The Geocode API can also provide additional features such as time zone information and the inclusion of political views.</p>
    # @param [Hash, Types::GeocodeRequest] params
    # @option params [String] :query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    # @option params [Types::GeocodeQueryComponents] :query_components
    #   <p>A structured free text query allows you to search for places by the name or text representation of specific properties of the place. </p>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of results returned in a single call.</p>
    # @option params [Array<Float>] :bias_position
    #   <p>The position, in longitude and latitude, that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WSG84 format.</p> <note> <p>The fields <code>BiasPosition</code>, <code>FilterBoundingBox</code>, and <code>FilterCircle</code> are mutually exclusive.</p> </note>
    # @option params [Types::GeocodeFilter] :filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p> <note> <p>Storing the response of an Geocode query is required to comply with service terms, but charged at a higher cost per request. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_text: "SensitiveString",
    #     query_components: {
    #       country: "SensitiveString",
    #       region: "SensitiveString",
    #       sub_region: "SensitiveString",
    #       locality: "SensitiveString",
    #       district: "SensitiveString",
    #       street: "SensitiveString",
    #       address_number: "SensitiveString",
    #       postal_code: "SensitiveString"
    #     },
    #     max_results: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       include_countries: ["CountryCode"],
    #       include_place_types: ["GeocodeFilterPlaceType"]
    #     },
    #     additional_features: ["GeocodeAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "GeocodeIntendedUse",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.geocode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_bucket: "String", # required
    #     result_items: [
    #       {
    #         place_id: "SensitiveString", # required
    #         place_type: "PlaceType", # required
    #         title: "SensitiveString", # required
    #         address: {
    #           label: "SensitiveString",
    #           country: {
    #             code2: "CountryCode2",
    #             code3: "CountryCode3",
    #             name: "SensitiveString"
    #           },
    #           region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           sub_region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           locality: "SensitiveString",
    #           district: "SensitiveString",
    #           sub_district: "SensitiveString",
    #           postal_code: "SensitiveString",
    #           block: "SensitiveString",
    #           sub_block: "SensitiveString",
    #           intersection: ["IntersectionStreet"],
    #           street: "SensitiveString",
    #           street_components: [
    #             {
    #               base_name: "SensitiveString",
    #               type: "SensitiveString",
    #               type_placement: "TypePlacement",
    #               type_separator: "TypeSeparator",
    #               prefix: "SensitiveString",
    #               suffix: "SensitiveString",
    #               direction: "SensitiveString",
    #               language: "LanguageTag"
    #             }
    #           ],
    #           address_number: "SensitiveString",
    #           building: "SensitiveString",
    #           secondary_address_components: [
    #             {
    #               number: "SensitiveString", # required
    #             }
    #           ]
    #         },
    #         address_number_corrected: false,
    #         postal_code_details: [
    #           {
    #             postal_code: "SensitiveString",
    #             postal_authority: "PostalAuthority",
    #             postal_code_type: "PostalCodeType",
    #             usps_zip: {
    #               zip_classification_code: "ZipClassificationCode"
    #             },
    #             usps_zip_plus4: {
    #               record_type_code: "RecordTypeCode"
    #             }
    #           }
    #         ],
    #         position: [1.0],
    #         distance: 1,
    #         map_view: [1.0],
    #         categories: [
    #           {
    #             id: "SensitiveString", # required
    #             name: "SensitiveString", # required
    #             localized_name: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         food_types: [
    #           {
    #             localized_name: "SensitiveString", # required
    #             id: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         access_points: [
    #           {
    #             position: [1.0]
    #           }
    #         ],
    #         time_zone: {
    #           name: "SensitiveString", # required
    #           offset: "SensitiveString",
    #           offset_seconds: 1
    #         },
    #         political_view: "CountryCode3",
    #         match_scores: {
    #           overall: 1.0,
    #           components: {
    #             title: 1.0,
    #             address: {
    #               country: 1.0,
    #               region: 1.0,
    #               sub_region: 1.0,
    #               locality: 1.0,
    #               district: 1.0,
    #               sub_district: 1.0,
    #               postal_code: 1.0,
    #               block: 1.0,
    #               sub_block: 1.0,
    #               intersection: [1.0],
    #               address_number: 1.0,
    #               building: 1.0,
    #               secondary_address_components: [
    #                 {
    #                   number: 1.0
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         parsed_query: {
    #           title: [
    #             {
    #               start_index: 1,
    #               end_index: 1,
    #               value: "SensitiveString",
    #               query_component: "SensitiveString"
    #             }
    #           ],
    #           address: {
    #             country: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             region: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             sub_region: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             locality: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             district: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             sub_district: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             postal_code: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             block: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             sub_block: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             street: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             address_number: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             building: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString",
    #                 query_component: "SensitiveString"
    #               }
    #             ],
    #             secondary_address_components: [
    #               {
    #                 start_index: 1, # required
    #                 end_index: 1, # required
    #                 value: "SensitiveString", # required
    #                 number: "SensitiveString", # required
    #                 designator: "SensitiveString", # required
    #               }
    #             ]
    #           }
    #         },
    #         intersections: [
    #           {
    #             place_id: "SensitiveString", # required
    #             title: "SensitiveString", # required
    #             address: {
    #               label: "SensitiveString",
    #               country: {
    #                 code2: "CountryCode2",
    #                 code3: "CountryCode3",
    #                 name: "SensitiveString"
    #               },
    #               region: {
    #                 code: "SensitiveString",
    #                 name: "SensitiveString"
    #               },
    #               sub_region: {
    #                 code: "SensitiveString",
    #                 name: "SensitiveString"
    #               },
    #               locality: "SensitiveString",
    #               district: "SensitiveString",
    #               sub_district: "SensitiveString",
    #               postal_code: "SensitiveString",
    #               block: "SensitiveString",
    #               sub_block: "SensitiveString",
    #               intersection: ["IntersectionStreet"],
    #               street: "SensitiveString",
    #               street_components: [
    #                 {
    #                   base_name: "SensitiveString",
    #                   type: "SensitiveString",
    #                   type_placement: "TypePlacement",
    #                   type_separator: "TypeSeparator",
    #                   prefix: "SensitiveString",
    #                   suffix: "SensitiveString",
    #                   direction: "SensitiveString",
    #                   language: "LanguageTag"
    #                 }
    #               ],
    #               address_number: "SensitiveString",
    #               building: "SensitiveString",
    #               secondary_address_components: [
    #                 {
    #                   number: "SensitiveString", # required
    #                 }
    #               ]
    #             },
    #             position: [1.0],
    #             distance: 1,
    #             route_distance: 1,
    #             map_view: [1.0],
    #             access_points: [
    #               {
    #                 position: [1.0]
    #               }
    #             ]
    #           }
    #         ],
    #         main_address: {
    #           place_id: "SensitiveString", # required
    #           place_type: "PlaceType", # required
    #           title: "SensitiveString", # required
    #           address: {
    #             label: "SensitiveString",
    #             country: {
    #               code2: "CountryCode2",
    #               code3: "CountryCode3",
    #               name: "SensitiveString"
    #             },
    #             region: {
    #               code: "SensitiveString",
    #               name: "SensitiveString"
    #             },
    #             sub_region: {
    #               code: "SensitiveString",
    #               name: "SensitiveString"
    #             },
    #             locality: "SensitiveString",
    #             district: "SensitiveString",
    #             sub_district: "SensitiveString",
    #             postal_code: "SensitiveString",
    #             block: "SensitiveString",
    #             sub_block: "SensitiveString",
    #             intersection: ["IntersectionStreet"],
    #             street: "SensitiveString",
    #             street_components: [
    #               {
    #                 base_name: "SensitiveString",
    #                 type: "SensitiveString",
    #                 type_placement: "TypePlacement",
    #                 type_separator: "TypeSeparator",
    #                 prefix: "SensitiveString",
    #                 suffix: "SensitiveString",
    #                 direction: "SensitiveString",
    #                 language: "LanguageTag"
    #               }
    #             ],
    #             address_number: "SensitiveString",
    #             building: "SensitiveString",
    #             secondary_address_components: [
    #               {
    #                 number: "SensitiveString", # required
    #               }
    #             ]
    #           },
    #           position: [1.0],
    #           access_points: [
    #             {
    #               position: [1.0]
    #             }
    #           ]
    #         },
    #         secondary_addresses: [
    #           {
    #             place_id: "SensitiveString", # required
    #             place_type: "PlaceType", # required
    #             title: "SensitiveString", # required
    #             address: {
    #               label: "SensitiveString",
    #               country: {
    #                 code2: "CountryCode2",
    #                 code3: "CountryCode3",
    #                 name: "SensitiveString"
    #               },
    #               region: {
    #                 code: "SensitiveString",
    #                 name: "SensitiveString"
    #               },
    #               sub_region: {
    #                 code: "SensitiveString",
    #                 name: "SensitiveString"
    #               },
    #               locality: "SensitiveString",
    #               district: "SensitiveString",
    #               sub_district: "SensitiveString",
    #               postal_code: "SensitiveString",
    #               block: "SensitiveString",
    #               sub_block: "SensitiveString",
    #               intersection: ["IntersectionStreet"],
    #               street: "SensitiveString",
    #               street_components: [
    #                 {
    #                   base_name: "SensitiveString",
    #                   type: "SensitiveString",
    #                   type_placement: "TypePlacement",
    #                   type_separator: "TypeSeparator",
    #                   prefix: "SensitiveString",
    #                   suffix: "SensitiveString",
    #                   direction: "SensitiveString",
    #                   language: "LanguageTag"
    #                 }
    #               ],
    #               address_number: "SensitiveString",
    #               building: "SensitiveString",
    #               secondary_address_components: [
    #                 {
    #                   number: "SensitiveString", # required
    #                 }
    #               ]
    #             },
    #             position: [1.0],
    #             access_points: [
    #               {
    #                 position: [1.0]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GeocodeResponse]
    def geocode(params = {}, options = {})
      request = build_request(:geocode, params)
      request.send_request(options)
    end

    # <p> <code>GetPlace</code> finds a place by its unique ID. A <code>PlaceId</code> is returned by other place operations.</p>
    # @param [Hash, Types::GetPlaceRequest] params
    # @option params [String] :place_id
    #   <p>The <code>PlaceId</code> of the place you wish to receive the information for.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters such as time zone that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p> <note> <p>Storing the response of an GetPlace query is required to comply with service terms, but charged at a higher cost per request. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     place_id: "SensitiveString", # required
    #     additional_features: ["GetPlaceAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "GetPlaceIntendedUse",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_place(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     place_id: "SensitiveString", # required
    #     place_type: "PlaceType", # required
    #     title: "SensitiveString", # required
    #     pricing_bucket: "String", # required
    #     address: {
    #       label: "SensitiveString",
    #       country: {
    #         code2: "CountryCode2",
    #         code3: "CountryCode3",
    #         name: "SensitiveString"
    #       },
    #       region: {
    #         code: "SensitiveString",
    #         name: "SensitiveString"
    #       },
    #       sub_region: {
    #         code: "SensitiveString",
    #         name: "SensitiveString"
    #       },
    #       locality: "SensitiveString",
    #       district: "SensitiveString",
    #       sub_district: "SensitiveString",
    #       postal_code: "SensitiveString",
    #       block: "SensitiveString",
    #       sub_block: "SensitiveString",
    #       intersection: ["IntersectionStreet"],
    #       street: "SensitiveString",
    #       street_components: [
    #         {
    #           base_name: "SensitiveString",
    #           type: "SensitiveString",
    #           type_placement: "TypePlacement",
    #           type_separator: "TypeSeparator",
    #           prefix: "SensitiveString",
    #           suffix: "SensitiveString",
    #           direction: "SensitiveString",
    #           language: "LanguageTag"
    #         }
    #       ],
    #       address_number: "SensitiveString",
    #       building: "SensitiveString",
    #       secondary_address_components: [
    #         {
    #           number: "SensitiveString", # required
    #         }
    #       ]
    #     },
    #     address_number_corrected: false,
    #     postal_code_details: [
    #       {
    #         postal_code: "SensitiveString",
    #         postal_authority: "PostalAuthority",
    #         postal_code_type: "PostalCodeType",
    #         usps_zip: {
    #           zip_classification_code: "ZipClassificationCode"
    #         },
    #         usps_zip_plus4: {
    #           record_type_code: "RecordTypeCode"
    #         }
    #       }
    #     ],
    #     position: [1.0],
    #     map_view: [1.0],
    #     categories: [
    #       {
    #         id: "SensitiveString", # required
    #         name: "SensitiveString", # required
    #         localized_name: "SensitiveString",
    #         primary: false
    #       }
    #     ],
    #     food_types: [
    #       {
    #         localized_name: "SensitiveString", # required
    #         id: "SensitiveString",
    #         primary: false
    #       }
    #     ],
    #     business_chains: [
    #       {
    #         name: "SensitiveString",
    #         id: "SensitiveString"
    #       }
    #     ],
    #     contacts: {
    #       phones: [
    #         {
    #           label: "SensitiveString",
    #           value: "SensitiveString",
    #           categories: [
    #             {
    #               id: "SensitiveString", # required
    #               name: "SensitiveString", # required
    #               localized_name: "SensitiveString",
    #               primary: false
    #             }
    #           ]
    #         }
    #       ],
    #       faxes: [
    #         {
    #           label: "SensitiveString",
    #           value: "SensitiveString",
    #           categories: [
    #             {
    #               id: "SensitiveString", # required
    #               name: "SensitiveString", # required
    #               localized_name: "SensitiveString",
    #               primary: false
    #             }
    #           ]
    #         }
    #       ],
    #       websites: [
    #         {
    #           label: "SensitiveString",
    #           value: "SensitiveString",
    #           categories: [
    #             {
    #               id: "SensitiveString", # required
    #               name: "SensitiveString", # required
    #               localized_name: "SensitiveString",
    #               primary: false
    #             }
    #           ]
    #         }
    #       ],
    #       emails: [
    #         {
    #           label: "SensitiveString",
    #           value: "SensitiveString",
    #           categories: [
    #             {
    #               id: "SensitiveString", # required
    #               name: "SensitiveString", # required
    #               localized_name: "SensitiveString",
    #               primary: false
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     opening_hours: [
    #       {
    #         display: ["OpeningHoursDisplay"],
    #         open_now: false,
    #         components: [
    #           {
    #             open_time: "SensitiveString",
    #             open_duration: "SensitiveString",
    #             recurrence: "SensitiveString"
    #           }
    #         ],
    #         categories: [
    #           {
    #             id: "SensitiveString", # required
    #             name: "SensitiveString", # required
    #             localized_name: "SensitiveString",
    #             primary: false
    #           }
    #         ]
    #       }
    #     ],
    #     access_points: [
    #       {
    #         position: [1.0]
    #       }
    #     ],
    #     access_restrictions: [
    #       {
    #         restricted: false,
    #         categories: [
    #           {
    #             id: "SensitiveString", # required
    #             name: "SensitiveString", # required
    #             localized_name: "SensitiveString",
    #             primary: false
    #           }
    #         ]
    #       }
    #     ],
    #     time_zone: {
    #       name: "SensitiveString", # required
    #       offset: "SensitiveString",
    #       offset_seconds: 1
    #     },
    #     political_view: "CountryCode3",
    #     phonemes: {
    #       title: [
    #         {
    #           value: "SensitiveString",
    #           language: "LanguageTag",
    #           preferred: false
    #         }
    #       ],
    #       address: {
    #         country: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         region: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         sub_region: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         locality: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         district: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         sub_district: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         block: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         sub_block: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ],
    #         street: [
    #           {
    #             value: "SensitiveString",
    #             language: "LanguageTag",
    #             preferred: false
    #           }
    #         ]
    #       }
    #     },
    #     main_address: {
    #       place_id: "SensitiveString", # required
    #       place_type: "PlaceType", # required
    #       title: "SensitiveString", # required
    #       address: {
    #         label: "SensitiveString",
    #         country: {
    #           code2: "CountryCode2",
    #           code3: "CountryCode3",
    #           name: "SensitiveString"
    #         },
    #         region: {
    #           code: "SensitiveString",
    #           name: "SensitiveString"
    #         },
    #         sub_region: {
    #           code: "SensitiveString",
    #           name: "SensitiveString"
    #         },
    #         locality: "SensitiveString",
    #         district: "SensitiveString",
    #         sub_district: "SensitiveString",
    #         postal_code: "SensitiveString",
    #         block: "SensitiveString",
    #         sub_block: "SensitiveString",
    #         intersection: ["IntersectionStreet"],
    #         street: "SensitiveString",
    #         street_components: [
    #           {
    #             base_name: "SensitiveString",
    #             type: "SensitiveString",
    #             type_placement: "TypePlacement",
    #             type_separator: "TypeSeparator",
    #             prefix: "SensitiveString",
    #             suffix: "SensitiveString",
    #             direction: "SensitiveString",
    #             language: "LanguageTag"
    #           }
    #         ],
    #         address_number: "SensitiveString",
    #         building: "SensitiveString",
    #         secondary_address_components: [
    #           {
    #             number: "SensitiveString", # required
    #           }
    #         ]
    #       },
    #       position: [1.0],
    #       access_points: [
    #         {
    #           position: [1.0]
    #         }
    #       ]
    #     },
    #     secondary_addresses: [
    #       {
    #         place_id: "SensitiveString", # required
    #         place_type: "PlaceType", # required
    #         title: "SensitiveString", # required
    #         address: {
    #           label: "SensitiveString",
    #           country: {
    #             code2: "CountryCode2",
    #             code3: "CountryCode3",
    #             name: "SensitiveString"
    #           },
    #           region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           sub_region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           locality: "SensitiveString",
    #           district: "SensitiveString",
    #           sub_district: "SensitiveString",
    #           postal_code: "SensitiveString",
    #           block: "SensitiveString",
    #           sub_block: "SensitiveString",
    #           intersection: ["IntersectionStreet"],
    #           street: "SensitiveString",
    #           street_components: [
    #             {
    #               base_name: "SensitiveString",
    #               type: "SensitiveString",
    #               type_placement: "TypePlacement",
    #               type_separator: "TypeSeparator",
    #               prefix: "SensitiveString",
    #               suffix: "SensitiveString",
    #               direction: "SensitiveString",
    #               language: "LanguageTag"
    #             }
    #           ],
    #           address_number: "SensitiveString",
    #           building: "SensitiveString",
    #           secondary_address_components: [
    #             {
    #               number: "SensitiveString", # required
    #             }
    #           ]
    #         },
    #         position: [1.0],
    #         access_points: [
    #           {
    #             position: [1.0]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetPlaceResponse]
    def get_place(params = {}, options = {})
      request = build_request(:get_place, params)
      request.send_request(options)
    end

    # <p> <code>ReverseGeocode</code> converts geographic coordinates into a human-readable address or place. You can obtain address component, and other related information such as place type, category, street information. The Reverse Geocode API supports filtering to on place type so that you can refine result based on your need. Also, The Reverse Geocode API can also provide additional features such as time zone information and the inclusion of political views.</p>
    # @param [Hash, Types::ReverseGeocodeRequest] params
    # @option params [Array<Float>] :query_position
    #   <p>The position, in <code>[lng, lat]</code> for which you are querying nearby results for. Results closer to the position will be ranked higher then results further away from the position</p>
    # @option params [Integer] :query_radius
    #   <p>The maximum distance in meters from the QueryPosition from which a result will be returned.</p>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of results returned in a single call.</p>
    # @option params [Types::ReverseGeocodeFilter] :filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters, such as time zone that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p> <note> <p>Storing the response of an ReverseGeocode query is required to comply with service terms, but charged at a higher cost per request. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_position: [1.0], # required
    #     query_radius: 1,
    #     max_results: 1,
    #     filter: {
    #       include_place_types: ["ReverseGeocodeFilterPlaceType"]
    #     },
    #     additional_features: ["ReverseGeocodeAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "ReverseGeocodeIntendedUse",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.reverse_geocode(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_bucket: "String", # required
    #     result_items: [
    #       {
    #         place_id: "SensitiveString", # required
    #         place_type: "PlaceType", # required
    #         title: "SensitiveString", # required
    #         address: {
    #           label: "SensitiveString",
    #           country: {
    #             code2: "CountryCode2",
    #             code3: "CountryCode3",
    #             name: "SensitiveString"
    #           },
    #           region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           sub_region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           locality: "SensitiveString",
    #           district: "SensitiveString",
    #           sub_district: "SensitiveString",
    #           postal_code: "SensitiveString",
    #           block: "SensitiveString",
    #           sub_block: "SensitiveString",
    #           intersection: ["IntersectionStreet"],
    #           street: "SensitiveString",
    #           street_components: [
    #             {
    #               base_name: "SensitiveString",
    #               type: "SensitiveString",
    #               type_placement: "TypePlacement",
    #               type_separator: "TypeSeparator",
    #               prefix: "SensitiveString",
    #               suffix: "SensitiveString",
    #               direction: "SensitiveString",
    #               language: "LanguageTag"
    #             }
    #           ],
    #           address_number: "SensitiveString",
    #           building: "SensitiveString",
    #           secondary_address_components: [
    #             {
    #               number: "SensitiveString", # required
    #             }
    #           ]
    #         },
    #         address_number_corrected: false,
    #         postal_code_details: [
    #           {
    #             postal_code: "SensitiveString",
    #             postal_authority: "PostalAuthority",
    #             postal_code_type: "PostalCodeType",
    #             usps_zip: {
    #               zip_classification_code: "ZipClassificationCode"
    #             },
    #             usps_zip_plus4: {
    #               record_type_code: "RecordTypeCode"
    #             }
    #           }
    #         ],
    #         position: [1.0],
    #         distance: 1,
    #         map_view: [1.0],
    #         categories: [
    #           {
    #             id: "SensitiveString", # required
    #             name: "SensitiveString", # required
    #             localized_name: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         food_types: [
    #           {
    #             localized_name: "SensitiveString", # required
    #             id: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         access_points: [
    #           {
    #             position: [1.0]
    #           }
    #         ],
    #         time_zone: {
    #           name: "SensitiveString", # required
    #           offset: "SensitiveString",
    #           offset_seconds: 1
    #         },
    #         political_view: "CountryCode3",
    #         intersections: [
    #           {
    #             place_id: "SensitiveString", # required
    #             title: "SensitiveString", # required
    #             address: {
    #               label: "SensitiveString",
    #               country: {
    #                 code2: "CountryCode2",
    #                 code3: "CountryCode3",
    #                 name: "SensitiveString"
    #               },
    #               region: {
    #                 code: "SensitiveString",
    #                 name: "SensitiveString"
    #               },
    #               sub_region: {
    #                 code: "SensitiveString",
    #                 name: "SensitiveString"
    #               },
    #               locality: "SensitiveString",
    #               district: "SensitiveString",
    #               sub_district: "SensitiveString",
    #               postal_code: "SensitiveString",
    #               block: "SensitiveString",
    #               sub_block: "SensitiveString",
    #               intersection: ["IntersectionStreet"],
    #               street: "SensitiveString",
    #               street_components: [
    #                 {
    #                   base_name: "SensitiveString",
    #                   type: "SensitiveString",
    #                   type_placement: "TypePlacement",
    #                   type_separator: "TypeSeparator",
    #                   prefix: "SensitiveString",
    #                   suffix: "SensitiveString",
    #                   direction: "SensitiveString",
    #                   language: "LanguageTag"
    #                 }
    #               ],
    #               address_number: "SensitiveString",
    #               building: "SensitiveString",
    #               secondary_address_components: [
    #                 {
    #                   number: "SensitiveString", # required
    #                 }
    #               ]
    #             },
    #             position: [1.0],
    #             distance: 1,
    #             route_distance: 1,
    #             map_view: [1.0],
    #             access_points: [
    #               {
    #                 position: [1.0]
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ReverseGeocodeResponse]
    def reverse_geocode(params = {}, options = {})
      request = build_request(:reverse_geocode, params)
      request.send_request(options)
    end

    # <p> <code>SearchNearby</code> queries for points of interest within a radius from a central coordinates, returning place results with optional filters such as categories, business chains, food types and more. The API returns details such as a place name, address, phone, category, food type, contact, opening hours. Also, the API can return phonemes, time zones and more based on requested parameters.</p>
    # @param [Hash, Types::SearchNearbyRequest] params
    # @option params [Array<Float>] :query_position
    #   <p>The position, in <code>[lng, lat]</code> for which you are querying nearby results for. Results closer to the position will be ranked higher then results further away from the position</p>
    # @option params [Integer] :query_radius
    #   <p>The maximum distance in meters from the QueryPosition from which a result will be returned.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of results returned in a single call.</p>
    # @option params [Types::SearchNearbyFilter] :filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p> <note> <p>Storing the response of an SearchNearby query is required to comply with service terms, but charged at a higher cost per request. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. </p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_position: [1.0], # required
    #     query_radius: 1,
    #     max_results: 1,
    #     filter: {
    #       bounding_box: [1.0],
    #       include_countries: ["CountryCode"],
    #       include_categories: ["SensitiveString"],
    #       exclude_categories: ["SensitiveString"],
    #       include_business_chains: ["SensitiveString"],
    #       exclude_business_chains: ["SensitiveString"],
    #       include_food_types: ["SensitiveString"],
    #       exclude_food_types: ["SensitiveString"]
    #     },
    #     additional_features: ["SearchNearbyAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SearchNearbyIntendedUse",
    #     next_token: "Token",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.search_nearby(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_bucket: "String", # required
    #     result_items: [
    #       {
    #         place_id: "SensitiveString", # required
    #         place_type: "PlaceType", # required
    #         title: "SensitiveString", # required
    #         address: {
    #           label: "SensitiveString",
    #           country: {
    #             code2: "CountryCode2",
    #             code3: "CountryCode3",
    #             name: "SensitiveString"
    #           },
    #           region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           sub_region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           locality: "SensitiveString",
    #           district: "SensitiveString",
    #           sub_district: "SensitiveString",
    #           postal_code: "SensitiveString",
    #           block: "SensitiveString",
    #           sub_block: "SensitiveString",
    #           intersection: ["IntersectionStreet"],
    #           street: "SensitiveString",
    #           street_components: [
    #             {
    #               base_name: "SensitiveString",
    #               type: "SensitiveString",
    #               type_placement: "TypePlacement",
    #               type_separator: "TypeSeparator",
    #               prefix: "SensitiveString",
    #               suffix: "SensitiveString",
    #               direction: "SensitiveString",
    #               language: "LanguageTag"
    #             }
    #           ],
    #           address_number: "SensitiveString",
    #           building: "SensitiveString",
    #           secondary_address_components: [
    #             {
    #               number: "SensitiveString", # required
    #             }
    #           ]
    #         },
    #         address_number_corrected: false,
    #         position: [1.0],
    #         distance: 1,
    #         map_view: [1.0],
    #         categories: [
    #           {
    #             id: "SensitiveString", # required
    #             name: "SensitiveString", # required
    #             localized_name: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         food_types: [
    #           {
    #             localized_name: "SensitiveString", # required
    #             id: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         business_chains: [
    #           {
    #             name: "SensitiveString",
    #             id: "SensitiveString"
    #           }
    #         ],
    #         contacts: {
    #           phones: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           faxes: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           websites: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           emails: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         opening_hours: [
    #           {
    #             display: ["OpeningHoursDisplay"],
    #             open_now: false,
    #             components: [
    #               {
    #                 open_time: "SensitiveString",
    #                 open_duration: "SensitiveString",
    #                 recurrence: "SensitiveString"
    #               }
    #             ],
    #             categories: [
    #               {
    #                 id: "SensitiveString", # required
    #                 name: "SensitiveString", # required
    #                 localized_name: "SensitiveString",
    #                 primary: false
    #               }
    #             ]
    #           }
    #         ],
    #         access_points: [
    #           {
    #             position: [1.0]
    #           }
    #         ],
    #         access_restrictions: [
    #           {
    #             restricted: false,
    #             categories: [
    #               {
    #                 id: "SensitiveString", # required
    #                 name: "SensitiveString", # required
    #                 localized_name: "SensitiveString",
    #                 primary: false
    #               }
    #             ]
    #           }
    #         ],
    #         time_zone: {
    #           name: "SensitiveString", # required
    #           offset: "SensitiveString",
    #           offset_seconds: 1
    #         },
    #         political_view: "CountryCode3",
    #         phonemes: {
    #           title: [
    #             {
    #               value: "SensitiveString",
    #               language: "LanguageTag",
    #               preferred: false
    #             }
    #           ],
    #           address: {
    #             country: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             region: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             sub_region: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             locality: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             district: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             sub_district: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             block: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             sub_block: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             street: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::SearchNearbyResponse]
    def search_nearby(params = {}, options = {})
      request = build_request(:search_nearby, params)
      request.send_request(options)
    end

    # <p> <code>SearchText</code> searches for geocode and place information. You can then complete a follow-up query suggested from the <code>Suggest</code> API via a query id.</p>
    # @param [Hash, Types::SearchTextRequest] params
    # @option params [String] :query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    # @option params [String] :query_id
    #   <p>The query Id returned by the suggest API. If passed in the request, the SearchText API will preform a SearchText query with the improved query terms for the original query made to the suggest API.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of results returned in a single call.</p>
    # @option params [Array<Float>] :bias_position
    #   <p>The position, in longitude and latitude, that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WSG84 format.</p> <note> <p>The fields <code>BiasPosition</code>, <code>FilterBoundingBox</code>, and <code>FilterCircle</code> are mutually exclusive.</p> </note>
    # @option params [Types::SearchTextFilter] :filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p> <note> <p>Storing the response of an SearchText query is required to comply with service terms, but charged at a higher cost per request. Please review the <a href="https://aws.amazon.com/location/sla/">user agreement</a> and <a href="https://aws.amazon.com/location/pricing/">service pricing structure</a> to determine the correct setting for your use case.</p> </note>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. </p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_text: "SensitiveString",
    #     query_id: "SensitiveString",
    #     max_results: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       bounding_box: [1.0],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1, # required
    #       },
    #       include_countries: ["CountryCode"]
    #     },
    #     additional_features: ["SearchTextAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SearchTextIntendedUse",
    #     next_token: "Token",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.search_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_bucket: "String", # required
    #     result_items: [
    #       {
    #         place_id: "SensitiveString", # required
    #         place_type: "PlaceType", # required
    #         title: "SensitiveString", # required
    #         address: {
    #           label: "SensitiveString",
    #           country: {
    #             code2: "CountryCode2",
    #             code3: "CountryCode3",
    #             name: "SensitiveString"
    #           },
    #           region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           sub_region: {
    #             code: "SensitiveString",
    #             name: "SensitiveString"
    #           },
    #           locality: "SensitiveString",
    #           district: "SensitiveString",
    #           sub_district: "SensitiveString",
    #           postal_code: "SensitiveString",
    #           block: "SensitiveString",
    #           sub_block: "SensitiveString",
    #           intersection: ["IntersectionStreet"],
    #           street: "SensitiveString",
    #           street_components: [
    #             {
    #               base_name: "SensitiveString",
    #               type: "SensitiveString",
    #               type_placement: "TypePlacement",
    #               type_separator: "TypeSeparator",
    #               prefix: "SensitiveString",
    #               suffix: "SensitiveString",
    #               direction: "SensitiveString",
    #               language: "LanguageTag"
    #             }
    #           ],
    #           address_number: "SensitiveString",
    #           building: "SensitiveString",
    #           secondary_address_components: [
    #             {
    #               number: "SensitiveString", # required
    #             }
    #           ]
    #         },
    #         address_number_corrected: false,
    #         position: [1.0],
    #         distance: 1,
    #         map_view: [1.0],
    #         categories: [
    #           {
    #             id: "SensitiveString", # required
    #             name: "SensitiveString", # required
    #             localized_name: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         food_types: [
    #           {
    #             localized_name: "SensitiveString", # required
    #             id: "SensitiveString",
    #             primary: false
    #           }
    #         ],
    #         business_chains: [
    #           {
    #             name: "SensitiveString",
    #             id: "SensitiveString"
    #           }
    #         ],
    #         contacts: {
    #           phones: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           faxes: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           websites: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           emails: [
    #             {
    #               label: "SensitiveString",
    #               value: "SensitiveString",
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         opening_hours: [
    #           {
    #             display: ["OpeningHoursDisplay"],
    #             open_now: false,
    #             components: [
    #               {
    #                 open_time: "SensitiveString",
    #                 open_duration: "SensitiveString",
    #                 recurrence: "SensitiveString"
    #               }
    #             ],
    #             categories: [
    #               {
    #                 id: "SensitiveString", # required
    #                 name: "SensitiveString", # required
    #                 localized_name: "SensitiveString",
    #                 primary: false
    #               }
    #             ]
    #           }
    #         ],
    #         access_points: [
    #           {
    #             position: [1.0]
    #           }
    #         ],
    #         access_restrictions: [
    #           {
    #             restricted: false,
    #             categories: [
    #               {
    #                 id: "SensitiveString", # required
    #                 name: "SensitiveString", # required
    #                 localized_name: "SensitiveString",
    #                 primary: false
    #               }
    #             ]
    #           }
    #         ],
    #         time_zone: {
    #           name: "SensitiveString", # required
    #           offset: "SensitiveString",
    #           offset_seconds: 1
    #         },
    #         political_view: "CountryCode3",
    #         phonemes: {
    #           title: [
    #             {
    #               value: "SensitiveString",
    #               language: "LanguageTag",
    #               preferred: false
    #             }
    #           ],
    #           address: {
    #             country: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             region: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             sub_region: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             locality: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             district: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             sub_district: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             block: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             sub_block: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             street: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::SearchTextResponse]
    def search_text(params = {}, options = {})
      request = build_request(:search_text, params)
      request.send_request(options)
    end

    # <p> <code>Suggest</code> provides intelligent predictions or recommendations based on the user's input or context, such as relevant places, points of interest, query terms or search category. It is designed to help users find places or point of interests candidates or identify a follow on query based on incomplete or misspelled queries. It returns a list of possible matches or refinements that can be used to formulate a more accurate query. Users can select the most appropriate suggestion and use it for further searching. The API provides options for filtering results by location and other attributes, and allows for additional features like phonemes and timezones. The response includes refined query terms and detailed place information.</p>
    # @param [Hash, Types::SuggestRequest] params
    # @option params [String] :query_text
    #   <p>The free-form text query to match addresses against. This is usually a partially typed address from an end user in an address box or form.</p> <note> <p>The fields <code>QueryText</code>, and <code>QueryID</code> are mutually exclusive.</p> </note>
    # @option params [Integer] :max_results
    #   <p>An optional limit for the number of results returned in a single call.</p>
    # @option params [Integer] :max_query_refinements
    #   <p>Maximum number of query terms to be returned for use with a search text query.</p>
    # @option params [Array<Float>] :bias_position
    #   <p>The position, in longitude and latitude, that the results should be close to. Typically, place results returned are ranked higher the closer they are to this position. Stored in <code>[lng, lat]</code> and in the WSG84 format.</p> <note> <p>The fields <code>BiasPosition</code>, <code>FilterBoundingBox</code>, and <code>FilterCircle</code> are mutually exclusive.</p> </note>
    # @option params [Types::SuggestFilter] :filter
    #   <p>A structure which contains a set of inclusion/exclusion properties that results must possess in order to be returned as a result.</p>
    # @option params [Array<String>] :additional_features
    #   <p>A list of optional additional parameters, such as time zone, that can be requested for each result.</p>
    # @option params [String] :language
    #   <p>A list of <a href="https://en.wikipedia.org/wiki/IETF_language_tag">BCP 47</a> compliant language codes for the results to be rendered in. If there is no data for the result in the requested language, data will be returned in the default language for the entry.</p>
    # @option params [String] :political_view
    #   <p>The alpha-2 or alpha-3 character code for the political view of a country. The political view applies to the results of the request to represent unresolved territorial claims through the point of view of the specified country.</p>
    # @option params [String] :intended_use
    #   <p>Indicates if the results will be stored. Defaults to <code>SingleUse</code>, if left empty.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_text: "SensitiveString", # required
    #     max_results: 1,
    #     max_query_refinements: 1,
    #     bias_position: [1.0],
    #     filter: {
    #       bounding_box: [1.0],
    #       circle: {
    #         center: [1.0], # required
    #         radius: 1, # required
    #       },
    #       include_countries: ["CountryCode"]
    #     },
    #     additional_features: ["SuggestAdditionalFeature"],
    #     language: "LanguageTag",
    #     political_view: "CountryCode",
    #     intended_use: "SuggestIntendedUse",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.suggest(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pricing_bucket: "String", # required
    #     result_items: [
    #       {
    #         title: "SensitiveString", # required
    #         suggest_result_item_type: "SuggestResultItemType", # required
    #         place: {
    #           place_id: "SensitiveString",
    #           place_type: "PlaceType",
    #           address: {
    #             label: "SensitiveString",
    #             country: {
    #               code2: "CountryCode2",
    #               code3: "CountryCode3",
    #               name: "SensitiveString"
    #             },
    #             region: {
    #               code: "SensitiveString",
    #               name: "SensitiveString"
    #             },
    #             sub_region: {
    #               code: "SensitiveString",
    #               name: "SensitiveString"
    #             },
    #             locality: "SensitiveString",
    #             district: "SensitiveString",
    #             sub_district: "SensitiveString",
    #             postal_code: "SensitiveString",
    #             block: "SensitiveString",
    #             sub_block: "SensitiveString",
    #             intersection: ["IntersectionStreet"],
    #             street: "SensitiveString",
    #             street_components: [
    #               {
    #                 base_name: "SensitiveString",
    #                 type: "SensitiveString",
    #                 type_placement: "TypePlacement",
    #                 type_separator: "TypeSeparator",
    #                 prefix: "SensitiveString",
    #                 suffix: "SensitiveString",
    #                 direction: "SensitiveString",
    #                 language: "LanguageTag"
    #               }
    #             ],
    #             address_number: "SensitiveString",
    #             building: "SensitiveString",
    #             secondary_address_components: [
    #               {
    #                 number: "SensitiveString", # required
    #               }
    #             ]
    #           },
    #           position: [1.0],
    #           distance: 1,
    #           map_view: [1.0],
    #           categories: [
    #             {
    #               id: "SensitiveString", # required
    #               name: "SensitiveString", # required
    #               localized_name: "SensitiveString",
    #               primary: false
    #             }
    #           ],
    #           food_types: [
    #             {
    #               localized_name: "SensitiveString", # required
    #               id: "SensitiveString",
    #               primary: false
    #             }
    #           ],
    #           business_chains: [
    #             {
    #               name: "SensitiveString",
    #               id: "SensitiveString"
    #             }
    #           ],
    #           access_points: [
    #             {
    #               position: [1.0]
    #             }
    #           ],
    #           access_restrictions: [
    #             {
    #               restricted: false,
    #               categories: [
    #                 {
    #                   id: "SensitiveString", # required
    #                   name: "SensitiveString", # required
    #                   localized_name: "SensitiveString",
    #                   primary: false
    #                 }
    #               ]
    #             }
    #           ],
    #           time_zone: {
    #             name: "SensitiveString", # required
    #             offset: "SensitiveString",
    #             offset_seconds: 1
    #           },
    #           political_view: "CountryCode3",
    #           phonemes: {
    #             title: [
    #               {
    #                 value: "SensitiveString",
    #                 language: "LanguageTag",
    #                 preferred: false
    #               }
    #             ],
    #             address: {
    #               country: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               region: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               sub_region: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               locality: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               district: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               sub_district: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               block: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               sub_block: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ],
    #               street: [
    #                 {
    #                   value: "SensitiveString",
    #                   language: "LanguageTag",
    #                   preferred: false
    #                 }
    #               ]
    #             }
    #           }
    #         },
    #         query: {
    #           query_id: "SensitiveString",
    #           query_type: "QueryType"
    #         },
    #         highlights: {
    #           title: [
    #             {
    #               start_index: 1,
    #               end_index: 1,
    #               value: "SensitiveString"
    #             }
    #           ],
    #           address: {
    #             label: [
    #               {
    #                 start_index: 1,
    #                 end_index: 1,
    #                 value: "SensitiveString"
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     query_refinements: [
    #       {
    #         refined_term: "SensitiveString", # required
    #         original_term: "SensitiveString", # required
    #         start_index: 1, # required
    #         end_index: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::SuggestResponse]
    def suggest(params = {}, options = {})
      request = build_request(:suggest, params)
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
      context[:gem_name] = 'aws-sdk-geoplaces'
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
