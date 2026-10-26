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
    #   <p>Enables special road types or features that should be considered for routing even if they might be restricted by default for the selected travel mode. These include high-occupancy vehicle and toll lanes.</p>
    #   @return [Types::IsolineAllowOptions]
    # @!attribute arrival_time
    #   <p>Determine areas from which <code>Destination</code> can be reached by this time, taking into account predicted traffic conditions and working backward to account for congestion patterns. This attribute cannot be used together with <code>DepartureTime</code> or <code>DepartNow</code>. Specified as an ISO-8601 timestamp with timezone offset.</p> <p>Time format: <code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute avoid
    #   <p>Specifies road types, features, or areas to avoid (if possible) when calculating reachable areas. These are treated as preferences rather than strict constraints—if a route cannot be calculated without using an avoided feature, that avoidance preference may be ignored.</p>
    #   @return [Types::IsolineAvoidanceOptions]
    # @!attribute depart_now
    #   <p>When true, uses the current time as the departure time and takes current traffic conditions into account. This attribute cannot be used together with <code>DepartureTime</code> or <code>ArrivalTime</code>.</p>
    #   @return [Boolean]
    # @!attribute departure_time
    #   <p>Determine areas that can be reached when departing at this time, taking into account predicted traffic conditions. This attribute cannot be used together with <code>ArrivalTime</code> or <code>DepartNow</code>. Specified as an ISO-8601 timestamp with timezone offset.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destination
    #   <p>An optional destination point, specified as <code>[longitude, latitude]</code> coordinates. When provided, the service calculates areas from which this destination can be reached within the specified thresholds. This reverses the usual isoline calculation to show areas that could reach your location, rather than areas you could reach from your location. Either <code>Origin</code> or <code>Destination</code> must be provided.</p>
    #   @return [Array<Float>]
    # @!attribute destination_options
    #   <p>Options that control how the destination point is matched to the road network and how routes can approach it. These options help improve travel time accuracy by accounting for real-world access to the destination.</p>
    #   @return [Types::IsolineDestinationOptions]
    # @!attribute isoline_geometry_format
    #   <p>The format of the returned IsolineGeometry. </p> <p>Default value:<code>FlexiblePolyline</code> </p>
    #   @return [String]
    # @!attribute isoline_granularity
    #   <p>Controls the detail level of the generated isolines. Higher granularity produces smoother shapes but requires more processing time and results in larger responses.</p>
    #   @return [Types::IsolineGranularityOptions]
    # @!attribute key
    #   <p>An Amazon Location Service API Key with access to this action. If omitted, the request must be signed using Signature Version 4.</p>
    #   @return [String]
    # @!attribute optimize_isoline_for
    #   <p>Controls the trade-off between calculation speed and isoline precision. Choose <code> FastCalculation</code> for quicker results with less detail, <code>AccurateCalculation</code> for more precise results, or <code>BalancedCalculation</code> for a middle ground.</p> <p>Default value: <code>BalancedCalculation</code> </p>
    #   @return [String]
    # @!attribute optimize_routing_for
    #   <p>Determines whether routes prioritize shortest travel time (<code>FastestRoute</code>) or shortest physical distance (<code>ShortestRoute</code>) when calculating reachable areas.</p> <p>Default value: <code>FastestRoute</code> </p>
    #   @return [String]
    # @!attribute origin
    #   <p>The starting point for isoline calculations, specified as <code>[longitude, latitude]</code> coordinates. For example, this could be a store location, service center, or any point from which you want to calculate reachable areas. Either <code>Origin</code> or <code>Destination</code> must be provided.</p>
    #   @return [Array<Float>]
    # @!attribute origin_options
    #   <p>Options that control how the origin point is matched to the road network and how routes can depart from it. These options help improve travel time accuracy by accounting for real-world access from the origin.</p>
    #   @return [Types::IsolineOriginOptions]
    # @!attribute thresholds
    #   <p>The distance or time thresholds used to determine reachable areas. You can specify up to five thresholds (which all must be the same type) to calculate multiple isolines in a single request. For example, to determine the areas that are reachable within 10 and 20 minutes of the origin, specify time thresholds of 600 and 1200 seconds.</p> <p>You incur a calculation charge for each threshold. Using a large number of thresholds in a request can lead to unexpected charges. For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html">Routes pricing</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    #   @return [Types::IsolineThresholds]
    # @!attribute traffic
    #   <p>Configures how real-time and historical traffic data affects isoline calculations. Traffic patterns can significantly impact reachable areas, especially during peak hours.</p>
    #   @return [Types::IsolineTrafficOptions]
    # @!attribute travel_mode
    #   <p>The mode of transportation to use for calculations. This affects which road types or features can be used, estimated speed, and the traffic levels that are applied.</p> <ul> <li> <p> <code>Car</code>—Standard passenger vehicle routing using roads accessible to cars</p> </li> <li> <p> <code>Pedestrian</code>—Walking routes using pedestrian paths, sidewalks, and crossings</p> </li> <li> <p> <code>Scooter</code>—Light two-wheeled vehicle routing using roads and paths accessible to scooters</p> </li> <li> <p> <code>Truck</code>—Commercial truck routing considering vehicle dimensions, weight restrictions, and hazardous material regulations</p> </li> </ul> <note> <p>The mode <code>Scooter</code> also applies to motorcycles; set this to <code>Scooter</code> when calculating isolines for motorcycles.</p> </note> <p>Default value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Additional attributes that refine how reachable areas are calculated based on specific vehicle characteristics. These options help produce more accurate results by accounting for real-world constraints and capabilities.</p> <p>For example:</p> <ul> <li> <p>For trucks (<code>Truck</code>), specify dimensions, weight limits, and hazardous cargo restrictions to ensure isolines only include roads that can physically and legally accommodate the vehicle</p> </li> <li> <p>For cars (<code>Car</code>), set maximum speed capabilities or indicate high-occupancy vehicle eligibility to better estimate reachable areas</p> </li> <li> <p>For scooters (<code>Scooter</code>), specify engine type and speed limitations to more accurately model their travel capabilities</p> </li> </ul> <p>Without these options, calculations use default assumptions that may not match your specific use case.</p>
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
    #   <p>Time of arrival at the destination, used for traffic calculations. This attribute is returned only if the <code>Destination</code> and <code>ArrivalTime</code> attributes were provided in the request.</p> <p>Time format: <code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute departure_time
    #   <p>Time of departure from the origin, used for traffic calculations. This attribute is returned when <code>Origin</code> was provided in the request and either a specific departure time was requested (<code>DepartureTime</code>) or <code>DepartNow</code> was set to true.</p> <p>Time format: <code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute isoline_geometry_format
    #   <p>The format of the returned geometries, matching the format specified in the request. Either <code> FlexiblePolyline</code> for compact encoding or <code>Simple</code> for GeoJSON-compatible coordinates.</p> <p>Default value:<code>FlexiblePolyline</code> </p>
    #   @return [String]
    # @!attribute isolines
    #   <p>Reachable areas, or isolines, for each threshold specified in the request.</p>
    #   @return [Array<Types::Isoline>]
    # @!attribute pricing_bucket
    #   <p>The pricing bucket applied to this calculation. Different buckets apply based on the travel mode and thresholds used.</p>
    #   @return [String]
    # @!attribute snapped_destination
    #   <p>The actual point on the road network used for calculations, which may differ from the requested destination if <code>Destination</code> was not directly on a road.</p>
    #   @return [Array<Float>]
    # @!attribute snapped_origin
    #   <p>The actual point on the road network used for calculations, which may differ from the requested origin if <code>Origin</code> was not directly on a road.</p>
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
    #   <p> Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>TollRoads</code>, <code>Ferries</code>, and <code>ControlledAccessHighways</code>. </p>
    #   @return [Types::RouteMatrixAvoidanceOptions]
    # @!attribute depart_now
    #   <p>Uses the current time as the time of departure.</p>
    #   @return [Boolean]
    # @!attribute departure_time
    #   <p>Time of departure from the origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destinations
    #   <p>List of destinations for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <note> <p>Route calculations are billed for each origin and destination pair. If you use a large matrix of origins and destinations, your costs will increase accordingly. For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html">Routes pricing</a> in the <i>Amazon Location Service Developer Guide</i>.</p> </note> <p>The maximum number of destinations depends on the routing boundary configuration:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code> set: maximum 500 destinations</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code> set to <code>true</code>: maximum 100 destinations</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: maximum 350 destinations</p> </li> </ul> <p>The total matrix size (origins × destinations) must not exceed:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code>: 160,000</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code>: 100</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: 122,500</p> </li> </ul>
    #   @return [Array<Types::RouteMatrixDestination>]
    # @!attribute exclude
    #   <p> Features to be strictly excluded while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteMatrixExclusionOptions]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute optimize_routing_for
    #   <p>Controls the trade-off between finding the shortest travel time (<code>FastestRoute</code>) and the shortest distance (<code>ShortestRoute</code>) when calculating reachable areas.</p> <p>Default value: <code>FastestRoute</code> </p>
    #   @return [String]
    # @!attribute origins
    #   <p>List of origins for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <note> <p>Route calculations are billed for each origin and destination pair. Using a large amount of Origins in a request can lead you to incur unexpected charges. For more information, see <a href="https://docs.aws.amazon.com/location/latest/developerguide/routes-pricing.html">Routes pricing</a> in the <i>Amazon Location Service Developer Guide</i>.</p> </note> <p>The maximum number of origins depends on the routing boundary configuration:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code> set: maximum 500 origins</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code> set to <code>true</code>: maximum 15 origins</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: maximum 350 origins</p> </li> </ul> <p>The total matrix size (origins × destinations) must not exceed:</p> <ul> <li> <p>With <code>RoutingBoundary.Geometry</code>: 160,000</p> </li> <li> <p>With <code>RoutingBoundary.Unbounded</code>: 100</p> </li> <li> <p>For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers in <code>ap-southeast-1</code> and <code>ap-southeast-5</code>: 122,500</p> </li> </ul>
    #   @return [Array<Types::RouteMatrixOrigin>]
    # @!attribute routing_boundary
    #   <p> Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Unbounded</code> set to <code>true</code>. </p> <p>Default value: <code>Unbounded set to true</code> </p> <note> <p>When <code>AutoCircle</code> is set in the request, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p> </note>
    #   @return [Types::RouteMatrixBoundary]
    # @!attribute traffic
    #   <p> Traffic related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteMatrixTrafficOptions]
    # @!attribute travel_mode
    #   <p> Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Car</code>, <code>Pedestrian</code>, and <code>Scooter</code>. </p> <p>Default value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p> Travel mode related options for the provided travel mode. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
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
    #   <p>Boundary within which the matrix is to be calculated. All data, origins and destinations outside the boundary are considered invalid.</p> <note> <p>When <code>AutoCircle</code> is set in the request, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p> </note>
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
    #   <p> Features that are allowed while calculating a route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteAllowOptions]
    # @!attribute arrival_time
    #   <p> Time of arrival at the destination. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute avoid
    #   <p> Features that are avoided while calculating a route. Avoidance is on a best-case basis. If an avoidance can't be satisfied for a particular case, it violates the avoidance and the returned response produces a notice for the violation. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>ControlledAccessHighways</code>, <code>Ferries</code>, and <code>TollRoads</code> </p>
    #   @return [Types::RouteAvoidanceOptions]
    # @!attribute depart_now
    #   <p>Uses the current time as the time of departure.</p>
    #   @return [Boolean]
    # @!attribute departure_time
    #   <p>Time of departure from the origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute destination
    #   <p>The final position for the route. In the World Geodetic System (WGS 84) format: <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute destination_options
    #   <p> Destination related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteDestinationOptions]
    # @!attribute driver
    #   <p> Driver related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteDriverOptions]
    # @!attribute exclude
    #   <p> Features to be strictly excluded while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteExclusionOptions]
    # @!attribute instructions_measurement_system
    #   <p>Measurement system to be used for instructions within steps in the response.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Optional: The API key to be used for authorization. Either an API key or valid SigV4 signature must be provided when making a request. </p>
    #   @return [String]
    # @!attribute languages
    #   <p> List of languages for instructions within steps in the response. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>Instructions in the requested language are returned only if they are available.</p> </note>
    #   @return [Array<String>]
    # @!attribute leg_additional_features
    #   <p> A list of optional additional parameters such as timezone that can be requested for each result. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>PassThroughWaypoints</code>, <code>Summary</code>, and <code>TravelStepInstructions</code> </p> <ul> <li> <p> <code>Elevation</code>: Retrieves the elevation information for each location.</p> </li> <li> <p> <code>Incidents</code>: Provides information on traffic incidents along the route.</p> </li> <li> <p> <code>PassThroughWaypoints</code>: Indicates waypoints that are passed through without stopping.</p> </li> <li> <p> <code>Summary</code>: Returns a summary of the route, including distance and duration.</p> </li> <li> <p> <code>Tolls</code>: Supplies toll cost information along the route.</p> </li> <li> <p> <code>TravelStepInstructions</code>: Provides step-by-step instructions for travel along the route.</p> </li> <li> <p> <code>TruckRoadTypes</code>: Returns information about road types suitable for trucks.</p> </li> <li> <p> <code>TypicalDuration</code>: Gives typical travel duration based on historical data.</p> </li> <li> <p> <code>Zones</code>: Specifies the time zone information for each waypoint.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute leg_geometry_format
    #   <p>Specifies the format of the geometry returned for each leg of the route. You can choose between two different geometry encoding formats.</p> <p> <code>FlexiblePolyline</code>: A compact and precise encoding format for the leg geometry. For more information on the format, see the GitHub repository for <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p> <p> <code>Simple</code>: A less compact encoding, which is easier to decode but may be less precise and result in larger payloads.</p>
    #   @return [String]
    # @!attribute max_alternatives
    #   <p>Maximum number of alternative routes to be provided in the response, if available. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only up to 3 alternative routes. </p>
    #   @return [Integer]
    # @!attribute optimize_routing_for
    #   <p>Controls the trade-off between achieving the shortest travel time (<code>FastestRoute</code>) and achieving the shortest physical distance ((<code>ShortestRoute</code>) when calculating each route in the matrix.</p> <p>Default value: <code>FastestRoute</code> </p>
    #   @return [String]
    # @!attribute origin
    #   <p>The start position for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute origin_options
    #   <p> Specifies how the origin point should be matched to the road network and any routing constraints that apply when the traveler is departing the origin. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteOriginOptions]
    # @!attribute span_additional_features
    #   <p> A list of optional features such as <code>SpeedLimit</code> that can be requested for a Span. A span is a section of a Leg for which the requested features have the same values. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<String>]
    # @!attribute tolls
    #   <p> Toll related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteTollOptions]
    # @!attribute traffic
    #   <p> Traffic related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteTrafficOptions]
    # @!attribute travel_mode
    #   <p> Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Car</code>, <code>Pedestrian</code>, and <code>Scooter</code> values. </p> <p>Default value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p> Travel mode related options for the provided travel mode. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>Car</code> and <code>Pedestrian</code> travel mode options. </p>
    #   @return [Types::RouteTravelModeOptions]
    # @!attribute travel_step_type
    #   <p>Type of step returned by the response. <code>Default</code> provides basic steps intended for web based applications. <code>TurnByTurn</code> provides detailed instructions with more granularity intended for a turn based navigation system. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions <code>Default</code> does not return any steps. </p>
    #   @return [String]
    # @!attribute waypoints
    #   <p> List of waypoints between the Origin and Destination. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions max length is <code>100</code>. </p> <p>Max length: <code>23</code> </p>
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
    #   <p> Notices are additional information returned that indicate issues that occurred during route calculation. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
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

    # <p>Geometry defined as a circle. The circle defines the routing boundary area. Any waypoints outside the circle will result in a route matrix entry error.</p> <p>You can specify a <code>Circle</code> directly in the request, or it will be auto-derived when <code>AutoCircle</code> is used. When <code>AutoCircle</code> is set in the request, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute center
    #   <p>Center of the Circle in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <p>Example: <code>[-123.1174, 49.2847]</code> represents the position with longitude <code>-123.1174</code> and latitude <code>49.2847</code>. </p>
    #   @return [Array<Float>]
    # @!attribute radius
    #   <p>Radius of the Circle.</p> <p> <b>Unit</b>: <code>meters</code> </p> <p>Valid Range: Minimum value of 0. Maximum value of 200000.</p>
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

    # <p>Represents a single reachable area calculated for a specific threshold.</p>
    # @!attribute connections
    #   <p>Lines connecting separate parts of the reachable area that can be reached within the same threshold. These occur when areas are reachable but not contiguous, such as when separated by water or unroutable areas. When present, these lines represent actual transportation network segments (such as ferry routes or bridges) that connect the separated areas.</p>
    #   @return [Array<Types::IsolineConnection>]
    # @!attribute distance_threshold
    #   <p>The travel distance in meters used to calculate this isoline, if distance-based thresholds were specified in the request.</p>
    #   @return [Integer]
    # @!attribute geometries
    #   <p>The shapes that define the reachable area, provided in the requested geometry format.</p>
    #   @return [Array<Types::IsolineShapeGeometry>]
    # @!attribute time_threshold
    #   <p>The travel time in seconds used to calculate this isoline, if time-based thresholds were specified in the request.</p>
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

    # <p>Special road types or features that should be considered available for routing. For example, this attribute can be used to allow the use of HOV (high-occupancy vehicle) or HOT (high-occupancy toll) lanes, even if they would otherwise not be.</p>
    # @!attribute hot
    #   <p>When true, allows the use of HOT (high-occupancy toll) lanes, which may affect travel times and reachable areas.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    # @!attribute hov
    #   <p>When true, allows the use of HOV (high-occupancy vehicle) lanes, which may affect travel times and reachable areas.</p> <p>Default value: <code>false</code> </p>
    #   @return [Boolean]
    class IsolineAllowOptions < Struct.new(
      nil,
      :hot,
      :hov,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an area to avoid when calculating routes. Consists of a primary geometry to avoid, with the ability to specify exception areas within that geometry where travel is permitted.</p>
    # @!attribute except
    #   <p>Areas within the primary avoidance geometry where travel is allowed. For example, you might want to avoid a neighborhood but allow travel on a major road that passes through it.</p>
    #   @return [Array<Types::IsolineAvoidanceAreaGeometry>]
    # @!attribute geometry
    #   <p>The primary area to avoid, specified using a bounding box, corridor, polygon, or polyline corridor.</p>
    #   @return [Types::IsolineAvoidanceAreaGeometry]
    class IsolineAvoidanceArea < Struct.new(
      nil,
      :except,
      :geometry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an area to avoid during calculations using one of several supported geometry types. The service will prefer routes that avoid these areas when possible.</p>
    # @!attribute bounding_box
    #   <p>A rectangular area defined by its southwest and northeast corners: <code>[min longitude, min latitude, max longitude, max latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute corridor
    #   <p>A buffer zone around a line, defined by a series of coordinates and a radius in meters.</p>
    #   @return [Types::Corridor]
    # @!attribute polygon
    #   <p>A polygon defined by a list of coordinate rings. The first ring defines the outer boundary; subsequent rings will be ignored.</p>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute polyline_corridor
    #   <p>A buffer zone around a compressed polyline, defined by an encoded polyline string and a radius in meters. For more information on polyline encoding, see <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p>
    #   @return [Types::PolylineCorridor]
    # @!attribute polyline_polygon
    #   <p>A polygon defined by encoded polyline strings. The first string defines the outer boundary; subsequent strings will be ignored. For more information on polyline encoding, see <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p>
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

    # <p>Specifies features of the road network to avoid when calculating reachable areas. These preferences guide route calculations but may be overridden when no reasonable alternative exists. For example, if avoiding toll roads would make an area unreachable, toll roads may still be used.</p> <p>Avoidance options include physical features (like ferries and tunnels), road characteristics (like dirt roads and highways), and regulated areas (like congestion zones). They can be combined to match specific routing needs, such as avoiding both toll roads and ferries.</p>
    # @!attribute areas
    #   <p>Specifies geographic areas to avoid where possible. Routes may still pass through these areas if no reasonable alternative exists.</p>
    #   @return [Array<Types::IsolineAvoidanceArea>]
    # @!attribute car_shuttle_trains
    #   <p>Indicates a preference to avoid car shuttle trains (auto trains) where possible. These may still be included if no reasonable alternative route exists.</p>
    #   @return [Boolean]
    # @!attribute controlled_access_highways
    #   <p>Indicates a preference to avoid controlled-access highways (such as interstate highways or motorways) where possible. If a viable route cannot be calculated using only local roads, controlled-access highways may still be included.</p>
    #   @return [Boolean]
    # @!attribute dirt_roads
    #   <p>Indicates a preference to avoid unpaved or dirt roads where possible. Routes may still include dirt roads if no reasonable paved alternative exists.</p>
    #   @return [Boolean]
    # @!attribute ferries
    #   <p>Indicates a preference to avoid ferries where possible. If a viable route cannot be calculated without using ferries, they may still be included.</p>
    #   @return [Boolean]
    # @!attribute seasonal_closure
    #   <p>Indicates a preference to avoid roads that may be subject to seasonal closures where possible. These roads may still be included if no reasonable year-round alternative exists.</p>
    #   @return [Boolean]
    # @!attribute toll_roads
    #   <p>Indicates a preference to avoid toll roads where possible. If a viable route cannot be calculated without using toll roads, they may still be included.</p>
    #   @return [Boolean]
    # @!attribute toll_transponders
    #   <p>Indicates a preference to avoid roads that require electronic toll collection transponders where possible. These roads may still be included if no viable alternative route exists.</p>
    #   @return [Boolean]
    # @!attribute truck_road_types
    #   <p>For truck travel modes, indicates specific road classification types in Sweden (<code> BK1</code> through <code>BK4</code>) and Mexico (<code>A2, A4, B2, B4, C, D, ET2, ET4</code>) to avoid where possible. These road types may still be used if no reasonable alternative exists.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute tunnels
    #   <p>Indicates a preference to avoid tunnels where possible. If a viable route cannot be calculated without using tunnels, they may still be included.</p>
    #   @return [Boolean]
    # @!attribute u_turns
    #   <p>Indicates a preference to avoid U-turns where possible. U-turns may still be included if necessary to reach certain areas or when no reasonable alternative exists.</p>
    #   @return [Boolean]
    # @!attribute zone_categories
    #   <p>Indicates types of regulated zones (such as congestion pricing or environmental zones) to avoid where possible. Routes may still pass through these zones if no reasonable alternative exists.</p>
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

    # <p>Types of regulated zones that may affect routing.</p>
    # @!attribute category
    #   <p>The type of regulated zone: <code>CongestionPricing</code> for toll zones based on traffic levels, <code>Environmental</code> for low-emission zones, or <code>Vignette</code> for areas requiring special permits or stickers.</p>
    #   @return [String]
    class IsolineAvoidanceZoneCategory < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Vehicle characteristics and preferences that affect routing for passenger cars. This includes vehicle type, occupancy, and speed restrictions that may influence which roads can be used and expected travel times.</p>
    # @!attribute engine_type
    #   <p>The type of engine powering the vehicle, which may affect route calculation due to road restrictions or vehicle characteristics.</p> <ul> <li> <p> <code>INTERNAL_COMBUSTION</code>—Standard gasoline or diesel engine.</p> </li> <li> <p> <code>ELECTRIC</code>—Battery electric vehicle.</p> </li> <li> <p> <code>PLUGIN_HYBRID</code>—Combination of electric and internal combustion engines with plug-in charging capability.</p> </li> </ul>
    #   @return [String]
    # @!attribute license_plate
    #   <p>License plate information used in regions where road access or routing restrictions are based on license plate numbers.</p>
    #   @return [Types::IsolineVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>The maximum speed of the vehicle in kilometers per hour. When specified, routes will not include roads with higher speed limits. Valid values range from 3.6 km/h (1 m/s) to 252 km/h (70 m/s).</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle. This can affect route calculations by enabling the use of high-occupancy vehicle (HOV) lanes where minimum occupancy requirements are met.</p> <p>Default value: <code>1</code> </p>
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
        super
      end
    end

    # <p>Represents a segment of the transportation network that connects separate parts of a reachable area. These connections show how discontinuous areas are linked, such as by ferry routes or bridges crossing unroutable terrain.</p>
    # @!attribute from_polygon_index
    #   <p>The index of the starting polygon in the isoline's <code>Geometries</code> list.</p>
    #   @return [Integer]
    # @!attribute geometry
    #   <p>The shape of the connection, representing the actual path through the transportation network that links the polygons.</p>
    #   @return [Types::IsolineConnectionGeometry]
    # @!attribute to_polygon_index
    #   <p>The index of the ending polygon in the isoline's <code>Geometries</code> list.</p>
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

    # <p>Represents the geometry of connections between non-contiguous parts of an isoline. These connections can be provided in either coordinate pairs (LineString) or encoded (Polyline) format, matching the format specified in the request.</p>
    # @!attribute line_string
    #   <p>A series of <code>[longitude, latitude]</code> coordinate pairs defining the connection path when <code>Simple</code> geometry format is requested. These coordinates can be directly used as the coordinates array in a GeoJSON LineString without transformation.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [Array<Array<Float>>]
    # @!attribute polyline
    #   <p>An encoded representation of the connection path when <code>FlexiblePolyline</code> geometry format is requested. This provides a more compact representation suitable for transmission and storage. To convert to GeoJSON, first decode to obtain coordinate pairs, then use those coordinates as the coordinates array in a GeoJSON LineString.</p> <note> <p>LineString and Polyline are mutually exclusive properties.</p> </note>
    #   @return [String]
    class IsolineConnectionGeometry < Struct.new(
      nil,
      :line_string,
      :polyline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options that control how the destination point is interpreted and matched to the road network when calculating reachable areas. This affects which roads are considered accessible near the destination and how the final approach is calculated.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>The distance in meters from the destination point within which certain routing actions (such as U-turns or left turns across traffic) are restricted. This helps generate more practical routes by avoiding potentially dangerous maneuvers near the endpoint.</p>
    #   @return [Integer]
    # @!attribute heading
    #   <p>The initial direction of travel in degrees (0-360, where 0 is north). This can affect which road segments are considered accessible from the starting point.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Controls how the destination point is matched to the road network, including search radius and name-based matching preferences.</p>
    #   @return [Types::IsolineMatchingOptions]
    # @!attribute side_of_street
    #   <p>Specifies which side of the street should be considered accessible, which is important when building entrances or parking access points are only reachable from one side of the road.</p>
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

    # <p>Controls the detail level and smoothness of generated isolines. More detailed isolines provide better visual representation of reachable areas but require more processing time and result in larger responses.</p>
    # @!attribute max_points
    #   <p>The maximum number of points used to define each isoline. Higher values create smoother, more detailed shapes.</p>
    #   @return [Integer]
    # @!attribute max_resolution
    #   <p>The maximum distance in meters between points along the isoline. Smaller values create more detailed shapes.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    class IsolineGranularityOptions < Struct.new(
      nil,
      :max_points,
      :max_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_resolution] = 0 unless options.key?(:max_resolution)
        super
      end
    end

    # <p>Controls how origin and destination points are matched to the road network when they don't fall exactly on a road. Matching options help ensure realistic routing by connecting points to appropriate roads.</p>
    # @!attribute name_hint
    #   <p>The expected street name near the point. Helps disambiguate matching when multiple roads are within range.</p>
    #   @return [String]
    # @!attribute on_road_threshold
    #   <p>The maximum distance in meters that a point can be from a road while still being considered "on" that road. Points further than this distance require explicit matching.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute radius
    #   <p>The maximum distance in meters to search for roads to match to. Points with no roads within this radius will fail to match. The roads that are considered within this radius are determined by the specified <code>Strategy</code> </p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute strategy
    #   <p>Determines how points are matched to the road network. <code>MatchAny</code> finds the nearest viable road segment, while <code>MatchMostSignificantRoad</code> prioritizes major roads.</p>
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

    # <p>Options that control how the origin point is interpreted when calculating reachable areas. These options affect which roads are considered accessible from the starting point and how initial routing decisions are made.</p>
    # @!attribute avoid_actions_for_distance
    #   <p>The distance in meters from the origin point within which certain routing actions (such as U-turns or left turns across traffic) are restricted. This helps generate more practical routes by avoiding potentially dangerous maneuvers near the starting point.</p>
    #   @return [Integer]
    # @!attribute heading
    #   <p>Initial direction of travel in degrees (0-360, where 0 is north). This affects which road segments are considered accessible from the starting point and is particularly useful when the origin is on a divided road or at a complex intersection.</p>
    #   @return [Float]
    # @!attribute matching
    #   <p>Controls how the origin point is matched to the road network, including search radius and matching strategy.</p>
    #   @return [Types::IsolineMatchingOptions]
    # @!attribute side_of_street
    #   <p>Controls which side of the street is considered accessible from the origin point, particularly important for divided roads where building entrances or parking access may only be available from one direction.</p>
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

    # <p>Vehicle characteristics that affect which roads and paths can be used when calculating reachable areas for scooters. This includes areas such as bike lanes, shared paths, and roads where scooters are permitted.</p>
    # @!attribute engine_type
    #   <p>The type of engine powering the vehicle, which may affect route calculation due to road restrictions or vehicle characteristics.</p> <ul> <li> <p> <code>INTERNAL_COMBUSTION</code>—Standard gasoline or diesel engine.</p> </li> <li> <p> <code>ELECTRIC</code>—Battery electric vehicle.</p> </li> <li> <p> <code>PLUGIN_HYBRID</code>—Combination of electric and internal combustion engines with plug-in charging capability.</p> </li> </ul>
    #   @return [String]
    # @!attribute license_plate
    #   <p>License plate information used in regions where road access or routing restrictions are based on license plate numbers.</p>
    #   @return [Types::IsolineVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>The maximum speed of the vehicle in kilometers per hour. When specified, routes will not include roads with higher speed limits. Valid values range from 3.6 km/h (1 m/s) to 252 km/h (70 m/s).</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle. This can affect route calculations by enabling the use of high-occupancy vehicle (HOV) lanes where minimum occupancy requirements are met.</p> <p>Default value: <code>1</code> </p>
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
        super
      end
    end

    # <p>Represents the shape of a reachable area. The geometry can be provided either as coordinate pairs (<code>Polygon</code>) or in encoded format (<code>PolylinePolygon</code>), matching the format specified in the request.</p>
    # @!attribute polygon
    #   <p>A series of coordinate rings defining the reachable area when Simple geometry format is requested. Each ring is a list of <code>[longitude, latitude]</code> coordinate pairs. The first ring defines the outer boundary; subsequent rings define holes representing unreachable areas.</p> <note> <p>Polygon and PolylinePolygon are mutually exclusive properties.</p> </note>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute polyline_polygon
    #   <p>An encoded representation of the reachable area when FlexiblePolyline geometry format is requested. Provides a compact representation suitable for transmission and storage. The first string defines the outer boundary; subsequent strings define holes representing unreachable areas. For more information on polyline encoding, see <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p> <note> <p>Polygon and PolylinePolygon are mutually exclusive properties.</p> </note>
    #   @return [Array<String>]
    class IsolineShapeGeometry < Struct.new(
      nil,
      :polygon,
      :polyline_polygon,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls how points are matched to specific sides of streets. This is important when the side of the street matters for accessibility - for example, when building entrances or parking lot access points can only be reached from one side of a divided road.</p>
    # @!attribute position
    #   <p>The <code>[longitude, latitude]</code> coordinates of the point that should be matched to a specific side of the street.</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Controls whether side-of-street matching is applied to any street (<code>AnyStreet</code>) or only to divided roads (<code>DividedStreetOnly</code>). This is important when the exact side of the street matters - for example, if a building entrance is only accessible from one side of a divided highway, or if a parking lot can only be entered from northbound lanes. Without correct side-of-street matching, travel time estimates may be inaccurate because they don't account for necessary U-turns or detours to reach the correct side.</p> <p>Default value: <code>DividedStreetOnly</code> </p>
    #   @return [String]
    class IsolineSideOfStreetOptions < Struct.new(
      nil,
      :position,
      :use_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the time or distance limits used to calculate reachable areas. You can provide up to five thresholds for a single type to generate multiple isolines in a single request. For example, you might request areas reachable within 5, 10, and 15 minutes, or within 1, 2, and 5 kilometers.</p>
    # @!attribute distance
    #   <p>List of travel distances in meters. For example, [1000, 2000, 5000] would calculate areas reachable within 1, 2, and 5 kilometers.</p>
    #   @return [Array<Integer>]
    # @!attribute time
    #   <p>List of travel times in seconds. For example, [300, 600, 900] would calculate areas reachable within 5, 10, and 15 minutes.</p>
    #   @return [Array<Integer>]
    class IsolineThresholds < Struct.new(
      nil,
      :distance,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls how real-time and historical traffic data is used when calculating reachable areas. This affects both the size and shape of isolines by accounting for expected travel speeds based on congestion patterns.</p>
    # @!attribute flow_event_threshold_override
    #   <p>The duration in seconds that real-time congestion data is considered valid before reverting to historical traffic patterns. This helps balance between using current conditions and more predictable historical data when calculating travel times.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute usage
    #   <p>Controls whether traffic data is used in calculations. <code>UseTrafficData</code> considers both real-time congestion and historical patterns, while <code>IgnoreTrafficData</code> calculates routes based solely on road types and speed limits. Using traffic data provides more accurate real-world estimates but may produce different results at different times of day.</p> <p>Default value: <code>UseTrafficData</code> </p>
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

    # <p>Additional specifications when the vehicle includes one or more trailers.</p>
    # @!attribute axle_count
    #   <p>The total number of axles across all trailers. Used for weight distribution calculations and road restrictions.</p>
    #   @return [Integer]
    # @!attribute trailer_count
    #   <p>The number of trailers being pulled. Affects which roads can be used based on local regulations.</p> <p>Default value: <code>0</code> </p>
    #   @return [Integer]
    class IsolineTrailerOptions < Struct.new(
      nil,
      :axle_count,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Mode-specific routing options that further refine how reachable areas are calculated. Options are only considered when they match the selected travel mode.</p>
    # @!attribute car
    #   <p>Options specific to passenger vehicle routing (<code>Car</code>, such as vehicle characteristics and license plate restrictions.</p>
    #   @return [Types::IsolineCarOptions]
    # @!attribute scooter
    #   <p>Options specific to scooter routing (<code>Scooter</code>, such as vehicle characteristics and license plate restrictions.</p> <note> <p>When using the <code>Scooter</code> travel mode, controlled-access highways are automatically avoided unless explicitly allowed.</p> </note>
    #   @return [Types::IsolineScooterOptions]
    # @!attribute truck
    #   <p>Options specific to commercial truck routing (<code>Truck</code>, including vehicle dimensions, weight limits, and hazardous cargo specifications.</p>
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

    # <p>Vehicle characteristics and restrictions that affect which roads can be used when calculating reachable areas for trucks. These details ensure that routes respect physical limitations and legal requirements.</p> <p>These apply when the provided travel mode is <code>Truck</code> </p>
    # @!attribute axle_count
    #   <p>The total number of axles on the vehicle. Required for certain road restrictions and weight limit calculations.</p>
    #   @return [Integer]
    # @!attribute engine_type
    #   <p>The type of engine powering the vehicle, which may affect route calculation due to road restrictions or vehicle characteristics.</p> <ul> <li> <p> <code>INTERNAL_COMBUSTION</code>—Standard gasoline or diesel engine.</p> </li> <li> <p> <code>ELECTRIC</code>—Battery electric vehicle.</p> </li> <li> <p> <code>PLUGIN_HYBRID</code>—Combination of electric and internal combustion engines with plug-in charging capability.</p> </li> </ul>
    #   @return [String]
    # @!attribute gross_weight
    #   <p>The gross vehicle weight (the maximum weight a vehicle can safely operate at, as specified by the manufacturer) in kilograms. Used to avoid roads with weight restrictions and ensure compliance with maximum allowed vehicle weight regulations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute hazardous_cargos
    #   <p>Types of hazardous materials being transported. This affects which roads and tunnels can be used based on local regulations.</p> <ul> <li> <p> <code>Combustible</code>—Materials that can burn readily</p> </li> <li> <p> <code>Corrosive</code>—Materials that can destroy or irreversibly damage other substances</p> </li> <li> <p> <code>Explosive</code>—Materials that can produce an explosion by chemical reaction</p> </li> <li> <p> <code>Flammable</code>—Materials that can easily ignite</p> </li> <li> <p> <code>Gas</code>—Hazardous materials in gaseous form</p> </li> <li> <p> <code>HarmfulToWater</code>—Materials that pose a risk to water sources if released</p> </li> <li> <p> <code>Organic</code>—Hazardous organic compounds</p> </li> <li> <p> <code>Other</code>—Hazardous materials not covered by other categories</p> </li> <li> <p> <code>Poison</code>—Toxic materials</p> </li> <li> <p> <code>PoisonousInhalation</code>—Materials that are toxic when inhaled</p> </li> <li> <p> <code>Radioactive</code>—Materials that emit ionizing radiation</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute height
    #   <p>The vehicle height in centimeters. Used to avoid routes with low bridges or other height restrictions.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute height_above_first_axle
    #   <p>The height in centimeters measured from the ground to the highest point above the first axle. Used for specific bridge and tunnel clearance restrictions.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute kpra_length
    #   <p>The kingpin to rear axle (KPRA) length in centimeters. Used to determine if the vehicle can safely navigate turns and intersections.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute length
    #   <p>The total vehicle length in centimeters. Used to avoid roads with length restrictions and determine if the vehicle can safely navigate turns.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
    #   @return [Integer]
    # @!attribute license_plate
    #   <p>License plate information used in regions where road access or routing restrictions are based on license plate numbers.</p>
    #   @return [Types::IsolineVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>The maximum speed in kilometers per hour at which the vehicle can or is permitted to travel. This affects travel time calculations and may result in different reachable areas compared to using default speed limits. Value must be between 3.6 and 252 kilometers per hour.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle. This can affect route calculations by enabling the use of high-occupancy vehicle (HOV) lanes where minimum occupancy requirements are met.</p> <p>Default value: <code>1</code> </p>
    #   @return [Integer]
    # @!attribute payload_capacity
    #   <p>The maximum cargo weight in kilograms that the vehicle (including attached trailers) is rated to carry.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute tire_count
    #   <p>The total number of tires on the vehicle.</p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Optional specifications for attached trailers. When provided, trailer characteristics affect route calculations to ensure compliance with trailer-specific restrictions such as length limits, weight distribution requirements, and access restrictions for multi-trailer configurations.</p>
    #   @return [Types::IsolineTrailerOptions]
    # @!attribute truck_type
    #   <p>The type of truck: <code>LightTruck</code> for smaller delivery vehicles, <code> StraightTruck </code> for rigid body trucks, or <code>Tractor</code> for tractor-trailer combinations.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>The heaviest weight per axle in kilograms, regardless of axle type or grouping. Used for roads with axle-weight restrictions in regions where regulations don't distinguish between different axle configurations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute weight_per_axle_group
    #   <p>Specifies the total weight for different axle group configurations. Used in regions where regulations set different weight limits based on axle group types.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Types::WeightPerAxleGroup]
    # @!attribute width
    #   <p>The vehicle width in centimeters. Used to avoid routes with width restrictions.</p> <p> <b>Unit</b>: <code>centimeters</code> </p>
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
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:height_above_first_axle] = 0 unless options.key?(:height_above_first_axle)
        options[:kpra_length] = 0 unless options.key?(:kpra_length)
        options[:length] = 0 unless options.key?(:length)
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:payload_capacity] = 0 unless options.key?(:payload_capacity)
        options[:weight_per_axle] = 0 unless options.key?(:weight_per_axle)
        options[:width] = 0 unless options.key?(:width)
        super
      end
    end

    # <p>License plate information used in regions where road access or routing restrictions are based on license plate numbers.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute last_character
    #   <p>The last character of the vehicle's license plate. Used to determine road access restrictions in regions with license plate-based traffic management systems.</p>
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
    #   <p>Specifies the optimization criteria for the calculated sequence.</p> <p>Default value: <code>FastestRoute</code>.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>The start position for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute origin_options
    #   <p>Origin related options.</p>
    #   @return [Types::WaypointOptimizationOriginOptions]
    # @!attribute traffic
    #   <p>Traffic-related options.</p>
    #   @return [Types::WaypointOptimizationTrafficOptions]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute travel_mode_options
    #   <p>Travel mode related options for the provided travel mode.</p>
    #   @return [Types::WaypointOptimizationTravelModeOptions]
    # @!attribute waypoints
    #   <p>List of waypoints between the <code>Origin</code> and <code>Destination</code>, in World Geodetic System (WGS 84) format: [longitude, latitude].</p> <p>The maximum number of waypoints allowed per request:</p> <ul> <li> <p>Maximum 50 waypoints per request</p> </li> <li> <p>Maximum 20 waypoints when using constraints (<code>AccessHours</code>, <code>AppointmentTime</code>, <code>ServiceDuration</code>, <code>Heading</code>, <code>SideOfStreet</code>, <code>Before</code>)</p> </li> </ul>
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
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>meters</code> </p>
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute speed
    #   <p>Speed at the specified trace point .</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
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
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default value: <code>0</code> </p>
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
    #   <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
    #   @return [Types::RoadSnapTruckOptions]
    class RoadSnapTravelModeOptions < Struct.new(
      nil,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
    #   <p>Width of the vehicle in centimeters.</p>
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

    # <p>Details of the access point.</p>
    # @!attribute accessibility
    #   <p>Wheelchair accessibility information for the access point.</p>
    #   @return [Types::RouteAccessibilityAvailabilityDetails]
    class RouteAccessPointDetails < Struct.new(
      nil,
      :accessibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the availability of accessibility features.</p>
    # @!attribute wheelchair
    #   <p>Wheelchair accessibility status.</p>
    #   @return [String]
    class RouteAccessibilityAvailabilityDetails < Struct.new(
      nil,
      :wheelchair,
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

    # <p>Required attribution to display.</p>
    # @!attribute attribution_type
    #   <p>The type of the attribution link.</p>
    #   @return [String]
    # @!attribute web_link
    #   <p>The URL to an external resource.</p>
    #   @return [Types::RouteWebLink]
    class RouteAttribution < Struct.new(
      nil,
      :attribution_type,
      :web_link,
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
    #   <p>A list of Isoline PolylinePolygon, for each isoline PolylinePolygon, it contains PolylinePolygon of the first linear ring (the outer ring) and from 2nd item to the last item (the inner rings). For more information on polyline encoding, see <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p>
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
    #   <p> Areas to be avoided. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteAvoidanceArea>]
    # @!attribute car_shuttle_trains
    #   <p> Avoid car-shuttle-trains while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute controlled_access_highways
    #   <p>Avoid controlled access highways while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute dirt_roads
    #   <p> Avoid dirt roads while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute ferries
    #   <p>Avoid ferries while calculating the route.</p>
    #   @return [Boolean]
    # @!attribute seasonal_closure
    #   <p> Avoid roads that have seasonal closure while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute toll_roads
    #   <p>Avoids roads where the specified toll transponders are the only mode of payment.</p>
    #   @return [Boolean]
    # @!attribute toll_transponders
    #   <p> Avoids roads where the specified toll transponders are the only mode of payment. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute truck_road_types
    #   <p> Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute tunnels
    #   <p> Avoid tunnels while calculating the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute u_turns
    #   <p> Avoid U-turns for calculation on highways and motorways. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute zone_categories
    #   <p> Zone categories to be avoided. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
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

    # <p> Zone categories to be avoided. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
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

    # <p> Travel mode options when the provided travel mode is <code>Car</code>. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>LicensePlate</code> options. </p>
    # @!attribute engine_type
    #   <p> Engine type of the vehicle. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteVehicleLicensePlate]
    # @!attribute max_speed
    #   <p> Maximum speed specified. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p> The number of occupants in the vehicle. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Default value: <code>1</code> </p>
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
        super
      end
    end

    # <p>Details about the EV charge at the current step.</p>
    # @!attribute arrival_charge
    #   <p>Estimated vehicle battery charge before this step (in kWh). </p>
    #   @return [Float]
    # @!attribute consumable_power
    #   <p>Maximum charging power available to the vehicle.</p> <p> <b>Unit</b>: <code>KwH</code> </p>
    #   @return [Float]
    # @!attribute desired_charge
    #   <p>Details that are specific to a Charge step.</p> <p> <b>Unit</b>: <code>KwH</code> </p>
    #   @return [Float]
    class RouteChargeStepDetails < Struct.new(
      nil,
      :arrival_charge,
      :consumable_power,
      :desired_charge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    #   <p>The distance in meters from the destination point within which certain routing actions (such as U-turns or left turns across traffic) are restricted. This helps generate more practical routes by avoiding potentially dangerous maneuvers near the endpoint.</p>
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
    #   <p>Place details corresponding to the arrival.</p>
    #   @return [Types::RouteFerryPlace]
    # @!attribute time
    #   <p>The arrival time.</p>
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
    #   <p>Place details corresponding to the departure.</p>
    #   @return [Types::RouteFerryPlace]
    # @!attribute time
    #   <p>The departure time.</p>
    #   @return [String]
    class RouteFerryDeparture < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> FerryLegDetails is populated when the Leg type is Ferry, and provides additional information that is specific to ferry travel. </p>
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

    # <p>Summary including duration and distance for the entire leg.</p>
    # @!attribute distance
    #   <p>Distance of the entire leg.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the entire leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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
    #   <p>Names of the ferry span in available languages.</p>
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

    # <p>Options related to intermodal routing.</p> <note> <p>Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> </note>
    # @!attribute accessibility_attributes
    #   <p>Accessibility attributes to consider when calculating the route.</p>
    #   @return [Array<String>]
    # @!attribute max_transfers
    #   <p>Maximum number of transfers allowed when calculating the route.</p>
    #   @return [Integer]
    # @!attribute pedestrian
    #   <p>Options for the pedestrian leg of the intermodal route.</p>
    #   @return [Types::RouteIntermodalPedestrianOptions]
    # @!attribute rental
    #   <p>Options for the rental leg of the intermodal route.</p>
    #   @return [Types::RouteIntermodalRentalOptions]
    # @!attribute taxi
    #   <p>Options for the taxi leg of the intermodal route.</p>
    #   @return [Types::RouteIntermodalTaxiOptions]
    # @!attribute transit
    #   <p>Options for the transit leg of the intermodal route.</p>
    #   @return [Types::RouteIntermodalTransitOptions]
    # @!attribute vehicle
    #   <p>Options for the vehicle leg of the intermodal route.</p>
    #   @return [Types::RouteIntermodalVehicleOptions]
    class RouteIntermodalOptions < Struct.new(
      nil,
      :accessibility_attributes,
      :max_transfers,
      :pedestrian,
      :rental,
      :taxi,
      :transit,
      :vehicle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for the pedestrian leg of the intermodal route.</p>
    # @!attribute max_distance
    #   <p>Maximum walking distance allowed.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute speed
    #   <p>Walking speed.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    class RouteIntermodalPedestrianOptions < Struct.new(
      nil,
      :max_distance,
      :speed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_distance] = nil unless options.key?(:max_distance)
        options[:speed] = nil unless options.key?(:speed)
        super
      end
    end

    # <p>Options for the rental leg of the intermodal route.</p>
    # @!attribute allowed_modes
    #   <p>Allowed rental transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>ExcludedModes</code>.</p>
    #   @return [Array<String>]
    # @!attribute enabled_for
    #   <p>Specifies the portion of the route for which this leg type is enabled. By default, the leg type is enabled for all legs. Valid values:</p> <ul> <li> <p> <code>FirstLeg</code> - Enable this leg type for the first non-pedestrian leg of the route.</p> </li> <li> <p> <code>LastLeg</code> - Enable this leg type for the last non-pedestrian leg of the route.</p> </li> <li> <p> <code>EntireRoute</code> - Enable this leg type for the entire route.</p> </li> <li> <p> <code>None</code> - Disable this leg type entirely.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute excluded_modes
    #   <p>Excluded rental transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>AllowedModes</code>.</p>
    #   @return [Array<String>]
    class RouteIntermodalRentalOptions < Struct.new(
      nil,
      :allowed_modes,
      :enabled_for,
      :excluded_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for the taxi leg of the intermodal route.</p>
    # @!attribute allowed_modes
    #   <p>Allowed taxi transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>ExcludedModes</code>.</p>
    #   @return [Array<String>]
    # @!attribute enabled_for
    #   <p>Specifies the portion of the route for which this leg type is enabled. By default, the leg type is enabled for all legs. Valid values:</p> <ul> <li> <p> <code>FirstLeg</code> - Enable this leg type for the first non-pedestrian leg of the route.</p> </li> <li> <p> <code>LastLeg</code> - Enable this leg type for the last non-pedestrian leg of the route.</p> </li> <li> <p> <code>EntireRoute</code> - Enable this leg type for the entire route.</p> </li> <li> <p> <code>None</code> - Disable this leg type entirely.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute excluded_modes
    #   <p>Excluded taxi transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>AllowedModes</code>.</p>
    #   @return [Array<String>]
    class RouteIntermodalTaxiOptions < Struct.new(
      nil,
      :allowed_modes,
      :enabled_for,
      :excluded_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for the transit leg of the intermodal route.</p>
    # @!attribute allowed_modes
    #   <p>Allowed transit transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>ExcludedModes</code>.</p>
    #   @return [Array<String>]
    # @!attribute enabled_for
    #   <p>Specifies the portion of the route for which this leg type is enabled. By default, the leg type is enabled for all legs. Valid values:</p> <ul> <li> <p> <code>FirstLeg</code> - Enable this leg type for the first non-pedestrian leg of the route.</p> </li> <li> <p> <code>LastLeg</code> - Enable this leg type for the last non-pedestrian leg of the route.</p> </li> <li> <p> <code>EntireRoute</code> - Enable this leg type for the entire route.</p> </li> <li> <p> <code>None</code> - Disable this leg type entirely.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute excluded_modes
    #   <p>Excluded transit transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>AllowedModes</code>.</p>
    #   @return [Array<String>]
    class RouteIntermodalTransitOptions < Struct.new(
      nil,
      :allowed_modes,
      :enabled_for,
      :excluded_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options for the vehicle leg of the intermodal route.</p>
    # @!attribute allowed_modes
    #   <p>Allowed vehicle transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>ExcludedModes</code>.</p>
    #   @return [Array<String>]
    # @!attribute enabled_for
    #   <p>Specifies the portion of the route for which this leg type is enabled. By default, the leg type is enabled for all legs. Valid values:</p> <ul> <li> <p> <code>FirstLeg</code> - Enable this leg type for the first non-pedestrian leg of the route.</p> </li> <li> <p> <code>LastLeg</code> - Enable this leg type for the last non-pedestrian leg of the route.</p> </li> <li> <p> <code>EntireRoute</code> - Enable this leg type for the entire route.</p> </li> <li> <p> <code>None</code> - Disable this leg type entirely.</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute excluded_modes
    #   <p>Excluded vehicle transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>AllowedModes</code>.</p>
    #   @return [Array<String>]
    class RouteIntermodalVehicleOptions < Struct.new(
      nil,
      :allowed_modes,
      :enabled_for,
      :excluded_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    #   <p> FerryLegDetails is populated when the Leg type is Ferry, and provides additional information that is specific to ferry travel. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteFerryLegDetails]
    # @!attribute geometry
    #   <p>Geometry of the area to be avoided.</p>
    #   @return [Types::RouteLegGeometry]
    # @!attribute language
    #   <p> List of languages for instructions within steps in the response. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute pedestrian_leg_details
    #   <p>Details related to the pedestrian leg.</p>
    #   @return [Types::RoutePedestrianLegDetails]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default value: <code>Car</code> </p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the leg.</p>
    #   @return [String]
    # @!attribute vehicle_leg_details
    #   <p>Details related to the vehicle leg.</p>
    #   @return [Types::RouteVehicleLegDetails]
    # @!attribute rental_leg_details
    #   <p>Details related to the rental leg.</p> <note> <p>Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> </note>
    #   @return [Types::RouteRentalLegDetails]
    # @!attribute taxi_leg_details
    #   <p>Details related to the taxi leg.</p> <note> <p>Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> </note>
    #   @return [Types::RouteTaxiLegDetails]
    # @!attribute transit_leg_details
    #   <p>Details related to the transit leg.</p>
    #   @return [Types::RouteTransitLegDetails]
    class RouteLeg < Struct.new(
      nil,
      :ferry_leg_details,
      :geometry,
      :language,
      :pedestrian_leg_details,
      :travel_mode,
      :type,
      :vehicle_leg_details,
      :rental_leg_details,
      :taxi_leg_details,
      :transit_leg_details,
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
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>meters</code> </p>
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

    # <p> <code>AutoCircle</code> requests the route matrix service to define a <code>Circle</code> boundary that best attempts to include most waypoints (<code>Origins</code> and <code>Destinations</code>) using the <code>AutoCircle</code> settings. Any waypoints outside of the auto-defined <code>Circle</code> boundary will be considered out of the routing boundary, which results in a route matrix entry error.</p> <p> <code>AutoCircle</code> is only used in the request to configure a <code>Circle</code> for the route calculation. The derived <code>Circle</code> will also be provided in the response.</p>
    # @!attribute margin
    #   <p>The minimal distance, in meters, between any waypoint and the perimeter of the circle auto-defined for the boundary. Some margin is usually recommended so that the routing has enough leeway to travel from one waypoint to another optimally without conflicting with the routing boundary.</p> <p>The total of <code>MaxRadius</code> and <code>Margin</code> must be less than or equal to 200,000 meters.</p>
    #   @return [Integer]
    # @!attribute max_radius
    #   <p>The maximum radius, in meters, that the auto-defined <code>Circle</code> boundary should have, before the <code>Margin</code> distance is added to the circle.</p> <p>The total of <code>MaxRadius</code> and <code>Margin</code> must be less than or equal to 200,000 meters.</p>
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
    #   <p>A list of Isoline PolylinePolygon, for each isoline PolylinePolygon, it contains PolylinePolygon of the first linear ring (the outer ring) and from second item to the last item (the inner rings). For more information on polyline encoding, see <a href="https://github.com/aws-geospatial/polyline">https://github.com/aws-geospatial/polyline</a>.</p>
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
    #   <p> <code>AutoCircle</code> requests the route matrix service to define a <code>Circle</code> boundary that best attempts to include most waypoints (<code>Origins</code> and <code>Destinations</code>) using the <code>AutoCircle</code> settings. Any waypoints outside of the auto-defined <code>Circle</code> boundary will be considered out of the routing boundary, which results in a route matrix entry error.</p> <p> <code>AutoCircle</code> is only used in the request to configure a <code>Circle</code> for the route calculation. The derived <code>Circle</code> will also be provided in the response.</p>
    #   @return [Types::RouteMatrixAutoCircle]
    # @!attribute circle
    #   <p>Geometry defined as a circle. The circle defines the routing boundary area. Any waypoints outside the circle will result in a route matrix entry error.</p> <p>You can specify a <code>Circle</code> directly in the request, or it will be auto-derived when <code>AutoCircle</code> is used. When <code>AutoCircle</code> is set in the request, the response routing boundary will return <code>Circle</code> derived from the <code>AutoCircle</code> settings.</p>
    #   @return [Types::Circle]
    # @!attribute bounding_box
    #   <p>Geometry defined as a bounding box. The first pair represents the X and Y coordinates (longitude and latitude,) of the southwest corner of the bounding box; the second pair represents the X and Y coordinates (longitude and latitude) of the northeast corner.</p> <p>Diagonal distance of the bounding box must be less than or equal to 400,000 meters.</p>
    #   @return [Array<Float>]
    # @!attribute polygon
    #   <p>Geometry defined as a polygon with only one linear ring. A linear ring is a closed sequence of four or more coordinates. The first and last coordinates are the same, forming a closed boundary. Each coordinate is a position in [longitude, latitude] format.</p> <p>The structure is an array of linear rings (only 1 allowed). Each linear ring is an array of coordinates (minimum 4), and each coordinate is an array of two doubles [longitude, latitude].</p> <p>Maximum distance between any two vertices must be less than or equal to 400,000 meters.</p>
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
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default value: <code>1</code> </p>
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
        super
      end
    end

    # <p>The route destination.</p>
    # @!attribute options
    #   <p> Destination related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteMatrixDestinationOptions]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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
    #   <p>Considers all roads within the provided radius to match the provided destination to. The roads that are considered are determined by the provided Strategy.</p> <p> <b>Unit</b>: <code>meters</code> </p>
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

    # <p>The start position for the route in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    # @!attribute options
    #   <p> Origin related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteMatrixOriginOptions]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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

    # <p>Travel mode options when the provided travel mode is <code>Scooter</code>.</p>
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteMatrixVehicleLicensePlate]
    # @!attribute max_speed
    #   <p>Maximum speed.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default value: <code>1</code> </p>
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
        super
      end
    end

    # <p>Options to configure matching the provided position to a side of the street.</p>
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used. AnyStreet will always use the provided position.</p> <p>Default value: <code>DividedStreetOnly</code> </p>
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
    #   <p>Determines if traffic should be used or ignored while calculating the route.</p> <p>Default value: <code>UseTrafficData</code> </p>
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
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default value: <code>0</code> </p>
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
    #   <p>Travel mode options when the provided travel mode is <code>Car</code>.</p>
    #   @return [Types::RouteMatrixCarOptions]
    # @!attribute scooter
    #   <p>Travel mode options when the provided travel mode is <code>Scooter</code>. </p> <note> <p>When travel mode is set to <code>Scooter</code>, then the avoidance option <code>ControlledAccessHighways</code> defaults to <code>true</code>.</p> </note>
    #   @return [Types::RouteMatrixScooterOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
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

    # <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default value: <code>1</code> </p>
    #   @return [Integer]
    # @!attribute payload_capacity
    #   <p>Payload capacity of the vehicle and trailers attached.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute trailer
    #   <p>Trailer options corresponding to the vehicle.</p>
    #   @return [Types::RouteMatrixTrailerOptions]
    # @!attribute truck_type
    #   <p>The type of truck: <code>LightTruck</code> for smaller delivery vehicles, <code> StraightTruck</code> for rigid body trucks, or <code>Tractor</code> for tractor-trailer combinations.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:kpra_length] = 0 unless options.key?(:kpra_length)
        options[:length] = 0 unless options.key?(:length)
        options[:max_speed] = nil unless options.key?(:max_speed)
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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
    #   <p>Place details corresponding to the pass-through waypoint.</p>
    #   @return [Types::RoutePassThroughPlace]
    class RoutePassThroughWaypoint < Struct.new(
      nil,
      :geometry_offset,
      :place,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    class RoutePedestrianAfterTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the arrival for a leg.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    # @!attribute place
    #   <p>Place details corresponding to the arrival.</p>
    #   @return [Types::RoutePedestrianPlace]
    # @!attribute time
    #   <p>The arrival time.</p>
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
    #   <p>Place details corresponding to the departure.</p>
    #   @return [Types::RoutePedestrianPlace]
    # @!attribute time
    #   <p>The departure time.</p>
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
    # @!attribute after_travel_steps
    #   <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    #   @return [Array<Types::RoutePedestrianAfterTravelStep>]
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RoutePedestrianArrival]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RoutePedestrianDeparture]
    # @!attribute notices
    #   <p> Notices are additional information returned that indicate issues that occurred during route calculation. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RoutePedestrianNotice>]
    # @!attribute pass_through_waypoints
    #   <p>Waypoints that were passed through during the leg. This includes the waypoints that were configured with the PassThrough option.</p>
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    # @!attribute spans
    #   <p> Spans that were computed for the requested SpanAdditionalFeatures. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RoutePedestrianSpan>]
    # @!attribute summary
    #   <p>Summarized details of the leg.</p>
    #   @return [Types::RoutePedestrianSummary]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RoutePedestrianTravelStep>]
    class RoutePedestrianLegDetails < Struct.new(
      nil,
      :after_travel_steps,
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

      def initialize(options = {})
        options[:after_travel_steps] = [] unless options.key?(:after_travel_steps)
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
    class RoutePedestrianNotice < Struct.new(
      nil,
      :code,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Options related to the pedestrian. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
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

    # <p>Summary including duration and distance for the entire leg.</p>
    # @!attribute distance
    #   <p>Distance of the entire leg.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the entire leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
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
    # @!attribute access_point_details
    #   <p>Details of the access point.</p>
    #   @return [Types::RouteAccessPointDetails]
    # @!attribute name
    #   <p>The name of the place.</p>
    #   @return [String]
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [String]
    # @!attribute station_details
    #   <p>Details about the station.</p>
    #   @return [Types::RouteStationDetails]
    # @!attribute type
    #   <p>The type of the place.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RoutePedestrianPlace < Struct.new(
      nil,
      :access_point_details,
      :name,
      :original_position,
      :position,
      :side_of_street,
      :station_details,
      :type,
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
    #   <p>Dynamic speed details corresponding to the span.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Types::RouteSpanDynamicSpeedDetails]
    # @!attribute functional_classification
    #   <p>A numerical value indicating the functional classification of the road segment corresponding to the span.</p> <p>Classification values are part of the hierarchical network that helps determine a logical and efficient route, and have the following definitions:</p> <ol> <li> <p>Roads that allow for high volume, maximum speed traffic movement between and through major metropolitan areas.</p> </li> <li> <p>Roads that are used to channel traffic to functional class 1 roads for travel between and through cities in the shortest amount of time.</p> </li> <li> <p>Roads that intersect functional class 2 roads and provide a high volume of traffic movement at a lower level of mobility than functional class 2 roads.</p> </li> <li> <p>Roads that provide for a high volume of traffic movement at moderate speeds between neighborhoods.</p> </li> <li> <p>Roads with volume and traffic movement below the level of any other functional class.</p> </li> </ol>
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
    #   <p>Speed limit details corresponding to the span.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
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

    # <p>A step that must be performed after the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteRentalAfterTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details about the rental agency.</p>
    # @!attribute name
    #   <p>Name of the agency.</p>
    #   @return [String]
    # @!attribute url
    #   <p>URL to the agency's website.</p>
    #   @return [String]
    class RouteRentalAgency < Struct.new(
      nil,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details corresponding to the arrival for the leg.</p>
    # @!attribute place
    #   <p>Place details corresponding to the arrival.</p>
    #   @return [Types::RouteRentalPlace]
    # @!attribute time
    #   <p>The arrival time.</p>
    #   @return [String]
    class RouteRentalArrival < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A step that must be performed before the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteRentalBeforeTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the departure for the leg.</p>
    # @!attribute place
    #   <p>Place details corresponding to the departure.</p>
    #   @return [Types::RouteRentalPlace]
    # @!attribute time
    #   <p>The departure time.</p>
    #   @return [String]
    class RouteRentalDeparture < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Populated when the Leg type is Rental, and provides additional information that is specific to rental vehicle travel.</p>
    # @!attribute after_travel_steps
    #   <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    #   @return [Array<Types::RouteRentalAfterTravelStep>]
    # @!attribute agency
    #   <p>Details about the rental agency.</p>
    #   @return [Types::RouteRentalAgency]
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RouteRentalArrival]
    # @!attribute attributions
    #   <p>List of required attributions to display.</p>
    #   @return [Array<Types::RouteAttribution>]
    # @!attribute before_travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteRentalBeforeTravelStep>]
    # @!attribute booking_web_links
    #   <p>Web links to external ticket booking services for the rental.</p>
    #   @return [Array<Types::RouteWebLink>]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RouteRentalDeparture]
    # @!attribute summary
    #   <p>Summary of the rental leg.</p>
    #   @return [Types::RouteRentalSummary]
    # @!attribute transport
    #   <p>Transport mode details for the rental leg.</p>
    #   @return [Types::RouteRentalTransportModeDetails]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed during the travel portion of the leg.</p>
    #   @return [Array<Types::RouteRentalTravelStep>]
    class RouteRentalLegDetails < Struct.new(
      nil,
      :after_travel_steps,
      :agency,
      :arrival,
      :attributions,
      :before_travel_steps,
      :booking_web_links,
      :departure,
      :summary,
      :transport,
      :travel_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary including duration and distance for the entire leg.</p>
    # @!attribute duration
    #   <p>Duration of the entire leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute distance
    #   <p>Distance of the entire leg.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    class RouteRentalOverviewSummary < Struct.new(
      nil,
      :duration,
      :distance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        options[:distance] = nil unless options.key?(:distance)
        super
      end
    end

    # <p>Place details corresponding to the arrival or departure.</p>
    # @!attribute access_point_details
    #   <p>Details of the access point.</p>
    #   @return [Types::RouteAccessPointDetails]
    # @!attribute name
    #   <p>The name of the place.</p>
    #   @return [String]
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute station_details
    #   <p>Details about the station.</p>
    #   @return [Types::RouteStationDetails]
    # @!attribute type
    #   <p>The type of the place.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RouteRentalPlace < Struct.new(
      nil,
      :access_point_details,
      :name,
      :original_position,
      :position,
      :station_details,
      :type,
      :waypoint_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the rental leg.</p>
    # @!attribute overview
    #   <p>Summary including duration and distance for the entire leg.</p>
    #   @return [Types::RouteRentalOverviewSummary]
    # @!attribute travel_only
    #   <p>Summary including duration and distance for the travel portion of the leg only.</p>
    #   @return [Types::RouteRentalTravelOnlySummary]
    class RouteRentalSummary < Struct.new(
      nil,
      :overview,
      :travel_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Transport mode details for the rental leg.</p>
    # @!attribute available_seats
    #   <p>Number of available seats in the vehicle.</p>
    #   @return [Integer]
    # @!attribute category
    #   <p>Human readable transport category.</p>
    #   @return [String]
    # @!attribute color
    #   <p>Color of the transport polyline and background for the transport name.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Vehicle engine type.</p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>Vehicle license plate number.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>Mode of the rental transport.</p>
    #   @return [String]
    # @!attribute model
    #   <p>Vehicle model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Vehicle name or mobility provider name.</p>
    #   @return [String]
    # @!attribute text_color
    #   <p>Color of the transport name text.</p>
    #   @return [String]
    class RouteRentalTransportModeDetails < Struct.new(
      nil,
      :available_seats,
      :category,
      :color,
      :engine,
      :license_plate,
      :mode,
      :model,
      :name,
      :text_color,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary including duration and distance for the travel portion of the leg only.</p>
    # @!attribute duration
    #   <p>Duration of the travel portion of the rental leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteRentalTravelOnlySummary < Struct.new(
      nil,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>A step that must be performed during the travel portion of the leg.</p>
    # @!attribute continue_step_details
    #   <p>Details related to the continue step.</p>
    #   @return [Types::RouteContinueStepDetails]
    # @!attribute distance
    #   <p>Distance of the step.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute exit_step_details
    #   <p>Details related to the exit step.</p>
    #   @return [Types::RouteExitStepDetails]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute keep_step_details
    #   <p>Details that are specific to a Keep step.</p>
    #   @return [Types::RouteKeepStepDetails]
    # @!attribute ramp_step_details
    #   <p>Details that are specific to a ramp step.</p>
    #   @return [Types::RouteRampStepDetails]
    # @!attribute roundabout_enter_step_details
    #   <p>Details about the roundabout leg.</p>
    #   @return [Types::RouteRoundaboutEnterStepDetails]
    # @!attribute roundabout_exit_step_details
    #   <p>Details about the roundabout step.</p>
    #   @return [Types::RouteRoundaboutExitStepDetails]
    # @!attribute roundabout_pass_step_details
    #   <p>Details about the step.</p>
    #   @return [Types::RouteRoundaboutPassStepDetails]
    # @!attribute turn_step_details
    #   <p>Details related to the turn step.</p>
    #   @return [Types::RouteTurnStepDetails]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    # @!attribute u_turn_step_details
    #   <p>Details related to the U-turn step.</p>
    #   @return [Types::RouteUTurnStepDetails]
    class RouteRentalTravelStep < Struct.new(
      nil,
      :continue_step_details,
      :distance,
      :duration,
      :exit_step_details,
      :geometry_offset,
      :instruction,
      :keep_step_details,
      :ramp_step_details,
      :roundabout_enter_step_details,
      :roundabout_exit_step_details,
      :roundabout_pass_step_details,
      :turn_step_details,
      :type,
      :u_turn_step_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = nil unless options.key?(:distance)
        options[:duration] = nil unless options.key?(:duration)
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

    # <p> Travel mode options when the provided travel mode is <code>Scooter</code>. For <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers, <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions support only <code>LicensePlate</code> options. </p>
    # @!attribute engine_type
    #   <p> Engine type of the vehicle. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>The vehicle License Plate.</p>
    #   @return [Types::RouteVehicleLicensePlate]
    # @!attribute max_speed
    #   <p> Maximum speed Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p> The number of occupants in the vehicle. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p>Default value: <code>1</code> </p>
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
        super
      end
    end

    # <p>Options to configure matching the provided position to a side of the street.</p>
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used.</p> <p>Default value: <code>DividedStreetOnly</code> </p>
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

    # <p>Details about the dynamic speed.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    # @!attribute best_case_speed
    #   <p>Estimated speed while traversing the span without traffic congestion.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute turn_duration
    #   <p>Estimated time to turn from this span into the next. </p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute typical_speed
    #   <p>Estimated speed while traversing the span under typical traffic congestion.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
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

    # <p>Details about the speed limit corresponding to the span.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    # @!attribute max_speed
    #   <p>Maximum speed.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
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

    # <p>Details about the station.</p>
    # @!attribute accessibility
    #   <p>Wheelchair accessibility information for the station.</p>
    #   @return [Types::RouteAccessibilityAvailabilityDetails]
    # @!attribute platform_name
    #   <p>Platform name or number.</p>
    #   @return [String]
    # @!attribute short_name
    #   <p>Short text or a number that identifies the station.</p>
    #   @return [String]
    class RouteStationDetails < Struct.new(
      nil,
      :accessibility,
      :platform_name,
      :short_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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

    # <p>A step that must be performed after the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteTaxiAfterTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details about the taxi agency.</p>
    # @!attribute name
    #   <p>Name of the agency.</p>
    #   @return [String]
    # @!attribute url
    #   <p>URL to the agency's website.</p>
    #   @return [String]
    class RouteTaxiAgency < Struct.new(
      nil,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details corresponding to the arrival for the leg.</p>
    # @!attribute place
    #   <p>Place details corresponding to the arrival.</p>
    #   @return [Types::RouteTaxiPlace]
    # @!attribute time
    #   <p>The arrival time.</p>
    #   @return [String]
    class RouteTaxiArrival < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A step that must be performed before the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteTaxiBeforeTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the departure for the leg.</p>
    # @!attribute place
    #   <p>Place details corresponding to the departure.</p>
    #   @return [Types::RouteTaxiPlace]
    # @!attribute time
    #   <p>The departure time.</p>
    #   @return [String]
    class RouteTaxiDeparture < Struct.new(
      nil,
      :place,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Populated when the Leg type is Taxi, and provides additional information that is specific to taxi travel.</p>
    # @!attribute after_travel_steps
    #   <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    #   @return [Array<Types::RouteTaxiAfterTravelStep>]
    # @!attribute agency
    #   <p>Details about the taxi agency.</p>
    #   @return [Types::RouteTaxiAgency]
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RouteTaxiArrival]
    # @!attribute attributions
    #   <p>List of required attributions to display.</p>
    #   @return [Array<Types::RouteAttribution>]
    # @!attribute before_travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteTaxiBeforeTravelStep>]
    # @!attribute booking_web_links
    #   <p>Web links to external ticket booking services for the taxi.</p>
    #   @return [Array<Types::RouteWebLink>]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RouteTaxiDeparture]
    # @!attribute notices
    #   <p>List of notices that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RouteTaxiNotice>]
    # @!attribute summary
    #   <p>Summary of the taxi leg.</p>
    #   @return [Types::RouteTaxiSummary]
    # @!attribute transport
    #   <p>Transport mode details for the taxi leg.</p>
    #   @return [Types::RouteTaxiTransportModeDetails]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed during the travel portion of the leg.</p>
    #   @return [Array<Types::RouteTaxiTravelStep>]
    class RouteTaxiLegDetails < Struct.new(
      nil,
      :after_travel_steps,
      :agency,
      :arrival,
      :attributions,
      :before_travel_steps,
      :booking_web_links,
      :departure,
      :notices,
      :summary,
      :transport,
      :travel_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A notice that indicates an issue that occurred during route calculation.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Impact corresponding to the issue. While Low impact notices can be safely ignored, High impact notices must be evaluated further to determine the impact.</p>
    #   @return [String]
    class RouteTaxiNotice < Struct.new(
      nil,
      :code,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary including duration and distance for the entire leg.</p>
    # @!attribute duration
    #   <p>Duration of the entire leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute distance
    #   <p>Distance of the entire leg.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    class RouteTaxiOverviewSummary < Struct.new(
      nil,
      :duration,
      :distance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        options[:distance] = nil unless options.key?(:distance)
        super
      end
    end

    # <p>Place details corresponding to the arrival or departure.</p>
    # @!attribute access_point_details
    #   <p>Details of the access point.</p>
    #   @return [Types::RouteAccessPointDetails]
    # @!attribute name
    #   <p>The name of the place.</p>
    #   @return [String]
    # @!attribute original_position
    #   <p>Position provided in the request.</p>
    #   @return [Array<Float>]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute station_details
    #   <p>Details about the station.</p>
    #   @return [Types::RouteStationDetails]
    # @!attribute type
    #   <p>The type of the place.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RouteTaxiPlace < Struct.new(
      nil,
      :access_point_details,
      :name,
      :original_position,
      :position,
      :station_details,
      :type,
      :waypoint_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the taxi leg.</p>
    # @!attribute overview
    #   <p>Summary including duration and distance for the entire leg.</p>
    #   @return [Types::RouteTaxiOverviewSummary]
    # @!attribute travel_only
    #   <p>Summary including duration and distance for the travel portion of the leg only.</p>
    #   @return [Types::RouteTaxiTravelOnlySummary]
    class RouteTaxiSummary < Struct.new(
      nil,
      :overview,
      :travel_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Transport mode details for the taxi leg.</p>
    # @!attribute available_seats
    #   <p>Number of available seats in the vehicle.</p>
    #   @return [Integer]
    # @!attribute category
    #   <p>Human readable transport category.</p>
    #   @return [String]
    # @!attribute color
    #   <p>Color of the transport polyline and background for the transport name.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Vehicle engine type.</p>
    #   @return [String]
    # @!attribute license_plate
    #   <p>Vehicle license plate number.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>Mode of the taxi transport.</p>
    #   @return [String]
    # @!attribute model
    #   <p>Vehicle model.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Vehicle name or mobility provider name.</p>
    #   @return [String]
    # @!attribute text_color
    #   <p>Color of the transport name text.</p>
    #   @return [String]
    class RouteTaxiTransportModeDetails < Struct.new(
      nil,
      :available_seats,
      :category,
      :color,
      :engine,
      :license_plate,
      :mode,
      :model,
      :name,
      :text_color,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary including duration and distance for the travel portion of the leg only.</p>
    # @!attribute duration
    #   <p>Duration of the travel portion of the taxi leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteTaxiTravelOnlySummary < Struct.new(
      nil,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>A step that must be performed during the travel portion of the leg.</p>
    # @!attribute continue_step_details
    #   <p>Details related to the continue step.</p>
    #   @return [Types::RouteContinueStepDetails]
    # @!attribute distance
    #   <p>Distance of the step.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute exit_step_details
    #   <p>Details related to the exit step.</p>
    #   @return [Types::RouteExitStepDetails]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute keep_step_details
    #   <p>Details that are specific to a Keep step.</p>
    #   @return [Types::RouteKeepStepDetails]
    # @!attribute ramp_step_details
    #   <p>Details that are specific to a ramp step.</p>
    #   @return [Types::RouteRampStepDetails]
    # @!attribute roundabout_enter_step_details
    #   <p>Details about the roundabout leg.</p>
    #   @return [Types::RouteRoundaboutEnterStepDetails]
    # @!attribute roundabout_exit_step_details
    #   <p>Details about the roundabout step.</p>
    #   @return [Types::RouteRoundaboutExitStepDetails]
    # @!attribute roundabout_pass_step_details
    #   <p>Details about the step.</p>
    #   @return [Types::RouteRoundaboutPassStepDetails]
    # @!attribute turn_step_details
    #   <p>Details related to the turn step.</p>
    #   @return [Types::RouteTurnStepDetails]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    # @!attribute u_turn_step_details
    #   <p>Details related to the U-turn step.</p>
    #   @return [Types::RouteUTurnStepDetails]
    class RouteTaxiTravelStep < Struct.new(
      nil,
      :continue_step_details,
      :distance,
      :duration,
      :exit_step_details,
      :geometry_offset,
      :instruction,
      :keep_step_details,
      :ramp_step_details,
      :roundabout_enter_step_details,
      :roundabout_exit_step_details,
      :roundabout_pass_step_details,
      :turn_step_details,
      :type,
      :u_turn_step_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = nil unless options.key?(:distance)
        options[:duration] = nil unless options.key?(:duration)
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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
    #   <p>Specifies how traffic data should be used when calculating routes.</p> <p>Default Value: <code>UseTrafficData</code> </p> <note> <p>Traffic data usage depends on the time parameters in your route request:</p> <ul> <li> <p>When <code>Usage</code> is set to <code>UseTrafficData</code>:</p> <ul> <li> <p>If <code>DepartNow</code> is set to <code>true</code>, or if you specify <code>DepartureTime</code> or <code>ArrivalTime</code>, then all traffic data is considered (including live traffic and closures).</p> </li> <li> <p>If <code>DepartNow</code>, <code>DepartureTime</code>, and <code>ArrivalTime</code> are all unspecified, then only long-term closures are considered, regardless of this setting.</p> </li> </ul> </li> <li> <p>When <code>Usage</code> is set to <code>IgnoreTrafficData</code>, then all traffic data is ignored regardless of the time parameters in your route request.</p> </li> </ul> </note>
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
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default value: <code>0</code> </p>
    #   @return [Integer]
    class RouteTrailerOptions < Struct.new(
      nil,
      :axle_count,
      :trailer_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A step that must be performed after the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteTransitAfterTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details about the transit agency.</p>
    # @!attribute name
    #   <p>Name of the agency.</p>
    #   @return [String]
    # @!attribute url
    #   <p>URL to the agency's website.</p>
    #   @return [String]
    class RouteTransitAgency < Struct.new(
      nil,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details corresponding to the arrival for the leg.</p>
    # @!attribute delay
    #   <p>The delay from the scheduled arrival time.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute place
    #   <p>Place details corresponding to the arrival.</p>
    #   @return [Types::RouteTransitPlace]
    # @!attribute status
    #   <p>The status of the arrival.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The arrival time.</p>
    #   @return [String]
    class RouteTransitArrival < Struct.new(
      nil,
      :delay,
      :place,
      :status,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delay] = nil unless options.key?(:delay)
        super
      end
    end

    # <p>A step that must be performed before the travel portion of the leg.</p>
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteTransitBeforeTravelStep < Struct.new(
      nil,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the departure for the leg.</p>
    # @!attribute delay
    #   <p>The delay from the scheduled departure time.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute place
    #   <p>Place details corresponding to the departure.</p>
    #   @return [Types::RouteTransitPlace]
    # @!attribute status
    #   <p>The status of the departure.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The departure time.</p>
    #   @return [String]
    class RouteTransitDeparture < Struct.new(
      nil,
      :delay,
      :place,
      :status,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delay] = nil unless options.key?(:delay)
        super
      end
    end

    # <p>An incident describes disruptions on the transit route.</p>
    # @!attribute description
    #   <p>A human readable description of the incident.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the incident on the transit service.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The end time of the incident.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the incident.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the incident.</p>
    #   @return [String]
    # @!attribute url
    #   <p>URL to the original incident published at the agency website.</p>
    #   @return [String]
    class RouteTransitIncident < Struct.new(
      nil,
      :description,
      :effect,
      :end_time,
      :start_time,
      :type,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An intermediate stop between departure and destination of the transit route.</p>
    # @!attribute attributes
    #   <p>Attributes of the intermediate stop.</p>
    #   @return [Array<String>]
    # @!attribute departure
    #   <p>Departure details for the intermediate stop.</p>
    #   @return [Types::RouteTransitDeparture]
    # @!attribute duration
    #   <p>Duration of the stop.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this stop.</p>
    #   @return [Integer]
    # @!attribute transport
    #   <p>Transport mode details at the intermediate stop.</p>
    #   @return [Types::RouteTransitTransportModeDetails]
    class RouteTransitIntermediateStop < Struct.new(
      nil,
      :attributes,
      :departure,
      :duration,
      :geometry_offset,
      :transport,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Populated when the Leg type is Transit, and provides additional information that is specific to public transit travel.</p>
    # @!attribute after_travel_steps
    #   <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    #   @return [Array<Types::RouteTransitAfterTravelStep>]
    # @!attribute agency
    #   <p>Details about the transit agency.</p>
    #   @return [Types::RouteTransitAgency]
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RouteTransitArrival]
    # @!attribute attributions
    #   <p>List of required attributions to display.</p>
    #   @return [Array<Types::RouteAttribution>]
    # @!attribute before_travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteTransitBeforeTravelStep>]
    # @!attribute booking_web_links
    #   <p>Web links to external ticket booking services for the transit.</p>
    #   @return [Array<Types::RouteWebLink>]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RouteTransitDeparture]
    # @!attribute incidents
    #   <p>Incidents affecting this leg of the transit route.</p>
    #   @return [Array<Types::RouteTransitIncident>]
    # @!attribute intermediate_stops
    #   <p>Intermediate stops between departure and destination of the transit route.</p>
    #   @return [Array<Types::RouteTransitIntermediateStop>]
    # @!attribute next_departures
    #   <p>List of next departures that cover the same section of the route.</p>
    #   @return [Array<Types::RouteTransitNextDeparture>]
    # @!attribute notices
    #   <p>List of notices that indicate issues that occurred during route calculation.</p>
    #   @return [Array<Types::RouteTransitNotice>]
    # @!attribute pass_through_waypoints
    #   <p>Waypoints that were passed through during the leg. This includes the waypoints that were configured with the PassThrough option. Not populated when the TravelMode is <code>Transit</code> or <code>Intermodal</code>.</p>
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    # @!attribute spans
    #   <p>Spans that were computed for the requested SpanAdditionalFeatures. Not populated when the TravelMode is <code>Transit</code> or <code>Intermodal</code>.</p>
    #   @return [Array<Types::RouteTransitSpan>]
    # @!attribute summary
    #   <p>Summary of the transit leg.</p>
    #   @return [Types::RouteTransitSummary]
    # @!attribute transport
    #   <p>Transport mode details for the transit leg.</p>
    #   @return [Types::RouteTransitTransportModeDetails]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed during the travel portion of the leg.</p>
    #   @return [Array<Types::RouteTransitTravelStep>]
    class RouteTransitLegDetails < Struct.new(
      nil,
      :after_travel_steps,
      :agency,
      :arrival,
      :attributions,
      :before_travel_steps,
      :booking_web_links,
      :departure,
      :incidents,
      :intermediate_stops,
      :next_departures,
      :notices,
      :pass_through_waypoints,
      :spans,
      :summary,
      :transport,
      :travel_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the next available departure for the transit service.</p>
    # @!attribute delay
    #   <p>The delay from the scheduled departure time.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute platform_name
    #   <p>Platform name or number for the departure.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the departure.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The departure time.</p>
    #   @return [String]
    # @!attribute transport
    #   <p>Transport mode details for this departure.</p>
    #   @return [Types::RouteTransitTransportModeDetails]
    class RouteTransitNextDeparture < Struct.new(
      nil,
      :delay,
      :platform_name,
      :status,
      :time,
      :transport,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delay] = nil unless options.key?(:delay)
        super
      end
    end

    # <p>A notice that indicates an issue that occurred during route calculation.</p>
    # @!attribute code
    #   <p>Code corresponding to the issue.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>Impact corresponding to the issue. While Low impact notices can be safely ignored, High impact notices must be evaluated further to determine the impact.</p>
    #   @return [String]
    class RouteTransitNotice < Struct.new(
      nil,
      :code,
      :impact,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Options related to transit routing.</p> <note> <p>Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> </note>
    # @!attribute accessibility_attributes
    #   <p>Accessibility attributes to consider when calculating the route.</p>
    #   @return [Array<String>]
    # @!attribute allowed_modes
    #   <p>Allowed transit transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>ExcludedModes</code>.</p>
    #   @return [Array<String>]
    # @!attribute excluded_modes
    #   <p>Excluded transit transport modes when calculating the route. By default, all transport modes are allowed. Cannot be used together with <code>AllowedModes</code>.</p>
    #   @return [Array<String>]
    # @!attribute max_transfers
    #   <p>Maximum number of transfers allowed when calculating the route.</p>
    #   @return [Integer]
    # @!attribute pedestrian
    #   <p>Options for the pedestrian leg of the transit route.</p>
    #   @return [Types::RouteTransitPedestrianOptions]
    class RouteTransitOptions < Struct.new(
      nil,
      :accessibility_attributes,
      :allowed_modes,
      :excluded_modes,
      :max_transfers,
      :pedestrian,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary including duration and distance for the entire leg.</p>
    # @!attribute distance
    #   <p>Distance of the entire leg.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the entire leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteTransitOverviewSummary < Struct.new(
      nil,
      :distance,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:distance] = nil unless options.key?(:distance)
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Options for the pedestrian leg of the transit route.</p>
    # @!attribute max_distance
    #   <p>Maximum walking distance allowed.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute speed
    #   <p>Walking speed.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    class RouteTransitPedestrianOptions < Struct.new(
      nil,
      :max_distance,
      :speed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_distance] = nil unless options.key?(:max_distance)
        options[:speed] = nil unless options.key?(:speed)
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute station_details
    #   <p>Details about the station.</p>
    #   @return [Types::RouteStationDetails]
    # @!attribute type
    #   <p>The type of the place.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    class RouteTransitPlace < Struct.new(
      nil,
      :name,
      :original_position,
      :position,
      :station_details,
      :type,
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
    #   <p>Names of the transit span in available languages.</p>
    #   @return [Array<Types::LocalizedString>]
    # @!attribute region
    #   <p>2-3 letter Region code corresponding to the Span. This is either a province or a state.</p>
    #   @return [String]
    class RouteTransitSpan < Struct.new(
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
        options[:distance] = nil unless options.key?(:distance)
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Summary of the transit leg.</p>
    # @!attribute overview
    #   <p>Summary including duration and distance for the entire leg.</p>
    #   @return [Types::RouteTransitOverviewSummary]
    # @!attribute travel_only
    #   <p>Summary including duration and distance for the travel portion of the leg only.</p>
    #   @return [Types::RouteTransitTravelOnlySummary]
    class RouteTransitSummary < Struct.new(
      nil,
      :overview,
      :travel_only,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Transport mode details for the transit leg.</p>
    # @!attribute accessibility
    #   <p>Wheelchair accessibility information for the transit vehicle.</p>
    #   @return [Types::RouteAccessibilityAvailabilityDetails]
    # @!attribute color
    #   <p>Color of the transport polyline and background for the transport name.</p>
    #   @return [String]
    # @!attribute headsign
    #   <p>Transit route headsign.</p>
    #   @return [String]
    # @!attribute long_route_name
    #   <p>Long name of the transit route.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>Mode of the transit transport.</p>
    #   @return [String]
    # @!attribute route_name
    #   <p>Transit route name.</p>
    #   @return [String]
    # @!attribute short_route_name
    #   <p>Short name of the transit route.</p>
    #   @return [String]
    # @!attribute text_color
    #   <p>Color of the transport name text.</p>
    #   @return [String]
    class RouteTransitTransportModeDetails < Struct.new(
      nil,
      :accessibility,
      :color,
      :headsign,
      :long_route_name,
      :mode,
      :route_name,
      :short_route_name,
      :text_color,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary including duration and distance for the travel portion of the leg only.</p>
    # @!attribute duration
    #   <p>Duration of the travel portion of the transit leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    class RouteTransitTravelOnlySummary < Struct.new(
      nil,
      :duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>A step that must be performed during the travel portion of the leg.</p>
    # @!attribute distance
    #   <p>Distance of the step.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute geometry_offset
    #   <p>Offset in the leg geometry corresponding to the start of this step.</p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteTransitTravelStep < Struct.new(
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
        options[:distance] = nil unless options.key?(:distance)
        options[:duration] = nil unless options.key?(:duration)
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
    #   <p>Travel mode options when the provided travel mode is <code>Car</code>.</p>
    #   @return [Types::RouteCarOptions]
    # @!attribute pedestrian
    #   <p>Travel mode options when the provided travel mode is <code>Pedestrian</code>.</p>
    #   @return [Types::RoutePedestrianOptions]
    # @!attribute scooter
    #   <p>Travel mode options when the provided travel mode is <code>Scooter</code>. </p> <note> <p>When travel mode is set to <code>Scooter</code>, then the avoidance option <code>ControlledAccessHighways</code> defaults to <code>true</code>.</p> </note>
    #   @return [Types::RouteScooterOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
    #   @return [Types::RouteTruckOptions]
    # @!attribute intermodal
    #   <p>Travel mode options when the provided travel mode is <code>Intermodal</code>.</p> <note> <p>Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> </note>
    #   @return [Types::RouteIntermodalOptions]
    # @!attribute transit
    #   <p>Travel mode options when the provided travel mode is <code>Transit</code>.</p> <note> <p>Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers.</p> </note>
    #   @return [Types::RouteTransitOptions]
    class RouteTravelModeOptions < Struct.new(
      nil,
      :car,
      :pedestrian,
      :scooter,
      :truck,
      :intermodal,
      :transit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Travel mode options when the provided travel mode is <code>Truck</code>. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    # @!attribute axle_count
    #   <p>Total number of axles of the vehicle.</p>
    #   @return [Integer]
    # @!attribute engine_type
    #   <p>Engine type of the vehicle.</p>
    #   @return [String]
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
    #   <p>Maximum speed</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Float]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default value: <code>1</code> </p>
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
    #   <p>The type of truck: <code>LightTruck</code> for smaller delivery vehicles, <code> StraightTruck</code> for rigid body trucks, or <code>Tractor</code> for tractor-trailer combinations.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute weight_per_axle_group
    #   <p>Specifies the total weight for the specified axle group. Meant for usage in countries that have different regulations based on the axle group type.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
        options[:gross_weight] = 0 unless options.key?(:gross_weight)
        options[:height] = 0 unless options.key?(:height)
        options[:height_above_first_axle] = 0 unless options.key?(:height_above_first_axle)
        options[:kpra_length] = 0 unless options.key?(:kpra_length)
        options[:length] = 0 unless options.key?(:length)
        options[:max_speed] = nil unless options.key?(:max_speed)
        options[:payload_capacity] = 0 unless options.key?(:payload_capacity)
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

    # <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    # @!attribute charge_step_details
    #   <p>Details that are specific to a Charge step.</p> <p> <b>Unit</b>: <code>KwH </code> </p>
    #   @return [Types::RouteChargeStepDetails]
    # @!attribute duration
    #   <p>Duration of the step.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute instruction
    #   <p>Brief description of the step in the requested language.</p> <note> <p>Only available when the TravelStepType is Default.</p> </note>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the step.</p>
    #   @return [String]
    class RouteVehicleAfterTravelStep < Struct.new(
      nil,
      :charge_step_details,
      :duration,
      :instruction,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = nil unless options.key?(:duration)
        super
      end
    end

    # <p>Details corresponding to the arrival for a leg.</p>
    # @!attribute place
    #   <p>Place details corresponding to the arrival.</p>
    #   @return [Types::RouteVehiclePlace]
    # @!attribute time
    #   <p>The arrival time.</p>
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
    #   <p>Place details corresponding to the departure.</p>
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
    # @!attribute after_travel_steps
    #   <p>Steps of a leg that must be performed after the travel portion of the leg.</p>
    #   @return [Array<Types::RouteVehicleAfterTravelStep>]
    # @!attribute arrival
    #   <p>Details corresponding to the arrival for the leg.</p>
    #   @return [Types::RouteVehicleArrival]
    # @!attribute departure
    #   <p>Details corresponding to the departure for the leg.</p>
    #   @return [Types::RouteVehicleDeparture]
    # @!attribute incidents
    #   <p> Incidents corresponding to this leg of the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteVehicleIncident>]
    # @!attribute notices
    #   <p> Notices are additional information returned that indicate issues that occurred during route calculation. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteVehicleNotice>]
    # @!attribute pass_through_waypoints
    #   <p>Waypoints that were passed through during the leg. This includes the waypoints that were configured with the PassThrough option.</p>
    #   @return [Array<Types::RoutePassThroughWaypoint>]
    # @!attribute spans
    #   <p> Spans that were computed for the requested SpanAdditionalFeatures. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteVehicleSpan>]
    # @!attribute summary
    #   <p>Summarized details of the leg.</p>
    #   @return [Types::RouteVehicleSummary]
    # @!attribute tolls
    #   <p> Toll related options. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteToll>]
    # @!attribute toll_systems
    #   <p> Toll systems are authorities that collect payments for the toll. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteTollSystem>]
    # @!attribute travel_steps
    #   <p>Steps of a leg that must be performed before the travel portion of the leg.</p>
    #   @return [Array<Types::RouteVehicleTravelStep>]
    # @!attribute truck_road_types
    #   <p> Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [Array<String>]
    # @!attribute zones
    #   <p> Zones corresponding to this leg of the route. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Array<Types::RouteZone>]
    class RouteVehicleLegDetails < Struct.new(
      nil,
      :after_travel_steps,
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

      def initialize(options = {})
        options[:after_travel_steps] = [] unless options.key?(:after_travel_steps)
        super
      end
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

    # <p>Summary including duration and distance for the entire leg.</p>
    # @!attribute best_case_duration
    #   <p>Total duration in free flowing traffic, which is the best case or shortest duration possible to cover the leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute distance
    #   <p>Distance of the entire leg.</p> <p> <b>Unit</b>: <code>meters</code> </p>
    #   @return [Integer]
    # @!attribute duration
    #   <p>Duration of the entire leg.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
    #   @return [Integer]
    # @!attribute typical_duration
    #   <p>Duration of the leg under typical traffic congestion.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute side_of_street
    #   <p>Options to configure matching the provided position to a side of the street.</p>
    #   @return [String]
    # @!attribute waypoint_index
    #   <p>Index of the waypoint in the request.</p>
    #   @return [Integer]
    # @!attribute access_point_details
    #   <p>Details of the access point.</p>
    #   @return [Types::RouteAccessPointDetails]
    # @!attribute station_details
    #   <p>Details about the station.</p>
    #   @return [Types::RouteStationDetails]
    # @!attribute type
    #   <p>The type of the place.</p>
    #   @return [String]
    class RouteVehiclePlace < Struct.new(
      nil,
      :name,
      :original_position,
      :position,
      :side_of_street,
      :waypoint_index,
      :access_point_details,
      :station_details,
      :type,
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
    #   <p>Dynamic speed details corresponding to the span.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
    #   @return [Types::RouteSpanDynamicSpeedDetails]
    # @!attribute functional_classification
    #   <p>A numerical value indicating the functional classification of the road segment corresponding to the span.</p> <p>Classification values are part of the hierarchical network that helps determine a logical and efficient route, and have the following definitions:</p> <ol> <li> <p>Roads that allow for high volume, maximum speed traffic movement between and through major metropolitan areas.</p> </li> <li> <p>Roads that are used to channel traffic to functional class 1 roads for travel between and through cities in the shortest amount of time.</p> </li> <li> <p>Roads that intersect functional class 2 roads and provide a high volume of traffic movement at a lower level of mobility than functional class 2 roads.</p> </li> <li> <p>Roads that provide for a high volume of traffic movement at moderate speeds between neighborhoods.</p> </li> <li> <p>Roads with volume and traffic movement below the level of any other functional class.</p> </li> </ol>
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
    #   <p>Speed limit details corresponding to the span.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
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
    #   <p>Duration of the leg under typical traffic congestion.</p> <p> <b>Unit</b>: <code>seconds</code> </p>
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
    #   <p>The maximum weight of the route.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Types::RouteWeightConstraint]
    # @!attribute max_weight_per_axle
    #   <p>The maximum weight per axle of the vehicle.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute max_weight_per_axle_group
    #   <p>The maximum weight per axle group of the vehicle.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Types::WeightPerAxleGroup]
    # @!attribute max_width
    #   <p>The maximum width of the vehicle.</p>
    #   @return [Integer]
    # @!attribute occupancy
    #   <p>The number of occupants in the vehicle.</p> <p>Default value: <code>1</code> </p>
    #   @return [Types::RouteNoticeDetailRange]
    # @!attribute restricted_times
    #   <p>Access radius restrictions based on time.</p>
    #   @return [String]
    # @!attribute time_dependent
    #   <p>The time dependent constraint.</p>
    #   @return [Boolean]
    # @!attribute trailer_count
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default value: <code>0</code> </p>
    #   @return [Types::RouteNoticeDetailRange]
    # @!attribute travel_mode
    #   <p>Travel mode corresponding to the leg.</p>
    #   @return [Boolean]
    # @!attribute truck_road_type
    #   <p>Truck road type identifiers. <code>BK1</code> through <code>BK4</code> apply only to Sweden. <code>A2,A4,B2,B4,C,D,ET2,ET4</code> apply only to Mexico.</p> <note> <p>There are currently no other supported values as of 26th April 2024.</p> </note>
    #   @return [String]
    # @!attribute truck_type
    #   <p>The type of truck: <code>LightTruck</code> for smaller delivery vehicles, <code> StraightTruck</code> for rigid body trucks, or <code>Tractor</code> for tractor-trailer combinations.</p>
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
    #   <p> Avoids actions for the provided distance. This is typically to consider for users in moving vehicles who may not have sufficient time to make an action at an origin or a destination. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Integer]
    # @!attribute avoid_u_turns
    #   <p> Avoid U-turns for calculation on highways and motorways. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute heading
    #   <p> GPS Heading at the position. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Float]
    # @!attribute matching
    #   <p> Options to configure matching the provided position to the road network. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteMatchingOptions]
    # @!attribute pass_through
    #   <p> If the waypoint should not be treated as a stop. If yes, the waypoint is passed through and doesn't split the route into different legs. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Boolean]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute side_of_street
    #   <p> Options to configure matching the provided position to a side of the street. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p>
    #   @return [Types::RouteSideOfStreetOptions]
    # @!attribute stop_duration
    #   <p> Duration of the stop. Not supported in <code>ap-southeast-1</code> and <code>ap-southeast-5</code> regions for <a href="https://docs.aws.amazon.com/location/latest/developerguide/GrabMaps.html">GrabMaps</a> customers. </p> <p> <b>Unit</b>: <code>seconds</code> </p>
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

    # <p>The URL to an external resource.</p>
    # @!attribute anchor_text
    #   <p>The interactive or clickable portion of the text.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Text describing the URL.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>Device type for which the link is intended.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the link.</p>
    #   @return [String]
    class RouteWebLink < Struct.new(
      nil,
      :anchor_text,
      :description,
      :device_type,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The weight constraint for the route.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    # @!attribute type
    #   <p>The type of constraint.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The constraint value.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
    #   <p>Chooses what the returned SnappedGeometry format should be.</p> <p>Default value: <code>FlexiblePolyline</code> </p>
    #   @return [String]
    # @!attribute snap_radius
    #   <p>The radius around the provided tracepoint that is considered for snapping.</p> <p> <b>Unit</b>: <code>meters</code> </p> <p>Default value: <code>300</code> </p>
    #   @return [Integer]
    # @!attribute trace_points
    #   <p>List of trace points to be snapped onto the road network.</p>
    #   @return [Array<Types::RoadSnapTracePoint>]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed of travel and road compatibility.</p> <p>Default value: <code>Car</code> </p>
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
        options[:driving_distance] = 5 unless options.key?(:driving_distance)
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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
    #   <p>Estimated time of departure from the origin.</p> <p>Time format:<code>YYYY-MM-DDThh:mm:ss.sssZ | YYYY-MM-DDThh:mm:ss.sss+hh:mm</code> </p> <p>Examples:</p> <p> <code>2020-04-22T17:57:24Z</code> </p> <p> <code>2020-04-22T17:57:24+02:00</code> </p>
    #   @return [String]
    # @!attribute id
    #   <p>The waypoint Id.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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
    #   <p>Walking speed.</p> <p> <b>Unit</b>: <code>kilometers per hour</code> </p>
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
    #   @return [Array<Float>]
    # @!attribute use_with
    #   <p>Strategy that defines when the side of street position should be used. AnyStreet will always use the provided position.</p> <p>Default value: <code>DividedStreetOnly</code> </p>
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
    #   <p>Determines if traffic should be used or ignored while calculating the route.</p> <p>Default value: <code>UseTrafficData</code> </p>
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
    #   <p>Number of trailers attached to the vehicle.</p> <p>Default value: <code>0</code> </p>
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
    #   <p>Travel mode options when the provided travel mode is <code>Pedestrian</code>.</p>
    #   @return [Types::WaypointOptimizationPedestrianOptions]
    # @!attribute truck
    #   <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
    #   @return [Types::WaypointOptimizationTruckOptions]
    class WaypointOptimizationTravelModeOptions < Struct.new(
      nil,
      :pedestrian,
      :truck,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Travel mode options when the provided travel mode is <code>Truck</code>.</p>
    # @!attribute gross_weight
    #   <p>Gross weight of the vehicle including trailers, and goods at capacity.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
    #   <p>The type of truck: <code>LightTruck</code> for smaller delivery vehicles, <code> StraightTruck</code> for rigid body trucks, or <code>Tractor</code> for tractor-trailer combinations.</p>
    #   @return [String]
    # @!attribute tunnel_restriction_code
    #   <p>The tunnel restriction code.</p> <p>Tunnel categories in this list indicate the restrictions which apply to certain tunnels in Great Britain. They relate to the types of dangerous goods that can be transported through them.</p> <ul> <li> <p> <i>Tunnel Category B</i> </p> <ul> <li> <p> <i>Risk Level</i>: Limited risk</p> </li> <li> <p> <i>Restrictions</i>: Few restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category C</i> </p> <ul> <li> <p> <i>Risk Level</i>: Medium risk</p> </li> <li> <p> <i>Restrictions</i>: Some restrictions</p> </li> </ul> </li> <li> <p> <i>Tunnel Category D</i> </p> <ul> <li> <p> <i>Risk Level</i>: High risk</p> </li> <li> <p> <i>Restrictions</i>: Many restrictions occur</p> </li> </ul> </li> <li> <p> <i>Tunnel Category E</i> </p> <ul> <li> <p> <i>Risk Level</i>: Very high risk</p> </li> <li> <p> <i>Restrictions</i>: Restricted tunnel</p> </li> </ul> </li> </ul>
    #   @return [String]
    # @!attribute weight_per_axle
    #   <p>Heaviest weight per axle irrespective of the axle type or the axle group. Meant for usage in countries where the differences in axle types or axle groups are not distinguished.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
    #   <p>Position in World Geodetic System (WGS 84) format: [longitude, latitude].</p>
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

    # <p>Specifies the total weight for different axle group configurations. Used in regions where regulations set different weight limits based on axle group types.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    # @!attribute single
    #   <p>Total weight in kilograms for single axle configurations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute tandem
    #   <p>Total weight in kilograms for tandem (two adjacent) axle configurations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute triple
    #   <p>Total weight in kilograms for triple (three adjacent) axle configurations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute quad
    #   <p>Total weight in kilograms for quad (four adjacent) axle configurations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
    #   @return [Integer]
    # @!attribute quint
    #   <p>Total weight in kilograms for quint (five adjacent) axle configurations.</p> <p> <b>Unit</b>: <code>kilograms</code> </p>
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
