# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GeoRoutes
  module Types

    # You don't have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] allow
    #   Features that are allowed while calculating an isoline.
    #   @return [Types::IsolineAllowOptions]
    #
    # @!attribute [rw] arrival_time
    #   Time of arrival at the destination.
    #
    #   Time format: `YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] avoid
    #   Features that are avoided while calculating a route. Avoidance is on
    #   a best-case basis. If an avoidance can't be satisfied for a
    #   particular case, it violates the avoidance and the returned response
    #   produces a notice for the violation.
    #   @return [Types::IsolineAvoidanceOptions]
    #
    # @!attribute [rw] depart_now
    #   Uses the current time as the time of departure.
    #   @return [Boolean]
    #
    # @!attribute [rw] departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The final position for the route. In the World Geodetic System (WGS
    #   84) format: `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] destination_options
    #   Destination related options.
    #   @return [Types::IsolineDestinationOptions]
    #
    # @!attribute [rw] isoline_geometry_format
    #   The format of the returned IsolineGeometry.
    #
    #   Default Value:`FlexiblePolyline`
    #   @return [String]
    #
    # @!attribute [rw] isoline_granularity
    #   Defines the granularity of the returned Isoline.
    #   @return [Types::IsolineGranularityOptions]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @!attribute [rw] optimize_isoline_for
    #   Specifies the optimization criteria for when calculating an isoline.
    #   AccurateCalculation generates an isoline of higher granularity that
    #   is more precise. FastCalculation generates an isoline faster by
    #   reducing the granularity, and in turn the quality of the isoline.
    #   BalancedCalculation generates an isoline by balancing between
    #   quality and performance.
    #
    #   Default Value: `BalancedCalculation`
    #   @return [String]
    #
    # @!attribute [rw] optimize_routing_for
    #   Specifies the optimization criteria for calculating a route.
    #
    #   Default Value: `FastestRoute`
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The start position for the route.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] origin_options
    #   Origin related options.
    #   @return [Types::IsolineOriginOptions]
    #
    # @!attribute [rw] thresholds
    #   Threshold to be used for the isoline calculation. Up to 3 thresholds
    #   per provided type can be requested.
    #
    #   You incur a calculation charge for each threshold. Using a large
    #   amount of thresholds in a request can lead you to incur unexpected
    #   charges. See [ Amazon Location's pricing page][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`
    #   @return [Types::IsolineThresholds]
    #
    # @!attribute [rw] traffic
    #   Traffic related options.
    #   @return [Types::IsolineTrafficOptions]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   <note markdown="1"> The mode `Scooter` also applies to motorcycles, set to `Scooter`
    #   when wanted to calculate options for motorcycles.
    #
    #    </note>
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #   @return [Types::IsolineTravelModeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateIsolinesRequest AWS API Documentation
    #
    class CalculateIsolinesRequest < Struct.new(
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
      :travel_mode_options)
      SENSITIVE = [:destination, :key, :origin]
      include Aws::Structure
    end

    # @!attribute [rw] arrival_time
    #   Time of arrival at the destination. This parameter is returned only
    #   if the Destination parameters was provided in the request.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] isoline_geometry_format
    #   The format of the returned IsolineGeometry.
    #
    #   Default Value:`FlexiblePolyline`
    #   @return [String]
    #
    # @!attribute [rw] isolines
    #   Calculated isolines and associated properties.
    #   @return [Array<Types::Isoline>]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #   @return [String]
    #
    # @!attribute [rw] snapped_destination
    #   Snapped destination that was used for the Isoline calculation.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] snapped_origin
    #   Snapped origin that was used for the Isoline calculation.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateIsolinesResponse AWS API Documentation
    #
    class CalculateIsolinesResponse < Struct.new(
      :arrival_time,
      :departure_time,
      :isoline_geometry_format,
      :isolines,
      :pricing_bucket,
      :snapped_destination,
      :snapped_origin)
      SENSITIVE = [:snapped_destination, :snapped_origin]
      include Aws::Structure
    end

    # @!attribute [rw] allow
    #   Features that are allowed while calculating a route.
    #   @return [Types::RouteMatrixAllowOptions]
    #
    # @!attribute [rw] avoid
    #   Features that are avoided while calculating a route. Avoidance is on
    #   a best-case basis. If an avoidance can't be satisfied for a
    #   particular case, it violates the avoidance and the returned response
    #   produces a notice for the violation.
    #   @return [Types::RouteMatrixAvoidanceOptions]
    #
    # @!attribute [rw] depart_now
    #   Uses the current time as the time of departure.
    #   @return [Boolean]
    #
    # @!attribute [rw] departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   List of destinations for the route.
    #
    #   <note markdown="1"> Route calculations are billed for each origin and destination pair.
    #   If you use a large matrix of origins and destinations, your costs
    #   will increase accordingly. See [ Amazon Location's pricing page][1]
    #   for more information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`
    #   @return [Array<Types::RouteMatrixDestination>]
    #
    # @!attribute [rw] exclude
    #   Features to be strictly excluded while calculating the route.
    #   @return [Types::RouteMatrixExclusionOptions]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @!attribute [rw] optimize_routing_for
    #   Specifies the optimization criteria for calculating a route.
    #
    #   Default Value: `FastestRoute`
    #   @return [String]
    #
    # @!attribute [rw] origins
    #   The position in longitude and latitude for the origin.
    #
    #   <note markdown="1"> Route calculations are billed for each origin and destination pair.
    #   Using a large amount of Origins in a request can lead you to incur
    #   unexpected charges. See [ Amazon Location's pricing page][1] for
    #   more information.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html`
    #   @return [Array<Types::RouteMatrixOrigin>]
    #
    # @!attribute [rw] routing_boundary
    #   Boundary within which the matrix is to be calculated. All data,
    #   origins and destinations outside the boundary are considered
    #   invalid.
    #
    #   <note markdown="1"> When request routing boundary was set as AutoCircle, the response
    #   routing boundary will return Circle derived from the AutoCircle
    #   settings.
    #
    #    </note>
    #   @return [Types::RouteMatrixBoundary]
    #
    # @!attribute [rw] traffic
    #   Traffic related options.
    #   @return [Types::RouteMatrixTrafficOptions]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #   @return [Types::RouteMatrixTravelModeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateRouteMatrixRequest AWS API Documentation
    #
    class CalculateRouteMatrixRequest < Struct.new(
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
      :travel_mode_options)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # @!attribute [rw] error_count
    #   The count of error results in the route matrix. If this number is 0,
    #   all routes were calculated successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #   @return [String]
    #
    # @!attribute [rw] route_matrix
    #   The calculated route matrix containing the results for all pairs of
    #   Origins to Destination positions. Each row corresponds to one entry
    #   in Origins. Each entry in the row corresponds to the route from that
    #   entry in Origins to an entry in Destination positions.
    #   @return [Array<Array<Types::RouteMatrixEntry>>]
    #
    # @!attribute [rw] routing_boundary
    #   Boundary within which the matrix is to be calculated. All data,
    #   origins and destinations outside the boundary are considered
    #   invalid.
    #
    #   <note markdown="1"> When request routing boundary was set as AutoCircle, the response
    #   routing boundary will return Circle derived from the AutoCircle
    #   settings.
    #
    #    </note>
    #   @return [Types::RouteMatrixBoundary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateRouteMatrixResponse AWS API Documentation
    #
    class CalculateRouteMatrixResponse < Struct.new(
      :error_count,
      :pricing_bucket,
      :route_matrix,
      :routing_boundary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] allow
    #   Features that are allowed while calculating a route.
    #   @return [Types::RouteAllowOptions]
    #
    # @!attribute [rw] arrival_time
    #   Time of arrival at the destination.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] avoid
    #   Features that are avoided while calculating a route. Avoidance is on
    #   a best-case basis. If an avoidance can't be satisfied for a
    #   particular case, it violates the avoidance and the returned response
    #   produces a notice for the violation.
    #   @return [Types::RouteAvoidanceOptions]
    #
    # @!attribute [rw] depart_now
    #   Uses the current time as the time of departure.
    #   @return [Boolean]
    #
    # @!attribute [rw] departure_time
    #   Time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The final position for the route. In the World Geodetic System (WGS
    #   84) format: `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] destination_options
    #   Destination related options.
    #   @return [Types::RouteDestinationOptions]
    #
    # @!attribute [rw] driver
    #   Driver related options.
    #   @return [Types::RouteDriverOptions]
    #
    # @!attribute [rw] exclude
    #   Features to be strictly excluded while calculating the route.
    #   @return [Types::RouteExclusionOptions]
    #
    # @!attribute [rw] instructions_measurement_system
    #   Measurement system to be used for instructions within steps in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @!attribute [rw] languages
    #   List of languages for instructions within steps in the response.
    #
    #   <note markdown="1"> Instructions in the requested language are returned only if they are
    #   available.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] leg_additional_features
    #   A list of optional additional parameters such as timezone that can
    #   be requested for each result.
    #
    #   * `Elevation`: Retrieves the elevation information for each
    #     location.
    #
    #   * `Incidents`: Provides information on traffic incidents along the
    #     route.
    #
    #   * `PassThroughWaypoints`: Indicates waypoints that are passed
    #     through without stopping.
    #
    #   * `Summary`: Returns a summary of the route, including distance and
    #     duration.
    #
    #   * `Tolls`: Supplies toll cost information along the route.
    #
    #   * `TravelStepInstructions`: Provides step-by-step instructions for
    #     travel along the route.
    #
    #   * `TruckRoadTypes`: Returns information about road types suitable
    #     for trucks.
    #
    #   * `TypicalDuration`: Gives typical travel duration based on
    #     historical data.
    #
    #   * `Zones`: Specifies the time zone information for each waypoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] leg_geometry_format
    #   Specifies the format of the geometry returned for each leg of the
    #   route. You can choose between two different geometry encoding
    #   formats.
    #
    #   `FlexiblePolyline`: A compact and precise encoding format for the
    #   leg geometry. For more information on the format, see the GitHub
    #   repository for [ `FlexiblePolyline` ][1].
    #
    #   `Simple`: A less compact encoding, which is easier to decode but may
    #   be less precise and result in larger payloads.
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexible-polyline
    #   @return [String]
    #
    # @!attribute [rw] max_alternatives
    #   Maximum number of alternative routes to be provided in the response,
    #   if available.
    #   @return [Integer]
    #
    # @!attribute [rw] optimize_routing_for
    #   Specifies the optimization criteria for calculating a route.
    #
    #   Default Value: `FastestRoute`
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The start position for the route.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] origin_options
    #   Origin related options.
    #   @return [Types::RouteOriginOptions]
    #
    # @!attribute [rw] span_additional_features
    #   A list of optional features such as SpeedLimit that can be requested
    #   for a Span. A span is a section of a Leg for which the requested
    #   features have the same values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tolls
    #   Toll related options.
    #   @return [Types::RouteTollOptions]
    #
    # @!attribute [rw] traffic
    #   Traffic related options.
    #   @return [Types::RouteTrafficOptions]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #   @return [Types::RouteTravelModeOptions]
    #
    # @!attribute [rw] travel_step_type
    #   Type of step returned by the response. Default provides basic steps
    #   intended for web based applications. TurnByTurn provides detailed
    #   instructions with more granularity intended for a turn based
    #   navigation system.
    #   @return [String]
    #
    # @!attribute [rw] waypoints
    #   List of waypoints between the Origin and Destination.
    #   @return [Array<Types::RouteWaypoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateRoutesRequest AWS API Documentation
    #
    class CalculateRoutesRequest < Struct.new(
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
      :waypoints)
      SENSITIVE = [:destination, :key, :origin]
      include Aws::Structure
    end

    # @!attribute [rw] leg_geometry_format
    #   Specifies the format of the geometry returned for each leg of the
    #   route.
    #   @return [String]
    #
    # @!attribute [rw] notices
    #   Notices are additional information returned that indicate issues
    #   that occurred during route calculation.
    #   @return [Array<Types::RouteResponseNotice>]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #   @return [String]
    #
    # @!attribute [rw] routes
    #   The path from the origin to the destination.
    #   @return [Array<Types::Route>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/CalculateRoutesResponse AWS API Documentation
    #
    class CalculateRoutesResponse < Struct.new(
      :leg_geometry_format,
      :notices,
      :pricing_bucket,
      :routes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry defined as a circle. When request routing boundary was set as
    # `AutoCircle`, the response routing boundary will return `Circle`
    # derived from the `AutoCircle` settings.
    #
    # @!attribute [rw] center
    #   Center of the Circle defined in longitude and latitude coordinates.
    #
    #   Example: `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] radius
    #   Radius of the Circle.
    #
    #   **Unit**: `meters`
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/Circle AWS API Documentation
    #
    class Circle < Struct.new(
      :center,
      :radius)
      SENSITIVE = [:center]
      include Aws::Structure
    end

    # Geometry defined as a corridor - a LineString with a radius that
    # defines the width of the corridor.
    #
    # @!attribute [rw] line_string
    #   An ordered list of positions used to plot a route on a map.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] radius
    #   Radius that defines the width of the corridor.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/Corridor AWS API Documentation
    #
    class Corridor < Struct.new(
      :line_string,
      :radius)
      SENSITIVE = [:line_string]
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Calculated isolines and associated properties.
    #
    # @!attribute [rw] connections
    #   Isolines may contain multiple components, if these components are
    #   connected by ferry links. These components are returned as separate
    #   polygons while the ferry links are returned as connections.
    #   @return [Array<Types::IsolineConnection>]
    #
    # @!attribute [rw] distance_threshold
    #   Distance threshold corresponding to the calculated Isoline.
    #   @return [Integer]
    #
    # @!attribute [rw] geometries
    #   Geometries for the Calculated isolines.
    #   @return [Array<Types::IsolineShapeGeometry>]
    #
    # @!attribute [rw] time_threshold
    #   Time threshold corresponding to the calculated isoline.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/Isoline AWS API Documentation
    #
    class Isoline < Struct.new(
      :connections,
      :distance_threshold,
      :geometries,
      :time_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Features that are allowed while calculating an isoline.
    #
    # @!attribute [rw] hot
    #   Allow Hot (High Occupancy Toll) lanes while calculating an isoline.
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] hov
    #   Allow Hov (High Occupancy vehicle) lanes while calculating an
    #   isoline.
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineAllowOptions AWS API Documentation
    #
    class IsolineAllowOptions < Struct.new(
      :hot,
      :hov)
      SENSITIVE = []
      include Aws::Structure
    end

    # The area to be avoided.
    #
    # @!attribute [rw] except
    #   Exceptions to the provided avoidance geometry, to be included while
    #   calculating an isoline.
    #   @return [Array<Types::IsolineAvoidanceAreaGeometry>]
    #
    # @!attribute [rw] geometry
    #   Geometry of the area to be avoided.
    #   @return [Types::IsolineAvoidanceAreaGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineAvoidanceArea AWS API Documentation
    #
    class IsolineAvoidanceArea < Struct.new(
      :except,
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # The avoidance geometry, to be included while calculating an isoline.
    #
    # @!attribute [rw] bounding_box
    #   Geometry defined as a bounding box. The first pair represents the X
    #   and Y coordinates (longitude and latitude,) of the southwest corner
    #   of the bounding box; the second pair represents the X and Y
    #   coordinates (longitude and latitude) of the northeast corner.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] corridor
    #   Geometry defined as a corridor - a LineString with a radius that
    #   defines the width of the corridor.
    #   @return [Types::Corridor]
    #
    # @!attribute [rw] polygon
    #   A list of Polygon will be excluded for calculating isolines, the
    #   list can only contain 1 polygon.
    #   @return [Array<Array<Array<Float>>>]
    #
    # @!attribute [rw] polyline_corridor
    #   Geometry defined as an encoded corridor – a polyline with a radius
    #   that defines the width of the corridor. For more information on
    #   polyline encoding, see
    #   [https://github.com/heremaps/flexiblepolyline/blob/master/README.md][1].
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexiblepolyline/blob/master/README.md
    #   @return [Types::PolylineCorridor]
    #
    # @!attribute [rw] polyline_polygon
    #   A list of PolylinePolygon's that are excluded for calculating
    #   isolines, the list can only contain 1 polygon. For more information
    #   on polyline encoding, see
    #   [https://github.com/heremaps/flexiblepolyline/blob/master/README.md][1].
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexiblepolyline/blob/master/README.md
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineAvoidanceAreaGeometry AWS API Documentation
    #
    class IsolineAvoidanceAreaGeometry < Struct.new(
      :bounding_box,
      :corridor,
      :polygon,
      :polyline_corridor,
      :polyline_polygon)
      SENSITIVE = [:bounding_box, :corridor, :polyline_corridor, :polyline_polygon]
      include Aws::Structure
    end

    # Features that are avoided while calculating isolines. Avoidance is on
    # a best-case basis. If an avoidance can't be satisfied for a
    # particular case, it violates the avoidance and the returned response
    # produces a notice for the violation.
    #
    # @!attribute [rw] areas
    #   Areas to be avoided.
    #   @return [Array<Types::IsolineAvoidanceArea>]
    #
    # @!attribute [rw] car_shuttle_trains
    #   Avoid car-shuttle-trains while calculating an isoline.
    #   @return [Boolean]
    #
    # @!attribute [rw] controlled_access_highways
    #   Avoid controlled access highways while calculating an isoline.
    #   @return [Boolean]
    #
    # @!attribute [rw] dirt_roads
    #   Avoid dirt roads while calculating an isoline.
    #   @return [Boolean]
    #
    # @!attribute [rw] ferries
    #   Avoid ferries while calculating an isoline.
    #   @return [Boolean]
    #
    # @!attribute [rw] seasonal_closure
    #   Avoid roads that have seasonal closure while calculating an isoline.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_roads
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_transponders
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] truck_road_types
    #   Truck road type identifiers. `BK1` through `BK4` apply only to
    #   Sweden. `A2,A4,B2,B4,C,D,ET2,ET4` apply only to Mexico.
    #
    #   <note markdown="1"> There are currently no other supported values as of 26th April 2024.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] tunnels
    #   Avoid tunnels while calculating an isoline.
    #   @return [Boolean]
    #
    # @!attribute [rw] u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_categories
    #   Zone categories to be avoided.
    #   @return [Array<Types::IsolineAvoidanceZoneCategory>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineAvoidanceOptions AWS API Documentation
    #
    class IsolineAvoidanceOptions < Struct.new(
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
      :zone_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Zone category to be avoided.
    #
    # @!attribute [rw] category
    #   Zone category to be avoided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineAvoidanceZoneCategory AWS API Documentation
    #
    class IsolineAvoidanceZoneCategory < Struct.new(
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is `Car`.
    #
    # @!attribute [rw] engine_type
    #   Engine type of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::IsolineVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineCarOptions AWS API Documentation
    #
    class IsolineCarOptions < Struct.new(
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Isolines may contain multiple components, if these components are
    # connected by ferry links. These components are returned as separate
    # polygons while the ferry links are returned as connections.
    #
    # @!attribute [rw] from_polygon_index
    #   Index of the polygon corresponding to the "from" component of the
    #   connection. The polygon is available from `Isoline[].Geometries`.
    #   @return [Integer]
    #
    # @!attribute [rw] geometry
    #   The isoline geometry.
    #   @return [Types::IsolineConnectionGeometry]
    #
    # @!attribute [rw] to_polygon_index
    #   Index of the polygon corresponding to the "to" component of the
    #   connection. The polygon is available from `Isoline[].Geometries`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineConnection AWS API Documentation
    #
    class IsolineConnection < Struct.new(
      :from_polygon_index,
      :geometry,
      :to_polygon_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry of the connection between different isoline components.
    #
    # @!attribute [rw] line_string
    #   An ordered list of positions used to plot a route on a map.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] polyline
    #   An ordered list of positions used to plot a route on a map in a
    #   lossy compression format.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineConnectionGeometry AWS API Documentation
    #
    class IsolineConnectionGeometry < Struct.new(
      :line_string,
      :polyline)
      SENSITIVE = [:line_string, :polyline]
      include Aws::Structure
    end

    # Destination related options.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::IsolineMatchingOptions]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::IsolineSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineDestinationOptions AWS API Documentation
    #
    class IsolineDestinationOptions < Struct.new(
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street)
      SENSITIVE = []
      include Aws::Structure
    end

    # Isoline granularity related options.
    #
    # @!attribute [rw] max_points
    #   Maximum number of points of returned Isoline.
    #   @return [Integer]
    #
    # @!attribute [rw] max_resolution
    #   Maximum resolution of the returned isoline.
    #
    #   **Unit**: `meters`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineGranularityOptions AWS API Documentation
    #
    class IsolineGranularityOptions < Struct.new(
      :max_points,
      :max_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Isoline matching related options.
    #
    # @!attribute [rw] name_hint
    #   Attempts to match the provided position to a road similar to the
    #   provided name.
    #   @return [String]
    #
    # @!attribute [rw] on_road_threshold
    #   If the distance to a highway/bridge/tunnel/sliproad is within
    #   threshold, the waypoint will be snapped to the
    #   highway/bridge/tunnel/sliproad.
    #
    #   **Unit**: `meters`
    #   @return [Integer]
    #
    # @!attribute [rw] radius
    #   Considers all roads within the provided radius to match the provided
    #   destination to. The roads that are considered are determined by the
    #   provided Strategy.
    #
    #   **Unit**: `Meters`
    #   @return [Integer]
    #
    # @!attribute [rw] strategy
    #   Strategy that defines matching of the position onto the road
    #   network. MatchAny considers all roads possible, whereas
    #   MatchMostSignificantRoad matches to the most significant road.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineMatchingOptions AWS API Documentation
    #
    class IsolineMatchingOptions < Struct.new(
      :name_hint,
      :on_road_threshold,
      :radius,
      :strategy)
      SENSITIVE = [:name_hint]
      include Aws::Structure
    end

    # Origin related options.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::IsolineMatchingOptions]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::IsolineSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineOriginOptions AWS API Documentation
    #
    class IsolineOriginOptions < Struct.new(
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is `Scooter`
    #
    # @!attribute [rw] engine_type
    #   Engine type of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::IsolineVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed specified.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineScooterOptions AWS API Documentation
    #
    class IsolineScooterOptions < Struct.new(
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry of the connection between different Isoline components.
    #
    # @!attribute [rw] polygon
    #   A list of Isoline Polygons, for each isoline polygon, it contains
    #   polygons of the first linear ring (the outer ring) and from 2nd item
    #   to the last item (the inner rings).
    #   @return [Array<Array<Array<Float>>>]
    #
    # @!attribute [rw] polyline_polygon
    #   A list of Isoline PolylinePolygon, for each isoline PolylinePolygon,
    #   it contains PolylinePolygon of the first linear ring (the outer
    #   ring) and from 2nd item to the last item (the inner rings). For more
    #   information on polyline encoding, see
    #   [https://github.com/heremaps/flexiblepolyline/blob/master/README.md][1].
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexiblepolyline/blob/master/README.md
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineShapeGeometry AWS API Documentation
    #
    class IsolineShapeGeometry < Struct.new(
      :polygon,
      :polyline_polygon)
      SENSITIVE = [:polyline_polygon]
      include Aws::Structure
    end

    # Options to configure matching the provided position to a side of the
    # street.
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] use_with
    #   Strategy that defines when the side of street position should be
    #   used. AnyStreet will always use the provided position.
    #
    #   Default Value: `DividedStreetOnly`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineSideOfStreetOptions AWS API Documentation
    #
    class IsolineSideOfStreetOptions < Struct.new(
      :position,
      :use_with)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Threshold to be used for the isoline calculation. Up to 5 thresholds
    # per provided type can be requested.
    #
    # @!attribute [rw] distance
    #   Distance to be used for the isoline calculation.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] time
    #   Time to be used for the isoline calculation.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineThresholds AWS API Documentation
    #
    class IsolineThresholds < Struct.new(
      :distance,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to traffic.
    #
    # @!attribute [rw] flow_event_threshold_override
    #   Duration for which flow traffic is considered valid. For this
    #   period, the flow traffic is used over historical traffic data. Flow
    #   traffic refers to congestion, which changes very quickly. Duration
    #   in seconds for which flow traffic event would be considered valid.
    #   While flow traffic event is valid it will be used over the
    #   historical traffic data.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] usage
    #   Determines if traffic should be used or ignored while calculating
    #   the route.
    #
    #   Default Value: `UseTrafficData`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineTrafficOptions AWS API Documentation
    #
    class IsolineTrafficOptions < Struct.new(
      :flow_event_threshold_override,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trailer options corresponding to the vehicle.
    #
    # @!attribute [rw] axle_count
    #   Total number of axles of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] trailer_count
    #   Number of trailers attached to the vehicle.
    #
    #   Default Value: `0`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineTrailerOptions AWS API Documentation
    #
    class IsolineTrailerOptions < Struct.new(
      :axle_count,
      :trailer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode related options for the provided travel mode.
    #
    # @!attribute [rw] car
    #   Travel mode options when the provided travel mode is "Car"
    #   @return [Types::IsolineCarOptions]
    #
    # @!attribute [rw] scooter
    #   Travel mode options when the provided travel mode is `Scooter`
    #
    #   <note markdown="1"> When travel mode is set to `Scooter`, then the avoidance option
    #   `ControlledAccessHighways` defaults to `true`.
    #
    #    </note>
    #   @return [Types::IsolineScooterOptions]
    #
    # @!attribute [rw] truck
    #   Travel mode options when the provided travel mode is "Truck"
    #   @return [Types::IsolineTruckOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineTravelModeOptions AWS API Documentation
    #
    class IsolineTravelModeOptions < Struct.new(
      :car,
      :scooter,
      :truck)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is "Truck"
    #
    # @!attribute [rw] axle_count
    #   Total number of axles of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] engine_type
    #   Engine type of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] gross_weight
    #   Gross weight of the vehicle including trailers, and goods at
    #   capacity.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] hazardous_cargos
    #   List of Hazardous cargo contained in the vehicle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] height
    #   Height of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] height_above_first_axle
    #   Height of the vehicle above its first axle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] kpra_length
    #   Kingpin to rear axle length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] length
    #   Length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::IsolineVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed specified.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] payload_capacity
    #   Payload capacity of the vehicle and trailers attached.
    #
    #   **Unit**: `kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] tire_count
    #   Number of tires on the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] trailer
    #   Trailer options corresponding to the vehicle.
    #   @return [Types::IsolineTrailerOptions]
    #
    # @!attribute [rw] truck_type
    #   Type of the truck.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_restriction_code
    #   The tunnel restriction code.
    #
    #   Tunnel categories in this list indicate the restrictions which apply
    #   to certain tunnels in Great Britain. They relate to the types of
    #   dangerous goods that can be transported through them.
    #
    #   * *Tunnel Category B*
    #
    #     * *Risk Level*: Limited risk
    #
    #     * *Restrictions*: Few restrictions
    #   * *Tunnel Category C*
    #
    #     * *Risk Level*: Medium risk
    #
    #     * *Restrictions*: Some restrictions
    #   * *Tunnel Category D*
    #
    #     * *Risk Level*: High risk
    #
    #     * *Restrictions*: Many restrictions occur
    #   * *Tunnel Category E*
    #
    #     * *Risk Level*: Very high risk
    #
    #     * *Restrictions*: Restricted tunnel
    #   @return [String]
    #
    # @!attribute [rw] weight_per_axle
    #   Heaviest weight per axle irrespective of the axle type or the axle
    #   group. Meant for usage in countries where the differences in axle
    #   types or axle groups are not distinguished.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] weight_per_axle_group
    #   Specifies the total weight for the specified axle group. Meant for
    #   usage in countries that have different regulations based on the axle
    #   group type.
    #
    #   **Unit**: `Kilograms`
    #   @return [Types::WeightPerAxleGroup]
    #
    # @!attribute [rw] width
    #   Width of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineTruckOptions AWS API Documentation
    #
    class IsolineTruckOptions < Struct.new(
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
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # The vehicle license plate.
    #
    # @!attribute [rw] last_character
    #   The last character of the License Plate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/IsolineVehicleLicensePlate AWS API Documentation
    #
    class IsolineVehicleLicensePlate < Struct.new(
      :last_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # The localized string.
    #
    # @!attribute [rw] language
    #   A list of BCP 47 compliant language codes for the results to be
    #   rendered in. The request uses the regional default as the fallback
    #   if the requested language can't be provided.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the localized string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/LocalizedString AWS API Documentation
    #
    class LocalizedString < Struct.new(
      :language,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] avoid
    #   Features that are avoided. Avoidance is on a best-case basis. If an
    #   avoidance can't be satisfied for a particular case, this setting is
    #   ignored.
    #   @return [Types::WaypointOptimizationAvoidanceOptions]
    #
    # @!attribute [rw] clustering
    #   Clustering allows you to specify how nearby waypoints can be
    #   clustered to improve the optimized sequence.
    #   @return [Types::WaypointOptimizationClusteringOptions]
    #
    # @!attribute [rw] departure_time
    #   Departure time from the waypoint.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The final position for the route in the World Geodetic System (WGS
    #   84) format: `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] destination_options
    #   Destination related options.
    #   @return [Types::WaypointOptimizationDestinationOptions]
    #
    # @!attribute [rw] driver
    #   Driver related options.
    #   @return [Types::WaypointOptimizationDriverOptions]
    #
    # @!attribute [rw] exclude
    #   Features to be strictly excluded while calculating the route.
    #   @return [Types::WaypointOptimizationExclusionOptions]
    #
    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @!attribute [rw] optimize_sequencing_for
    #   Specifies the optimization criteria for the calculated sequence.
    #
    #   Default Value: `FastestRoute`.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The start position for the route.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] origin_options
    #   Origin related options.
    #   @return [Types::WaypointOptimizationOriginOptions]
    #
    # @!attribute [rw] traffic
    #   Traffic-related options.
    #   @return [Types::WaypointOptimizationTrafficOptions]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #   @return [Types::WaypointOptimizationTravelModeOptions]
    #
    # @!attribute [rw] waypoints
    #   List of waypoints between the `Origin` and `Destination`.
    #   @return [Array<Types::WaypointOptimizationWaypoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/OptimizeWaypointsRequest AWS API Documentation
    #
    class OptimizeWaypointsRequest < Struct.new(
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
      :waypoints)
      SENSITIVE = [:destination, :key, :origin]
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   Details about the connection from one waypoint to the next, within
    #   the optimized sequence.
    #   @return [Array<Types::WaypointOptimizationConnection>]
    #
    # @!attribute [rw] distance
    #   Overall distance to travel the whole sequence.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Overall duration to travel the whole sequence.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] impeding_waypoints
    #   Returns waypoints that caused the optimization problem to fail, and
    #   the constraints that were unsatisfied leading to the failure.
    #   @return [Array<Types::WaypointOptimizationImpedingWaypoint>]
    #
    # @!attribute [rw] optimized_waypoints
    #   Waypoints in the order of the optimized sequence.
    #   @return [Array<Types::WaypointOptimizationOptimizedWaypoint>]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #   @return [String]
    #
    # @!attribute [rw] time_breakdown
    #   Time breakdown for the sequence.
    #   @return [Types::WaypointOptimizationTimeBreakdown]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/OptimizeWaypointsResponse AWS API Documentation
    #
    class OptimizeWaypointsResponse < Struct.new(
      :connections,
      :distance,
      :duration,
      :impeding_waypoints,
      :optimized_waypoints,
      :pricing_bucket,
      :time_breakdown)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry defined as an encoded corridor - an encoded polyline with a
    # radius that defines the width of the corridor.
    #
    # @!attribute [rw] polyline
    #   An ordered list of positions used to plot a route on a map in a
    #   lossy compression format.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] radius
    #   Considers all roads within the provided radius to match the provided
    #   destination to. The roads that are considered are determined by the
    #   provided Strategy.
    #
    #   **Unit**: `Meters`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/PolylineCorridor AWS API Documentation
    #
    class PolylineCorridor < Struct.new(
      :polyline,
      :radius)
      SENSITIVE = [:polyline]
      include Aws::Structure
    end

    # Notices provide information around factors that may have influenced
    # snapping in a manner atypical to the standard use cases.
    #
    # @!attribute [rw] code
    #   Code corresponding to the issue.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The notice title.
    #   @return [String]
    #
    # @!attribute [rw] trace_point_indexes
    #   TracePoint indices for which the provided notice code corresponds
    #   to.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapNotice AWS API Documentation
    #
    class RoadSnapNotice < Struct.new(
      :code,
      :title,
      :trace_point_indexes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Interpolated geometry for the snapped route that is overlay-able onto
    # a map.
    #
    # @!attribute [rw] line_string
    #   An ordered list of positions used to plot a route on a map.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] polyline
    #   An ordered list of positions used to plot a route on a map in a
    #   lossy compression format.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapSnappedGeometry AWS API Documentation
    #
    class RoadSnapSnappedGeometry < Struct.new(
      :line_string,
      :polyline)
      SENSITIVE = [:line_string, :polyline]
      include Aws::Structure
    end

    # TracePoints snapped onto the road network.
    #
    # @!attribute [rw] confidence
    #   Confidence value for the correctness of this point match.
    #   @return [Float]
    #
    # @!attribute [rw] original_position
    #   Position of the TracePoint provided within the request, at the same
    #   index.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] snapped_position
    #   Snapped position of the TracePoint provided within the request, at
    #   the same index.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapSnappedTracePoint AWS API Documentation
    #
    class RoadSnapSnappedTracePoint < Struct.new(
      :confidence,
      :original_position,
      :snapped_position)
      SENSITIVE = [:original_position, :snapped_position]
      include Aws::Structure
    end

    # TracePoint indices for which the provided notice code corresponds to.
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] speed
    #   Speed at the specified trace point .
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] timestamp
    #   Timestamp of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapTracePoint AWS API Documentation
    #
    class RoadSnapTracePoint < Struct.new(
      :heading,
      :position,
      :speed,
      :timestamp)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Trailer options corresponding to the vehicle.
    #
    # @!attribute [rw] trailer_count
    #   Number of trailers attached to the vehicle.
    #
    #   Default Value: `0`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapTrailerOptions AWS API Documentation
    #
    class RoadSnapTrailerOptions < Struct.new(
      :trailer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode related options for the provided travel mode.
    #
    # @!attribute [rw] truck
    #   Travel mode options when the provided travel mode is "Truck".
    #   @return [Types::RoadSnapTruckOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapTravelModeOptions AWS API Documentation
    #
    class RoadSnapTravelModeOptions < Struct.new(
      :truck)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is "Truck".
    #
    # @!attribute [rw] gross_weight
    #   Gross weight of the vehicle including trailers, and goods at
    #   capacity.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] hazardous_cargos
    #   List of Hazardous cargos contained in the vehicle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] height
    #   Height of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] length
    #   Length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] trailer
    #   Trailer options corresponding to the vehicle.
    #   @return [Types::RoadSnapTrailerOptions]
    #
    # @!attribute [rw] tunnel_restriction_code
    #   The tunnel restriction code.
    #
    #   Tunnel categories in this list indicate the restrictions which apply
    #   to certain tunnels in Great Britain. They relate to the types of
    #   dangerous goods that can be transported through them.
    #
    #   * *Tunnel Category B*
    #
    #     * *Risk Level*: Limited risk
    #
    #     * *Restrictions*: Few restrictions
    #   * *Tunnel Category C*
    #
    #     * *Risk Level*: Medium risk
    #
    #     * *Restrictions*: Some restrictions
    #   * *Tunnel Category D*
    #
    #     * *Risk Level*: High risk
    #
    #     * *Restrictions*: Many restrictions occur
    #   * *Tunnel Category E*
    #
    #     * *Risk Level*: Very high risk
    #
    #     * *Restrictions*: Restricted tunnel
    #   @return [String]
    #
    # @!attribute [rw] width
    #   Width of the vehicle in centimenters.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoadSnapTruckOptions AWS API Documentation
    #
    class RoadSnapTruckOptions < Struct.new(
      :gross_weight,
      :hazardous_cargos,
      :height,
      :length,
      :trailer,
      :tunnel_restriction_code,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # The route.
    #
    # @!attribute [rw] legs
    #   A leg is a section of a route from one waypoint to the next. A leg
    #   could be of type Vehicle, Pedestrian or Ferry. Legs of different
    #   types could occur together within a single route. For example, a car
    #   employing the use of a Ferry will contain Vehicle legs corresponding
    #   to journey on land, and Ferry legs corresponding to the journey via
    #   Ferry.
    #   @return [Array<Types::RouteLeg>]
    #
    # @!attribute [rw] major_road_labels
    #   Important labels including names and route numbers that
    #   differentiate the current route from the alternatives presented.
    #   @return [Array<Types::RouteMajorRoadLabel>]
    #
    # @!attribute [rw] summary
    #   Summarized details of the leg.
    #   @return [Types::RouteSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/Route AWS API Documentation
    #
    class Route < Struct.new(
      :legs,
      :major_road_labels,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Features that are allowed while calculating a route.
    #
    # @!attribute [rw] hot
    #   Allow Hot (High Occupancy Toll) lanes while calculating the route.
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] hov
    #   Allow Hov (High Occupancy vehicle) lanes while calculating the
    #   route.
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteAllowOptions AWS API Documentation
    #
    class RouteAllowOptions < Struct.new(
      :hot,
      :hov)
      SENSITIVE = []
      include Aws::Structure
    end

    # Areas to be avoided.
    #
    # @!attribute [rw] except
    #   Exceptions to the provided avoidance geometry, to be included while
    #   calculating the route.
    #   @return [Array<Types::RouteAvoidanceAreaGeometry>]
    #
    # @!attribute [rw] geometry
    #   Geometry of the area to be avoided.
    #   @return [Types::RouteAvoidanceAreaGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteAvoidanceArea AWS API Documentation
    #
    class RouteAvoidanceArea < Struct.new(
      :except,
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry of the area to be avoided.
    #
    # @!attribute [rw] corridor
    #   Geometry defined as a corridor - a LineString with a radius that
    #   defines the width of the corridor.
    #   @return [Types::Corridor]
    #
    # @!attribute [rw] bounding_box
    #   Geometry defined as a bounding box. The first pair represents the X
    #   and Y coordinates (longitude and latitude,) of the southwest corner
    #   of the bounding box; the second pair represents the X and Y
    #   coordinates (longitude and latitude) of the northeast corner.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] polygon
    #   Geometry defined as a polygon with only one linear ring.
    #   @return [Array<Array<Array<Float>>>]
    #
    # @!attribute [rw] polyline_corridor
    #   Geometry defined as an encoded corridor - an encoded polyline with a
    #   radius that defines the width of the corridor.
    #   @return [Types::PolylineCorridor]
    #
    # @!attribute [rw] polyline_polygon
    #   A list of Isoline PolylinePolygon, for each isoline PolylinePolygon,
    #   it contains PolylinePolygon of the first linear ring (the outer
    #   ring) and from 2nd item to the last item (the inner rings). For more
    #   information on polyline encoding, see
    #   [https://github.com/heremaps/flexiblepolyline/blob/master/README.md][1].
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexiblepolyline/blob/master/README.md
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteAvoidanceAreaGeometry AWS API Documentation
    #
    class RouteAvoidanceAreaGeometry < Struct.new(
      :corridor,
      :bounding_box,
      :polygon,
      :polyline_corridor,
      :polyline_polygon)
      SENSITIVE = [:corridor, :bounding_box, :polyline_corridor, :polyline_polygon]
      include Aws::Structure
    end

    # Specifies options for areas to avoid when calculating the route. This
    # is a best-effort avoidance setting, meaning the router will try to
    # honor the avoidance preferences but may still include restricted areas
    # if no feasible alternative route exists. If avoidance options are not
    # followed, the response will indicate that the avoidance criteria were
    # violated.
    #
    # @!attribute [rw] areas
    #   Areas to be avoided.
    #   @return [Array<Types::RouteAvoidanceArea>]
    #
    # @!attribute [rw] car_shuttle_trains
    #   Avoid car-shuttle-trains while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] controlled_access_highways
    #   Avoid controlled access highways while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] dirt_roads
    #   Avoid dirt roads while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] ferries
    #   Avoid ferries while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] seasonal_closure
    #   Avoid roads that have seasonal closure while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_roads
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_transponders
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] truck_road_types
    #   Truck road type identifiers. `BK1` through `BK4` apply only to
    #   Sweden. `A2,A4,B2,B4,C,D,ET2,ET4` apply only to Mexico.
    #
    #   <note markdown="1"> There are currently no other supported values as of 26th April 2024.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] tunnels
    #   Avoid tunnels while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_categories
    #   Zone categories to be avoided.
    #   @return [Array<Types::RouteAvoidanceZoneCategory>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteAvoidanceOptions AWS API Documentation
    #
    class RouteAvoidanceOptions < Struct.new(
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
      :zone_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Zone categories to be avoided.
    #
    # @!attribute [rw] category
    #   Zone category to be avoided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteAvoidanceZoneCategory AWS API Documentation
    #
    class RouteAvoidanceZoneCategory < Struct.new(
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is `Car`.
    #
    # @!attribute [rw] engine_type
    #   Engine type of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::RouteVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed specified.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteCarOptions AWS API Documentation
    #
    class RouteCarOptions < Struct.new(
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the continue highway step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteContinueHighwayStepDetails AWS API Documentation
    #
    class RouteContinueHighwayStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the continue step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteContinueStepDetails AWS API Documentation
    #
    class RouteContinueStepDetails < Struct.new(
      :intersection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to the destination.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] avoid_u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::RouteMatchingOptions]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::RouteSideOfStreetOptions]
    #
    # @!attribute [rw] stop_duration
    #   Duration of the stop.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteDestinationOptions AWS API Documentation
    #
    class RouteDestinationOptions < Struct.new(
      :avoid_actions_for_distance,
      :avoid_u_turns,
      :heading,
      :matching,
      :side_of_street,
      :stop_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Driver related options.
    #
    # @!attribute [rw] schedule
    #   Driver work-rest schedule. Stops are added to fulfil the provided
    #   rest schedule.
    #   @return [Array<Types::RouteDriverScheduleInterval>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteDriverOptions AWS API Documentation
    #
    class RouteDriverOptions < Struct.new(
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Interval of the driver work-rest schedule. Stops are added to fulfil
    # the provided rest schedule.
    #
    # @!attribute [rw] drive_duration
    #   Maximum allowed driving time before stopping to rest.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] rest_duration
    #   Resting time before the driver can continue driving.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteDriverScheduleInterval AWS API Documentation
    #
    class RouteDriverScheduleInterval < Struct.new(
      :drive_duration,
      :rest_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type of the emission.
    #
    # **Valid values**: `Euro1, Euro2, Euro3, Euro4, Euro5, Euro6, EuroEev`
    #
    # @!attribute [rw] co_2_emission_class
    #   The CO 2 emission classes.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the emission.
    #
    #   **Valid values**: `Euro1, Euro2, Euro3, Euro4, Euro5, Euro6,
    #   EuroEev`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteEmissionType AWS API Documentation
    #
    class RouteEmissionType < Struct.new(
      :co_2_emission_class,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the enter highway step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteEnterHighwayStepDetails AWS API Documentation
    #
    class RouteEnterHighwayStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies strict exclusion options for the route calculation. This
    # setting mandates that the router will avoid any routes that include
    # the specified options, rather than merely attempting to minimize them.
    #
    # @!attribute [rw] countries
    #   List of countries to be avoided defined by two-letter or
    #   three-letter country codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteExclusionOptions AWS API Documentation
    #
    class RouteExclusionOptions < Struct.new(
      :countries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the exit step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] relative_exit
    #   Exit to be taken.
    #   @return [Integer]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteExitStepDetails AWS API Documentation
    #
    class RouteExitStepDetails < Struct.new(
      :intersection,
      :relative_exit,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Steps of a leg that must be performed after the travel portion of the
    # leg.
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] instruction
    #   Brief description of the step in the requested language.
    #
    #   <note markdown="1"> Only available when the TravelStepType is Default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryAfterTravelStep AWS API Documentation
    #
    class RouteFerryAfterTravelStep < Struct.new(
      :duration,
      :instruction,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details corresponding to the arrival for the leg.
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RouteFerryPlace]
    #
    # @!attribute [rw] time
    #   The time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryArrival AWS API Documentation
    #
    class RouteFerryArrival < Struct.new(
      :place,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Steps of a leg that must be performed before the travel portion of the
    # leg.
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] instruction
    #   Brief description of the step in the requested language.
    #
    #   <note markdown="1"> Only available when the TravelStepType is Default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryBeforeTravelStep AWS API Documentation
    #
    class RouteFerryBeforeTravelStep < Struct.new(
      :duration,
      :instruction,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details corresponding to the departure for the leg.
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RouteFerryPlace]
    #
    # @!attribute [rw] time
    #   The time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryDeparture AWS API Documentation
    #
    class RouteFerryDeparture < Struct.new(
      :place,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # FerryLegDetails is populated when the Leg type is Ferry, and provides
    # additional information that is specific
    #
    # @!attribute [rw] after_travel_steps
    #   Steps of a leg that must be performed after the travel portion of
    #   the leg.
    #   @return [Array<Types::RouteFerryAfterTravelStep>]
    #
    # @!attribute [rw] arrival
    #   Details corresponding to the arrival for the leg.
    #   @return [Types::RouteFerryArrival]
    #
    # @!attribute [rw] before_travel_steps
    #   Steps of a leg that must be performed before the travel portion of
    #   the leg.
    #   @return [Array<Types::RouteFerryBeforeTravelStep>]
    #
    # @!attribute [rw] departure
    #   Details corresponding to the departure for the leg.
    #   @return [Types::RouteFerryDeparture]
    #
    # @!attribute [rw] notices
    #   Notices are additional information returned that indicate issues
    #   that occurred during route calculation.
    #   @return [Array<Types::RouteFerryNotice>]
    #
    # @!attribute [rw] pass_through_waypoints
    #   Waypoints that were passed through during the leg. This includes the
    #   waypoints that were configured with the PassThrough option.
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    #
    # @!attribute [rw] route_name
    #   Route name of the ferry line.
    #   @return [String]
    #
    # @!attribute [rw] spans
    #   Spans that were computed for the requested SpanAdditionalFeatures.
    #   @return [Array<Types::RouteFerrySpan>]
    #
    # @!attribute [rw] summary
    #   Summarized details of the leg.
    #   @return [Types::RouteFerrySummary]
    #
    # @!attribute [rw] travel_steps
    #   Steps of a leg that must be performed before the travel portion of
    #   the leg.
    #   @return [Array<Types::RouteFerryTravelStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryLegDetails AWS API Documentation
    #
    class RouteFerryLegDetails < Struct.new(
      :after_travel_steps,
      :arrival,
      :before_travel_steps,
      :departure,
      :notices,
      :pass_through_waypoints,
      :route_name,
      :spans,
      :summary,
      :travel_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notices are additional information returned that indicate issues that
    # occurred during route calculation.
    #
    # @!attribute [rw] code
    #   Code corresponding to the issue.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   Impact corresponding to the issue. While Low impact notices can be
    #   safely ignored, High impact notices must be evaluated further to
    #   determine the impact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryNotice AWS API Documentation
    #
    class RouteFerryNotice < Struct.new(
      :code,
      :impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details of the leg.
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryOverviewSummary AWS API Documentation
    #
    class RouteFerryOverviewSummary < Struct.new(
      :distance,
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Position provided in the request.
    #
    # @!attribute [rw] name
    #   The name of the place.
    #   @return [String]
    #
    # @!attribute [rw] original_position
    #   Position provided in the request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] waypoint_index
    #   Index of the waypoint in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryPlace AWS API Documentation
    #
    class RouteFerryPlace < Struct.new(
      :name,
      :original_position,
      :position,
      :waypoint_index)
      SENSITIVE = [:original_position, :position]
      include Aws::Structure
    end

    # Span computed for the requested SpanAdditionalFeatures.
    #
    # @!attribute [rw] country
    #   3 letter Country code corresponding to the Span.
    #   @return [String]
    #
    # @!attribute [rw] distance
    #   Distance of the computed span. This feature doesn't split a span,
    #   but is always computed on a span split by other properties.
    #
    #   **Unit**: `meters`
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the computed span. This feature doesn't split a span,
    #   but is always computed on a span split by other properties.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this span.
    #   @return [Integer]
    #
    # @!attribute [rw] names
    #   Provides an array of names of the ferry span in available languages.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] region
    #   2-3 letter Region code corresponding to the Span. This is either a
    #   province or a state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerrySpan AWS API Documentation
    #
    class RouteFerrySpan < Struct.new(
      :country,
      :distance,
      :duration,
      :geometry_offset,
      :names,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details for the leg including travel steps only. The
    # Distance for the travel only portion of the journey is the same as the
    # Distance within the Overview summary.
    #
    # @!attribute [rw] overview
    #   Summarized details for the leg including before travel, travel and
    #   after travel steps.
    #   @return [Types::RouteFerryOverviewSummary]
    #
    # @!attribute [rw] travel_only
    #   Summarized details for the leg including travel steps only. The
    #   Distance for the travel only portion of the journey is in meters
    #   @return [Types::RouteFerryTravelOnlySummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerrySummary AWS API Documentation
    #
    class RouteFerrySummary < Struct.new(
      :overview,
      :travel_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details for the leg including travel steps only. The
    # Distance for the travel only portion of the journey is the same as the
    # Distance within the Overview summary.
    #
    # @!attribute [rw] duration
    #   Total duration in free flowing traffic, which is the best case or
    #   shortest duration possible to cover the leg.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryTravelOnlySummary AWS API Documentation
    #
    class RouteFerryTravelOnlySummary < Struct.new(
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Steps of a leg that must be performed during the travel portion of the
    # leg.
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this step.
    #   @return [Integer]
    #
    # @!attribute [rw] instruction
    #   Brief description of the step in the requested language.
    #
    #   <note markdown="1"> Only available when the TravelStepType is Default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteFerryTravelStep AWS API Documentation
    #
    class RouteFerryTravelStep < Struct.new(
      :distance,
      :duration,
      :geometry_offset,
      :instruction,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details that are specific to a Keep step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteKeepStepDetails AWS API Documentation
    #
    class RouteKeepStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A leg is a section of a route from one waypoint to the next. A leg
    # could be of type Vehicle, Pedestrian or Ferry. Legs of different types
    # could occur together within a single route. For example, a car
    # employing the use of a Ferry will contain Vehicle legs corresponding
    # to journey on land, and Ferry legs corresponding to the journey via
    # Ferry.
    #
    # @!attribute [rw] ferry_leg_details
    #   FerryLegDetails is populated when the Leg type is Ferry, and
    #   provides additional information that is specific
    #   @return [Types::RouteFerryLegDetails]
    #
    # @!attribute [rw] geometry
    #   Geometry of the area to be avoided.
    #   @return [Types::RouteLegGeometry]
    #
    # @!attribute [rw] language
    #   List of languages for instructions within steps in the response.
    #   @return [String]
    #
    # @!attribute [rw] pedestrian_leg_details
    #   Details related to the pedestrian leg.
    #   @return [Types::RoutePedestrianLegDetails]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the leg.
    #   @return [String]
    #
    # @!attribute [rw] vehicle_leg_details
    #   Details related to the vehicle leg.
    #   @return [Types::RouteVehicleLegDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteLeg AWS API Documentation
    #
    class RouteLeg < Struct.new(
      :ferry_leg_details,
      :geometry,
      :language,
      :pedestrian_leg_details,
      :travel_mode,
      :type,
      :vehicle_leg_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned Route leg geometry.
    #
    # @!attribute [rw] line_string
    #   An ordered list of positions used to plot a route on a map.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] polyline
    #   An ordered list of positions used to plot a route on a map in a
    #   lossy compression format.
    #
    #   <note markdown="1"> LineString and Polyline are mutually exclusive properties.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteLegGeometry AWS API Documentation
    #
    class RouteLegGeometry < Struct.new(
      :line_string,
      :polyline)
      SENSITIVE = [:line_string, :polyline]
      include Aws::Structure
    end

    # Important labels including names and route numbers that differentiate
    # the current route from the alternatives presented.
    #
    # @!attribute [rw] road_name
    #   Name of the road (localized).
    #   @return [Types::LocalizedString]
    #
    # @!attribute [rw] route_number
    #   Route number of the road.
    #   @return [Types::RouteNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMajorRoadLabel AWS API Documentation
    #
    class RouteMajorRoadLabel < Struct.new(
      :road_name,
      :route_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to route matching.
    #
    # @!attribute [rw] name_hint
    #   Attempts to match the provided position to a road similar to the
    #   provided name.
    #   @return [String]
    #
    # @!attribute [rw] on_road_threshold
    #   If the distance to a highway/bridge/tunnel/sliproad is within
    #   threshold, the waypoint will be snapped to the
    #   highway/bridge/tunnel/sliproad.
    #
    #   **Unit**: `meters`
    #   @return [Integer]
    #
    # @!attribute [rw] radius
    #   Considers all roads within the provided radius to match the provided
    #   destination to. The roads that are considered are determined by the
    #   provided Strategy.
    #
    #   **Unit**: `Meters`
    #   @return [Integer]
    #
    # @!attribute [rw] strategy
    #   Strategy that defines matching of the position onto the road
    #   network. MatchAny considers all roads possible, whereas
    #   MatchMostSignificantRoad matches to the most significant road.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatchingOptions AWS API Documentation
    #
    class RouteMatchingOptions < Struct.new(
      :name_hint,
      :on_road_threshold,
      :radius,
      :strategy)
      SENSITIVE = [:name_hint]
      include Aws::Structure
    end

    # Allow Options related to the route matrix.
    #
    # @!attribute [rw] hot
    #   Allow Hot (High Occupancy Toll) lanes while calculating the route.
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] hov
    #   Allow Hov (High Occupancy vehicle) lanes while calculating the
    #   route.
    #
    #   Default value: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixAllowOptions AWS API Documentation
    #
    class RouteMatrixAllowOptions < Struct.new(
      :hot,
      :hov)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the circle that was used while calculating the route.
    #
    # @!attribute [rw] margin
    #   The margin provided for the calculation.
    #   @return [Integer]
    #
    # @!attribute [rw] max_radius
    #   The maximum size of the radius provided for the calculation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixAutoCircle AWS API Documentation
    #
    class RouteMatrixAutoCircle < Struct.new(
      :margin,
      :max_radius)
      SENSITIVE = []
      include Aws::Structure
    end

    # Area to be avoided.
    #
    # @!attribute [rw] geometry
    #   Geometry of the area to be avoided.
    #   @return [Types::RouteMatrixAvoidanceAreaGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixAvoidanceArea AWS API Documentation
    #
    class RouteMatrixAvoidanceArea < Struct.new(
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry of the area to be avoided.
    #
    # @!attribute [rw] bounding_box
    #   Geometry defined as a bounding box. The first pair represents the X
    #   and Y coordinates (longitude and latitude,) of the southwest corner
    #   of the bounding box; the second pair represents the X and Y
    #   coordinates (longitude and latitude) of the northeast corner.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] polygon
    #   Geometry defined as a polygon with only one linear ring.
    #   @return [Array<Array<Array<Float>>>]
    #
    # @!attribute [rw] polyline_polygon
    #   A list of Isoline PolylinePolygon, for each isoline PolylinePolygon,
    #   it contains PolylinePolygon of the first linear ring (the outer
    #   ring) and from second item to the last item (the inner rings). For
    #   more information on polyline encoding, see
    #   [https://github.com/heremaps/flexiblepolyline/blob/master/README.md][1].
    #
    #
    #
    #   [1]: https://github.com/heremaps/flexiblepolyline/blob/master/README.md
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixAvoidanceAreaGeometry AWS API Documentation
    #
    class RouteMatrixAvoidanceAreaGeometry < Struct.new(
      :bounding_box,
      :polygon,
      :polyline_polygon)
      SENSITIVE = [:bounding_box, :polyline_polygon]
      include Aws::Structure
    end

    # Specifies options for areas to avoid when calculating the route. This
    # is a best-effort avoidance setting, meaning the router will try to
    # honor the avoidance preferences but may still include restricted areas
    # if no feasible alternative route exists. If avoidance options are not
    # followed, the response will indicate that the avoidance criteria were
    # violated.
    #
    # @!attribute [rw] areas
    #   Areas to be avoided.
    #   @return [Array<Types::RouteMatrixAvoidanceArea>]
    #
    # @!attribute [rw] car_shuttle_trains
    #   Avoid car-shuttle-trains while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] controlled_access_highways
    #   Avoid controlled access highways while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] dirt_roads
    #   Avoid dirt roads while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] ferries
    #   Avoid ferries while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_roads
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_transponders
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] truck_road_types
    #   Truck road type identifiers. `BK1` through `BK4` apply only to
    #   Sweden. `A2,A4,B2,B4,C,D,ET2,ET4` apply only to Mexico.
    #
    #   <note markdown="1"> There are currently no other supported values as of 26th April 2024.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] tunnels
    #   Avoid tunnels while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @!attribute [rw] zone_categories
    #   Zone categories to be avoided.
    #   @return [Array<Types::RouteMatrixAvoidanceZoneCategory>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixAvoidanceOptions AWS API Documentation
    #
    class RouteMatrixAvoidanceOptions < Struct.new(
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
      :zone_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Zone categories to be avoided.
    #
    # @!attribute [rw] category
    #   Zone category to be avoided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixAvoidanceZoneCategory AWS API Documentation
    #
    class RouteMatrixAvoidanceZoneCategory < Struct.new(
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Boundary within which the matrix is to be calculated. All data,
    # origins and destinations outside the boundary are considered invalid.
    #
    # @!attribute [rw] geometry
    #   Geometry of the area to be avoided.
    #   @return [Types::RouteMatrixBoundaryGeometry]
    #
    # @!attribute [rw] unbounded
    #   No restrictions in terms of a routing boundary, and is typically
    #   used for longer routes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixBoundary AWS API Documentation
    #
    class RouteMatrixBoundary < Struct.new(
      :geometry,
      :unbounded)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry of the routing boundary.
    #
    # @!attribute [rw] auto_circle
    #   Provides the circle that was used while calculating the route.
    #   @return [Types::RouteMatrixAutoCircle]
    #
    # @!attribute [rw] circle
    #   Geometry defined as a circle. When request routing boundary was set
    #   as `AutoCircle`, the response routing boundary will return `Circle`
    #   derived from the `AutoCircle` settings.
    #   @return [Types::Circle]
    #
    # @!attribute [rw] bounding_box
    #   Geometry defined as a bounding box. The first pair represents the X
    #   and Y coordinates (longitude and latitude,) of the southwest corner
    #   of the bounding box; the second pair represents the X and Y
    #   coordinates (longitude and latitude) of the northeast corner.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] polygon
    #   Geometry defined as a polygon with only one linear ring.
    #   @return [Array<Array<Array<Float>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixBoundaryGeometry AWS API Documentation
    #
    class RouteMatrixBoundaryGeometry < Struct.new(
      :auto_circle,
      :circle,
      :bounding_box,
      :polygon)
      SENSITIVE = [:circle, :bounding_box]
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is `Car`.
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixCarOptions AWS API Documentation
    #
    class RouteMatrixCarOptions < Struct.new(
      :license_plate,
      :max_speed,
      :occupancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The route destination.
    #
    # @!attribute [rw] options
    #   Destination related options.
    #   @return [Types::RouteMatrixDestinationOptions]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixDestination AWS API Documentation
    #
    class RouteMatrixDestination < Struct.new(
      :options,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Options related to the destination.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::RouteMatrixMatchingOptions]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::RouteMatrixSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixDestinationOptions AWS API Documentation
    #
    class RouteMatrixDestinationOptions < Struct.new(
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street)
      SENSITIVE = []
      include Aws::Structure
    end

    # The calculated route matrix containing the results for all pairs of
    # Origins to Destination positions. Each row corresponds to one entry in
    # Origins. Each entry in the row corresponds to the route from that
    # entry in Origins to an entry in Destination positions.
    #
    # @!attribute [rw] distance
    #   The total distance of travel for the route.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   The expected duration of travel for the route.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] error
    #   Error code that occurred during calculation of the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixEntry AWS API Documentation
    #
    class RouteMatrixEntry < Struct.new(
      :distance,
      :duration,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies strict exclusion options for the route calculation. This
    # setting mandates that the router will avoid any routes that include
    # the specified options, rather than merely attempting to minimize them.
    #
    # @!attribute [rw] countries
    #   List of countries to be avoided defined by two-letter or
    #   three-letter country codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixExclusionOptions AWS API Documentation
    #
    class RouteMatrixExclusionOptions < Struct.new(
      :countries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Matching options.
    #
    # @!attribute [rw] name_hint
    #   Attempts to match the provided position to a road similar to the
    #   provided name.
    #   @return [String]
    #
    # @!attribute [rw] on_road_threshold
    #   If the distance to a highway/bridge/tunnel/sliproad is within
    #   threshold, the waypoint will be snapped to the
    #   highway/bridge/tunnel/sliproad.
    #
    #   **Unit**: `meters`
    #   @return [Integer]
    #
    # @!attribute [rw] radius
    #   Considers all roads within the provided radius to match the provided
    #   destination to. The roads that are considered are determined by the
    #   provided Strategy.
    #
    #   **Unit**: `Meters`
    #   @return [Integer]
    #
    # @!attribute [rw] strategy
    #   Strategy that defines matching of the position onto the road
    #   network. MatchAny considers all roads possible, whereas
    #   MatchMostSignificantRoad matches to the most significant road.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixMatchingOptions AWS API Documentation
    #
    class RouteMatrixMatchingOptions < Struct.new(
      :name_hint,
      :on_road_threshold,
      :radius,
      :strategy)
      SENSITIVE = [:name_hint]
      include Aws::Structure
    end

    # The start position for the route.
    #
    # @!attribute [rw] options
    #   Origin related options.
    #   @return [Types::RouteMatrixOriginOptions]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixOrigin AWS API Documentation
    #
    class RouteMatrixOrigin < Struct.new(
      :options,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Origin related options.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::RouteMatrixMatchingOptions]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::RouteMatrixSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixOriginOptions AWS API Documentation
    #
    class RouteMatrixOriginOptions < Struct.new(
      :avoid_actions_for_distance,
      :heading,
      :matching,
      :side_of_street)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is `Scooter`
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixScooterOptions AWS API Documentation
    #
    class RouteMatrixScooterOptions < Struct.new(
      :license_plate,
      :max_speed,
      :occupancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure matching the provided position to a side of the
    # street.
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] use_with
    #   Strategy that defines when the side of street position should be
    #   used. AnyStreet will always use the provided position.
    #
    #   Default Value: `DividedStreetOnly`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixSideOfStreetOptions AWS API Documentation
    #
    class RouteMatrixSideOfStreetOptions < Struct.new(
      :position,
      :use_with)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Traffic related options.
    #
    # @!attribute [rw] flow_event_threshold_override
    #   Duration for which flow traffic is considered valid. For this
    #   period, the flow traffic is used over historical traffic data. Flow
    #   traffic refers to congestion, which changes very quickly. Duration
    #   in seconds for which flow traffic event would be considered valid.
    #   While flow traffic event is valid it will be used over the
    #   historical traffic data.
    #   @return [Integer]
    #
    # @!attribute [rw] usage
    #   Determines if traffic should be used or ignored while calculating
    #   the route.
    #
    #   Default Value: `UseTrafficData`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixTrafficOptions AWS API Documentation
    #
    class RouteMatrixTrafficOptions < Struct.new(
      :flow_event_threshold_override,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trailer options corresponding to the vehicle.
    #
    # @!attribute [rw] trailer_count
    #   Number of trailers attached to the vehicle.
    #
    #   Default Value: `0`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixTrailerOptions AWS API Documentation
    #
    class RouteMatrixTrailerOptions < Struct.new(
      :trailer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode related options for the provided travel mode.
    #
    # @!attribute [rw] car
    #   Travel mode options when the provided travel mode is "Car"
    #   @return [Types::RouteMatrixCarOptions]
    #
    # @!attribute [rw] scooter
    #   Travel mode options when the provided travel mode is `Scooter`
    #
    #   <note markdown="1"> When travel mode is set to `Scooter`, then the avoidance option
    #   `ControlledAccessHighways` defaults to `true`.
    #
    #    </note>
    #   @return [Types::RouteMatrixScooterOptions]
    #
    # @!attribute [rw] truck
    #   Travel mode options when the provided travel mode is "Truck"
    #   @return [Types::RouteMatrixTruckOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixTravelModeOptions AWS API Documentation
    #
    class RouteMatrixTravelModeOptions < Struct.new(
      :car,
      :scooter,
      :truck)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is "Truck"
    #
    # @!attribute [rw] axle_count
    #   Total number of axles of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] gross_weight
    #   Gross weight of the vehicle including trailers, and goods at
    #   capacity.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] hazardous_cargos
    #   List of Hazardous cargo contained in the vehicle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] height
    #   Height of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] kpra_length
    #   Kingpin to rear axle length of the vehicle
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] length
    #   Length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] payload_capacity
    #   Payload capacity of the vehicle and trailers attached.
    #
    #   **Unit**: `kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] trailer
    #   Trailer options corresponding to the vehicle.
    #   @return [Types::RouteMatrixTrailerOptions]
    #
    # @!attribute [rw] truck_type
    #   Type of the truck.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_restriction_code
    #   The tunnel restriction code.
    #
    #   Tunnel categories in this list indicate the restrictions which apply
    #   to certain tunnels in Great Britain. They relate to the types of
    #   dangerous goods that can be transported through them.
    #
    #   * *Tunnel Category B*
    #
    #     * *Risk Level*: Limited risk
    #
    #     * *Restrictions*: Few restrictions
    #   * *Tunnel Category C*
    #
    #     * *Risk Level*: Medium risk
    #
    #     * *Restrictions*: Some restrictions
    #   * *Tunnel Category D*
    #
    #     * *Risk Level*: High risk
    #
    #     * *Restrictions*: Many restrictions occur
    #   * *Tunnel Category E*
    #
    #     * *Risk Level*: Very high risk
    #
    #     * *Restrictions*: Restricted tunnel
    #   @return [String]
    #
    # @!attribute [rw] weight_per_axle
    #   Heaviest weight per axle irrespective of the axle type or the axle
    #   group. Meant for usage in countries where the differences in axle
    #   types or axle groups are not distinguished.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] weight_per_axle_group
    #   Specifies the total weight for the specified axle group. Meant for
    #   usage in countries that have different regulations based on the axle
    #   group type.
    #   @return [Types::WeightPerAxleGroup]
    #
    # @!attribute [rw] width
    #   Width of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixTruckOptions AWS API Documentation
    #
    class RouteMatrixTruckOptions < Struct.new(
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
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # The vehicle License Plate.
    #
    # @!attribute [rw] last_character
    #   The last character of the License Plate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteMatrixVehicleLicensePlate AWS API Documentation
    #
    class RouteMatrixVehicleLicensePlate < Struct.new(
      :last_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notice Detail that is a range.
    #
    # @!attribute [rw] min
    #   Minimum value for the range.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   Maximum value for the range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteNoticeDetailRange AWS API Documentation
    #
    class RouteNoticeDetailRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The route number.
    #
    # @!attribute [rw] direction
    #   Directional identifier of the route.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   List of languages for instructions corresponding to the route
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The route number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteNumber AWS API Documentation
    #
    class RouteNumber < Struct.new(
      :direction,
      :language,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Origin related options.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] avoid_u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::RouteMatchingOptions]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::RouteSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteOriginOptions AWS API Documentation
    #
    class RouteOriginOptions < Struct.new(
      :avoid_actions_for_distance,
      :avoid_u_turns,
      :heading,
      :matching,
      :side_of_street)
      SENSITIVE = []
      include Aws::Structure
    end

    # The place where the waypoint is passed through and not treated as a
    # stop.
    #
    # @!attribute [rw] original_position
    #   Position provided in the request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] waypoint_index
    #   Index of the waypoint in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePassThroughPlace AWS API Documentation
    #
    class RoutePassThroughPlace < Struct.new(
      :original_position,
      :position,
      :waypoint_index)
      SENSITIVE = [:original_position, :position]
      include Aws::Structure
    end

    # If the waypoint should be treated as a stop. If yes, the route is
    # split up into different legs around the stop.
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this step.
    #   @return [Integer]
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RoutePassThroughPlace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePassThroughWaypoint AWS API Documentation
    #
    class RoutePassThroughWaypoint < Struct.new(
      :geometry_offset,
      :place)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details corresponding to the arrival for a leg.
    #
    # Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    # Examples:
    #
    # `2020-04-22T17:57:24Z`
    #
    # `2020-04-22T17:57:24+02:00`
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RoutePedestrianPlace]
    #
    # @!attribute [rw] time
    #   The time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianArrival AWS API Documentation
    #
    class RoutePedestrianArrival < Struct.new(
      :place,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details corresponding to the departure for a leg.
    #
    # Time format:`YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    # Examples:
    #
    # `2020-04-22T17:57:24Z`
    #
    # `2020-04-22T17:57:24+02:00`
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RoutePedestrianPlace]
    #
    # @!attribute [rw] time
    #   The time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianDeparture AWS API Documentation
    #
    class RoutePedestrianDeparture < Struct.new(
      :place,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details that are specific to a pedestrian leg.
    #
    # @!attribute [rw] arrival
    #   Details corresponding to the arrival for the leg.
    #   @return [Types::RoutePedestrianArrival]
    #
    # @!attribute [rw] departure
    #   Details corresponding to the departure for the leg.
    #   @return [Types::RoutePedestrianDeparture]
    #
    # @!attribute [rw] notices
    #   Notices are additional information returned that indicate issues
    #   that occurred during route calculation.
    #   @return [Array<Types::RoutePedestrianNotice>]
    #
    # @!attribute [rw] pass_through_waypoints
    #   Waypoints that were passed through during the leg. This includes the
    #   waypoints that were configured with the PassThrough option.
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    #
    # @!attribute [rw] spans
    #   Spans that were computed for the requested SpanAdditionalFeatures.
    #   @return [Array<Types::RoutePedestrianSpan>]
    #
    # @!attribute [rw] summary
    #   Summarized details of the leg.
    #   @return [Types::RoutePedestrianSummary]
    #
    # @!attribute [rw] travel_steps
    #   Steps of a leg that must be performed before the travel portion of
    #   the leg.
    #   @return [Array<Types::RoutePedestrianTravelStep>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianLegDetails AWS API Documentation
    #
    class RoutePedestrianLegDetails < Struct.new(
      :arrival,
      :departure,
      :notices,
      :pass_through_waypoints,
      :spans,
      :summary,
      :travel_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notices are additional information returned that indicate issues that
    # occurred during route calculation.
    #
    # @!attribute [rw] code
    #   Code corresponding to the issue.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   Impact corresponding to the issue. While Low impact notices can be
    #   safely ignored, High impact notices must be evaluated further to
    #   determine the impact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianNotice AWS API Documentation
    #
    class RoutePedestrianNotice < Struct.new(
      :code,
      :impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to the pedestrian.
    #
    # @!attribute [rw] speed
    #   Walking speed in Kilometers per hour.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianOptions AWS API Documentation
    #
    class RoutePedestrianOptions < Struct.new(
      :speed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a pedestrian route step.
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianOverviewSummary AWS API Documentation
    #
    class RoutePedestrianOverviewSummary < Struct.new(
      :distance,
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Place details corresponding to the arrival or departure.
    #
    # @!attribute [rw] name
    #   The name of the place.
    #   @return [String]
    #
    # @!attribute [rw] original_position
    #   Position provided in the request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [String]
    #
    # @!attribute [rw] waypoint_index
    #   Index of the waypoint in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianPlace AWS API Documentation
    #
    class RoutePedestrianPlace < Struct.new(
      :name,
      :original_position,
      :position,
      :side_of_street,
      :waypoint_index)
      SENSITIVE = [:original_position, :position]
      include Aws::Structure
    end

    # Span computed for the requested SpanAdditionalFeatures.
    #
    # @!attribute [rw] best_case_duration
    #   Duration of the computed span without traffic congestion.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] country
    #   3 letter Country code corresponding to the Span.
    #   @return [String]
    #
    # @!attribute [rw] distance
    #   Distance of the computed span. This feature doesn't split a span,
    #   but is always computed on a span split by other properties.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the computed span. This feature doesn't split a span,
    #   but is always computed on a span split by other properties.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] dynamic_speed
    #   Dynamic speed details corresponding to the span.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Types::RouteSpanDynamicSpeedDetails]
    #
    # @!attribute [rw] functional_classification
    #   Functional classification of the road segment corresponding to the
    #   span.
    #   @return [Integer]
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this span.
    #   @return [Integer]
    #
    # @!attribute [rw] incidents
    #   Incidents corresponding to the span. These index into the Incidents
    #   in the parent Leg.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] names
    #   Provides an array of names of the pedestrian span in available
    #   languages.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] pedestrian_access
    #   Access attributes for a pedestrian corresponding to the span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] region
    #   2-3 letter Region code corresponding to the Span. This is either a
    #   province or a state.
    #   @return [String]
    #
    # @!attribute [rw] road_attributes
    #   Attributes for the road segment corresponding to the span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] route_numbers
    #   Designated route name or number corresponding to the span.
    #   @return [Array<Types::RouteNumber>]
    #
    # @!attribute [rw] speed_limit
    #   Speed limit details corresponding to the span.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Types::RouteSpanSpeedLimitDetails]
    #
    # @!attribute [rw] typical_duration
    #   Duration of the computed span under typical traffic congestion.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianSpan AWS API Documentation
    #
    class RoutePedestrianSpan < Struct.new(
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
      :typical_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details for the leg including before travel, travel and
    # after travel steps.
    #
    # @!attribute [rw] overview
    #   Summarized details for the leg including before travel, travel and
    #   after travel steps.
    #   @return [Types::RoutePedestrianOverviewSummary]
    #
    # @!attribute [rw] travel_only
    #   Summarized details for the leg including travel steps only. The
    #   Distance for the travel only portion of the journey is in meters
    #   @return [Types::RoutePedestrianTravelOnlySummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianSummary AWS API Documentation
    #
    class RoutePedestrianSummary < Struct.new(
      :overview,
      :travel_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details for the leg including travel steps.
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianTravelOnlySummary AWS API Documentation
    #
    class RoutePedestrianTravelOnlySummary < Struct.new(
      :duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Steps of a leg that must be performed during the travel portion of the
    # leg.
    #
    # @!attribute [rw] continue_step_details
    #   Details related to the continue step.
    #   @return [Types::RouteContinueStepDetails]
    #
    # @!attribute [rw] current_road
    #   Details of the current road. See RouteRoad for details of
    #   sub-attributes.
    #   @return [Types::RouteRoad]
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] exit_number
    #   Exit number of the road exit, if applicable.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this step.
    #   @return [Integer]
    #
    # @!attribute [rw] instruction
    #   Brief description of the step in the requested language.
    #
    #   <note markdown="1"> Only available when the TravelStepType is Default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] keep_step_details
    #   Details that are specific to a Keep step.
    #   @return [Types::RouteKeepStepDetails]
    #
    # @!attribute [rw] next_road
    #   Details of the next road. See RouteRoad for details of
    #   sub-attributes.
    #   @return [Types::RouteRoad]
    #
    # @!attribute [rw] roundabout_enter_step_details
    #   Details that are specific to a Roundabout Enter step.
    #   @return [Types::RouteRoundaboutEnterStepDetails]
    #
    # @!attribute [rw] roundabout_exit_step_details
    #   Details that are specific to a Roundabout Exit step.
    #   @return [Types::RouteRoundaboutExitStepDetails]
    #
    # @!attribute [rw] roundabout_pass_step_details
    #   Details that are specific to a Roundabout Pass step.
    #   @return [Types::RouteRoundaboutPassStepDetails]
    #
    # @!attribute [rw] signpost
    #   Sign post information of the action, applicable only for TurnByTurn
    #   steps. See RouteSignpost for details of sub-attributes.
    #   @return [Types::RouteSignpost]
    #
    # @!attribute [rw] turn_step_details
    #   Details that are specific to a turn step.
    #   @return [Types::RouteTurnStepDetails]
    #
    # @!attribute [rw] type
    #   Type of the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RoutePedestrianTravelStep AWS API Documentation
    #
    class RoutePedestrianTravelStep < Struct.new(
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
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details that are specific to a ramp step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteRampStepDetails AWS API Documentation
    #
    class RouteRampStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notices are additional information returned that indicate issues that
    # occurred during route calculation.
    #
    # @!attribute [rw] code
    #   Code corresponding to the issue.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   Impact corresponding to the issue. While Low impact notices can be
    #   safely ignored, High impact notices must be evaluated further to
    #   determine the impact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteResponseNotice AWS API Documentation
    #
    class RouteResponseNotice < Struct.new(
      :code,
      :impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # The road on the route.
    #
    # @!attribute [rw] road_name
    #   Name of the road (localized).
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] route_number
    #   Route number of the road.
    #   @return [Array<Types::RouteNumber>]
    #
    # @!attribute [rw] towards
    #   Names of destinations that can be reached when traveling on the
    #   road.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] type
    #   The type of road.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteRoad AWS API Documentation
    #
    class RouteRoad < Struct.new(
      :road_name,
      :route_number,
      :towards,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the roundabout leg.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteRoundaboutEnterStepDetails AWS API Documentation
    #
    class RouteRoundaboutEnterStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the roundabout step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] relative_exit
    #   Exit to be taken.
    #   @return [Integer]
    #
    # @!attribute [rw] roundabout_angle
    #   Angle of the roundabout.
    #   @return [Float]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteRoundaboutExitStepDetails AWS API Documentation
    #
    class RouteRoundaboutExitStepDetails < Struct.new(
      :intersection,
      :relative_exit,
      :roundabout_angle,
      :steering_direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteRoundaboutPassStepDetails AWS API Documentation
    #
    class RouteRoundaboutPassStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is `Scooter`
    #
    # @!attribute [rw] engine_type
    #   Engine type of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::RouteVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteScooterOptions AWS API Documentation
    #
    class RouteScooterOptions < Struct.new(
      :engine_type,
      :license_plate,
      :max_speed,
      :occupancy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure matching the provided position to a side of the
    # street.
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] use_with
    #   Strategy that defines when the side of street position should be
    #   used.
    #
    #   Default Value: `DividedStreetOnly`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteSideOfStreetOptions AWS API Documentation
    #
    class RouteSideOfStreetOptions < Struct.new(
      :position,
      :use_with)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Sign post information of the action, applicable only for TurnByTurn
    # steps. See RouteSignpost for details of sub-attributes.
    #
    # @!attribute [rw] labels
    #   Labels present on the sign post.
    #   @return [Array<Types::RouteSignpostLabel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteSignpost AWS API Documentation
    #
    class RouteSignpost < Struct.new(
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Labels presented on the sign post.
    #
    # @!attribute [rw] route_number
    #   Route number of the road.
    #   @return [Types::RouteNumber]
    #
    # @!attribute [rw] text
    #   The Signpost text.
    #   @return [Types::LocalizedString]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteSignpostLabel AWS API Documentation
    #
    class RouteSignpostLabel < Struct.new(
      :route_number,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the dynamic speed.
    #
    # **Unit**: `KilometersPerHour`
    #
    # @!attribute [rw] best_case_speed
    #   Estimated speed while traversing the span without traffic
    #   congestion.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] turn_duration
    #   Estimated time to turn from this span into the next.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] typical_speed
    #   Estimated speed while traversing the span under typical traffic
    #   congestion.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteSpanDynamicSpeedDetails AWS API Documentation
    #
    class RouteSpanDynamicSpeedDetails < Struct.new(
      :best_case_speed,
      :turn_duration,
      :typical_speed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the speed limit corresponding to the span.
    #
    # **Unit**: `KilometersPerHour`
    #
    # @!attribute [rw] max_speed
    #   Maximum speed.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] unlimited
    #   If the span doesn't have a speed limit like the Autobahn.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteSpanSpeedLimitDetails AWS API Documentation
    #
    class RouteSpanSpeedLimitDetails < Struct.new(
      :max_speed,
      :unlimited)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details for the leg including travel steps only. The
    # Distance for the travel only portion of the journey is the same as the
    # Distance within the Overview summary.
    #
    # @!attribute [rw] distance
    #   Distance of the route.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the route.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] tolls
    #   Toll summary for the complete route.
    #   @return [Types::RouteTollSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteSummary AWS API Documentation
    #
    class RouteSummary < Struct.new(
      :distance,
      :duration,
      :tolls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about toll information along a route, including the
    # payment sites, applicable toll rates, toll systems, and the country
    # associated with the toll collection.
    #
    # @!attribute [rw] country
    #   The alpha-2 or alpha-3 character code for the country.
    #   @return [String]
    #
    # @!attribute [rw] payment_sites
    #   Locations or sites where the toll fare is collected.
    #   @return [Array<Types::RouteTollPaymentSite>]
    #
    # @!attribute [rw] rates
    #   Toll rates that need to be paid to travel this leg of the route.
    #   @return [Array<Types::RouteTollRate>]
    #
    # @!attribute [rw] systems
    #   Toll systems are authorities that collect payments for the toll.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteToll AWS API Documentation
    #
    class RouteToll < Struct.new(
      :country,
      :payment_sites,
      :rates,
      :systems)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to Tolls on a route.
    #
    # @!attribute [rw] all_transponders
    #   Specifies if the user has valid transponder with access to all toll
    #   systems. This impacts toll calculation, and if true the price with
    #   transponders is used.
    #   @return [Boolean]
    #
    # @!attribute [rw] all_vignettes
    #   Specifies if the user has valid vignettes with access for all toll
    #   roads. If a user has a vignette for a toll road, then toll cost for
    #   that road is omitted since no further payment is necessary.
    #   @return [Boolean]
    #
    # @!attribute [rw] currency
    #   Currency code corresponding to the price. This is the same as
    #   Currency specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] emission_type
    #   Emission type of the vehicle for toll cost calculation.
    #
    #   **Valid values**: `Euro1, Euro2, Euro3, Euro4, Euro5, Euro6,
    #   EuroEev`
    #   @return [Types::RouteEmissionType]
    #
    # @!attribute [rw] vehicle_category
    #   Vehicle category for toll cost calculation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollOptions AWS API Documentation
    #
    class RouteTollOptions < Struct.new(
      :all_transponders,
      :all_vignettes,
      :currency,
      :emission_type,
      :vehicle_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details if the toll rate can be a pass that supports multiple trips.
    #
    # @!attribute [rw] includes_return_trip
    #   If the pass includes the rate for the return leg of the trip.
    #   @return [Boolean]
    #
    # @!attribute [rw] senior_pass
    #   If the pass is only valid for senior persons.
    #   @return [Boolean]
    #
    # @!attribute [rw] transfer_count
    #   If the toll pass can be transferred, and how many times.
    #   @return [Integer]
    #
    # @!attribute [rw] trip_count
    #   Number of trips the pass is valid for.
    #   @return [Integer]
    #
    # @!attribute [rw] validity_period
    #   Period for which the pass is valid.
    #   @return [Types::RouteTollPassValidityPeriod]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollPass AWS API Documentation
    #
    class RouteTollPass < Struct.new(
      :includes_return_trip,
      :senior_pass,
      :transfer_count,
      :trip_count,
      :validity_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # Period for which the pass is valid.
    #
    # @!attribute [rw] period
    #   Validity period.
    #   @return [String]
    #
    # @!attribute [rw] period_count
    #   Counts for the validity period.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollPassValidityPeriod AWS API Documentation
    #
    class RouteTollPassValidityPeriod < Struct.new(
      :period,
      :period_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Locations or sites where the toll fare is collected.
    #
    # @!attribute [rw] name
    #   Name of the payment site.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollPaymentSite AWS API Documentation
    #
    class RouteTollPaymentSite < Struct.new(
      :name,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # The toll price.
    #
    # @!attribute [rw] currency
    #   Currency code corresponding to the price. This is the same as
    #   Currency specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] estimate
    #   If the price is an estimate or an exact value.
    #   @return [Boolean]
    #
    # @!attribute [rw] per_duration
    #   Duration for which the price corresponds to.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] range
    #   If the price is a range or an exact value. If any of the toll fares
    #   making up the route is a range, the overall price is also a range.
    #   @return [Boolean]
    #
    # @!attribute [rw] range_value
    #   Price range with a minimum and maximum value, if a range.
    #   @return [Types::RouteTollPriceValueRange]
    #
    # @!attribute [rw] value
    #   Exact price, if not a range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollPrice AWS API Documentation
    #
    class RouteTollPrice < Struct.new(
      :currency,
      :estimate,
      :per_duration,
      :range,
      :range_value,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the route and toll price.
    #
    # @!attribute [rw] currency
    #   Currency code corresponding to the price. This is the same as
    #   Currency specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] estimate
    #   If the price is an estimate or an exact value.
    #   @return [Boolean]
    #
    # @!attribute [rw] range
    #   If the price is a range or an exact value. If any of the toll fares
    #   making up the route is a range, the overall price is also a range.
    #   @return [Boolean]
    #
    # @!attribute [rw] range_value
    #   Price range with a minimum and maximum value, if a range.
    #   @return [Types::RouteTollPriceValueRange]
    #
    # @!attribute [rw] value
    #   Exact price, if not a range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollPriceSummary AWS API Documentation
    #
    class RouteTollPriceSummary < Struct.new(
      :currency,
      :estimate,
      :range,
      :range_value,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Price range with a minimum and maximum value, if a range.
    #
    # @!attribute [rw] min
    #   Minimum price.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   Maximum price.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollPriceValueRange AWS API Documentation
    #
    class RouteTollPriceValueRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The toll rate.
    #
    # @!attribute [rw] applicable_times
    #   Time when the rate is valid.
    #   @return [String]
    #
    # @!attribute [rw] converted_price
    #   Price in the converted currency as specified in the request.
    #   @return [Types::RouteTollPrice]
    #
    # @!attribute [rw] id
    #   The Toll rate Id.
    #   @return [String]
    #
    # @!attribute [rw] local_price
    #   Price in the local regional currency.
    #   @return [Types::RouteTollPrice]
    #
    # @!attribute [rw] name
    #   The name of the toll.
    #   @return [String]
    #
    # @!attribute [rw] pass
    #   Details if the toll rate can be a pass that supports multiple trips.
    #   @return [Types::RouteTollPass]
    #
    # @!attribute [rw] payment_methods
    #   Accepted payment methods at the toll.
    #   @return [Array<String>]
    #
    # @!attribute [rw] transponders
    #   Transponders for which this toll can be applied.
    #   @return [Array<Types::RouteTransponder>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollRate AWS API Documentation
    #
    class RouteTollRate < Struct.new(
      :applicable_times,
      :converted_price,
      :id,
      :local_price,
      :name,
      :pass,
      :payment_methods,
      :transponders)
      SENSITIVE = []
      include Aws::Structure
    end

    # The toll summary for the complete route.
    #
    # @!attribute [rw] total
    #   Total toll summary for the complete route. Total is the only summary
    #   available today.
    #   @return [Types::RouteTollPriceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollSummary AWS API Documentation
    #
    class RouteTollSummary < Struct.new(
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Toll systems are authorities that collect payments for the toll.
    #
    # @!attribute [rw] name
    #   The toll system name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTollSystem AWS API Documentation
    #
    class RouteTollSystem < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Traffic options for the route.
    #
    # @!attribute [rw] flow_event_threshold_override
    #   Duration for which flow traffic is considered valid. For this
    #   period, the flow traffic is used over historical traffic data. Flow
    #   traffic refers to congestion, which changes very quickly. Duration
    #   in seconds for which flow traffic event would be considered valid.
    #   While flow traffic event is valid it will be used over the
    #   historical traffic data.
    #   @return [Integer]
    #
    # @!attribute [rw] usage
    #   Determines if traffic should be used or ignored while calculating
    #   the route.
    #
    #   Default Value: `UseTrafficData`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTrafficOptions AWS API Documentation
    #
    class RouteTrafficOptions < Struct.new(
      :flow_event_threshold_override,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trailer options corresponding to the vehicle.
    #
    # @!attribute [rw] axle_count
    #   Total number of axles of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] trailer_count
    #   Number of trailers attached to the vehicle.
    #
    #   Default Value: `0`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTrailerOptions AWS API Documentation
    #
    class RouteTrailerOptions < Struct.new(
      :axle_count,
      :trailer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Transponders for which this toll can be applied.
    #
    # @!attribute [rw] system_name
    #   Names of the toll system collecting the toll.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTransponder AWS API Documentation
    #
    class RouteTransponder < Struct.new(
      :system_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode related options for the provided travel mode.
    #
    # @!attribute [rw] car
    #   Travel mode options when the provided travel mode is "Car"
    #   @return [Types::RouteCarOptions]
    #
    # @!attribute [rw] pedestrian
    #   Travel mode options when the provided travel mode is "Pedestrian"
    #   @return [Types::RoutePedestrianOptions]
    #
    # @!attribute [rw] scooter
    #   Travel mode options when the provided travel mode is `Scooter`
    #
    #   <note markdown="1"> When travel mode is set to `Scooter`, then the avoidance option
    #   `ControlledAccessHighways` defaults to `true`.
    #
    #    </note>
    #   @return [Types::RouteScooterOptions]
    #
    # @!attribute [rw] truck
    #   Travel mode options when the provided travel mode is "Truck"
    #   @return [Types::RouteTruckOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTravelModeOptions AWS API Documentation
    #
    class RouteTravelModeOptions < Struct.new(
      :car,
      :pedestrian,
      :scooter,
      :truck)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is "Truck"
    #
    # @!attribute [rw] axle_count
    #   Total number of axles of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] engine_type
    #   Engine type of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] gross_weight
    #   Gross weight of the vehicle including trailers, and goods at
    #   capacity.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] hazardous_cargos
    #   List of Hazardous cargo contained in the vehicle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] height
    #   Height of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] height_above_first_axle
    #   Height of the vehicle above its first axle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] kpra_length
    #   Kingpin to rear axle length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] length
    #   Length of the vehicle.
    #
    #   **Unit**: `c`
    #   @return [Integer]
    #
    # @!attribute [rw] license_plate
    #   The vehicle License Plate.
    #   @return [Types::RouteVehicleLicensePlate]
    #
    # @!attribute [rw] max_speed
    #   Maximum speed
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Integer]
    #
    # @!attribute [rw] payload_capacity
    #   Payload capacity of the vehicle and trailers attached.
    #
    #   **Unit**: `kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] tire_count
    #   Number of tires on the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] trailer
    #   Trailer options corresponding to the vehicle.
    #   @return [Types::RouteTrailerOptions]
    #
    # @!attribute [rw] truck_type
    #   Type of the truck.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_restriction_code
    #   The tunnel restriction code.
    #
    #   Tunnel categories in this list indicate the restrictions which apply
    #   to certain tunnels in Great Britain. They relate to the types of
    #   dangerous goods that can be transported through them.
    #
    #   * *Tunnel Category B*
    #
    #     * *Risk Level*: Limited risk
    #
    #     * *Restrictions*: Few restrictions
    #   * *Tunnel Category C*
    #
    #     * *Risk Level*: Medium risk
    #
    #     * *Restrictions*: Some restrictions
    #   * *Tunnel Category D*
    #
    #     * *Risk Level*: High risk
    #
    #     * *Restrictions*: Many restrictions occur
    #   * *Tunnel Category E*
    #
    #     * *Risk Level*: Very high risk
    #
    #     * *Restrictions*: Restricted tunnel
    #   @return [String]
    #
    # @!attribute [rw] weight_per_axle
    #   Heaviest weight per axle irrespective of the axle type or the axle
    #   group. Meant for usage in countries where the differences in axle
    #   types or axle groups are not distinguished.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] weight_per_axle_group
    #   Specifies the total weight for the specified axle group. Meant for
    #   usage in countries that have different regulations based on the axle
    #   group type.
    #
    #   **Unit**: `Kilograms`
    #   @return [Types::WeightPerAxleGroup]
    #
    # @!attribute [rw] width
    #   Width of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTruckOptions AWS API Documentation
    #
    class RouteTruckOptions < Struct.new(
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
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the turn step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteTurnStepDetails AWS API Documentation
    #
    class RouteTurnStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details related to the U-turn step.
    #
    # @!attribute [rw] intersection
    #   Name of the intersection, if applicable to the step.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] steering_direction
    #   Steering direction for the step.
    #   @return [String]
    #
    # @!attribute [rw] turn_angle
    #   Angle of the turn.
    #   @return [Float]
    #
    # @!attribute [rw] turn_intensity
    #   Intensity of the turn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteUTurnStepDetails AWS API Documentation
    #
    class RouteUTurnStepDetails < Struct.new(
      :intersection,
      :steering_direction,
      :turn_angle,
      :turn_intensity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details corresponding to the arrival for a leg.
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RouteVehiclePlace]
    #
    # @!attribute [rw] time
    #   The time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleArrival AWS API Documentation
    #
    class RouteVehicleArrival < Struct.new(
      :place,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details corresponding to the departure for the leg.
    #
    # @!attribute [rw] place
    #   The place details.
    #   @return [Types::RouteVehiclePlace]
    #
    # @!attribute [rw] time
    #   The departure time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleDeparture AWS API Documentation
    #
    class RouteVehicleDeparture < Struct.new(
      :place,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Incidents corresponding to this leg of the route.
    #
    # @!attribute [rw] description
    #   Brief readable description of the incident.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   End timestamp of the incident.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Severity of the incident Critical - The part of the route the
    #   incident affects is unusable. Major- Major impact on the leg
    #   duration, for example stop and go Minor- Minor impact on the leg
    #   duration, for example traffic jam Low - Low on duration, for example
    #   slightly increased traffic
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Start time of the incident.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type of the incident.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleIncident AWS API Documentation
    #
    class RouteVehicleIncident < Struct.new(
      :description,
      :end_time,
      :severity,
      :start_time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Steps of a leg that correspond to the travel portion of the leg.
    #
    # @!attribute [rw] arrival
    #   Details corresponding to the arrival for the leg.
    #   @return [Types::RouteVehicleArrival]
    #
    # @!attribute [rw] departure
    #   Details corresponding to the departure for the leg.
    #   @return [Types::RouteVehicleDeparture]
    #
    # @!attribute [rw] incidents
    #   Incidents corresponding to this leg of the route.
    #   @return [Array<Types::RouteVehicleIncident>]
    #
    # @!attribute [rw] notices
    #   Notices are additional information returned that indicate issues
    #   that occurred during route calculation.
    #   @return [Array<Types::RouteVehicleNotice>]
    #
    # @!attribute [rw] pass_through_waypoints
    #   Waypoints that were passed through during the leg. This includes the
    #   waypoints that were configured with the PassThrough option.
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    #
    # @!attribute [rw] spans
    #   Spans that were computed for the requested SpanAdditionalFeatures.
    #   @return [Array<Types::RouteVehicleSpan>]
    #
    # @!attribute [rw] summary
    #   Summarized details of the leg.
    #   @return [Types::RouteVehicleSummary]
    #
    # @!attribute [rw] tolls
    #   Toll related options.
    #   @return [Array<Types::RouteToll>]
    #
    # @!attribute [rw] toll_systems
    #   Toll systems are authorities that collect payments for the toll.
    #   @return [Array<Types::RouteTollSystem>]
    #
    # @!attribute [rw] travel_steps
    #   Steps of a leg that must be performed before the travel portion of
    #   the leg.
    #   @return [Array<Types::RouteVehicleTravelStep>]
    #
    # @!attribute [rw] truck_road_types
    #   Truck road type identifiers. `BK1` through `BK4` apply only to
    #   Sweden. `A2,A4,B2,B4,C,D,ET2,ET4` apply only to Mexico.
    #
    #   <note markdown="1"> There are currently no other supported values as of 26th April 2024.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] zones
    #   Zones corresponding to this leg of the route.
    #   @return [Array<Types::RouteZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleLegDetails AWS API Documentation
    #
    class RouteVehicleLegDetails < Struct.new(
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
      :zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # License plate information of the vehicle. Currently, only the last
    # character is used where license plate based controlled access is
    # enforced.
    #
    # @!attribute [rw] last_character
    #   The last character of the License Plate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleLicensePlate AWS API Documentation
    #
    class RouteVehicleLicensePlate < Struct.new(
      :last_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notices are additional information returned that indicate issues that
    # occurred during route calculation.
    #
    # @!attribute [rw] code
    #   Code corresponding to the issue.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Additional details of the notice.
    #   @return [Array<Types::RouteVehicleNoticeDetail>]
    #
    # @!attribute [rw] impact
    #   Impact corresponding to the issue. While Low impact notices can be
    #   safely ignored, High impact notices must be evaluated further to
    #   determine the impact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleNotice AWS API Documentation
    #
    class RouteVehicleNotice < Struct.new(
      :code,
      :details,
      :impact)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional details of the notice.
    #
    # @!attribute [rw] title
    #   The notice title.
    #   @return [String]
    #
    # @!attribute [rw] violated_constraints
    #   Any violated constraints.
    #   @return [Types::RouteViolatedConstraints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleNoticeDetail AWS API Documentation
    #
    class RouteVehicleNoticeDetail < Struct.new(
      :title,
      :violated_constraints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details of the leg.
    #
    # @!attribute [rw] best_case_duration
    #   Total duration in free flowing traffic, which is the best case or
    #   shortest duration possible to cover the leg.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] typical_duration
    #   Duration of the computed span under typical traffic congestion.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleOverviewSummary AWS API Documentation
    #
    class RouteVehicleOverviewSummary < Struct.new(
      :best_case_duration,
      :distance,
      :duration,
      :typical_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Place details corresponding to the arrival or departure.
    #
    # @!attribute [rw] name
    #   The name of the place.
    #   @return [String]
    #
    # @!attribute [rw] original_position
    #   Position provided in the request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [String]
    #
    # @!attribute [rw] waypoint_index
    #   Index of the waypoint in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehiclePlace AWS API Documentation
    #
    class RouteVehiclePlace < Struct.new(
      :name,
      :original_position,
      :position,
      :side_of_street,
      :waypoint_index)
      SENSITIVE = [:original_position, :position]
      include Aws::Structure
    end

    # Span computed for the requested SpanAdditionalFeatures.
    #
    # @!attribute [rw] best_case_duration
    #   Duration of the computed span without traffic congestion.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] car_access
    #   Access attributes for a car corresponding to the span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] country
    #   3 letter Country code corresponding to the Span.
    #   @return [String]
    #
    # @!attribute [rw] distance
    #   Distance of the computed span. This feature doesn't split a span,
    #   but is always computed on a span split by other properties.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the computed span. This feature doesn't split a span,
    #   but is always computed on a span split by other properties.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] dynamic_speed
    #   Dynamic speed details corresponding to the span.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Types::RouteSpanDynamicSpeedDetails]
    #
    # @!attribute [rw] functional_classification
    #   Functional classification of the road segment corresponding to the
    #   span.
    #   @return [Integer]
    #
    # @!attribute [rw] gate
    #   Attributes corresponding to a gate. The gate is present at the end
    #   of the returned span.
    #   @return [String]
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this span.
    #   @return [Integer]
    #
    # @!attribute [rw] incidents
    #   Incidents corresponding to the span. These index into the Incidents
    #   in the parent Leg.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] names
    #   Provides an array of names of the vehicle span in available
    #   languages.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] notices
    #   Notices are additional information returned that indicate issues
    #   that occurred during route calculation.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] railway_crossing
    #   Attributes corresponding to a railway crossing. The gate is present
    #   at the end of the returned span.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   2-3 letter Region code corresponding to the Span. This is either a
    #   province or a state.
    #   @return [String]
    #
    # @!attribute [rw] road_attributes
    #   Attributes for the road segment corresponding to the span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] route_numbers
    #   Designated route name or number corresponding to the span.
    #   @return [Array<Types::RouteNumber>]
    #
    # @!attribute [rw] scooter_access
    #   Access attributes for a scooter corresponding to the span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] speed_limit
    #   Speed limit details corresponding to the span.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Types::RouteSpanSpeedLimitDetails]
    #
    # @!attribute [rw] toll_systems
    #   Toll systems are authorities that collect payments for the toll.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] truck_access
    #   Access attributes for a truck corresponding to the span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] truck_road_types
    #   Truck road type identifiers. `BK1` through `BK4` apply only to
    #   Sweden. `A2,A4,B2,B4,C,D,ET2,ET4` apply only to Mexico.
    #
    #   <note markdown="1"> There are currently no other supported values as of 26th April 2024.
    #
    #    </note>
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] typical_duration
    #   Duration of the computed span under typical traffic congestion.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] zones
    #   Zones corresponding to this leg of the route.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleSpan AWS API Documentation
    #
    class RouteVehicleSpan < Struct.new(
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
      :zones)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details of the route.
    #
    # @!attribute [rw] overview
    #   Summarized details for the leg including before travel, travel and
    #   after travel steps.
    #   @return [Types::RouteVehicleOverviewSummary]
    #
    # @!attribute [rw] travel_only
    #   Summarized details for the leg including travel steps only. The
    #   Distance for the travel only portion of the journey is in meters
    #   @return [Types::RouteVehicleTravelOnlySummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleSummary AWS API Documentation
    #
    class RouteVehicleSummary < Struct.new(
      :overview,
      :travel_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarized details of the route.
    #
    # @!attribute [rw] best_case_duration
    #   Total duration in free flowing traffic, which is the best case or
    #   shortest duration possible to cover the leg.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] typical_duration
    #   Duration of the computed span under typical traffic congestion.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleTravelOnlySummary AWS API Documentation
    #
    class RouteVehicleTravelOnlySummary < Struct.new(
      :best_case_duration,
      :duration,
      :typical_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Steps of a leg that correspond to the travel portion of the leg.
    #
    # @!attribute [rw] continue_highway_step_details
    #   Details that are specific to a Continue Highway step.
    #   @return [Types::RouteContinueHighwayStepDetails]
    #
    # @!attribute [rw] continue_step_details
    #   Details that are specific to a Continue step.
    #   @return [Types::RouteContinueStepDetails]
    #
    # @!attribute [rw] current_road
    #   Details of the current road.
    #   @return [Types::RouteRoad]
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] duration
    #   Duration of the step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] enter_highway_step_details
    #   Details that are specific to a Enter Highway step.
    #   @return [Types::RouteEnterHighwayStepDetails]
    #
    # @!attribute [rw] exit_number
    #   Exit number of the road exit, if applicable.
    #   @return [Array<Types::LocalizedString>]
    #
    # @!attribute [rw] exit_step_details
    #   Details that are specific to a Roundabout Exit step.
    #   @return [Types::RouteExitStepDetails]
    #
    # @!attribute [rw] geometry_offset
    #   Offset in the leg geometry corresponding to the start of this step.
    #   @return [Integer]
    #
    # @!attribute [rw] instruction
    #   Brief description of the step in the requested language.
    #
    #   <note markdown="1"> Only available when the TravelStepType is Default.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] keep_step_details
    #   Details that are specific to a Keep step.
    #   @return [Types::RouteKeepStepDetails]
    #
    # @!attribute [rw] next_road
    #   Details of the next road. See RouteRoad for details of
    #   sub-attributes.
    #   @return [Types::RouteRoad]
    #
    # @!attribute [rw] ramp_step_details
    #   Details that are specific to a Ramp step.
    #   @return [Types::RouteRampStepDetails]
    #
    # @!attribute [rw] roundabout_enter_step_details
    #   Details that are specific to a Roundabout Enter step.
    #   @return [Types::RouteRoundaboutEnterStepDetails]
    #
    # @!attribute [rw] roundabout_exit_step_details
    #   Details that are specific to a Roundabout Exit step.
    #   @return [Types::RouteRoundaboutExitStepDetails]
    #
    # @!attribute [rw] roundabout_pass_step_details
    #   Details that are specific to a Roundabout Pass step.
    #   @return [Types::RouteRoundaboutPassStepDetails]
    #
    # @!attribute [rw] signpost
    #   Sign post information of the action, applicable only for TurnByTurn
    #   steps. See RouteSignpost for details of sub-attributes.
    #   @return [Types::RouteSignpost]
    #
    # @!attribute [rw] turn_step_details
    #   Details that are specific to a Turn step.
    #   @return [Types::RouteTurnStepDetails]
    #
    # @!attribute [rw] type
    #   Type of the step.
    #   @return [String]
    #
    # @!attribute [rw] u_turn_step_details
    #   Details that are specific to a Turn step.
    #   @return [Types::RouteUTurnStepDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteVehicleTravelStep AWS API Documentation
    #
    class RouteVehicleTravelStep < Struct.new(
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
      :u_turn_step_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # This property contains a summary of violated constraints.
    #
    # @!attribute [rw] all_hazards_restricted
    #   This restriction applies to truck cargo, where the resulting route
    #   excludes roads on which hazardous materials are prohibited from
    #   being transported.
    #   @return [Boolean]
    #
    # @!attribute [rw] axle_count
    #   Total number of axles of the vehicle.
    #   @return [Types::RouteNoticeDetailRange]
    #
    # @!attribute [rw] hazardous_cargos
    #   List of Hazardous cargo contained in the vehicle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_height
    #   The maximum height of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] max_kpra_length
    #   The maximum Kpra length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] max_length
    #   The maximum length of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] max_payload_capacity
    #   The maximum load capacity of the vehicle.
    #
    #   **Unit**: `kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] max_weight
    #   The maximum weight of the route.
    #
    #   **Unit**: `Kilograms`
    #   @return [Types::RouteWeightConstraint]
    #
    # @!attribute [rw] max_weight_per_axle
    #   The maximum weight per axle of the vehicle.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] max_weight_per_axle_group
    #   The maximum weight per axle group of the vehicle.
    #
    #   **Unit**: `Kilograms`
    #   @return [Types::WeightPerAxleGroup]
    #
    # @!attribute [rw] max_width
    #   The maximum width of the vehicle.
    #   @return [Integer]
    #
    # @!attribute [rw] occupancy
    #   The number of occupants in the vehicle.
    #
    #   Default Value: `1`
    #   @return [Types::RouteNoticeDetailRange]
    #
    # @!attribute [rw] restricted_times
    #   Access radius restrictions based on time.
    #   @return [String]
    #
    # @!attribute [rw] time_dependent
    #   The time dependent constraint.
    #   @return [Boolean]
    #
    # @!attribute [rw] trailer_count
    #   Number of trailers attached to the vehicle.
    #
    #   Default Value: `0`
    #   @return [Types::RouteNoticeDetailRange]
    #
    # @!attribute [rw] travel_mode
    #   Travel mode corresponding to the leg.
    #   @return [Boolean]
    #
    # @!attribute [rw] truck_road_type
    #   Truck road type identifiers. `BK1` through `BK4` apply only to
    #   Sweden. `A2,A4,B2,B4,C,D,ET2,ET4` apply only to Mexico.
    #
    #   <note markdown="1"> There are currently no other supported values as of 26th April 2024.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] truck_type
    #   Type of the truck.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_restriction_code
    #   The tunnel restriction code.
    #
    #   Tunnel categories in this list indicate the restrictions which apply
    #   to certain tunnels in Great Britain. They relate to the types of
    #   dangerous goods that can be transported through them.
    #
    #   * *Tunnel Category B*
    #
    #     * *Risk Level*: Limited risk
    #
    #     * *Restrictions*: Few restrictions
    #   * *Tunnel Category C*
    #
    #     * *Risk Level*: Medium risk
    #
    #     * *Restrictions*: Some restrictions
    #   * *Tunnel Category D*
    #
    #     * *Risk Level*: High risk
    #
    #     * *Restrictions*: Many restrictions occur
    #   * *Tunnel Category E*
    #
    #     * *Risk Level*: Very high risk
    #
    #     * *Restrictions*: Restricted tunnel
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteViolatedConstraints AWS API Documentation
    #
    class RouteViolatedConstraints < Struct.new(
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
      :tunnel_restriction_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Waypoint between the Origin and Destination.
    #
    # @!attribute [rw] avoid_actions_for_distance
    #   Avoids actions for the provided distance. This is typically to
    #   consider for users in moving vehicles who may not have sufficient
    #   time to make an action at an origin or a destination.
    #   @return [Integer]
    #
    # @!attribute [rw] avoid_u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] matching
    #   Options to configure matching the provided position to the road
    #   network.
    #   @return [Types::RouteMatchingOptions]
    #
    # @!attribute [rw] pass_through
    #   If the waypoint should not be treated as a stop. If yes, the
    #   waypoint is passed through and doesn't split the route into
    #   different legs.
    #   @return [Boolean]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::RouteSideOfStreetOptions]
    #
    # @!attribute [rw] stop_duration
    #   Duration of the stop.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteWaypoint AWS API Documentation
    #
    class RouteWaypoint < Struct.new(
      :avoid_actions_for_distance,
      :avoid_u_turns,
      :heading,
      :matching,
      :pass_through,
      :position,
      :side_of_street,
      :stop_duration)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # The weight constraint for the route.
    #
    # **Unit**: `Kilograms`
    #
    # @!attribute [rw] type
    #   The type of constraint.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The constraint value.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteWeightConstraint AWS API Documentation
    #
    class RouteWeightConstraint < Struct.new(
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The zone.
    #
    # @!attribute [rw] category
    #   The zone category.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/RouteZone AWS API Documentation
    #
    class RouteZone < Struct.new(
      :category,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key
    #   Optional: The API key to be used for authorization. Either an API
    #   key or valid SigV4 signature must be provided when making a request.
    #   @return [String]
    #
    # @!attribute [rw] snapped_geometry_format
    #   Chooses what the returned SnappedGeometry format should be.
    #
    #   Default Value: `FlexiblePolyline`
    #   @return [String]
    #
    # @!attribute [rw] snap_radius
    #   The radius around the provided tracepoint that is considered for
    #   snapping.
    #
    #   **Unit**: `meters`
    #
    #   Default value: `300`
    #   @return [Integer]
    #
    # @!attribute [rw] trace_points
    #   List of trace points to be snapped onto the road network.
    #   @return [Array<Types::RoadSnapTracePoint>]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] travel_mode_options
    #   Travel mode related options for the provided travel mode.
    #   @return [Types::RoadSnapTravelModeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/SnapToRoadsRequest AWS API Documentation
    #
    class SnapToRoadsRequest < Struct.new(
      :key,
      :snapped_geometry_format,
      :snap_radius,
      :trace_points,
      :travel_mode,
      :travel_mode_options)
      SENSITIVE = [:key]
      include Aws::Structure
    end

    # @!attribute [rw] notices
    #   Notices are additional information returned that indicate issues
    #   that occurred during route calculation.
    #   @return [Array<Types::RoadSnapNotice>]
    #
    # @!attribute [rw] pricing_bucket
    #   The pricing bucket for which the query is charged at.
    #   @return [String]
    #
    # @!attribute [rw] snapped_geometry
    #   The interpolated geometry for the snapped route onto the road
    #   network.
    #   @return [Types::RoadSnapSnappedGeometry]
    #
    # @!attribute [rw] snapped_geometry_format
    #   Specifies the format of the geometry returned for each leg of the
    #   route.
    #   @return [String]
    #
    # @!attribute [rw] snapped_trace_points
    #   The trace points snapped onto the road network.
    #   @return [Array<Types::RoadSnapSnappedTracePoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/SnapToRoadsResponse AWS API Documentation
    #
    class SnapToRoadsResponse < Struct.new(
      :notices,
      :pricing_bucket,
      :snapped_geometry,
      :snapped_geometry_format,
      :snapped_trace_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message with the reason for the validation exception error.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field where the invalid entry was detected.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the Amazon
    # Location service.
    #
    # @!attribute [rw] name
    #   The name of the Validation Exception Field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access hours corresponding to when a destination can be visited.
    #
    # @!attribute [rw] from
    #   Contains the ID of the starting waypoint in this connection.
    #   @return [Types::WaypointOptimizationAccessHoursEntry]
    #
    # @!attribute [rw] to
    #   Contains the ID of the ending waypoint in this connection.
    #   @return [Types::WaypointOptimizationAccessHoursEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationAccessHours AWS API Documentation
    #
    class WaypointOptimizationAccessHours < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # Hours of entry.
    #
    # @!attribute [rw] day_of_week
    #   Day of the week.
    #   @return [String]
    #
    # @!attribute [rw] time_of_day
    #   Time of the day.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationAccessHoursEntry AWS API Documentation
    #
    class WaypointOptimizationAccessHoursEntry < Struct.new(
      :day_of_week,
      :time_of_day)
      SENSITIVE = []
      include Aws::Structure
    end

    # The area to be avoided.
    #
    # @!attribute [rw] geometry
    #   Geometry of the area to be avoided.
    #   @return [Types::WaypointOptimizationAvoidanceAreaGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationAvoidanceArea AWS API Documentation
    #
    class WaypointOptimizationAvoidanceArea < Struct.new(
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Geometry of the area to be avoided.
    #
    # @!attribute [rw] bounding_box
    #   Geometry defined as a bounding box. The first pair represents the X
    #   and Y coordinates (longitude and latitude,) of the southwest corner
    #   of the bounding box; the second pair represents the X and Y
    #   coordinates (longitude and latitude) of the northeast corner.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationAvoidanceAreaGeometry AWS API Documentation
    #
    class WaypointOptimizationAvoidanceAreaGeometry < Struct.new(
      :bounding_box)
      SENSITIVE = [:bounding_box]
      include Aws::Structure
    end

    # Specifies options for areas to avoid. This is a best-effort avoidance
    # setting, meaning the router will try to honor the avoidance
    # preferences but may still include restricted areas if no feasible
    # alternative route exists. If avoidance options are not followed, the
    # response will indicate that the avoidance criteria were violated.
    #
    # @!attribute [rw] areas
    #   Areas to be avoided.
    #   @return [Array<Types::WaypointOptimizationAvoidanceArea>]
    #
    # @!attribute [rw] car_shuttle_trains
    #   Avoidance options for cars-shuttles-trains.
    #   @return [Boolean]
    #
    # @!attribute [rw] controlled_access_highways
    #   Avoid controlled access highways while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] dirt_roads
    #   Avoid dirt roads while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] ferries
    #   Avoidance options for ferries.
    #   @return [Boolean]
    #
    # @!attribute [rw] toll_roads
    #   Avoids roads where the specified toll transponders are the only mode
    #   of payment.
    #   @return [Boolean]
    #
    # @!attribute [rw] tunnels
    #   Avoid tunnels while calculating the route.
    #   @return [Boolean]
    #
    # @!attribute [rw] u_turns
    #   Avoid U-turns for calculation on highways and motorways.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationAvoidanceOptions AWS API Documentation
    #
    class WaypointOptimizationAvoidanceOptions < Struct.new(
      :areas,
      :car_shuttle_trains,
      :controlled_access_highways,
      :dirt_roads,
      :ferries,
      :toll_roads,
      :tunnels,
      :u_turns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options for WaypointOptimizationClustering.
    #
    # @!attribute [rw] algorithm
    #   The algorithm to be used. `DrivingDistance` assigns all the
    #   waypoints that are within driving distance of each other into a
    #   single cluster. `TopologySegment` assigns all the waypoints that are
    #   within the same topology segment into a single cluster. A Topology
    #   segment is a linear stretch of road between two junctions.
    #   @return [String]
    #
    # @!attribute [rw] driving_distance_options
    #   Driving distance options to be used when the clustering algorithm is
    #   DrivingDistance.
    #   @return [Types::WaypointOptimizationDrivingDistanceOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationClusteringOptions AWS API Documentation
    #
    class WaypointOptimizationClusteringOptions < Struct.new(
      :algorithm,
      :driving_distance_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # This contains information such as distance and duration from one
    # waypoint to the next waypoint in the sequence.
    #
    # @!attribute [rw] distance
    #   Distance of the step.
    #   @return [Integer]
    #
    # @!attribute [rw] from
    #   contains the ID of the starting waypoint in this connection.
    #   @return [String]
    #
    # @!attribute [rw] rest_duration
    #   Resting time before the driver can continue driving.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   Contains the ID of the ending waypoint in this connection.
    #   @return [String]
    #
    # @!attribute [rw] travel_duration
    #   Total duration.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] wait_duration
    #   Duration of a wait step.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationConnection AWS API Documentation
    #
    class WaypointOptimizationConnection < Struct.new(
      :distance,
      :from,
      :rest_duration,
      :to,
      :travel_duration,
      :wait_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Destination related options.
    #
    # @!attribute [rw] access_hours
    #   Access hours corresponding to when a waypoint can be visited.
    #   @return [Types::WaypointOptimizationAccessHours]
    #
    # @!attribute [rw] appointment_time
    #   Appointment time at the destination.
    #   @return [String]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] id
    #   The waypoint Id.
    #   @return [String]
    #
    # @!attribute [rw] service_duration
    #   Service time spent at the destination. At an appointment, the
    #   service time should be the appointment duration.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::WaypointOptimizationSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationDestinationOptions AWS API Documentation
    #
    class WaypointOptimizationDestinationOptions < Struct.new(
      :access_hours,
      :appointment_time,
      :heading,
      :id,
      :service_duration,
      :side_of_street)
      SENSITIVE = []
      include Aws::Structure
    end

    # Driver related options.
    #
    # @!attribute [rw] rest_cycles
    #   Driver work-rest schedules defined by a short and long cycle. A rest
    #   needs to be taken after the short work duration. The short cycle can
    #   be repeated until you hit the long work duration, at which point the
    #   long rest duration should be taken before restarting.
    #   @return [Types::WaypointOptimizationRestCycles]
    #
    # @!attribute [rw] rest_profile
    #   Pre defined rest profiles for a driver schedule. The only currently
    #   supported profile is EU.
    #   @return [Types::WaypointOptimizationRestProfile]
    #
    # @!attribute [rw] treat_service_time_as
    #   If the service time provided at a waypoint/destination should be
    #   considered as rest or work. This contributes to the total time
    #   breakdown returned within the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationDriverOptions AWS API Documentation
    #
    class WaypointOptimizationDriverOptions < Struct.new(
      :rest_cycles,
      :rest_profile,
      :treat_service_time_as)
      SENSITIVE = []
      include Aws::Structure
    end

    # Driving distance related options.
    #
    # @!attribute [rw] driving_distance
    #   DrivingDistance assigns all the waypoints that are within driving
    #   distance of each other into a single cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationDrivingDistanceOptions AWS API Documentation
    #
    class WaypointOptimizationDrivingDistanceOptions < Struct.new(
      :driving_distance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies strict exclusion options for the route calculation. This
    # setting mandates that the router will avoid any routes that include
    # the specified options, rather than merely attempting to minimize them.
    #
    # @!attribute [rw] countries
    #   List of countries to be avoided defined by two-letter or
    #   three-letter country codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationExclusionOptions AWS API Documentation
    #
    class WaypointOptimizationExclusionOptions < Struct.new(
      :countries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The failed constraint.
    #
    # @!attribute [rw] constraint
    #   The failed constraint.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason for the failed constraint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationFailedConstraint AWS API Documentation
    #
    class WaypointOptimizationFailedConstraint < Struct.new(
      :constraint,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The impeding waypoint.
    #
    # @!attribute [rw] failed_constraints
    #   Failed constraints for an impeding waypoint.
    #   @return [Array<Types::WaypointOptimizationFailedConstraint>]
    #
    # @!attribute [rw] id
    #   The waypoint Id.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationImpedingWaypoint AWS API Documentation
    #
    class WaypointOptimizationImpedingWaypoint < Struct.new(
      :failed_constraints,
      :id,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # The optimized waypoint.
    #
    # @!attribute [rw] arrival_time
    #   Estimated time of arrival at the destination.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] cluster_index
    #   Index of the cluster the waypoint is associated with. The index is
    #   included in the response only if clustering was performed while
    #   processing the request.
    #   @return [Integer]
    #
    # @!attribute [rw] departure_time
    #   Estimated time of departure from thr origin.
    #
    #   Time format:`YYYY-MM-DDThh:mm:ss.sssZ |
    #   YYYY-MM-DDThh:mm:ss.sss+hh:mm`
    #
    #   Examples:
    #
    #   `2020-04-22T17:57:24Z`
    #
    #   `2020-04-22T17:57:24+02:00`
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The waypoint Id.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationOptimizedWaypoint AWS API Documentation
    #
    class WaypointOptimizationOptimizedWaypoint < Struct.new(
      :arrival_time,
      :cluster_index,
      :departure_time,
      :id,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Origin related options.
    #
    # @!attribute [rw] id
    #   The Origin Id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationOriginOptions AWS API Documentation
    #
    class WaypointOptimizationOriginOptions < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to a pedestrian.
    #
    # @!attribute [rw] speed
    #   Walking speed.
    #
    #   **Unit**: `KilometersPerHour`
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationPedestrianOptions AWS API Documentation
    #
    class WaypointOptimizationPedestrianOptions < Struct.new(
      :speed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Driver work-rest schedules defined by a short and long cycle. A rest
    # needs to be taken after the short work duration. The short cycle can
    # be repeated until you hit the long work duration, at which point the
    # long rest duration should be taken before restarting.
    #
    # **Unit**: `seconds`
    #
    # @!attribute [rw] rest_duration
    #   Resting phase of the cycle.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] work_duration
    #   Working phase of the cycle.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationRestCycleDurations AWS API Documentation
    #
    class WaypointOptimizationRestCycleDurations < Struct.new(
      :rest_duration,
      :work_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resting phase of the cycle.
    #
    # @!attribute [rw] long_cycle
    #   Long cycle for a driver work-rest schedule.
    #   @return [Types::WaypointOptimizationRestCycleDurations]
    #
    # @!attribute [rw] short_cycle
    #   Short cycle for a driver work-rest schedule
    #   @return [Types::WaypointOptimizationRestCycleDurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationRestCycles AWS API Documentation
    #
    class WaypointOptimizationRestCycles < Struct.new(
      :long_cycle,
      :short_cycle)
      SENSITIVE = []
      include Aws::Structure
    end

    # Pre defined rest profiles for a driver schedule. The only currently
    # supported profile is EU.
    #
    # @!attribute [rw] profile
    #   Pre defined rest profiles for a driver schedule. The only currently
    #   supported profile is EU.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationRestProfile AWS API Documentation
    #
    class WaypointOptimizationRestProfile < Struct.new(
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options to configure matching the provided position to a side of the
    # street.
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] use_with
    #   Strategy that defines when the side of street position should be
    #   used. AnyStreet will always use the provided position.
    #
    #   Default Value: `DividedStreetOnly`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationSideOfStreetOptions AWS API Documentation
    #
    class WaypointOptimizationSideOfStreetOptions < Struct.new(
      :position,
      :use_with)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Time breakdown for the sequence.
    #
    # @!attribute [rw] rest_duration
    #   Resting phase of the cycle.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] service_duration
    #   Service time spent at the destination. At an appointment, the
    #   service time should be the appointment duration.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] travel_duration
    #   Traveling phase of the cycle.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] wait_duration
    #   Waiting phase of the cycle.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationTimeBreakdown AWS API Documentation
    #
    class WaypointOptimizationTimeBreakdown < Struct.new(
      :rest_duration,
      :service_duration,
      :travel_duration,
      :wait_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options related to traffic.
    #
    # @!attribute [rw] usage
    #   Determines if traffic should be used or ignored while calculating
    #   the route.
    #
    #   Default Value: `UseTrafficData`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationTrafficOptions AWS API Documentation
    #
    class WaypointOptimizationTrafficOptions < Struct.new(
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trailer options corresponding to the vehicle.
    #
    # @!attribute [rw] trailer_count
    #   Number of trailers attached to the vehicle.
    #
    #   Default Value: `0`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationTrailerOptions AWS API Documentation
    #
    class WaypointOptimizationTrailerOptions < Struct.new(
      :trailer_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode related options for the provided travel mode.
    #
    # @!attribute [rw] pedestrian
    #   Travel mode options when the provided travel mode is "Pedestrian"
    #   @return [Types::WaypointOptimizationPedestrianOptions]
    #
    # @!attribute [rw] truck
    #   Travel mode options when the provided travel mode is "Truck"
    #   @return [Types::WaypointOptimizationTruckOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationTravelModeOptions AWS API Documentation
    #
    class WaypointOptimizationTravelModeOptions < Struct.new(
      :pedestrian,
      :truck)
      SENSITIVE = []
      include Aws::Structure
    end

    # Travel mode options when the provided travel mode is "Truck"
    #
    # @!attribute [rw] gross_weight
    #   Gross weight of the vehicle including trailers, and goods at
    #   capacity.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] hazardous_cargos
    #   List of Hazardous cargo contained in the vehicle.
    #   @return [Array<String>]
    #
    # @!attribute [rw] height
    #   Height of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] length
    #   Length of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @!attribute [rw] trailer
    #   Trailer options corresponding to the vehicle.
    #   @return [Types::WaypointOptimizationTrailerOptions]
    #
    # @!attribute [rw] truck_type
    #   Type of the truck.
    #   @return [String]
    #
    # @!attribute [rw] tunnel_restriction_code
    #   The tunnel restriction code.
    #
    #   Tunnel categories in this list indicate the restrictions which apply
    #   to certain tunnels in Great Britain. They relate to the types of
    #   dangerous goods that can be transported through them.
    #
    #   * *Tunnel Category B*
    #
    #     * *Risk Level*: Limited risk
    #
    #     * *Restrictions*: Few restrictions
    #   * *Tunnel Category C*
    #
    #     * *Risk Level*: Medium risk
    #
    #     * *Restrictions*: Some restrictions
    #   * *Tunnel Category D*
    #
    #     * *Risk Level*: High risk
    #
    #     * *Restrictions*: Many restrictions occur
    #   * *Tunnel Category E*
    #
    #     * *Risk Level*: Very high risk
    #
    #     * *Restrictions*: Restricted tunnel
    #   @return [String]
    #
    # @!attribute [rw] weight_per_axle
    #   Heaviest weight per axle irrespective of the axle type or the axle
    #   group. Meant for usage in countries where the differences in axle
    #   types or axle groups are not distinguished.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] width
    #   Width of the vehicle.
    #
    #   **Unit**: `centimeters`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationTruckOptions AWS API Documentation
    #
    class WaypointOptimizationTruckOptions < Struct.new(
      :gross_weight,
      :hazardous_cargos,
      :height,
      :length,
      :trailer,
      :truck_type,
      :tunnel_restriction_code,
      :weight_per_axle,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Waypoint between the Origin and Destination.
    #
    # @!attribute [rw] access_hours
    #   Access hours corresponding to when a waypoint can be visited.
    #   @return [Types::WaypointOptimizationAccessHours]
    #
    # @!attribute [rw] appointment_time
    #   Appointment time at the waypoint.
    #   @return [String]
    #
    # @!attribute [rw] before
    #   Constraint defining what waypoints are to be visited after this
    #   waypoint.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] heading
    #   GPS Heading at the position.
    #   @return [Float]
    #
    # @!attribute [rw] id
    #   The waypoint Id.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Position defined as `[longitude, latitude]`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] service_duration
    #   Service time spent at the waypoint. At an appointment, the service
    #   time should be the appointment duration.
    #
    #   **Unit**: `seconds`
    #   @return [Integer]
    #
    # @!attribute [rw] side_of_street
    #   Options to configure matching the provided position to a side of the
    #   street.
    #   @return [Types::WaypointOptimizationSideOfStreetOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WaypointOptimizationWaypoint AWS API Documentation
    #
    class WaypointOptimizationWaypoint < Struct.new(
      :access_hours,
      :appointment_time,
      :before,
      :heading,
      :id,
      :position,
      :service_duration,
      :side_of_street)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Specifies the total weight for the specified axle group. Meant for
    # usage in countries that have different regulations based on the axle
    # group type.
    #
    # **Unit**: `Kilograms`
    #
    # @!attribute [rw] single
    #   Weight for single axle group.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] tandem
    #   Weight for tandem axle group.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] triple
    #   Weight for triple axle group.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] quad
    #   Weight for quad axle group.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @!attribute [rw] quint
    #   Weight for quad quint group.
    #
    #   **Unit**: `Kilograms`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/geo-routes-2020-11-19/WeightPerAxleGroup AWS API Documentation
    #
    class WeightPerAxleGroup < Struct.new(
      :single,
      :tandem,
      :triple,
      :quad,
      :quint)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

