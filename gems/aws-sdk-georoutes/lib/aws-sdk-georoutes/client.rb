# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:georoutes)

module Aws::GeoRoutes
  # An API client for Aws::GeoRoutes.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RoutesService
    @identifier = :georoutes

    add_plugin(::Aws::GeoRoutes::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::GeoRoutes::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Calculates areas that can be reached within specified time or distance thresholds from a given point. For example, you can use this operation to determine the area within a 30-minute drive of a store location, find neighborhoods within walking distance of a school, or identify delivery zones based on drive time.</p> <p>Isolines (also known as isochrones for time-based calculations) are useful for various applications including:</p> <ul> <li> <p>Service area visualization - Show customers the area you can serve within promised delivery times</p> </li> <li> <p>Site selection - Analyze potential business locations based on population within travel distance</p> </li> <li> <p>Site selection - Determine areas that can be reached within specified response times</p> </li> </ul> <note> <p>Route preferences such as avoiding toll roads or ferries are treated as preferences rather than absolute restrictions. If a viable route cannot be calculated while honoring all preferences, some may be ignored.</p> </note> <p>For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-isolines.html">Calculate isolines</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    # @param [Hash, Types::CalculateIsolinesRequest] params
    # @option params [Types::IsolineAllowOptions] :allow
    #   <p>Enables special road types or features that should be considered for routing even if they might be restricted by default for the selected travel mode. These include high-occupancy vehicle and toll lanes.</p>
    # @option params [String] :arrival_time
    #   <p>Determine areas from which <code>Destination</code> can be reached by this time, taking into account predicted traffic conditions and working backward to account for congestion patterns. This attribute cannot be used together with <code>DepartureTime</code> or <code>DepartNow</code>. Specified as an ISO-8601 timestamp with timezone offset.</p> <p>Time format: <code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Types::IsolineAvoidanceOptions] :avoid
    #   <p>Specifies road types, features, or areas to avoid (if possible) when calculating reachable areas. These are treated as preferences rather than strict constraints—if a route cannot be calculated without using an avoided feature, that avoidance preference may be ignored.</p>
    # @option params [Boolean] :depart_now
    #   <p>When true, uses the current time as the departure time and takes current traffic conditions into account. This attribute cannot be used together with <code>DepartureTime</code> or <code>ArrivalTime</code>.</p>
    # @option params [String] :departure_time
    #   <p>Determine areas that can be reached when departing at this time, taking into account predicted traffic conditions. This attribute cannot be used together with <code>ArrivalTime</code> or <code>DepartNow</code>. Specified as an ISO-8601 timestamp with timezone offset.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Float>] :destination
    #   <p>An optional destination point, specified as <code>[longitude, latitude]</code> coordinates. When provided, the service calculates areas from which this destination can be reached within the specified thresholds. This reverses the usual isoline calculation to show areas that could reach your location, rather than areas you could reach from your location. Either <code>Origin</code> or <code>Destination</code> must be provided.</p>
    # @option params [Types::IsolineDestinationOptions] :destination_options
    #   <p>Options that control how the destination point is matched to the road network and how routes can approach it. These options help improve travel time accuracy by accounting for real-world access to the destination.</p>
    # @option params [String] :isoline_geometry_format
    #   <p>The format of the returned IsolineGeometry. </p> <p>Default value:<code>FlexiblePolyline</code> </p>
    # @option params [Types::IsolineGranularityOptions] :isoline_granularity
    #   <p>Controls the detail level of the generated isolines. Higher granularity produces smoother shapes but requires more processing time and results in larger responses.</p>
    # @option params [String] :key
    #   <p>An Amazon Location Service API Key with access to this action. If omitted, the request must be signed using Signature Version 4.</p>
    # @option params [String] :optimize_isoline_for
    #   <p>Controls the trade-off between calculation speed and isoline precision. Choose <code> FastCalculation</code> for quicker results with less detail, <code>AccurateCalculation</code> for more precise results, or <code>BalancedCalculation</code> for a middle ground.</p> <p>Default value: <code>BalancedCalculation</code> </p>
    # @option params [String] :optimize_routing_for
    #   <p>Determines whether routes prioritize shortest travel time (<code>FastestRoute</code>) or shortest physical distance (<code>ShortestRoute</code>) when calculating reachable areas.</p> <p>Default value: <code>FastestRoute</code> </p>
    # @option params [Array<Float>] :origin
    #   <p>The starting point for isoline calculations, specified as <code>[longitude, latitude]</code> coordinates. For example, this could be a store location, service center, or any point from which you want to calculate reachable areas. Either <code>Origin</code> or <code>Destination</code> must be provided.</p>
    # @option params [Types::IsolineOriginOptions] :origin_options
    #   <p>Options that control how the origin point is matched to the road network and how routes can depart from it. These options help improve travel time accuracy by accounting for real-world access from the origin.</p>
    # @option params [Types::IsolineThresholds] :thresholds
    #   <p>The distance or time thresholds used to determine reachable areas. You can specify up to five thresholds (which all must be the same type) to calculate multiple isolines in a single request. For example, to determine the areas that are reachable within 10 and 20 minutes of the origin, specify time thresholds of 600 and 1200 seconds.</p> <p>You incur a calculation charge for each threshold. Using a large number of thresholds in a request can lead to unexpected charges. For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html">Routes pricing</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    # @option params [Types::IsolineTrafficOptions] :traffic
    #   <p>Configures how real-time and historical traffic data affects isoline calculations. Traffic patterns can significantly impact reachable areas, especially during peak hours.</p>
    # @option params [String] :travel_mode
    #   <p>The mode of transportation to use for calculations. This affects which road types or features can be used, estimated speed, and the traffic levels that are applied.</p> <ul> <li> <p> <code>Car</code>—Standard passenger vehicle routing using roads accessible to cars</p> </li> <li> <p> <code>Pedestrian</code>—Walking routes using pedestrian paths, sidewalks, and crossings</p> </li> <li> <p> <code>Scooter</code>—Light two-wheeled vehicle routing using roads and paths accessible to scooters</p> </li> <li> <p> <code>Truck</code>—Commercial truck routing considering vehicle dimensions, weight restrictions, and hazardous material regulations</p> </li> </ul> <note> <p>The mode <code>Scooter</code> also applies to motorcycles; set this to <code>Scooter</code> when calculating isolines for motorcycles.</p> </note> <p>Default value: <code>Car</code> </p>
    # @option params [Types::IsolineTravelModeOptions] :travel_mode_options
    #   <p>Additional attributes that refine how reachable areas are calculated based on specific vehicle characteristics. These options help produce more accurate results by accounting for real-world constraints and capabilities.</p> <p>For example:</p> <ul> <li> <p>For trucks (<code>Truck</code>), specify dimensions, weight limits, and hazardous cargo restrictions to ensure isolines only include roads that can physically and legally accommodate the vehicle</p> </li> <li> <p>For cars (<code>Car</code>), set maximum speed capabilities or indicate high-occupancy vehicle eligibility to better estimate reachable areas</p> </li> <li> <p>For scooters (<code>Scooter</code>), specify engine type and speed limitations to more accurately model their travel capabilities</p> </li> </ul> <p>Without these options, calculations use default assumptions that may not match your specific use case.</p>
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
    #           category: "CongestionPricing" # One of: ["CongestionPricing", "Environmental", "Vignette"]
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
    #         strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
    #       }
    #     },
    #     isoline_geometry_format: "FlexiblePolyline" # One of: ["FlexiblePolyline", "Simple"],
    #     isoline_granularity: {
    #       max_points: 1,
    #       max_resolution: 1
    #     },
    #     key: "ApiKey",
    #     optimize_isoline_for: "AccurateCalculation" # One of: ["AccurateCalculation", "BalancedCalculation", "FastCalculation"],
    #     optimize_routing_for: "FastestRoute" # One of: ["FastestRoute", "ShortestRoute"],
    #     origin: [1.0],
    #     origin_options: {
    #       avoid_actions_for_distance: 1,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
    #       }
    #     },
    #     thresholds: { # required
    #       distance: [1],
    #       time: [1]
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "IgnoreTrafficData" # One of: ["IgnoreTrafficData", "UseTrafficData"]
    #     },
    #     travel_mode: "Car" # One of: ["Car", "Pedestrian", "Scooter", "Truck"],
    #     travel_mode_options: {
    #       car: {
    #         engine_type: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       scooter: {
    #         engine_type: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #         license_plate: {
    #           last_character: "String"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       truck: {
    #         axle_count: 1,
    #         engine_type: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible" # One of: ["Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"]],
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
    #         truck_type: "LightTruck" # One of: ["LightTruck", "StraightTruck", "Tractor"],
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
    #     isoline_geometry_format: "FlexiblePolyline" # One of: ["FlexiblePolyline", "Simple"], # required
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

    # <p> Use <code>CalculateRouteMatrix</code> to compute results for all pairs of Origins to Destinations. Each row corresponds to one entry in Origins. Each entry in the row corresponds to the route from that entry in Origins to an entry in Destinations positions.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html">Calculate route matrix</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    # @param [Hash, Types::CalculateRouteMatrixRequest] params
    # @option params [Types::RouteMatrixAllowOptions] :allow
    #   <p>Features that are allowed while calculating a route.</p>
    # @option params [Types::RouteMatrixAvoidanceOptions] :avoid
    #   <p> Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>TollRoads</code>, <code>Ferries</code>, and <code>ControlledAccessHighways</code>. </p>
    # @option params [Boolean] :depart_now
    #   <p>Uses the current time as the time of departure.</p>
    # @option params [String] :departure_time
    #   <p>Time of departure from the origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Types::RouteMatrixDestination>] :destinations
    #   <p>List of destinations for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <note> <p>Route calculations are billed for each origin and destination pair. If you use a large matrix of origins and destinations, your costs will increase accordingly. For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html">Routes pricing</a> in the <i>Amazon Location Service Developer Guide</i>.</p> </note> <p>The maximum number of destinations depends on the routing boundary configuration:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code> set: maximum 500 destinations</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code> set to <code>true</code>: maximum 100 destinations</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: maximum 350 destinations</p> </li> </ul> <p>The total matrix size (origins × destinations) must not exceed:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code>: 160,000</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code>: 100</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: 122,500</p> </li> </ul>
    # @option params [Types::RouteMatrixExclusionOptions] :exclude
    #   <p> Features to be strictly excluded while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :optimize_routing_for
    #   <p>Controls the trade-off between finding the shortest travel time (<code>FastestRoute</code>) and the shortest distance (<code>ShortestRoute</code>) when calculating reachable areas.</p> <p>Default value: <code>FastestRoute</code> </p>
    # @option params [Array<Types::RouteMatrixOrigin>] :origins
    #   <p>List of origins for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <note> <p>Route calculations are billed for each origin and destination pair. Using a large amount of Origins in a request can lead you to incur unexpected charges. For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html">Routes pricing</a> in the <i>Amazon Location Service Developer Guide</i>.</p> </note> <p>The maximum number of origins depends on the routing boundary configuration:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code> set: maximum 500 origins</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code> set to <code>true</code>: maximum 15 origins</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: maximum 350 origins</p> </li> </ul> <p>The total matrix size (origins × destinations) must not exceed:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code>: 160,000</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code>: 100</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: 122,500</p> </li> </ul>
    # @option params [Types::RouteMatrixBoundary] :routing_boundary
    #   <p> Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Unbounded</code> set to <code>true</code>. </p> <p>Default value: <code>Unbounded set to true</code> </p> <note> <p>When <code>AutoCircle</code> is set in the request, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p> </note>
    # @option params [Types::RouteMatrixTrafficOptions] :traffic
    #   <p> Traffic related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [String] :travel_mode
    #   <p> Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Car</code>, <code>Pedestrian</code>, and <code>Scooter</code>. </p> <p>Default value: <code>Car</code> </p>
    # @option params [Types::RouteMatrixTravelModeOptions] :travel_mode_options
    #   <p> Travel mode related options for the provided travel mode. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
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
    #           category: "CongestionPricing" # One of: ["CongestionPricing", "Environmental", "Vignette"]
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
    #             strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #           },
    #           side_of_street: {
    #             position: [1.0], # required
    #             use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
    #           }
    #         },
    #         position: [1.0], # required
    #       }
    #     ],
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     key: "ApiKey",
    #     optimize_routing_for: "FastestRoute" # One of: ["FastestRoute", "ShortestRoute"],
    #     origins: [ # required
    #       {
    #         options: {
    #           avoid_actions_for_distance: 1,
    #           heading: 1.0,
    #           matching: {
    #             name_hint: "SensitiveString",
    #             on_road_threshold: 1,
    #             radius: 1,
    #             strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #           },
    #           side_of_street: {
    #             position: [1.0], # required
    #             use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
    #           }
    #         },
    #         position: [1.0], # required
    #       }
    #     ],
    #     routing_boundary: {
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
    #       usage: "IgnoreTrafficData" # One of: ["IgnoreTrafficData", "UseTrafficData"]
    #     },
    #     travel_mode: "Car" # One of: ["Car", "Pedestrian", "Scooter", "Truck"],
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
    #         hazardous_cargos: ["Combustible" # One of: ["Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"]],
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
    #         truck_type: "LightTruck" # One of: ["LightTruck", "StraightTruck", "Tractor"],
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
    #           error: "NoMatch" # One of: ["NoMatch", "NoMatchDestination", "NoMatchOrigin", "NoRoute", "OutOfBounds", "OutOfBoundsDestination", "OutOfBoundsOrigin", "Other", "Violation"]
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

    # <p> <code>CalculateRoutes</code> computes routes given the following required parameters: <code>Origin</code> and <code>Destination</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-routes.html">Calculate routes</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    # @param [Hash, Types::CalculateRoutesRequest] params
    # @option params [Types::RouteAllowOptions] :allow
    #   <p> Features that are allowed while calculating a route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [String] :arrival_time
    #   <p> Time of arrival at the destination. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Types::RouteAvoidanceOptions] :avoid
    #   <p> Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>ControlledAccessHighways</code>, <code>Ferries</code>, and <code>TollRoads</code> </p>
    # @option params [Boolean] :depart_now
    #   <p>Uses the current time as the time of departure.</p>
    # @option params [String] :departure_time
    #   <p>Time of departure from the origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @option params [Array<Float>] :destination
    #   <p>The final position for the route. In the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    # @option params [Types::RouteDestinationOptions] :destination_options
    #   <p> Destination related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [Types::RouteDriverOptions] :driver
    #   <p> Driver related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [Types::RouteExclusionOptions] :exclude
    #   <p> Features to be strictly excluded while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [String] :instructions_measurement_system
    #   <p>Measurement system to be used for instructions within steps in the response.</p>
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [Array<String>] :languages
    #   <p> List of languages for instructions within steps in the response. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>Instructions in the requested language are returned only if they are available.</p> </note>
    # @option params [Array<String>] :leg_additional_features
    #   <p> A list of optional additional parameters such as timezone that can be requested for each result. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>PassThroughWaypoints</code>, <code>Summary</code>, and <code>TravelStepInstructions</code> </p> <ul> <li> <p> <code>Elevation</code>: Retrieves the elevation information for each location.</p> </li> <li> <p> <code>Incidents</code>: Provides information on traffic incidents along the route.</p> </li> <li> <p> <code>PassThroughWaypoints</code>: Indicates waypoints that are passed through without stopping.</p> </li> <li> <p> <code>Summary</code>: Returns a summary of the route, including distance and duration.</p> </li> <li> <p> <code>Tolls</code>: Supplies toll cost information along the route.</p> </li> <li> <p> <code>TravelStepInstructions</code>: Provides step-by-step instructions for travel along the route.</p> </li> <li> <p> <code>TruckRoadTypes</code>: Returns information about road types suitable for trucks.</p> </li> <li> <p> <code>TypicalDuration</code>: Gives typical travel duration based on historical data.</p> </li> <li> <p> <code>Zones</code>: Specifies the time zone information for each waypoint.</p> </li> </ul>
    # @option params [String] :leg_geometry_format
    #   <p>Specifies the format of the geometry returned for each leg of the route. You can choose between two different geometry encoding formats.</p> <p> <code>FlexiblePolyline</code>: A compact and precise encoding format for the leg geometry. For more information on the format, see the GitHub repository for <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p> <p> <code>Simple</code>: A less compact encoding, which is easier to decode but may be less precise and result in larger payloads.</p>
    # @option params [Integer] :max_alternatives
    #   <p>Maximum number of alternative routes to be provided in the response, if available. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only up to 3 alternative routes. </p>
    # @option params [String] :optimize_routing_for
    #   <p>Controls the trade-off between achieving the shortest travel time (<code>FastestRoute</code>) and achieving the shortest physical distance ((<code>ShortestRoute</code>) when calculating each route in the matrix.</p> <p>Default value: <code>FastestRoute</code> </p>
    # @option params [Array<Float>] :origin
    #   <p>The start position for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    # @option params [Types::RouteOriginOptions] :origin_options
    #   <p> Specifies how the origin point should be matched to the road network and any routing constraints that apply when the traveler is departing the origin. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [Array<String>] :span_additional_features
    #   <p> A list of optional features such as <code>SpeedLimit</code> that can be requested for a Span. A span is a section of a Leg for which the requested features have the same values. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [Types::RouteTollOptions] :tolls
    #   <p> Toll related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [Types::RouteTrafficOptions] :traffic
    #   <p> Traffic related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @option params [String] :travel_mode
    #   <p> Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Car</code>, <code>Pedestrian</code>, and <code>Scooter</code> values. </p> <p>Default value: <code>Car</code> </p>
    # @option params [Types::RouteTravelModeOptions] :travel_mode_options
    #   <p> Travel mode related options for the provided travel mode. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Car</code> and <code>Pedestrian</code> travel mode options. </p>
    # @option params [String] :travel_step_type
    #   <p>Type of step returned by the response. <code>Default</code> provides basic steps intended for web based applications. <code>TurnByTurn</code> provides detailed instructions with more granularity intended for a turn based navigation system. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions <code>Default</code> does not return any steps. </p>
    # @option params [Array<Types::RouteWaypoint>] :waypoints
    #   <p> List of waypoints between the Origin and Destination. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions max length is <code>100</code>. </p> <p>Max length: <code>23</code> </p>
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
    #           category: "CongestionPricing" # One of: ["CongestionPricing", "Environmental", "Vignette"], # required
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
    #         strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
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
    #     instructions_measurement_system: "Metric" # One of: ["Metric", "Imperial"],
    #     key: "ApiKey",
    #     languages: ["LanguageTag"],
    #     leg_additional_features: ["Elevation" # One of: ["Elevation", "Incidents", "PassThroughWaypoints", "Summary", "Tolls", "TravelStepInstructions", "TruckRoadTypes", "TypicalDuration", "Zones", "Bookings", "IntermediateStops", "NextDepartures"]],
    #     leg_geometry_format: "FlexiblePolyline" # One of: ["FlexiblePolyline", "Simple"],
    #     max_alternatives: 1,
    #     optimize_routing_for: "FastestRoute" # One of: ["FastestRoute", "ShortestRoute"],
    #     origin: [1.0], # required
    #     origin_options: {
    #       avoid_actions_for_distance: 1,
    #       avoid_u_turns: false,
    #       heading: 1.0,
    #       matching: {
    #         name_hint: "SensitiveString",
    #         on_road_threshold: 1,
    #         radius: 1,
    #         strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #       },
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
    #       }
    #     },
    #     span_additional_features: ["BestCaseDuration" # One of: ["BestCaseDuration", "CarAccess", "Country", "Distance", "Duration", "DynamicSpeed", "FunctionalClassification", "Gates", "Incidents", "Names", "Notices", "PedestrianAccess", "RailwayCrossings", "Region", "RoadAttributes", "RouteNumbers", "ScooterAccess", "SpeedLimit", "TollSystems", "TruckAccess", "TruckRoadTypes", "TypicalDuration", "Zones", "Consumption"]],
    #     tolls: {
    #       all_transponders: false,
    #       all_vignettes: false,
    #       currency: "CurrencyCode",
    #       emission_type: {
    #         co2_emission_class: "SensitiveString",
    #         type: "SensitiveString", # required
    #       },
    #       vehicle_category: "Minibus" # One of: ["Minibus"]
    #     },
    #     traffic: {
    #       flow_event_threshold_override: 1,
    #       usage: "IgnoreTrafficData" # One of: ["IgnoreTrafficData", "UseTrafficData"]
    #     },
    #     travel_mode: "Car" # One of: ["Car", "Pedestrian", "Scooter", "Truck", "Intermodal", "Transit"],
    #     travel_mode_options: {
    #       car: {
    #         engine_type: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
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
    #         engine_type: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #         license_plate: {
    #           last_character: "SensitiveString"
    #         },
    #         max_speed: 1.0,
    #         occupancy: 1
    #       },
    #       truck: {
    #         axle_count: 1,
    #         engine_type: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible" # One of: ["Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"]],
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
    #         truck_type: "LightTruck" # One of: ["LightTruck", "StraightTruck", "Tractor"],
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
    #       },
    #       intermodal: {
    #         accessibility_attributes: ["Wheelchair" # One of: ["Wheelchair"]],
    #         max_transfers: 1,
    #         pedestrian: {
    #           max_distance: 1,
    #           speed: 1.0
    #         },
    #         rental: {
    #           allowed_modes: ["All" # One of: ["All", "Car"]],
    #           enabled_for: ["FirstLeg" # One of: ["FirstLeg", "LastLeg", "EntireRoute", "None"]],
    #           excluded_modes: ["All" # One of: ["All", "Car"]]
    #         },
    #         taxi: {
    #           allowed_modes: ["All" # One of: ["All", "Car"]],
    #           enabled_for: ["FirstLeg" # One of: ["FirstLeg", "LastLeg", "EntireRoute", "None"]],
    #           excluded_modes: ["All" # One of: ["All", "Car"]]
    #         },
    #         transit: {
    #           allowed_modes: ["AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"]],
    #           enabled_for: ["FirstLeg" # One of: ["FirstLeg", "LastLeg", "EntireRoute", "None"]],
    #           excluded_modes: ["AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"]]
    #         },
    #         vehicle: {
    #           allowed_modes: ["All" # One of: ["All", "Car"]],
    #           enabled_for: ["FirstLeg" # One of: ["FirstLeg", "LastLeg", "EntireRoute", "None"]],
    #           excluded_modes: ["All" # One of: ["All", "Car"]]
    #         }
    #       },
    #       transit: {
    #         accessibility_attributes: ["Wheelchair" # One of: ["Wheelchair"]],
    #         allowed_modes: ["AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"]],
    #         excluded_modes: ["AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"]],
    #         max_transfers: 1,
    #         pedestrian: {
    #           max_distance: 1,
    #           speed: 1.0
    #         }
    #       }
    #     },
    #     travel_step_type: "Default" # One of: ["Default", "TurnByTurn"],
    #     waypoints: [
    #       {
    #         avoid_actions_for_distance: 1,
    #         avoid_u_turns: false,
    #         heading: 1.0,
    #         matching: {
    #           name_hint: "SensitiveString",
    #           on_road_threshold: 1,
    #           radius: 1,
    #           strategy: "MatchAny" # One of: ["MatchAny", "MatchMostSignificantRoad"]
    #         },
    #         pass_through: false,
    #         position: [1.0], # required
    #         side_of_street: {
    #           position: [1.0], # required
    #           use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
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
    #     leg_geometry_format: "FlexiblePolyline" # One of: ["FlexiblePolyline", "Simple"], # required
    #     notices: [ # required
    #       {
    #         code: "MainLanguageNotFound" # One of: ["MainLanguageNotFound", "Other", "TravelTimeExceedsDriverWorkHours", "TransitDataUnavailable", "TransitRouteUnavailable", "NoTransitStationsFound"], # required
    #         impact: "High" # One of: ["High", "Low"]
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
    #                   type: "Deboard" # One of: ["Deboard"], # required
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
    #                   type: "Board" # One of: ["Board"], # required
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
    #                   code: "AccuratePolylineUnavailable" # One of: ["AccuratePolylineUnavailable", "NoSchedule", "Other", "ViolatedAvoidFerry", "ViolatedAvoidRailFerry", "SeasonalClosure", "PotentialViolatedVehicleRestrictionUsage", "ViolatedAvoidAreas", "ViolatedVehicleRestriction"], # required
    #                   impact: "High" # One of: ["High", "Low"]
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
    #                   type: "Depart" # One of: ["Depart", "Continue", "Arrive"], # required
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
    #               after_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Wait" # One of: ["Wait"], # required
    #                 }
    #               ],
    #               arrival: { # required
    #                 place: { # required
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "Left" # One of: ["Left", "Right"],
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "DockingStation", "ParkingLot", "Station"],
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               departure: { # required
    #                 place: { # required
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "Left" # One of: ["Left", "Right"],
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "DockingStation", "ParkingLot", "Station"],
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               notices: [ # required
    #                 {
    #                   code: "AccuratePolylineUnavailable" # One of: ["AccuratePolylineUnavailable", "Other", "ViolatedAvoidDirtRoad", "ViolatedAvoidTunnel", "ViolatedPedestrianOption", "ViolatedAvoidAreas"], # required
    #                   impact: "High" # One of: ["High", "Low"]
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
    #                   pedestrian_access: ["Allowed" # One of: ["Allowed", "Indoors", "NoThroughTraffic", "Park", "Stairs", "TollRoad"]],
    #                   region: "SensitiveString",
    #                   road_attributes: ["Bridge" # One of: ["Bridge", "BuiltUpArea", "ControlledAccessHighway", "DirtRoad", "DividedRoad", "Motorway", "PrivateRoad", "Ramp", "RightHandTraffic", "Roundabout", "Tunnel", "UnderConstruction"]],
    #                   route_numbers: [
    #                     {
    #                       direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                         direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                     type: "Highway" # One of: ["Highway", "Rural", "Urban"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                         direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                     type: "Highway" # One of: ["Highway", "Rural", "Urban"]
    #                   },
    #                   roundabout_enter_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"]
    #                   },
    #                   roundabout_pass_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   signpost: {
    #                     labels: [ # required
    #                       {
    #                         route_number: {
    #                           direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   type: "Arrive" # One of: ["Arrive", "Continue", "Depart", "Keep", "RoundaboutEnter", "RoundaboutExit", "RoundaboutPass", "Turn"], # required
    #                 }
    #               ]
    #             },
    #             travel_mode: "Car" # One of: ["Car", "Ferry", "Pedestrian", "Scooter", "Truck", "CarShuttleTrain", "AerialTramway", "Airplane", "Bus", "BusRapidTransit", "CityTrain", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"], # required
    #             type: "Ferry" # One of: ["Ferry", "Pedestrian", "Vehicle", "Rental", "Taxi", "Transit"], # required
    #             vehicle_leg_details: {
    #               after_travel_steps: [ # required
    #                 {
    #                   charge_step_details: {
    #                     arrival_charge: 1.0,
    #                     consumable_power: 1.0,
    #                     desired_charge: 1.0
    #                   },
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Park" # One of: ["Park"], # required
    #                 }
    #               ],
    #               arrival: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "Left" # One of: ["Left", "Right"],
    #                   waypoint_index: 1,
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "DockingStation", "ParkingLot", "Station"]
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               departure: { # required
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   side_of_street: "Left" # One of: ["Left", "Right"],
    #                   waypoint_index: 1,
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "DockingStation", "ParkingLot", "Station"]
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               incidents: [ # required
    #                 {
    #                   description: "SensitiveString",
    #                   end_time: "TimestampWithTimezoneOffset",
    #                   severity: "Critical" # One of: ["Critical", "High", "Medium", "Low"],
    #                   start_time: "TimestampWithTimezoneOffset",
    #                   type: "Accident" # One of: ["Accident", "Congestion", "Construction", "DisabledVehicle", "LaneRestriction", "MassTransit", "Other", "PlannedEvent", "RoadClosure", "RoadHazard", "Weather"]
    #                 }
    #               ],
    #               notices: [ # required
    #                 {
    #                   code: "AccuratePolylineUnavailable" # One of: ["AccuratePolylineUnavailable", "Other", "PotentialViolatedAvoidTollRoadUsage", "PotentialViolatedCarpoolUsage", "PotentialViolatedTurnRestrictionUsage", "PotentialViolatedVehicleRestrictionUsage", "PotentialViolatedZoneRestrictionUsage", "SeasonalClosure", "TollsDataTemporarilyUnavailable", "TollsDataUnavailable", "TollTransponder", "ViolatedAvoidControlledAccessHighway", "ViolatedAvoidDifficultTurns", "ViolatedAvoidDirtRoad", "ViolatedAvoidSeasonalClosure", "ViolatedAvoidTollRoad", "ViolatedAvoidTollTransponder", "ViolatedAvoidTruckRoadType", "ViolatedAvoidTunnel", "ViolatedAvoidUTurns", "ViolatedBlockedRoad", "ViolatedCarpool", "ViolatedEmergencyGate", "ViolatedStartDirection", "ViolatedTurnRestriction", "ViolatedVehicleRestriction", "ViolatedZoneRestriction", "TravelTimeExceedsDriverWorkHours"], # required
    #                   details: [ # required
    #                     {
    #                       title: "SensitiveString",
    #                       violated_constraints: {
    #                         all_hazards_restricted: false,
    #                         axle_count: {
    #                           min: 1,
    #                           max: 1
    #                         },
    #                         hazardous_cargos: ["Combustible" # One of: ["Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"]], # required
    #                         max_height: 1,
    #                         max_kpra_length: 1,
    #                         max_length: 1,
    #                         max_payload_capacity: 1,
    #                         max_weight: {
    #                           type: "Current" # One of: ["Current", "Gross", "Unknown"], # required
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
    #                         truck_type: "LightTruck" # One of: ["LightTruck", "StraightTruck", "Tractor"],
    #                         tunnel_restriction_code: "TunnelRestrictionCode"
    #                       }
    #                     }
    #                   ],
    #                   impact: "High" # One of: ["High", "Low"]
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
    #                   car_access: ["Allowed" # One of: ["Allowed", "NoThroughTraffic", "TollRoad"]],
    #                   country: "CountryCode3",
    #                   distance: 1,
    #                   duration: 1,
    #                   dynamic_speed: {
    #                     best_case_speed: 1.0,
    #                     turn_duration: 1,
    #                     typical_speed: 1.0
    #                   },
    #                   functional_classification: 1,
    #                   gate: "Emergency" # One of: ["Emergency", "KeyAccess", "PermissionRequired"],
    #                   geometry_offset: 1,
    #                   incidents: [1],
    #                   names: [
    #                     {
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   notices: [1],
    #                   railway_crossing: "Protected" # One of: ["Protected", "Unprotected"],
    #                   region: "SensitiveString",
    #                   road_attributes: ["Bridge" # One of: ["Bridge", "BuiltUpArea", "ControlledAccessHighway", "DirtRoad", "DividedRoad", "Motorway", "PrivateRoad", "Ramp", "RightHandTraffic", "Roundabout", "Tunnel", "UnderConstruction"]],
    #                   route_numbers: [
    #                     {
    #                       direction: "East" # One of: ["East", "North", "South", "West"],
    #                       language: "LanguageTag",
    #                       value: "SensitiveString", # required
    #                     }
    #                   ],
    #                   scooter_access: ["Allowed" # One of: ["Allowed", "NoThroughTraffic", "TollRoad"]],
    #                   speed_limit: {
    #                     max_speed: 1.0,
    #                     unlimited: false
    #                   },
    #                   toll_systems: [1],
    #                   truck_access: ["Allowed" # One of: ["Allowed", "NoThroughTraffic", "TollRoad"]],
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
    #                           period: "Annual" # One of: ["Annual", "Days", "ExtendedAnnual", "Minutes", "Months"], # required
    #                           period_count: 1
    #                         }
    #                       },
    #                       payment_methods: ["BankCard" # One of: ["BankCard", "Cash", "CashExact", "CreditCard", "PassSubscription", "TravelCard", "Transponder", "VideoToll"]], # required
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                         direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                     type: "Highway" # One of: ["Highway", "Rural", "Urban"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                         direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                     type: "Highway" # One of: ["Highway", "Rural", "Urban"]
    #                   },
    #                   ramp_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   roundabout_enter_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"]
    #                   },
    #                   roundabout_pass_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   signpost: {
    #                     labels: [ # required
    #                       {
    #                         route_number: {
    #                           direction: "East" # One of: ["East", "North", "South", "West"],
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   type: "Arrive" # One of: ["Arrive", "Continue", "ContinueHighway", "Depart", "EnterHighway", "Exit", "Keep", "Ramp", "RoundaboutEnter", "RoundaboutExit", "RoundaboutPass", "Turn", "UTurn"], # required
    #                   u_turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   }
    #                 }
    #               ],
    #               truck_road_types: ["TruckRoadType"], # required
    #               zones: [ # required
    #                 {
    #                   category: "CongestionPricing" # One of: ["CongestionPricing", "Environmental", "Vignette"],
    #                   name: "SensitiveString"
    #                 }
    #               ]
    #             },
    #             rental_leg_details: {
    #               after_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Park" # One of: ["Park"], # required
    #                 }
    #               ],
    #               agency: { # required
    #                 name: "SensitiveString", # required
    #                 url: "SensitiveString"
    #               },
    #               arrival: { # required
    #                 place: { # required
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "DockingStation", "ParkingLot", "Station"],
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               attributions: [ # required
    #                 {
    #                   attribution_type: "Disclaimer" # One of: ["Disclaimer", "Tariff"],
    #                   web_link: { # required
    #                     anchor_text: "SensitiveString",
    #                     description: "SensitiveString", # required
    #                     device_type: "Android" # One of: ["Android", "Ios", "Web"],
    #                     url: "SensitiveString"
    #                   }
    #                 }
    #               ],
    #               before_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Setup" # One of: ["Setup"], # required
    #                 }
    #               ],
    #               booking_web_links: [ # required
    #                 {
    #                   anchor_text: "SensitiveString",
    #                   description: "SensitiveString", # required
    #                   device_type: "Android" # One of: ["Android", "Ios", "Web"],
    #                   url: "SensitiveString"
    #                 }
    #               ],
    #               departure: { # required
    #                 place: { # required
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "DockingStation", "ParkingLot", "Station"],
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               summary: {
    #                 overview: {
    #                   duration: 1, # required
    #                   distance: 1, # required
    #                 },
    #                 travel_only: {
    #                   duration: 1, # required
    #                 }
    #               },
    #               transport: { # required
    #                 available_seats: 1,
    #                 category: "SensitiveString",
    #                 color: "SensitiveString",
    #                 engine: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #                 license_plate: "SensitiveString",
    #                 mode: "All" # One of: ["All", "Car"], # required
    #                 model: "SensitiveString",
    #                 name: "SensitiveString",
    #                 text_color: "SensitiveString"
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
    #                   distance: 1,
    #                   duration: 1, # required
    #                   exit_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     relative_exit: 1,
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   ramp_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   roundabout_enter_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"]
    #                   },
    #                   roundabout_pass_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   type: "Arrive" # One of: ["Arrive", "Continue", "Depart", "Exit", "Keep", "Ramp", "RoundaboutEnter", "RoundaboutExit", "RoundaboutPass", "Turn", "UTurn"], # required
    #                   u_turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   }
    #                 }
    #               ]
    #             },
    #             taxi_leg_details: {
    #               after_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Park" # One of: ["Park"], # required
    #                 }
    #               ],
    #               agency: { # required
    #                 name: "SensitiveString", # required
    #                 url: "SensitiveString"
    #               },
    #               arrival: { # required
    #                 place: { # required
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "Station"],
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               attributions: [ # required
    #                 {
    #                   attribution_type: "Disclaimer" # One of: ["Disclaimer", "Tariff"],
    #                   web_link: { # required
    #                     anchor_text: "SensitiveString",
    #                     description: "SensitiveString", # required
    #                     device_type: "Android" # One of: ["Android", "Ios", "Web"],
    #                     url: "SensitiveString"
    #                   }
    #                 }
    #               ],
    #               before_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Wait" # One of: ["Wait"], # required
    #                 }
    #               ],
    #               booking_web_links: [ # required
    #                 {
    #                   anchor_text: "SensitiveString",
    #                   description: "SensitiveString", # required
    #                   device_type: "Android" # One of: ["Android", "Ios", "Web"],
    #                   url: "SensitiveString"
    #                 }
    #               ],
    #               departure: { # required
    #                 place: { # required
    #                   access_point_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     }
    #                   },
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "AccessPoint" # One of: ["AccessPoint", "Station"],
    #                   waypoint_index: 1
    #                 },
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               notices: [ # required
    #                 {
    #                   code: "AccuratePolylineUnavailable" # One of: ["AccuratePolylineUnavailable", "Other"], # required
    #                   impact: "High" # One of: ["High", "Low"]
    #                 }
    #               ],
    #               summary: {
    #                 overview: {
    #                   duration: 1, # required
    #                   distance: 1, # required
    #                 },
    #                 travel_only: {
    #                   duration: 1, # required
    #                 }
    #               },
    #               transport: { # required
    #                 available_seats: 1,
    #                 category: "SensitiveString",
    #                 color: "SensitiveString",
    #                 engine: "Electric" # One of: ["Electric", "InternalCombustion", "PluginHybrid"],
    #                 license_plate: "SensitiveString",
    #                 mode: "All" # One of: ["All", "Car"], # required
    #                 model: "SensitiveString",
    #                 name: "SensitiveString",
    #                 text_color: "SensitiveString"
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
    #                   distance: 1,
    #                   duration: 1, # required
    #                   exit_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     relative_exit: 1,
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   ramp_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   roundabout_enter_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
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
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"]
    #                   },
    #                   roundabout_pass_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   },
    #                   type: "Arrive" # One of: ["Arrive", "Continue", "Depart", "Exit", "Keep", "Ramp", "RoundaboutEnter", "RoundaboutExit", "RoundaboutPass", "Turn", "UTurn"], # required
    #                   u_turn_step_details: {
    #                     intersection: [ # required
    #                       {
    #                         language: "LanguageTag",
    #                         value: "SensitiveString", # required
    #                       }
    #                     ],
    #                     steering_direction: "Left" # One of: ["Left", "Right", "Straight"],
    #                     turn_angle: 1.0,
    #                     turn_intensity: "Sharp" # One of: ["Sharp", "Slight", "Typical"]
    #                   }
    #                 }
    #               ]
    #             },
    #             transit_leg_details: {
    #               after_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Deboard" # One of: ["Deboard"], # required
    #                 }
    #               ],
    #               agency: {
    #                 name: "SensitiveString", # required
    #                 url: "SensitiveString"
    #               },
    #               arrival: { # required
    #                 delay: 1,
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "Station" # One of: ["Station"],
    #                   waypoint_index: 1
    #                 },
    #                 status: "Added" # One of: ["Added", "Cancelled", "Replaced", "Scheduled"],
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               attributions: [ # required
    #                 {
    #                   attribution_type: "Disclaimer" # One of: ["Disclaimer", "Tariff"],
    #                   web_link: { # required
    #                     anchor_text: "SensitiveString",
    #                     description: "SensitiveString", # required
    #                     device_type: "Android" # One of: ["Android", "Ios", "Web"],
    #                     url: "SensitiveString"
    #                   }
    #                 }
    #               ],
    #               before_travel_steps: [ # required
    #                 {
    #                   duration: 1, # required
    #                   instruction: "SensitiveString",
    #                   type: "Board" # One of: ["Board"], # required
    #                 }
    #               ],
    #               booking_web_links: [ # required
    #                 {
    #                   anchor_text: "SensitiveString",
    #                   description: "SensitiveString", # required
    #                   device_type: "Android" # One of: ["Android", "Ios", "Web"],
    #                   url: "SensitiveString"
    #                 }
    #               ],
    #               departure: { # required
    #                 delay: 1,
    #                 place: { # required
    #                   name: "SensitiveString",
    #                   original_position: [1.0],
    #                   position: [1.0], # required
    #                   station_details: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     platform_name: "SensitiveString",
    #                     short_name: "SensitiveString"
    #                   },
    #                   type: "Station" # One of: ["Station"],
    #                   waypoint_index: 1
    #                 },
    #                 status: "Added" # One of: ["Added", "Cancelled", "Replaced", "Scheduled"],
    #                 time: "TimestampWithTimezoneOffset"
    #               },
    #               incidents: [ # required
    #                 {
    #                   description: "SensitiveString",
    #                   effect: "Delayed" # One of: ["Delayed", "Detoured", "Other", "ServiceAdded", "ServiceCancelled", "ServiceModified", "ServiceReduced", "StopMoved"], # required
    #                   end_time: "TimestampWithTimezoneOffset",
    #                   start_time: "TimestampWithTimezoneOffset",
    #                   type: "Accident" # One of: ["Accident", "Construction", "Demonstration", "Holiday", "Maintenance", "MedicalEmergency", "Other", "PoliceActivity", "Strike", "TechnicalProblem", "Weather"], # required
    #                   url: "SensitiveString"
    #                 }
    #               ],
    #               intermediate_stops: [ # required
    #                 {
    #                   attributes: ["NoEntry" # One of: ["NoEntry", "NoExit"]],
    #                   departure: { # required
    #                     delay: 1,
    #                     place: { # required
    #                       name: "SensitiveString",
    #                       original_position: [1.0],
    #                       position: [1.0], # required
    #                       station_details: {
    #                         accessibility: {
    #                           wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                         },
    #                         platform_name: "SensitiveString",
    #                         short_name: "SensitiveString"
    #                       },
    #                       type: "Station" # One of: ["Station"],
    #                       waypoint_index: 1
    #                     },
    #                     status: "Added" # One of: ["Added", "Cancelled", "Replaced", "Scheduled"],
    #                     time: "TimestampWithTimezoneOffset"
    #                   },
    #                   duration: 1, # required
    #                   geometry_offset: 1,
    #                   transport: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     color: "HexColor",
    #                     headsign: "SensitiveString",
    #                     long_route_name: "SensitiveString",
    #                     mode: "AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"], # required
    #                     route_name: "SensitiveString",
    #                     short_route_name: "SensitiveString",
    #                     text_color: "HexColor"
    #                   }
    #                 }
    #               ],
    #               next_departures: [ # required
    #                 {
    #                   delay: 1,
    #                   platform_name: "SensitiveString",
    #                   status: "Added" # One of: ["Added", "Cancelled", "Replaced", "Scheduled"],
    #                   time: "TimestampWithTimezoneOffset", # required
    #                   transport: {
    #                     accessibility: {
    #                       wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                     },
    #                     color: "HexColor",
    #                     headsign: "SensitiveString",
    #                     long_route_name: "SensitiveString",
    #                     mode: "AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"], # required
    #                     route_name: "SensitiveString",
    #                     short_route_name: "SensitiveString",
    #                     text_color: "HexColor"
    #                   }
    #                 }
    #               ],
    #               notices: [ # required
    #                 {
    #                   code: "AccuratePolylineUnavailable" # One of: ["AccuratePolylineUnavailable", "IntermediateStopsUnavailable", "NoSchedule", "Other", "PotentialViolatedVehicleRestrictionUsage", "ScheduledTimes", "SeasonalClosure", "ViolatedAvoidFerry", "ViolatedAvoidRailFerry", "ViolatedExcludedTransitMode", "ViolatedVehicleRestriction", "ViolatedAvoidAreas"], # required
    #                   impact: "High" # One of: ["High", "Low"]
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
    #               transport: { # required
    #                 accessibility: {
    #                   wheelchair: "Available" # One of: ["Available", "Limited", "Unavailable", "Unknown"]
    #                 },
    #                 color: "HexColor",
    #                 headsign: "SensitiveString",
    #                 long_route_name: "SensitiveString",
    #                 mode: "AerialTramway" # One of: ["AerialTramway", "Airplane", "All", "Bus", "BusRapidTransit", "CityTrain", "Ferry", "FunicularRailway", "HighSpeedTrain", "IntercityTrain", "InterregionalTrain", "LightRail", "Monorail", "PrivateBus", "RegionalTrain", "Subway"], # required
    #                 route_name: "SensitiveString",
    #                 short_route_name: "SensitiveString",
    #                 text_color: "HexColor"
    #               },
    #               travel_steps: [ # required
    #                 {
    #                   distance: 1,
    #                   duration: 1, # required
    #                   geometry_offset: 1,
    #                   instruction: "SensitiveString",
    #                   type: "Depart" # One of: ["Depart"], # required
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
    #               direction: "East" # One of: ["East", "North", "South", "West"],
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

    # <p> <code>OptimizeWaypoints</code> calculates the optimal order to travel between a set of waypoints to minimize either the travel time or the distance travelled during the journey, based on road network restrictions and the traffic pattern data.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/actions-optimize-waypoints.html">Optimize waypoints</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
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
    #   <p>Specifies the optimization criteria for the calculated sequence.</p> <p>Default value: <code>FastestRoute</code>.</p>
    # @option params [Array<Float>] :origin
    #   <p>The start position for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    # @option params [Types::WaypointOptimizationOriginOptions] :origin_options
    #   <p>Origin related options.</p>
    # @option params [Types::WaypointOptimizationTrafficOptions] :traffic
    #   <p>Traffic-related options.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default value: <code>Car</code> </p>
    # @option params [Types::WaypointOptimizationTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @option params [Array<Types::WaypointOptimizationWaypoint>] :waypoints
    #   <p>List of waypoints between the <code>Origin</code> and <code>Destination</code>, in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <p>The maximum number of waypoints allowed per request:</p> <ul> <li> <p>Maximum 50 waypoints per request</p> </li> <li> <p>Maximum 20 waypoints when using constraints (<code>AccessHours</code>, <code>AppointmentTime</code>, <code>ServiceDuration</code>, <code>Heading</code>, <code>SideOfStreet</code>, <code>Before</code>)</p> </li> </ul>
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
    #       algorithm: "DrivingDistance" # One of: ["DrivingDistance", "TopologySegment"], # required
    #       driving_distance_options: {
    #         driving_distance: 1, # required
    #       }
    #     },
    #     departure_time: "TimestampWithTimezoneOffset",
    #     destination: [1.0],
    #     destination_options: {
    #       access_hours: {
    #         from: { # required
    #           day_of_week: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], # required
    #           time_of_day: "TimeOfDay", # required
    #         },
    #         to: { # required
    #           day_of_week: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], # required
    #           time_of_day: "TimeOfDay", # required
    #         }
    #       },
    #       appointment_time: "TimestampWithTimezoneOffset",
    #       heading: 1.0,
    #       id: "WaypointId",
    #       service_duration: 1,
    #       side_of_street: {
    #         position: [1.0], # required
    #         use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
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
    #       treat_service_time_as: "Rest" # One of: ["Rest", "Work"]
    #     },
    #     exclude: {
    #       countries: ["CountryCode"], # required
    #     },
    #     key: "ApiKey",
    #     optimize_sequencing_for: "FastestRoute" # One of: ["FastestRoute", "ShortestRoute"],
    #     origin: [1.0], # required
    #     origin_options: {
    #       id: "WaypointId"
    #     },
    #     traffic: {
    #       usage: "IgnoreTrafficData" # One of: ["IgnoreTrafficData", "UseTrafficData"]
    #     },
    #     travel_mode: "Car" # One of: ["Car", "Pedestrian", "Scooter", "Truck"],
    #     travel_mode_options: {
    #       pedestrian: {
    #         speed: 1.0
    #       },
    #       truck: {
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible" # One of: ["Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"]],
    #         height: 1,
    #         length: 1,
    #         trailer: {
    #           trailer_count: 1
    #         },
    #         truck_type: "StraightTruck" # One of: ["StraightTruck", "Tractor"],
    #         tunnel_restriction_code: "TunnelRestrictionCode",
    #         weight_per_axle: 1,
    #         width: 1
    #       }
    #     },
    #     waypoints: [
    #       {
    #         access_hours: {
    #           from: { # required
    #             day_of_week: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], # required
    #             time_of_day: "TimeOfDay", # required
    #           },
    #           to: { # required
    #             day_of_week: "Monday" # One of: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], # required
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
    #           use_with: "AnyStreet" # One of: ["AnyStreet", "DividedStreetOnly"]
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
    #             constraint: "AccessHours" # One of: ["AccessHours", "AppointmentTime", "Before", "Heading", "ServiceDuration", "SideOfStreet"],
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

    # <p> <code>SnapToRoads</code> matches GPS trace to roads most likely traveled on.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-roads.html">Snap to Roads</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    # @param [Hash, Types::SnapToRoadsRequest] params
    # @option params [String] :key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    # @option params [String] :snapped_geometry_format
    #   <p>Chooses what the returned SnappedGeometry format should be.</p> <p>Default value: <code>FlexiblePolyline</code> </p>
    # @option params [Integer] :snap_radius
    #   <p>The radius around the provided tracepoint that is considered for snapping.</p> <p> <b>Unit</b>: <code>meters</code> </p> <p>Default value: <code>300</code> </p>
    # @option params [Array<Types::RoadSnapTracePoint>] :trace_points
    #   <p>List of trace points to be snapped onto the road network.</p>
    # @option params [String] :travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default value: <code>Car</code> </p>
    # @option params [Types::RoadSnapTravelModeOptions] :travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     key: "ApiKey",
    #     snapped_geometry_format: "FlexiblePolyline" # One of: ["FlexiblePolyline", "Simple"],
    #     snap_radius: 1,
    #     trace_points: [ # required
    #       {
    #         heading: 1.0,
    #         position: [1.0], # required
    #         speed: 1.0,
    #         timestamp: "TimestampWithTimezoneOffset"
    #       }
    #     ],
    #     travel_mode: "Car" # One of: ["Car", "Pedestrian", "Scooter", "Truck"],
    #     travel_mode_options: {
    #       truck: {
    #         gross_weight: 1,
    #         hazardous_cargos: ["Combustible" # One of: ["Combustible", "Corrosive", "Explosive", "Flammable", "Gas", "HarmfulToWater", "Organic", "Other", "Poison", "PoisonousInhalation", "Radioactive"]],
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
    #         code: "TracePointsHeadingIgnored" # One of: ["TracePointsHeadingIgnored", "TracePointsIgnored", "TracePointsMovedByLargeDistance", "TracePointsNotMatched", "TracePointsOutOfSequence", "TracePointsSpeedEstimated", "TracePointsSpeedIgnored"], # required
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
    #     snapped_geometry_format: "FlexiblePolyline" # One of: ["FlexiblePolyline", "Simple"], # required
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
