# frozen_string_literal: true

# This is generated code!

module Aws::GeoRoutes
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute allow
    #   <p>Features that are allowed while calculating an isoline.</p>
    #   @return [Types::IsolineAllowOptions]
    # @!attribute arrival_time
    #   <p>Time of arrival at the destination.</p> <p>Time format: <code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute avoid
    #   <p>Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    #   @return [Types::IsolineAvoidanceOptions]
    # @!attribute depart_now
    #   <p>Uses the current time as the time of departure.</p>
    #   @return [Boolean]
    # @!attribute departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destination
    #   <p>The final position for the route. In the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute destination_options
    #   <p>Destination related options.</p>
    #   @return [Types::IsolineDestinationOptions]
    # @!attribute isoline_geometry_format
    #   <p>The format of the returned IsolineGeometry. </p> <p>Default Value:<code>FlexiblePolyline</code> </p>
    #   @return [String]
    # @!attribute isoline_granularity
    #   <p>Defines the granularity of the returned Isoline.</p>
    #   @return [Types::IsolineGranularityOptions]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute optimize_isoline_for
    #   <p>Specifies the optimization criteria for when calculating an isoline. AccurateCalculation generates an isoline of higher granularity that is more precise. FastCalculation generates an isoline faster by reducing the granularity, and in turn the quality of the isoline. BalancedCalculation generates an isoline by balancing between quality and performance. </p> <p>Default Value: <code>BalancedCalculation</code> </p>
    #   @return [String]
    # @!attribute optimize_routing_for
    #   <p>Specifies the optimization criteria for calculating a route.</p> <p>Default Value: <code>FastestRoute</code> </p>
    #   @return [String]
    # @!attribute origin
    #   <p>The start position for the route.</p>
    #   @return [Array<Float>]
    # @!attribute origin_options
    #   <p>Origin related options.</p>
    #   @return [Types::IsolineOriginOptions]
    # @!attribute thresholds
    #   <p>Threshold to be used for the isoline calculation. Up to 3 thresholds per provided type can be requested.</p> <p> You incur a calculation charge for each threshold. Using a large amount of thresholds in a request can lead you to incur unexpected charges. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`"> Amazon Location's pricing page</a> for more information.</p>
    #   @return [Types::IsolineThresholds]
    # @!attribute traffic
    #   <p>Traffic related options.</p>
    #   @return [Types::IsolineTrafficOptions]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <note> <p> The mode <code>Scooter</code> also applies to motorcycles, set to <code>Scooter</code> when wanted to calculate options for motorcycles.</p> </note> <p>Default Value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    #   @return [Types::IsolineTravelModeOptions]
    class CalculateIsolinesRequest < Struct.new(
      nil,
      :allow,
      :arrival_time,
      :avoid,
      :depart_now,
      :departure_time,
      :destination,
      :destination_options,
      :isoline_geometry_format,
      :isoline_granularity,
      :key,
      :optimize_isoline_for,
      :optimize_routing_for,
      :origin,
      :origin_options,
      :thresholds,
      :traffic,
      :travel_mode,
      :travel_mode_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arrival_time
    #   <p>Time of arrival at the destination. This parameter is returned only if the Destination parameters was provided in the request. </p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute isoline_geometry_format
    #   <p>The format of the returned IsolineGeometry. </p> <p>Default Value:<code>FlexiblePolyline</code> </p>
    #   @return [String]
    # @!attribute isolines
    #   <p>Calculated isolines and associated properties.</p>
    #   @return [Array<Types::Isoline>]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p>
    #   @return [String]
    # @!attribute snapped_destination
    #   <p>Snapped destination that was used for the Isoline calculation.</p>
    #   @return [Array<Float>]
    # @!attribute snapped_origin
    #   <p>Snapped origin that was used for the Isoline calculation.</p>
    #   @return [Array<Float>]
    class CalculateIsolinesResponse < Struct.new(
      nil,
      :arrival_time,
      :departure_time,
      :isoline_geometry_format,
      :isolines,
      :pricing_bucket,
      :snapped_destination,
      :snapped_origin,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute allow
    #   <p>Features that are allowed while calculating a route.</p>
    #   @return [Types::RouteMatrixAllowOptions]
    # @!attribute avoid
    #   <p>Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    #   @return [Types::RouteMatrixAvoidanceOptions]
    # @!attribute depart_now
    #   <p>Uses the current time as the time of departure.</p>
    #   @return [Boolean]
    # @!attribute departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destinations
    #   <p>List of destinations for the route.</p> <note> <p>Route calculations are billed for each origin and destination pair. If you use a large matrix of origins and destinations, your costs will increase accordingly. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`"> Amazon Location's pricing page</a> for more information.</p> </note>
    #   @return [Array<Types::RouteMatrixDestination>]
    # @!attribute exclude
    #   <p>Features to be strictly excluded while calculating the route.</p>
    #   @return [Types::RouteMatrixExclusionOptions]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute optimize_routing_for
    #   <p>Specifies the optimization criteria for calculating a route.</p> <p>Default Value: <code>FastestRoute</code> </p>
    #   @return [String]
    # @!attribute origins
    #   <p>The position in longitude and latitude for the origin.</p> <note> <p>Route calculations are billed for each origin and destination pair. Using a large amount of Origins in a request can lead you to incur unexpected charges. See <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`"> Amazon Location's pricing page</a> for more information.</p> </note>
    #   @return [Array<Types::RouteMatrixOrigin>]
    # @!attribute routing_boundary
    #   <p>Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid.</p> <note> <p>When request routing boundary was set as AutoCircle, the response routing boundary will return Circle derived from the AutoCircle settings.</p> </note>
    #   @return [Types::RouteMatrixBoundary]
    # @!attribute traffic
    #   <p>Traffic related options.</p>
    #   @return [Types::RouteMatrixTrafficOptions]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    #   @return [Types::RouteMatrixTravelModeOptions]
    class CalculateRouteMatrixRequest < Struct.new(
      nil,
      :allow,
      :avoid,
      :depart_now,
      :departure_time,
      :destinations,
      :exclude,
      :key,
      :optimize_routing_for,
      :origins,
      :routing_boundary,
      :traffic,
      :travel_mode,
      :travel_mode_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_count
    #   <p>The count of error results in the route matrix. If this number is 0, all routes were calculated successfully.</p>
    #   @return [Integer]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p>
    #   @return [String]
    # @!attribute route_matrix
    #   <p>The calculated route matrix containing the results for all pairs of Origins to Destination positions. Each row corresponds to one entry in Origins. Each entry in the row corresponds to the route from that entry in Origins to an entry in Destination positions.</p>
    #   @return [Array<Array<Types::RouteMatrixEntry>>]
    # @!attribute routing_boundary
    #   <p>Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid.</p> <note> <p>When request routing boundary was set as AutoCircle, the response routing boundary will return Circle derived from the AutoCircle settings.</p> </note>
    #   @return [Types::RouteMatrixBoundary]
    class CalculateRouteMatrixResponse < Struct.new(
      nil,
      :error_count,
      :pricing_bucket,
      :route_matrix,
      :routing_boundary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute allow
    #   <p>Features that are allowed while calculating a route.</p>
    #   @return [Types::RouteAllowOptions]
    # @!attribute arrival_time
    #   <p>Time of arrival at the destination.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute avoid
    #   <p>Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    #   @return [Types::RouteAvoidanceOptions]
    # @!attribute depart_now
    #   <p>Uses the current time as the time of departure.</p>
    #   @return [Boolean]
    # @!attribute departure_time
    #   <p>Time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destination
    #   <p>The final position for the route. In the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute destination_options
    #   <p>Destination related options.</p>
    #   @return [Types::RouteDestinationOptions]
    # @!attribute driver
    #   <p>Driver related options.</p>
    #   @return [Types::RouteDriverOptions]
    # @!attribute exclude
    #   <p>Features to be strictly excluded while calculating the route.</p>
    #   @return [Types::RouteExclusionOptions]
    # @!attribute instructions_measurement_system
    #   <p>Measurement system to be used for instructions within steps in the response.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute languages
    #   <p>List of languages for instructions within steps in the response.</p> <note> <p>Instructions in the requested language are returned only if they are available.</p> </note>
    #   @return [Array<String>]
    # @!attribute leg_additional_features
    #   <p>A list of optional additional parameters such as timezone that can be requested for each result.</p> <ul> <li> <p> <code>Elevation</code>: Retrieves the elevation information for each location.</p> </li> <li> <p> <code>Incidents</code>: Provides information on traffic incidents along the route.</p> </li> <li> <p> <code>PassThroughWaypoints</code>: Indicates waypoints that are passed through without stopping.</p> </li> <li> <p> <code>Summary</code>: Returns a summary of the route, including distance and duration.</p> </li> <li> <p> <code>Tolls</code>: Supplies toll cost information along the route.</p> </li> <li> <p> <code>TravelStepInstructions</code>: Provides step-by-step instructions for travel along the route.</p> </li> <li> <p> <code>TruckRoadTypes</code>: Returns information about road types suitable for trucks.</p> </li> <li> <p> <code>TypicalDuration</code>: Gives typical travel duration based on historical data.</p> </li> <li> <p> <code>Zones</code>: Specifies the time zone information for each waypoint.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute leg_geometry_format
    #   <p>Specifies the format of the geometry returned for each leg of the route. You can choose between two different geometry encoding formats.</p> <p> <code>FlexiblePolyline</code>: A compact and precise encoding format for the leg geometry. For more information on the format, see the GitHub repository for <a href="https://github.com/heremaps/flexible-polyline"> <code>FlexiblePolyline</code> </a>.</p> <p> <code>Simple</code>: A less compact encoding, which is easier to decode but may be less precise and result in larger payloads.</p>
    #   @return [String]
    # @!attribute max_alternatives
    #   <p>Maximum number of alternative routes to be provided in the response, if available.</p>
    #   @return [Integer]
    # @!attribute optimize_routing_for
    #   <p>Specifies the optimization criteria for calculating a route.</p> <p>Default Value: <code>FastestRoute</code> </p>
    #   @return [String]
    # @!attribute origin
    #   <p>The start position for the route.</p>
    #   @return [Array<Float>]
    # @!attribute origin_options
    #   <p>Origin related options.</p>
    #   @return [Types::RouteOriginOptions]
    # @!attribute span_additional_features
    #   <p>A list of optional features such as SpeedLimit that can be requested for a Span. A span is a section of a Leg for which the requested features have the same values.</p>
    #   @return [Array<String>]
    # @!attribute tolls
    #   <p>Toll related options.</p>
    #   @return [Types::RouteTollOptions]
    # @!attribute traffic
    #   <p>Traffic related options.</p>
    #   @return [Types::RouteTrafficOptions]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    #   @return [Types::RouteTravelModeOptions]
    # @!attribute travel_step_type
    #   <p>Type of step returned by the response. Default provides basic steps intended for web based applications. TurnByTurn provides detailed instructions with more granularity intended for a turn based navigation system.</p>
    #   @return [String]
    # @!attribute waypoints
    #   <p>List of waypoints between the Origin and Destination.</p>
    #   @return [Array<Types::RouteWaypoint>]
    class CalculateRoutesRequest < Struct.new(
      nil,
      :allow,
      :arrival_time,
      :avoid,
      :depart_now,
      :departure_time,
      :destination,
      :destination_options,
      :driver,
      :exclude,
      :instructions_measurement_system,
      :key,
      :languages,
      :leg_additional_features,
      :leg_geometry_format,
      :max_alternatives,
      :optimize_routing_for,
      :origin,
      :origin_options,
      :span_additional_features,
      :tolls,
      :traffic,
      :travel_mode,
      :travel_mode_options,
      :travel_step_type,
      :waypoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute leg_geometry_format
    #   <p>Specifies the format of the geometry returned for each leg of the route.</p>
    #   @return [String]
    # @!attribute notices
    #   <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RouteResponseNotice>]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p>
    #   @return [String]
    # @!attribute routes
    #   <p>The path from the origin to the destination.</p>
    #   @return [Array<Types::Route>]
    class CalculateRoutesResponse < Struct.new(
      nil,
      :leg_geometry_format,
      :notices,
      :pricing_bucket,
      :routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry defined as a circle. When request routing boundary was set as <code>AutoCircle</code>, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute center
    #   <p>Center of the Circle defined in longitude and latitude coordinates.</p> <p>Example: <code>[-123.1174, 49.2847]</code> represents the position with longitude <code>-123.1174</code> and latitude <code>49.2847</code>. </p>
    #   @return [Array<Float>]
    # @!attribute radius
    #   <p>Radius of the Circle.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Float]
    class Circle < Struct.new(
      nil,
      :center,
      :radius,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry defined as a corridor - a LineString with a radius that defines the width of the corridor.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute line_string
    #   <p>An ordered list of positions used to plot a route on a map.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [Array<Array<Float>>]
    # @!attribute radius
    #   <p>Radius that defines the width of the corridor.</p>
    #   @return [Integer]
    class Corridor < Struct.new(
      nil,
      :line_string,
      :radius,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Calculated isolines and associated properties.</p>
    # @!attribute connections
    #   <p>Isolines may contain multiple components, if these components are connected by ferry links. These components are returned as separate polygons while the ferry links are returned as connections.</p>
    #   @return [Array<Types::IsolineConnection>]
    # @!attribute distance_threshold
    #   <p>Distance threshold corresponding to the calculated Isoline.</p>
    #   @return [Integer]
    # @!attribute geometries
    #   <p>Geometries for the Calculated isolines.</p>
    #   @return [Array<Types::IsolineShapeGeometry>]
    # @!attribute time_threshold
    #   <p>Time threshold corresponding to the calculated isoline.</p>
    #   @return [Integer]
    class Isoline < Struct.new(
      nil,
      :connections,
      :distance_threshold,
      :geometries,
      :time_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance_threshold] = 0 unless options.key?(:distance_threshold)
        options[:time_threshold] = 0 unless options.key?(:time_threshold)
        super
      end
    end

    # <p>Features that are allowed while calculating an isoline.</p>
    # @!attribute hot
    #   <p>Allow Hot (High Occupancy Toll) lanes while calculating an isoline.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    # @!attribute hov
    #   <p>Allow Hov (High Occupancy vehicle) lanes while calculating an isoline.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    class IsolineAllowOptions < Struct.new(
      nil,
      :hot,
      :hov,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The area to be avoided.</p>
    # @!attribute except
    #   <p>Exceptions to the provided avoidance geometry, to be included while calculating an isoline.</p>
    #   @return [Array<Types::IsolineAvoidanceAreaGeometry>]
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::IsolineAvoidanceAreaGeometry]
    class IsolineAvoidanceArea < Struct.new(
      nil,
      :except,
      :geometry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The avoidance geometry, to be included while calculating an isoline.</p>
    # @!attribute bounding_box
    #   <p>Geometry defined as a bounding box. The first pair represents the X and Y coordinates (longitude and latitude,) of the southwest corner of the bounding box; the second pair represents the X and Y coordinates (longitude and latitude) of the northeast corner.</p>
    #   @return [Array<Float>]
    # @!attribute corridor
    #   <p>Geometry defined as a corridor - a LineString with a radius that defines the width of the corridor.</p>
    #   @return [Types::Corridor]
    # @!attribute polygon
    #   <p>A list of Polygon will be excluded for calculating isolines, the list can only contain 1 polygon.</p>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute polyline_corridor
    #   <p>Geometry defined as an encoded corridor – a polyline with a radius that defines the width of the corridor. For more information on polyline encoding, see <a href="https://github.com/heremaps/flexiblepolyline/blob/master/README.md">https://github.com/heremaps/flexiblepolyline/blob/master/README.md</a>.</p>
    #   @return [Types::PolylineCorridor]
    # @!attribute polyline_polygon
    #   <p>A list of PolylinePolygon's that are excluded for calculating isolines, the list can only contain 1 polygon. For more information on polyline encoding, see <a href="https://github.com/heremaps/flexiblepolyline/blob/master/README.md">https://github.com/heremaps/flexiblepolyline/blob/master/README.md</a>. </p>
    #   @return [Array<String>]
    class IsolineAvoidanceAreaGeometry < Struct.new(
      nil,
      :bounding_box,
      :corridor,
      :polygon,
      :polyline_corridor,
      :polyline_polygon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Features that are avoided while calculating isolines. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation.</p>
    # @!attribute areas
    #   <p>Areas to be avoided.</p>
    #   @return [Array<Types::IsolineAvoidanceArea>]
    # @!attribute car_shuttle_trains
    #   <p>Avoid car-shuttle-trains while calculating an isoline.</p>
    #   @return [Boolean]
    # @!attribute controlled_access_highways
    #   <p>Avoid controlled access highways while calculating an isoline.</p>
    #   @return [Boolean]
    # @!attribute dirt_roads
    #   <p>Avoid dirt roads while calculating an isoline.</p>
    #   @return [Boolean]
    # @!attribute ferries
    #   <p>Avoid ferries while calculating an isoline.</p>
    #   @return [Boolean]
    # @!attribute seasonal_closure
    #   <p>Avoid roads that have seasonal closure while calculating an isoline.</p>
    #   @return [Boolean]
    # @!attribute toll_roads
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute toll_transponders
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute truck_road_types
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute tunnels
    #   <p>Avoid tunnels while calculating an isoline.</p>
    #   @return [Boolean]
    # @!attribute u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    # @!attribute zone_categories
    #   <p>Zone categories to be avoided.</p>
    #   @return [Array<Types::IsolineAvoidanceZoneCategory>]
    class IsolineAvoidanceOptions < Struct.new(
      nil,
      :areas,
      :car_shuttle_trains,
      :controlled_access_highways,
      :dirt_roads,
      :ferries,
      :seasonal_closure,
      :toll_roads,
      :toll_transponders,
      :truck_road_types,
      :tunnels,
      :u_turns,
      :zone_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Zone category to be avoided.</p>
    # @!attribute category
    #   <p>Zone category to be avoided.</p>
    #   @return [String]
    class IsolineAvoidanceZoneCategory < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is <code>Car</code>.</p>
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::IsolineVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    class IsolineCarOptions < Struct.new(
      nil,
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        super
      end
    end

    # <p>Isolines may contain multiple components, if these components are connected by ferry links. These components are returned as separate polygons while the ferry links are returned as connections.</p>
    # @!attribute from_polygon_index
    #   <p>Index of the polygon corresponding to the "from" component of the connection. The polygon is available from <code>Isoline[].Geometries</code>.</p>
    #   @return [Integer]
    # @!attribute geometry
    #   <p>The isoline geometry.</p>
    #   @return [Types::IsolineConnectionGeometry]
    # @!attribute to_polygon_index
    #   <p>Index of the polygon corresponding to the "to" component of the connection. The polygon is available from <code>Isoline[].Geometries</code>.</p>
    #   @return [Integer]
    class IsolineConnection < Struct.new(
      nil,
      :from_polygon_index,
      :geometry,
      :to_polygon_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry of the connection between different isoline components.</p>
    # @!attribute line_string
    #   <p>An ordered list of positions used to plot a route on a map.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [Array<Array<Float>>]
    # @!attribute polyline
    #   <p>An ordered list of positions used to plot a route on a map in a lossy compression format.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [String]
    class IsolineConnectionGeometry < Struct.new(
      nil,
      :line_string,
      :polyline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Destination related options.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::IsolineMatchingOptions]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::IsolineSideOfStreetOptions]
    class IsolineDestinationOptions < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        super
      end
    end

    # <p>Isoline granularity related options.</p>
    # @!attribute max_points
    #   <p>Maximum number of points of returned Isoline.</p>
    #   @return [Integer]
    # @!attribute max_resolution
    #   <p>Maximum resolution of the returned isoline.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    class IsolineGranularityOptions < Struct.new(
      nil,
      :max_points,
      :max_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_points] = nil unless options.key?(:max_points)
        options[:max_resolution] = 0 unless options.key?(:max_resolution)
        super
      end
    end

    # <p>Isoline matching related options.</p>
    # @!attribute name_hint
    #   <p>Attempts to match the provided position to a road similar to the provided name.</p>
    #   @return [String]
    # @!attribute on_road_threshold
    #   <p>If the distance to a highway/bridge/tunnel/sliproad is within threshold, the waypoint will be snapped to the highway/bridge/tunnel/sliproad.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute radius
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>Meters</code> </p>
    #   @return [Integer]
    # @!attribute strategy
    #   <p>Strategy that defines matching of the position onto the road network. MatchAny considers all roads possible, whereas MatchMostSignificantRoad matches to the most significant road.</p>
    #   @return [String]
    class IsolineMatchingOptions < Struct.new(
      nil,
      :name_hint,
      :on_road_threshold,
      :radius,
      :strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:on_road_threshold] = 0 unless options.key?(:on_road_threshold)
        options[:radius] = 0 unless options.key?(:radius)
        super
      end
    end

    # <p>Origin related options.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::IsolineMatchingOptions]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::IsolineSideOfStreetOptions]
    class IsolineOriginOptions < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        super
      end
    end

    # <p>Travel mode options when the provided travel mode is <code>Scooter</code> </p>
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::IsolineVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed specified.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    class IsolineScooterOptions < Struct.new(
      nil,
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        super
      end
    end

    # <p>Geometry of the connection between different Isoline components.</p>
    # @!attribute polygon
    #   <p>A list of Isoline Polygons, for each isoline polygon, it contains polygons of the first linear ring (the outer ring) and from 2nd item to the last item (the inner rings).</p>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute polyline_polygon
    #   <p>A list of Isoline PolylinePolygon, for each isoline PolylinePolygon, it contains PolylinePolygon of the first linear ring (the outer ring) and from 2nd item to the last item (the inner rings). For more information on polyline encoding, see <a href="https://github.com/heremaps/flexiblepolyline/blob/master/README.md">https://github.com/heremaps/flexiblepolyline/blob/master/README.md</a>.</p>
    #   @return [Array<String>]
    class IsolineShapeGeometry < Struct.new(
      nil,
      :polygon,
      :polyline_polygon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to configure matching the provided position to a side of the street.</p>
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used. AnyStreet will always use the provided position.</p> <p>Default Value: <code>DividedStreetOnly</code> </p>
    #   @return [String]
    class IsolineSideOfStreetOptions < Struct.new(
      nil,
      :position,
      :use_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Threshold to be used for the isoline calculation. Up to 5 thresholds per provided type can be requested.</p>
    # @!attribute distance
    #   <p>Distance to be used for the isoline calculation.</p>
    #   @return [Array<Integer>]
    # @!attribute time
    #   <p>Time to be used for the isoline calculation.</p>
    #   @return [Array<Integer>]
    class IsolineThresholds < Struct.new(
      nil,
      :distance,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to traffic.</p>
    # @!attribute flow_event_threshold_override
    #   <p>Duration for which flow traffic is considered valid. For this period, the flow traffic is used over historical traffic data. Flow traffic refers to congestion, which changes very quickly. Duration in seconds for which flow traffic event would be considered valid. While flow traffic event is valid it will be used over the historical traffic data. </p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute usage
    #   <p>Determines if traffic should be used or ignored while calculating the route.</p> <p>Default Value: <code>UseTrafficData</code> </p>
    #   @return [String]
    class IsolineTrafficOptions < Struct.new(
      nil,
      :flow_event_threshold_override,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:flow_event_threshold_override] = 0 unless options.key?(:flow_event_threshold_override)
        super
      end
    end

    # <p>Trailer options corresponding to the vehicle.</p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default Value: <code>0</code> </p>
    #   @return [Integer]
    class IsolineTrailerOptions < Struct.new(
      nil,
      :axle_count,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:axle_count] = nil unless options.key?(:axle_count)
        options[:trailer_count] = nil unless options.key?(:trailer_count)
        super
      end
    end

    # <p>Travel mode related options for the provided travel mode.</p>
    # @!attribute car
    #   <p>Travel mode options when the provided travel mode is "Car"</p>
    #   @return [Types::IsolineCarOptions]
    # @!attribute scooter
    #   <p>Travel mode options when the provided travel mode is <code>Scooter</code> </p> <note> <p>When travel mode is set to <code>Scooter</code>, then the avoidance option <code>ControlledAccessHighways</code> defaults to <code>true</code>.</p> </note>
    #   @return [Types::IsolineScooterOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is "Truck"</p>
    #   @return [Types::IsolineTruckOptions]
    class IsolineTravelModeOptions < Struct.new(
      nil,
      :car,
      :scooter,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is "Truck"</p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute hazardous_cargos
    #   <p>List of Hazardous cargo contained in the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute height
    #   <p>Height of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute height_above_first_axle
    #   <p>Height of the vehicle above its first axle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute kpra_length
    #   <p>Kingpin to rear axle length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute length
    #   <p>Length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::IsolineVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed specified.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    # @!attribute payload_capacity
    #   <p>Payload capacity of the vehicle and trailers attached.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute tire_count
    #   <p>Number of tires on the vehicle.</p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Trailer options corresponding to the vehicle.</p>
    #   @return [Types::IsolineTrailerOptions]
    # @!attribute truck_type
    #   <p>Type of the truck.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute weight_per_axle_group
    #   <p>Specifies the total weight for the specified axle group. Meant for usage in countries that have different regulations based on the axle group type.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Types::WeightPerAxleGroup]
    # @!attribute width
    #   <p>Width of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    class IsolineTruckOptions < Struct.new(
      nil,
      :axle_count,
      :engine_type,
      :gross_weight,
      :hazardous_cargos,
      :height,
      :height_above_first_axle,
      :kpra_length,
      :length,
      :license_plate,
      :max_speed,
      :occupancy,
      :payload_capacity,
      :tire_count,
      :trailer,
      :truck_type,
      :tunnel_restriction_code,
      :weight_per_axle,
      :weight_per_axle_group,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:axle_count] = nil unless options.key?(:axle_count)
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:height_above_first_axle] = 0 unless options.key?(:height_above_first_axle)
        options[:kpra_length] = 0 unless options.key?(:kpra_length)
        options[:length] = 0 unless options.key?(:length)
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        options[:payload_capacity] = 0 unless options.key?(:payload_capacity)
        options[:tire_count] = nil unless options.key?(:tire_count)
        options[:weight_per_axle] = 0 unless options.key?(:weight_per_axle)
        options[:width] = 0 unless options.key?(:width)
        super
      end
    end

    # <p>The vehicle license plate.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute last_character
    #   <p>The last character of the License Plate.</p>
    #   @return [String]
    class IsolineVehicleLicensePlate < Struct.new(
      nil,
      :last_character,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The localized string.</p>
    # @!attribute language
    #   <p>A list of BCP 47 compliant language codes for the results to be rendered in. The request uses the regional default as the fallback if the requested language can't be provided.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the localized string.</p>
    #   @return [String]
    class LocalizedString < Struct.new(
      nil,
      :language,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute avoid
    #   <p>Features that are avoided. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, this setting is ignored.</p>
    #   @return [Types::WaypointOptimizationAvoidanceOptions]
    # @!attribute clustering
    #   <p>Clustering allows you to specify how nearby waypoints can be clustered to improve the optimized sequence.</p>
    #   @return [Types::WaypointOptimizationClusteringOptions]
    # @!attribute departure_time
    #   <p>Departure time from the waypoint.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destination
    #   <p>The final position for the route in the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute destination_options
    #   <p>Destination related options.</p>
    #   @return [Types::WaypointOptimizationDestinationOptions]
    # @!attribute driver
    #   <p>Driver related options.</p>
    #   @return [Types::WaypointOptimizationDriverOptions]
    # @!attribute exclude
    #   <p>Features to be strictly excluded while calculating the route.</p>
    #   @return [Types::WaypointOptimizationExclusionOptions]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute optimize_sequencing_for
    #   <p>Specifies the optimization criteria for the calculated sequence.</p> <p>Default Value: <code>FastestRoute</code>.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>The start position for the route.</p>
    #   @return [Array<Float>]
    # @!attribute origin_options
    #   <p>Origin related options.</p>
    #   @return [Types::WaypointOptimizationOriginOptions]
    # @!attribute traffic
    #   <p>Traffic-related options.</p>
    #   @return [Types::WaypointOptimizationTrafficOptions]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    #   @return [Types::WaypointOptimizationTravelModeOptions]
    # @!attribute waypoints
    #   <p>List of waypoints between the <code>Origin</code> and <code>Destination</code>.</p>
    #   @return [Array<Types::WaypointOptimizationWaypoint>]
    class OptimizeWaypointsRequest < Struct.new(
      nil,
      :avoid,
      :clustering,
      :departure_time,
      :destination,
      :destination_options,
      :driver,
      :exclude,
      :key,
      :optimize_sequencing_for,
      :origin,
      :origin_options,
      :traffic,
      :travel_mode,
      :travel_mode_options,
      :waypoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connections
    #   <p>Details about the connection from one waypoint to the next, within the optimized sequence.</p>
    #   @return [Array<Types::WaypointOptimizationConnection>]
    # @!attribute distance
    #   <p>Overall distance to travel the whole sequence.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Overall duration to travel the whole sequence.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute impeding_waypoints
    #   <p>Returns waypoints that caused the optimization problem to fail, and the constraints that were unsatisfied leading to the failure.</p>
    #   @return [Array<Types::WaypointOptimizationImpedingWaypoint>]
    # @!attribute optimized_waypoints
    #   <p>Waypoints in the order of the optimized sequence.</p>
    #   @return [Array<Types::WaypointOptimizationOptimizedWaypoint>]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p>
    #   @return [String]
    # @!attribute time_breakdown
    #   <p>Time breakdown for the sequence.</p>
    #   @return [Types::WaypointOptimizationTimeBreakdown]
    class OptimizeWaypointsResponse < Struct.new(
      nil,
      :connections,
      :distance,
      :duration,
      :impeding_waypoints,
      :optimized_waypoints,
      :pricing_bucket,
      :time_breakdown,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Geometry defined as an encoded corridor - an encoded polyline with a radius that defines the width of the corridor.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute polyline
    #   <p>An ordered list of positions used to plot a route on a map in a lossy compression format.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [String]
    # @!attribute radius
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>Meters</code> </p>
    #   @return [Integer]
    class PolylineCorridor < Struct.new(
      nil,
      :polyline,
      :radius,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Notices provide information around factors that may have influenced snapping in a manner atypical to the standard use cases.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The notice title.</p>
    #   @return [String]
    # @!attribute trace_point_indexes
    #   <p>TracePoint indices for which the provided notice code corresponds to.</p>
    #   @return [Array<Integer>]
    class RoadSnapNotice < Struct.new(
      nil,
      :code,
      :title,
      :trace_point_indexes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Interpolated geometry for the snapped route that is overlay-able onto a map.</p>
    # @!attribute line_string
    #   <p>An ordered list of positions used to plot a route on a map.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [Array<Array<Float>>]
    # @!attribute polyline
    #   <p>An ordered list of positions used to plot a route on a map in a lossy compression format.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [String]
    class RoadSnapSnappedGeometry < Struct.new(
      nil,
      :line_string,
      :polyline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>TracePoints snapped onto the road network.</p>
    # @!attribute confidence
    #   <p>Confidence value for the correctness of this point match.</p>
    #   @return [Float]
    # @!attribute original_position
    #   <p>Position of the TracePoint provided within the request, at the same index.</p>
    #   @return [Array<Float>]
    # @!attribute snapped_position
    #   <p>Snapped position of the TracePoint provided within the request, at the same index. </p>
    #   @return [Array<Float>]
    class RoadSnapSnappedTracePoint < Struct.new(
      nil,
      :confidence,
      :original_position,
      :snapped_position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>TracePoint indices for which the provided notice code corresponds to.</p>
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute speed
    #   <p>Speed at the specified trace point .</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute timestamp
    #   <p>Timestamp of the event.</p>
    #   @return [String]
    class RoadSnapTracePoint < Struct.new(
      nil,
      :heading,
      :position,
      :speed,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:heading] = 0 unless options.key?(:heading)
        options[:speed] = 0 unless options.key?(:speed)
        super
      end
    end

    # <p>Trailer options corresponding to the vehicle.</p>
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default Value: <code>0</code> </p>
    #   @return [Integer]
    class RoadSnapTrailerOptions < Struct.new(
      nil,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode related options for the provided travel mode.</p>
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is "Truck".</p>
    #   @return [Types::RoadSnapTruckOptions]
    class RoadSnapTravelModeOptions < Struct.new(
      nil,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is "Truck".</p>
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute hazardous_cargos
    #   <p>List of Hazardous cargos contained in the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute height
    #   <p>Height of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute length
    #   <p>Length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Trailer options corresponding to the vehicle.</p>
    #   @return [Types::RoadSnapTrailerOptions]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute width
    #   <p>Width of the vehicle in centimenters.</p>
    #   @return [Integer]
    class RoadSnapTruckOptions < Struct.new(
      nil,
      :gross_weight,
      :hazardous_cargos,
      :height,
      :length,
      :trailer,
      :tunnel_restriction_code,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:length] = 0 unless options.key?(:length)
        options[:width] = 0 unless options.key?(:width)
        super
      end
    end

    # <p>The route.</p>
    # @!attribute legs
    #   <p>A leg is a section of a route from one waypoint to the next. A leg could be of type Vehicle, Pedestrian or Ferry. Legs of different types could occur together within a single route. For example, a car employing the use of a Ferry will contain Vehicle legs corresponding to journey on land, and Ferry legs corresponding to the journey via Ferry.</p>
    #   @return [Array<Types::RouteLeg>]
    # @!attribute major_road_labels
    #   <p>Important labels including names and route numbers that differentiate the current route from the alternatives presented.</p>
    #   @return [Array<Types::RouteMajorRoadLabel>]
    # @!attribute summary
    #   <p>Summarized details of the leg.</p>
    #   @return [Types::RouteSummary]
    class Route < Struct.new(
      nil,
      :legs,
      :major_road_labels,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Features that are allowed while calculating a route.</p>
    # @!attribute hot
    #   <p>Allow Hot (High Occupancy Toll) lanes while calculating the route.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    # @!attribute hov
    #   <p>Allow Hov (High Occupancy vehicle) lanes while calculating the route.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    class RouteAllowOptions < Struct.new(
      nil,
      :hot,
      :hov,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Areas to be avoided.</p>
    # @!attribute except
    #   <p>Exceptions to the provided avoidance geometry, to be included while calculating the route.</p>
    #   @return [Array<Types::RouteAvoidanceAreaGeometry>]
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::RouteAvoidanceAreaGeometry]
    class RouteAvoidanceArea < Struct.new(
      nil,
      :except,
      :geometry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry of the area to be avoided.</p>
    # @!attribute corridor
    #   <p>Geometry defined as a corridor - a LineString with a radius that defines the width of the corridor.</p>
    #   @return [Types::Corridor]
    # @!attribute bounding_box
    #   <p>Geometry defined as a bounding box. The first pair represents the X and Y coordinates (longitude and latitude,) of the southwest corner of the bounding box; the second pair represents the X and Y coordinates (longitude and latitude) of the northeast corner.</p>
    #   @return [Array<Float>]
    # @!attribute polygon
    #   <p>Geometry defined as a polygon with only one linear ring.</p>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute polyline_corridor
    #   <p>Geometry defined as an encoded corridor - an encoded polyline with a radius that defines the width of the corridor.</p>
    #   @return [Types::PolylineCorridor]
    # @!attribute polyline_polygon
    #   <p>A list of Isoline PolylinePolygon, for each isoline PolylinePolygon, it contains PolylinePolygon of the first linear ring (the outer ring) and from 2nd item to the last item (the inner rings). For more information on polyline encoding, see <a href="https://github.com/heremaps/flexiblepolyline/blob/master/README.md">https://github.com/heremaps/flexiblepolyline/blob/master/README.md</a>.</p>
    #   @return [Array<String>]
    class RouteAvoidanceAreaGeometry < Struct.new(
      nil,
      :corridor,
      :bounding_box,
      :polygon,
      :polyline_corridor,
      :polyline_polygon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies options for areas to avoid when calculating the route. This is a best-effort avoidance setting, meaning the router will try to honor the avoidance preferences but may still include restricted areas if no feasible alternative route exists. If avoidance options are not followed, the response will indicate that the avoidance criteria were violated.</p>
    # @!attribute areas
    #   <p>Areas to be avoided.</p>
    #   @return [Array<Types::RouteAvoidanceArea>]
    # @!attribute car_shuttle_trains
    #   <p>Avoid car-shuttle-trains while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute controlled_access_highways
    #   <p>Avoid controlled access highways while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute dirt_roads
    #   <p>Avoid dirt roads while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute ferries
    #   <p>Avoid ferries while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute seasonal_closure
    #   <p>Avoid roads that have seasonal closure while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute toll_roads
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute toll_transponders
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute truck_road_types
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute tunnels
    #   <p>Avoid tunnels while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    # @!attribute zone_categories
    #   <p>Zone categories to be avoided.</p>
    #   @return [Array<Types::RouteAvoidanceZoneCategory>]
    class RouteAvoidanceOptions < Struct.new(
      nil,
      :areas,
      :car_shuttle_trains,
      :controlled_access_highways,
      :dirt_roads,
      :ferries,
      :seasonal_closure,
      :toll_roads,
      :toll_transponders,
      :truck_road_types,
      :tunnels,
      :u_turns,
      :zone_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Zone categories to be avoided.</p>
    # @!attribute category
    #   <p>Zone category to be avoided.</p>
    #   @return [String]
    class RouteAvoidanceZoneCategory < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is <code>Car</code>.</p>
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed specified.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    class RouteCarOptions < Struct.new(
      nil,
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        super
      end
    end

    # <p>Details related to the continue highway step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteContinueHighwayStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Details related to the continue step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    class RouteContinueStepDetails < Struct.new(
      nil,
      :intersection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to the destination.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute avoid_u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::RouteMatchingOptions]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::RouteSideOfStreetOptions]
    # @!attribute stop_duration
    #   <p>Duration of the stop.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteDestinationOptions < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :avoid_u_turns,
      :heading,
      :matching,
      :side_of_street,
      :stop_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        options[:stop_duration] = 0 unless options.key?(:stop_duration)
        super
      end
    end

    # <p>Driver related options.</p>
    # @!attribute schedule
    #   <p>Driver work-rest schedule. Stops are added to fulfil the provided rest schedule.</p>
    #   @return [Array<Types::RouteDriverScheduleInterval>]
    class RouteDriverOptions < Struct.new(
      nil,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Interval of the driver work-rest schedule. Stops are added to fulfil the provided rest schedule.</p>
    # @!attribute drive_duration
    #   <p>Maximum allowed driving time before stopping to rest.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute rest_duration
    #   <p>Resting time before the driver can continue driving.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteDriverScheduleInterval < Struct.new(
      nil,
      :drive_duration,
      :rest_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:drive_duration] = 0 unless options.key?(:drive_duration)
        options[:rest_duration] = 0 unless options.key?(:rest_duration)
        super
      end
    end

    # <p>Type of the emission.</p> <p> <b>Valid values</b>: <code>Euro1, Euro2, Euro3, Euro4, Euro5, Euro6, EuroEev</code> </p>
    # @!attribute co2_emission_class
    #   <p>The CO 2 emission classes.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the emission.</p> <p> <b>Valid values</b>: <code>Euro1, Euro2, Euro3, Euro4, Euro5, Euro6, EuroEev</code> </p>
    #   @return [String]
    class RouteEmissionType < Struct.new(
      nil,
      :co2_emission_class,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details related to the enter highway step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteEnterHighwayStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Specifies strict exclusion options for the route calculation. This setting mandates that the router will avoid any routes that include the specified options, rather than merely attempting to minimize them.</p>
    # @!attribute countries
    #   <p>List of countries to be avoided defined by two-letter or three-letter country codes.</p>
    #   @return [Array<String>]
    class RouteExclusionOptions < Struct.new(
      nil,
      :countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details related to the exit step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute relative_exit
    #   <p>Exit to be taken.</p>
    #   @return [Integer]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteExitStepDetails < Struct.new(
      nil,
      :intersection,
      :relative_exit,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relative_exit] = nil unless options.key?(:relative_exit)
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p> <note> <p>Only available when the TravelStepType is Default.</p> </note>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteFerryAfterTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the arrival for the leg.</p>
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RouteFerryPlace]
    # @!attribute time
    #   <p>The time.</p>
    #   @return [String]
    class RouteFerryArrival < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p> <note> <p>Only available when the TravelStepType is Default.</p> </note>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteFerryBeforeTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the departure for the leg.</p>
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RouteFerryPlace]
    # @!attribute time
    #   <p>The time.</p>
    #   @return [String]
    class RouteFerryDeparture < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>FerryLegDetails is populated when the Leg type is Ferry, and provides additional information that is specific</p>
    # @!attribute after_travel_steps
    #   <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    #   @return [Array<Types::RouteFerryAfterTravelStep>]
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RouteFerryArrival]
    # @!attribute before_travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteFerryBeforeTravelStep>]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RouteFerryDeparture]
    # @!attribute notices
    #   <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RouteFerryNotice>]
    # @!attribute pass_through_waypoints
    #   <p>Waypoints that were passed through during the leg. This includes the waypoints that were configured with the PassThrough option.</p>
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    # @!attribute route_name
    #   <p>Route name of the ferry line.</p>
    #   @return [String]
    # @!attribute spans
    #   <p>Spans that were computed for the requested SpanAdditionalFeatures.</p>
    #   @return [Array<Types::RouteFerrySpan>]
    # @!attribute summary
    #   <p>Summarized details of the leg.</p>
    #   @return [Types::RouteFerrySummary]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteFerryTravelStep>]
    class RouteFerryLegDetails < Struct.new(
      nil,
      :after_travel_steps,
      :arrival,
      :before_travel_steps,
      :departure,
      :notices,
      :pass_through_waypoints,
      :route_name,
      :spans,
      :summary,
      :travel_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Impact corresponding to the issue. While Low impact notices can be safely ignored, High impact notices must be evaluated further to determine the impact.</p>
    #   @return [String]
    class RouteFerryNotice < Struct.new(
      nil,
      :code,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized details of the leg.</p>
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteFerryOverviewSummary < Struct.new(
      nil,
      :distance,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Position provided in the request.</p>
    # @!attribute name
    #   <p>The name of the place.</p>
    #   @return [String]
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RouteFerryPlace < Struct.new(
      nil,
      :name,
      :original_position,
      :position,
      :waypoint_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Span computed for the requested SpanAdditionalFeatures.</p>
    # @!attribute country
    #   <p>3 letter Country code corresponding to the Span.</p>
    #   @return [String]
    # @!attribute distance
    #   <p>Distance of the computed span. This feature doesn't split a span, but is always computed on a span split by other properties.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the computed span. This feature doesn't split a span, but is always computed on a span split by other properties.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this span.</p>
    #   @return [Integer]
    # @!attribute names
    #   <p>Provides an array of names of the ferry span in available languages.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute region
    #   <p>2-3 letter Region code corresponding to the Span. This is either a province or a state.</p>
    #   @return [String]
    class RouteFerrySpan < Struct.new(
      nil,
      :country,
      :distance,
      :duration,
      :geometry_offset,
      :names,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Summarized details for the leg including travel steps only. The Distance for the travel only portion of the journey is the same as the Distance within the Overview summary.</p>
    # @!attribute overview
    #   <p>Summarized details for the leg including before travel, travel and after travel steps.</p>
    #   @return [Types::RouteFerryOverviewSummary]
    # @!attribute travel_only
    #   <p>Summarized details for the leg including travel steps only. The Distance for the travel only portion of the journey is in meters</p>
    #   @return [Types::RouteFerryTravelOnlySummary]
    class RouteFerrySummary < Struct.new(
      nil,
      :overview,
      :travel_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized details for the leg including travel steps only. The Distance for the travel only portion of the journey is the same as the Distance within the Overview summary.</p>
    # @!attribute duration
    #   <p>Total duration in free flowing traffic, which is the best case or shortest duration possible to cover the leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteFerryTravelOnlySummary < Struct.new(
      nil,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Steps of a leg that must be performed during the travel portion of the leg.</p>
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p> <note> <p>Only available when the TravelStepType is Default.</p> </note>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteFerryTravelStep < Struct.new(
      nil,
      :distance,
      :duration,
      :geometry_offset,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Details that are specific to a Keep step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteKeepStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>A leg is a section of a route from one waypoint to the next. A leg could be of type Vehicle, Pedestrian or Ferry. Legs of different types could occur together within a single route. For example, a car employing the use of a Ferry will contain Vehicle legs corresponding to journey on land, and Ferry legs corresponding to the journey via Ferry.</p>
    # @!attribute ferry_leg_details
    #   <p>FerryLegDetails is populated when the Leg type is Ferry, and provides additional information that is specific</p>
    #   @return [Types::RouteFerryLegDetails]
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::RouteLegGeometry]
    # @!attribute language
    #   <p>List of languages for instructions within steps in the response.</p>
    #   @return [String]
    # @!attribute pedestrian_leg_details
    #   <p>Details related to the pedestrian leg.</p>
    #   @return [Types::RoutePedestrianLegDetails]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the leg.</p>
    #   @return [String]
    # @!attribute vehicle_leg_details
    #   <p>Details related to the vehicle leg.</p>
    #   @return [Types::RouteVehicleLegDetails]
    class RouteLeg < Struct.new(
      nil,
      :ferry_leg_details,
      :geometry,
      :language,
      :pedestrian_leg_details,
      :travel_mode,
      :type,
      :vehicle_leg_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The returned Route leg geometry.</p>
    # @!attribute line_string
    #   <p>An ordered list of positions used to plot a route on a map.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [Array<Array<Float>>]
    # @!attribute polyline
    #   <p>An ordered list of positions used to plot a route on a map in a lossy compression format.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [String]
    class RouteLegGeometry < Struct.new(
      nil,
      :line_string,
      :polyline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Important labels including names and route numbers that differentiate the current route from the alternatives presented.</p>
    # @!attribute road_name
    #   <p>Name of the road (localized).</p>
    #   @return [Types::LocalizedString]
    # @!attribute route_number
    #   <p>Route number of the road.</p>
    #   @return [Types::RouteNumber]
    class RouteMajorRoadLabel < Struct.new(
      nil,
      :road_name,
      :route_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to route matching.</p>
    # @!attribute name_hint
    #   <p>Attempts to match the provided position to a road similar to the provided name.</p>
    #   @return [String]
    # @!attribute on_road_threshold
    #   <p>If the distance to a highway/bridge/tunnel/sliproad is within threshold, the waypoint will be snapped to the highway/bridge/tunnel/sliproad.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute radius
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>Meters</code> </p>
    #   @return [Integer]
    # @!attribute strategy
    #   <p>Strategy that defines matching of the position onto the road network. MatchAny considers all roads possible, whereas MatchMostSignificantRoad matches to the most significant road.</p>
    #   @return [String]
    class RouteMatchingOptions < Struct.new(
      nil,
      :name_hint,
      :on_road_threshold,
      :radius,
      :strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:on_road_threshold] = 0 unless options.key?(:on_road_threshold)
        options[:radius] = 0 unless options.key?(:radius)
        super
      end
    end

    # <p>Allow Options related to the route matrix.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute hot
    #   <p>Allow Hot (High Occupancy Toll) lanes while calculating the route.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    # @!attribute hov
    #   <p>Allow Hov (High Occupancy vehicle) lanes while calculating the route.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    class RouteMatrixAllowOptions < Struct.new(
      nil,
      :hot,
      :hov,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the circle that was used while calculating the route.</p>
    # @!attribute margin
    #   <p>The margin provided for the calculation.</p>
    #   @return [Integer]
    # @!attribute max_radius
    #   <p>The maximum size of the radius provided for the calculation.</p>
    #   @return [Integer]
    class RouteMatrixAutoCircle < Struct.new(
      nil,
      :margin,
      :max_radius,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:margin] = 0 unless options.key?(:margin)
        options[:max_radius] = 0 unless options.key?(:max_radius)
        super
      end
    end

    # <p>Area to be avoided.</p>
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::RouteMatrixAvoidanceAreaGeometry]
    class RouteMatrixAvoidanceArea < Struct.new(
      nil,
      :geometry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry of the area to be avoided.</p>
    # @!attribute bounding_box
    #   <p>Geometry defined as a bounding box. The first pair represents the X and Y coordinates (longitude and latitude,) of the southwest corner of the bounding box; the second pair represents the X and Y coordinates (longitude and latitude) of the northeast corner.</p>
    #   @return [Array<Float>]
    # @!attribute polygon
    #   <p>Geometry defined as a polygon with only one linear ring.</p>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute polyline_polygon
    #   <p>A list of Isoline PolylinePolygon, for each isoline PolylinePolygon, it contains PolylinePolygon of the first linear ring (the outer ring) and from second item to the last item (the inner rings). For more information on polyline encoding, see <a href="https://github.com/heremaps/flexiblepolyline/blob/master/README.md">https://github.com/heremaps/flexiblepolyline/blob/master/README.md</a>.</p>
    #   @return [Array<String>]
    class RouteMatrixAvoidanceAreaGeometry < Struct.new(
      nil,
      :bounding_box,
      :polygon,
      :polyline_polygon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies options for areas to avoid when calculating the route. This is a best-effort avoidance setting, meaning the router will try to honor the avoidance preferences but may still include restricted areas if no feasible alternative route exists. If avoidance options are not followed, the response will indicate that the avoidance criteria were violated.</p>
    # @!attribute areas
    #   <p>Areas to be avoided.</p>
    #   @return [Array<Types::RouteMatrixAvoidanceArea>]
    # @!attribute car_shuttle_trains
    #   <p>Avoid car-shuttle-trains while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute controlled_access_highways
    #   <p>Avoid controlled access highways while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute dirt_roads
    #   <p>Avoid dirt roads while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute ferries
    #   <p>Avoid ferries while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute toll_roads
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute toll_transponders
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute truck_road_types
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute tunnels
    #   <p>Avoid tunnels while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    # @!attribute zone_categories
    #   <p>Zone categories to be avoided.</p>
    #   @return [Array<Types::RouteMatrixAvoidanceZoneCategory>]
    class RouteMatrixAvoidanceOptions < Struct.new(
      nil,
      :areas,
      :car_shuttle_trains,
      :controlled_access_highways,
      :dirt_roads,
      :ferries,
      :toll_roads,
      :toll_transponders,
      :truck_road_types,
      :tunnels,
      :u_turns,
      :zone_categories,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Zone categories to be avoided.</p>
    # @!attribute category
    #   <p>Zone category to be avoided.</p>
    #   @return [String]
    class RouteMatrixAvoidanceZoneCategory < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid.</p>
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::RouteMatrixBoundaryGeometry]
    # @!attribute unbounded
    #   <p>No restrictions in terms of a routing boundary, and is typically used for longer routes.</p>
    #   @return [Boolean]
    class RouteMatrixBoundary < Struct.new(
      nil,
      :geometry,
      :unbounded,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry of the routing boundary.</p>
    # @!attribute auto_circle
    #   <p>Provides the circle that was used while calculating the route.</p>
    #   @return [Types::RouteMatrixAutoCircle]
    # @!attribute circle
    #   <p>Geometry defined as a circle. When request routing boundary was set as <code>AutoCircle</code>, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p>
    #   @return [Types::Circle]
    # @!attribute bounding_box
    #   <p>Geometry defined as a bounding box. The first pair represents the X and Y coordinates (longitude and latitude,) of the southwest corner of the bounding box; the second pair represents the X and Y coordinates (longitude and latitude) of the northeast corner.</p>
    #   @return [Array<Float>]
    # @!attribute polygon
    #   <p>Geometry defined as a polygon with only one linear ring.</p>
    #   @return [Array<Array<Array<Float>>>]
    class RouteMatrixBoundaryGeometry < Struct.new(
      nil,
      :auto_circle,
      :circle,
      :bounding_box,
      :polygon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is <code>Car</code>.</p>
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    class RouteMatrixCarOptions < Struct.new(
      nil,
      :license_plate,
      :max_speed,
      :occupancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        super
      end
    end

    # <p>The route destination.</p>
    # @!attribute options
    #   <p>Destination related options.</p>
    #   @return [Types::RouteMatrixDestinationOptions]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    class RouteMatrixDestination < Struct.new(
      nil,
      :options,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to the destination.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::RouteMatrixMatchingOptions]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::RouteMatrixSideOfStreetOptions]
    class RouteMatrixDestinationOptions < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        super
      end
    end

    # <p>The calculated route matrix containing the results for all pairs of Origins to Destination positions. Each row corresponds to one entry in Origins. Each entry in the row corresponds to the route from that entry in Origins to an entry in Destination positions.</p>
    # @!attribute distance
    #   <p>The total distance of travel for the route.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>The expected duration of travel for the route.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute error
    #   <p>Error code that occurred during calculation of the route.</p>
    #   @return [String]
    class RouteMatrixEntry < Struct.new(
      nil,
      :distance,
      :duration,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Specifies strict exclusion options for the route calculation. This setting mandates that the router will avoid any routes that include the specified options, rather than merely attempting to minimize them.</p>
    # @!attribute countries
    #   <p>List of countries to be avoided defined by two-letter or three-letter country codes.</p>
    #   @return [Array<String>]
    class RouteMatrixExclusionOptions < Struct.new(
      nil,
      :countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Matching options.</p>
    # @!attribute name_hint
    #   <p>Attempts to match the provided position to a road similar to the provided name.</p>
    #   @return [String]
    # @!attribute on_road_threshold
    #   <p>If the distance to a highway/bridge/tunnel/sliproad is within threshold, the waypoint will be snapped to the highway/bridge/tunnel/sliproad.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute radius
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>Meters</code> </p>
    #   @return [Integer]
    # @!attribute strategy
    #   <p>Strategy that defines matching of the position onto the road network. MatchAny considers all roads possible, whereas MatchMostSignificantRoad matches to the most significant road.</p>
    #   @return [String]
    class RouteMatrixMatchingOptions < Struct.new(
      nil,
      :name_hint,
      :on_road_threshold,
      :radius,
      :strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:on_road_threshold] = 0 unless options.key?(:on_road_threshold)
        options[:radius] = 0 unless options.key?(:radius)
        super
      end
    end

    # <p>The start position for the route.</p>
    # @!attribute options
    #   <p>Origin related options.</p>
    #   @return [Types::RouteMatrixOriginOptions]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    class RouteMatrixOrigin < Struct.new(
      nil,
      :options,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Origin related options.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::RouteMatrixMatchingOptions]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::RouteMatrixSideOfStreetOptions]
    class RouteMatrixOriginOptions < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        super
      end
    end

    # <p>Travel mode options when the provided travel mode is <code>Scooter</code> </p>
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    class RouteMatrixScooterOptions < Struct.new(
      nil,
      :license_plate,
      :max_speed,
      :occupancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        super
      end
    end

    # <p>Options to configure matching the provided position to a side of the street.</p>
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used. AnyStreet will always use the provided position.</p> <p>Default Value: <code>DividedStreetOnly</code> </p>
    #   @return [String]
    class RouteMatrixSideOfStreetOptions < Struct.new(
      nil,
      :position,
      :use_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Traffic related options.</p>
    # @!attribute flow_event_threshold_override
    #   <p>Duration for which flow traffic is considered valid. For this period, the flow traffic is used over historical traffic data. Flow traffic refers to congestion, which changes very quickly. Duration in seconds for which flow traffic event would be considered valid. While flow traffic event is valid it will be used over the historical traffic data. </p>
    #   @return [Integer]
    # @!attribute usage
    #   <p>Determines if traffic should be used or ignored while calculating the route.</p> <p>Default Value: <code>UseTrafficData</code> </p>
    #   @return [String]
    class RouteMatrixTrafficOptions < Struct.new(
      nil,
      :flow_event_threshold_override,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:flow_event_threshold_override] = 0 unless options.key?(:flow_event_threshold_override)
        super
      end
    end

    # <p>Trailer options corresponding to the vehicle.</p>
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default Value: <code>0</code> </p>
    #   @return [Integer]
    class RouteMatrixTrailerOptions < Struct.new(
      nil,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode related options for the provided travel mode.</p>
    # @!attribute car
    #   <p>Travel mode options when the provided travel mode is "Car"</p>
    #   @return [Types::RouteMatrixCarOptions]
    # @!attribute scooter
    #   <p>Travel mode options when the provided travel mode is <code>Scooter</code> </p> <note> <p>When travel mode is set to <code>Scooter</code>, then the avoidance option <code>ControlledAccessHighways</code> defaults to <code>true</code>.</p> </note>
    #   @return [Types::RouteMatrixScooterOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is "Truck"</p>
    #   @return [Types::RouteMatrixTruckOptions]
    class RouteMatrixTravelModeOptions < Struct.new(
      nil,
      :car,
      :scooter,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is "Truck"</p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute hazardous_cargos
    #   <p>List of Hazardous cargo contained in the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute height
    #   <p>Height of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute kpra_length
    #   <p>Kingpin to rear axle length of the vehicle</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute length
    #   <p>Length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    # @!attribute payload_capacity
    #   <p>Payload capacity of the vehicle and trailers attached.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Trailer options corresponding to the vehicle.</p>
    #   @return [Types::RouteMatrixTrailerOptions]
    # @!attribute truck_type
    #   <p>Type of the truck.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute weight_per_axle_group
    #   <p>Specifies the total weight for the specified axle group. Meant for usage in countries that have different regulations based on the axle group type.</p>
    #   @return [Types::WeightPerAxleGroup]
    # @!attribute width
    #   <p>Width of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    class RouteMatrixTruckOptions < Struct.new(
      nil,
      :axle_count,
      :gross_weight,
      :hazardous_cargos,
      :height,
      :kpra_length,
      :length,
      :license_plate,
      :max_speed,
      :occupancy,
      :payload_capacity,
      :trailer,
      :truck_type,
      :tunnel_restriction_code,
      :weight_per_axle,
      :weight_per_axle_group,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:axle_count] = nil unless options.key?(:axle_count)
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:kpra_length] = 0 unless options.key?(:kpra_length)
        options[:length] = 0 unless options.key?(:length)
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        options[:payload_capacity] = 0 unless options.key?(:payload_capacity)
        options[:weight_per_axle] = 0 unless options.key?(:weight_per_axle)
        options[:width] = 0 unless options.key?(:width)
        super
      end
    end

    # <p>The vehicle License Plate.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute last_character
    #   <p>The last character of the License Plate.</p>
    #   @return [String]
    class RouteMatrixVehicleLicensePlate < Struct.new(
      nil,
      :last_character,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Notice Detail that is a range.</p>
    # @!attribute min
    #   <p>Minimum value for the range.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>Maximum value for the range.</p>
    #   @return [Integer]
    class RouteNoticeDetailRange < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The route number.</p>
    # @!attribute direction
    #   <p>Directional identifier of the route.</p>
    #   @return [String]
    # @!attribute language
    #   <p>List of languages for instructions corresponding to the route number.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The route number.</p>
    #   @return [String]
    class RouteNumber < Struct.new(
      nil,
      :direction,
      :language,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Origin related options.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute avoid_u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::RouteMatchingOptions]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::RouteSideOfStreetOptions]
    class RouteOriginOptions < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :avoid_u_turns,
      :heading,
      :matching,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        super
      end
    end

    # <p>The place where the waypoint is passed through and not treated as a stop.</p>
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RoutePassThroughPlace < Struct.new(
      nil,
      :original_position,
      :position,
      :waypoint_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If the waypoint should be treated as a stop. If yes, the route is split up into different legs around the stop.</p>
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RoutePassThroughPlace]
    class RoutePassThroughWaypoint < Struct.new(
      nil,
      :geometry_offset,
      :place,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details corresponding to the arrival for a leg.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RoutePedestrianPlace]
    # @!attribute time
    #   <p>The time.</p>
    #   @return [String]
    class RoutePedestrianArrival < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details corresponding to the departure for a leg.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RoutePedestrianPlace]
    # @!attribute time
    #   <p>The time.</p>
    #   @return [String]
    class RoutePedestrianDeparture < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details that are specific to a pedestrian leg.</p>
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RoutePedestrianArrival]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RoutePedestrianDeparture]
    # @!attribute notices
    #   <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RoutePedestrianNotice>]
    # @!attribute pass_through_waypoints
    #   <p>Waypoints that were passed through during the leg. This includes the waypoints that were configured with the PassThrough option.</p>
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    # @!attribute spans
    #   <p>Spans that were computed for the requested SpanAdditionalFeatures.</p>
    #   @return [Array<Types::RoutePedestrianSpan>]
    # @!attribute summary
    #   <p>Summarized details of the leg.</p>
    #   @return [Types::RoutePedestrianSummary]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RoutePedestrianTravelStep>]
    class RoutePedestrianLegDetails < Struct.new(
      nil,
      :arrival,
      :departure,
      :notices,
      :pass_through_waypoints,
      :spans,
      :summary,
      :travel_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Impact corresponding to the issue. While Low impact notices can be safely ignored, High impact notices must be evaluated further to determine the impact.</p>
    #   @return [String]
    class RoutePedestrianNotice < Struct.new(
      nil,
      :code,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to the pedestrian.</p>
    # @!attribute speed
    #   <p>Walking speed in Kilometers per hour.</p>
    #   @return [Float]
    class RoutePedestrianOptions < Struct.new(
      nil,
      :speed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:speed] = nil unless options.key?(:speed)
        super
      end
    end

    # <p>Provides a summary of a pedestrian route step.</p>
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p>
    #   @return [Integer]
    class RoutePedestrianOverviewSummary < Struct.new(
      nil,
      :distance,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Place details corresponding to the arrival or departure.</p>
    # @!attribute name
    #   <p>The name of the place.</p>
    #   @return [String]
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RoutePedestrianPlace < Struct.new(
      nil,
      :name,
      :original_position,
      :position,
      :side_of_street,
      :waypoint_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Span computed for the requested SpanAdditionalFeatures.</p>
    # @!attribute best_case_duration
    #   <p>Duration of the computed span without traffic congestion.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute country
    #   <p>3 letter Country code corresponding to the Span.</p>
    #   @return [String]
    # @!attribute distance
    #   <p>Distance of the computed span. This feature doesn't split a span, but is always computed on a span split by other properties.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the computed span. This feature doesn't split a span, but is always computed on a span split by other properties.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute dynamic_speed
    #   <p>Dynamic speed details corresponding to the span.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Types::RouteSpanDynamicSpeedDetails]
    # @!attribute functional_classification
    #   <p>Functional classification of the road segment corresponding to the span.</p>
    #   @return [Integer]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this span.</p>
    #   @return [Integer]
    # @!attribute incidents
    #   <p>Incidents corresponding to the span. These index into the Incidents in the parent Leg.</p>
    #   @return [Array<Integer>]
    # @!attribute names
    #   <p>Provides an array of names of the pedestrian span in available languages.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute pedestrian_access
    #   <p>Access attributes for a pedestrian corresponding to the span.</p>
    #   @return [Array<String>]
    # @!attribute region
    #   <p>2-3 letter Region code corresponding to the Span. This is either a province or a state.</p>
    #   @return [String]
    # @!attribute road_attributes
    #   <p>Attributes for the road segment corresponding to the span. </p>
    #   @return [Array<String>]
    # @!attribute route_numbers
    #   <p>Designated route name or number corresponding to the span.</p>
    #   @return [Array<Types::RouteNumber>]
    # @!attribute speed_limit
    #   <p>Speed limit details corresponding to the span.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Types::RouteSpanSpeedLimitDetails]
    # @!attribute typical_duration
    #   <p>Duration of the computed span under typical traffic congestion.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RoutePedestrianSpan < Struct.new(
      nil,
      :best_case_duration,
      :country,
      :distance,
      :duration,
      :dynamic_speed,
      :functional_classification,
      :geometry_offset,
      :incidents,
      :names,
      :pedestrian_access,
      :region,
      :road_attributes,
      :route_numbers,
      :speed_limit,
      :typical_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:best_case_duration] = 0 unless options.key?(:best_case_duration)
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        options[:typical_duration] = 0 unless options.key?(:typical_duration)
        super
      end
    end

    # <p>Summarized details for the leg including before travel, travel and after travel steps.</p>
    # @!attribute overview
    #   <p>Summarized details for the leg including before travel, travel and after travel steps.</p>
    #   @return [Types::RoutePedestrianOverviewSummary]
    # @!attribute travel_only
    #   <p>Summarized details for the leg including travel steps only. The Distance for the travel only portion of the journey is in meters</p>
    #   @return [Types::RoutePedestrianTravelOnlySummary]
    class RoutePedestrianSummary < Struct.new(
      nil,
      :overview,
      :travel_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized details for the leg including travel steps.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RoutePedestrianTravelOnlySummary < Struct.new(
      nil,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Steps of a leg that must be performed during the travel portion of the leg.</p>
    # @!attribute continue_step_details
    #   <p>Details related to the continue step.</p>
    #   @return [Types::RouteContinueStepDetails]
    # @!attribute current_road
    #   <p>Details of the current road. See RouteRoad for details of sub-attributes.</p>
    #   @return [Types::RouteRoad]
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute exit_number
    #   <p>Exit number of the road exit, if applicable.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p> <note> <p>Only available when the TravelStepType is Default.</p> </note>
    #   @return [String]
    # @!attribute keep_step_details
    #   <p>Details that are specific to a Keep step.</p>
    #   @return [Types::RouteKeepStepDetails]
    # @!attribute next_road
    #   <p>Details of the next road. See RouteRoad for details of sub-attributes.</p>
    #   @return [Types::RouteRoad]
    # @!attribute roundabout_enter_step_details
    #   <p>Details that are specific to a Roundabout Enter step.</p>
    #   @return [Types::RouteRoundaboutEnterStepDetails]
    # @!attribute roundabout_exit_step_details
    #   <p>Details that are specific to a Roundabout Exit step.</p>
    #   @return [Types::RouteRoundaboutExitStepDetails]
    # @!attribute roundabout_pass_step_details
    #   <p>Details that are specific to a Roundabout Pass step.</p>
    #   @return [Types::RouteRoundaboutPassStepDetails]
    # @!attribute signpost
    #   <p>Sign post information of the action, applicable only for TurnByTurn steps. See RouteSignpost for details of sub-attributes.</p>
    #   @return [Types::RouteSignpost]
    # @!attribute turn_step_details
    #   <p>Details that are specific to a turn step.</p>
    #   @return [Types::RouteTurnStepDetails]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RoutePedestrianTravelStep < Struct.new(
      nil,
      :continue_step_details,
      :current_road,
      :distance,
      :duration,
      :exit_number,
      :geometry_offset,
      :instruction,
      :keep_step_details,
      :next_road,
      :roundabout_enter_step_details,
      :roundabout_exit_step_details,
      :roundabout_pass_step_details,
      :signpost,
      :turn_step_details,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Details that are specific to a ramp step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteRampStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Impact corresponding to the issue. While Low impact notices can be safely ignored, High impact notices must be evaluated further to determine the impact.</p>
    #   @return [String]
    class RouteResponseNotice < Struct.new(
      nil,
      :code,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The road on the route.</p>
    # @!attribute road_name
    #   <p>Name of the road (localized).</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute route_number
    #   <p>Route number of the road.</p>
    #   @return [Array<Types::RouteNumber>]
    # @!attribute towards
    #   <p>Names of destinations that can be reached when traveling on the road.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute type
    #   <p>The type of road.</p>
    #   @return [String]
    class RouteRoad < Struct.new(
      nil,
      :road_name,
      :route_number,
      :towards,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the roundabout leg.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteRoundaboutEnterStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Details about the roundabout step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute relative_exit
    #   <p>Exit to be taken.</p>
    #   @return [Integer]
    # @!attribute roundabout_angle
    #   <p>Angle of the roundabout.</p>
    #   @return [Float]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    class RouteRoundaboutExitStepDetails < Struct.new(
      nil,
      :intersection,
      :relative_exit,
      :roundabout_angle,
      :steering_direction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:relative_exit] = nil unless options.key?(:relative_exit)
        options[:roundabout_angle] = 0 unless options.key?(:roundabout_angle)
        super
      end
    end

    # <p>Details about the step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteRoundaboutPassStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Travel mode options when the provided travel mode is <code>Scooter</code> </p>
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    class RouteScooterOptions < Struct.new(
      nil,
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        super
      end
    end

    # <p>Options to configure matching the provided position to a side of the street.</p>
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used.</p> <p>Default Value: <code>DividedStreetOnly</code> </p>
    #   @return [String]
    class RouteSideOfStreetOptions < Struct.new(
      nil,
      :position,
      :use_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sign post information of the action, applicable only for TurnByTurn steps. See RouteSignpost for details of sub-attributes.</p>
    # @!attribute labels
    #   <p>Labels present on the sign post.</p>
    #   @return [Array<Types::RouteSignpostLabel>]
    class RouteSignpost < Struct.new(
      nil,
      :labels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Labels presented on the sign post.</p>
    # @!attribute route_number
    #   <p>Route number of the road.</p>
    #   @return [Types::RouteNumber]
    # @!attribute text
    #   <p>The Signpost text.</p>
    #   @return [Types::LocalizedString]
    class RouteSignpostLabel < Struct.new(
      nil,
      :route_number,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the dynamic speed.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    # @!attribute best_case_speed
    #   <p>Estimated speed while traversing the span without traffic congestion.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute turn_duration
    #   <p>Estimated time to turn from this span into the next. </p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute typical_speed
    #   <p>Estimated speed while traversing the span under typical traffic congestion.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    class RouteSpanDynamicSpeedDetails < Struct.new(
      nil,
      :best_case_speed,
      :turn_duration,
      :typical_speed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:best_case_speed] = 0 unless options.key?(:best_case_speed)
        options[:turn_duration] = 0 unless options.key?(:turn_duration)
        options[:typical_speed] = 0 unless options.key?(:typical_speed)
        super
      end
    end

    # <p>Details about the speed limit corresponding to the span.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    # @!attribute max_speed
    #   <p>Maximum speed.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute unlimited
    #   <p>If the span doesn't have a speed limit like the Autobahn.</p>
    #   @return [Boolean]
    class RouteSpanSpeedLimitDetails < Struct.new(
      nil,
      :max_speed,
      :unlimited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_speed] = 0 unless options.key?(:max_speed)
        super
      end
    end

    # <p>Summarized details for the leg including travel steps only. The Distance for the travel only portion of the journey is the same as the Distance within the Overview summary.</p>
    # @!attribute distance
    #   <p>Distance of the route.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the route.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute tolls
    #   <p>Toll summary for the complete route.</p>
    #   @return [Types::RouteTollSummary]
    class RouteSummary < Struct.new(
      nil,
      :distance,
      :duration,
      :tolls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>Provides details about toll information along a route, including the payment sites, applicable toll rates, toll systems, and the country associated with the toll collection.</p>
    # @!attribute country
    #   <p>The alpha-2 or alpha-3 character code for the country.</p>
    #   @return [String]
    # @!attribute payment_sites
    #   <p>Locations or sites where the toll fare is collected.</p>
    #   @return [Array<Types::RouteTollPaymentSite>]
    # @!attribute rates
    #   <p>Toll rates that need to be paid to travel this leg of the route.</p>
    #   @return [Array<Types::RouteTollRate>]
    # @!attribute systems
    #   <p>Toll systems are authorities that collect payments for the toll.</p>
    #   @return [Array<Integer>]
    class RouteToll < Struct.new(
      nil,
      :country,
      :payment_sites,
      :rates,
      :systems,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to Tolls on a route.</p>
    # @!attribute all_transponders
    #   <p>Specifies if the user has valid transponder with access to all toll systems. This impacts toll calculation, and if true the price with transponders is used.</p>
    #   @return [Boolean]
    # @!attribute all_vignettes
    #   <p>Specifies if the user has valid vignettes with access for all toll roads. If a user has a vignette for a toll road, then toll cost for that road is omitted since no further payment is necessary.</p>
    #   @return [Boolean]
    # @!attribute currency
    #   <p>Currency code corresponding to the price. This is the same as Currency specified in the request.</p>
    #   @return [String]
    # @!attribute emission_type
    #   <p>Emission type of the vehicle for toll cost calculation.</p> <p> <b>Valid values</b>: <code>Euro1, Euro2, Euro3, Euro4, Euro5, Euro6, EuroEev</code> </p>
    #   @return [Types::RouteEmissionType]
    # @!attribute vehicle_category
    #   <p>Vehicle category for toll cost calculation.</p>
    #   @return [String]
    class RouteTollOptions < Struct.new(
      nil,
      :all_transponders,
      :all_vignettes,
      :currency,
      :emission_type,
      :vehicle_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details if the toll rate can be a pass that supports multiple trips.</p>
    # @!attribute includes_return_trip
    #   <p>If the pass includes the rate for the return leg of the trip.</p>
    #   @return [Boolean]
    # @!attribute senior_pass
    #   <p>If the pass is only valid for senior persons.</p>
    #   @return [Boolean]
    # @!attribute transfer_count
    #   <p>If the toll pass can be transferred, and how many times.</p>
    #   @return [Integer]
    # @!attribute trip_count
    #   <p>Number of trips the pass is valid for.</p>
    #   @return [Integer]
    # @!attribute validity_period
    #   <p>Period for which the pass is valid.</p>
    #   @return [Types::RouteTollPassValidityPeriod]
    class RouteTollPass < Struct.new(
      nil,
      :includes_return_trip,
      :senior_pass,
      :transfer_count,
      :trip_count,
      :validity_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Period for which the pass is valid.</p>
    # @!attribute period
    #   <p>Validity period.</p>
    #   @return [String]
    # @!attribute period_count
    #   <p>Counts for the validity period.</p>
    #   @return [Integer]
    class RouteTollPassValidityPeriod < Struct.new(
      nil,
      :period,
      :period_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Locations or sites where the toll fare is collected.</p>
    # @!attribute name
    #   <p>Name of the payment site.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    class RouteTollPaymentSite < Struct.new(
      nil,
      :name,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The toll price.</p>
    # @!attribute currency
    #   <p>Currency code corresponding to the price. This is the same as Currency specified in the request.</p>
    #   @return [String]
    # @!attribute estimate
    #   <p>If the price is an estimate or an exact value. </p>
    #   @return [Boolean]
    # @!attribute per_duration
    #   <p>Duration for which the price corresponds to.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute range
    #   <p>If the price is a range or an exact value. If any of the toll fares making up the route is a range, the overall price is also a range.</p>
    #   @return [Boolean]
    # @!attribute range_value
    #   <p>Price range with a minimum and maximum value, if a range.</p>
    #   @return [Types::RouteTollPriceValueRange]
    # @!attribute value
    #   <p>Exact price, if not a range.</p>
    #   @return [Float]
    class RouteTollPrice < Struct.new(
      nil,
      :currency,
      :estimate,
      :per_duration,
      :range,
      :range_value,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:per_duration] = 0 unless options.key?(:per_duration)
        super
      end
    end

    # <p>Summary of the route and toll price.</p>
    # @!attribute currency
    #   <p>Currency code corresponding to the price. This is the same as Currency specified in the request.</p>
    #   @return [String]
    # @!attribute estimate
    #   <p>If the price is an estimate or an exact value. </p>
    #   @return [Boolean]
    # @!attribute range
    #   <p>If the price is a range or an exact value. If any of the toll fares making up the route is a range, the overall price is also a range.</p>
    #   @return [Boolean]
    # @!attribute range_value
    #   <p>Price range with a minimum and maximum value, if a range.</p>
    #   @return [Types::RouteTollPriceValueRange]
    # @!attribute value
    #   <p>Exact price, if not a range.</p>
    #   @return [Float]
    class RouteTollPriceSummary < Struct.new(
      nil,
      :currency,
      :estimate,
      :range,
      :range_value,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Price range with a minimum and maximum value, if a range.</p>
    # @!attribute min
    #   <p>Minimum price.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>Maximum price.</p>
    #   @return [Float]
    class RouteTollPriceValueRange < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The toll rate.</p>
    # @!attribute applicable_times
    #   <p>Time when the rate is valid.</p>
    #   @return [String]
    # @!attribute converted_price
    #   <p>Price in the converted currency as specified in the request.</p>
    #   @return [Types::RouteTollPrice]
    # @!attribute id
    #   <p>The Toll rate Id.</p>
    #   @return [String]
    # @!attribute local_price
    #   <p>Price in the local regional currency.</p>
    #   @return [Types::RouteTollPrice]
    # @!attribute name
    #   <p>The name of the toll.</p>
    #   @return [String]
    # @!attribute pass
    #   <p>Details if the toll rate can be a pass that supports multiple trips.</p>
    #   @return [Types::RouteTollPass]
    # @!attribute payment_methods
    #   <p>Accepted payment methods at the toll.</p>
    #   @return [Array<String>]
    # @!attribute transponders
    #   <p>Transponders for which this toll can be applied.</p>
    #   @return [Array<Types::RouteTransponder>]
    class RouteTollRate < Struct.new(
      nil,
      :applicable_times,
      :converted_price,
      :id,
      :local_price,
      :name,
      :pass,
      :payment_methods,
      :transponders,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The toll summary for the complete route.</p>
    # @!attribute total
    #   <p>Total toll summary for the complete route. Total is the only summary available today.</p>
    #   @return [Types::RouteTollPriceSummary]
    class RouteTollSummary < Struct.new(
      nil,
      :total,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Toll systems are authorities that collect payments for the toll.</p>
    # @!attribute name
    #   <p>The toll system name.</p>
    #   @return [String]
    class RouteTollSystem < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Traffic options for the route.</p>
    # @!attribute flow_event_threshold_override
    #   <p>Duration for which flow traffic is considered valid. For this period, the flow traffic is used over historical traffic data. Flow traffic refers to congestion, which changes very quickly. Duration in seconds for which flow traffic event would be considered valid. While flow traffic event is valid it will be used over the historical traffic data. </p>
    #   @return [Integer]
    # @!attribute usage
    #   <p>Determines if traffic should be used or ignored while calculating the route.</p> <p>Default Value: <code>UseTrafficData</code> </p>
    #   @return [String]
    class RouteTrafficOptions < Struct.new(
      nil,
      :flow_event_threshold_override,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:flow_event_threshold_override] = 0 unless options.key?(:flow_event_threshold_override)
        super
      end
    end

    # <p>Trailer options corresponding to the vehicle.</p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default Value: <code>0</code> </p>
    #   @return [Integer]
    class RouteTrailerOptions < Struct.new(
      nil,
      :axle_count,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:axle_count] = nil unless options.key?(:axle_count)
        options[:trailer_count] = nil unless options.key?(:trailer_count)
        super
      end
    end

    # <p>Transponders for which this toll can be applied.</p>
    # @!attribute system_name
    #   <p>Names of the toll system collecting the toll.</p>
    #   @return [String]
    class RouteTransponder < Struct.new(
      nil,
      :system_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode related options for the provided travel mode.</p>
    # @!attribute car
    #   <p>Travel mode options when the provided travel mode is "Car"</p>
    #   @return [Types::RouteCarOptions]
    # @!attribute pedestrian
    #   <p>Travel mode options when the provided travel mode is "Pedestrian"</p>
    #   @return [Types::RoutePedestrianOptions]
    # @!attribute scooter
    #   <p>Travel mode options when the provided travel mode is <code>Scooter</code> </p> <note> <p>When travel mode is set to <code>Scooter</code>, then the avoidance option <code>ControlledAccessHighways</code> defaults to <code>true</code>.</p> </note>
    #   @return [Types::RouteScooterOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is "Truck"</p>
    #   @return [Types::RouteTruckOptions]
    class RouteTravelModeOptions < Struct.new(
      nil,
      :car,
      :pedestrian,
      :scooter,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is "Truck"</p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute hazardous_cargos
    #   <p>List of Hazardous cargo contained in the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute height
    #   <p>Height of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute height_above_first_axle
    #   <p>Height of the vehicle above its first axle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute kpra_length
    #   <p>Kingpin to rear axle length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute length
    #   <p>Length of the vehicle.</p> <p> <b>Unit</b>: <code>c</code> </p>
    #   @return [Integer]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Integer]
    # @!attribute payload_capacity
    #   <p>Payload capacity of the vehicle and trailers attached.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute tire_count
    #   <p>Number of tires on the vehicle.</p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Trailer options corresponding to the vehicle.</p>
    #   @return [Types::RouteTrailerOptions]
    # @!attribute truck_type
    #   <p>Type of the truck.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute weight_per_axle_group
    #   <p>Specifies the total weight for the specified axle group. Meant for usage in countries that have different regulations based on the axle group type.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Types::WeightPerAxleGroup]
    # @!attribute width
    #   <p>Width of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    class RouteTruckOptions < Struct.new(
      nil,
      :axle_count,
      :engine_type,
      :gross_weight,
      :hazardous_cargos,
      :height,
      :height_above_first_axle,
      :kpra_length,
      :length,
      :license_plate,
      :max_speed,
      :occupancy,
      :payload_capacity,
      :tire_count,
      :trailer,
      :truck_type,
      :tunnel_restriction_code,
      :weight_per_axle,
      :weight_per_axle_group,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:axle_count] = nil unless options.key?(:axle_count)
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:height_above_first_axle] = 0 unless options.key?(:height_above_first_axle)
        options[:kpra_length] = 0 unless options.key?(:kpra_length)
        options[:length] = 0 unless options.key?(:length)
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:occupancy] = nil unless options.key?(:occupancy)
        options[:payload_capacity] = 0 unless options.key?(:payload_capacity)
        options[:tire_count] = nil unless options.key?(:tire_count)
        options[:weight_per_axle] = 0 unless options.key?(:weight_per_axle)
        options[:width] = 0 unless options.key?(:width)
        super
      end
    end

    # <p>Details related to the turn step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteTurnStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Details related to the U-turn step.</p>
    # @!attribute intersection
    #   <p>Name of the intersection, if applicable to the step.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute steering_direction
    #   <p>Steering direction for the step.</p>
    #   @return [String]
    # @!attribute turn_angle
    #   <p>Angle of the turn.</p>
    #   @return [Float]
    # @!attribute turn_intensity
    #   <p>Intensity of the turn.</p>
    #   @return [String]
    class RouteUTurnStepDetails < Struct.new(
      nil,
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:turn_angle] = 0 unless options.key?(:turn_angle)
        super
      end
    end

    # <p>Details corresponding to the arrival for a leg.</p>
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RouteVehiclePlace]
    # @!attribute time
    #   <p>The time.</p>
    #   @return [String]
    class RouteVehicleArrival < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details corresponding to the departure for the leg.</p>
    # @!attribute place
    #   <p>The place details.</p>
    #   @return [Types::RouteVehiclePlace]
    # @!attribute time
    #   <p>The departure time.</p>
    #   @return [String]
    class RouteVehicleDeparture < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Incidents corresponding to this leg of the route.</p>
    # @!attribute description
    #   <p>Brief readable description of the incident.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>End timestamp of the incident.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>Severity of the incident Critical - The part of the route the incident affects is unusable. Major- Major impact on the leg duration, for example stop and go Minor- Minor impact on the leg duration, for example traffic jam Low - Low on duration, for example slightly increased traffic</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of the incident.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the incident.</p>
    #   @return [String]
    class RouteVehicleIncident < Struct.new(
      nil,
      :description,
      :end_time,
      :severity,
      :start_time,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Steps of a leg that correspond to the travel portion of the leg.</p>
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RouteVehicleArrival]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RouteVehicleDeparture]
    # @!attribute incidents
    #   <p>Incidents corresponding to this leg of the route.</p>
    #   @return [Array<Types::RouteVehicleIncident>]
    # @!attribute notices
    #   <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RouteVehicleNotice>]
    # @!attribute pass_through_waypoints
    #   <p>Waypoints that were passed through during the leg. This includes the waypoints that were configured with the PassThrough option.</p>
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    # @!attribute spans
    #   <p>Spans that were computed for the requested SpanAdditionalFeatures.</p>
    #   @return [Array<Types::RouteVehicleSpan>]
    # @!attribute summary
    #   <p>Summarized details of the leg.</p>
    #   @return [Types::RouteVehicleSummary]
    # @!attribute tolls
    #   <p>Toll related options.</p>
    #   @return [Array<Types::RouteToll>]
    # @!attribute toll_systems
    #   <p>Toll systems are authorities that collect payments for the toll.</p>
    #   @return [Array<Types::RouteTollSystem>]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteVehicleTravelStep>]
    # @!attribute truck_road_types
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute zones
    #   <p>Zones corresponding to this leg of the route.</p>
    #   @return [Array<Types::RouteZone>]
    class RouteVehicleLegDetails < Struct.new(
      nil,
      :arrival,
      :departure,
      :incidents,
      :notices,
      :pass_through_waypoints,
      :spans,
      :summary,
      :tolls,
      :toll_systems,
      :travel_steps,
      :truck_road_types,
      :zones,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>License plate information of the vehicle. Currently, only the last character is used where license plate based controlled access is enforced.</p>
    # @!attribute last_character
    #   <p>The last character of the License Plate.</p>
    #   @return [String]
    class RouteVehicleLicensePlate < Struct.new(
      nil,
      :last_character,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Additional details of the notice.</p>
    #   @return [Array<Types::RouteVehicleNoticeDetail>]
    # @!attribute impact
    #   <p>Impact corresponding to the issue. While Low impact notices can be safely ignored, High impact notices must be evaluated further to determine the impact.</p>
    #   @return [String]
    class RouteVehicleNotice < Struct.new(
      nil,
      :code,
      :details,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional details of the notice.</p>
    # @!attribute title
    #   <p>The notice title.</p>
    #   @return [String]
    # @!attribute violated_constraints
    #   <p>Any violated constraints.</p>
    #   @return [Types::RouteViolatedConstraints]
    class RouteVehicleNoticeDetail < Struct.new(
      nil,
      :title,
      :violated_constraints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized details of the leg.</p>
    # @!attribute best_case_duration
    #   <p>Total duration in free flowing traffic, which is the best case or shortest duration possible to cover the leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute typical_duration
    #   <p>Duration of the computed span under typical traffic congestion. </p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteVehicleOverviewSummary < Struct.new(
      nil,
      :best_case_duration,
      :distance,
      :duration,
      :typical_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:best_case_duration] = 0 unless options.key?(:best_case_duration)
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        options[:typical_duration] = 0 unless options.key?(:typical_duration)
        super
      end
    end

    # <p>Place details corresponding to the arrival or departure.</p>
    # @!attribute name
    #   <p>The name of the place.</p>
    #   @return [String]
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RouteVehiclePlace < Struct.new(
      nil,
      :name,
      :original_position,
      :position,
      :side_of_street,
      :waypoint_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Span computed for the requested SpanAdditionalFeatures.</p>
    # @!attribute best_case_duration
    #   <p>Duration of the computed span without traffic congestion.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute car_access
    #   <p>Access attributes for a car corresponding to the span.</p>
    #   @return [Array<String>]
    # @!attribute country
    #   <p>3 letter Country code corresponding to the Span.</p>
    #   @return [String]
    # @!attribute distance
    #   <p>Distance of the computed span. This feature doesn't split a span, but is always computed on a span split by other properties.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the computed span. This feature doesn't split a span, but is always computed on a span split by other properties.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute dynamic_speed
    #   <p>Dynamic speed details corresponding to the span.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Types::RouteSpanDynamicSpeedDetails]
    # @!attribute functional_classification
    #   <p>Functional classification of the road segment corresponding to the span.</p>
    #   @return [Integer]
    # @!attribute gate
    #   <p>Attributes corresponding to a gate. The gate is present at the end of the returned span.</p>
    #   @return [String]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this span.</p>
    #   @return [Integer]
    # @!attribute incidents
    #   <p>Incidents corresponding to the span. These index into the Incidents in the parent Leg.</p>
    #   @return [Array<Integer>]
    # @!attribute names
    #   <p>Provides an array of names of the vehicle span in available languages.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute notices
    #   <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Integer>]
    # @!attribute railway_crossing
    #   <p>Attributes corresponding to a railway crossing. The gate is present at the end of the returned span.</p>
    #   @return [String]
    # @!attribute region
    #   <p>2-3 letter Region code corresponding to the Span. This is either a province or a state.</p>
    #   @return [String]
    # @!attribute road_attributes
    #   <p>Attributes for the road segment corresponding to the span. </p>
    #   @return [Array<String>]
    # @!attribute route_numbers
    #   <p>Designated route name or number corresponding to the span.</p>
    #   @return [Array<Types::RouteNumber>]
    # @!attribute scooter_access
    #   <p>Access attributes for a scooter corresponding to the span.</p>
    #   @return [Array<String>]
    # @!attribute speed_limit
    #   <p>Speed limit details corresponding to the span.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Types::RouteSpanSpeedLimitDetails]
    # @!attribute toll_systems
    #   <p>Toll systems are authorities that collect payments for the toll.</p>
    #   @return [Array<Integer>]
    # @!attribute truck_access
    #   <p>Access attributes for a truck corresponding to the span.</p>
    #   @return [Array<String>]
    # @!attribute truck_road_types
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<Integer>]
    # @!attribute typical_duration
    #   <p>Duration of the computed span under typical traffic congestion. </p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute zones
    #   <p>Zones corresponding to this leg of the route.</p>
    #   @return [Array<Integer>]
    class RouteVehicleSpan < Struct.new(
      nil,
      :best_case_duration,
      :car_access,
      :country,
      :distance,
      :duration,
      :dynamic_speed,
      :functional_classification,
      :gate,
      :geometry_offset,
      :incidents,
      :names,
      :notices,
      :railway_crossing,
      :region,
      :road_attributes,
      :route_numbers,
      :scooter_access,
      :speed_limit,
      :toll_systems,
      :truck_access,
      :truck_road_types,
      :typical_duration,
      :zones,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:best_case_duration] = 0 unless options.key?(:best_case_duration)
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        options[:typical_duration] = 0 unless options.key?(:typical_duration)
        super
      end
    end

    # <p>Summarized details of the route.</p>
    # @!attribute overview
    #   <p>Summarized details for the leg including before travel, travel and after travel steps.</p>
    #   @return [Types::RouteVehicleOverviewSummary]
    # @!attribute travel_only
    #   <p>Summarized details for the leg including travel steps only. The Distance for the travel only portion of the journey is in meters</p>
    #   @return [Types::RouteVehicleTravelOnlySummary]
    class RouteVehicleSummary < Struct.new(
      nil,
      :overview,
      :travel_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarized details of the route.</p>
    # @!attribute best_case_duration
    #   <p>Total duration in free flowing traffic, which is the best case or shortest duration possible to cover the leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute typical_duration
    #   <p>Duration of the computed span under typical traffic congestion.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteVehicleTravelOnlySummary < Struct.new(
      nil,
      :best_case_duration,
      :duration,
      :typical_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:best_case_duration] = 0 unless options.key?(:best_case_duration)
        options[:duration] = 0 unless options.key?(:duration)
        options[:typical_duration] = 0 unless options.key?(:typical_duration)
        super
      end
    end

    # <p>Steps of a leg that correspond to the travel portion of the leg.</p>
    # @!attribute continue_highway_step_details
    #   <p>Details that are specific to a Continue Highway step.</p>
    #   @return [Types::RouteContinueHighwayStepDetails]
    # @!attribute continue_step_details
    #   <p>Details that are specific to a Continue step.</p>
    #   @return [Types::RouteContinueStepDetails]
    # @!attribute current_road
    #   <p>Details of the current road.</p>
    #   @return [Types::RouteRoad]
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute enter_highway_step_details
    #   <p>Details that are specific to a Enter Highway step.</p>
    #   @return [Types::RouteEnterHighwayStepDetails]
    # @!attribute exit_number
    #   <p>Exit number of the road exit, if applicable.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute exit_step_details
    #   <p>Details that are specific to a Roundabout Exit step.</p>
    #   @return [Types::RouteExitStepDetails]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p> <note> <p>Only available when the TravelStepType is Default.</p> </note>
    #   @return [String]
    # @!attribute keep_step_details
    #   <p>Details that are specific to a Keep step.</p>
    #   @return [Types::RouteKeepStepDetails]
    # @!attribute next_road
    #   <p>Details of the next road. See RouteRoad for details of sub-attributes.</p>
    #   @return [Types::RouteRoad]
    # @!attribute ramp_step_details
    #   <p>Details that are specific to a Ramp step.</p>
    #   @return [Types::RouteRampStepDetails]
    # @!attribute roundabout_enter_step_details
    #   <p>Details that are specific to a Roundabout Enter step.</p>
    #   @return [Types::RouteRoundaboutEnterStepDetails]
    # @!attribute roundabout_exit_step_details
    #   <p>Details that are specific to a Roundabout Exit step.</p>
    #   @return [Types::RouteRoundaboutExitStepDetails]
    # @!attribute roundabout_pass_step_details
    #   <p>Details that are specific to a Roundabout Pass step.</p>
    #   @return [Types::RouteRoundaboutPassStepDetails]
    # @!attribute signpost
    #   <p>Sign post information of the action, applicable only for TurnByTurn steps. See RouteSignpost for details of sub-attributes.</p>
    #   @return [Types::RouteSignpost]
    # @!attribute turn_step_details
    #   <p>Details that are specific to a Turn step.</p>
    #   @return [Types::RouteTurnStepDetails]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    # @!attribute u_turn_step_details
    #   <p>Details that are specific to a Turn step.</p>
    #   @return [Types::RouteUTurnStepDetails]
    class RouteVehicleTravelStep < Struct.new(
      nil,
      :continue_highway_step_details,
      :continue_step_details,
      :current_road,
      :distance,
      :duration,
      :enter_highway_step_details,
      :exit_number,
      :exit_step_details,
      :geometry_offset,
      :instruction,
      :keep_step_details,
      :next_road,
      :ramp_step_details,
      :roundabout_enter_step_details,
      :roundabout_exit_step_details,
      :roundabout_pass_step_details,
      :signpost,
      :turn_step_details,
      :type,
      :u_turn_step_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:duration] = 0 unless options.key?(:duration)
        super
      end
    end

    # <p>This property contains a summary of violated constraints.</p>
    # @!attribute all_hazards_restricted
    #   <p>This restriction applies to truck cargo, where the resulting route excludes roads on which hazardous materials are prohibited from being transported.</p>
    #   @return [Boolean]
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Types::RouteNoticeDetailRange]
    # @!attribute hazardous_cargos
    #   <p>List of Hazardous cargo contained in the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute max_height
    #   <p>The maximum height of the vehicle.</p>
    #   @return [Integer]
    # @!attribute max_kpra_length
    #   <p>The maximum Kpra length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute max_length
    #   <p>The maximum length of the vehicle.</p>
    #   @return [Integer]
    # @!attribute max_payload_capacity
    #   <p>The maximum load capacity of the vehicle.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute max_weight
    #   <p>The maximum weight of the route.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Types::RouteWeightConstraint]
    # @!attribute max_weight_per_axle
    #   <p>The maximum weight per axle of the vehicle.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute max_weight_per_axle_group
    #   <p>The maximum weight per axle group of the vehicle.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Types::WeightPerAxleGroup]
    # @!attribute max_width
    #   <p>The maximum width of the vehicle.</p>
    #   @return [Integer]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default Value: <code>1</code> </p>
    #   @return [Types::RouteNoticeDetailRange]
    # @!attribute restricted_times
    #   <p>Access radius restrictions based on time.</p>
    #   @return [String]
    # @!attribute time_dependent
    #   <p>The time dependent constraint.</p>
    #   @return [Boolean]
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default Value: <code>0</code> </p>
    #   @return [Types::RouteNoticeDetailRange]
    # @!attribute travel_mode
    #   <p>Travel mode corresponding to the leg.</p>
    #   @return [Boolean]
    # @!attribute truck_road_type
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [String]
    # @!attribute truck_type
    #   <p>Type of the truck.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    class RouteViolatedConstraints < Struct.new(
      nil,
      :all_hazards_restricted,
      :axle_count,
      :hazardous_cargos,
      :max_height,
      :max_kpra_length,
      :max_length,
      :max_payload_capacity,
      :max_weight,
      :max_weight_per_axle,
      :max_weight_per_axle_group,
      :max_width,
      :occupancy,
      :restricted_times,
      :time_dependent,
      :trailer_count,
      :travel_mode,
      :truck_road_type,
      :truck_type,
      :tunnel_restriction_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_height] = 0 unless options.key?(:max_height)
        options[:max_kpra_length] = 0 unless options.key?(:max_kpra_length)
        options[:max_length] = 0 unless options.key?(:max_length)
        options[:max_payload_capacity] = 0 unless options.key?(:max_payload_capacity)
        options[:max_weight_per_axle] = 0 unless options.key?(:max_weight_per_axle)
        options[:max_width] = 0 unless options.key?(:max_width)
        super
      end
    end

    # <p>Waypoint between the Origin and Destination.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination.</p>
    #   @return [Integer]
    # @!attribute avoid_u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Options to configure matching the provided position to the road network.</p>
    #   @return [Types::RouteMatchingOptions]
    # @!attribute pass_through
    #   <p>If the waypoint should not be treated as a stop. If yes, the waypoint is passed through and doesn't split the route into different legs.</p>
    #   @return [Boolean]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::RouteSideOfStreetOptions]
    # @!attribute stop_duration
    #   <p>Duration of the stop.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteWaypoint < Struct.new(
      nil,
      :avoid_actions_for_distance,
      :avoid_u_turns,
      :heading,
      :matching,
      :pass_through,
      :position,
      :side_of_street,
      :stop_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:avoid_actions_for_distance] = 0 unless options.key?(:avoid_actions_for_distance)
        options[:heading] = 0 unless options.key?(:heading)
        options[:stop_duration] = 0 unless options.key?(:stop_duration)
        super
      end
    end

    # <p>The weight constraint for the route.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    # @!attribute type
    #   <p>The type of constraint.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The constraint value.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    class RouteWeightConstraint < Struct.new(
      nil,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        super
      end
    end

    # <p>The zone.</p>
    # @!attribute category
    #   <p>The zone category.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the zone.</p>
    #   @return [String]
    class RouteZone < Struct.new(
      nil,
      :category,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute snapped_geometry_format
    #   <p>Chooses what the returned SnappedGeometry format should be.</p> <p>Default Value: <code>FlexiblePolyline</code> </p>
    #   @return [String]
    # @!attribute snap_radius
    #   <p>The radius around the provided tracepoint that is considered for snapping.</p> <p> <b>Unit</b>: <code>meters</code> </p> <p>Default value: <code>300</code> </p>
    #   @return [Integer]
    # @!attribute trace_points
    #   <p>List of trace points to be snapped onto the road network.</p>
    #   @return [Array<Types::RoadSnapTracePoint>]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default Value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    #   @return [Types::RoadSnapTravelModeOptions]
    class SnapToRoadsRequest < Struct.new(
      nil,
      :key,
      :snapped_geometry_format,
      :snap_radius,
      :trace_points,
      :travel_mode,
      :travel_mode_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute notices
    #   <p>Notices are additional information returned that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RoadSnapNotice>]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket for which the query is charged at.</p>
    #   @return [String]
    # @!attribute snapped_geometry
    #   <p>The interpolated geometry for the snapped route onto the road network.</p>
    #   @return [Types::RoadSnapSnappedGeometry]
    # @!attribute snapped_geometry_format
    #   <p>Specifies the format of the geometry returned for each leg of the route.</p>
    #   @return [String]
    # @!attribute snapped_trace_points
    #   <p>The trace points snapped onto the road network. </p>
    #   @return [Array<Types::RoadSnapSnappedTracePoint>]
    class SnapToRoadsResponse < Struct.new(
      nil,
      :notices,
      :pricing_bucket,
      :snapped_geometry,
      :snapped_geometry_format,
      :snapped_trace_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field where the invalid entry was detected.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the Amazon Location service.</p>
    # @!attribute name
    #   <p>The name of the Validation Exception Field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access hours corresponding to when a destination can be visited.</p>
    # @!attribute from
    #   <p>Contains the ID of the starting waypoint in this connection.</p>
    #   @return [Types::WaypointOptimizationAccessHoursEntry]
    # @!attribute to
    #   <p>Contains the ID of the ending waypoint in this connection.</p>
    #   @return [Types::WaypointOptimizationAccessHoursEntry]
    class WaypointOptimizationAccessHours < Struct.new(
      nil,
      :from,
      :to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Hours of entry.</p>
    # @!attribute day_of_week
    #   <p>Day of the week.</p>
    #   @return [String]
    # @!attribute time_of_day
    #   <p>Time of the day.</p>
    #   @return [String]
    class WaypointOptimizationAccessHoursEntry < Struct.new(
      nil,
      :day_of_week,
      :time_of_day,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The area to be avoided.</p>
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::WaypointOptimizationAvoidanceAreaGeometry]
    class WaypointOptimizationAvoidanceArea < Struct.new(
      nil,
      :geometry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Geometry of the area to be avoided.</p>
    # @!attribute bounding_box
    #   <p>Geometry defined as a bounding box. The first pair represents the X and Y coordinates (longitude and latitude,) of the southwest corner of the bounding box; the second pair represents the X and Y coordinates (longitude and latitude) of the northeast corner.</p>
    #   @return [Array<Float>]
    class WaypointOptimizationAvoidanceAreaGeometry < Struct.new(
      nil,
      :bounding_box,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies options for areas to avoid. This is a best-effort avoidance setting, meaning the router will try to honor the avoidance preferences but may still include restricted areas if no feasible alternative route exists. If avoidance options are not followed, the response will indicate that the avoidance criteria were violated.</p>
    # @!attribute areas
    #   <p>Areas to be avoided.</p>
    #   @return [Array<Types::WaypointOptimizationAvoidanceArea>]
    # @!attribute car_shuttle_trains
    #   <p>Avoidance options for cars-shuttles-trains.</p>
    #   @return [Boolean]
    # @!attribute controlled_access_highways
    #   <p>Avoid controlled access highways while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute dirt_roads
    #   <p>Avoid dirt roads while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute ferries
    #   <p>Avoidance options for ferries.</p>
    #   @return [Boolean]
    # @!attribute toll_roads
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute tunnels
    #   <p>Avoid tunnels while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute u_turns
    #   <p>Avoid U-turns for calculation on highways and motorways.</p>
    #   @return [Boolean]
    class WaypointOptimizationAvoidanceOptions < Struct.new(
      nil,
      :areas,
      :car_shuttle_trains,
      :controlled_access_highways,
      :dirt_roads,
      :ferries,
      :toll_roads,
      :tunnels,
      :u_turns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for WaypointOptimizationClustering.</p>
    # @!attribute algorithm
    #   <p>The algorithm to be used. <code>DrivingDistance</code> assigns all the waypoints that are within driving distance of each other into a single cluster. <code>TopologySegment</code> assigns all the waypoints that are within the same topology segment into a single cluster. A Topology segment is a linear stretch of road between two junctions.</p>
    #   @return [String]
    # @!attribute driving_distance_options
    #   <p>Driving distance options to be used when the clustering algorithm is DrivingDistance.</p>
    #   @return [Types::WaypointOptimizationDrivingDistanceOptions]
    class WaypointOptimizationClusteringOptions < Struct.new(
      nil,
      :algorithm,
      :driving_distance_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This contains information such as distance and duration from one waypoint to the next waypoint in the sequence.</p>
    # @!attribute distance
    #   <p>Distance of the step.</p>
    #   @return [Integer]
    # @!attribute from
    #   <p>contains the ID of the starting waypoint in this connection.</p>
    #   @return [String]
    # @!attribute rest_duration
    #   <p>Resting time before the driver can continue driving.</p>
    #   @return [Integer]
    # @!attribute to
    #   <p>Contains the ID of the ending waypoint in this connection.</p>
    #   @return [String]
    # @!attribute travel_duration
    #   <p>Total duration.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute wait_duration
    #   <p>Duration of a wait step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class WaypointOptimizationConnection < Struct.new(
      nil,
      :distance,
      :from,
      :rest_duration,
      :to,
      :travel_duration,
      :wait_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = 0 unless options.key?(:distance)
        options[:rest_duration] = 0 unless options.key?(:rest_duration)
        options[:travel_duration] = 0 unless options.key?(:travel_duration)
        options[:wait_duration] = 0 unless options.key?(:wait_duration)
        super
      end
    end

    # <p>Destination related options.</p>
    # @!attribute access_hours
    #   <p>Access hours corresponding to when a waypoint can be visited.</p>
    #   @return [Types::WaypointOptimizationAccessHours]
    # @!attribute appointment_time
    #   <p>Appointment time at the destination.</p>
    #   @return [String]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute id
    #   <p>The waypoint Id.</p>
    #   @return [String]
    # @!attribute service_duration
    #   <p>Service time spent at the destination. At an appointment, the service time should be the appointment duration.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::WaypointOptimizationSideOfStreetOptions]
    class WaypointOptimizationDestinationOptions < Struct.new(
      nil,
      :access_hours,
      :appointment_time,
      :heading,
      :id,
      :service_duration,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:heading] = 0 unless options.key?(:heading)
        options[:service_duration] = 0 unless options.key?(:service_duration)
        super
      end
    end

    # <p>Driver related options.</p>
    # @!attribute rest_cycles
    #   <p>Driver work-rest schedules defined by a short and long cycle. A rest needs to be taken after the short work duration. The short cycle can be repeated until you hit the long work duration, at which point the long rest duration should be taken before restarting.</p>
    #   @return [Types::WaypointOptimizationRestCycles]
    # @!attribute rest_profile
    #   <p>Pre defined rest profiles for a driver schedule. The only currently supported profile is EU.</p>
    #   @return [Types::WaypointOptimizationRestProfile]
    # @!attribute treat_service_time_as
    #   <p>If the service time provided at a waypoint/destination should be considered as rest or work. This contributes to the total time breakdown returned within the response.</p>
    #   @return [String]
    class WaypointOptimizationDriverOptions < Struct.new(
      nil,
      :rest_cycles,
      :rest_profile,
      :treat_service_time_as,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Driving distance related options.</p>
    # @!attribute driving_distance
    #   <p>DrivingDistance assigns all the waypoints that are within driving distance of each other into a single cluster.</p>
    #   @return [Integer]
    class WaypointOptimizationDrivingDistanceOptions < Struct.new(
      nil,
      :driving_distance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:driving_distance] = 0 unless options.key?(:driving_distance)
        super
      end
    end

    # <p>Specifies strict exclusion options for the route calculation. This setting mandates that the router will avoid any routes that include the specified options, rather than merely attempting to minimize them.</p>
    # @!attribute countries
    #   <p>List of countries to be avoided defined by two-letter or three-letter country codes.</p>
    #   @return [Array<String>]
    class WaypointOptimizationExclusionOptions < Struct.new(
      nil,
      :countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The failed constraint.</p>
    # @!attribute constraint
    #   <p>The failed constraint.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Reason for the failed constraint.</p>
    #   @return [String]
    class WaypointOptimizationFailedConstraint < Struct.new(
      nil,
      :constraint,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The impeding waypoint.</p>
    # @!attribute failed_constraints
    #   <p>Failed constraints for an impeding waypoint.</p>
    #   @return [Array<Types::WaypointOptimizationFailedConstraint>]
    # @!attribute id
    #   <p>The waypoint Id.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    class WaypointOptimizationImpedingWaypoint < Struct.new(
      nil,
      :failed_constraints,
      :id,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optimized waypoint.</p>
    # @!attribute arrival_time
    #   <p>Estimated time of arrival at the destination.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute cluster_index
    #   <p>Index of the cluster the waypoint is associated with. The index is included in the response only if clustering was performed while processing the request.</p>
    #   @return [Integer]
    # @!attribute departure_time
    #   <p>Estimated time of departure from thr origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute id
    #   <p>The waypoint Id.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    class WaypointOptimizationOptimizedWaypoint < Struct.new(
      nil,
      :arrival_time,
      :cluster_index,
      :departure_time,
      :id,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Origin related options.</p>
    # @!attribute id
    #   <p>The Origin Id.</p>
    #   @return [String]
    class WaypointOptimizationOriginOptions < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to a pedestrian.</p>
    # @!attribute speed
    #   <p>Walking speed.</p> <p> <b>Unit</b>: <code>KilometersPerHour</code> </p>
    #   @return [Float]
    class WaypointOptimizationPedestrianOptions < Struct.new(
      nil,
      :speed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:speed] = nil unless options.key?(:speed)
        super
      end
    end

    # <p>Driver work-rest schedules defined by a short and long cycle. A rest needs to be taken after the short work duration. The short cycle can be repeated until you hit the long work duration, at which point the long rest duration should be taken before restarting.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    # @!attribute rest_duration
    #   <p>Resting phase of the cycle.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute work_duration
    #   <p>Working phase of the cycle.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class WaypointOptimizationRestCycleDurations < Struct.new(
      nil,
      :rest_duration,
      :work_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rest_duration] = 0 unless options.key?(:rest_duration)
        options[:work_duration] = 0 unless options.key?(:work_duration)
        super
      end
    end

    # <p>Resting phase of the cycle.</p>
    # @!attribute long_cycle
    #   <p>Long cycle for a driver work-rest schedule.</p>
    #   @return [Types::WaypointOptimizationRestCycleDurations]
    # @!attribute short_cycle
    #   <p>Short cycle for a driver work-rest schedule</p>
    #   @return [Types::WaypointOptimizationRestCycleDurations]
    class WaypointOptimizationRestCycles < Struct.new(
      nil,
      :long_cycle,
      :short_cycle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Pre defined rest profiles for a driver schedule. The only currently supported profile is EU.</p>
    # @!attribute profile
    #   <p>Pre defined rest profiles for a driver schedule. The only currently supported profile is EU.</p>
    #   @return [String]
    class WaypointOptimizationRestProfile < Struct.new(
      nil,
      :profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options to configure matching the provided position to a side of the street.</p>
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used. AnyStreet will always use the provided position.</p> <p>Default Value: <code>DividedStreetOnly</code> </p>
    #   @return [String]
    class WaypointOptimizationSideOfStreetOptions < Struct.new(
      nil,
      :position,
      :use_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Time breakdown for the sequence.</p>
    # @!attribute rest_duration
    #   <p>Resting phase of the cycle.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute service_duration
    #   <p>Service time spent at the destination. At an appointment, the service time should be the appointment duration.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute travel_duration
    #   <p>Traveling phase of the cycle.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute wait_duration
    #   <p>Waiting phase of the cycle.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class WaypointOptimizationTimeBreakdown < Struct.new(
      nil,
      :rest_duration,
      :service_duration,
      :travel_duration,
      :wait_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:rest_duration] = 0 unless options.key?(:rest_duration)
        options[:service_duration] = 0 unless options.key?(:service_duration)
        options[:travel_duration] = 0 unless options.key?(:travel_duration)
        options[:wait_duration] = 0 unless options.key?(:wait_duration)
        super
      end
    end

    # <p>Options related to traffic.</p>
    # @!attribute usage
    #   <p>Determines if traffic should be used or ignored while calculating the route.</p> <p>Default Value: <code>UseTrafficData</code> </p>
    #   @return [String]
    class WaypointOptimizationTrafficOptions < Struct.new(
      nil,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Trailer options corresponding to the vehicle.</p>
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default Value: <code>0</code> </p>
    #   @return [Integer]
    class WaypointOptimizationTrailerOptions < Struct.new(
      nil,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode related options for the provided travel mode.</p>
    # @!attribute pedestrian
    #   <p>Travel mode options when the provided travel mode is "Pedestrian"</p>
    #   @return [Types::WaypointOptimizationPedestrianOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is "Truck"</p>
    #   @return [Types::WaypointOptimizationTruckOptions]
    class WaypointOptimizationTravelModeOptions < Struct.new(
      nil,
      :pedestrian,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is "Truck"</p>
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute hazardous_cargos
    #   <p>List of Hazardous cargo contained in the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute height
    #   <p>Height of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute length
    #   <p>Length of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Trailer options corresponding to the vehicle.</p>
    #   @return [Types::WaypointOptimizationTrailerOptions]
    # @!attribute truck_type
    #   <p>Type of the truck.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute width
    #   <p>Width of the vehicle.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    class WaypointOptimizationTruckOptions < Struct.new(
      nil,
      :gross_weight,
      :hazardous_cargos,
      :height,
      :length,
      :trailer,
      :truck_type,
      :tunnel_restriction_code,
      :weight_per_axle,
      :width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:length] = 0 unless options.key?(:length)
        options[:weight_per_axle] = 0 unless options.key?(:weight_per_axle)
        options[:width] = 0 unless options.key?(:width)
        super
      end
    end

    # <p>Waypoint between the Origin and Destination.</p>
    # @!attribute access_hours
    #   <p>Access hours corresponding to when a waypoint can be visited.</p>
    #   @return [Types::WaypointOptimizationAccessHours]
    # @!attribute appointment_time
    #   <p>Appointment time at the waypoint.</p>
    #   @return [String]
    # @!attribute before
    #   <p>Constraint defining what waypoints are to be visited after this waypoint.</p>
    #   @return [Array<Integer>]
    # @!attribute heading
    #   <p>GPS Heading at the position.</p>
    #   @return [Float]
    # @!attribute id
    #   <p>The waypoint Id.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Position defined as <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute service_duration
    #   <p>Service time spent at the waypoint. At an appointment, the service time should be the appointment duration.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [Types::WaypointOptimizationSideOfStreetOptions]
    class WaypointOptimizationWaypoint < Struct.new(
      nil,
      :access_hours,
      :appointment_time,
      :before,
      :heading,
      :id,
      :position,
      :service_duration,
      :side_of_street,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:heading] = 0 unless options.key?(:heading)
        options[:service_duration] = 0 unless options.key?(:service_duration)
        super
      end
    end

    # <p>Specifies the total weight for the specified axle group. Meant for usage in countries that have different regulations based on the axle group type.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    # @!attribute single
    #   <p>Weight for single axle group.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute tandem
    #   <p>Weight for tandem axle group.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute triple
    #   <p>Weight for triple axle group.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute quad
    #   <p>Weight for quad axle group.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    # @!attribute quint
    #   <p>Weight for quad quint group.</p> <p> <b>Unit</b>: <code>Kilograms</code> </p>
    #   @return [Integer]
    class WeightPerAxleGroup < Struct.new(
      nil,
      :single,
      :tandem,
      :triple,
      :quad,
      :quint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:single] = 0 unless options.key?(:single)
        options[:tandem] = 0 unless options.key?(:tandem)
        options[:triple] = 0 unless options.key?(:triple)
        options[:quad] = 0 unless options.key?(:quad)
        options[:quint] = 0 unless options.key?(:quint)
        super
      end
    end

  end
end
