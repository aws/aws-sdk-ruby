# frozen_string_literal: true

# This is generated code!

module Aws::Location
  # This module contains the types returned by client operations.
  module Types

    # <p>The request was denied because of insufficient access or permissions. Check with an
    #       administrator to verify your permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options for filtering API keys.</p>
    # @!attribute key_status
    #   <p>Filter on <code>Active</code> or <code>Expired</code> API keys.</p>
    #   @return [String]
    class ApiKeyFilter < Struct.new(
      :key_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>API Restrictions on the allowed actions, resources, and referers for an API key
    #             resource.</p>
    # @!attribute allow_actions
    #   <p>A list of allowed actions that an API key resource grants permissions to
    #               perform. You must have at least one action for each type of resource. For example,
    #               if you have a place resource, you must include at least one place action.</p>
    #            <p>The following are valid values for the actions.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Map actions</b>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>geo:GetMap*</code> - Allows all actions needed for map rendering.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-maps:GetTile</code> - Allows retrieving map tiles.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-maps:GetStaticMap</code> - Allows retrieving static map images.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-maps:*</code> - Allows all actions related to map functionalities.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Place actions</b>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>geo:SearchPlaceIndexForText</code> - Allows geocoding.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo:SearchPlaceIndexForPosition</code> - Allows reverse geocoding.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo:SearchPlaceIndexForSuggestions</code> - Allows generating suggestions from text.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetPlace</code> - Allows finding a place by place ID.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:Geocode</code> - Allows geocoding using place information.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:ReverseGeocode</code> - Allows reverse geocoding from location coordinates.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:SearchNearby</code> - Allows searching for places near a location.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:SearchText</code> - Allows searching for places based on text input.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:Autocomplete</code> - Allows auto-completion of place names based on text input.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:Suggest</code> - Allows generating suggestions for places based on partial input.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:GetPlace</code> - Allows finding a place by its ID.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-places:*</code> - Allows all actions related to place services.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Route actions</b>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>geo:CalculateRoute</code> - Allows point to point routing.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo:CalculateRouteMatrix</code> - Allows calculating a matrix of routes.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-routes:CalculateRoutes</code> - Allows calculating multiple routes between points.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-routes:CalculateRouteMatrix</code> - Allows calculating a matrix of routes between points.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-routes:CalculateIsolines</code> - Allows calculating isolines for a given area.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-routes:OptimizeWaypoints</code> - Allows optimizing the order of waypoints in a route.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-routes:SnapToRoads</code> - Allows snapping a route to the nearest roads.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>geo-routes:*</code> - Allows all actions related to routing functionalities.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>You must use these strings exactly. For example, to provide access to map 
    #                   rendering, the only valid action is <code>geo:GetMap*</code> as an input to 
    #                   the list. <code>["geo:GetMap*"]</code> is valid but
    #                       <code>["geo:GetMapTile"]</code> is not. Similarly, you cannot use
    #                   <code>["geo:SearchPlaceIndexFor*"]</code> - you must list each of the Place
    #                   actions separately.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute allow_resources
    #   <p>A list of allowed resource ARNs that a API key bearer can perform actions on.</p>
    #            <ul>
    #               <li>
    #                  <p>The ARN must be the correct ARN for a map, place, or route ARN. You may 
    #                       include wildcards in the resource-id to match multiple resources of the 
    #                       same type.</p>
    #               </li>
    #               <li>
    #                  <p>The resources must be in the same <code>partition</code>, 
    #                       <code>region</code>, and <code>account-id</code> as the key that is being 
    #                       created.</p>
    #               </li>
    #               <li>
    #                  <p>Other than wildcards, you must include the full ARN, including the 
    #                       <code>arn</code>, <code>partition</code>, <code>service</code>,
    #                       <code>region</code>, <code>account-id</code> and <code>resource-id</code>
    #                       delimited by colons (:).</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed, even with wildcards. For example,
    #                       <code>arn:aws:geo:region:<i>account-id</i>:map/ExampleMap*</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names
    #               (ARNs)</a>.</p>
    #   @return [Array<String>]
    # @!attribute allow_referers
    #   <p>An optional list of allowed HTTP referers for which requests must originate from.
    #               Requests using this API key from other domains will not be allowed.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9) or any symbols in this
    #                       list <code>$\-._+!*`(),;/?:@=&amp;</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>May contain a percent (%) if followed by 2 hexadecimal digits (A-F, a-f, 0-9);
    #                       this is used for URL encoding purposes.</p>
    #               </li>
    #               <li>
    #                  <p>May contain wildcard characters question mark (?) and asterisk (*).</p>
    #                  <p>Question mark (?) will replace any single character (including hexadecimal
    #                       digits).</p>
    #                  <p>Asterisk (*) will replace any multiple characters (including multiple
    #                       hexadecimal digits).</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>https://example.com</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class ApiKeyRestrictions < Struct.new(
      :allow_actions,
      :allow_resources,
      :allow_referers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be associated with a geofence collection.</p>
    #   @return [String]
    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker
    #               resource. Used when you need to specify a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateTrackerConsumerInput < Struct.new(
      :tracker_name,
      :consumer_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateTrackerConsumerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the tracker resource details.</p>
    # @!attribute device_id
    #   <p>The ID of the device for this position.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains the batch request error details associated with the request.</p>
    #   @return [Types::BatchItemError]
    class BatchDeleteDevicePositionHistoryError < Struct.new(
      :device_id,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to delete the device position history from.</p>
    #   @return [String]
    # @!attribute device_ids
    #   <p>Devices whose position history you want to delete.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>“DeviceIds” : [DeviceId1,DeviceId2]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class BatchDeleteDevicePositionHistoryInput < Struct.new(
      :tracker_name,
      :device_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Contains error details for each device history that failed to delete.</p>
    #   @return [Array<Types::BatchDeleteDevicePositionHistoryError>]
    class BatchDeleteDevicePositionHistoryOutput < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for each geofence that failed to delete from the geofence
    #             collection.</p>
    # @!attribute geofence_id
    #   <p>The geofence associated with the error message.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains details associated to the batch error.</p>
    #   @return [Types::BatchItemError]
    class BatchDeleteGeofenceError < Struct.new(
      :geofence_id,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection storing the geofences to be deleted.</p>
    #   @return [String]
    # @!attribute geofence_ids
    #   <p>The batch of geofences to be deleted.</p>
    #   @return [Array<String>]
    class BatchDeleteGeofenceInput < Struct.new(
      :collection_name,
      :geofence_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Contains error details for each geofence that failed to delete.</p>
    #   @return [Array<Types::BatchDeleteGeofenceError>]
    class BatchDeleteGeofenceOutput < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for each device that failed to evaluate its position against
    #             the geofences in a given geofence collection.</p>
    # @!attribute device_id
    #   <p>The device associated with the position evaluation error.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>Specifies a timestamp for when the error occurred in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute error
    #   <p>Contains details associated to the batch error.</p>
    #   @return [Types::BatchItemError]
    class BatchEvaluateGeofencesError < Struct.new(
      :device_id,
      :sample_time,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection used in evaluating the position of devices against its
    #               geofences.</p>
    #   @return [String]
    # @!attribute device_position_updates
    #   <p>Contains device details for each device to be evaluated against the given geofence
    #               collection.</p>
    #   @return [Array<Types::DevicePositionUpdate>]
    class BatchEvaluateGeofencesInput < Struct.new(
      :collection_name,
      :device_position_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Contains error details for each device that failed to evaluate its position against
    #               the given geofence collection.</p>
    #   @return [Array<Types::BatchEvaluateGeofencesError>]
    class BatchEvaluateGeofencesOutput < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for each device that didn't return a position.</p>
    # @!attribute device_id
    #   <p>The ID of the device that didn't return a position.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains details related to the error code.</p>
    #   @return [Types::BatchItemError]
    class BatchGetDevicePositionError < Struct.new(
      :device_id,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource retrieving the device position.</p>
    #   @return [String]
    # @!attribute device_ids
    #   <p>Devices whose position you want to retrieve.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, for two devices:
    #                      <code>device-ids=DeviceId1&amp;device-ids=DeviceId2</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class BatchGetDevicePositionInput < Struct.new(
      :tracker_name,
      :device_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Contains  error details for each device that failed to send its position to the tracker
    #               resource.</p>
    #   @return [Array<Types::BatchGetDevicePositionError>]
    # @!attribute device_positions
    #   <p>Contains device position details such as the device ID, position, and timestamps for
    #               when the position was received and sampled.</p>
    #   @return [Array<Types::DevicePosition>]
    class BatchGetDevicePositionOutput < Struct.new(
      :errors,
      :device_positions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the batch request error details associated with the request.</p>
    # @!attribute code
    #   <p>The error code associated with the batch request error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message with the reason for the batch request error.</p>
    #   @return [String]
    class BatchItemError < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error details for each geofence that failed to be stored in a given geofence
    #             collection.</p>
    # @!attribute geofence_id
    #   <p>The geofence associated with the error message.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains details associated to the batch error.</p>
    #   @return [Types::BatchItemError]
    class BatchPutGeofenceError < Struct.new(
      :geofence_id,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection storing the geofences.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>The batch of geofences to be stored in a geofence collection.</p>
    #   @return [Array<Types::BatchPutGeofenceRequestEntry>]
    class BatchPutGeofenceInput < Struct.new(
      :collection_name,
      :entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successes
    #   <p>Contains each geofence that was successfully stored in a geofence collection.</p>
    #   @return [Array<Types::BatchPutGeofenceSuccess>]
    # @!attribute errors
    #   <p>Contains additional error details for each geofence that failed to be stored in a
    #               geofence collection.</p>
    #   @return [Array<Types::BatchPutGeofenceError>]
    class BatchPutGeofenceOutput < Struct.new(
      :successes,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains geofence geometry details. </p>
    # @!attribute geofence_id
    #   <p>The identifier for the geofence to be stored in a given geofence collection.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Contains the details to specify the position of the geofence. Can be a circle, a
    #               polygon, or a multipolygon. <code>Polygon</code> and <code>MultiPolygon</code>
    #               geometries can be defined using their respective parameters, or encoded in Geobuf format
    #               using the <code>Geobuf</code> parameter. Including multiple geometry types in the same
    #               request will return a validation error.</p>
    #            <note>
    #               <p>The geofence <code>Polygon</code> and <code>MultiPolygon</code> formats support a
    #                   maximum of 1,000 total vertices. The <code>Geobuf</code> format supports a maximum
    #                   of 100,000 vertices.</p>
    #            </note>
    #   @return [Types::GeofenceGeometry]
    # @!attribute geofence_properties
    #   <p>Associates one of more properties with the geofence. A property is a key-value pair
    #               stored with the geofence and added to any geofence event triggered with that
    #               geofence.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class BatchPutGeofenceRequestEntry < Struct.new(
      :geofence_id,
      :geometry,
      :geofence_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of each geofence that was successfully stored in a given geofence
    #             collection.</p>
    # @!attribute geofence_id
    #   <p>The geofence successfully stored in a geofence collection.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence was stored in a geofence collection in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the geofence was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    class BatchPutGeofenceSuccess < Struct.new(
      :geofence_id,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains  error details for each device that failed to update its position.</p>
    # @!attribute device_id
    #   <p>The device associated with the failed location update.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute error
    #   <p>Contains details related to the error code such as the error code and error
    #               message.</p>
    #   @return [Types::BatchItemError]
    class BatchUpdateDevicePositionError < Struct.new(
      :device_id,
      :sample_time,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to update.</p>
    #   @return [String]
    # @!attribute updates
    #   <p>Contains the position update details for each device, up to 10 devices.</p>
    #   @return [Array<Types::DevicePositionUpdate>]
    class BatchUpdateDevicePositionInput < Struct.new(
      :tracker_name,
      :updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>Contains  error details for each device that failed to update its position.</p>
    #   @return [Array<Types::BatchUpdateDevicePositionError>]
    class BatchUpdateDevicePositionOutput < Struct.new(
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about additional route preferences for requests that specify
    #                 <code>TravelMode</code> as <code>Car</code>.</p>
    # @!attribute avoid_ferries
    #   <p>Avoids ferries when calculating routes.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute avoid_tolls
    #   <p>Avoids tolls when calculating routes.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    class CalculateRouteCarModeOptions < Struct.new(
      :avoid_ferries,
      :avoid_tolls,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route.
    #           </p>
    #   @return [String]
    # @!attribute departure_position
    #   <p>The start position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>[-123.115, 49.285]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you specify a departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. If Esri is the provider for your route calculator,
    #                   specifying a route that is longer than 400 km returns a <code>400
    #                       RoutesValidationException</code> error.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #   @return [Array<Float>]
    # @!attribute destination_position
    #   <p>The finish position for the route. Defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World Geodetic
    #               System (WGS 84)</a> format:
    #                   <code>[longitude, latitude]</code>.</p>
    #            <ul>
    #               <li>
    #                  <p> For example, <code>[-122.339, 47.615]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you specify a destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #   @return [Array<Float>]
    # @!attribute waypoint_positions
    #   <p>Specifies an ordered list of up to 23 intermediate positions to include along a route
    #               between the departure position and destination position. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, from the <code>DeparturePosition</code>
    #                     <code>[-123.115, 49.285]</code>, the route follows the order that the waypoint
    #                       positions are given <code>[[-122.757, 49.0021],[-122.349, 47.620]]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you specify a waypoint position that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">moves the position
    #                       to the nearest road</a>. </p>
    #               <p>Specifying more than 23 waypoints returns a <code>400 ValidationException</code>
    #                   error.</p>
    #               <p>If Esri is the provider for your route calculator, specifying a route that is
    #                   longer than 400 km returns a <code>400 RoutesValidationException</code>
    #                   error.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #   @return [Array<Array<Float>>]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility. You can choose <code>Car</code>, <code>Truck</code>, 
    #               <code>Walking</code>, <code>Bicycle</code> or <code>Motorcycle</code> as options for 
    #               the <code>TravelMode</code>.</p>
    #            <note>
    #               <p>
    #                  <code>Bicycle</code> and <code>Motorcycle</code> are only valid when using Grab as
    #                   a data provider, and only within Southeast Asia.</p>
    #               <p>
    #                  <code>Truck</code> is not available for Grab.</p>
    #               <p>For more details on the using Grab for routing, including areas of coverage, see
    #                       <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    #            </note>
    #            <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #            <ul>
    #               <li>
    #                  <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                  <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #            <p>Default Value: <code>Car</code>
    #            </p>
    #   @return [String]
    # @!attribute departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route.
    #               Otherwise, the best time of day to travel with the best traffic conditions is used to
    #               calculate the route.</p>
    #            <ul>
    #               <li>
    #                  <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate a
    #               route. Otherwise, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    #   @return [String]
    # @!attribute include_leg_geometry
    #   <p>Set to include the geometry details in the result for each path between a pair of
    #               positions.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    #   @return [Types::CalculateRouteCarModeOptions]
    # @!attribute truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    #   @return [Types::CalculateRouteTruckModeOptions]
    # @!attribute arrival_time
    #   <p>Specifies the desired time of arrival. Uses the given time to calculate the route. 
    #               Otherwise, the best time of day to travel with the best traffic conditions is used to calculate the route.</p>
    #            <note>
    #               <p>ArrivalTime is not supported Esri.</p>
    #            </note>
    #   @return [Time]
    # @!attribute optimize_for
    #   <p>Specifies the distance to optimize for when calculating a route.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class CalculateRouteInput < Struct.new(
      :calculator_name,
      :departure_position,
      :destination_position,
      :waypoint_positions,
      :travel_mode,
      :departure_time,
      :depart_now,
      :distance_unit,
      :include_leg_geometry,
      :car_mode_options,
      :truck_mode_options,
      :arrival_time,
      :optimize_for,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource that you want to use to calculate the route
    #               matrix. </p>
    #   @return [String]
    # @!attribute departure_positions
    #   <p>The list of departure (origin) positions for the route matrix. An array of points,
    #               each of which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-123.115,
    #               49.285]</code>.</p>
    #            <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html#matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #            </important>
    #            <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   departure that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDeparturePositions</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #   @return [Array<Array<Float>>]
    # @!attribute destination_positions
    #   <p>The list of destination positions for the route matrix. An array of points, each of
    #               which is itself a 2-value array defined in <a href="https://earth-info.nga.mil/GandG/wgs84/index.html">WGS 84</a> format:
    #                   <code>[longitude, latitude]</code>. For example, <code>[-122.339,
    #               47.615]</code>
    #            </p>
    #            <important>
    #               <p>Depending on the data provider selected in the route calculator resource there may
    #                   be additional restrictions on the inputs you can choose. See <a href="https://docs.aws.amazon.com/location/previous/developerguide/calculate-route-matrix.html#matrix-routing-position-limits"> Position restrictions</a> in the <i>Amazon Location Service Developer
    #                       Guide</i>.</p>
    #            </important>
    #            <note>
    #               <p>For route calculators that use Esri as the data provider, if you specify a
    #                   destination that's not located on a road, Amazon Location <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html"> moves the
    #                       position to the nearest road</a>. The snapped value is available in the
    #                   result in <code>SnappedDestinationPositions</code>.</p>
    #            </note>
    #            <p>Valid Values: <code>[-180 to 180,-90 to 90]</code>
    #            </p>
    #   @return [Array<Array<Float>>]
    # @!attribute travel_mode
    #   <p>Specifies the mode of transport when calculating a route. Used in estimating the speed
    #               of travel and road compatibility.</p>
    #            <p>The <code>TravelMode</code> you specify also determines how you specify route
    #               preferences: </p>
    #            <ul>
    #               <li>
    #                  <p>If traveling by <code>Car</code> use the <code>CarModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #               <li>
    #                  <p>If traveling by <code>Truck</code> use the <code>TruckModeOptions</code>
    #                       parameter.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <code>Bicycle</code> or <code>Motorcycle</code> are only valid when using
    #                       <code>Grab</code> as a data provider, and only within Southeast Asia.</p>
    #               <p>
    #                  <code>Truck</code> is not available for Grab.</p>
    #               <p>For more information about using Grab as a data provider, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a> in the <i>Amazon Location Service Developer Guide</i>.</p>
    #            </note>
    #            <p>Default Value: <code>Car</code>
    #            </p>
    #   @return [String]
    # @!attribute departure_time
    #   <p>Specifies the desired time of departure. Uses the given time to calculate the route
    #               matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>. If
    #               neither is set, the best time of day to travel with the best traffic conditions is used
    #               to calculate the route matrix.</p>
    #            <note>
    #               <p>Setting a departure time in the past returns a <code>400
    #                       ValidationException</code> error.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>In <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
    #                           8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
    #                           <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute depart_now
    #   <p>Sets the time of departure as the current time. Uses the current time to calculate the
    #               route matrix. You can't set both <code>DepartureTime</code> and <code>DepartNow</code>.
    #               If neither is set, the best time of day to travel with the best traffic conditions is
    #               used to calculate the route matrix.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute distance_unit
    #   <p>Set the unit system to specify the distance.</p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    #   @return [String]
    # @!attribute car_mode_options
    #   <p>Specifies route preferences when traveling by <code>Car</code>, such as avoiding
    #               routes that use ferries or tolls.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Car</code>.</p>
    #   @return [Types::CalculateRouteCarModeOptions]
    # @!attribute truck_mode_options
    #   <p>Specifies route preferences when traveling by <code>Truck</code>, such as avoiding
    #               routes that use ferries or tolls, and truck specifications to consider when choosing an
    #               optimal road.</p>
    #            <p>Requirements: <code>TravelMode</code> must be specified as <code>Truck</code>.</p>
    #   @return [Types::CalculateRouteTruckModeOptions]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class CalculateRouteMatrixInput < Struct.new(
      :calculator_name,
      :departure_positions,
      :destination_positions,
      :travel_mode,
      :departure_time,
      :depart_now,
      :distance_unit,
      :car_mode_options,
      :truck_mode_options,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the result of the route matrix calculation.</p>
    # @!attribute route_matrix
    #   <p>The calculated route matrix containing the results for all pairs of
    #                   <code>DeparturePositions</code> to <code>DestinationPositions</code>. Each row
    #               corresponds to one entry in <code>DeparturePositions</code>. Each entry in the row
    #               corresponds to the route from that entry in <code>DeparturePositions</code> to an entry
    #               in <code>DestinationPositions</code>. </p>
    #   @return [Array<Array<Types::RouteMatrixEntry>>]
    # @!attribute snapped_departure_positions
    #   <p>For routes calculated using an Esri route calculator resource, departure positions are
    #               snapped to the closest road. For Esri route calculator resources, this returns the list
    #               of departure/origin positions used for calculation of the
    #               <code>RouteMatrix</code>.</p>
    #   @return [Array<Array<Float>>]
    # @!attribute snapped_destination_positions
    #   <p>The list of destination positions for the route matrix used for calculation of the
    #                   <code>RouteMatrix</code>.</p>
    #   @return [Array<Array<Float>>]
    # @!attribute summary
    #   <p>Contains information about the route matrix, <code>DataSource</code>,
    #                   <code>DistanceUnit</code>, <code>RouteCount</code> and
    #               <code>ErrorCount</code>.</p>
    #   @return [Types::CalculateRouteMatrixSummary]
    class CalculateRouteMatrixOutput < Struct.new(
      :route_matrix,
      :snapped_departure_positions,
      :snapped_destination_positions,
      :summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the calculated route matrix.</p>
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data used to calculate the routes.
    #               Indicates one of the available providers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data
    #                   providers</a>.</p>
    #   @return [String]
    # @!attribute route_count
    #   <p>The count of cells in the route matrix. Equal to the number of
    #                   <code>DeparturePositions</code> multiplied by the number of
    #                   <code>DestinationPositions</code>.</p>
    #   @return [Integer]
    # @!attribute error_count
    #   <p>The count of error results in the route matrix. If this number is 0, all routes were
    #               calculated successfully.</p>
    #   @return [Integer]
    # @!attribute distance_unit
    #   <p>The unit of measurement for route distances.</p>
    #   @return [String]
    class CalculateRouteMatrixSummary < Struct.new(
      :data_source,
      :route_count,
      :error_count,
      :distance_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the result of the route calculation. Metadata includes legs and route
    #             summary.</p>
    # @!attribute legs
    #   <p>Contains details about each path between a pair of positions included along a route
    #               such as: <code>StartPosition</code>, <code>EndPosition</code>, <code>Distance</code>,
    #                   <code>DurationSeconds</code>, <code>Geometry</code>, and <code>Steps</code>. The
    #               number of legs returned corresponds to one fewer than the total number of positions in
    #               the request. </p>
    #            <p>For example, a route with a departure position and destination position returns one
    #               leg with the positions <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">snapped to a nearby
    #                   road</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>StartPosition</code> is the departure position.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>EndPosition</code> is the destination position.</p>
    #               </li>
    #            </ul>
    #            <p>A route with a waypoint between the departure and destination position returns two
    #               legs with the positions snapped to a nearby road:</p>
    #            <ul>
    #               <li>
    #                  <p>Leg 1: The <code>StartPosition</code> is the departure position . The
    #                           <code>EndPosition</code> is the waypoint positon.</p>
    #               </li>
    #               <li>
    #                  <p>Leg 2: The <code>StartPosition</code> is the waypoint position. The
    #                           <code>EndPosition</code> is the destination position.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Leg>]
    # @!attribute summary
    #   <p>Contains information about the whole route, such as: <code>RouteBBox</code>,
    #                   <code>DataSource</code>, <code>Distance</code>, <code>DistanceUnit</code>, and
    #                   <code>DurationSeconds</code>.</p>
    #   @return [Types::CalculateRouteSummary]
    class CalculateRouteOutput < Struct.new(
      :legs,
      :summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the calculated route.</p>
    # @!attribute route_b_box
    #   <p>Specifies a geographical box surrounding a route. Used to zoom into a route when
    #               displaying it in a map. For example, <code>[min x, min y, max x, max y]</code>.</p>
    #            <p>The first 2 <code>bbox</code> parameters describe the lower southwest corner: </p>
    #            <ul>
    #               <li>
    #                  <p>The first <code>bbox</code> position is the X coordinate or longitude of the
    #                       lower southwest corner. </p>
    #               </li>
    #               <li>
    #                  <p>The second <code>bbox</code> position is the Y coordinate or latitude of the
    #                       lower southwest corner. </p>
    #               </li>
    #            </ul>
    #            <p>The next 2 <code>bbox</code> parameters describe the upper northeast corner: </p>
    #            <ul>
    #               <li>
    #                  <p>The third <code>bbox</code> position is the X coordinate, or longitude of the
    #                       upper northeast corner. </p>
    #               </li>
    #               <li>
    #                  <p>The fourth <code>bbox</code> position is the Y coordinate, or latitude of the
    #                       upper northeast corner. </p>
    #               </li>
    #            </ul>
    #   @return [Array<Float>]
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data used to calculate the route.
    #               Indicates one of the available providers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute distance
    #   <p>The total distance covered by the route. The sum of the distance travelled between
    #               every stop on the route.</p>
    #            <note>
    #               <p>If Esri is the data source for the route calculator, the route distance can’t be
    #                   greater than 400 km. If the route exceeds 400 km, the response is a <code>400
    #                       RoutesValidationException</code> error.</p>
    #            </note>
    #   @return [Float]
    # @!attribute duration_seconds
    #   <p>The total travel time for the route measured in seconds. The sum of the travel time
    #               between every stop on the
    #               route.</p>
    #   @return [Float]
    # @!attribute distance_unit
    #   <p>The unit of measurement for route distances.</p>
    #   @return [String]
    class CalculateRouteSummary < Struct.new(
      :route_b_box,
      :data_source,
      :distance,
      :duration_seconds,
      :distance_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about additional route preferences for requests that specify
    #                 <code>TravelMode</code> as <code>Truck</code>.</p>
    # @!attribute avoid_ferries
    #   <p>Avoids ferries when calculating routes.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute avoid_tolls
    #   <p>Avoids tolls when calculating routes.</p>
    #            <p>Default Value: <code>false</code>
    #            </p>
    #            <p>Valid Values: <code>false</code> | <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute dimensions
    #   <p>Specifies the truck's dimension specifications including length, height, width, and
    #               unit of measurement. Used to avoid roads that can't support the truck's
    #               dimensions.</p>
    #   @return [Types::TruckDimensions]
    # @!attribute weight
    #   <p>Specifies the truck's weight specifications including total weight and unit of
    #               measurement. Used to avoid roads that can't support the truck's weight.</p>
    #   @return [Types::TruckWeight]
    class CalculateRouteTruckModeOptions < Struct.new(
      :avoid_ferries,
      :avoid_tolls,
      :dimensions,
      :weight,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The cellular network communication infrastructure that the device uses.</p>
    # @!attribute lte_cell_details
    #   <p>Information about the Long-Term Evolution (LTE) network the device is connected to.</p>
    #   @return [Array<Types::LteCellDetails>]
    class CellSignals < Struct.new(
      :lte_cell_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A circle on the earth, as defined by a center point and a radius.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute center
    #   <p>A single point geometry, specifying the center of the circle, using <a href="https://gisgeography.com/wgs84-world-geodetic-system/">WGS 84</a>
    #               coordinates, in the form <code>[longitude, latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute radius
    #   <p>The radius of the circle in meters. Must be greater than zero and no 
    #               larger than 100,000 (100 kilometers).</p>
    #   @return [Float]
    class Circle < Struct.new(
      :center,
      :radius,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was unsuccessful because of a conflict.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>A custom name for the geofence collection.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique geofence collection name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleGeofenceCollection</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the geofence collection.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Applies one or more tags to the geofence collection. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services KMS customer
    #                   managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN. </p>
    #   @return [String]
    class CreateGeofenceCollectionInput < Struct.new(
      :collection_name,
      :pricing_plan,
      :pricing_plan_data_source,
      :description,
      :tags,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name for the geofence collection.</p>
    #   @return [String]
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection resource. Used when you
    #               need to specify a resource across all Amazon Web Services. </p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence collection was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    class CreateGeofenceCollectionOutput < Struct.new(
      :collection_name,
      :collection_arn,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>A custom name for the API key resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique API key name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleAPIKey</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute restrictions
    #   <p>The API key restrictions for the API key resource.</p>
    #   @return [Types::ApiKeyRestrictions]
    # @!attribute description
    #   <p>An optional description for the API key resource.</p>
    #   @return [String]
    # @!attribute expire_time
    #   <p>The optional timestamp for when the API key resource will expire in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. One of <code>NoExpiry</code> or
    #                   <code>ExpireTime</code> must be set.</p>
    #   @return [Time]
    # @!attribute no_expiry
    #   <p>Optionally set to <code>true</code> to set no expiration time for the API key. One of
    #                   <code>NoExpiry</code> or <code>ExpireTime</code> must be set.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Applies one or more tags to the map resource. A tag is a key-value pair that helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class CreateKeyInput < Struct.new(
      :key_name,
      :restrictions,
      :description,
      :expire_time,
      :no_expiry,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The key value/string of an API key. This value is used when making API calls to
    #               authorize the call. For example, see <a href="https://docs.aws.amazon.com/location/previous/APIReference/API_GetMapGlyphs.html">GetMapGlyphs</a>.</p>
    #   @return [String]
    # @!attribute key_arn
    #   <p>The Amazon Resource Name (ARN) for the API key resource. Used when you need to specify
    #               a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:key/ExampleKey</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the API key resource.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the API key resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class CreateKeyOutput < Struct.new(
      :key,
      :key_arn,
      :key_name,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The name for the map resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods (.), and underscores (_). </p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique map resource name. </p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleMap</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies the <code>MapConfiguration</code>, including the map style, for the 
    #               map resource that you create. The map style defines the look of maps and the data 
    #               provider for your map resource.</p>
    #   @return [Types::MapConfiguration]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the map resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Applies one or more tags to the map resource. A tag is a key-value pair helps manage,
    #               identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length:  256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters: + - = . _ : /
    #                       @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class CreateMapInput < Struct.new(
      :map_name,
      :configuration,
      :pricing_plan,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource.</p>
    #   @return [String]
    # @!attribute map_arn
    #   <p>The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across
    #               all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:map/ExampleMap</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the map resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    class CreateMapOutput < Struct.new(
      :map_name,
      :map_arn,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource. </p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-), periods
    #                       (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique place index resource name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExamplePlaceIndex</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_source
    #   <p>Specifies the geospatial data provider for the new place index.</p>
    #            <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error.</p>
    #            </note>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm">Esri details on geocoding coverage</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code> – Grab provides place index functionality for Southeast 
    #                       Asia. For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a>' coverage, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area">GrabMaps countries and areas covered</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html">HERE details on goecoding coverage</a>.</p>
    #                  <important>
    #                     <p>If you specify HERE Technologies (<code>Here</code>) as the data provider,
    #                           you may not <a href="https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html">store results</a> for locations in Japan. For more information, see
    #                           the <a href="http://aws.amazon.com/service-terms/">Amazon Web Services service
    #                               terms</a> for Amazon Location Service.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #            <p>For additional information , see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service developer guide</i>.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the place index resource.</p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>Specifies the data storage option requesting Places.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute tags
    #   <p>Applies one or more tags to the place index resource. A tag is a key-value pair that
    #               helps you manage, identify, search, and filter your resources.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                  <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @</p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class CreatePlaceIndexInput < Struct.new(
      :index_name,
      :data_source,
      :pricing_plan,
      :description,
      :data_source_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name for the place index resource.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) for the place index resource. Used to specify a
    #               resource across Amazon Web Services. </p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the place index resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class CreatePlaceIndexOutput < Struct.new(
      :index_name,
      :index_arn,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource. </p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-), periods (.),
    #                       and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique Route calculator resource name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleRouteCalculator</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_source
    #   <p>Specifies the data provider of traffic and road network data.</p>
    #            <note>
    #               <p>This field is case-sensitive. Enter the valid values as shown. For example,
    #                   entering <code>HERE</code> returns an error.</p>
    #            </note>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri</a>'s coverage in your region of interest, see <a href="https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm">Esri details on street networks and traffic coverage</a>.</p>
    #                  <p>Route calculators that use Esri as a
    #                       data source only calculate routes that are shorter than 400 km.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code> – Grab provides routing functionality for Southeast Asia.
    #                       For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a>' coverage,
    #                       see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area">GrabMaps
    #                           countries and areas covered</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code> – For additional information about <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE
    #                           Technologies</a>' coverage in your region of interest, see <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/car-routing.html">HERE car routing coverage</a> and <a href="https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/truck-routing.html">HERE truck routing coverage</a>.</p>
    #               </li>
    #            </ul>
    #            <p>For additional information , see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Data
    #                   providers</a> on the <i>Amazon Location Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the route calculator resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Applies one or more tags to the route calculator resource. A tag is a key-value pair
    #               helps manage, identify, search, and filter your resources by labelling them.</p>
    #            <ul>
    #               <li>
    #                  <p>For example: { <code>"tag1" : "value1"</code>, <code>"tag2" :
    #                       "value2"</code>}</p>
    #               </li>
    #            </ul>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class CreateRouteCalculatorInput < Struct.new(
      :calculator_name,
      :data_source,
      :pricing_plan,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>ExampleRouteCalculator</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute calculator_arn
    #   <p>The Amazon Resource Name (ARN) for the route calculator resource. Use the ARN when you
    #               specify a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:route-calculator/ExampleCalculator</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp when the route calculator resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class CreateRouteCalculatorOutput < Struct.new(
      :calculator_name,
      :calculator_arn,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name for the tracker resource.</p>
    #            <p>Requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-), periods (.), and underscores (_).</p>
    #               </li>
    #               <li>
    #                  <p>Must be a unique tracker resource name.</p>
    #               </li>
    #               <li>
    #                  <p>No spaces allowed. For example, <code>ExampleTracker</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #              <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>A key identifier for an 
    #              <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services 
    #                  KMS customer managed key</a>. Enter a key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the tracker resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Applies one or more tags to the tracker resource. A tag is a key-value pair helps
    #               manage, identify, search, and filter your resources by labelling them.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource</p>
    #               </li>
    #               <li>
    #                  <p>Each resource tag must be unique with a maximum of one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @. </p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute position_filtering
    #   <p>Specifies the position filtering for the tracker resource.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TimeBased</code> - Location updates are evaluated against linked geofence collections, 
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds, 
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are 
    #                       ignored. Location updates within this area are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This can reduce the effects of GPS noise
    #                       when displaying device trajectories on a map, and can help control your costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #            <p>This field is optional. If not specified, the default value is <code>TimeBased</code>.</p>
    #   @return [String]
    # @!attribute event_bridge_enabled
    #   <p>Whether to enable position <code>UPDATE</code> events from this tracker to be sent to 
    #               EventBridge.</p>
    #            <note>
    #               <p>You do not need enable this feature to get <code>ENTER</code> and 
    #                   <code>EXIT</code> events for geofences with this tracker. Those events are
    #                   always sent to EventBridge.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute kms_key_enable_geospatial_queries
    #   <p>Enables <code>GeospatialQueries</code> for a tracker that uses a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services
    #               KMS customer managed key</a>.</p>
    #            <p>This parameter is only used if you are using a KMS customer managed key.</p>
    #            <note>
    #               <p>If you wish to encrypt your data using your own KMS customer managed key, then the Bounding Polygon Queries feature will be disabled by default. 
    #                   This is because by using this feature, a representation of your device positions will not be encrypted using the your KMS managed key. The exact device position, however; is still encrypted using your managed key.</p>
    #               <p>You can choose to opt-in to the Bounding Polygon Quseries feature. This is done by setting the <code>KmsKeyEnableGeospatialQueries</code> parameter to 
    #                   true when creating or updating a Tracker.</p>
    #            </note>
    #   @return [Boolean]
    class CreateTrackerInput < Struct.new(
      :tracker_name,
      :pricing_plan,
      :kms_key_id,
      :pricing_plan_data_source,
      :description,
      :tags,
      :position_filtering,
      :event_bridge_enabled,
      :kms_key_enable_geospatial_queries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #   @return [String]
    # @!attribute tracker_arn
    #   <p>The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify
    #               a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:tracker/ExampleTracker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the tracker resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class CreateTrackerOutput < Struct.new(
      :tracker_name,
      :tracker_arn,
      :create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the data storage option chosen for requesting Places.</p>
    #          <important>
    #             <p>When using Amazon Location Places:</p>
    #             <ul>
    #                <li>
    #                   <p>If using HERE Technologies as a data provider, you can't store results for
    #                         locations in Japan by setting <code>IntendedUse</code> to
    #                             <code>Storage</code>. parameter.</p>
    #                </li>
    #                <li>
    #                   <p>Under the <code>MobileAssetTracking</code> or
    #                             <code>MobilAssetManagement</code> pricing plan, you can't store results
    #                         from your place index resources by setting <code>IntendedUse</code> to
    #                             <code>Storage</code>. This returns a validation exception error.</p>
    #                </li>
    #             </ul>
    #             <p>For more information, see the <a href="https://aws.amazon.com/service-terms/">AWS Service Terms</a> for Amazon Location Service.</p>
    #          </important>
    # @!attribute intended_use
    #   <p>Specifies how the results of an operation will be stored by the caller. </p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SingleUse</code> specifies that the results won't be stored. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage</code> specifies that the result can be cached or stored in a
    #                       database.</p>
    #               </li>
    #            </ul>
    #            <p>Default value: <code>SingleUse</code>
    #            </p>
    #   @return [String]
    class DataSourceConfiguration < Struct.new(
      :intended_use,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection to be deleted.</p>
    #   @return [String]
    class DeleteGeofenceCollectionInput < Struct.new(
      :collection_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteGeofenceCollectionOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>The name of the API key to delete.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>ForceDelete bypasses an API key's expiry conditions and deletes the key. Set the parameter <code>true</code> to delete the key or to <code>false</code> to not preemptively delete the API key.</p>
    #            <p>Valid values: <code>true</code>, or <code>false</code>.</p>
    #            <p>Required: No</p>
    #            <note>
    #               <p>This action is irreversible. Only use ForceDelete if you are certain the key is no longer in use.</p>
    #            </note>
    #   @return [Boolean]
    class DeleteKeyInput < Struct.new(
      :key_name,
      :force_delete,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteKeyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource to be deleted.</p>
    #   @return [String]
    class DeleteMapInput < Struct.new(
      :map_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMapOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource to be deleted.</p>
    #   @return [String]
    class DeletePlaceIndexInput < Struct.new(
      :index_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePlaceIndexOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource to be deleted.</p>
    #   @return [String]
    class DeleteRouteCalculatorInput < Struct.new(
      :calculator_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteRouteCalculatorOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be deleted.</p>
    #   @return [String]
    class DeleteTrackerInput < Struct.new(
      :tracker_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTrackerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #   @return [String]
    class DescribeGeofenceCollectionInput < Struct.new(
      :collection_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #   @return [String]
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection resource. Used when you
    #               need to specify a resource across all Amazon Web Services. </p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the geofence collection.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services KMS customer
    #                   managed key</a> assigned to the Amazon Location resource</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Displays the key, value pairs of tags associated with this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the geofence collection was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute geofence_count
    #   <p>The number of geofences in the geofence collection.</p>
    #   @return [Integer]
    class DescribeGeofenceCollectionOutput < Struct.new(
      :collection_name,
      :collection_arn,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :kms_key_id,
      :tags,
      :create_time,
      :update_time,
      :geofence_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>The name of the API key resource.</p>
    #   @return [String]
    class DescribeKeyInput < Struct.new(
      :key_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The key value/string of an API key.</p>
    #   @return [String]
    # @!attribute key_arn
    #   <p>The Amazon Resource Name (ARN) for the API key resource. Used when you need to specify
    #               a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:key/ExampleKey</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the API key resource.</p>
    #   @return [String]
    # @!attribute restrictions
    #   <p>API Restrictions on the allowed actions, resources, and referers for an API key
    #               resource.</p>
    #   @return [Types::ApiKeyRestrictions]
    # @!attribute create_time
    #   <p>The timestamp for when the API key resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute expire_time
    #   <p>The timestamp for when the API key resource will expire in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the API key resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute description
    #   <p>The optional description for the API key resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the API key resource.</p>
    #   @return [Hash<String, String>]
    class DescribeKeyOutput < Struct.new(
      :key,
      :key_arn,
      :key_name,
      :restrictions,
      :create_time,
      :expire_time,
      :update_time,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource.</p>
    #   @return [String]
    class DescribeMapInput < Struct.new(
      :map_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The map style selected from an available provider.</p>
    #   @return [String]
    # @!attribute map_arn
    #   <p>The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across
    #               all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:map/ExampleMap</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute data_source
    #   <p>Specifies the data provider for the associated map tiles.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specifies the map tile style selected from a partner data provider.</p>
    #   @return [Types::MapConfiguration]
    # @!attribute description
    #   <p>The optional description for the map resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the map resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute create_time
    #   <p>The timestamp for when the map resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the map resource was last update in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    class DescribeMapOutput < Struct.new(
      :map_name,
      :map_arn,
      :pricing_plan,
      :data_source,
      :configuration,
      :description,
      :tags,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource.</p>
    #   @return [String]
    class DescribePlaceIndexInput < Struct.new(
      :index_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource being described.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) for the place index resource. Used to specify a
    #               resource across Amazon Web Services. </p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the place index resource.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the place index resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the place index resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute data_source
    #   <p>The data provider of geospatial data. Values can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>The specified data storage option for requesting Places.</p>
    #   @return [Types::DataSourceConfiguration]
    # @!attribute tags
    #   <p>Tags associated with place index resource.</p>
    #   @return [Hash<String, String>]
    class DescribePlaceIndexOutput < Struct.new(
      :index_name,
      :index_arn,
      :pricing_plan,
      :description,
      :create_time,
      :update_time,
      :data_source,
      :data_source_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource.</p>
    #   @return [String]
    class DescribeRouteCalculatorInput < Struct.new(
      :calculator_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource being described.</p>
    #   @return [String]
    # @!attribute calculator_arn
    #   <p>The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you
    #               specify a resource across Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:route-calculator/ExampleCalculator</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>The optional description of the route calculator resource.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp when the route calculator resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp when the route calculator resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data. Indicates one of the available
    #               providers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with route calculator resource.</p>
    #   @return [Hash<String, String>]
    class DescribeRouteCalculatorOutput < Struct.new(
      :calculator_name,
      :calculator_arn,
      :pricing_plan,
      :description,
      :create_time,
      :update_time,
      :data_source,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #   @return [String]
    class DescribeTrackerInput < Struct.new(
      :tracker_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #   @return [String]
    # @!attribute tracker_arn
    #   <p>The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify
    #               a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:tracker/ExampleTracker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the tracker resource.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the tracker resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute create_time
    #   <p>The timestamp for when the tracker resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the tracker resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>A key identifier for an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services
    #               KMS customer managed key</a> assigned to the Amazon Location resource.</p>
    #   @return [String]
    # @!attribute position_filtering
    #   <p>The position filtering method of the tracker resource.</p>
    #   @return [String]
    # @!attribute event_bridge_enabled
    #   <p>Whether <code>UPDATE</code> events from this tracker in EventBridge are
    #               enabled. If set to <code>true</code> these events will be sent to EventBridge.</p>
    #   @return [Boolean]
    # @!attribute kms_key_enable_geospatial_queries
    #   <p>Enables <code>GeospatialQueries</code> for a tracker that uses a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services
    #               KMS customer managed key</a>.</p>
    #            <p>This parameter is only used if you are using a KMS customer managed key.</p>
    #            <note>
    #               <p>If you wish to encrypt your data using your own KMS customer managed key, then the Bounding Polygon Queries feature will be disabled by default. 
    #                   This is because by using this feature, a representation of your device positions will not be encrypted using the your KMS managed key. The exact device position, however; is still encrypted using your managed key.</p>
    #               <p>You can choose to opt-in to the Bounding Polygon Quseries feature. This is done by setting the <code>KmsKeyEnableGeospatialQueries</code> parameter to 
    #                   true when creating or updating a Tracker.</p>
    #            </note>
    #   @return [Boolean]
    class DescribeTrackerOutput < Struct.new(
      :tracker_name,
      :tracker_arn,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :tags,
      :create_time,
      :update_time,
      :kms_key_id,
      :position_filtering,
      :event_bridge_enabled,
      :kms_key_enable_geospatial_queries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the device position details.</p>
    # @!attribute device_id
    #   <p>The device whose position you retrieved.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute received_time
    #   <p>The timestamp for when the tracker resource received the device position in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute position
    #   <p>The last known device position.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #   @return [Types::PositionalAccuracy]
    # @!attribute position_properties
    #   <p>The properties associated with the position.</p>
    #   @return [Hash<String, String>]
    class DevicePosition < Struct.new(
      :device_id,
      :sample_time,
      :received_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the position update details for a device.</p>
    # @!attribute device_id
    #   <p>The device associated to the position update.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute position
    #   <p>The latest device position defined in <a href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">WGS 84</a> format:
    #               <code>[X or longitude, Y or latitude]</code>.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #   @return [Types::PositionalAccuracy]
    # @!attribute position_properties
    #   <p>Associates one of more properties with the position update. A property is a key-value
    #               pair stored with the position update and added to any geofence event the update may
    #               trigger.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class DevicePositionUpdate < Struct.new(
      :device_id,
      :sample_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The device's position, IP address, and Wi-Fi access points.</p>
    # @!attribute device_id
    #   <p>The device identifier.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #              format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute position
    #   <p>The last known device position.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>Defines the level of certainty of the position.</p>
    #   @return [Types::PositionalAccuracy]
    # @!attribute ipv4_address
    #   <p>The device's Ipv4 address.</p>
    #   @return [String]
    # @!attribute wi_fi_access_points
    #   <p>The Wi-Fi access points the device is using.</p>
    #   @return [Array<Types::WiFiAccessPoint>]
    # @!attribute cell_signals
    #   <p>The cellular network infrastructure that the device is connected to.</p>
    #   @return [Types::CellSignals]
    class DeviceState < Struct.new(
      :device_id,
      :sample_time,
      :position,
      :accuracy,
      :ipv4_address,
      :wi_fi_access_points,
      :cell_signals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be dissociated from the consumer.</p>
    #   @return [String]
    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) for the geofence collection to be disassociated from
    #               the tracker resource. Used when you need to specify a resource across all Amazon Web Services. </p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DisassociateTrackerConsumerInput < Struct.new(
      :tracker_name,
      :consumer_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateTrackerConsumerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The device's position and speed.</p>
    # @!attribute position
    #   <p>The device's position.</p>
    #   @return [Array<Float>]
    # @!attribute speed
    #   <p>The device's speed.</p>
    #   @return [Float]
    class ForecastGeofenceEventsDeviceState < Struct.new(
      :position,
      :speed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #   @return [String]
    # @!attribute device_state
    #   <p>Represents the device's state, including its current position and speed. When speed is
    #               omitted, this API performs a <i>containment check</i>. The
    #                   <i>containment check</i> operation returns <code>IDLE</code> events
    #               for geofences where the device is currently inside of, but no other events.</p>
    #   @return [Types::ForecastGeofenceEventsDeviceState]
    # @!attribute time_horizon_minutes
    #   <p>The forward-looking time window for forecasting, specified in minutes. The API only
    #               returns events that are predicted to occur within this time horizon. When no value is
    #               specified, this API performs a <i>containment check</i>. The
    #                   <i>containment check</i> operation returns <code>IDLE</code> events
    #               for geofences where the device is currently inside of, but no other events.</p>
    #   @return [Float]
    # @!attribute distance_unit
    #   <p>The distance unit used for the <code>NearestDistance</code> property returned in a
    #               forecasted event. The measurement system must match for <code>DistanceUnit</code> and
    #                   <code>SpeedUnit</code>; if <code>Kilometers</code> is specified for
    #                   <code>DistanceUnit</code>, then <code>SpeedUnit</code> must be
    #                   <code>KilometersPerHour</code>. </p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    #   @return [String]
    # @!attribute speed_unit
    #   <p>The speed unit for the device captured by the device state. The measurement system
    #               must match for <code>DistanceUnit</code> and <code>SpeedUnit</code>; if
    #                   <code>Kilometers</code> is specified for <code>DistanceUnit</code>, then
    #                   <code>SpeedUnit</code> must be <code>KilometersPerHour</code>.</p>
    #            <p>Default Value: <code>KilometersPerHour</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call.</p>
    #            <p>Default value: <code>20</code>
    #            </p>
    #   @return [Integer]
    class ForecastGeofenceEventsRequest < Struct.new(
      :collection_name,
      :device_state,
      :time_horizon_minutes,
      :distance_unit,
      :speed_unit,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute forecasted_events
    #   <p>The list of forecasted events.</p>
    #   @return [Array<Types::ForecastedEvent>]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #   @return [String]
    # @!attribute distance_unit
    #   <p>The distance unit for the forecasted events.</p>
    #   @return [String]
    # @!attribute speed_unit
    #   <p>The speed unit for the forecasted events.</p>
    #   @return [String]
    class ForecastGeofenceEventsResponse < Struct.new(
      :forecasted_events,
      :next_token,
      :distance_unit,
      :speed_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A forecasted event represents a geofence event in relation to the requested device
    #             state, that may occur given the provided device state and time horizon.</p>
    # @!attribute event_id
    #   <p>The forecasted event identifier.</p>
    #   @return [String]
    # @!attribute geofence_id
    #   <p>The geofence identifier pertaining to the forecasted event.</p>
    #   @return [String]
    # @!attribute is_device_in_geofence
    #   <p>Indicates if the device is located within the geofence.</p>
    #   @return [Boolean]
    # @!attribute nearest_distance
    #   <p>The closest distance from the device's position to the geofence.</p>
    #   @return [Float]
    # @!attribute event_type
    #   <p>The event type, forecasting three states for which a device can be in relative to a
    #               geofence:</p>
    #            <p>
    #               <code>ENTER</code>: If a device is outside of a geofence, but would breach the fence
    #               if the device is moving at its current speed within time horizon window.</p>
    #            <p>
    #               <code>EXIT</code>: If a device is inside of a geofence, but would breach the fence if
    #               the device is moving at its current speed within time horizon window.</p>
    #            <p>
    #               <code>IDLE</code>: If a device is inside of a geofence, and the device is not
    #               moving.</p>
    #   @return [String]
    # @!attribute forecasted_breach_time
    #   <p>The forecasted time the device will breach the geofence in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute geofence_properties
    #   <p>The geofence properties.</p>
    #   @return [Hash<String, String>]
    class ForecastedEvent < Struct.new(
      :event_id,
      :geofence_id,
      :is_device_in_geofence,
      :nearest_distance,
      :event_type,
      :forecasted_breach_time,
      :geofence_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:nearest_distance] = 0 unless options.key?(:nearest_distance)
        super
      end
    end

    # <p>Contains the geofence geometry details.</p>
    #          <p>A geofence geometry can be a circle, a polygon, or a multipolygon.
    #                 <code>Polygon</code> and <code>MultiPolygon</code> geometries can be defined using
    #             their respective parameters, or encoded in Geobuf format using the <code>Geobuf</code>
    #             parameter. Including multiple geometry types in the same request will return a
    #             validation error.</p>
    #          <note>
    #             <p>Amazon Location doesn't currently support polygons that cross the antimeridian.</p>
    #          </note>
    # @!attribute polygon
    #   <p>A <code>Polygon</code> is a list of up to 250 linear rings which represent the shape
    #               of a geofence. This list <i>must</i> include 1 exterior ring (representing
    #               the outer perimeter of the geofence), and can optionally include up to 249 interior
    #               rings (representing polygonal spaces within the perimeter, which are excluded from the
    #               geofence area).</p>
    #            <p>A linear ring is an array of 4 or more vertices, where the first and last vertex are
    #               the same (to form a closed boundary). Each vertex is a 2-dimensional point represented
    #               as an array of doubles of length 2: <code>[longitude, latitude]</code>.</p>
    #            <p>Each linear ring is represented as an array of arrays of doubles (<code>[[longitude,
    #                   latitude], [longitude, latitude], ...]</code>). The vertices for the exterior ring
    #               must be listed in <i>counter-clockwise</i> sequence. Vertices for all
    #               interior rings must be listed in <i>clockwise</i> sequence.</p>
    #            <p>The list of linear rings that describe the entire <code>Polygon</code> is represented
    #               as an array of arrays of arrays of doubles (<code>[[[longitude, latitude], [longitude,
    #                   latitude], ...], [[longitude, latitude], [longitude, latitude], ...], ...]</code>).
    #               The exterior ring must be listed first, before any interior rings.</p>
    #            <note>
    #               <p>The following additional requirements and limitations apply to geometries defined
    #                   using the <code>Polygon</code> parameter:</p>
    #               <ul>
    #                  <li>
    #                     <p>The entire <code>Polygon</code> must consist of no more than 1,000
    #                           vertices, including all vertices from the exterior ring and all interior
    #                           rings.</p>
    #                  </li>
    #                  <li>
    #                     <p>Rings must not touch or cross each other.</p>
    #                  </li>
    #                  <li>
    #                     <p>All interior rings must be fully contained within the exterior
    #                           ring.</p>
    #                  </li>
    #                  <li>
    #                     <p>Interior rings must not contain other interior rings.</p>
    #                  </li>
    #                  <li>
    #                     <p>No ring is permitted to intersect itself.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Array<Array<Float>>>]
    # @!attribute circle
    #   <p>A circle on the earth, as defined by a center point and a radius.</p>
    #   @return [Types::Circle]
    # @!attribute geobuf
    #   <p>Geobuf is a compact binary encoding for geographic data that provides lossless
    #               compression of GeoJSON polygons. The Geobuf must be Base64-encoded.</p>
    #            <p>This parameter can contain a Geobuf-encoded GeoJSON geometry object of type
    #                   <code>Polygon</code>
    #               <i>OR</i>
    #               <code>MultiPolygon</code>. For more information and specific configuration requirements
    #               for these object types, see <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_WaypointGeofencing_GeofenceGeometry.html#location-Type-WaypointGeofencing_GeofenceGeometry-Polygon">Polygon</a> and <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_WaypointGeofencing_GeofenceGeometry.html#location-Type-WaypointGeofencing_GeofenceGeometry-MultiPolygon">MultiPolygon</a>.</p>
    #            <note>
    #               <p>The following limitations apply specifically to geometries defined using the
    #                       <code>Geobuf</code> parameter, and supercede the corresponding limitations of
    #                   the <code>Polygon</code> and <code>MultiPolygon</code> parameters:</p>
    #               <ul>
    #                  <li>
    #                     <p>A <code>Polygon</code> in <code>Geobuf</code> format can have up to 25,000
    #                           rings and up to 100,000 total vertices, including all vertices from all
    #                           component rings.</p>
    #                  </li>
    #                  <li>
    #                     <p>A <code>MultiPolygon</code> in <code>Geobuf</code> format can contain up
    #                           to 10,000 <code>Polygons</code> and up to 100,000 total vertices, including
    #                           all vertices from all component <code>Polygons</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute multi_polygon
    #   <p>A <code>MultiPolygon</code> is a list of up to 250 <code>Polygon</code> elements which
    #               represent the shape of a geofence. The <code>Polygon</code> components of a
    #                   <code>MultiPolygon</code> geometry can define separate geographical areas that are
    #               considered part of the same geofence, perimeters of larger exterior areas with smaller
    #               interior spaces that are excluded from the geofence, or some combination of these use
    #               cases to form complex geofence boundaries.</p>
    #            <p>For more information and specific configuration requirements for the
    #                   <code>Polygon</code> components that form a <code>MultiPolygon</code>, see <a href="https://docs.aws.amazon.com/location/latest/APIReference/API_WaypointGeofencing_GeofenceGeometry.html#location-Type-WaypointGeofencing_GeofenceGeometry-Polygon">Polygon</a>.</p>
    #            <note>
    #               <p>The following additional requirements and limitations apply to geometries defined
    #                   using the <code>MultiPolygon</code> parameter:</p>
    #               <ul>
    #                  <li>
    #                     <p>The entire <code>MultiPolygon</code> must consist of no more than 1,000
    #                           vertices, including all vertices from all component
    #                           <code>Polygons</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>Each edge of a component <code>Polygon</code> must intersect no more than
    #                           5 edges from other <code>Polygons</code>. Parallel edges that are shared but
    #                           do not cross are not counted toward this limit.</p>
    #                  </li>
    #                  <li>
    #                     <p>The total number of intersecting edges of component <code>Polygons</code>
    #                           must be no more than 100,000. Parallel edges that are shared but do not
    #                           cross are not counted toward this limit.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Array<Array<Array<Float>>>>]
    class GeofenceGeometry < Struct.new(
      :polygon,
      :circle,
      :geobuf,
      :multi_polygon,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource receiving the request for the device position history.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The device whose position history you want to retrieve.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    # @!attribute start_time_inclusive
    #   <p>Specify the start time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be 24 hours
    #               prior to the time that the request is made.</p>
    #            <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>StartTimeInclusive</code> must be before
    #                           <code>EndTimeExclusive</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute end_time_exclusive
    #   <p>Specify the end time for the position history in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. By default, the value will be the time
    #               that the request is made.</p>
    #            <p>Requirement:</p>
    #            <ul>
    #               <li>
    #                  <p>The time specified for <code>EndTimeExclusive</code> must be after the time for
    #                           <code>StartTimeInclusive</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute max_results
    #   <p>An optional limit for the number of device positions returned in a single call.</p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    class GetDevicePositionHistoryInput < Struct.new(
      :tracker_name,
      :device_id,
      :next_token,
      :start_time_inclusive,
      :end_time_exclusive,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_positions
    #   <p>Contains the position history details for the requested device.</p>
    #   @return [Array<Types::DevicePosition>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results.</p>
    #   @return [String]
    class GetDevicePositionHistoryOutput < Struct.new(
      :device_positions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource receiving the position update.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The device whose position you want to retrieve.</p>
    #   @return [String]
    class GetDevicePositionInput < Struct.new(
      :tracker_name,
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device whose position you retrieved.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute received_time
    #   <p>The timestamp for when the tracker resource received the device position. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute position
    #   <p>The last known device position.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #   @return [Types::PositionalAccuracy]
    # @!attribute position_properties
    #   <p>The properties associated with the position.</p>
    #   @return [Hash<String, String>]
    class GetDevicePositionOutput < Struct.new(
      :device_id,
      :sample_time,
      :received_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection storing the target geofence.</p>
    #   @return [String]
    # @!attribute geofence_id
    #   <p>The geofence you're retrieving details for.</p>
    #   @return [String]
    class GetGeofenceInput < Struct.new(
      :collection_name,
      :geofence_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute geofence_id
    #   <p>The geofence identifier.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Contains the geofence geometry details describing the position of the geofence. Can be
    #               a circle, a polygon, or a multipolygon.</p>
    #   @return [Types::GeofenceGeometry]
    # @!attribute status
    #   <p>Identifies the state of the geofence. A geofence will hold one of the following
    #               states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> — The geofence has been indexed by the system. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> — The geofence is being processed by the system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> — The geofence failed to be indexed by the system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> — The geofence has been deleted from the system
    #                       index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> — The geofence is being deleted from the system
    #                       index.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence collection was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the geofence collection was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute geofence_properties
    #   <p>User defined properties of the geofence. A property is a key-value pair stored with
    #               the geofence and added to any geofence event triggered with that geofence.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class GetGeofenceOutput < Struct.new(
      :geofence_id,
      :geometry,
      :status,
      :create_time,
      :update_time,
      :geofence_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The map resource associated with the glyph ﬁle.</p>
    #   @return [String]
    # @!attribute font_stack
    #   <p>A comma-separated list of fonts to load glyphs from in order of preference. For
    #               example, <code>Noto Sans Regular, Arial Unicode</code>.</p>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri</a> styles: </p>
    #            <ul>
    #               <li>
    #                  <p>VectorEsriDarkGrayCanvas – <code>Ubuntu Medium Italic</code> | <code>Ubuntu
    #                           Medium</code> | <code>Ubuntu Italic</code> | <code>Ubuntu Regular</code> |
    #                           <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriLightGrayCanvas – <code>Ubuntu Italic</code> | <code>Ubuntu
    #                           Regular</code> | <code>Ubuntu Light</code> | <code>Ubuntu Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriTopographic – <code>Noto Sans Italic</code> | <code>Noto Sans
    #                           Regular</code> | <code>Noto Sans Bold</code> | <code>Noto Serif
    #                           Regular</code> | <code>Roboto Condensed Light Italic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriStreets – <code>Arial Regular</code> | <code>Arial Italic</code> |
    #                           <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorEsriNavigation – <code>Arial Regular</code> | <code>Arial Italic</code>
    #                       | <code>Arial Bold</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE Technologies</a> styles:</p>
    #            <ul>
    #               <li>
    #                  <p>VectorHereContrast – <code>Fira 
    #                       GO Regular</code> | <code>Fira GO Bold</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>VectorHereExplore, VectorHereExploreTruck, HybridHereExploreSatellite – 
    #                       <code>Fira GO Italic</code> | <code>Fira GO Map</code> | 
    #                       <code>Fira GO Map Bold</code> | <code>Noto Sans CJK JP Bold</code> | 
    #                       <code>Noto Sans CJK JP Light</code> | 
    #                       <code>Noto Sans CJK JP Regular</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps</a> styles:</p>
    #            <ul>
    #               <li>
    #                  <p>VectorGrabStandardLight, VectorGrabStandardDark – 
    #                       <code>Noto Sans Regular</code> |
    #                       <code>Noto Sans Medium</code> |
    #                       <code>Noto Sans Bold</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Valid font stacks for <a href="https://docs.aws.amazon.com/location/previous/developerguide/open-data.html">Open Data</a> styles:</p>
    #            <ul>
    #               <li>
    #                  <p>VectorOpenDataStandardLight, VectorOpenDataStandardDark,
    #                       VectorOpenDataVisualizationLight, VectorOpenDataVisualizationDark – 
    #                       <code>Amazon Ember Regular,Noto Sans Regular</code> |
    #                       <code>Amazon Ember Bold,Noto Sans Bold</code> | 
    #                       <code>Amazon Ember Medium,Noto Sans Medium</code> |
    #                       <code>Amazon Ember Regular Italic,Noto Sans Italic</code> | 
    #                       <code>Amazon Ember Condensed RC Regular,Noto Sans Regular</code> | 
    #                       <code>Amazon Ember Condensed RC Bold,Noto Sans Bold</code> |
    #                       <code>Amazon Ember Regular,Noto Sans Regular,Noto Sans Arabic Regular</code> |
    #                       <code>Amazon Ember Condensed RC Bold,Noto Sans Bold,Noto Sans Arabic 
    #                           Condensed Bold</code> |
    #                       <code>Amazon Ember Bold,Noto Sans Bold,Noto Sans Arabic Bold</code> |
    #                       <code>Amazon Ember Regular Italic,Noto Sans Italic,Noto Sans Arabic 
    #                           Regular</code> |
    #                       <code>Amazon Ember Condensed RC Regular,Noto Sans Regular,Noto Sans Arabic 
    #                           Condensed Regular</code> |
    #                       <code>Amazon Ember Medium,Noto Sans Medium,Noto Sans Arabic Medium</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The fonts used by the Open Data map styles are combined fonts
    #                   that use <code>Amazon Ember</code> for most glyphs but <code>Noto Sans</code> 
    #                   for glyphs unsupported by <code>Amazon Ember</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute font_unicode_range
    #   <p>A Unicode range of characters to download glyphs for. Each response will contain 256
    #               characters. For example, 0–255 includes all characters from range <code>U+0000</code> to
    #                   <code>00FF</code>. Must be aligned to multiples of 256.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class GetMapGlyphsInput < Struct.new(
      :map_name,
      :font_stack,
      :font_unicode_range,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @see https://github.com/mapbox/node-fontnik Documentation
    # @!attribute blob
    #   <p>The glyph, as binary blob.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The map glyph content type. For example, <code>application/octet-stream</code>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>The HTTP Cache-Control directive for the value.</p>
    #   @return [String]
    class GetMapGlyphsOutput < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The map resource associated with the sprite ﬁle.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The name of the sprite ﬁle. Use the following ﬁle names for the sprite sheet:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.png</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.png</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #            <p>For the JSON document containing image offsets. Use the following ﬁle names:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sprites.json</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sprites@2x.json</code> for high pixel density displays</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class GetMapSpritesInput < Struct.new(
      :map_name,
      :file_name,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>Contains the body of the sprite sheet or JSON offset ﬁle.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the sprite sheet and offsets. For example, the sprite sheet
    #               content type is <code>image/png</code>, and the sprite offset JSON document is
    #                   <code>application/json</code>. </p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>The HTTP Cache-Control directive for the value.</p>
    #   @return [String]
    class GetMapSpritesOutput < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The map resource to retrieve the style descriptor from.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class GetMapStyleDescriptorInput < Struct.new(
      :map_name,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>Contains the body of the style descriptor.</p>
    #   @see https://docs.mapbox.com/mapbox-gl-js/style-spec/ Specification
    #   @return [String]
    # @!attribute content_type
    #   <p>The style descriptor's content type. For example,
    #               <code>application/json</code>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>The HTTP Cache-Control directive for the value.</p>
    #   @return [String]
    class GetMapStyleDescriptorOutput < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The map resource to retrieve the map tiles from.</p>
    #   @return [String]
    # @!attribute z
    #   <p>The zoom value for the map tile.</p>
    #   @return [String]
    # @!attribute x
    #   <p>The X axis value for the map tile.</p>
    #   @return [String]
    # @!attribute y
    #   <p>The Y axis value for the map tile. </p>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class GetMapTileInput < Struct.new(
      :map_name,
      :z,
      :x,
      :y,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blob
    #   <p>Contains Mapbox Vector Tile (MVT) data.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The map tile's content type. For example,
    #                   <code>application/vnd.mapbox-vector-tile</code>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>The HTTP Cache-Control directive for the value.</p>
    #   @return [String]
    class GetMapTileOutput < Struct.new(
      :blob,
      :content_type,
      :cache_control,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource that you want to use for the search.</p>
    #   @return [String]
    # @!attribute place_id
    #   <p>The identifier of the place to find.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for a location around Athens,
    #               Greece, with the <code>language</code> parameter set to <code>en</code>. The
    #                   <code>city</code> in the results will most likely be returned as
    #               <code>Athens</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #                   <code>city</code> in the results will more likely be returned as
    #               <code>Αθήνα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class GetPlaceInput < Struct.new(
      :index_name,
      :place_id,
      :language,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute place
    #   <p>Details about the result, such as its address and position.</p>
    #   @return [Types::Place]
    class GetPlaceOutput < Struct.new(
      :place,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The inferred state of the device, given the provided position, IP address, cellular signals, and Wi-Fi- access points.</p>
    # @!attribute position
    #   <p>The device position inferred by the provided position, IP address, cellular signals, and Wi-Fi- access points.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>The level of certainty of the inferred position.</p>
    #   @return [Types::PositionalAccuracy]
    # @!attribute deviation_distance
    #   <p>The distance between the inferred position and the device's self-reported position.</p>
    #   @return [Float]
    # @!attribute proxy_detected
    #   <p>Indicates if a proxy was used.</p>
    #   @return [Boolean]
    class InferredState < Struct.new(
      :position,
      :accuracy,
      :deviation_distance,
      :proxy_detected,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request has failed to process because of an unknown server error, exception, or failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the calculated route's details for each path between a pair of positions. The
    #             number of legs returned corresponds to one fewer than the total number of positions in
    #             the request. </p>
    #          <p>For example, a route with a departure position and destination position returns one
    #             leg with the positions <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">snapped to a nearby
    #                 road</a>:</p>
    #          <ul>
    #             <li>
    #                <p>The <code>StartPosition</code> is the departure position.</p>
    #             </li>
    #             <li>
    #                <p>The <code>EndPosition</code> is the destination position.</p>
    #             </li>
    #          </ul>
    #          <p>A route with a waypoint between the departure and destination position returns two
    #             legs with the positions snapped to a nearby road:</p>
    #          <ul>
    #             <li>
    #                <p>Leg 1: The <code>StartPosition</code> is the departure position . The
    #                         <code>EndPosition</code> is the waypoint positon.</p>
    #             </li>
    #             <li>
    #                <p>Leg 2: The <code>StartPosition</code> is the waypoint position. The
    #                         <code>EndPosition</code> is the destination position.</p>
    #             </li>
    #          </ul>
    # @!attribute start_position
    #   <p>The starting position of the leg. Follows the format
    #               <code>[longitude,latitude]</code>.</p>
    #            <note>
    #               <p>If the <code>StartPosition</code> isn't located on a road, it's <a href="https://docs.aws.amazon.com/location/previous/developerguide/snap-to-nearby-road.html">snapped to a
    #                       nearby road</a>. </p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute end_position
    #   <p>The terminating position of the leg. Follows the format
    #                   <code>[longitude,latitude]</code>.</p>
    #            <note>
    #               <p>If the <code>EndPosition</code> isn't located on a road, it's <a href="https://docs.aws.amazon.com/location/previous/developerguide/nap-to-nearby-road.html">snapped to a nearby
    #                       road</a>. </p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The distance between the leg's <code>StartPosition</code> and <code>EndPosition</code>
    #               along a calculated route. </p>
    #            <ul>
    #               <li>
    #                  <p>The default measurement is <code>Kilometers</code> unless the request
    #                       specifies a <code>DistanceUnit</code> of <code>Miles</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute duration_seconds
    #   <p>The estimated travel time between the leg's <code>StartPosition</code> and
    #                   <code>EndPosition</code>. The travel mode and departure time that you specify in the
    #               request determines the calculated time.</p>
    #   @return [Float]
    # @!attribute geometry
    #   <p>Contains the calculated route's path as a linestring geometry.</p>
    #   @return [Types::LegGeometry]
    # @!attribute steps
    #   <p>Contains a list of steps, which represent subsections of a leg. Each step provides
    #               instructions for how to move to the next step in the leg such as the step's start
    #               position, end position, travel distance, travel duration, and geometry offset.</p>
    #   @return [Array<Types::Step>]
    class Leg < Struct.new(
      :start_position,
      :end_position,
      :distance,
      :duration_seconds,
      :geometry,
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the geometry details for each path between a pair of positions. Used in
    #             plotting a route leg on a map.</p>
    # @!attribute line_string
    #   <p>An ordered list of positions used to plot a route on a map. </p>
    #            <p>The first position is closest to the start position for the leg, and the last position
    #               is the closest to the end position for the leg.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>[[-123.117, 49.284],[-123.115, 49.285],[-123.115,
    #                           49.285]]</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Array<Float>>]
    class LegGeometry < Struct.new(
      :line_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource containing the requested devices.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional limit for the number of entries returned in a single call.</p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    # @!attribute filter_geometry
    #   <p>The geometry used to filter device positions.</p>
    #   @return [Types::TrackingFilterGeometry]
    class ListDevicePositionsInput < Struct.new(
      :tracker_name,
      :max_results,
      :next_token,
      :filter_geometry,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Contains details about each device's last known position.</p>
    #   @return [Array<Types::ListDevicePositionsResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results.</p>
    #   @return [String]
    class ListDevicePositionsOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the tracker resource details.</p>
    # @!attribute device_id
    #   <p>The ID of the device for this position.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    # @!attribute position
    #   <p>The last known device position. Empty if no positions currently stored.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>The accuracy of the device position.</p>
    #   @return [Types::PositionalAccuracy]
    # @!attribute position_properties
    #   <p>The properties associated with the position.</p>
    #   @return [Hash<String, String>]
    class ListDevicePositionsResponseEntry < Struct.new(
      :device_id,
      :sample_time,
      :position,
      :accuracy,
      :position_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    class ListGeofenceCollectionsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Lists the geofence collections that exist in your Amazon Web Services account.</p>
    #   @return [Array<Types::ListGeofenceCollectionsResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class ListGeofenceCollectionsOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the geofence collection details.</p>
    #          <note>
    #             <p>The returned geometry will always match the geometry format used when the geofence
    #                 was created.</p>
    #          </note>
    # @!attribute collection_name
    #   <p>The name of the geofence collection.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the geofence collection</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence collection was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>Specifies a timestamp for when the resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    class ListGeofenceCollectionsResponseEntry < Struct.new(
      :collection_name,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of geofences stored in a given geofence collection.</p>
    #          <note>
    #             <p>The returned geometry will always match the geometry format used when the geofence
    #                 was created.</p>
    #          </note>
    # @!attribute geofence_id
    #   <p>The geofence identifier.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Contains the geofence geometry details describing the position of the geofence. Can be
    #               a circle, a polygon, or a multipolygon.</p>
    #   @return [Types::GeofenceGeometry]
    # @!attribute status
    #   <p>Identifies the state of the geofence. A geofence will hold one of the following
    #               states:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> — The geofence has been indexed by the system. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> — The geofence is being processed by the system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> — The geofence failed to be indexed by the system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> — The geofence has been deleted from the system
    #                       index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> — The geofence is being deleted from the system
    #                       index.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence was stored in a geofence collection in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the geofence was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute geofence_properties
    #   <p>User defined properties of the geofence. A property is a key-value pair stored with
    #               the geofence and added to any geofence event triggered with that geofence.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class ListGeofenceResponseEntry < Struct.new(
      :geofence_id,
      :geometry,
      :status,
      :create_time,
      :update_time,
      :geofence_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection storing the list of geofences.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional limit for the number of geofences returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    class ListGeofencesInput < Struct.new(
      :collection_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Contains a list of geofences stored in the geofence collection.</p>
    #   @return [Array<Types::ListGeofenceResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class ListGeofencesOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    # @!attribute filter
    #   <p>Optionally filter the list to only <code>Active</code> or <code>Expired</code> API
    #               keys.</p>
    #   @return [Types::ApiKeyFilter]
    class ListKeysInput < Struct.new(
      :max_results,
      :next_token,
      :filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Contains API key resources in your Amazon Web Services account. Details include API key
    #               name, allowed referers and timestamp for when the API key will expire.</p>
    #   @return [Array<Types::ListKeysResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class ListKeysOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An API key resource listed in your Amazon Web Services account.</p>
    # @!attribute key_name
    #   <p>The name of the API key resource.</p>
    #   @return [String]
    # @!attribute expire_time
    #   <p>The timestamp for when the API key resource will expire, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The optional description for the API key resource.</p>
    #   @return [String]
    # @!attribute restrictions
    #   <p>API Restrictions on the allowed actions, resources, and referers for an API key
    #               resource.</p>
    #   @return [Types::ApiKeyRestrictions]
    # @!attribute create_time
    #   <p>The timestamp of when the API key was created, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp of when the API key was last updated, in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    class ListKeysResponseEntry < Struct.new(
      :key_name,
      :expire_time,
      :description,
      :restrictions,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    class ListMapsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Contains a list of maps in your Amazon Web Services account</p>
    #   @return [Array<Types::ListMapsResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class ListMapsOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details of an existing map resource in your Amazon Web Services account.</p>
    # @!attribute map_name
    #   <p>The name of the associated map resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the map resource.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>Specifies the data provider for the associated map tiles.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the map resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the map resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p>
    #   @return [Time]
    class ListMapsResponseEntry < Struct.new(
      :map_name,
      :description,
      :data_source,
      :pricing_plan,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the maximum number of results returned in a single call.</p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    class ListPlaceIndexesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Lists the place index resources that exist in your Amazon Web Services account</p>
    #   @return [Array<Types::ListPlaceIndexesResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating that there are additional pages available. You can use
    #               the token in a new request to fetch the next page of results.</p>
    #   @return [String]
    class ListPlaceIndexesOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A place index resource listed in your Amazon Web Services account.</p>
    # @!attribute index_name
    #   <p>The name of the place index resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the place index resource.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data provider of geospatial data. Values can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the place index resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the place index resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class ListPlaceIndexesResponseEntry < Struct.new(
      :index_name,
      :description,
      :data_source,
      :pricing_plan,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional maximum number of results returned in a single call.</p>
    #            <p>Default Value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page.</p>
    #            <p>Default Value: <code>null</code>
    #            </p>
    #   @return [String]
    class ListRouteCalculatorsInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Lists the route calculator resources that exist in your Amazon Web Services account</p>
    #   @return [Array<Types::ListRouteCalculatorsResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a subsequent request to fetch the next set of results.</p>
    #   @return [String]
    class ListRouteCalculatorsOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A route calculator resource listed in your Amazon Web Services account.</p>
    # @!attribute calculator_name
    #   <p>The name of the route calculator resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description of the route calculator resource.</p>
    #   @return [String]
    # @!attribute data_source
    #   <p>The data provider of traffic and road network data. Indicates one of the available
    #               providers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Esri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Grab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Here</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp when the route calculator resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp when the route calculator resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>2020–07-2T12:15:20.000Z+01:00</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Time]
    class ListRouteCalculatorsResponseEntry < Struct.new(
      :calculator_name,
      :description,
      :data_source,
      :pricing_plan,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags that have been applied to the specified resource. Tags are mapped from the tag
    #               key to the tag value: <code>"TagKey" : "TagValue"</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example: <code>{"tag1" : "value1", "tag2" : "value2"} </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The tracker resource whose associated geofence collections you want to list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    class ListTrackerConsumersInput < Struct.new(
      :tracker_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute consumer_arns
    #   <p>Contains the list of geofence collection ARNs associated to the tracker resource.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results. </p>
    #   @return [String]
    class ListTrackerConsumersOutput < Struct.new(
      :consumer_arns,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional limit for the number of resources returned in a single call. </p>
    #            <p>Default value: <code>100</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token specifying which page of results to return in the response. If no
    #               token is provided, the default page is the first page. </p>
    #            <p>Default value: <code>null</code>
    #            </p>
    #   @return [String]
    class ListTrackersInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>Contains tracker resources in your Amazon Web Services account. Details include tracker name,
    #               description and timestamps for when the tracker was created and last updated.</p>
    #   @return [Array<Types::ListTrackersResponseEntry>]
    # @!attribute next_token
    #   <p>A pagination token indicating there are additional pages available. You can use the
    #               token in a following request to fetch the next set of results.  </p>
    #   @return [String]
    class ListTrackersOutput < Struct.new(
      :entries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the tracker resource details.</p>
    # @!attribute tracker_name
    #   <p>The name of the tracker resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the tracker resource.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>Always returns <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. Always returns RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>No longer used. Always returns an empty string.</p>
    #   @deprecated
    #     Deprecated. Unused.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the tracker resource was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class ListTrackersResponseEntry < Struct.new(
      :tracker_name,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the Long-Term Evolution (LTE) network.</p>
    # @!attribute cell_id
    #   <p>The E-UTRAN Cell Identifier (ECI).</p>
    #   @return [Integer]
    # @!attribute mcc
    #   <p>The Mobile Country Code (MCC).</p>
    #   @return [Integer]
    # @!attribute mnc
    #   <p>The Mobile Network Code (MNC)</p>
    #   @return [Integer]
    # @!attribute local_id
    #   <p>The LTE local identification information (local ID).</p>
    #   @return [Types::LteLocalId]
    # @!attribute network_measurements
    #   <p>The network measurements.</p>
    #   @return [Array<Types::LteNetworkMeasurements>]
    # @!attribute timing_advance
    #   <p>Timing Advance (TA).</p>
    #   @return [Integer]
    # @!attribute nr_capable
    #   <p>Indicates whether the LTE object is capable of supporting NR (new radio).</p>
    #   @return [Boolean]
    # @!attribute rsrp
    #   <p>Signal power of the reference signal received, measured in decibel-milliwatts (dBm).</p>
    #   @return [Integer]
    # @!attribute rsrq
    #   <p>Signal quality of the reference Signal received, measured in decibels (dB).</p>
    #   @return [Float]
    # @!attribute tac
    #   <p>LTE Tracking Area Code (TAC).</p>
    #   @return [Integer]
    class LteCellDetails < Struct.new(
      :cell_id,
      :mcc,
      :mnc,
      :local_id,
      :network_measurements,
      :timing_advance,
      :nr_capable,
      :rsrp,
      :rsrq,
      :tac,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:cell_id] = 0 unless options.key?(:cell_id)
        super
      end
    end

    # <p>LTE local identification information (local ID).</p>
    # @!attribute earfcn
    #   <p>E-UTRA (Evolved Universal Terrestrial Radio Access) absolute radio frequency channel number (EARFCN).</p>
    #   @return [Integer]
    # @!attribute pci
    #   <p>Physical Cell ID (PCI).</p>
    #   @return [Integer]
    class LteLocalId < Struct.new(
      :earfcn,
      :pci,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:earfcn] = 0 unless options.key?(:earfcn)
        options[:pci] = 0 unless options.key?(:pci)
        super
      end
    end

    # <p>LTE network measurements.</p>
    # @!attribute earfcn
    #   <p>E-UTRA (Evolved Universal Terrestrial Radio Access) absolute radio frequency channel number (EARFCN).</p>
    #   @return [Integer]
    # @!attribute cell_id
    #   <p>E-UTRAN Cell Identifier (ECI).</p>
    #   @return [Integer]
    # @!attribute pci
    #   <p>Physical Cell ID (PCI).</p>
    #   @return [Integer]
    # @!attribute rsrp
    #   <p>Signal power of the reference signal received, measured in dBm (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute rsrq
    #   <p>Signal quality of the reference Signal received, measured in decibels (dB).</p>
    #   @return [Float]
    class LteNetworkMeasurements < Struct.new(
      :earfcn,
      :cell_id,
      :pci,
      :rsrp,
      :rsrq,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:earfcn] = 0 unless options.key?(:earfcn)
        options[:cell_id] = 0 unless options.key?(:cell_id)
        options[:pci] = 0 unless options.key?(:pci)
        super
      end
    end

    # <p>Specifies the map tile style selected from an available provider.</p>
    # @!attribute style
    #   <p>Specifies the map style selected from an available data provider.</p>
    #            <p>Valid <a href="https://docs.aws.amazon.com/location/previous/developerguide/esri.html">Esri map styles</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VectorEsriDarkGrayCanvas</code> – The Esri Dark Gray Canvas map style. A
    #                       vector basemap with a dark gray, neutral background with minimal colors, labels,
    #                       and features that's designed to draw attention to your thematic content. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RasterEsriImagery</code> – The Esri Imagery map style. A raster basemap
    #                       that provides one meter or better satellite and aerial imagery in many parts of
    #                       the world and lower resolution satellite imagery worldwide. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorEsriLightGrayCanvas</code> – The Esri Light Gray Canvas map style,
    #                       which provides a detailed vector basemap with a light gray, neutral background
    #                       style with minimal colors, labels, and features that's designed to draw
    #                       attention to your thematic content. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorEsriTopographic</code> – The Esri Light map style, which provides
    #                       a detailed vector basemap with a classic Esri map style.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorEsriStreets</code> – The Esri Street Map style, which
    #                       provides a detailed vector basemap for the world symbolized with a classic Esri
    #                       street map style. The vector tile layer is similar in content and style to the
    #                       World Street Map raster map.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorEsriNavigation</code> – The Esri Navigation map style, which
    #                       provides a detailed basemap for the world symbolized with a custom navigation
    #                       map style that's designed for use during the day in mobile devices.</p>
    #               </li>
    #            </ul>
    #            <p>Valid <a href="https://docs.aws.amazon.com/location/previous/developerguide/HERE.html">HERE
    #                   Technologies map styles</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VectorHereContrast</code> – The HERE Contrast (Berlin) map style is a 
    #                       high contrast
    #                       detailed base map of the world that blends 3D and 2D rendering.</p>
    #                  <note>
    #                     <p>The <code>VectorHereContrast</code> style has been renamed from 
    #                       <code>VectorHereBerlin</code>. 
    #                       <code>VectorHereBerlin</code> has been deprecated, but will continue to work in 
    #                       applications that use it.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorHereExplore</code> – A default HERE map style containing a 
    #                       neutral, global map and its features including roads, buildings, landmarks, 
    #                       and water features. It also now includes a fully designed map of Japan.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorHereExploreTruck</code> – A global map containing truck 
    #                       restrictions and attributes (e.g. width / height / HAZMAT) symbolized with 
    #                       highlighted segments and icons on top of HERE Explore to support use cases 
    #                       within transport and logistics.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RasterHereExploreSatellite</code> – A global map containing high
    #                       resolution satellite imagery.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HybridHereExploreSatellite</code> – A global map displaying the road 
    #                       network, street names, and city labels over satellite imagery. This style 
    #                       will automatically retrieve both raster and vector tiles, and your charges 
    #                       will be based on total tiles retrieved.</p>
    #                  <note>
    #                     <p>Hybrid styles use both vector and raster tiles when rendering the 
    #                       map that you see. This means that more tiles are retrieved than when using 
    #                       either vector or raster tiles alone. Your charges will include all tiles 
    #                       retrieved.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>Valid <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html">GrabMaps map styles</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VectorGrabStandardLight</code> – The Grab Standard Light 
    #                       map style provides a basemap with detailed land use coloring, 
    #                       area names, roads, landmarks, and points of interest covering 
    #                       Southeast Asia.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorGrabStandardDark</code> – The Grab Standard Dark 
    #                       map style provides a dark variation of the standard basemap 
    #                       covering Southeast Asia.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Grab provides maps only for countries in Southeast Asia, and is only available 
    #                   in the Asia Pacific (Singapore) Region (<code>ap-southeast-1</code>).
    #                   For more information, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/grab.html#grab-coverage-area">GrabMaps countries and area covered</a>.</p>
    #            </note>
    #            <p>Valid <a href="https://docs.aws.amazon.com/location/previous/developerguide/open-data.html">Open Data map styles</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VectorOpenDataStandardLight</code> – The Open Data Standard Light 
    #                       map style provides a detailed basemap for the world suitable for
    #                       website and mobile application use. The map includes highways major roads, 
    #                       minor roads, railways, water features, cities, parks, landmarks, building
    #                       footprints, and administrative boundaries.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorOpenDataStandardDark</code> – Open Data Standard Dark is a
    #                       dark-themed map style that provides a detailed basemap for the world 
    #                       suitable for website and mobile application use. The map includes highways 
    #                       major roads, minor roads, railways, water features, cities, parks, 
    #                       landmarks, building footprints, and administrative boundaries.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorOpenDataVisualizationLight</code> – The Open Data 
    #                       Visualization Light map style is a light-themed style with muted colors and
    #                       fewer features that aids in understanding overlaid data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VectorOpenDataVisualizationDark</code> – The Open Data 
    #                       Visualization Dark map style is a dark-themed style with muted colors and
    #                       fewer features that aids in understanding overlaid data.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute political_view
    #   <p>Specifies the political view for the style. Leave unset to not use a political 
    #               view, or, for styles that support specific political views, you can choose a view, 
    #               such as <code>IND</code> for the Indian view.</p>
    #            <p>Default is unset.</p>
    #            <note>
    #               <p>Not all map resources or styles support political view styles. See 
    #                   <a href="https://docs.aws.amazon.com/location/previous/developerguide/map-concepts.html#political-views">Political 
    #                       views</a> 
    #                   for more information.</p>
    #            </note>
    #   @return [String]
    # @!attribute custom_layers
    #   <p>Specifies the custom layers for the style. Leave unset to not enable any custom layer, or, for styles that support custom layers, you can enable layer(s), such as POI layer for the VectorEsriNavigation style.
    #   Default is <code>unset</code>.</p>
    #            <note>
    #               <p>Not all map resources or styles support custom layers. See Custom Layers for more information.</p>
    #            </note>
    #   @return [Array<String>]
    class MapConfiguration < Struct.new(
      :style,
      :political_view,
      :custom_layers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the political view for the style.</p>
    # @!attribute political_view
    #   <p>Specifies the political view for the style. Set to an empty string to not use a
    #               political view, or, for styles that support specific political views, you can choose a 
    #               view, such as <code>IND</code> for the Indian view.</p>
    #            <note>
    #               <p>Not all map resources or styles support political view styles. See 
    #                   <a href="https://docs.aws.amazon.com/location/previous/developerguide/map-concepts.html#political-views">Political 
    #                       views</a> 
    #                   for more information.</p>
    #            </note>
    #   @return [String]
    # @!attribute custom_layers
    #   <p>Specifies the custom layers for the style. Leave unset to not enable any custom layer, or, for styles that support custom layers, you can enable layer(s), such as POI layer for the VectorEsriNavigation style.
    #   Default is <code>unset</code>.</p>
    #            <note>
    #               <p>Not all map resources or styles support custom layers. See Custom Layers for more information.</p>
    #            </note>
    #   @return [Array<String>]
    class MapConfigurationUpdate < Struct.new(
      :political_view,
      :custom_layers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about addresses or points of interest that match the search
    #             criteria.</p>
    #          <p>Not all details are included with all responses. Some details may only be returned by
    #             specific data partners.</p>
    # @!attribute label
    #   <p>The full name and address of the point of interest such as a city, region, or country.
    #               For example, <code>123 Any Street, Any Town, USA</code>.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Places uses a point geometry to specify a location or a Place.</p>
    #   @return [Types::PlaceGeometry]
    # @!attribute address_number
    #   <p>The numerical portion of an address, such as a building number. </p>
    #   @return [String]
    # @!attribute street
    #   <p>The name for a street or a road to identify a location. For example, <code>Main
    #                   Street</code>.</p>
    #   @return [String]
    # @!attribute neighborhood
    #   <p>The name of a community district. For example, <code>Downtown</code>.</p>
    #   @return [String]
    # @!attribute municipality
    #   <p>A name for a local area, such as a city or town name. For example,
    #                   <code>Toronto</code>.</p>
    #   @return [String]
    # @!attribute sub_region
    #   <p>A county, or an area that's part of a larger region. For example, <code>Metro
    #                   Vancouver</code>.</p>
    #   @return [String]
    # @!attribute region
    #   <p>A name for an area or geographical division, such as a province or state name. For
    #               example, <code>British Columbia</code>.</p>
    #   @return [String]
    # @!attribute country
    #   <p>A country/region specified using <a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a> 3-digit
    #               country/region code. For example, <code>CAN</code>.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>A group of numbers and letters in a country-specific format, which accompanies the
    #               address for the purpose of identifying a location. </p>
    #   @return [String]
    # @!attribute interpolated
    #   <p>
    #               <code>True</code> if the result is interpolated from other known places.</p>
    #            <p>
    #               <code>False</code> if the Place is a known place.</p>
    #            <p>Not returned when the partner does not provide the information.</p>
    #            <p>For example, returns <code>False</code> for an address location that is found in the
    #               partner data, but returns <code>True</code> if an address does not exist in the partner
    #               data and its location is calculated by interpolating between other known addresses.
    #           </p>
    #   @return [Boolean]
    # @!attribute time_zone
    #   <p>The time zone in which the <code>Place</code> is located. Returned only when using
    #               HERE or Grab as the selected partner.</p>
    #   @return [Types::TimeZone]
    # @!attribute unit_type
    #   <p>For addresses with a <code>UnitNumber</code>, the type of unit. For example,
    #                   <code>Apartment</code>.</p>
    #            <note>
    #               <p>Returned only for a place index that uses Esri as a data provider.</p>
    #            </note>
    #   @return [String]
    # @!attribute unit_number
    #   <p>For addresses with multiple units, the unit identifier. Can include numbers and
    #               letters, for example <code>3B</code> or <code>Unit 123</code>.</p>
    #            <note>
    #               <p>Returned only for a place index that uses Esri or Grab as a data provider. Is 
    #                   not returned for <code>SearchPlaceIndexForPosition</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute categories
    #   <p>The Amazon Location categories that describe this Place.</p>
    #            <p>For more information about using categories, including a list of Amazon Location
    #               categories, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html">Categories and filtering</a>, in the <i>Amazon Location Service developer 
    #                   guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute supplemental_categories
    #   <p>Categories from the data provider that describe the Place that are not mapped
    #               to any Amazon Location categories.</p>
    #   @return [Array<String>]
    # @!attribute sub_municipality
    #   <p>An area that's part of a larger municipality. For example, <code>Blissville </code> 
    #               is a submunicipality in the Queen County in New York.</p>
    #            <note>
    #               <p>This property supported by Esri and OpenData. The Esri property is <code>district</code>, and the OpenData property is <code>borough</code>.</p>
    #            </note>
    #   @return [String]
    class Place < Struct.new(
      :label,
      :geometry,
      :address_number,
      :street,
      :neighborhood,
      :municipality,
      :sub_region,
      :region,
      :country,
      :postal_code,
      :interpolated,
      :time_zone,
      :unit_type,
      :unit_number,
      :categories,
      :supplemental_categories,
      :sub_municipality,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Places uses a point geometry to specify a location or a Place.</p>
    # @!attribute point
    #   <p>A single point geometry specifies a location for a Place using <a href="https://gisgeography.com/wgs84-world-geodetic-system/">WGS 84</a>
    #               coordinates:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>x</i> — Specifies the x coordinate or longitude. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>y</i> — Specifies the y coordinate or latitude. </p>
    #               </li>
    #            </ul>
    #   @return [Array<Float>]
    class PlaceGeometry < Struct.new(
      :point,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the level of certainty of the position.</p>
    # @!attribute horizontal
    #   <p>Estimated maximum distance, in meters, between the measured position and the true
    #               position of a device, along the Earth's surface.</p>
    #   @return [Float]
    class PositionalAccuracy < Struct.new(
      :horizontal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The geofence collection to store the geofence in.</p>
    #   @return [String]
    # @!attribute geofence_id
    #   <p>An identifier for the geofence. For example, <code>ExampleGeofence-1</code>.</p>
    #   @return [String]
    # @!attribute geometry
    #   <p>Contains the details to specify the position of the geofence. Can be a circle, a
    #               polygon, or a multipolygon. <code>Polygon</code> and <code>MultiPolygon</code>
    #               geometries can be defined using their respective parameters, or encoded in Geobuf format
    #               using the <code>Geobuf</code> parameter. Including multiple geometry types in the same
    #               request will return a validation error.</p>
    #            <note>
    #               <p>The geofence <code>Polygon</code> and <code>MultiPolygon</code> formats support a
    #                   maximum of 1,000 total vertices. The <code>Geobuf</code> format supports a maximum
    #                   of 100,000 vertices.</p>
    #            </note>
    #   @return [Types::GeofenceGeometry]
    # @!attribute geofence_properties
    #   <p>Associates one of more properties with the geofence. A property is a key-value pair
    #               stored with the geofence and added to any geofence event triggered with that
    #               geofence.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class PutGeofenceInput < Struct.new(
      :collection_name,
      :geofence_id,
      :geometry,
      :geofence_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute geofence_id
    #   <p>The geofence identifier entered in the request.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The timestamp for when the geofence was created in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The timestamp for when the geofence was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    class PutGeofenceOutput < Struct.new(
      :geofence_id,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource that you've entered was not found in your AWS account.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result for the calculated route of one <code>DeparturePosition</code>
    #             <code>DestinationPosition</code> pair.</p>
    # @!attribute distance
    #   <p>The total distance of travel for the route.</p>
    #   @return [Float]
    # @!attribute duration_seconds
    #   <p>The expected duration of travel for the route.</p>
    #   @return [Float]
    # @!attribute error
    #   <p>An error corresponding to the calculation of a route between the
    #                   <code>DeparturePosition</code> and <code>DestinationPosition</code>.</p>
    #   @return [Types::RouteMatrixEntryError]
    class RouteMatrixEntry < Struct.new(
      :distance,
      :duration_seconds,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An error corresponding to the calculation of a route between the
    #                 <code>DeparturePosition</code> and <code>DestinationPosition</code>.</p>
    #          <p>The error code can be one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>RouteNotFound</code> - Unable to find a valid route with the given
    #                     parameters.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>RouteTooLong</code> - Route calculation went beyond the maximum size of
    #                     a route and was terminated before completion.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PositionsNotFound</code> - One or more of the input positions were not
    #                     found on the route network.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DestinationPositionNotFound</code> - The destination position was not
    #                     found on the route network.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>DeparturePositionNotFound</code> - The departure position was not found
    #                     on the route network.</p>
    #             </li>
    #          </ul>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>OtherValidationError</code> - The given inputs were not valid or a route
    #                     was not found. More information is given in the error
    #                     <code>Message</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute code
    #   <p>The type of error which occurred for the route calculation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the error that occurred for the route calculation.</p>
    #   @return [String]
    class RouteMatrixEntryError < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a search result from a position search query that is run on a place index
    #             resource.</p>
    # @!attribute place
    #   <p>Details about the search result, such as its address and position.</p>
    #   @return [Types::Place]
    # @!attribute distance
    #   <p>The distance in meters of a great-circle arc between the query position and the
    #               result.</p>
    #            <note>
    #               <p>A great-circle arc is the shortest path on a sphere, in this case the Earth. This
    #                   returns the shortest distance between two locations.</p>
    #            </note>
    #   @return [Float]
    # @!attribute place_id
    #   <p>The unique identifier of the place. You can use this with the <code>GetPlace</code>
    #               operation to find the place again later.</p>
    #            <note>
    #               <p>For <code>SearchPlaceIndexForPosition</code> operations, the <code>PlaceId</code>
    #                   is returned only by place indexes that use HERE or Grab as a data provider.</p>
    #            </note>
    #   @return [String]
    class SearchForPositionResult < Struct.new(
      :place,
      :distance,
      :place_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a place suggestion resulting from a place suggestion query that is run on a
    #             place index resource.</p>
    # @!attribute text
    #   <p>The text of the place suggestion, typically formatted as an address string.</p>
    #   @return [String]
    # @!attribute place_id
    #   <p>The unique identifier of the Place. You can use this with the <code>GetPlace</code>
    #               operation to find the place again later, or to get full information for the Place.</p>
    #            <p>The <code>GetPlace</code> request must use the same <code>PlaceIndex</code> 
    #               resource as the <code>SearchPlaceIndexForSuggestions</code> that generated the Place 
    #               ID.</p>
    #            <note>
    #               <p>For <code>SearchPlaceIndexForSuggestions</code> operations, the
    #                       <code>PlaceId</code> is returned by place indexes that use Esri, Grab, or HERE
    #                   as data providers.</p>
    #            </note>
    #   @return [String]
    # @!attribute categories
    #   <p>The Amazon Location categories that describe the Place.</p>
    #            <p>For more information about using categories, including a list of Amazon Location
    #               categories, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html">Categories and filtering</a>, in the <i>Amazon Location Service developer 
    #                       guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute supplemental_categories
    #   <p>Categories from the data provider that describe the Place that are not mapped
    #               to any Amazon Location categories.</p>
    #   @return [Array<String>]
    class SearchForSuggestionsResult < Struct.new(
      :text,
      :place_id,
      :categories,
      :supplemental_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a search result from a text search query that is run on a place index
    #             resource.</p>
    # @!attribute place
    #   <p>Details about the search result, such as its address and position.</p>
    #   @return [Types::Place]
    # @!attribute distance
    #   <p>The distance in meters of a great-circle arc between the bias position specified and
    #               the result. <code>Distance</code> will be returned only if a bias position was specified
    #               in the query.</p>
    #            <note>
    #               <p>A great-circle arc is the shortest path on a sphere, in this case the Earth. This
    #                   returns the shortest distance between two locations.</p>
    #            </note>
    #   @return [Float]
    # @!attribute relevance
    #   <p>The relative confidence in the match for a result among the results returned. For
    #               example, if more fields for an address match (including house number, street, city,
    #               country/region, and postal code), the relevance score is closer to 1.</p>
    #            <p>Returned only when the partner selected is Esri or Grab.</p>
    #   @return [Float]
    # @!attribute place_id
    #   <p>The unique identifier of the place. You can use this with the <code>GetPlace</code>
    #               operation to find the place again later.</p>
    #            <note>
    #               <p>For <code>SearchPlaceIndexForText</code> operations, the <code>PlaceId</code> is
    #                   returned only by place indexes that use HERE or Grab as a data provider.</p>
    #            </note>
    #   @return [String]
    class SearchForTextResult < Struct.new(
      :place,
      :distance,
      :relevance,
      :place_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #   @return [String]
    # @!attribute position
    #   <p>Specifies the longitude and latitude of the position to query.</p>
    #            <p> This parameter must contain a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents a position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #   @return [Array<Float>]
    # @!attribute max_results
    #   <p>An optional parameter. The maximum number of results returned per request.</p>
    #            <p>Default value: <code>50</code>
    #            </p>
    #   @return [Integer]
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for a location around Athens,
    #               Greece, with the <code>language</code> parameter set to <code>en</code>. The
    #                   <code>city</code> in the results will most likely be returned as
    #               <code>Athens</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #                   <code>city</code> in the results will more likely be returned as
    #               <code>Αθήνα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class SearchPlaceIndexForPositionInput < Struct.new(
      :index_name,
      :position,
      :max_results,
      :language,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>Contains a summary of the request. Echoes the input values for <code>Position</code>,
    #                   <code>Language</code>, <code>MaxResults</code>, and the <code>DataSource</code> of
    #               the place index. </p>
    #   @return [Types::SearchPlaceIndexForPositionSummary]
    # @!attribute results
    #   <p>Returns a list of Places closest to the specified position. Each result contains
    #               additional information about the Places returned.</p>
    #   @return [Array<Types::SearchForPositionResult>]
    class SearchPlaceIndexForPositionOutput < Struct.new(
      :summary,
      :results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the request sent by using
    #             <code>SearchPlaceIndexForPosition</code>.</p>
    # @!attribute position
    #   <p>The position specified in the request.</p>
    #   @return [Array<Float>]
    # @!attribute max_results
    #   <p>Contains the optional result count limit that is specified in the request.</p>
    #            <p>Default value: <code>50</code>
    #            </p>
    #   @return [Integer]
    # @!attribute data_source
    #   <p>The geospatial data provider attached to the place index resource specified in the
    #               request. Values can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Esri</p>
    #               </li>
    #               <li>
    #                  <p>Grab</p>
    #               </li>
    #               <li>
    #                  <p>Here</p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The preferred language used to return results. Matches the language in the request.
    #               The value is a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a>
    #               language tag, for example, <code>en</code> for English.</p>
    #   @return [String]
    class SearchPlaceIndexForPositionSummary < Struct.new(
      :position,
      :max_results,
      :data_source,
      :language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The free-form partial text to use to generate place suggestions. For example,
    #                   <code>eiffel tow</code>.</p>
    #   @return [String]
    # @!attribute bias_position
    #   <p>An optional parameter that indicates a preference for place suggestions that are
    #               closer to a specified position.</p>
    #            <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #            <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute filter_b_box
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within a specified bounding box.</p>
    #            <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #            <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #            <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute filter_countries
    #   <p>An optional parameter that limits the search results by returning only suggestions
    #               within the provided list of countries.</p>
    #            <ul>
    #               <li>
    #                  <p>Use the <a href="https://www.iso.org/iso-3166-country-codes.html">ISO
    #                           3166</a> 3-digit country code. For example, Australia uses three
    #                       upper-case characters: <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #            <p>The default: <code>5</code>
    #            </p>
    #   @return [Integer]
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results. If no language is specified,
    #               or not supported for a particular result, the partner automatically chooses a language
    #               for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for <code>Athens, Gr</code>
    #               to get suggestions with the <code>language</code> parameter set to <code>en</code>. The
    #               results found will most likely be returned as <code>Athens, Greece</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα, Ελλάδα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #   @return [String]
    # @!attribute filter_categories
    #   <p>A list of one or more Amazon Location categories to filter the returned places. If you 
    #               include more than one category, the results will include results that match 
    #               <i>any</i> of the categories listed.</p>
    #            <p>For more information about using categories, including a list of Amazon Location
    #               categories, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html">Categories and filtering</a>, in the <i>Amazon Location Service developer 
    #                       guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class SearchPlaceIndexForSuggestionsInput < Struct.new(
      :index_name,
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :language,
      :filter_categories,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>Contains a summary of the request. Echoes the input values for
    #                   <code>BiasPosition</code>, <code>FilterBBox</code>, <code>FilterCountries</code>,
    #                   <code>Language</code>, <code>MaxResults</code>, and <code>Text</code>. Also includes
    #               the <code>DataSource</code> of the place index. </p>
    #   @return [Types::SearchPlaceIndexForSuggestionsSummary]
    # @!attribute results
    #   <p>A list of place suggestions that best match the search text.</p>
    #   @return [Array<Types::SearchForSuggestionsResult>]
    class SearchPlaceIndexForSuggestionsOutput < Struct.new(
      :summary,
      :results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the request sent by using
    #             <code>SearchPlaceIndexForSuggestions</code>.</p>
    # @!attribute text
    #   <p>The free-form partial text input specified in the request.</p>
    #   @return [String]
    # @!attribute bias_position
    #   <p>Contains the coordinates for the optional bias position specified in the
    #               request.</p>
    #            <p>This parameter contains a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #   @return [Array<Float>]
    # @!attribute filter_b_box
    #   <p>Contains the coordinates for the optional bounding box specified in the
    #               request.</p>
    #   @return [Array<Float>]
    # @!attribute filter_countries
    #   <p>Contains the optional country filter specified in the request.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Contains the optional result count limit specified in the request.</p>
    #   @return [Integer]
    # @!attribute data_source
    #   <p>The geospatial data provider attached to the place index resource specified in the
    #               request. Values can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Esri</p>
    #               </li>
    #               <li>
    #                  <p>Grab</p>
    #               </li>
    #               <li>
    #                  <p>Here</p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The preferred language used to return results. Matches the language in the request.
    #               The value is a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a>
    #               language tag, for example, <code>en</code> for English.</p>
    #   @return [String]
    # @!attribute filter_categories
    #   <p>The optional category filter specified in the request.</p>
    #   @return [Array<String>]
    class SearchPlaceIndexForSuggestionsSummary < Struct.new(
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :data_source,
      :language,
      :filter_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource you want to use for the search.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The address, name, city, or region to be used in the search in free-form text format.
    #               For example, <code>123 Any Street</code>.</p>
    #   @return [String]
    # @!attribute bias_position
    #   <p>An optional parameter that indicates a preference for places that are closer to a
    #               specified position.</p>
    #            <p> If provided, this parameter must contain a pair of numbers. The first number
    #               represents the X coordinate, or longitude; the second number represents the Y
    #               coordinate, or latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #            <note>
    #               <p>
    #                  <code>BiasPosition</code> and <code>FilterBBox</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute filter_b_box
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               within the provided bounding box.</p>
    #            <p> If provided, this parameter must contain a total of four consecutive numbers in two
    #               pairs. The first pair of numbers represents the X and Y coordinates (longitude and
    #               latitude, respectively) of the southwest corner of the bounding box; the second pair of
    #               numbers represents the X and Y coordinates (longitude and latitude, respectively) of the
    #               northeast corner of the bounding box.</p>
    #            <p>For example, <code>[-12.7935, -37.4835, -12.0684, -36.9542]</code> represents a
    #               bounding box where the southwest corner has longitude <code>-12.7935</code> and latitude
    #                   <code>-37.4835</code>, and the northeast corner has longitude <code>-12.0684</code>
    #               and latitude <code>-36.9542</code>.</p>
    #            <note>
    #               <p>
    #                  <code>FilterBBox</code> and <code>BiasPosition</code> are mutually exclusive.
    #                   Specifying both options results in an error. </p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute filter_countries
    #   <p>An optional parameter that limits the search results by returning only places that are
    #               in a specified list of countries.</p>
    #            <ul>
    #               <li>
    #                  <p>Valid values include <a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a>
    #                       3-digit country codes. For example, Australia uses three upper-case characters:
    #                           <code>AUS</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>An optional parameter. The maximum number of results returned per request. </p>
    #            <p>The default: <code>50</code>
    #            </p>
    #   @return [Integer]
    # @!attribute language
    #   <p>The preferred language used to return results. The value must be a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a> language tag, for example,
    #                   <code>en</code> for English.</p>
    #            <p>This setting affects the languages used in the results, but not the results
    #               themselves. If no language is specified, or not supported for a particular result, the
    #               partner automatically chooses a language for the result.</p>
    #            <p>For an example, we'll use the Greek language. You search for <code>Athens,
    #                   Greece</code>, with the <code>language</code> parameter set to <code>en</code>. The
    #               result found will most likely be returned as <code>Athens</code>.</p>
    #            <p>If you set the <code>language</code> parameter to <code>el</code>, for Greek, then the
    #               result found will more likely be returned as <code>Αθήνα</code>.</p>
    #            <p>If the data provider does not have a value for Greek, the result will be in a language
    #               that the provider does support.</p>
    #   @return [String]
    # @!attribute filter_categories
    #   <p>A list of one or more Amazon Location categories to filter the returned places. If you 
    #               include more than one category, the results will include results that match 
    #               <i>any</i> of the categories listed.</p>
    #            <p>For more information about using categories, including a list of Amazon Location
    #               categories, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/category-filtering.html">Categories and filtering</a>, in the <i>Amazon Location Service developer 
    #                       guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute key
    #   <p>The optional <a href="https://docs.aws.amazon.com/location/previous/developerguide/using-apikeys.html">API key</a> to authorize 
    #               the request.</p>
    #   @return [String]
    class SearchPlaceIndexForTextInput < Struct.new(
      :index_name,
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :language,
      :filter_categories,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary
    #   <p>Contains a summary of the request. Echoes the input values for
    #                   <code>BiasPosition</code>, <code>FilterBBox</code>, <code>FilterCountries</code>,
    #                   <code>Language</code>, <code>MaxResults</code>, and <code>Text</code>. Also includes
    #               the <code>DataSource</code> of the place index and the bounding box,
    #                   <code>ResultBBox</code>, which surrounds the search results. </p>
    #   @return [Types::SearchPlaceIndexForTextSummary]
    # @!attribute results
    #   <p>A list of Places matching the input text. Each result contains additional information
    #               about the specific point of interest. </p>
    #            <p>Not all response properties are included with all responses. Some properties may only
    #               be returned by specific data partners.</p>
    #   @return [Array<Types::SearchForTextResult>]
    class SearchPlaceIndexForTextOutput < Struct.new(
      :summary,
      :results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the request sent by using <code>SearchPlaceIndexForText</code>.</p>
    # @!attribute text
    #   <p>The search text specified in the request.</p>
    #   @return [String]
    # @!attribute bias_position
    #   <p>Contains the coordinates for the optional bias position specified in the
    #               request.</p>
    #            <p>This parameter contains a pair of numbers. The first number represents the X
    #               coordinate, or longitude; the second number represents the Y coordinate, or
    #               latitude.</p>
    #            <p>For example, <code>[-123.1174, 49.2847]</code> represents the position with longitude
    #                   <code>-123.1174</code> and latitude <code>49.2847</code>.</p>
    #   @return [Array<Float>]
    # @!attribute filter_b_box
    #   <p>Contains the coordinates for the optional bounding box specified in the
    #               request.</p>
    #   @return [Array<Float>]
    # @!attribute filter_countries
    #   <p>Contains the optional country filter specified in the request.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Contains the optional result count limit specified in the request.</p>
    #   @return [Integer]
    # @!attribute result_b_box
    #   <p>The bounding box that fully contains all search results.</p>
    #            <note>
    #               <p>If you specified the optional <code>FilterBBox</code> parameter in the request,
    #                       <code>ResultBBox</code> is contained within <code>FilterBBox</code>.</p>
    #            </note>
    #   @return [Array<Float>]
    # @!attribute data_source
    #   <p>The geospatial data provider attached to the place index resource specified in the
    #               request. Values can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Esri</p>
    #               </li>
    #               <li>
    #                  <p>Grab</p>
    #               </li>
    #               <li>
    #                  <p>Here</p>
    #               </li>
    #            </ul>
    #            <p>For more information about data providers, see <a href="https://docs.aws.amazon.com/location/previous/developerguide/what-is-data-provider.html">Amazon Location Service data providers</a>.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The preferred language used to return results. Matches the language in the request.
    #               The value is a valid <a href="https://tools.ietf.org/search/bcp47">BCP 47</a>
    #               language tag, for example, <code>en</code> for English.</p>
    #   @return [String]
    # @!attribute filter_categories
    #   <p>The optional category filter specified in the request.</p>
    #   @return [Array<String>]
    class SearchPlaceIndexForTextSummary < Struct.new(
      :text,
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :result_b_box,
      :data_source,
      :language,
      :filter_categories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation was denied because the request would exceed the maximum <a href="https://docs.aws.amazon.com/location/previous/developerguide/location-quotas.html">quota</a>
    #       set for Amazon Location Service.</p>
    # @!attribute message
    #   <p>A message with the reason for the service quota exceeded exception error.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Represents an element of a leg within a route. A step contains instructions for how
    #             to move to the next step in the leg. </p>
    # @!attribute start_position
    #   <p>The starting position of a step. If the position is the first step in the leg, this
    #               position is the same as the start position of the leg.</p>
    #   @return [Array<Float>]
    # @!attribute end_position
    #   <p>The end position of a step. If the position the last step in the leg, this position is
    #               the same as the end position of the leg.</p>
    #   @return [Array<Float>]
    # @!attribute distance
    #   <p>The travel distance between the step's <code>StartPosition</code> and
    #                   <code>EndPosition</code>.</p>
    #   @return [Float]
    # @!attribute duration_seconds
    #   <p>The estimated travel time, in seconds, from the step's <code>StartPosition</code> to
    #               the <code>EndPosition</code>. . The travel mode and departure time that you specify in
    #               the request determines the calculated time.</p>
    #   @return [Float]
    # @!attribute geometry_offset
    #   <p>Represents the start position, or index, in a sequence of steps within the leg's line
    #               string geometry. For example, the index of the first step in a leg geometry is
    #                   <code>0</code>. </p>
    #            <p>Included in the response for queries that set <code>IncludeLegGeometry</code> to
    #                   <code>True</code>. </p>
    #   @return [Integer]
    class Step < Struct.new(
      :start_position,
      :end_position,
      :distance,
      :duration_seconds,
      :geometry_offset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to update.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>Applies one or more tags to specific resource. A tag is a key-value pair that helps
    #               you manage, identify, search, and filter your resources.</p>
    #            <p>Format: <code>"key" : "value"</code>
    #            </p>
    #            <p>Restrictions:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum 50 tags per resource.</p>
    #               </li>
    #               <li>
    #                  <p>Each tag key must be unique and must have exactly one associated value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length: 128 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length: 256 Unicode characters in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the following characters:
    #                       + - = . _ : / @</p>
    #               </li>
    #               <li>
    #                  <p>Cannot use "aws:" as a prefix for a key.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a time zone. Includes the name of the time zone and the offset from
    #             UTC in seconds.</p>
    # @!attribute name
    #   <p>The name of the time zone, following the <a href="https://www.iana.org/time-zones">
    #                   IANA time zone standard</a>. For example,
    #               <code>America/Los_Angeles</code>.</p>
    #   @return [String]
    # @!attribute offset
    #   <p>The time zone's offset, in seconds, from UTC.</p>
    #   @return [Integer]
    class TimeZone < Struct.new(
      :name,
      :offset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The geomerty used to filter device positions.</p>
    # @!attribute polygon
    #   <p>The set of arrays which define the polygon. A polygon can have between 4 and 1000 vertices.</p>
    #   @return [Array<Array<Array<Float>>>]
    class TrackingFilterGeometry < Struct.new(
      :polygon,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the truck dimensions in the unit of measurement that you
    #             specify. Used to filter out roads that can't support or allow the specified dimensions
    #             for requests that specify <code>TravelMode</code> as <code>Truck</code>.</p>
    # @!attribute length
    #   <p>The length of the truck.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>15.5</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                   For routes calculated with a HERE resource, this value must be between 0 and 300 meters.
    #               </p>
    #            </note>
    #   @return [Float]
    # @!attribute height
    #   <p>The height of the truck.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>4.5</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                   For routes calculated with a HERE resource, this value must be between 0 and 50 meters.
    #               </p>
    #            </note>
    #   @return [Float]
    # @!attribute width
    #   <p>The width of the truck.</p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>4.5</code>.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                   For routes calculated with a HERE resource, this value must be between 0 and 50 meters.
    #               </p>
    #            </note>
    #   @return [Float]
    # @!attribute unit
    #   <p> Specifies the unit of measurement for the truck dimensions.</p>
    #            <p>Default Value: <code>Meters</code>
    #            </p>
    #   @return [String]
    class TruckDimensions < Struct.new(
      :length,
      :height,
      :width,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the truck's weight specifications. Used to avoid roads that
    #             can't support or allow the total weight for requests that specify
    #                 <code>TravelMode</code> as <code>Truck</code>.</p>
    # @!attribute total
    #   <p>The total weight of the truck. </p>
    #            <ul>
    #               <li>
    #                  <p>For example, <code>3500</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Float]
    # @!attribute unit
    #   <p>The unit of measurement to use for the truck weight.</p>
    #            <p>Default Value: <code>Kilograms</code>
    #            </p>
    #   @return [String]
    class TruckWeight < Struct.new(
      :total,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want to remove
    #               tags.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:resourcetype/ExampleResource</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the geofence collection to update.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>Updates the description for the geofence collection.</p>
    #   @return [String]
    class UpdateGeofenceCollectionInput < Struct.new(
      :collection_name,
      :pricing_plan,
      :pricing_plan_data_source,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute collection_name
    #   <p>The name of the updated geofence collection.</p>
    #   @return [String]
    # @!attribute collection_arn
    #   <p>The Amazon Resource Name (ARN) of the updated geofence collection. Used to specify a
    #               resource across Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                           <code>arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute update_time
    #   <p>The time when the geofence collection was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>
    #            </p>
    #   @return [Time]
    class UpdateGeofenceCollectionOutput < Struct.new(
      :collection_name,
      :collection_arn,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>The name of the API key resource to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Updates the description for the API key resource.</p>
    #   @return [String]
    # @!attribute expire_time
    #   <p>Updates the timestamp for when the API key resource will expire in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute no_expiry
    #   <p>Whether the API key should expire. Set to <code>true</code> to set the API key to have
    #               no expiration time.</p>
    #   @return [Boolean]
    # @!attribute force_update
    #   <p>The boolean flag to be included for updating <code>ExpireTime</code> or
    #                   <code>Restrictions</code> details.</p>
    #            <p>Must be set to <code>true</code> to update an API key resource that has been used in
    #               the past 7 days.</p>
    #            <p>
    #               <code>False</code> if force update is not preferred</p>
    #            <p>Default value: <code>False</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute restrictions
    #   <p>Updates the API key restrictions for the API key resource.</p>
    #   @return [Types::ApiKeyRestrictions]
    class UpdateKeyInput < Struct.new(
      :key_name,
      :description,
      :expire_time,
      :no_expiry,
      :force_update,
      :restrictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_arn
    #   <p>The Amazon Resource Name (ARN) for the API key resource. Used when you need to specify
    #               a resource across all Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example:
    #                       <code>arn:aws:geo:region:account-id:key/ExampleKey</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute key_name
    #   <p>The name of the API key resource.</p>
    #   @return [String]
    # @!attribute update_time
    #   <p>The timestamp for when the API key resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class UpdateKeyOutput < Struct.new(
      :key_arn,
      :key_name,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The name of the map resource to update.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>Updates the description for the map resource.</p>
    #   @return [String]
    # @!attribute configuration_update
    #   <p>Updates the parts of the map configuration that can be updated, including the
    #               political view.</p>
    #   @return [Types::MapConfigurationUpdate]
    class UpdateMapInput < Struct.new(
      :map_name,
      :pricing_plan,
      :description,
      :configuration_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute map_name
    #   <p>The name of the updated map resource.</p>
    #   @return [String]
    # @!attribute map_arn
    #   <p>The Amazon Resource Name (ARN) of the updated map resource. Used to specify a resource
    #               across AWS.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:map/ExampleMap</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute update_time
    #   <p>The timestamp for when the map resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class UpdateMapOutput < Struct.new(
      :map_name,
      :map_arn,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the place index resource to update.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>Updates the description for the place index resource.</p>
    #   @return [String]
    # @!attribute data_source_configuration
    #   <p>Updates the data storage option for the place index resource.</p>
    #   @return [Types::DataSourceConfiguration]
    class UpdatePlaceIndexInput < Struct.new(
      :index_name,
      :pricing_plan,
      :description,
      :data_source_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute index_name
    #   <p>The name of the updated place index resource.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) of the upated place index resource. Used to specify a
    #               resource across Amazon Web Services.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:place-
    #                           index/ExamplePlaceIndex</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute update_time
    #   <p>The timestamp for when the place index resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class UpdatePlaceIndexOutput < Struct.new(
      :index_name,
      :index_arn,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the route calculator resource to update.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>Updates the description for the route calculator resource.</p>
    #   @return [String]
    class UpdateRouteCalculatorInput < Struct.new(
      :calculator_name,
      :pricing_plan,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculator_name
    #   <p>The name of the updated route calculator resource.</p>
    #   @return [String]
    # @!attribute calculator_arn
    #   <p>The Amazon Resource Name (ARN) of the updated route calculator resource. Used to
    #               specify a resource across AWS.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:route-
    #                           calculator/ExampleCalculator</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute update_time
    #   <p>The timestamp for when the route calculator was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class UpdateRouteCalculatorOutput < Struct.new(
      :calculator_name,
      :calculator_arn,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to update.</p>
    #   @return [String]
    # @!attribute pricing_plan
    #   <p>No longer used. If included, the only allowed value is 
    #               <code>RequestBasedUsage</code>.</p>
    #   @deprecated
    #     Deprecated. If included, the only allowed value is RequestBasedUsage.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute pricing_plan_data_source
    #   <p>This parameter is no longer used.</p>
    #   @deprecated
    #     Deprecated. No longer allowed.
    #     Since: 2022-02-01
    #   @return [String]
    # @!attribute description
    #   <p>Updates the description for the tracker resource.</p>
    #   @return [String]
    # @!attribute position_filtering
    #   <p>Updates the position filtering for the tracker resource.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TimeBased</code> - Location updates are evaluated against linked geofence collections, 
    #                       but not every location update is stored. If your update frequency is more often than 30 seconds, 
    #                       only one update per 30 seconds is stored for each unique device ID.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DistanceBased</code> - If the device has moved less than 30 m (98.4 ft), location updates are 
    #                       ignored. Location updates within this distance are neither evaluated against linked geofence collections, nor stored.
    #                       This helps control costs by reducing the number of geofence evaluations and historical device positions to paginate through.
    #                       Distance-based filtering can also reduce the effects of GPS noise when displaying device trajectories on a map.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccuracyBased</code> - If the device has moved less than the measured accuracy,
    #                       location updates are ignored. For example, if two consecutive updates from a device
    #                       have a horizontal accuracy of 5 m and 10 m, the second update is ignored if the device
    #                       has moved less than 15 m. Ignored location updates are neither evaluated against
    #                       linked geofence collections, nor stored. This helps educe the effects of GPS noise 
    #                       when displaying device trajectories on a map, and can help control costs by reducing the
    #                       number of geofence evaluations.
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute event_bridge_enabled
    #   <p>Whether to enable position <code>UPDATE</code> events from this tracker to be sent to 
    #               EventBridge.</p>
    #            <note>
    #               <p>You do not need enable this feature to get <code>ENTER</code> and 
    #                   <code>EXIT</code> events for geofences with this tracker. Those events are
    #                   always sent to EventBridge.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute kms_key_enable_geospatial_queries
    #   <p>Enables <code>GeospatialQueries</code> for a tracker that uses a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon Web Services
    #               KMS customer managed key</a>.</p>
    #            <p>This parameter is only used if you are using a KMS customer managed key.</p>
    #   @return [Boolean]
    class UpdateTrackerInput < Struct.new(
      :tracker_name,
      :pricing_plan,
      :pricing_plan_data_source,
      :description,
      :position_filtering,
      :event_bridge_enabled,
      :kms_key_enable_geospatial_queries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the updated tracker resource.</p>
    #   @return [String]
    # @!attribute tracker_arn
    #   <p>The Amazon Resource Name (ARN) of the updated tracker resource. Used to specify a resource across
    #               AWS.</p>
    #            <ul>
    #               <li>
    #                  <p>Format example: <code>arn:aws:geo:region:account-id:tracker/ExampleTracker</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute update_time
    #   <p>The timestamp for when the tracker resource was last updated in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601</a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    class UpdateTrackerOutput < Struct.new(
      :tracker_name,
      :tracker_arn,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the AWS service. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field where the invalid entry was detected.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the AWS service in a specified
    #       field. </p>
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tracker_name
    #   <p>The name of the tracker resource to be associated with verification request.</p>
    #   @return [String]
    # @!attribute device_state
    #   <p>The device's state, including position, IP address, cell signals and Wi-Fi access points.</p>
    #   @return [Types::DeviceState]
    # @!attribute distance_unit
    #   <p>The distance unit for the verification request.</p>
    #            <p>Default Value: <code>Kilometers</code>
    #            </p>
    #   @return [String]
    class VerifyDevicePositionRequest < Struct.new(
      :tracker_name,
      :device_state,
      :distance_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute inferred_state
    #   <p>The inferred state of the device, given the provided position, IP address, cellular signals, and Wi-Fi- access points.</p>
    #   @return [Types::InferredState]
    # @!attribute device_id
    #   <p>The device identifier.</p>
    #   @return [String]
    # @!attribute sample_time
    #   <p>The timestamp at which the device's position was determined. Uses <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #              format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute received_time
    #   <p>The timestamp for when the tracker resource received the device position in <a href="https://www.iso.org/iso-8601-date-and-time-format.html"> ISO 8601 </a>
    #               format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. </p>
    #   @return [Time]
    # @!attribute distance_unit
    #   <p>The distance unit for the verification response.</p>
    #   @return [String]
    class VerifyDevicePositionResponse < Struct.new(
      :inferred_state,
      :device_id,
      :sample_time,
      :received_time,
      :distance_unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Wi-Fi access point.</p>
    # @!attribute mac_address
    #   <p>Medium access control address (Mac).</p>
    #   @return [String]
    # @!attribute rss
    #   <p>Received signal strength (dBm) of the WLAN measurement data.</p>
    #   @return [Integer]
    class WiFiAccessPoint < Struct.new(
      :mac_address,
      :rss,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
