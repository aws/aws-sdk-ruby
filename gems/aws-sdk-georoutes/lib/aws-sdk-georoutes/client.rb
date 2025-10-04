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

module Aws::GeoRoutes
  # An API client for Aws::GeoRoutes.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RoutesService

    add_plugin(::Aws::GeoRoutes::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GeoRoutes::EndpointProvider)
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

    # <p>Use the <code>CalculateIsolines</code> action to find service areas that can be reached in a given threshold of time, distance.</p>
    # @param [Hash, Types::CalculateIsolinesRequest] params
    # @option params [Types::IsolineAllowOptions] :allow
    #   <p>Features that are allowed while calculating an isoline.</p>
    # @option params [String] :arrival_time
    #   <p>Time of arrival at the destination.</p> <p>Time format: <code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Types::IsolineAvoidanceOptions] :avoid
    #   <p>Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    # @option params [Boolean] :depart_now
    #   <p>Uses the current time as the time of departure.</p>
    # @option params [String] :departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Float>] :destination
    #   <p>The final position for the route. In the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    # @option params [Types::IsolineDestinationOptions] :destination_options
    #   <p>Destination related options.</p>
    # @option params [String] :isoline_geometry_format
    #   <p>The format of the returned IsolineGeometry. </p> <p>Default Value:<code>FlexiblePolyline</code> </p>
    # @option params [Types::IsolineGranularityOptions] :isoline_granularity
    #   <p>Defines the granularity of the returned Isoline.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :optimize_isoline_for
    #   <p>Specifies the optimization criteria for when calculating an isoline. AccurateCalculation generates an isoline of higher granularity that is more precise. FastCalculation generates an isoline faster by reducing the granularity, and in turn the quality of the isoline. BalancedCalculation generates an isoline by balancing between quality and performance. </p> <p>Default Value: <code>BalancedCalculation</code> </p>
    # @option params [String] :optimize_routing_for
    #   <p>Specifies the optimization criteria for calculating a route.</p> <p>Default Value: <code>FastestRoute</code> </p>
    # @option params [Array<Float>] :origin
    #   <p>The start position for the route.</p>
    # @option params [Types::IsolineOriginOptions] :origin_options
    #   <p>Origin related options.</p>
    # @option params [Types::IsolineThresholds] :thresholds
    #   <p>Threshold to be used for the isoline calculation. Up to 3 thresholds per provided type can be requested.</p> <p> You incur a calculation charge for each threshold. Using a large amount of thresholds in a request can lead you to incur unexpected charges. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`"> Amazon Location's pricing page</a> for more information.</p>
    # @option params [Types::IsolineTrafficOptions] :traffic
    #   <p>Traffic related options.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <note> <p> The mode <code>Scooter</code> also applies to motorcycles, set to <code>Scooter</code> when wanted to calculate options for motorcycles.</p> </note> <p>Default Value: <code>Car</code> </p>
    # @option params [Types::IsolineTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     allow: {
    #       hot: false,
    #       hov: false
    #     },
    #     arrival_time: "TimestampWithTimezoneOffset",
    #     avoid: {
    #       areas: [
    #         {
    #           except: [
    #             {
    #               bounding_box: [1.0],
    #               corridor: {
    #                 line_string: [ # required
    #                   [1.0]
    #                 ],
    #                 radius: 1, # required
    #               },
    #               polygon: [
    #                 [
    #                   [1.0]
    #                 ]
    #               ],
    #               polyline_corridor: {
    #                 polyline: "Polyline", # required
    #                 radius: 1, # required
    #               },
    #               polyline_polygon: ["PolylineRing"]
    #             }
    #           ],
    #           geometry: { # required
    #             bounding_box: [1.0],
    #             corridor: {
    #               line_string: [ # required
    #                 [1.0]
    #               ],
    #               radius: 1, # required
    #             },
    #             polygon: [
    #               [
    #                 [1.0]
    #               ]
    #             ],
    #             polyline_corridor: {
    #               polyline: "Polyline", # required
    #               radius: 1, # required
    #             },
    #             polyline_polygon: ["PolylineRing"]
    #           }
    #         }
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       seasonal_closure: false,
    #       toll_roads: false,
    #       toll_transponders: false,
    #       truck_road_types: ["TruckRoadType"],
    #       tunnels: false,
    #       u_turns: false,
    #       zone_categories: [
    #         {
    #           category: "IsolineZoneCategory"
    #         }
    #       ]
    #     },
    #     depart_now: false,
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0],
    #     destination_options: {
    #       avoid_actions_for_distance: 1,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchingStrategy"
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "SideOfStreetMatchingStrategy"
    #       }
    #     },
    #     isoline_geometry_format: "GeometryFormat",
    #     isoline_granularity: {
    #       max_points: 1,
    #       max_resolution: 1
    #     },
    #     key: "ApiKey",
    #     optimize_isoline_for: "IsolineOptimizationObjective",
    #     optimize_routing_for: "RoutingObjective",
    #     origin: [1.0],
    #     origin_options: {
    #       avoid_actions_for_distance: 1,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchingStrategy"
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "SideOfStreetMatchingStrategy"
    #       }
    #     },
    #     thresholds: { # required
    #       distance: [1],
    #       time: [1]
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "TrafficUsage"
    #     },
    #     travel_mode: "IsolineTravelMode",
    #     travel_mode_options: {
    #       car: {
    #         engine_type: "IsolineEngineType",
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       scooter: {
    #         engine_type: "IsolineEngineType",
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       truck: {
    #         axle_count: 1,
    #         engine_type: "IsolineEngineType",
    #         gross_weight: 1,
    #         hazardous_cargos: ["IsolineHazardousCargoType"],
    #         height: 1,
    #         height_above_first_axle: 1,
    #         kpra_length: 1,
    #         length: 1,
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #         payload_capacity: 1,
    #         tire_count: 1,
    #         trailer: {
    #           axle_count: 1,
    #           trailer_count: 1
    #         },
    #         truck_type: "IsolineTruckType",
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         weight_per_axle_group: {
    #           single: 1,
    #           tandem: 1,
    #           triple: 1,
    #           quad: 1,
    #           quint: 1
    #         },
    #         width: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.calculate_isolines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arrival_time: "TimestampWithTimezoneOffset",
    #     departure_time: "TimestampWithTimezoneOffset",
    #     isoline_geometry_format: "GeometryFormat", # required
    #     isolines: [ # required
    #       {
    #         connections: [ # required
    #           {
    #             from_polygon_index: 1, # required
    #             geometry: { # required
    #               line_string: [
    #                 [1.0]
    #               ],
    #               polyline: "Polyline"
    #             },
    #             to_polygon_index: 1, # required
    #           }
    #         ],
    #         distance_threshold: 1,
    #         geometries: [ # required
    #           {
    #             polygon: [
    #               [
    #                 [1.0]
    #               ]
    #             ],
    #             polyline_polygon: ["PolylineRing"]
    #           }
    #         ],
    #         time_threshold: 1
    #       }
    #     ],
    #     pricing_bucket: "String", # required
    #     snapped_destination: [1.0],
    #     snapped_origin: [1.0]
    #   }
    # @return [Types::CalculateIsolinesResponse]
    def calculate_isolines(params = {}, options = {})
      request = build_request(:calculate_isolines, params)
      request.send_request(options)
    end

    # <p> Use <code>CalculateRouteMatrix</code> to compute results for all pairs of Origins to Destinations. Each row corresponds to one entry in Origins. Each entry in the row corresponds to the route from that entry in Origins to an entry in Destinations positions.</p>
    # @param [Hash, Types::CalculateRouteMatrixRequest] params
    # @option params [Types::RouteMatrixAllowOptions] :allow
    #   <p>Features that are allowed while calculating a route.</p>
    # @option params [Types::RouteMatrixAvoidanceOptions] :avoid
    #   <p>Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    # @option params [Boolean] :depart_now
    #   <p>Uses the current time as the time of departure.</p>
    # @option params [String] :departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Types::RouteMatrixDestination>] :destinations
    #   <p>List of destinations for the route.</p> <note> <p>Route calculations are billed for each origin and destination pair. If you use a large matrix of origins and destinations, your costs will increase accordingly. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`"> Amazon Location's pricing page</a> for more information.</p> </note>
    # @option params [Types::RouteMatrixExclusionOptions] :exclude
    #   <p>Features to be strictly excluded while calculating the route.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :optimize_routing_for
    #   <p>Specifies the optimization criteria for calculating a route.</p> <p>Default Value: <code>FastestRoute</code> </p>
    # @option params [Array<Types::RouteMatrixOrigin>] :origins
    #   <p>The position in longitude and latitude for the origin.</p> <note> <p>Route calculations are billed for each origin and destination pair. Using a large amount of Origins in a request can lead you to incur unexpected charges. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`"> Amazon Location's pricing page</a> for more information.</p> </note>
    # @option params [Types::RouteMatrixBoundary] :routing_boundary
    #   <p>Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid.</p> <note> <p>When request routing boundary was set as AutoCircle, the response routing boundary will return Circle derived from the AutoCircle settings.</p> </note>
    # @option params [Types::RouteMatrixTrafficOptions] :traffic
    #   <p>Traffic related options.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    # @option params [Types::RouteMatrixTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     allow: {
    #       hot: false,
    #       hov: false
    #     },
    #     avoid: {
    #       areas: [
    #         {
    #           geometry: { # required
    #             bounding_box: [1.0],
    #             polygon: [
    #               [
    #                 [1.0]
    #               ]
    #             ],
    #             polyline_polygon: ["PolylineRing"]
    #           }
    #         }
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       toll_roads: false,
    #       toll_transponders: false,
    #       truck_road_types: ["TruckRoadType"],
    #       tunnels: false,
    #       u_turns: false,
    #       zone_categories: [
    #         {
    #           category: "RouteMatrixZoneCategory"
    #         }
    #       ]
    #     },
    #     depart_now: false,
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destinations: [ # required
    #       {
    #         options: {
    #           avoid_actions_for_distance: 1,
    #           heading: 1.0,
    #           matching: {
    #             name_hint: "SensitiveString",
    #             on_road_threshold: 1,
    #             radius: 1,
    #             strategy: "MatchingStrategy"
    #           },
    #           side_of_street: {
    #             position: [1.0], # required
    #             use_with: "SideOfStreetMatchingStrategy"
    #           }
    #         },
    #         position: [1.0], # required
    #       }
    #     ],
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     key: "ApiKey",
    #     optimize_routing_for: "RoutingObjective",
    #     origins: [ # required
    #       {
    #         options: {
    #           avoid_actions_for_distance: 1,
    #           heading: 1.0,
    #           matching: {
    #             name_hint: "SensitiveString",
    #             on_road_threshold: 1,
    #             radius: 1,
    #             strategy: "MatchingStrategy"
    #           },
    #           side_of_street: {
    #             position: [1.0], # required
    #             use_with: "SideOfStreetMatchingStrategy"
    #           }
    #         },
    #         position: [1.0], # required
    #       }
    #     ],
    #     routing_boundary: { # required
    #       geometry: {
    #         auto_circle: {
    #           margin: 1,
    #           max_radius: 1
    #         },
    #         circle: {
    #           center: [1.0], # required
    #           radius: 1.0, # required
    #         },
    #         bounding_box: [1.0],
    #         polygon: [
    #           [
    #             [1.0]
    #           ]
    #         ]
    #       },
    #       unbounded: false
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "TrafficUsage"
    #     },
    #     travel_mode: "RouteMatrixTravelMode",
    #     travel_mode_options: {
    #       car: {
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       scooter: {
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       truck: {
    #         axle_count: 1,
    #         gross_weight: 1,
    #         hazardous_cargos: ["RouteMatrixHazardousCargoType"],
    #         height: 1,
    #         kpra_length: 1,
    #         length: 1,
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #         payload_capacity: 1,
    #         trailer: {
    #           trailer_count: 1
    #         },
    #         truck_type: "RouteMatrixTruckType",
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         weight_per_axle_group: {
    #           single: 1,
    #           tandem: 1,
    #           triple: 1,
    #           quad: 1,
    #           quint: 1
    #         },
    #         width: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.calculate_route_matrix(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_count: 1, # required
    #     pricing_bucket: "String", # required
    #     route_matrix: [ # required
    #       [
    #         {
    #           distance: 1, # required
    #           duration: 1, # required
    #           error: "RouteMatrixErrorCode"
    #         }
    #       ]
    #     ],
    #     routing_boundary: { # required
    #       geometry: {
    #         auto_circle: {
    #           margin: 1,
    #           max_radius: 1
    #         },
    #         circle: {
    #           center: [1.0], # required
    #           radius: 1.0, # required
    #         },
    #         bounding_box: [1.0],
    #         polygon: [
    #           [
    #             [1.0]
    #           ]
    #         ]
    #       },
    #       unbounded: false
    #     }
    #   }
    # @return [Types::CalculateRouteMatrixResponse]
    def calculate_route_matrix(params = {}, options = {})
      request = build_request(:calculate_route_matrix, params)
      request.send_request(options)
    end

    # <p> <code>CalculateRoutes</code> computes routes given the following required parameters: <code>Origin</code> and <code>Destination</code>.</p>
    # @param [Hash, Types::CalculateRoutesRequest] params
    # @option params [Types::RouteAllowOptions] :allow
    #   <p>Features that are allowed while calculating a route.</p>
    # @option params [String] :arrival_time
    #   <p>Time of arrival at the destination.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Types::RouteAvoidanceOptions] :avoid
    #   <p>Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    # @option params [Boolean] :depart_now
    #   <p>Uses the current time as the time of departure.</p>
    # @option params [String] :departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Float>] :destination
    #   <p>The final position for the route. In the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    # @option params [Types::RouteDestinationOptions] :destination_options
    #   <p>Destination related options.</p>
    # @option params [Types::RouteDriverOptions] :driver
    #   <p>Driver related options.</p>
    # @option params [Types::RouteExclusionOptions] :exclude
    #   <p>Features to be strictly excluded while calculating the route.</p>
    # @option params [String] :instructions_measurement_system
    #   <p>Measurement system to be used for instructions within steps in the response.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [Array<String>] :languages
    #   <p>List of languages for instructions within steps in the response.</p> <note> <p>Instructions in the requested language are returned only if they are available.</p> </note>
    # @option params [Array<String>] :leg_additional_features
    #   <p>A list of optional additional parameters such as timezone that can be requested for each result.</p> <ul> <li> <p> <code>Elevation</code>: Retrieves the elevation information for each location.</p> </li> <li> <p> <code>Incidents</code>: Provides information on traffic incidents along the route.</p> </li> <li> <p> <code>PassThroughWaypoints</code>: Indicates waypoints that are passed through without stopping.</p> </li> <li> <p> <code>Summary</code>: Returns a summary of the route, including distance and duration.</p> </li> <li> <p> <code>Tolls</code>: Supplies toll cost information along the route.</p> </li> <li> <p> <code>TravelStepInstructions</code>: Provides step-by-step instructions for travel along the route.</p> </li> <li> <p> <code>TruckRoadTypes</code>: Returns information about road types suitable for trucks.</p> </li> <li> <p> <code>TypicalDuration</code>: Gives typical travel duration based on historical data.</p> </li> <li> <p> <code>Zones</code>: Specifies the time zone information for each waypoint.</p> </li> </ul>
    # @option params [String] :leg_geometry_format
    #   <p>Specifies the format of the geometry returned for each leg of the route. You can choose between two different geometry encoding formats.</p> <p> <code>FlexiblePolyline</code>: A compact and precise encoding format for the leg geometry. For more information on the format, see the GitHub repository for <a href="https://github.com/heremaps/flexible-polyline"> <code>FlexiblePolyline</code> </a>.</p> <p> <code>Simple</code>: A less compact encoding, which is easier to decode but may be less precise and result in larger payloads.</p>
    # @option params [Integer] :max_alternatives
    #   <p>Maximum number of alternative routes to be provided in the response, if available.</p>
    # @option params [String] :optimize_routing_for
    #   <p>Specifies the optimization criteria for calculating a route.</p> <p>Default Value: <code>FastestRoute</code> </p>
    # @option params [Array<Float>] :origin
    #   <p>The start position for the route.</p>
    # @option params [Types::RouteOriginOptions] :origin_options
    #   <p>Origin related options.</p>
    # @option params [Array<String>] :span_additional_features
    #   <p>A list of optional features such as SpeedLimit that can be requested for a Span. A span is a section of a Leg for which the requested features have the same values.</p>
    # @option params [Types::RouteTollOptions] :tolls
    #   <p>Toll related options.</p>
    # @option params [Types::RouteTrafficOptions] :traffic
    #   <p>Traffic related options.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    # @option params [Types::RouteTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @option params [String] :travel_step_type
    #   <p>Type of step returned by the response. Default provides basic steps intended for web based applications. TurnByTurn provides detailed instructions with more granularity intended for a turn based navigation system.</p>
    # @option params [Array<Types::RouteWaypoint>] :waypoints
    #   <p>List of waypoints between the Origin and Destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     allow: {
    #       hot: false,
    #       hov: false
    #     },
    #     arrival_time: "TimestampWithTimezoneOffset",
    #     avoid: {
    #       areas: [
    #         {
    #           except: [
    #             {
    #               corridor: {
    #                 line_string: [ # required
    #                   [1.0]
    #                 ],
    #                 radius: 1, # required
    #               },
    #               bounding_box: [1.0],
    #               polygon: [
    #                 [
    #                   [1.0]
    #                 ]
    #               ],
    #               polyline_corridor: {
    #                 polyline: "Polyline", # required
    #                 radius: 1, # required
    #               },
    #               polyline_polygon: ["PolylineRing"]
    #             }
    #           ],
    #           geometry: { # required
    #             corridor: {
    #               line_string: [ # required
    #                 [1.0]
    #               ],
    #               radius: 1, # required
    #             },
    #             bounding_box: [1.0],
    #             polygon: [
    #               [
    #                 [1.0]
    #               ]
    #             ],
    #             polyline_corridor: {
    #               polyline: "Polyline", # required
    #               radius: 1, # required
    #             },
    #             polyline_polygon: ["PolylineRing"]
    #           }
    #         }
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       seasonal_closure: false,
    #       toll_roads: false,
    #       toll_transponders: false,
    #       truck_road_types: ["TruckRoadType"],
    #       tunnels: false,
    #       u_turns: false,
    #       zone_categories: [
    #         {
    #           category: "RouteZoneCategory", # required
    #         }
    #       ]
    #     },
    #     depart_now: false,
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0], # required
    #     destination_options: {
    #       avoid_actions_for_distance: 1,
    #       avoid_u_turns: false,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchingStrategy"
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "SideOfStreetMatchingStrategy"
    #       },
    #       stop_duration: 1
    #     },
    #     driver: {
    #       schedule: [
    #         {
    #           drive_duration: 1, # required
    #           rest_duration: 1, # required
    #         }
    #       ]
    #     },
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     instructions_measurement_system: "MeasurementSystem",
    #     key: "ApiKey",
    #     languages: ["LanguageTag"],
    #     leg_additional_features: ["RouteLegAdditionalFeature"],
    #     leg_geometry_format: "GeometryFormat",
    #     max_alternatives: 1,
    #     optimize_routing_for: "RoutingObjective",
    #     origin: [1.0], # required
    #     origin_options: {
    #       avoid_actions_for_distance: 1,
    #       avoid_u_turns: false,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchingStrategy"
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "SideOfStreetMatchingStrategy"
    #       }
    #     },
    #     span_additional_features: ["RouteSpanAdditionalFeature"],
    #     tolls: {
    #       all_transponders: false,
    #       all_vignettes: false,
    #       currency: "CurrencyCode",
    #       emission_type: {
    #         co2_emission_class: "SensitiveString",
    #         type: "SensitiveString", # required
    #       },
    #       vehicle_category: "RouteTollVehicleCategory"
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "TrafficUsage"
    #     },
    #     travel_mode: "RouteTravelMode",
    #     travel_mode_options: {
    #       car: {
    #         engine_type: "RouteEngineType",
    #         license_plate: {
    #           last_character: "SensitiveString"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       pedestrian: {
    #         speed: 1.0
    #       },
    #       scooter: {
    #         engine_type: "RouteEngineType",
    #         license_plate: {
    #           last_character: "SensitiveString"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       truck: {
    #         axle_count: 1,
    #         engine_type: "RouteEngineType",
    #         gross_weight: 1,
    #         hazardous_cargos: ["RouteHazardousCargoType"],
    #         height: 1,
    #         height_above_first_axle: 1,
    #         kpra_length: 1,
    #         length: 1,
    #         license_plate: {
    #           last_character: "SensitiveString"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1,
    #         payload_capacity: 1,
    #         tire_count: 1,
    #         trailer: {
    #           axle_count: 1,
    #           trailer_count: 1
    #         },
    #         truck_type: "RouteTruckType",
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         weight_per_axle_group: {
    #           single: 1,
    #           tandem: 1,
    #           triple: 1,
    #           quad: 1,
    #           quint: 1
    #         },
    #         width: 1
    #       }
    #     },
    #     travel_step_type: "RouteTravelStepType",
    #     waypoints: [
    #       {
    #         avoid_actions_for_distance: 1,
    #         avoid_u_turns: false,
    #         heading: 1.0,
    #         matching: {
    #           name_hint: "SensitiveString",
    #           on_road_threshold: 1,
    #           radius: 1,
    #           strategy: "MatchingStrategy"
    #         },
    #         pass_through: false,
    #         position: [1.0], # required
    #         side_of_street: {
    #           position: [1.0], # required
    #           use_with: "SideOfStreetMatchingStrategy"
    #         },
    #         stop_duration: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.calculate_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     leg_geometry_format: "GeometryFormat", # required
    #     notices: [ # required
    #       {
    #         code: "RouteResponseNoticeCode", # required
    #         impact: "RouteNoticeImpact"
    #       }
    #     ],
    #     pricing_bucket: "String", # required
    #     routes: [ # required
    #       {
    #         legs: [ # required
    #           {
    #             ferry_leg_details: {
    #               after_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "RouteFerryAfterTravelStepType", # required
    #                 }
    #               ],
    #               arrival: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               before_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "RouteFerryBeforeTravelStepType", # required
    #                 }
    #               ],
    #               departure: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               notices: [ # required
    #                 {
    #                   code: "RouteFerryNoticeCode", # required
    #                   impact: "RouteNoticeImpact"
    #                 }
    #               ],
    #               pass_through_waypoints: [ # required
    #                 {
    #                   geometry_offset: 1,
    #                   place: { # required
    #                     original_position: [1.0],
    #                     position: [1.0], # required
    #                     waypoint_index: 1
    #                   }
    #                 }
    #               ],
    #               route_name: "SensitiveString",
    #               spans: [ # required
    #                 {
    #                   country: "CountryCode3",
    #                   distance: 1,
    #                   duration: 1,
    #                   geometry_offset: 1,
    #                   names: [
    #                     {
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   region: "SensitiveString"
    #                 }
    #               ],
    #               summary: {
    #                 overview: {
    #                   distance: 1, # required
    #                   duration: 1, # required
    #                 },
    #                 travel_only: {
    #                   duration: 1, # required
    #                 }
    #               },
    #               travel_steps: [ # required
    #                 {
    #                   distance: 1,
    #                   duration: 1, # required
    #                   geometry_offset: 1,
    #                   instruction: "SensitiveString",
    #                   type: "RouteFerryTravelStepType", # required
    #                 }
    #               ]
    #             },
    #             geometry: { # required
    #               line_string: [
    #                 [1.0]
    #               ],
    #               polyline: "Polyline"
    #             },
    #             language: "LanguageTag",
    #             pedestrian_leg_details: {
    #               arrival: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "RouteSideOfStreet",
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               departure: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "RouteSideOfStreet",
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               notices: [ # required
    #                 {
    #                   code: "RoutePedestrianNoticeCode", # required
    #                   impact: "RouteNoticeImpact"
    #                 }
    #               ],
    #               pass_through_waypoints: [ # required
    #                 {
    #                   geometry_offset: 1,
    #                   place: { # required
    #                     original_position: [1.0],
    #                     position: [1.0], # required
    #                     waypoint_index: 1
    #                   }
    #                 }
    #               ],
    #               spans: [ # required
    #                 {
    #                   best_case_duration: 1,
    #                   country: "CountryCode3",
    #                   distance: 1,
    #                   duration: 1,
    #                   dynamic_speed: {
    #                     best_case_speed: 1.0,
    #                     turn_duration: 1,
    #                     typical_speed: 1.0
    #                   },
    #                   functional_classification: 1,
    #                   geometry_offset: 1,
    #                   incidents: [1],
    #                   names: [
    #                     {
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   pedestrian_access: ["RouteSpanPedestrianAccessAttribute"],
    #                   region: "SensitiveString",
    #                   road_attributes: ["RouteSpanRoadAttribute"],
    #                   route_numbers: [
    #                     {
    #                       direction: "RouteDirection",
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   speed_limit: {
    #                     max_speed: 1.0,
    #                     unlimited: false
    #                   },
    #                   typical_duration: 1
    #                 }
    #               ],
    #               summary: {
    #                 overview: {
    #                   distance: 1, # required
    #                   duration: 1, # required
    #                 },
    #                 travel_only: {
    #                   duration: 1, # required
    #                 }
    #               },
    #               travel_steps: [ # required
    #                 {
    #                   continue_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ]
    #                   },
    #                   current_road: {
    #                     road_name: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     route_number: [ # required
    #                       {
    #                         direction: "RouteDirection",
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     towards: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     type: "RouteRoadType"
    #                   },
    #                   distance: 1,
    #                   duration: 1, # required
    #                   exit_number: [
    #                     {
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   geometry_offset: 1,
    #                   instruction: "SensitiveString",
    #                   keep_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   next_road: {
    #                     road_name: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     route_number: [ # required
    #                       {
    #                         direction: "RouteDirection",
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     towards: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     type: "RouteRoadType"
    #                   },
    #                   roundabout_enter_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   roundabout_exit_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     relative_exit: 1,
    #                     roundabout_angle: 1.0,
    #                     steering_direction: "RouteSteeringDirection"
    #                   },
    #                   roundabout_pass_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   signpost: {
    #                     labels: [ # required
    #                       {
    #                         route_number: {
    #                           direction: "RouteDirection",
    #                           language: "LanguageTag",
    #                           value: "SensitiveString", # required
    #                         },
    #                         text: {
    #                           language: "LanguageTag",
    #                           value: "SensitiveString", # required
    #                         }
    #                       }
    #                     ]
    #                   },
    #                   turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   type: "RoutePedestrianTravelStepType", # required
    #                 }
    #               ]
    #             },
    #             travel_mode: "RouteLegTravelMode", # required
    #             type: "RouteLegType", # required
    #             vehicle_leg_details: {
    #               arrival: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "RouteSideOfStreet",
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               departure: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "RouteSideOfStreet",
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               incidents: [ # required
    #                 {
    #                   description: "SensitiveString",
    #                   end_time: "TimestampWithTimezoneOffset",
    #                   severity: "RouteVehicleIncidentSeverity",
    #                   start_time: "TimestampWithTimezoneOffset",
    #                   type: "RouteVehicleIncidentType"
    #                 }
    #               ],
    #               notices: [ # required
    #                 {
    #                   code: "RouteVehicleNoticeCode", # required
    #                   details: [ # required
    #                     {
    #                       title: "SensitiveString",
    #                       violated_constraints: {
    #                         all_hazards_restricted: false,
    #                         axle_count: {
    #                           min: 1,
    #                           max: 1
    #                         },
    #                         hazardous_cargos: ["RouteHazardousCargoType"], # required
    #                         max_height: 1,
    #                         max_kpra_length: 1,
    #                         max_length: 1,
    #                         max_payload_capacity: 1,
    #                         max_weight: {
    #                           type: "RouteWeightConstraintType", # required
    #                           value: 1, # required
    #                         },
    #                         max_weight_per_axle: 1,
    #                         max_weight_per_axle_group: {
    #                           single: 1,
    #                           tandem: 1,
    #                           triple: 1,
    #                           quad: 1,
    #                           quint: 1
    #                         },
    #                         max_width: 1,
    #                         occupancy: {
    #                           min: 1,
    #                           max: 1
    #                         },
    #                         restricted_times: "String",
    #                         time_dependent: false,
    #                         trailer_count: {
    #                           min: 1,
    #                           max: 1
    #                         },
    #                         travel_mode: false,
    #                         truck_road_type: "String",
    #                         truck_type: "RouteTruckType",
    #                         tunnel_restriction_code: "TunnelRestrictionCode"
    #                       }
    #                     }
    #                   ],
    #                   impact: "RouteNoticeImpact"
    #                 }
    #               ],
    #               pass_through_waypoints: [ # required
    #                 {
    #                   geometry_offset: 1,
    #                   place: { # required
    #                     original_position: [1.0],
    #                     position: [1.0], # required
    #                     waypoint_index: 1
    #                   }
    #                 }
    #               ],
    #               spans: [ # required
    #                 {
    #                   best_case_duration: 1,
    #                   car_access: ["RouteSpanCarAccessAttribute"],
    #                   country: "CountryCode3",
    #                   distance: 1,
    #                   duration: 1,
    #                   dynamic_speed: {
    #                     best_case_speed: 1.0,
    #                     turn_duration: 1,
    #                     typical_speed: 1.0
    #                   },
    #                   functional_classification: 1,
    #                   gate: "RouteSpanGateAttribute",
    #                   geometry_offset: 1,
    #                   incidents: [1],
    #                   names: [
    #                     {
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   notices: [1],
    #                   railway_crossing: "RouteSpanRailwayCrossingAttribute",
    #                   region: "SensitiveString",
    #                   road_attributes: ["RouteSpanRoadAttribute"],
    #                   route_numbers: [
    #                     {
    #                       direction: "RouteDirection",
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   scooter_access: ["RouteSpanScooterAccessAttribute"],
    #                   speed_limit: {
    #                     max_speed: 1.0,
    #                     unlimited: false
    #                   },
    #                   toll_systems: [1],
    #                   truck_access: ["RouteSpanTruckAccessAttribute"],
    #                   truck_road_types: [1],
    #                   typical_duration: 1,
    #                   zones: [1]
    #                 }
    #               ],
    #               summary: {
    #                 overview: {
    #                   best_case_duration: 1,
    #                   distance: 1, # required
    #                   duration: 1, # required
    #                   typical_duration: 1
    #                 },
    #                 travel_only: {
    #                   best_case_duration: 1,
    #                   duration: 1, # required
    #                   typical_duration: 1
    #                 }
    #               },
    #               tolls: [ # required
    #                 {
    #                   country: "CountryCode3",
    #                   payment_sites: [ # required
    #                     {
    #                       name: "String",
    #                       position: [1.0], # required
    #                     }
    #                   ],
    #                   rates: [ # required
    #                     {
    #                       applicable_times: "SensitiveString",
    #                       converted_price: {
    #                         currency: "CurrencyCode", # required
    #                         estimate: false, # required
    #                         per_duration: 1,
    #                         range: false, # required
    #                         range_value: {
    #                           min: 1.0, # required
    #                           max: 1.0, # required
    #                         },
    #                         value: 1.0, # required
    #                       },
    #                       id: "SensitiveString", # required
    #                       local_price: { # required
    #                         currency: "CurrencyCode", # required
    #                         estimate: false, # required
    #                         per_duration: 1,
    #                         range: false, # required
    #                         range_value: {
    #                           min: 1.0, # required
    #                           max: 1.0, # required
    #                         },
    #                         value: 1.0, # required
    #                       },
    #                       name: "SensitiveString", # required
    #                       pass: {
    #                         includes_return_trip: false,
    #                         senior_pass: false,
    #                         transfer_count: 1,
    #                         trip_count: 1,
    #                         validity_period: {
    #                           period: "RouteTollPassValidityPeriodType", # required
    #                           period_count: 1
    #                         }
    #                       },
    #                       payment_methods: ["RouteTollPaymentMethod"], # required
    #                       transponders: [ # required
    #                         {
    #                           system_name: "SensitiveString"
    #                         }
    #                       ]
    #                     }
    #                   ],
    #                   systems: [1], # required
    #                 }
    #               ],
    #               toll_systems: [ # required
    #                 {
    #                   name: "SensitiveString"
    #                 }
    #               ],
    #               travel_steps: [ # required
    #                 {
    #                   continue_highway_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   continue_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ]
    #                   },
    #                   current_road: {
    #                     road_name: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     route_number: [ # required
    #                       {
    #                         direction: "RouteDirection",
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     towards: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     type: "RouteRoadType"
    #                   },
    #                   distance: 1,
    #                   duration: 1, # required
    #                   enter_highway_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   exit_number: [
    #                     {
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   exit_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     relative_exit: 1,
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   geometry_offset: 1,
    #                   instruction: "SensitiveString",
    #                   keep_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   next_road: {
    #                     road_name: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     route_number: [ # required
    #                       {
    #                         direction: "RouteDirection",
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     towards: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     type: "RouteRoadType"
    #                   },
    #                   ramp_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   roundabout_enter_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   roundabout_exit_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     relative_exit: 1,
    #                     roundabout_angle: 1.0,
    #                     steering_direction: "RouteSteeringDirection"
    #                   },
    #                   roundabout_pass_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   signpost: {
    #                     labels: [ # required
    #                       {
    #                         route_number: {
    #                           direction: "RouteDirection",
    #                           language: "LanguageTag",
    #                           value: "SensitiveString", # required
    #                         },
    #                         text: {
    #                           language: "LanguageTag",
    #                           value: "SensitiveString", # required
    #                         }
    #                       }
    #                     ]
    #                   },
    #                   turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   },
    #                   type: "RouteVehicleTravelStepType", # required
    #                   u_turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "RouteSteeringDirection",
    #                     turn_angle: 1.0,
    #                     turn_intensity: "RouteTurnIntensity"
    #                   }
    #                 }
    #               ],
    #               truck_road_types: ["TruckRoadType"], # required
    #               zones: [ # required
    #                 {
    #                   category: "RouteZoneCategory",
    #                   name: "SensitiveString"
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         major_road_labels: [ # required
    #           {
    #             road_name: {
    #               language: "LanguageTag",
    #               value: "SensitiveString", # required
    #             },
    #             route_number: {
    #               direction: "RouteDirection",
    #               language: "LanguageTag",
    #               value: "SensitiveString", # required
    #             }
    #           }
    #         ],
    #         summary: {
    #           distance: 1,
    #           duration: 1,
    #           tolls: {
    #             total: {
    #               currency: "CurrencyCode", # required
    #               estimate: false, # required
    #               range: false, # required
    #               range_value: {
    #                 min: 1.0, # required
    #                 max: 1.0, # required
    #               },
    #               value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CalculateRoutesResponse]
    def calculate_routes(params = {}, options = {})
      request = build_request(:calculate_routes, params)
      request.send_request(options)
    end

    # <p> <code>OptimizeWaypoints</code> calculates the optimal order to travel between a set of waypoints to minimize either the travel time or the distance travelled during the journey, based on road network restrictions and the traffic pattern data.</p>
    # @param [Hash, Types::OptimizeWaypointsRequest] params
    # @option params [Types::WaypointOptimizationAvoidanceOptions] :avoid
    #   <p>Features that are avoided. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, this setting is ignored.</p>
    # @option params [Types::WaypointOptimizationClusteringOptions] :clustering
    #   <p>Clustering allows you to specify how nearby waypoints can be clustered to improve the optimized sequence.</p>
    # @option params [String] :departure_time
    #   <p>Departure time from the waypoint.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Float>] :destination
    #   <p>The final position for the route in the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    # @option params [Types::WaypointOptimizationDestinationOptions] :destination_options
    #   <p>Destination related options.</p>
    # @option params [Types::WaypointOptimizationDriverOptions] :driver
    #   <p>Driver related options.</p>
    # @option params [Types::WaypointOptimizationExclusionOptions] :exclude
    #   <p>Features to be strictly excluded while calculating the route.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :optimize_sequencing_for
    #   <p>Specifies the optimization criteria for the calculated sequence.</p> <p>Default Value: <code>FastestRoute</code>.</p>
    # @option params [Array<Float>] :origin
    #   <p>The start position for the route.</p>
    # @option params [Types::WaypointOptimizationOriginOptions] :origin_options
    #   <p>Origin related options.</p>
    # @option params [Types::WaypointOptimizationTrafficOptions] :traffic
    #   <p>Traffic-related options.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    # @option params [Types::WaypointOptimizationTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @option params [Array<Types::WaypointOptimizationWaypoint>] :waypoints
    #   <p>List of waypoints between the <code>Origin</code> and <code>Destination</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     avoid: {
    #       areas: [
    #         {
    #           geometry: { # required
    #             bounding_box: [1.0]
    #           }
    #         }
    #       ],
    #       car_shuttle_trains: false,
    #       controlled_access_highways: false,
    #       dirt_roads: false,
    #       ferries: false,
    #       toll_roads: false,
    #       tunnels: false,
    #       u_turns: false
    #     },
    #     clustering: {
    #       algorithm: "WaypointOptimizationClusteringAlgorithm", # required
    #       driving_distance_options: {
    #         driving_distance: 1, # required
    #       }
    #     },
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0],
    #     destination_options: {
    #       access_hours: {
    #         from: { # required
    #           day_of_week: "DayOfWeek", # required
    #           time_of_day: "TimeOfDay", # required
    #         },
    #         to: { # required
    #           day_of_week: "DayOfWeek", # required
    #           time_of_day: "TimeOfDay", # required
    #         }
    #       },
    #       appointment_time: "TimestampWithTimezoneOffset",
    #       heading: 1.0,
    #       id: "WaypointId",
    #       service_duration: 1,
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "SideOfStreetMatchingStrategy"
    #       }
    #     },
    #     driver: {
    #       rest_cycles: {
    #         long_cycle: { # required
    #           rest_duration: 1, # required
    #           work_duration: 1, # required
    #         },
    #         short_cycle: { # required
    #           rest_duration: 1, # required
    #           work_duration: 1, # required
    #         }
    #       },
    #       rest_profile: {
    #         profile: "SensitiveString", # required
    #       },
    #       treat_service_time_as: "WaypointOptimizationServiceTimeTreatment"
    #     },
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     key: "ApiKey",
    #     optimize_sequencing_for: "WaypointOptimizationSequencingObjective",
    #     origin: [1.0], # required
    #     origin_options: {
    #       id: "WaypointId"
    #     },
    #     traffic: {
    #       usage: "TrafficUsage"
    #     },
    #     travel_mode: "WaypointOptimizationTravelMode",
    #     travel_mode_options: {
    #       pedestrian: {
    #         speed: 1.0
    #       },
    #       truck: {
    #         gross_weight: 1,
    #         hazardous_cargos: ["WaypointOptimizationHazardousCargoType"],
    #         height: 1,
    #         length: 1,
    #         trailer: {
    #           trailer_count: 1
    #         },
    #         truck_type: "WaypointOptimizationTruckType",
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         width: 1
    #       }
    #     },
    #     waypoints: [
    #       {
    #         access_hours: {
    #           from: { # required
    #             day_of_week: "DayOfWeek", # required
    #             time_of_day: "TimeOfDay", # required
    #           },
    #           to: { # required
    #             day_of_week: "DayOfWeek", # required
    #             time_of_day: "TimeOfDay", # required
    #           }
    #         },
    #         appointment_time: "TimestampWithTimezoneOffset",
    #         before: [1],
    #         heading: 1.0,
    #         id: "WaypointId",
    #         position: [1.0], # required
    #         service_duration: 1,
    #         side_of_street: {
    #           position: [1.0], # required
    #           use_with: "SideOfStreetMatchingStrategy"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.optimize_waypoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [ # required
    #       {
    #         distance: 1, # required
    #         from: "WaypointId", # required
    #         rest_duration: 1, # required
    #         to: "WaypointId", # required
    #         travel_duration: 1, # required
    #         wait_duration: 1, # required
    #       }
    #     ],
    #     distance: 1, # required
    #     duration: 1, # required
    #     impeding_waypoints: [ # required
    #       {
    #         failed_constraints: [ # required
    #           {
    #             constraint: "WaypointOptimizationConstraint",
    #             reason: "SensitiveString"
    #           }
    #         ],
    #         id: "WaypointId", # required
    #         position: [1.0], # required
    #       }
    #     ],
    #     optimized_waypoints: [ # required
    #       {
    #         arrival_time: "TimestampWithTimezoneOffset",
    #         cluster_index: 1,
    #         departure_time: "TimestampWithTimezoneOffset", # required
    #         id: "WaypointId", # required
    #         position: [1.0], # required
    #       }
    #     ],
    #     pricing_bucket: "String", # required
    #     time_breakdown: { # required
    #       rest_duration: 1, # required
    #       service_duration: 1, # required
    #       travel_duration: 1, # required
    #       wait_duration: 1, # required
    #     }
    #   }
    # @return [Types::OptimizeWaypointsResponse]
    def optimize_waypoints(params = {}, options = {})
      request = build_request(:optimize_waypoints, params)
      request.send_request(options)
    end

    # <p> <code>SnapToRoads</code> matches GPS trace to roads most likely traveled on.</p>
    # @param [Hash, Types::SnapToRoadsRequest] params
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :snapped_geometry_format
    #   <p>Chooses what the returned SnappedGeometry format should be.</p> <p>Default Value: <code>FlexiblePolyline</code> </p>
    # @option params [Integer] :snap_radius
    #   <p>The radius around the provided tracepoint that is considered for snapping.</p> <p> <b>Unit</b>: <code>meters</code> </p> <p>Default value: <code>300</code> </p>
    # @option params [Array<Types::RoadSnapTracePoint>] :trace_points
    #   <p>List of trace points to be snapped onto the road network.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    # @option params [Types::RoadSnapTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key: "ApiKey",
    #     snapped_geometry_format: "GeometryFormat",
    #     snap_radius: 1,
    #     trace_points: [ # required
    #       {
    #         heading: 1.0,
    #         position: [1.0], # required
    #         speed: 1.0,
    #         timestamp: "TimestampWithTimezoneOffset"
    #       }
    #     ],
    #     travel_mode: "RoadSnapTravelMode",
    #     travel_mode_options: {
    #       truck: {
    #         gross_weight: 1,
    #         hazardous_cargos: ["RoadSnapHazardousCargoType"],
    #         height: 1,
    #         length: 1,
    #         trailer: {
    #           trailer_count: 1
    #         },
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         width: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.snap_to_roads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notices: [ # required
    #       {
    #         code: "RoadSnapNoticeCode", # required
    #         title: "SensitiveString", # required
    #         trace_point_indexes: [1], # required
    #       }
    #     ],
    #     pricing_bucket: "String", # required
    #     snapped_geometry: {
    #       line_string: [
    #         [1.0]
    #       ],
    #       polyline: "Polyline"
    #     },
    #     snapped_geometry_format: "GeometryFormat", # required
    #     snapped_trace_points: [ # required
    #       {
    #         confidence: 1.0, # required
    #         original_position: [1.0], # required
    #         snapped_position: [1.0], # required
    #       }
    #     ]
    #   }
    # @return [Types::SnapToRoadsResponse]
    def snap_to_roads(params = {}, options = {})
      request = build_request(:snap_to_roads, params)
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
      context[:gem_name] = 'aws-sdk-georoutes'
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
