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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:geomaps)

module Aws::GeoMaps
  # An API client for Aws::GeoMaps.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::MapsService
    @identifier = :geomaps

    add_plugin(::Aws::GeoMaps::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GeoMaps::EndpointProvider)
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

    # <p> <code>GetGlyphs</code> returns the map's glyphs.</p>
    # @param [Hash, Types::GetGlyphsRequest] params
    # @option params [String] :font_stack
    #   <p>Name of the <code>FontStack</code> to retrieve. </p> <p>Example: <code>Amazon Ember Bold,Noto Sans Bold</code>.</p> <p>The supported font stacks are as follows:</p> <ul> <li> <p>Amazon Ember Bold</p> </li> <li> <p>Amazon Ember Bold Italic</p> </li> <li> <p>Amazon Ember Bold,Noto Sans Bold</p> </li> <li> <p>Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold</p> </li> <li> <p>Amazon Ember Condensed RC BdItalic</p> </li> <li> <p>Amazon Ember Condensed RC Bold</p> </li> <li> <p>Amazon Ember Condensed RC Bold Italic</p> </li> <li> <p>Amazon Ember Condensed RC Bold,Noto Sans Bold</p> </li> <li> <p>Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic Condensed Bold</p> </li> <li> <p>Amazon Ember Condensed RC Light</p> </li> <li> <p>Amazon Ember Condensed RC Light Italic</p> </li> <li> <p>Amazon Ember Condensed RC LtItalic</p> </li> <li> <p>Amazon Ember Condensed RC Regular</p> </li> <li> <p>Amazon Ember Condensed RC Regular Italic</p> </li> <li> <p>Amazon Ember Condensed RC Regular,Noto Sans Regular</p> </li> <li> <p>Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic Condensed Regular</p> </li> <li> <p>Amazon Ember Condensed RC RgItalic</p> </li> <li> <p>Amazon Ember Condensed RC ThItalic</p> </li> <li> <p>Amazon Ember Condensed RC Thin</p> </li> <li> <p>Amazon Ember Condensed RC Thin Italic</p> </li> <li> <p>Amazon Ember Heavy</p> </li> <li> <p>Amazon Ember Heavy Italic</p> </li> <li> <p>Amazon Ember Light</p> </li> <li> <p>Amazon Ember Light Italic</p> </li> <li> <p>Amazon Ember Medium</p> </li> <li> <p>Amazon Ember Medium Italic</p> </li> <li> <p>Amazon Ember Medium,Noto Sans Medium</p> </li> <li> <p>Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium</p> </li> <li> <p>Amazon Ember Regular</p> </li> <li> <p>Amazon Ember Regular Italic</p> </li> <li> <p>Amazon Ember Regular Italic,Noto Sans Italic</p> </li> <li> <p>Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic Regular</p> </li> <li> <p>Amazon Ember Regular,Noto Sans Regular</p> </li> <li> <p>Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular</p> </li> <li> <p>Amazon Ember Thin</p> </li> <li> <p>Amazon Ember Thin Italic</p> </li> <li> <p>AmazonEmberCdRC_Bd</p> </li> <li> <p>AmazonEmberCdRC_BdIt</p> </li> <li> <p>AmazonEmberCdRC_Lt</p> </li> <li> <p>AmazonEmberCdRC_LtIt</p> </li> <li> <p>AmazonEmberCdRC_Rg</p> </li> <li> <p>AmazonEmberCdRC_RgIt</p> </li> <li> <p>AmazonEmberCdRC_Th</p> </li> <li> <p>AmazonEmberCdRC_ThIt</p> </li> <li> <p>AmazonEmber_Bd</p> </li> <li> <p>AmazonEmber_BdIt</p> </li> <li> <p>AmazonEmber_He</p> </li> <li> <p>AmazonEmber_HeIt</p> </li> <li> <p>AmazonEmber_Lt</p> </li> <li> <p>AmazonEmber_LtIt</p> </li> <li> <p>AmazonEmber_Md</p> </li> <li> <p>AmazonEmber_MdIt</p> </li> <li> <p>AmazonEmber_Rg</p> </li> <li> <p>AmazonEmber_RgIt</p> </li> <li> <p>AmazonEmber_Th</p> </li> <li> <p>AmazonEmber_ThIt</p> </li> <li> <p>Noto Sans Black</p> </li> <li> <p>Noto Sans Black Italic</p> </li> <li> <p>Noto Sans Bold</p> </li> <li> <p>Noto Sans Bold Italic</p> </li> <li> <p>Noto Sans Extra Bold</p> </li> <li> <p>Noto Sans Extra Bold Italic</p> </li> <li> <p>Noto Sans Extra Light</p> </li> <li> <p>Noto Sans Extra Light Italic</p> </li> <li> <p>Noto Sans Italic</p> </li> <li> <p>Noto Sans Light</p> </li> <li> <p>Noto Sans Light Italic</p> </li> <li> <p>Noto Sans Medium</p> </li> <li> <p>Noto Sans Medium Italic</p> </li> <li> <p>Noto Sans Regular</p> </li> <li> <p>Noto Sans Semi Bold</p> </li> <li> <p>Noto Sans Semi Bold Italic</p> </li> <li> <p>Noto Sans Thin</p> </li> <li> <p>Noto Sans Thin Italic</p> </li> <li> <p>NotoSans-Bold</p> </li> <li> <p>NotoSans-Italic</p> </li> <li> <p>NotoSans-Medium</p> </li> <li> <p>NotoSans-Regular</p> </li> <li> <p>Open Sans Regular,Arial Unicode MS Regular</p> </li> </ul>
    # @option params [String] :font_unicode_range
    #   <p>A Unicode range of characters to download glyphs for. This must be aligned to multiples of 256. </p> <p>Example: <code>0-255.pdf</code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     font_stack: "String", # required
    #     font_unicode_range: "String", # required
    #   }
    #   options = {}
    #   response = client.get_glyphs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String",
    #     e_tag: "String"
    #   }
    # @return [Types::GetGlyphsResponse]
    def get_glyphs(params = {}, options = {})
      request = build_request(:get_glyphs, params)
      request.send_request(options)
    end

    # <p> <code>GetSprites</code> returns the map's sprites.</p>
    # @param [Hash, Types::GetSpritesRequest] params
    # @option params [String] :file_name
    #   <p> <code>Sprites</code> API: The name of the sprite ﬁle to retrieve, following pattern <code>sprites(@2x)?\.(png|json)</code>.</p> <p>Example: <code>sprites.png</code> </p>
    # @option params [String] :style
    #   <p>Style specifies the desired map style for the <code>Sprites</code> APIs.</p>
    # @option params [String] :color_scheme
    #   <p>Sets color tone for map such as dark and light for specific map styles. It applies to only vector map styles such as Standard and Monochrome.</p> <p>Example: <code>Light</code> </p> <p>Default value: <code>Light</code> </p> <note> <p>Valid values for ColorScheme are case sensitive.</p> </note>
    # @option params [String] :variant
    #   <p>Optimizes map styles for specific use case or industry. You can choose allowed variant only with Standard map style.</p> <p>Example: <code>Default</code> </p> <note> <p>Valid values for Variant are case sensitive.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     file_name: "String", # required
    #     style: "MapStyle", # required
    #     color_scheme: "ColorScheme", # required
    #     variant: "Variant", # required
    #   }
    #   options = {}
    #   response = client.get_sprites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String",
    #     e_tag: "String"
    #   }
    # @return [Types::GetSpritesResponse]
    def get_sprites(params = {}, options = {})
      request = build_request(:get_sprites, params)
      request.send_request(options)
    end

    # <p> <code>GetStaticMap</code> provides high-quality static map images with customizable options. You can modify the map's appearance and overlay additional information. It's an ideal solution for applications requiring tailored static map snapshots.</p>
    # @param [Hash, Types::GetStaticMapRequest] params
    # @option params [String] :bounding_box
    #   <p>Takes in two pairs of coordinates, [Lon, Lat], denoting south-westerly and north-easterly edges of the image. The underlying area becomes the view of the image. </p> <p>Example: -123.17075,49.26959,-123.08125,49.31429</p>
    # @option params [String] :bounded_positions
    #   <p>Takes in two or more pair of coordinates, [Lon, Lat], with each coordinate separated by a comma. The API will generate an image to encompass all of the provided coordinates. </p> <note> <p>Cannot be used with <code>Zoom</code> and or <code>Radius</code> </p> </note> <p>Example: 97.170451,78.039098,99.045536,27.176178</p>
    # @option params [String] :center
    #   <p>Takes in a pair of coordinates, [Lon, Lat], which becomes the center point of the image. This parameter requires that either zoom or radius is set.</p> <note> <p>Cannot be used with <code>Zoom</code> and or <code>Radius</code> </p> </note> <p>Example: 49.295,-123.108</p>
    # @option params [String] :color_scheme
    #   <p>Sets color tone for map, such as dark and light for specific map styles. It only applies to vector map styles, such as Standard.</p> <p>Example: <code>Light</code> </p> <p>Default value: <code>Light</code> </p> <note> <p>Valid values for <code>ColorScheme</code> are case sensitive.</p> </note>
    # @option params [String] :compact_overlay
    #   <p>Takes in a string to draw geometries on the image. The input is a comma separated format as follows format: <code>[Lon, Lat]</code> </p> <p>Example: <code>line:-122.407653,37.798557,-122.413291,37.802443;color=%23DD0000;width=7;outline-color=#00DD00;outline-width=5yd|point:-122.40572,37.80004;label=Fog Hill Market;size=large;text-color=%23DD0000;color=#EE4B2B</code> </p> <note> <p>Currently it supports the following geometry types: point, line and polygon. It does not support multiPoint , multiLine and multiPolgyon.</p> </note>
    # @option params [Boolean] :crop_labels
    #   <p>It is a flag that takes in true or false. It prevents the labels that are on the edge of the image from being cut or obscured.</p>
    # @option params [String] :geo_json_overlay
    #   <p>Takes in a string to draw geometries on the image. The input is a valid GeoJSON collection object. </p> <p>Example: <code>{"type":"FeatureCollection","features": [{"type":"Feature","geometry":{"type":"MultiPoint","coordinates": [[-90.076345,51.504107],[-0.074451,51.506892]]},"properties": {"color":"#00DD00"}}]}</code> </p>
    # @option params [Integer] :height
    #   <p>Specifies the height of the map image.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :label_size
    #   <p>Overrides the label size auto-calculated by <code>FileName</code>. Takes in one of the values - <code>Small</code> or <code>Large</code>.</p>
    # @option params [String] :language
    #   <p>Specifies the language on the map labels using the BCP 47 language tag, limited to ISO 639-1 two-letter language codes. If the specified language data isn't available for the map image, the labels will default to the regional primary language.</p> <p>Supported codes:</p> <ul> <li> <p> <code>ar</code> </p> </li> <li> <p> <code>as</code> </p> </li> <li> <p> <code>az</code> </p> </li> <li> <p> <code>be</code> </p> </li> <li> <p> <code>bg</code> </p> </li> <li> <p> <code>bn</code> </p> </li> <li> <p> <code>bs</code> </p> </li> <li> <p> <code>ca</code> </p> </li> <li> <p> <code>cs</code> </p> </li> <li> <p> <code>cy</code> </p> </li> <li> <p> <code>da</code> </p> </li> <li> <p> <code>de</code> </p> </li> <li> <p> <code>el</code> </p> </li> <li> <p> <code>en</code> </p> </li> <li> <p> <code>es</code> </p> </li> <li> <p> <code>et</code> </p> </li> <li> <p> <code>eu</code> </p> </li> <li> <p> <code>fi</code> </p> </li> <li> <p> <code>fo</code> </p> </li> <li> <p> <code>fr</code> </p> </li> <li> <p> <code>ga</code> </p> </li> <li> <p> <code>gl</code> </p> </li> <li> <p> <code>gn</code> </p> </li> <li> <p> <code>gu</code> </p> </li> <li> <p> <code>he</code> </p> </li> <li> <p> <code>hi</code> </p> </li> <li> <p> <code>hr</code> </p> </li> <li> <p> <code>hu</code> </p> </li> <li> <p> <code>hy</code> </p> </li> <li> <p> <code>id</code> </p> </li> <li> <p> <code>is</code> </p> </li> <li> <p> <code>it</code> </p> </li> <li> <p> <code>ja</code> </p> </li> <li> <p> <code>ka</code> </p> </li> <li> <p> <code>kk</code> </p> </li> <li> <p> <code>km</code> </p> </li> <li> <p> <code>kn</code> </p> </li> <li> <p> <code>ko</code> </p> </li> <li> <p> <code>ky</code> </p> </li> <li> <p> <code>lt</code> </p> </li> <li> <p> <code>lv</code> </p> </li> <li> <p> <code>mk</code> </p> </li> <li> <p> <code>ml</code> </p> </li> <li> <p> <code>mr</code> </p> </li> <li> <p> <code>ms</code> </p> </li> <li> <p> <code>mt</code> </p> </li> <li> <p> <code>my</code> </p> </li> <li> <p> <code>nl</code> </p> </li> <li> <p> <code>no</code> </p> </li> <li> <p> <code>or</code> </p> </li> <li> <p> <code>pa</code> </p> </li> <li> <p> <code>pl</code> </p> </li> <li> <p> <code>pt</code> </p> </li> <li> <p> <code>ro</code> </p> </li> <li> <p> <code>ru</code> </p> </li> <li> <p> <code>sk</code> </p> </li> <li> <p> <code>sl</code> </p> </li> <li> <p> <code>sq</code> </p> </li> <li> <p> <code>sr</code> </p> </li> <li> <p> <code>sv</code> </p> </li> <li> <p> <code>ta</code> </p> </li> <li> <p> <code>te</code> </p> </li> <li> <p> <code>th</code> </p> </li> <li> <p> <code>tr</code> </p> </li> <li> <p> <code>uk</code> </p> </li> <li> <p> <code>uz</code> </p> </li> <li> <p> <code>vi</code> </p> </li> <li> <p> <code>zh</code> </p> </li> </ul>
    # @option params [Integer] :padding
    #   <p>Applies additional space (in pixels) around overlay feature to prevent them from being cut or obscured.</p> <note> <p>Value for max and min is determined by:</p> <p>Min: <code>1</code> </p> <p>Max: <code>min(height, width)/4</code> </p> </note> <p>Example: <code>100</code> </p>
    # @option params [String] :political_view
    #   <p>Specifies the political view, using ISO 3166-2 or ISO 3166-3 country code format.</p> <p>The following political views are currently supported:</p> <ul> <li> <p> <code>ARG</code>: Argentina's view on the Southern Patagonian Ice Field and Tierra Del Fuego, including the Falkland Islands, South Georgia, and South Sandwich Islands</p> </li> <li> <p> <code>EGY</code>: Egypt's view on Bir Tawil</p> </li> <li> <p> <code>IND</code>: India's view on Gilgit-Baltistan</p> </li> <li> <p> <code>KEN</code>: Kenya's view on the Ilemi Triangle</p> </li> <li> <p> <code>MAR</code>: Morocco's view on Western Sahara</p> </li> <li> <p> <code>RUS</code>: Russia's view on Crimea</p> </li> <li> <p> <code>SDN</code>: Sudan's view on the Halaib Triangle</p> </li> <li> <p> <code>SRB</code>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands</p> </li> <li> <p> <code>SUR</code>: Suriname's view on the Courantyne Headwaters and Lawa Headwaters</p> </li> <li> <p> <code>SYR</code>: Syria's view on the Golan Heights</p> </li> <li> <p> <code>TUR</code>: Turkey's view on Cyprus and Northern Cyprus</p> </li> <li> <p> <code>TZA</code>: Tanzania's view on Lake Malawi</p> </li> <li> <p> <code>URY</code>: Uruguay's view on Rincon de Artigas</p> </li> <li> <p> <code>VNM</code>: Vietnam's view on the Paracel Islands and Spratly Islands</p> </li> </ul>
    # @option params [String] :points_of_interests
    #   <p>Determines if the result image will display icons representing points of interest on the map.</p>
    # @option params [Integer] :radius
    #   <p>Used with center parameter, it specifies the zoom of the image where you can control it on a granular level. Takes in any value <code>&gt;= 1</code>. </p> <p>Example: <code>1500</code> </p> <note> <p>Cannot be used with <code>Zoom</code>.</p> </note> <p> <b>Unit</b>: <code>Meters</code> </p> <p/>
    # @option params [String] :file_name
    #   <p>The map scaling parameter to size the image, icons, and labels. It follows the pattern of <code>^map(@2x)?$</code>.</p> <p>Example: <code>map, map@2x</code> </p>
    # @option params [String] :scale_bar_unit
    #   <p>Displays a scale on the bottom right of the map image with the unit specified in the input. </p> <p>Example: <code>KilometersMiles, Miles, Kilometers, MilesKilometers</code> </p>
    # @option params [String] :style
    #   <p> <code>Style</code> specifies the desired map style.</p>
    # @option params [Integer] :width
    #   <p>Specifies the width of the map image.</p>
    # @option params [Float] :zoom
    #   <p>Specifies the zoom level of the map image.</p> <note> <p>Cannot be used with <code>Radius</code>.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     bounding_box: "PositionListString",
    #     bounded_positions: "PositionListString",
    #     center: "PositionString",
    #     color_scheme: "ColorScheme",
    #     compact_overlay: "CompactOverlay",
    #     crop_labels: false,
    #     geo_json_overlay: "GeoJsonOverlay",
    #     height: 1, # required
    #     key: "ApiKey",
    #     label_size: "LabelSize",
    #     language: "LanguageTag",
    #     padding: 1,
    #     political_view: "CountryCode",
    #     points_of_interests: "MapFeatureMode",
    #     radius: 1,
    #     file_name: "String", # required
    #     scale_bar_unit: "ScaleBarUnit",
    #     style: "StaticMapStyle",
    #     width: 1, # required
    #     zoom: 1.0
    #   }
    #   options = {}
    #   response = client.get_static_map(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String",
    #     e_tag: "String",
    #     pricing_bucket: "String", # required
    #   }
    # @return [Types::GetStaticMapResponse]
    def get_static_map(params = {}, options = {})
      request = build_request(:get_static_map, params)
      request.send_request(options)
    end

    # <p> <code>GetStyleDescriptor</code> returns information about the style.</p>
    # @param [Hash, Types::GetStyleDescriptorRequest] params
    # @option params [String] :style
    #   <p>Style specifies the desired map style.</p>
    # @option params [String] :color_scheme
    #   <p>Sets color tone for map such as dark and light for specific map styles. It applies to only vector map styles such as Standard and Monochrome.</p> <p>Example: <code>Light</code> </p> <p>Default value: <code>Light</code> </p> <note> <p>Valid values for ColorScheme are case sensitive.</p> </note>
    # @option params [String] :political_view
    #   <p>Specifies the political view using ISO 3166-2 or ISO 3166-3 country code format.</p> <p>The following political views are currently supported:</p> <ul> <li> <p> <code>ARG</code>: Argentina's view on the Southern Patagonian Ice Field and Tierra Del Fuego, including the Falkland Islands, South Georgia, and South Sandwich Islands</p> </li> <li> <p> <code>EGY</code>: Egypt's view on Bir Tawil</p> </li> <li> <p> <code>IND</code>: India's view on Gilgit-Baltistan</p> </li> <li> <p> <code>KEN</code>: Kenya's view on the Ilemi Triangle</p> </li> <li> <p> <code>MAR</code>: Morocco's view on Western Sahara</p> </li> <li> <p> <code>RUS</code>: Russia's view on Crimea</p> </li> <li> <p> <code>SDN</code>: Sudan's view on the Halaib Triangle</p> </li> <li> <p> <code>SRB</code>: Serbia's view on Kosovo, Vukovar, and Sarengrad Islands</p> </li> <li> <p> <code>SUR</code>: Suriname's view on the Courantyne Headwaters and Lawa Headwaters</p> </li> <li> <p> <code>SYR</code>: Syria's view on the Golan Heights</p> </li> <li> <p> <code>TUR</code>: Turkey's view on Cyprus and Northern Cyprus</p> </li> <li> <p> <code>TZA</code>: Tanzania's view on Lake Malawi</p> </li> <li> <p> <code>URY</code>: Uruguay's view on Rincon de Artigas</p> </li> <li> <p> <code>VNM</code>: Vietnam's view on the Paracel Islands and Spratly Islands</p> </li> </ul>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     style: "MapStyle", # required
    #     color_scheme: "ColorScheme",
    #     political_view: "CountryCode",
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_style_descriptor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String",
    #     e_tag: "String"
    #   }
    # @return [Types::GetStyleDescriptorResponse]
    def get_style_descriptor(params = {}, options = {})
      request = build_request(:get_style_descriptor, params)
      request.send_request(options)
    end

    # <p> <code>GetTile</code> returns a tile. Map tiles are used by clients to render a map. they're addressed using a grid arrangement with an X coordinate, Y coordinate, and Z (zoom) level.</p>
    # @param [Hash, Types::GetTileRequest] params
    # @option params [String] :tileset
    #   <p>Specifies the desired tile set.</p> <p>Valid Values: <code>raster.satellite | vector.basemap</code> </p>
    # @option params [String] :z
    #   <p>The zoom value for the map tile.</p>
    # @option params [String] :x
    #   <p>The X axis value for the map tile. Must be between 0 and 19.</p>
    # @option params [String] :y
    #   <p>The Y axis value for the map tile.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     tileset: "Tileset", # required
    #     z: "SensitiveString", # required
    #     x: "SensitiveString", # required
    #     y: "SensitiveString", # required
    #     key: "ApiKey"
    #   }
    #   options = {}
    #   response = client.get_tile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blob: "data",
    #     content_type: "String",
    #     cache_control: "String",
    #     e_tag: "String",
    #     pricing_bucket: "String", # required
    #   }
    # @return [Types::GetTileResponse]
    def get_tile(params = {}, options = {})
      request = build_request(:get_tile, params)
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
      context[:gem_name] = 'aws-sdk-geomaps'
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
