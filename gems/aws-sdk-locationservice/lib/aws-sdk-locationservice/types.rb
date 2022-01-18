# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LocationService
  module Types

    # The request was denied because of insufficient access or permissions.
    # Check with an administrator to verify your permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateTrackerConsumerRequest
    #   data as a hash:
    #
    #       {
    #         consumer_arn: "Arn", # required
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] consumer_arn
    #   The Amazon Resource Name (ARN) for the geofence collection to be
    #   associated to tracker resource. Used when you need to specify a
    #   resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource to be associated with a geofence
    #   collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/AssociateTrackerConsumerRequest AWS API Documentation
    #
    class AssociateTrackerConsumerRequest < Struct.new(
      :consumer_arn,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/AssociateTrackerConsumerResponse AWS API Documentation
    #
    class AssociateTrackerConsumerResponse < Aws::EmptyStructure; end

    # Contains the tracker resource details.
    #
    # @!attribute [rw] device_id
    #   The ID of the device for this position.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains the batch request error details associated with the
    #   request.
    #   @return [Types::BatchItemError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteDevicePositionHistoryError AWS API Documentation
    #
    class BatchDeleteDevicePositionHistoryError < Struct.new(
      :device_id,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteDevicePositionHistoryRequest
    #   data as a hash:
    #
    #       {
    #         device_ids: ["Id"], # required
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] device_ids
    #   Devices whose position history you want to delete.
    #
    #   * For example, for two devices: `“DeviceIds” :
    #     [DeviceId1,DeviceId2]`
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource to delete the device position
    #   history from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteDevicePositionHistoryRequest AWS API Documentation
    #
    class BatchDeleteDevicePositionHistoryRequest < Struct.new(
      :device_ids,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Contains error details for each device history that failed to
    #   delete.
    #   @return [Array<Types::BatchDeleteDevicePositionHistoryError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteDevicePositionHistoryResponse AWS API Documentation
    #
    class BatchDeleteDevicePositionHistoryResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for each geofence that failed to delete from
    # the geofence collection.
    #
    # @!attribute [rw] error
    #   Contains details associated to the batch error.
    #   @return [Types::BatchItemError]
    #
    # @!attribute [rw] geofence_id
    #   The geofence associated with the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteGeofenceError AWS API Documentation
    #
    class BatchDeleteGeofenceError < Struct.new(
      :error,
      :geofence_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteGeofenceRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         geofence_ids: ["Id"], # required
    #       }
    #
    # @!attribute [rw] collection_name
    #   The geofence collection storing the geofences to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] geofence_ids
    #   The batch of geofences to be deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteGeofenceRequest AWS API Documentation
    #
    class BatchDeleteGeofenceRequest < Struct.new(
      :collection_name,
      :geofence_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Contains error details for each geofence that failed to delete.
    #   @return [Array<Types::BatchDeleteGeofenceError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchDeleteGeofenceResponse AWS API Documentation
    #
    class BatchDeleteGeofenceResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for each device that failed to evaluate its
    # position against the geofences in a given geofence collection.
    #
    # @!attribute [rw] device_id
    #   The device associated with the position evaluation error.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains details associated to the batch error.
    #   @return [Types::BatchItemError]
    #
    # @!attribute [rw] sample_time
    #   Specifies a timestamp for when the error occurred in [ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchEvaluateGeofencesError AWS API Documentation
    #
    class BatchEvaluateGeofencesError < Struct.new(
      :device_id,
      :error,
      :sample_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchEvaluateGeofencesRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         device_position_updates: [ # required
    #           {
    #             accuracy: {
    #               horizontal: 1.0, # required
    #             },
    #             device_id: "Id", # required
    #             position: [1.0], # required
    #             position_properties: {
    #               "PropertyMapKeyString" => "PropertyMapValueString",
    #             },
    #             sample_time: Time.now, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] collection_name
    #   The geofence collection used in evaluating the position of devices
    #   against its geofences.
    #   @return [String]
    #
    # @!attribute [rw] device_position_updates
    #   Contains device details for each device to be evaluated against the
    #   given geofence collection.
    #   @return [Array<Types::DevicePositionUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchEvaluateGeofencesRequest AWS API Documentation
    #
    class BatchEvaluateGeofencesRequest < Struct.new(
      :collection_name,
      :device_position_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Contains error details for each device that failed to evaluate its
    #   position against the given geofence collection.
    #   @return [Array<Types::BatchEvaluateGeofencesError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchEvaluateGeofencesResponse AWS API Documentation
    #
    class BatchEvaluateGeofencesResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for each device that didn't return a position.
    #
    # @!attribute [rw] device_id
    #   The ID of the device that didn't return a position.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains details related to the error code.
    #   @return [Types::BatchItemError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchGetDevicePositionError AWS API Documentation
    #
    class BatchGetDevicePositionError < Struct.new(
      :device_id,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetDevicePositionRequest
    #   data as a hash:
    #
    #       {
    #         device_ids: ["Id"], # required
    #         tracker_name: "BatchGetDevicePositionRequestTrackerNameString", # required
    #       }
    #
    # @!attribute [rw] device_ids
    #   Devices whose position you want to retrieve.
    #
    #   * For example, for two devices:
    #     `device-ids=DeviceId1&device-ids=DeviceId2`
    #
    #   ^
    #   @return [Array<String>]
    #
    # @!attribute [rw] tracker_name
    #   The tracker resource retrieving the device position.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchGetDevicePositionRequest AWS API Documentation
    #
    class BatchGetDevicePositionRequest < Struct.new(
      :device_ids,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_positions
    #   Contains device position details such as the device ID, position,
    #   and timestamps for when the position was received and sampled.
    #   @return [Array<Types::DevicePosition>]
    #
    # @!attribute [rw] errors
    #   Contains error details for each device that failed to send its
    #   position to the tracker resource.
    #   @return [Array<Types::BatchGetDevicePositionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchGetDevicePositionResponse AWS API Documentation
    #
    class BatchGetDevicePositionResponse < Struct.new(
      :device_positions,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the batch request error details associated with the request.
    #
    # @!attribute [rw] code
    #   The error code associated with the batch request error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message with the reason for the batch request error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchItemError AWS API Documentation
    #
    class BatchItemError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for each geofence that failed to be stored in a
    # given geofence collection.
    #
    # @!attribute [rw] error
    #   Contains details associated to the batch error.
    #   @return [Types::BatchItemError]
    #
    # @!attribute [rw] geofence_id
    #   The geofence associated with the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofenceError AWS API Documentation
    #
    class BatchPutGeofenceError < Struct.new(
      :error,
      :geofence_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchPutGeofenceRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         entries: [ # required
    #           {
    #             geofence_id: "Id", # required
    #             geometry: { # required
    #               polygon: [
    #                 [
    #                   [1.0],
    #                 ],
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] collection_name
    #   The geofence collection storing the geofences.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   The batch of geofences to be stored in a geofence collection.
    #   @return [Array<Types::BatchPutGeofenceRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofenceRequest AWS API Documentation
    #
    class BatchPutGeofenceRequest < Struct.new(
      :collection_name,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains geofence geometry details.
    #
    # @note When making an API call, you may pass BatchPutGeofenceRequestEntry
    #   data as a hash:
    #
    #       {
    #         geofence_id: "Id", # required
    #         geometry: { # required
    #           polygon: [
    #             [
    #               [1.0],
    #             ],
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] geofence_id
    #   The identifier for the geofence to be stored in a given geofence
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Contains the polygon details to specify the position of the
    #   geofence.
    #
    #   <note markdown="1"> Each [geofence polygon][1] can have a maximum of 1,000 vertices.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html
    #   @return [Types::GeofenceGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofenceRequestEntry AWS API Documentation
    #
    class BatchPutGeofenceRequestEntry < Struct.new(
      :geofence_id,
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Contains additional error details for each geofence that failed to
    #   be stored in a geofence collection.
    #   @return [Array<Types::BatchPutGeofenceError>]
    #
    # @!attribute [rw] successes
    #   Contains each geofence that was successfully stored in a geofence
    #   collection.
    #   @return [Array<Types::BatchPutGeofenceSuccess>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofenceResponse AWS API Documentation
    #
    class BatchPutGeofenceResponse < Struct.new(
      :errors,
      :successes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of each geofence that was successfully stored in a
    # given geofence collection.
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the geofence was stored in a geofence
    #   collection in [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] geofence_id
    #   The geofence successfully stored in a geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the geofence was last updated in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchPutGeofenceSuccess AWS API Documentation
    #
    class BatchPutGeofenceSuccess < Struct.new(
      :create_time,
      :geofence_id,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error details for each device that failed to update its
    # position.
    #
    # @!attribute [rw] device_id
    #   The device associated with the failed location update.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains details related to the error code such as the error code
    #   and error message.
    #   @return [Types::BatchItemError]
    #
    # @!attribute [rw] sample_time
    #   The timestamp at which the device position was determined. Uses [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchUpdateDevicePositionError AWS API Documentation
    #
    class BatchUpdateDevicePositionError < Struct.new(
      :device_id,
      :error,
      :sample_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdateDevicePositionRequest
    #   data as a hash:
    #
    #       {
    #         tracker_name: "ResourceName", # required
    #         updates: [ # required
    #           {
    #             accuracy: {
    #               horizontal: 1.0, # required
    #             },
    #             device_id: "Id", # required
    #             position: [1.0], # required
    #             position_properties: {
    #               "PropertyMapKeyString" => "PropertyMapValueString",
    #             },
    #             sample_time: Time.now, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource to update.
    #   @return [String]
    #
    # @!attribute [rw] updates
    #   Contains the position update details for each device.
    #   @return [Array<Types::DevicePositionUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchUpdateDevicePositionRequest AWS API Documentation
    #
    class BatchUpdateDevicePositionRequest < Struct.new(
      :tracker_name,
      :updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Contains error details for each device that failed to update its
    #   position.
    #   @return [Array<Types::BatchUpdateDevicePositionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/BatchUpdateDevicePositionResponse AWS API Documentation
    #
    class BatchUpdateDevicePositionResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about additional route preferences for requests that
    # specify `TravelMode` as `Car`.
    #
    # @note When making an API call, you may pass CalculateRouteCarModeOptions
    #   data as a hash:
    #
    #       {
    #         avoid_ferries: false,
    #         avoid_tolls: false,
    #       }
    #
    # @!attribute [rw] avoid_ferries
    #   Avoids ferries when calculating routes.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] avoid_tolls
    #   Avoids tolls when calculating routes.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteCarModeOptions AWS API Documentation
    #
    class CalculateRouteCarModeOptions < Struct.new(
      :avoid_ferries,
      :avoid_tolls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CalculateRouteMatrixRequest
    #   data as a hash:
    #
    #       {
    #         calculator_name: "ResourceName", # required
    #         car_mode_options: {
    #           avoid_ferries: false,
    #           avoid_tolls: false,
    #         },
    #         depart_now: false,
    #         departure_positions: [ # required
    #           [1.0],
    #         ],
    #         departure_time: Time.now,
    #         destination_positions: [ # required
    #           [1.0],
    #         ],
    #         distance_unit: "Kilometers", # accepts Kilometers, Miles
    #         travel_mode: "Car", # accepts Car, Truck, Walking
    #         truck_mode_options: {
    #           avoid_ferries: false,
    #           avoid_tolls: false,
    #           dimensions: {
    #             height: 1.0,
    #             length: 1.0,
    #             unit: "Meters", # accepts Meters, Feet
    #             width: 1.0,
    #           },
    #           weight: {
    #             total: 1.0,
    #             unit: "Kilograms", # accepts Kilograms, Pounds
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource that you want to use to
    #   calculate the route matrix.
    #   @return [String]
    #
    # @!attribute [rw] car_mode_options
    #   Specifies route preferences when traveling by `Car`, such as
    #   avoiding routes that use ferries or tolls.
    #
    #   Requirements: `TravelMode` must be specified as `Car`.
    #   @return [Types::CalculateRouteCarModeOptions]
    #
    # @!attribute [rw] depart_now
    #   Sets the time of departure as the current time. Uses the current
    #   time to calculate the route matrix. You can't set both
    #   `DepartureTime` and `DepartNow`. If neither is set, the best time of
    #   day to travel with the best traffic conditions is used to calculate
    #   the route matrix.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] departure_positions
    #   The list of departure (origin) positions for the route matrix. An
    #   array of points, each of which is itself a 2-value array defined in
    #   [WGS 84][1] format: `[longitude, latitude]`. For example,
    #   `[-123.115, 49.285]`.
    #
    #   Depending on the data provider selected in the route calculator
    #   resource there may be additional restrictions on the inputs you can
    #   choose. See [ Position restrictions][2] in the *Amazon Location
    #   Service Developer Guide*.
    #
    #   <note markdown="1"> For route calculators that use Esri as the data provider, if you
    #   specify a departure that's not located on a road, Amazon Location [
    #   moves the position to the nearest road][3]. The snapped value is
    #   available in the result in `SnappedDeparturePositions`.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   [2]: https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits
    #   [3]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] departure_time
    #   Specifies the desired time of departure. Uses the given time to
    #   calculate the route matrix. You can't set both `DepartureTime` and
    #   `DepartNow`. If neither is set, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route matrix.
    #
    #   <note markdown="1"> Setting a departure time in the past returns a `400
    #   ValidationException` error.
    #
    #    </note>
    #
    #   * In [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`. For example,
    #     `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] destination_positions
    #   The list of destination positions for the route matrix. An array of
    #   points, each of which is itself a 2-value array defined in [WGS
    #   84][1] format: `[longitude, latitude]`. For example, `[-122.339,
    #   47.615]`
    #
    #   Depending on the data provider selected in the route calculator
    #   resource there may be additional restrictions on the inputs you can
    #   choose. See [ Position restrictions][2] in the *Amazon Location
    #   Service Developer Guide*.
    #
    #   <note markdown="1"> For route calculators that use Esri as the data provider, if you
    #   specify a destination that's not located on a road, Amazon Location
    #   [ moves the position to the nearest road][3]. The snapped value is
    #   available in the result in `SnappedDestinationPositions`.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   [2]: https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits
    #   [3]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] distance_unit
    #   Set the unit system to specify the distance.
    #
    #   Default Value: `Kilometers`
    #   @return [String]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   The `TravelMode` you specify also determines how you specify route
    #   preferences:
    #
    #   * If traveling by `Car` use the `CarModeOptions` parameter.
    #
    #   * If traveling by `Truck` use the `TruckModeOptions` parameter.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] truck_mode_options
    #   Specifies route preferences when traveling by `Truck`, such as
    #   avoiding routes that use ferries or tolls, and truck specifications
    #   to consider when choosing an optimal road.
    #
    #   Requirements: `TravelMode` must be specified as `Truck`.
    #   @return [Types::CalculateRouteTruckModeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteMatrixRequest AWS API Documentation
    #
    class CalculateRouteMatrixRequest < Struct.new(
      :calculator_name,
      :car_mode_options,
      :depart_now,
      :departure_positions,
      :departure_time,
      :destination_positions,
      :distance_unit,
      :travel_mode,
      :truck_mode_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the result of the route matrix calculation.
    #
    # @!attribute [rw] route_matrix
    #   The calculated route matrix containing the results for all pairs of
    #   `DeparturePositions` to `DestinationPositions`. Each row corresponds
    #   to one entry in `DeparturePositions`. Each entry in the row
    #   corresponds to the route from that entry in `DeparturePositions` to
    #   an entry in `DestinationPositions`.
    #   @return [Array<Array<Types::RouteMatrixEntry>>]
    #
    # @!attribute [rw] snapped_departure_positions
    #   For routes calculated using an Esri route calculator resource,
    #   departure positions are snapped to the closest road. For Esri route
    #   calculator resources, this returns the list of departure/origin
    #   positions used for calculation of the `RouteMatrix`.
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] snapped_destination_positions
    #   The list of destination positions for the route matrix used for
    #   calculation of the `RouteMatrix`.
    #   @return [Array<Array<Float>>]
    #
    # @!attribute [rw] summary
    #   Contains information about the route matrix, `DataSource`,
    #   `DistanceUnit`, `RouteCount` and `ErrorCount`.
    #   @return [Types::CalculateRouteMatrixSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteMatrixResponse AWS API Documentation
    #
    class CalculateRouteMatrixResponse < Struct.new(
      :route_matrix,
      :snapped_departure_positions,
      :snapped_destination_positions,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the calculated route matrix.
    #
    # @!attribute [rw] data_source
    #   The data provider of traffic and road network data used to calculate
    #   the routes. Indicates one of the available providers:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] distance_unit
    #   The unit of measurement for route distances.
    #   @return [String]
    #
    # @!attribute [rw] error_count
    #   The count of error results in the route matrix. If this number is 0,
    #   all routes were calculated successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] route_count
    #   The count of cells in the route matrix. Equal to the number of
    #   `DeparturePositions` multiplied by the number of
    #   `DestinationPositions`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteMatrixSummary AWS API Documentation
    #
    class CalculateRouteMatrixSummary < Struct.new(
      :data_source,
      :distance_unit,
      :error_count,
      :route_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CalculateRouteRequest
    #   data as a hash:
    #
    #       {
    #         calculator_name: "ResourceName", # required
    #         car_mode_options: {
    #           avoid_ferries: false,
    #           avoid_tolls: false,
    #         },
    #         depart_now: false,
    #         departure_position: [1.0], # required
    #         departure_time: Time.now,
    #         destination_position: [1.0], # required
    #         distance_unit: "Kilometers", # accepts Kilometers, Miles
    #         include_leg_geometry: false,
    #         travel_mode: "Car", # accepts Car, Truck, Walking
    #         truck_mode_options: {
    #           avoid_ferries: false,
    #           avoid_tolls: false,
    #           dimensions: {
    #             height: 1.0,
    #             length: 1.0,
    #             unit: "Meters", # accepts Meters, Feet
    #             width: 1.0,
    #           },
    #           weight: {
    #             total: 1.0,
    #             unit: "Kilograms", # accepts Kilograms, Pounds
    #           },
    #         },
    #         waypoint_positions: [
    #           [1.0],
    #         ],
    #       }
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource that you want to use to
    #   calculate the route.
    #   @return [String]
    #
    # @!attribute [rw] car_mode_options
    #   Specifies route preferences when traveling by `Car`, such as
    #   avoiding routes that use ferries or tolls.
    #
    #   Requirements: `TravelMode` must be specified as `Car`.
    #   @return [Types::CalculateRouteCarModeOptions]
    #
    # @!attribute [rw] depart_now
    #   Sets the time of departure as the current time. Uses the current
    #   time to calculate a route. Otherwise, the best time of day to travel
    #   with the best traffic conditions is used to calculate the route.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] departure_position
    #   The start position for the route. Defined in [WGS 84][1] format:
    #   `[longitude, latitude]`.
    #
    #   * For example, `[-123.115, 49.285]`
    #
    #   ^
    #
    #   <note markdown="1"> If you specify a departure that's not located on a road, Amazon
    #   Location [moves the position to the nearest road][2]. If Esri is the
    #   provider for your route calculator, specifying a route that is
    #   longer than 400 km returns a `400 RoutesValidationException` error.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   [2]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Float>]
    #
    # @!attribute [rw] departure_time
    #   Specifies the desired time of departure. Uses the given time to
    #   calculate the route. Otherwise, the best time of day to travel with
    #   the best traffic conditions is used to calculate the route.
    #
    #   <note markdown="1"> Setting a departure time in the past returns a `400
    #   ValidationException` error.
    #
    #    </note>
    #
    #   * In [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`. For example,
    #     `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] destination_position
    #   The finish position for the route. Defined in [WGS 84][1] format:
    #   `[longitude, latitude]`.
    #
    #   * For example, `[-122.339, 47.615]`
    #
    #   ^
    #
    #   <note markdown="1"> If you specify a destination that's not located on a road, Amazon
    #   Location [moves the position to the nearest road][2].
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   [2]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Float>]
    #
    # @!attribute [rw] distance_unit
    #   Set the unit system to specify the distance.
    #
    #   Default Value: `Kilometers`
    #   @return [String]
    #
    # @!attribute [rw] include_leg_geometry
    #   Set to include the geometry details in the result for each path
    #   between a pair of positions.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] travel_mode
    #   Specifies the mode of transport when calculating a route. Used in
    #   estimating the speed of travel and road compatibility.
    #
    #   The `TravelMode` you specify also determines how you specify route
    #   preferences:
    #
    #   * If traveling by `Car` use the `CarModeOptions` parameter.
    #
    #   * If traveling by `Truck` use the `TruckModeOptions` parameter.
    #
    #   Default Value: `Car`
    #   @return [String]
    #
    # @!attribute [rw] truck_mode_options
    #   Specifies route preferences when traveling by `Truck`, such as
    #   avoiding routes that use ferries or tolls, and truck specifications
    #   to consider when choosing an optimal road.
    #
    #   Requirements: `TravelMode` must be specified as `Truck`.
    #   @return [Types::CalculateRouteTruckModeOptions]
    #
    # @!attribute [rw] waypoint_positions
    #   Specifies an ordered list of up to 23 intermediate positions to
    #   include along a route between the departure position and destination
    #   position.
    #
    #   * For example, from the `DeparturePosition` `[-123.115, 49.285]`,
    #     the route follows the order that the waypoint positions are given
    #     `[[-122.757, 49.0021],[-122.349, 47.620]]`
    #
    #   ^
    #
    #   <note markdown="1"> If you specify a waypoint position that's not located on a road,
    #   Amazon Location [moves the position to the nearest road][1].
    #
    #    Specifying more than 23 waypoints returns a `400
    #   ValidationException` error.
    #
    #    If Esri is the provider for your route calculator, specifying a
    #   route that is longer than 400 km returns a `400
    #   RoutesValidationException` error.
    #
    #    </note>
    #
    #   Valid Values: `[-180 to 180,-90 to 90]`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Array<Float>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteRequest AWS API Documentation
    #
    class CalculateRouteRequest < Struct.new(
      :calculator_name,
      :car_mode_options,
      :depart_now,
      :departure_position,
      :departure_time,
      :destination_position,
      :distance_unit,
      :include_leg_geometry,
      :travel_mode,
      :truck_mode_options,
      :waypoint_positions)
      SENSITIVE = [:departure_position, :destination_position]
      include Aws::Structure
    end

    # Returns the result of the route calculation. Metadata includes legs
    # and route summary.
    #
    # @!attribute [rw] legs
    #   Contains details about each path between a pair of positions
    #   included along a route such as: `StartPosition`, `EndPosition`,
    #   `Distance`, `DurationSeconds`, `Geometry`, and `Steps`. The number
    #   of legs returned corresponds to one fewer than the total number of
    #   positions in the request.
    #
    #   For example, a route with a departure position and destination
    #   position returns one leg with the positions [snapped to a nearby
    #   road][1]\:
    #
    #   * The `StartPosition` is the departure position.
    #
    #   * The `EndPosition` is the destination position.
    #
    #   A route with a waypoint between the departure and destination
    #   position returns two legs with the positions snapped to a nearby
    #   road:
    #
    #   * Leg 1: The `StartPosition` is the departure position . The
    #     `EndPosition` is the waypoint positon.
    #
    #   * Leg 2: The `StartPosition` is the waypoint position. The
    #     `EndPosition` is the destination position.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Types::Leg>]
    #
    # @!attribute [rw] summary
    #   Contains information about the whole route, such as: `RouteBBox`,
    #   `DataSource`, `Distance`, `DistanceUnit`, and `DurationSeconds`.
    #   @return [Types::CalculateRouteSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteResponse AWS API Documentation
    #
    class CalculateRouteResponse < Struct.new(
      :legs,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the calculated route.
    #
    # @!attribute [rw] data_source
    #   The data provider of traffic and road network data used to calculate
    #   the route. Indicates one of the available providers:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] distance
    #   The total distance covered by the route. The sum of the distance
    #   travelled between every stop on the route.
    #
    #   <note markdown="1"> If Esri is the data source for the route calculator, the route
    #   distance can’t be greater than 400 km. If the route exceeds 400 km,
    #   the response is a `400 RoutesValidationException` error.
    #
    #    </note>
    #   @return [Float]
    #
    # @!attribute [rw] distance_unit
    #   The unit of measurement for route distances.
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The total travel time for the route measured in seconds. The sum of
    #   the travel time between every stop on the route.
    #   @return [Float]
    #
    # @!attribute [rw] route_b_box
    #   Specifies a geographical box surrounding a route. Used to zoom into
    #   a route when displaying it in a map. For example, `[min x, min y,
    #   max x, max y]`.
    #
    #   The first 2 `bbox` parameters describe the lower southwest corner:
    #
    #   * The first `bbox` position is the X coordinate or longitude of the
    #     lower southwest corner.
    #
    #   * The second `bbox` position is the Y coordinate or latitude of the
    #     lower southwest corner.
    #
    #   The next 2 `bbox` parameters describe the upper northeast corner:
    #
    #   * The third `bbox` position is the X coordinate, or longitude of the
    #     upper northeast corner.
    #
    #   * The fourth `bbox` position is the Y coordinate, or latitude of the
    #     upper northeast corner.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteSummary AWS API Documentation
    #
    class CalculateRouteSummary < Struct.new(
      :data_source,
      :distance,
      :distance_unit,
      :duration_seconds,
      :route_b_box)
      SENSITIVE = [:route_b_box]
      include Aws::Structure
    end

    # Contains details about additional route preferences for requests that
    # specify `TravelMode` as `Truck`.
    #
    # @note When making an API call, you may pass CalculateRouteTruckModeOptions
    #   data as a hash:
    #
    #       {
    #         avoid_ferries: false,
    #         avoid_tolls: false,
    #         dimensions: {
    #           height: 1.0,
    #           length: 1.0,
    #           unit: "Meters", # accepts Meters, Feet
    #           width: 1.0,
    #         },
    #         weight: {
    #           total: 1.0,
    #           unit: "Kilograms", # accepts Kilograms, Pounds
    #         },
    #       }
    #
    # @!attribute [rw] avoid_ferries
    #   Avoids ferries when calculating routes.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] avoid_tolls
    #   Avoids ferries when calculating routes.
    #
    #   Default Value: `false`
    #
    #   Valid Values: `false` \| `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] dimensions
    #   Specifies the truck's dimension specifications including length,
    #   height, width, and unit of measurement. Used to avoid roads that
    #   can't support the truck's dimensions.
    #   @return [Types::TruckDimensions]
    #
    # @!attribute [rw] weight
    #   Specifies the truck's weight specifications including total weight
    #   and unit of measurement. Used to avoid roads that can't support the
    #   truck's weight.
    #   @return [Types::TruckWeight]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CalculateRouteTruckModeOptions AWS API Documentation
    #
    class CalculateRouteTruckModeOptions < Struct.new(
      :avoid_ferries,
      :avoid_tolls,
      :dimensions,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was unsuccessful because of a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGeofenceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         kms_key_id: "KmsKeyId",
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         pricing_plan_data_source: "String",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] collection_name
    #   A custom name for the geofence collection.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique geofence collection name.
    #
    #   * No spaces allowed. For example, `ExampleGeofenceCollection`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A key identifier for an [AWS KMS customer managed key][1]. Enter a
    #   key ID, key ARN, alias name, or alias ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to the geofence collection. A tag is a
    #   key-value pair helps manage, identify, search, and filter your
    #   resources by labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateGeofenceCollectionRequest AWS API Documentation
    #
    class CreateGeofenceCollectionRequest < Struct.new(
      :collection_name,
      :description,
      :kms_key_id,
      :pricing_plan,
      :pricing_plan_data_source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_arn
    #   The Amazon Resource Name (ARN) for the geofence collection resource.
    #   Used when you need to specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] collection_name
    #   The name for the geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the geofence collection was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateGeofenceCollectionResponse AWS API Documentation
    #
    class CreateGeofenceCollectionResponse < Struct.new(
      :collection_arn,
      :collection_name,
      :create_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMapRequest
    #   data as a hash:
    #
    #       {
    #         configuration: { # required
    #           style: "MapStyle", # required
    #         },
    #         description: "ResourceDescription",
    #         map_name: "ResourceName", # required
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] configuration
    #   Specifies the map style selected from an available data provider.
    #   @return [Types::MapConfiguration]
    #
    # @!attribute [rw] description
    #   An optional description for the map resource.
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The name for the map resource.
    #
    #   Requirements:
    #
    #   * Must contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens
    #     (-), periods (.), and underscores (\_).
    #
    #   * Must be a unique map resource name.
    #
    #   * No spaces allowed. For example, `ExampleMap`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to the map resource. A tag is a key-value
    #   pair helps manage, identify, search, and filter your resources by
    #   labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateMapRequest AWS API Documentation
    #
    class CreateMapRequest < Struct.new(
      :configuration,
      :description,
      :map_name,
      :pricing_plan,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the map resource was created in [ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] map_arn
    #   The Amazon Resource Name (ARN) for the map resource. Used to specify
    #   a resource across all AWS.
    #
    #   * Format example: `arn:aws:geo:region:account-id:maps/ExampleMap`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The name of the map resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateMapResponse AWS API Documentation
    #
    class CreateMapResponse < Struct.new(
      :create_time,
      :map_arn,
      :map_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePlaceIndexRequest
    #   data as a hash:
    #
    #       {
    #         data_source: "String", # required
    #         data_source_configuration: {
    #           intended_use: "SingleUse", # accepts SingleUse, Storage
    #         },
    #         description: "ResourceDescription",
    #         index_name: "ResourceName", # required
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] data_source
    #   Specifies the geospatial data provider for the new place index.
    #
    #   <note markdown="1"> This field is case-sensitive. Enter the valid values as shown. For
    #   example, entering `HERE` returns an error.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `Esri` – For additional information about [Esri][1]'s coverage in
    #     your region of interest, see [Esri details on geocoding
    #     coverage][2].
    #
    #   * `Here` – For additional information about [HERE Technologies][3]'
    #     coverage in your region of interest, see [HERE details on
    #     goecoding coverage][4].
    #
    #     If you specify HERE Technologies (`Here`) as the data provider,
    #     you may not [store results][5] for locations in Japan. For more
    #     information, see the [AWS Service Terms][6] for Amazon Location
    #     Service.
    #
    #   For additional information , see [Data providers][7] on the *Amazon
    #   Location Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/esri.html
    #   [2]: https://developers.arcgis.com/rest/geocode/api-reference/geocode-coverage.htm
    #   [3]: https://docs.aws.amazon.com/location/latest/developerguide/HERE.html
    #   [4]: https://developer.here.com/documentation/geocoder/dev_guide/topics/coverage-geocoder.html
    #   [5]: https://docs.aws.amazon.com/location-places/latest/APIReference/API_DataSourceConfiguration.html
    #   [6]: https://aws.amazon.com/service-terms/
    #   [7]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   Specifies the data storage option requesting Places.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   The optional description for the place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique place index resource name.
    #
    #   * No spaces allowed. For example, `ExamplePlaceIndex`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to the place index resource. A tag is a
    #   key-value pair that helps you manage, identify, search, and filter
    #   your resources.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource.
    #
    #   * Each tag key must be unique and must have exactly one associated
    #     value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreatePlaceIndexRequest AWS API Documentation
    #
    class CreatePlaceIndexRequest < Struct.new(
      :data_source,
      :data_source_configuration,
      :description,
      :index_name,
      :pricing_plan,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the place index resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) for the place index resource. Used to
    #   specify a resource across AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name for the place index resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreatePlaceIndexResponse AWS API Documentation
    #
    class CreatePlaceIndexResponse < Struct.new(
      :create_time,
      :index_arn,
      :index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRouteCalculatorRequest
    #   data as a hash:
    #
    #       {
    #         calculator_name: "ResourceName", # required
    #         data_source: "String", # required
    #         description: "ResourceDescription",
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource.
    #
    #   Requirements:
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9) , hyphens (-),
    #     periods (.), and underscores (\_).
    #
    #   * Must be a unique Route calculator resource name.
    #
    #   * No spaces allowed. For example, `ExampleRouteCalculator`.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   Specifies the data provider of traffic and road network data.
    #
    #   <note markdown="1"> This field is case-sensitive. Enter the valid values as shown. For
    #   example, entering `HERE` returns an error. Route calculators that
    #   use Esri as a data source only calculate routes that are shorter
    #   than 400 km.
    #
    #    </note>
    #
    #   Valid values include:
    #
    #   * `Esri` – For additional information about [Esri][1]'s coverage in
    #     your region of interest, see [Esri details on street networks and
    #     traffic coverage][2].
    #
    #   * `Here` – For additional information about [HERE Technologies][3]'
    #     coverage in your region of interest, see [HERE car routing
    #     coverage][4] and [HERE truck routing coverage][5].
    #
    #   For additional information , see [Data providers][6] on the *Amazon
    #   Location Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/esri.html
    #   [2]: https://doc.arcgis.com/en/arcgis-online/reference/network-coverage.htm
    #   [3]: https://docs.aws.amazon.com/location/latest/developerguide/HERE.html
    #   [4]: https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/car-routing.html
    #   [5]: https://developer.here.com/documentation/routing-api/dev_guide/topics/coverage/truck-routing.html
    #   [6]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description for the route calculator resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to the route calculator resource. A tag is
    #   a key-value pair helps manage, identify, search, and filter your
    #   resources by labelling them.
    #
    #   * For example: \\\{ `"tag1" : "value1"`, `"tag2" : "value2"`\\}
    #
    #   ^
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateRouteCalculatorRequest AWS API Documentation
    #
    class CreateRouteCalculatorRequest < Struct.new(
      :calculator_name,
      :data_source,
      :description,
      :pricing_plan,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculator_arn
    #   The Amazon Resource Name (ARN) for the route calculator resource.
    #   Use the ARN when you specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:route-calculator/ExampleCalculator`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource.
    #
    #   * For example, `ExampleRouteCalculator`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp when the route calculator resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * For example, `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateRouteCalculatorResponse AWS API Documentation
    #
    class CreateRouteCalculatorResponse < Struct.new(
      :calculator_arn,
      :calculator_name,
      :create_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTrackerRequest
    #   data as a hash:
    #
    #       {
    #         description: "ResourceDescription",
    #         kms_key_id: "KmsKeyId",
    #         position_filtering: "TimeBased", # accepts TimeBased, DistanceBased, AccuracyBased
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         pricing_plan_data_source: "String",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   An optional description for the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A key identifier for an [AWS KMS customer managed key][1]. Enter a
    #   key ID, key ARN, alias name, or alias ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #   @return [String]
    #
    # @!attribute [rw] position_filtering
    #   Specifies the position filtering for the tracker resource.
    #
    #   Valid values:
    #
    #   * `TimeBased` - Location updates are evaluated against linked
    #     geofence collections, but not every location update is stored. If
    #     your update frequency is more often than 30 seconds, only one
    #     update per 30 seconds is stored for each unique device ID.
    #
    #   * `DistanceBased` - If the device has moved less than 30 m (98.4
    #     ft), location updates are ignored. Location updates within this
    #     area are neither evaluated against linked geofence collections,
    #     nor stored. This helps control costs by reducing the number of
    #     geofence evaluations and historical device positions to paginate
    #     through. Distance-based filtering can also reduce the effects of
    #     GPS noise when displaying device trajectories on a map.
    #
    #   * `AccuracyBased` - If the device has moved less than the measured
    #     accuracy, location updates are ignored. For example, if two
    #     consecutive updates from a device have a horizontal accuracy of 5
    #     m and 10 m, the second update is ignored if the device has moved
    #     less than 15 m. Ignored location updates are neither evaluated
    #     against linked geofence collections, nor stored. This can reduce
    #     the effects of GPS noise when displaying device trajectories on a
    #     map, and can help control your costs by reducing the number of
    #     geofence evaluations.
    #
    #   This field is optional. If not specified, the default value is
    #   `TimeBased`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to the tracker resource. A tag is a
    #   key-value pair helps manage, identify, search, and filter your
    #   resources by labelling them.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource
    #
    #   * Each resource tag must be unique with a maximum of one value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tracker_name
    #   The name for the tracker resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens
    #     (-), periods (.), and underscores (\_).
    #
    #   * Must be a unique tracker resource name.
    #
    #   * No spaces allowed. For example, `ExampleTracker`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateTrackerRequest AWS API Documentation
    #
    class CreateTrackerRequest < Struct.new(
      :description,
      :kms_key_id,
      :position_filtering,
      :pricing_plan,
      :pricing_plan_data_source,
      :tags,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the tracker resource was created in [ ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] tracker_arn
    #   The Amazon Resource Name (ARN) for the tracker resource. Used when
    #   you need to specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:tracker/ExampleTracker`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateTrackerResponse AWS API Documentation
    #
    class CreateTrackerResponse < Struct.new(
      :create_time,
      :tracker_arn,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the data storage option chosen for requesting Places.
    #
    # When using Amazon Location Places:
    #
    #  * If using HERE Technologies as a data provider, you can't store
    #   results for locations in Japan by setting `IntendedUse` to
    #   `Storage`. parameter.
    #
    # * Under the `MobileAssetTracking` or `MobilAssetManagement` pricing
    #   plan, you can't store results from your place index resources by
    #   setting `IntendedUse` to `Storage`. This returns a validation
    #   exception error.
    #
    #  For more information, see the [AWS Service Terms][1] for Amazon
    # Location Service.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @note When making an API call, you may pass DataSourceConfiguration
    #   data as a hash:
    #
    #       {
    #         intended_use: "SingleUse", # accepts SingleUse, Storage
    #       }
    #
    # @!attribute [rw] intended_use
    #   Specifies how the results of an operation will be stored by the
    #   caller.
    #
    #   Valid values include:
    #
    #   * `SingleUse` specifies that the results won't be stored.
    #
    #   * `Storage` specifies that the result can be cached or stored in a
    #     database.
    #
    #   Default value: `SingleUse`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DataSourceConfiguration AWS API Documentation
    #
    class DataSourceConfiguration < Struct.new(
      :intended_use)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGeofenceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] collection_name
    #   The name of the geofence collection to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteGeofenceCollectionRequest AWS API Documentation
    #
    class DeleteGeofenceCollectionRequest < Struct.new(
      :collection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteGeofenceCollectionResponse AWS API Documentation
    #
    class DeleteGeofenceCollectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteMapRequest
    #   data as a hash:
    #
    #       {
    #         map_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] map_name
    #   The name of the map resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteMapRequest AWS API Documentation
    #
    class DeleteMapRequest < Struct.new(
      :map_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteMapResponse AWS API Documentation
    #
    class DeleteMapResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePlaceIndexRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeletePlaceIndexRequest AWS API Documentation
    #
    class DeletePlaceIndexRequest < Struct.new(
      :index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeletePlaceIndexResponse AWS API Documentation
    #
    class DeletePlaceIndexResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRouteCalculatorRequest
    #   data as a hash:
    #
    #       {
    #         calculator_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteRouteCalculatorRequest AWS API Documentation
    #
    class DeleteRouteCalculatorRequest < Struct.new(
      :calculator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteRouteCalculatorResponse AWS API Documentation
    #
    class DeleteRouteCalculatorResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTrackerRequest
    #   data as a hash:
    #
    #       {
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteTrackerRequest AWS API Documentation
    #
    class DeleteTrackerRequest < Struct.new(
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DeleteTrackerResponse AWS API Documentation
    #
    class DeleteTrackerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeGeofenceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] collection_name
    #   The name of the geofence collection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeGeofenceCollectionRequest AWS API Documentation
    #
    class DescribeGeofenceCollectionRequest < Struct.new(
      :collection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_arn
    #   The Amazon Resource Name (ARN) for the geofence collection resource.
    #   Used when you need to specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] collection_name
    #   The name of the geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the geofence resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The optional description for the geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A key identifier for an [AWS KMS customer managed key][1] assigned
    #   to the Amazon Location resource
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   No longer used. Always returns an empty string.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Displays the key, value pairs of tags associated with this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the geofence collection was last updated in
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeGeofenceCollectionResponse AWS API Documentation
    #
    class DescribeGeofenceCollectionResponse < Struct.new(
      :collection_arn,
      :collection_name,
      :create_time,
      :description,
      :kms_key_id,
      :pricing_plan,
      :pricing_plan_data_source,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMapRequest
    #   data as a hash:
    #
    #       {
    #         map_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] map_name
    #   The name of the map resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeMapRequest AWS API Documentation
    #
    class DescribeMapRequest < Struct.new(
      :map_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   Specifies the map tile style selected from a partner data provider.
    #   @return [Types::MapConfiguration]
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the map resource was created in [ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   Specifies the data provider for the associated map tiles.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description for the map resource.
    #   @return [String]
    #
    # @!attribute [rw] map_arn
    #   The Amazon Resource Name (ARN) for the map resource. Used to specify
    #   a resource across all AWS.
    #
    #   * Format example: `arn:aws:geo:region:account-id:maps/ExampleMap`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The map style selected from an available provider.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the map resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the map resource was last update in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeMapResponse AWS API Documentation
    #
    class DescribeMapResponse < Struct.new(
      :configuration,
      :create_time,
      :data_source,
      :description,
      :map_arn,
      :map_name,
      :pricing_plan,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePlaceIndexRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribePlaceIndexRequest AWS API Documentation
    #
    class DescribePlaceIndexRequest < Struct.new(
      :index_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the place index resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data provider of geospatial data. Values can be one of the
    #   following:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The specified data storage option for requesting Places.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   The optional description for the place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) for the place index resource. Used to
    #   specify a resource across AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource being described.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with place index resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the place index resource was last updated in
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribePlaceIndexResponse AWS API Documentation
    #
    class DescribePlaceIndexResponse < Struct.new(
      :create_time,
      :data_source,
      :data_source_configuration,
      :description,
      :index_arn,
      :index_name,
      :pricing_plan,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRouteCalculatorRequest
    #   data as a hash:
    #
    #       {
    #         calculator_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeRouteCalculatorRequest AWS API Documentation
    #
    class DescribeRouteCalculatorRequest < Struct.new(
      :calculator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculator_arn
    #   The Amazon Resource Name (ARN) for the Route calculator resource.
    #   Use the ARN when you specify a resource across AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:route-calculator/ExampleCalculator`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource being described.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp when the route calculator resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * For example, `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data provider of traffic and road network data. Indicates one of
    #   the available providers:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description of the route calculator resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with route calculator resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] update_time
    #   The timestamp when the route calculator resource was last updated in
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * For example, `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeRouteCalculatorResponse AWS API Documentation
    #
    class DescribeRouteCalculatorResponse < Struct.new(
      :calculator_arn,
      :calculator_name,
      :create_time,
      :data_source,
      :description,
      :pricing_plan,
      :tags,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTrackerRequest
    #   data as a hash:
    #
    #       {
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeTrackerRequest AWS API Documentation
    #
    class DescribeTrackerRequest < Struct.new(
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the tracker resource was created in [ ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The optional description for the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   A key identifier for an [AWS KMS customer managed key][1] assigned
    #   to the Amazon Location resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html
    #   @return [String]
    #
    # @!attribute [rw] position_filtering
    #   The position filtering method of the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   No longer used. Always returns an empty string.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the tracker resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tracker_arn
    #   The Amazon Resource Name (ARN) for the tracker resource. Used when
    #   you need to specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:tracker/ExampleTracker`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the tracker resource was last updated in [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DescribeTrackerResponse AWS API Documentation
    #
    class DescribeTrackerResponse < Struct.new(
      :create_time,
      :description,
      :kms_key_id,
      :position_filtering,
      :pricing_plan,
      :pricing_plan_data_source,
      :tags,
      :tracker_arn,
      :tracker_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the device position details.
    #
    # @!attribute [rw] accuracy
    #   The accuracy of the device position.
    #   @return [Types::PositionalAccuracy]
    #
    # @!attribute [rw] device_id
    #   The device whose position you retrieved.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The last known device position.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position_properties
    #   The properties associated with the position.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] received_time
    #   The timestamp for when the tracker resource received the device
    #   position in [ ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] sample_time
    #   The timestamp at which the device's position was determined. Uses [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DevicePosition AWS API Documentation
    #
    class DevicePosition < Struct.new(
      :accuracy,
      :device_id,
      :position,
      :position_properties,
      :received_time,
      :sample_time)
      SENSITIVE = [:position, :position_properties]
      include Aws::Structure
    end

    # Contains the position update details for a device.
    #
    # @note When making an API call, you may pass DevicePositionUpdate
    #   data as a hash:
    #
    #       {
    #         accuracy: {
    #           horizontal: 1.0, # required
    #         },
    #         device_id: "Id", # required
    #         position: [1.0], # required
    #         position_properties: {
    #           "PropertyMapKeyString" => "PropertyMapValueString",
    #         },
    #         sample_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] accuracy
    #   The accuracy of the device position.
    #   @return [Types::PositionalAccuracy]
    #
    # @!attribute [rw] device_id
    #   The device associated to the position update.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The latest device position defined in [WGS 84][1] format: `[X or
    #   longitude, Y or latitude]`.
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position_properties
    #   Associates one of more properties with the position update. A
    #   property is a key-value pair stored with the position update and
    #   added to any geofence event the update may trigger.
    #
    #   Format: `"key" : "value"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sample_time
    #   The timestamp at which the device's position was determined. Uses
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DevicePositionUpdate AWS API Documentation
    #
    class DevicePositionUpdate < Struct.new(
      :accuracy,
      :device_id,
      :position,
      :position_properties,
      :sample_time)
      SENSITIVE = [:position, :position_properties]
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateTrackerConsumerRequest
    #   data as a hash:
    #
    #       {
    #         consumer_arn: "Arn", # required
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] consumer_arn
    #   The Amazon Resource Name (ARN) for the geofence collection to be
    #   disassociated from the tracker resource. Used when you need to
    #   specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource to be dissociated from the
    #   consumer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DisassociateTrackerConsumerRequest AWS API Documentation
    #
    class DisassociateTrackerConsumerRequest < Struct.new(
      :consumer_arn,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DisassociateTrackerConsumerResponse AWS API Documentation
    #
    class DisassociateTrackerConsumerResponse < Aws::EmptyStructure; end

    # Contains the geofence geometry details.
    #
    # <note markdown="1"> Amazon Location doesn't currently support polygons with holes,
    # multipolygons, polygons that are wound clockwise, or that cross the
    # antimeridian.
    #
    #  </note>
    #
    # @note When making an API call, you may pass GeofenceGeometry
    #   data as a hash:
    #
    #       {
    #         polygon: [
    #           [
    #             [1.0],
    #           ],
    #         ],
    #       }
    #
    # @!attribute [rw] polygon
    #   An array of 1 or more linear rings. A linear ring is an array of 4
    #   or more vertices, where the first and last vertex are the same to
    #   form a closed boundary. Each vertex is a 2-dimensional point of the
    #   form: `[longitude, latitude]`.
    #
    #   The first linear ring is an outer ring, describing the polygon's
    #   boundary. Subsequent linear rings may be inner or outer rings to
    #   describe holes and islands. Outer rings must list their vertices in
    #   counter-clockwise order around the ring's center, where the left
    #   side is the polygon's exterior. Inner rings must list their
    #   vertices in clockwise order, where the left side is the polygon's
    #   interior.
    #   @return [Array<Array<Array<Float>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GeofenceGeometry AWS API Documentation
    #
    class GeofenceGeometry < Struct.new(
      :polygon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevicePositionHistoryRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "Id", # required
    #         end_time_exclusive: Time.now,
    #         next_token: "Token",
    #         start_time_inclusive: Time.now,
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] device_id
    #   The device whose position history you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] end_time_exclusive
    #   Specify the end time for the position history in [ ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`. By default, the value will be
    #   the time that the request is made.
    #
    #   Requirement:
    #
    #   * The time specified for `EndTimeExclusive` must be after the time
    #     for `StartTimeInclusive`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @!attribute [rw] start_time_inclusive
    #   Specify the start time for the position history in [ ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`. By default, the value will be 24
    #   hours prior to the time that the request is made.
    #
    #   Requirement:
    #
    #   * The time specified for `StartTimeInclusive` must be before
    #     `EndTimeExclusive`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] tracker_name
    #   The tracker resource receiving the request for the device position
    #   history.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePositionHistoryRequest AWS API Documentation
    #
    class GetDevicePositionHistoryRequest < Struct.new(
      :device_id,
      :end_time_exclusive,
      :next_token,
      :start_time_inclusive,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_positions
    #   Contains the position history details for the requested device.
    #   @return [Array<Types::DevicePosition>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePositionHistoryResponse AWS API Documentation
    #
    class GetDevicePositionHistoryResponse < Struct.new(
      :device_positions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevicePositionRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "Id", # required
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] device_id
    #   The device whose position you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The tracker resource receiving the position update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePositionRequest AWS API Documentation
    #
    class GetDevicePositionRequest < Struct.new(
      :device_id,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accuracy
    #   The accuracy of the device position.
    #   @return [Types::PositionalAccuracy]
    #
    # @!attribute [rw] device_id
    #   The device whose position you retrieved.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The last known device position.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position_properties
    #   The properties associated with the position.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] received_time
    #   The timestamp for when the tracker resource received the device
    #   position in [ ISO 8601 ][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] sample_time
    #   The timestamp at which the device's position was determined. Uses [
    #   ISO 8601 ][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetDevicePositionResponse AWS API Documentation
    #
    class GetDevicePositionResponse < Struct.new(
      :accuracy,
      :device_id,
      :position,
      :position_properties,
      :received_time,
      :sample_time)
      SENSITIVE = [:position, :position_properties]
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGeofenceRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         geofence_id: "Id", # required
    #       }
    #
    # @!attribute [rw] collection_name
    #   The geofence collection storing the target geofence.
    #   @return [String]
    #
    # @!attribute [rw] geofence_id
    #   The geofence you're retrieving details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetGeofenceRequest AWS API Documentation
    #
    class GetGeofenceRequest < Struct.new(
      :collection_name,
      :geofence_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the geofence collection was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] geofence_id
    #   The geofence identifier.
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Contains the geofence geometry details describing a polygon.
    #   @return [Types::GeofenceGeometry]
    #
    # @!attribute [rw] status
    #   Identifies the state of the geofence. A geofence will hold one of
    #   the following states:
    #
    #   * `ACTIVE` — The geofence has been indexed by the system.
    #
    #   * `PENDING` — The geofence is being processed by the system.
    #
    #   * `FAILED` — The geofence failed to be indexed by the system.
    #
    #   * `DELETED` — The geofence has been deleted from the system index.
    #
    #   * `DELETING` — The geofence is being deleted from the system index.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the geofence collection was last updated in
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetGeofenceResponse AWS API Documentation
    #
    class GetGeofenceResponse < Struct.new(
      :create_time,
      :geofence_id,
      :geometry,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMapGlyphsRequest
    #   data as a hash:
    #
    #       {
    #         font_stack: "String", # required
    #         font_unicode_range: "GetMapGlyphsRequestFontUnicodeRangeString", # required
    #         map_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] font_stack
    #   A comma-separated list of fonts to load glyphs from in order of
    #   preference. For example, `Noto Sans Regular, Arial Unicode`.
    #
    #   Valid fonts stacks for [Esri][1] styles:
    #
    #   * VectorEsriDarkGrayCanvas – `Ubuntu Medium Italic` \| `Ubuntu
    #     Medium` \| `Ubuntu Italic` \| `Ubuntu Regular` \| `Ubuntu Bold`
    #
    #   * VectorEsriLightGrayCanvas – `Ubuntu Italic` \| `Ubuntu Regular` \|
    #     `Ubuntu Light` \| `Ubuntu Bold`
    #
    #   * VectorEsriTopographic – `Noto Sans Italic` \| `Noto Sans Regular`
    #     \| `Noto Sans Bold` \| `Noto Serif Regular` \| `Roboto Condensed
    #     Light Italic`
    #
    #   * VectorEsriStreets – `Arial Regular` \| `Arial Italic` \| `Arial
    #     Bold`
    #
    #   * VectorEsriNavigation – `Arial Regular` \| `Arial Italic` \| `Arial
    #     Bold`
    #
    #   Valid font stacks for [HERE Technologies][2] styles:
    #
    #   * VectorHereBerlin – `Fira GO Regular` \| `Fira GO Bold`
    #
    #   ^
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/esri.html
    #   [2]: https://docs.aws.amazon.com/location/latest/developerguide/HERE.html
    #   @return [String]
    #
    # @!attribute [rw] font_unicode_range
    #   A Unicode range of characters to download glyphs for. Each response
    #   will contain 256 characters. For example, 0–255 includes all
    #   characters from range `U+0000` to `00FF`. Must be aligned to
    #   multiples of 256.
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The map resource associated with the glyph ﬁle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapGlyphsRequest AWS API Documentation
    #
    class GetMapGlyphsRequest < Struct.new(
      :font_stack,
      :font_unicode_range,
      :map_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   The blob's content type.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The map glyph content type. For example, `application/octet-stream`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapGlyphsResponse AWS API Documentation
    #
    class GetMapGlyphsResponse < Struct.new(
      :blob,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMapSpritesRequest
    #   data as a hash:
    #
    #       {
    #         file_name: "GetMapSpritesRequestFileNameString", # required
    #         map_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] file_name
    #   The name of the sprite ﬁle. Use the following ﬁle names for the
    #   sprite sheet:
    #
    #   * `sprites.png`
    #
    #   * `sprites@2x.png` for high pixel density displays
    #
    #   For the JSON document contain image offsets. Use the following ﬁle
    #   names:
    #
    #   * `sprites.json`
    #
    #   * `sprites@2x.json` for high pixel density displays
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The map resource associated with the sprite ﬁle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapSpritesRequest AWS API Documentation
    #
    class GetMapSpritesRequest < Struct.new(
      :file_name,
      :map_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   Contains the body of the sprite sheet or JSON offset ﬁle.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the sprite sheet and offsets. For example, the
    #   sprite sheet content type is `image/png`, and the sprite offset JSON
    #   document is `application/json`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapSpritesResponse AWS API Documentation
    #
    class GetMapSpritesResponse < Struct.new(
      :blob,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMapStyleDescriptorRequest
    #   data as a hash:
    #
    #       {
    #         map_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] map_name
    #   The map resource to retrieve the style descriptor from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapStyleDescriptorRequest AWS API Documentation
    #
    class GetMapStyleDescriptorRequest < Struct.new(
      :map_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   Contains the body of the style descriptor.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The style descriptor's content type. For example,
    #   `application/json`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapStyleDescriptorResponse AWS API Documentation
    #
    class GetMapStyleDescriptorResponse < Struct.new(
      :blob,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMapTileRequest
    #   data as a hash:
    #
    #       {
    #         map_name: "ResourceName", # required
    #         x: "GetMapTileRequestXString", # required
    #         y: "GetMapTileRequestYString", # required
    #         z: "GetMapTileRequestZString", # required
    #       }
    #
    # @!attribute [rw] map_name
    #   The map resource to retrieve the map tiles from.
    #   @return [String]
    #
    # @!attribute [rw] x
    #   The X axis value for the map tile.
    #   @return [String]
    #
    # @!attribute [rw] y
    #   The Y axis value for the map tile.
    #   @return [String]
    #
    # @!attribute [rw] z
    #   The zoom value for the map tile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapTileRequest AWS API Documentation
    #
    class GetMapTileRequest < Struct.new(
      :map_name,
      :x,
      :y,
      :z)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blob
    #   Contains Mapbox Vector Tile (MVT) data.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The map tile's content type. For example,
    #   `application/vnd.mapbox-vector-tile`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/GetMapTileResponse AWS API Documentation
    #
    class GetMapTileResponse < Struct.new(
      :blob,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed to process because of an unknown server error,
    # exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the calculated route's details for each path between a pair
    # of positions. The number of legs returned corresponds to one fewer
    # than the total number of positions in the request.
    #
    # For example, a route with a departure position and destination
    # position returns one leg with the positions [snapped to a nearby
    # road][1]\:
    #
    # * The `StartPosition` is the departure position.
    #
    # * The `EndPosition` is the destination position.
    #
    # A route with a waypoint between the departure and destination position
    # returns two legs with the positions snapped to a nearby road:
    #
    # * Leg 1: The `StartPosition` is the departure position . The
    #   `EndPosition` is the waypoint positon.
    #
    # * Leg 2: The `StartPosition` is the waypoint position. The
    #   `EndPosition` is the destination position.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #
    # @!attribute [rw] distance
    #   The distance between the leg's `StartPosition` and `EndPosition`
    #   along a calculated route.
    #
    #   * The default measurement is `Kilometers` unless the request
    #     specifies a `DistanceUnit` of `Miles`.
    #
    #   ^
    #   @return [Float]
    #
    # @!attribute [rw] duration_seconds
    #   The estimated travel time between the leg's `StartPosition` and
    #   `EndPosition`. The travel mode and departure time that you specify
    #   in the request determines the calculated time.
    #   @return [Float]
    #
    # @!attribute [rw] end_position
    #   The terminating position of the leg. Follows the format
    #   `[longitude,latitude]`.
    #
    #   <note markdown="1"> If the `EndPosition` isn't located on a road, it's [snapped to a
    #   nearby road][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/nap-to-nearby-road.html
    #   @return [Array<Float>]
    #
    # @!attribute [rw] geometry
    #   Contains the calculated route's path as a linestring geometry.
    #   @return [Types::LegGeometry]
    #
    # @!attribute [rw] start_position
    #   The starting position of the leg. Follows the format
    #   `[longitude,latitude]`.
    #
    #   <note markdown="1"> If the `StartPosition` isn't located on a road, it's [snapped to a
    #   nearby road][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html
    #   @return [Array<Float>]
    #
    # @!attribute [rw] steps
    #   Contains a list of steps, which represent subsections of a leg. Each
    #   step provides instructions for how to move to the next step in the
    #   leg such as the step's start position, end position, travel
    #   distance, travel duration, and geometry offset.
    #   @return [Array<Types::Step>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/Leg AWS API Documentation
    #
    class Leg < Struct.new(
      :distance,
      :duration_seconds,
      :end_position,
      :geometry,
      :start_position,
      :steps)
      SENSITIVE = [:end_position, :start_position]
      include Aws::Structure
    end

    # Contains the geometry details for each path between a pair of
    # positions. Used in plotting a route leg on a map.
    #
    # @!attribute [rw] line_string
    #   An ordered list of positions used to plot a route on a map.
    #
    #   The first position is closest to the start position for the leg, and
    #   the last position is the closest to the end position for the leg.
    #
    #   * For example, `[[-123.117, 49.284],[-123.115, 49.285],[-123.115,
    #     49.285]]`
    #
    #   ^
    #   @return [Array<Array<Float>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/LegGeometry AWS API Documentation
    #
    class LegGeometry < Struct.new(
      :line_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDevicePositionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of entries returned in a single
    #   call.
    #
    #   Default value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The tracker resource containing the requested devices.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListDevicePositionsRequest AWS API Documentation
    #
    class ListDevicePositionsRequest < Struct.new(
      :max_results,
      :next_token,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Contains details about each device's last known position. These
    #   details includes the device ID, the time when the position was
    #   sampled on the device, the time that the service received the
    #   update, and the most recent coordinates.
    #   @return [Array<Types::ListDevicePositionsResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListDevicePositionsResponse AWS API Documentation
    #
    class ListDevicePositionsResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the tracker resource details.
    #
    # @!attribute [rw] accuracy
    #   The accuracy of the device position.
    #   @return [Types::PositionalAccuracy]
    #
    # @!attribute [rw] device_id
    #   The ID of the device for this position.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The last known device position. Empty if no positions currently
    #   stored.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] position_properties
    #   The properties associated with the position.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] sample_time
    #   The timestamp at which the device position was determined. Uses [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListDevicePositionsResponseEntry AWS API Documentation
    #
    class ListDevicePositionsResponseEntry < Struct.new(
      :accuracy,
      :device_id,
      :position,
      :position_properties,
      :sample_time)
      SENSITIVE = [:position, :position_properties]
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGeofenceCollectionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofenceCollectionsRequest AWS API Documentation
    #
    class ListGeofenceCollectionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Lists the geofence collections that exist in your AWS account.
    #   @return [Array<Types::ListGeofenceCollectionsResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofenceCollectionsResponse AWS API Documentation
    #
    class ListGeofenceCollectionsResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the geofence collection details.
    #
    # @!attribute [rw] collection_name
    #   The name of the geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the geofence collection was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the geofence collection
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   No longer used. Always returns an empty string.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   Specifies a timestamp for when the resource was last updated in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofenceCollectionsResponseEntry AWS API Documentation
    #
    class ListGeofenceCollectionsResponseEntry < Struct.new(
      :collection_name,
      :create_time,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of geofences stored in a given geofence collection.
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the geofence was stored in a geofence
    #   collection in [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] geofence_id
    #   The geofence identifier.
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Contains the geofence geometry details describing a polygon.
    #   @return [Types::GeofenceGeometry]
    #
    # @!attribute [rw] status
    #   Identifies the state of the geofence. A geofence will hold one of
    #   the following states:
    #
    #   * `ACTIVE` — The geofence has been indexed by the system.
    #
    #   * `PENDING` — The geofence is being processed by the system.
    #
    #   * `FAILED` — The geofence failed to be indexed by the system.
    #
    #   * `DELETED` — The geofence has been deleted from the system index.
    #
    #   * `DELETING` — The geofence is being deleted from the system index.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the geofence was last updated in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofenceResponseEntry AWS API Documentation
    #
    class ListGeofenceResponseEntry < Struct.new(
      :create_time,
      :geofence_id,
      :geometry,
      :status,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGeofencesRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] collection_name
    #   The name of the geofence collection storing the list of geofences.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofencesRequest AWS API Documentation
    #
    class ListGeofencesRequest < Struct.new(
      :collection_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Contains a list of geofences stored in the geofence collection.
    #   @return [Array<Types::ListGeofenceResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListGeofencesResponse AWS API Documentation
    #
    class ListGeofencesResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMapsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListMapsRequest AWS API Documentation
    #
    class ListMapsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Contains a list of maps in your AWS account
    #   @return [Array<Types::ListMapsResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListMapsResponse AWS API Documentation
    #
    class ListMapsResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of an existing map resource in your AWS account.
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the map resource was created in [ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   Specifies the data provider for the associated map tiles.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the map resource.
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The name of the associated map resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the map resource was last updated in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListMapsResponseEntry AWS API Documentation
    #
    class ListMapsResponseEntry < Struct.new(
      :create_time,
      :data_source,
      :description,
      :map_name,
      :pricing_plan,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPlaceIndexesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional limit for the maximum number of results returned in a
    #   single call.
    #
    #   Default value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListPlaceIndexesRequest AWS API Documentation
    #
    class ListPlaceIndexesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Lists the place index resources that exist in your AWS account
    #   @return [Array<Types::ListPlaceIndexesResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating that there are additional pages
    #   available. You can use the token in a new request to fetch the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListPlaceIndexesResponse AWS API Documentation
    #
    class ListPlaceIndexesResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A place index resource listed in your AWS account.
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the place index resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data provider of geospatial data. Values can be one of the
    #   following:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description for the place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the place index resource was last updated in
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListPlaceIndexesResponseEntry AWS API Documentation
    #
    class ListPlaceIndexesResponseEntry < Struct.new(
      :create_time,
      :data_source,
      :description,
      :index_name,
      :pricing_plan,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRouteCalculatorsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional maximum number of results returned in a single call.
    #
    #   Default Value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default Value: `null`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListRouteCalculatorsRequest AWS API Documentation
    #
    class ListRouteCalculatorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Lists the route calculator resources that exist in your AWS account
    #   @return [Array<Types::ListRouteCalculatorsResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a subsequent request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListRouteCalculatorsResponse AWS API Documentation
    #
    class ListRouteCalculatorsResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A route calculator resource listed in your AWS account.
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The timestamp when the route calculator resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * For example, `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data provider of traffic and road network data. Indicates one of
    #   the available providers:
    #
    #   * `Esri`
    #
    #   * `Here`
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description of the route calculator resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp when the route calculator resource was last updated in
    #   [ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * For example, `2020–07-2T12:15:20.000Z+01:00`
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListRouteCalculatorsResponseEntry AWS API Documentation
    #
    class ListRouteCalculatorsResponseEntry < Struct.new(
      :calculator_name,
      :create_time,
      :data_source,
      :description,
      :pricing_plan,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to retrieve.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:resourcetype/ExampleResource`
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags that have been applied to the specified resource. Tags are
    #   mapped from the tag key to the tag value: `"TagKey" : "TagValue"`.
    #
    #   * Format example: `\{"tag1" : "value1", "tag2" : "value2"\} `
    #
    #   ^
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrackerConsumersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The tracker resource whose associated geofence collections you want
    #   to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackerConsumersRequest AWS API Documentation
    #
    class ListTrackerConsumersRequest < Struct.new(
      :max_results,
      :next_token,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] consumer_arns
    #   Contains the list of geofence collection ARNs associated to the
    #   tracker resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackerConsumersResponse AWS API Documentation
    #
    class ListTrackerConsumersResponse < Struct.new(
      :consumer_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTrackersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   An optional limit for the number of resources returned in a single
    #   call.
    #
    #   Default value: `100`
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token specifying which page of results to return in
    #   the response. If no token is provided, the default page is the first
    #   page.
    #
    #   Default value: `null`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackersRequest AWS API Documentation
    #
    class ListTrackersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   Contains tracker resources in your AWS account. Details include
    #   tracker name, description and timestamps for when the tracker was
    #   created and last updated.
    #   @return [Array<Types::ListTrackersResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackersResponse AWS API Documentation
    #
    class ListTrackersResponse < Struct.new(
      :entries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the tracker resource details.
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the tracker resource was created in [ ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Always returns `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   No longer used. Always returns an empty string.
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp at which the device's position was determined. Uses [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ListTrackersResponseEntry AWS API Documentation
    #
    class ListTrackersResponseEntry < Struct.new(
      :create_time,
      :description,
      :pricing_plan,
      :pricing_plan_data_source,
      :tracker_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the map tile style selected from an available provider.
    #
    # @note When making an API call, you may pass MapConfiguration
    #   data as a hash:
    #
    #       {
    #         style: "MapStyle", # required
    #       }
    #
    # @!attribute [rw] style
    #   Specifies the map style selected from an available data provider.
    #
    #   Valid [Esri map styles][1]\:
    #
    #   * `VectorEsriDarkGrayCanvas` – The Esri Dark Gray Canvas map style.
    #     A vector basemap with a dark gray, neutral background with minimal
    #     colors, labels, and features that's designed to draw attention to
    #     your thematic content.
    #
    #   * `RasterEsriImagery` – The Esri Imagery map style. A raster basemap
    #     that provides one meter or better satellite and aerial imagery in
    #     many parts of the world and lower resolution satellite imagery
    #     worldwide.
    #
    #   * `VectorEsriLightGrayCanvas` – The Esri Light Gray Canvas map
    #     style, which provides a detailed vector basemap with a light gray,
    #     neutral background style with minimal colors, labels, and features
    #     that's designed to draw attention to your thematic content.
    #
    #   * `VectorEsriTopographic` – The Esri Light map style, which provides
    #     a detailed vector basemap with a classic Esri map style.
    #
    #   * `VectorEsriStreets` – The Esri World Streets map style, which
    #     provides a detailed vector basemap for the world symbolized with a
    #     classic Esri street map style. The vector tile layer is similar in
    #     content and style to the World Street Map raster map.
    #
    #   * `VectorEsriNavigation` – The Esri World Navigation map style,
    #     which provides a detailed basemap for the world symbolized with a
    #     custom navigation map style that's designed for use during the
    #     day in mobile devices.
    #
    #   Valid [HERE Technologies map styles][2]\:
    #
    #   * `VectorHereBerlin` – The HERE Berlin map style is a high contrast
    #     detailed base map of the world that blends 3D and 2D rendering.
    #
    #     <note markdown="1"> When using HERE as your data provider, and selecting the Style
    #     `VectorHereBerlin`, you may not use HERE Technologies maps for
    #     Asset Management. See the [AWS Service Terms][3] for Amazon
    #     Location Service.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/esri.html
    #   [2]: https://docs.aws.amazon.com/location/latest/developerguide/HERE.html
    #   [3]: https://aws.amazon.com/service-terms/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/MapConfiguration AWS API Documentation
    #
    class MapConfiguration < Struct.new(
      :style)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about addresses or points of interest that match the
    # search criteria.
    #
    # @!attribute [rw] address_number
    #   The numerical portion of an address, such as a building number.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   A country/region specified using [ISO 3166][1] 3-digit
    #   country/region code. For example, `CAN`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-3166-country-codes.html
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Places uses a point geometry to specify a location or a Place.
    #   @return [Types::PlaceGeometry]
    #
    # @!attribute [rw] interpolated
    #   `True` if the result is interpolated from other known places.
    #
    #   `False` if the Place is a known place.
    #
    #   Not returned when the partner does not provide the information.
    #
    #   For example, returns `False` for an address location that is found
    #   in the partner data, but returns `True` if an address does not exist
    #   in the partner data and its location is calculated by interpolating
    #   between other known addresses.
    #   @return [Boolean]
    #
    # @!attribute [rw] label
    #   The full name and address of the point of interest such as a city,
    #   region, or country. For example, `123 Any Street, Any Town, USA`.
    #   @return [String]
    #
    # @!attribute [rw] municipality
    #   A name for a local area, such as a city or town name. For example,
    #   `Toronto`.
    #   @return [String]
    #
    # @!attribute [rw] neighborhood
    #   The name of a community district. For example, `Downtown`.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   A group of numbers and letters in a country-specific format, which
    #   accompanies the address for the purpose of identifying a location.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   A name for an area or geographical division, such as a province or
    #   state name. For example, `British Columbia`.
    #   @return [String]
    #
    # @!attribute [rw] street
    #   The name for a street or a road to identify a location. For example,
    #   `Main Street`.
    #   @return [String]
    #
    # @!attribute [rw] sub_region
    #   A country, or an area that's part of a larger region. For example,
    #   `Metro Vancouver`.
    #   @return [String]
    #
    # @!attribute [rw] time_zone
    #   The time zone in which the `Place` is located. Returned only when
    #   using Here as the selected partner.
    #   @return [Types::TimeZone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/Place AWS API Documentation
    #
    class Place < Struct.new(
      :address_number,
      :country,
      :geometry,
      :interpolated,
      :label,
      :municipality,
      :neighborhood,
      :postal_code,
      :region,
      :street,
      :sub_region,
      :time_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Places uses a point geometry to specify a location or a Place.
    #
    # @!attribute [rw] point
    #   A single point geometry specifies a location for a Place using [WGS
    #   84][1] coordinates:
    #
    #   * *x* — Specifies the x coordinate or longitude.
    #
    #   * *y* — Specifies the y coordinate or latitude.
    #
    #
    #
    #   [1]: https://gisgeography.com/wgs84-world-geodetic-system/
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/PlaceGeometry AWS API Documentation
    #
    class PlaceGeometry < Struct.new(
      :point)
      SENSITIVE = [:point]
      include Aws::Structure
    end

    # Defines the level of certainty of the position.
    #
    # @note When making an API call, you may pass PositionalAccuracy
    #   data as a hash:
    #
    #       {
    #         horizontal: 1.0, # required
    #       }
    #
    # @!attribute [rw] horizontal
    #   Estimated maximum distance, in meters, between the measured position
    #   and the true position of a device, along the Earth's surface.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/PositionalAccuracy AWS API Documentation
    #
    class PositionalAccuracy < Struct.new(
      :horizontal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutGeofenceRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         geofence_id: "Id", # required
    #         geometry: { # required
    #           polygon: [
    #             [
    #               [1.0],
    #             ],
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] collection_name
    #   The geofence collection to store the geofence in.
    #   @return [String]
    #
    # @!attribute [rw] geofence_id
    #   An identifier for the geofence. For example, `ExampleGeofence-1`.
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Contains the polygon details to specify the position of the
    #   geofence.
    #
    #   <note markdown="1"> Each [geofence polygon][1] can have a maximum of 1,000 vertices.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location-geofences/latest/APIReference/API_GeofenceGeometry.html
    #   @return [Types::GeofenceGeometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/PutGeofenceRequest AWS API Documentation
    #
    class PutGeofenceRequest < Struct.new(
      :collection_name,
      :geofence_id,
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the geofence was created in [ISO 8601][1]
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] geofence_id
    #   The geofence identifier entered in the request.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the geofence was last updated in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/PutGeofenceResponse AWS API Documentation
    #
    class PutGeofenceResponse < Struct.new(
      :create_time,
      :geofence_id,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you've entered was not found in your AWS account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result for one `SnappedDeparturePosition`
    # `SnappedDestinationPosition` pair.
    #
    # @!attribute [rw] distance
    #   The total distance of travel for the route.
    #   @return [Float]
    #
    # @!attribute [rw] duration_seconds
    #   The expected duration of travel for the route.
    #   @return [Float]
    #
    # @!attribute [rw] error
    #   An error corresponding to the calculation of a route between the
    #   `DeparturePosition` and `DestinationPosition`.
    #   @return [Types::RouteMatrixEntryError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/RouteMatrixEntry AWS API Documentation
    #
    class RouteMatrixEntry < Struct.new(
      :distance,
      :duration_seconds,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error corresponding to the calculation of a route between the
    # `DeparturePosition` and `DestinationPosition`.
    #
    # The error code can be one of the following:
    #
    # * `RouteNotFound` - Unable to find a valid route with the given
    #   parameters.
    #
    # ^
    # ^
    #
    # * `RouteTooLong` - Route calculation went beyond the maximum size of a
    #   route and was terminated before completion.
    #
    # ^
    # ^
    #
    # * `PositionsNotFound` - One or more of the input positions were not
    #   found on the route network.
    #
    # ^
    # ^
    #
    # * `DestinationPositionNotFound` - The destination position was not
    #   found on the route network.
    #
    # ^
    # ^
    #
    # * `DeparturePositionNotFound` - The departure position was not found
    #   on the route network.
    #
    # ^
    # ^
    #
    # * `OtherValidationError` - The given inputs were not valid or a route
    #   was not found. More information is given in the error `Message`
    #
    # ^
    #
    # @!attribute [rw] code
    #   The type of error which occurred for the route calculation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message about the error that occurred for the route calculation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/RouteMatrixEntryError AWS API Documentation
    #
    class RouteMatrixEntryError < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a search result from a position search query that is run on a
    # place index resource.
    #
    # @!attribute [rw] distance
    #   The distance in meters of a great-circle arc between the query
    #   position and the result.
    #
    #   <note markdown="1"> A great-circle arc is the shortest path on a sphere, in this case
    #   the Earth. This returns the shortest distance between two locations.
    #
    #    </note>
    #   @return [Float]
    #
    # @!attribute [rw] place
    #   Details about the search result, such as its address and position.
    #   @return [Types::Place]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchForPositionResult AWS API Documentation
    #
    class SearchForPositionResult < Struct.new(
      :distance,
      :place)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a place suggestion resulting from a place suggestion query
    # that is run on a place index resource.
    #
    # @!attribute [rw] text
    #   The text of the place suggestion, typically formatted as an address
    #   string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchForSuggestionsResult AWS API Documentation
    #
    class SearchForSuggestionsResult < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a search result from a text search query that is run on a
    # place index resource.
    #
    # @!attribute [rw] distance
    #   The distance in meters of a great-circle arc between the bias
    #   position specified and the result. `Distance` will be returned only
    #   if a bias position was specified in the query.
    #
    #   <note markdown="1"> A great-circle arc is the shortest path on a sphere, in this case
    #   the Earth. This returns the shortest distance between two locations.
    #
    #    </note>
    #   @return [Float]
    #
    # @!attribute [rw] place
    #   Details about the search result, such as its address and position.
    #   @return [Types::Place]
    #
    # @!attribute [rw] relevance
    #   The relative confidence in the match for a result among the results
    #   returned. For example, if more fields for an address match
    #   (including house number, street, city, country/region, and postal
    #   code), the relevance score is closer to 1.
    #
    #   Returned only when the partner selected is Esri.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchForTextResult AWS API Documentation
    #
    class SearchForTextResult < Struct.new(
      :distance,
      :place,
      :relevance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchPlaceIndexForPositionRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "ResourceName", # required
    #         language: "LanguageTag",
    #         max_results: 1,
    #         position: [1.0], # required
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource you want to use for the search.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results. It does not
    #   change which results are returned. If the language is not specified,
    #   or not supported for a particular result, the partner automatically
    #   chooses a language for the result.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   Default value: `50`
    #   @return [Integer]
    #
    # @!attribute [rw] position
    #   Specifies the longitude and latitude of the position to query.
    #
    #   This parameter must contain a pair of numbers. The first number
    #   represents the X coordinate, or longitude; the second number
    #   represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents a position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPositionRequest AWS API Documentation
    #
    class SearchPlaceIndexForPositionRequest < Struct.new(
      :index_name,
      :language,
      :max_results,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   Returns a list of Places closest to the specified position. Each
    #   result contains additional information about the Places returned.
    #   @return [Array<Types::SearchForPositionResult>]
    #
    # @!attribute [rw] summary
    #   Contains a summary of the request. Echoes the input values for
    #   `Position`, `Language`, `MaxResults`, and the `DataSource` of the
    #   place index.
    #   @return [Types::SearchPlaceIndexForPositionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPositionResponse AWS API Documentation
    #
    class SearchPlaceIndexForPositionResponse < Struct.new(
      :results,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the request sent by using `SearchPlaceIndexForPosition`.
    #
    # @!attribute [rw] data_source
    #   The geospatial data provider attached to the place index resource
    #   specified in the request. Values can be one of the following:
    #
    #   * Esri
    #
    #   * Here
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The preferred language used to return results. Matches the language
    #   in the request. The value is a valid [BCP 47][1] language tag, for
    #   example, `en` for English.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Contains the optional result count limit that is specified in the
    #   request.
    #
    #   Default value: `50`
    #   @return [Integer]
    #
    # @!attribute [rw] position
    #   The position specified in the request.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPositionSummary AWS API Documentation
    #
    class SearchPlaceIndexForPositionSummary < Struct.new(
      :data_source,
      :language,
      :max_results,
      :position)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchPlaceIndexForSuggestionsRequest
    #   data as a hash:
    #
    #       {
    #         bias_position: [1.0],
    #         filter_b_box: [1.0],
    #         filter_countries: ["CountryCode"],
    #         index_name: "ResourceName", # required
    #         language: "LanguageTag",
    #         max_results: 1,
    #         text: "SyntheticSearchPlaceIndexForSuggestionsRequestString", # required
    #       }
    #
    # @!attribute [rw] bias_position
    #   An optional parameter that indicates a preference for place
    #   suggestions that are closer to a specified position.
    #
    #   If provided, this parameter must contain a pair of numbers. The
    #   first number represents the X coordinate, or longitude; the second
    #   number represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #
    #   <note markdown="1"> `BiasPosition` and `FilterBBox` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_b_box
    #   An optional parameter that limits the search results by returning
    #   only suggestions within a specified bounding box.
    #
    #   If provided, this parameter must contain a total of four consecutive
    #   numbers in two pairs. The first pair of numbers represents the X and
    #   Y coordinates (longitude and latitude, respectively) of the
    #   southwest corner of the bounding box; the second pair of numbers
    #   represents the X and Y coordinates (longitude and latitude,
    #   respectively) of the northeast corner of the bounding box.
    #
    #   For example, `[-12.7935, -37.4835, -12.0684, -36.9542]` represents a
    #   bounding box where the southwest corner has longitude `-12.7935` and
    #   latitude `-37.4835`, and the northeast corner has longitude
    #   `-12.0684` and latitude `-36.9542`.
    #
    #   <note markdown="1"> `FilterBBox` and `BiasPosition` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_countries
    #   An optional parameter that limits the search results by returning
    #   only suggestions within the provided list of countries.
    #
    #   * Use the [ISO 3166][1] 3-digit country code. For example, Australia
    #     uses three upper-case characters: `AUS`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-3166-country-codes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource you want to use for the search.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results. It does not
    #   change which results are returned. If the language is not specified,
    #   or not supported for a particular result, the partner automatically
    #   chooses a language for the result.
    #
    #   Used only when the partner selected is Here.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   The default: `5`
    #   @return [Integer]
    #
    # @!attribute [rw] text
    #   The free-form partial text to use to generate place suggestions. For
    #   example, `eiffel tow`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForSuggestionsRequest AWS API Documentation
    #
    class SearchPlaceIndexForSuggestionsRequest < Struct.new(
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :index_name,
      :language,
      :max_results,
      :text)
      SENSITIVE = [:bias_position, :filter_b_box, :text]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of place suggestions that best match the search text.
    #   @return [Array<Types::SearchForSuggestionsResult>]
    #
    # @!attribute [rw] summary
    #   Contains a summary of the request. Echoes the input values for
    #   `BiasPosition`, `FilterBBox`, `FilterCountries`, `Language`,
    #   `MaxResults`, and `Text`. Also includes the `DataSource` of the
    #   place index.
    #   @return [Types::SearchPlaceIndexForSuggestionsSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForSuggestionsResponse AWS API Documentation
    #
    class SearchPlaceIndexForSuggestionsResponse < Struct.new(
      :results,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the request sent by using
    # `SearchPlaceIndexForSuggestions`.
    #
    # @!attribute [rw] bias_position
    #   Contains the coordinates for the optional bias position specified in
    #   the request.
    #
    #   This parameter contains a pair of numbers. The first number
    #   represents the X coordinate, or longitude; the second number
    #   represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] data_source
    #   The geospatial data provider attached to the place index resource
    #   specified in the request. Values can be one of the following:
    #
    #   * Esri
    #
    #   * Here
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] filter_b_box
    #   Contains the coordinates for the optional bounding box specified in
    #   the request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_countries
    #   Contains the optional country filter specified in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The preferred language used to return results. Matches the language
    #   in the request. The value is a valid [BCP 47][1] language tag, for
    #   example, `en` for English.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Contains the optional result count limit specified in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] text
    #   The free-form partial text input specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForSuggestionsSummary AWS API Documentation
    #
    class SearchPlaceIndexForSuggestionsSummary < Struct.new(
      :bias_position,
      :data_source,
      :filter_b_box,
      :filter_countries,
      :language,
      :max_results,
      :text)
      SENSITIVE = [:bias_position, :filter_b_box, :text]
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchPlaceIndexForTextRequest
    #   data as a hash:
    #
    #       {
    #         bias_position: [1.0],
    #         filter_b_box: [1.0],
    #         filter_countries: ["CountryCode"],
    #         index_name: "ResourceName", # required
    #         language: "LanguageTag",
    #         max_results: 1,
    #         text: "SyntheticSearchPlaceIndexForTextRequestString", # required
    #       }
    #
    # @!attribute [rw] bias_position
    #   An optional parameter that indicates a preference for places that
    #   are closer to a specified position.
    #
    #   If provided, this parameter must contain a pair of numbers. The
    #   first number represents the X coordinate, or longitude; the second
    #   number represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #
    #   <note markdown="1"> `BiasPosition` and `FilterBBox` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_b_box
    #   An optional parameter that limits the search results by returning
    #   only places that are within the provided bounding box.
    #
    #   If provided, this parameter must contain a total of four consecutive
    #   numbers in two pairs. The first pair of numbers represents the X and
    #   Y coordinates (longitude and latitude, respectively) of the
    #   southwest corner of the bounding box; the second pair of numbers
    #   represents the X and Y coordinates (longitude and latitude,
    #   respectively) of the northeast corner of the bounding box.
    #
    #   For example, `[-12.7935, -37.4835, -12.0684, -36.9542]` represents a
    #   bounding box where the southwest corner has longitude `-12.7935` and
    #   latitude `-37.4835`, and the northeast corner has longitude
    #   `-12.0684` and latitude `-36.9542`.
    #
    #   <note markdown="1"> `FilterBBox` and `BiasPosition` are mutually exclusive. Specifying
    #   both options results in an error.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_countries
    #   An optional parameter that limits the search results by returning
    #   only places that are in a specified list of countries.
    #
    #   * Valid values include [ISO 3166][1] 3-digit country codes. For
    #     example, Australia uses three upper-case characters: `AUS`.
    #
    #   ^
    #
    #
    #
    #   [1]: https://www.iso.org/iso-3166-country-codes.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource you want to use for the search.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The preferred language used to return results. The value must be a
    #   valid [BCP 47][1] language tag, for example, `en` for English.
    #
    #   This setting affects the languages used in the results. It does not
    #   change which results are returned. If the language is not specified,
    #   or not supported for a particular result, the partner automatically
    #   chooses a language for the result.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional parameter. The maximum number of results returned per
    #   request.
    #
    #   The default: `50`
    #   @return [Integer]
    #
    # @!attribute [rw] text
    #   The address, name, city, or region to be used in the search in
    #   free-form text format. For example, `123 Any Street`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForTextRequest AWS API Documentation
    #
    class SearchPlaceIndexForTextRequest < Struct.new(
      :bias_position,
      :filter_b_box,
      :filter_countries,
      :index_name,
      :language,
      :max_results,
      :text)
      SENSITIVE = [:bias_position, :filter_b_box, :text]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of Places matching the input text. Each result contains
    #   additional information about the specific point of interest.
    #   @return [Array<Types::SearchForTextResult>]
    #
    # @!attribute [rw] summary
    #   Contains a summary of the request. Echoes the input values for
    #   `BiasPosition`, `FilterBBox`, `FilterCountries`, `Language`,
    #   `MaxResults`, and `Text`. Also includes the `DataSource` of the
    #   place index and the bounding box, `ResultBBox`, which surrounds the
    #   search results.
    #   @return [Types::SearchPlaceIndexForTextSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForTextResponse AWS API Documentation
    #
    class SearchPlaceIndexForTextResponse < Struct.new(
      :results,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the request sent by using `SearchPlaceIndexForText`.
    #
    # @!attribute [rw] bias_position
    #   Contains the coordinates for the optional bias position specified in
    #   the request.
    #
    #   This parameter contains a pair of numbers. The first number
    #   represents the X coordinate, or longitude; the second number
    #   represents the Y coordinate, or latitude.
    #
    #   For example, `[-123.1174, 49.2847]` represents the position with
    #   longitude `-123.1174` and latitude `49.2847`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] data_source
    #   The geospatial data provider attached to the place index resource
    #   specified in the request. Values can be one of the following:
    #
    #   * Esri
    #
    #   * Here
    #
    #   For more information about data providers, see [Amazon Location
    #   Service data providers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html
    #   @return [String]
    #
    # @!attribute [rw] filter_b_box
    #   Contains the coordinates for the optional bounding box specified in
    #   the request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_countries
    #   Contains the optional country filter specified in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language
    #   The preferred language used to return results. Matches the language
    #   in the request. The value is a valid [BCP 47][1] language tag, for
    #   example, `en` for English.
    #
    #
    #
    #   [1]: https://tools.ietf.org/search/bcp47
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Contains the optional result count limit specified in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] result_b_box
    #   The bounding box that fully contains all search results.
    #
    #   <note markdown="1"> If you specified the optional `FilterBBox` parameter in the request,
    #   `ResultBBox` is contained within `FilterBBox`.
    #
    #    </note>
    #   @return [Array<Float>]
    #
    # @!attribute [rw] text
    #   The search text specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForTextSummary AWS API Documentation
    #
    class SearchPlaceIndexForTextSummary < Struct.new(
      :bias_position,
      :data_source,
      :filter_b_box,
      :filter_countries,
      :language,
      :max_results,
      :result_b_box,
      :text)
      SENSITIVE = [:bias_position, :filter_b_box, :result_b_box, :text]
      include Aws::Structure
    end

    # The operation was denied because the request would exceed the maximum
    # [quota][1] set for Amazon Location Service.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/location/latest/developerguide/location-quotas.html
    #
    # @!attribute [rw] message
    #   A message with the reason for the service quota exceeded exception
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an element of a leg within a route. A step contains
    # instructions for how to move to the next step in the leg.
    #
    # @!attribute [rw] distance
    #   The travel distance between the step's `StartPosition` and
    #   `EndPosition`.
    #   @return [Float]
    #
    # @!attribute [rw] duration_seconds
    #   The estimated travel time, in seconds, from the step's
    #   `StartPosition` to the `EndPosition`. . The travel mode and
    #   departure time that you specify in the request determines the
    #   calculated time.
    #   @return [Float]
    #
    # @!attribute [rw] end_position
    #   The end position of a step. If the position the last step in the
    #   leg, this position is the same as the end position of the leg.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] geometry_offset
    #   Represents the start position, or index, in a sequence of steps
    #   within the leg's line string geometry. For example, the index of
    #   the first step in a leg geometry is `0`.
    #
    #   Included in the response for queries that set `IncludeLegGeometry`
    #   to `True`.
    #   @return [Integer]
    #
    # @!attribute [rw] start_position
    #   The starting position of a step. If the position is the first step
    #   in the leg, this position is the same as the start position of the
    #   leg.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/Step AWS API Documentation
    #
    class Step < Struct.new(
      :distance,
      :duration_seconds,
      :end_position,
      :geometry_offset,
      :start_position)
      SENSITIVE = [:end_position, :start_position]
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to update.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:resourcetype/ExampleResource`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Applies one or more tags to specific resource. A tag is a key-value
    #   pair that helps you manage, identify, search, and filter your
    #   resources.
    #
    #   Format: `"key" : "value"`
    #
    #   Restrictions:
    #
    #   * Maximum 50 tags per resource.
    #
    #   * Each tag key must be unique and must have exactly one associated
    #     value.
    #
    #   * Maximum key length: 128 Unicode characters in UTF-8.
    #
    #   * Maximum value length: 256 Unicode characters in UTF-8.
    #
    #   * Can use alphanumeric characters (A–Z, a–z, 0–9), and the following
    #     characters: + - = . \_ : / @
    #
    #   * Cannot use "aws:" as a prefix for a key.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied because of request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a time zone. Includes the name of the time zone and
    # the offset from UTC in seconds.
    #
    # @!attribute [rw] name
    #   The name of the time zone, following the [ IANA time zone
    #   standard][1]. For example, `America/Los_Angeles`.
    #
    #
    #
    #   [1]: https://www.iana.org/time-zones
    #   @return [String]
    #
    # @!attribute [rw] offset
    #   The time zone's offset, in seconds, from UTC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/TimeZone AWS API Documentation
    #
    class TimeZone < Struct.new(
      :name,
      :offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the truck dimensions in the unit of measurement
    # that you specify. Used to filter out roads that can't support or
    # allow the specified dimensions for requests that specify `TravelMode`
    # as `Truck`.
    #
    # @note When making an API call, you may pass TruckDimensions
    #   data as a hash:
    #
    #       {
    #         height: 1.0,
    #         length: 1.0,
    #         unit: "Meters", # accepts Meters, Feet
    #         width: 1.0,
    #       }
    #
    # @!attribute [rw] height
    #   The height of the truck.
    #
    #   * For example, `4.5`.
    #
    #   ^
    #   @return [Float]
    #
    # @!attribute [rw] length
    #   The length of the truck.
    #
    #   * For example, `15.5`.
    #
    #   ^
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   Specifies the unit of measurement for the truck dimensions.
    #
    #   Default Value: `Meters`
    #   @return [String]
    #
    # @!attribute [rw] width
    #   The width of the truck.
    #
    #   * For example, `4.5`.
    #
    #   ^
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/TruckDimensions AWS API Documentation
    #
    class TruckDimensions < Struct.new(
      :height,
      :length,
      :unit,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the truck's weight specifications. Used to
    # avoid roads that can't support or allow the total weight for requests
    # that specify `TravelMode` as `Truck`.
    #
    # @note When making an API call, you may pass TruckWeight
    #   data as a hash:
    #
    #       {
    #         total: 1.0,
    #         unit: "Kilograms", # accepts Kilograms, Pounds
    #       }
    #
    # @!attribute [rw] total
    #   The total weight of the truck.
    #
    #   * For example, `3500`.
    #
    #   ^
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   The unit of measurement to use for the truck weight.
    #
    #   Default Value: `Kilograms`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/TruckWeight AWS API Documentation
    #
    class TruckWeight < Struct.new(
      :total,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which you want
    #   to remove tags.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:resourcetype/ExampleResource`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateGeofenceCollectionRequest
    #   data as a hash:
    #
    #       {
    #         collection_name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         pricing_plan_data_source: "String",
    #       }
    #
    # @!attribute [rw] collection_name
    #   The name of the geofence collection to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Updates the description for the geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateGeofenceCollectionRequest AWS API Documentation
    #
    class UpdateGeofenceCollectionRequest < Struct.new(
      :collection_name,
      :description,
      :pricing_plan,
      :pricing_plan_data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_arn
    #   The Amazon Resource Name (ARN) of the updated geofence collection.
    #   Used to specify a resource across AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] collection_name
    #   The name of the updated geofence collection.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The time when the geofence collection was last updated in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateGeofenceCollectionResponse AWS API Documentation
    #
    class UpdateGeofenceCollectionResponse < Struct.new(
      :collection_arn,
      :collection_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMapRequest
    #   data as a hash:
    #
    #       {
    #         description: "ResourceDescription",
    #         map_name: "ResourceName", # required
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #       }
    #
    # @!attribute [rw] description
    #   Updates the description for the map resource.
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The name of the map resource to update.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateMapRequest AWS API Documentation
    #
    class UpdateMapRequest < Struct.new(
      :description,
      :map_name,
      :pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] map_arn
    #   The Amazon Resource Name (ARN) of the updated map resource. Used to
    #   specify a resource across AWS.
    #
    #   * Format example: `arn:aws:geo:region:account-id:maps/ExampleMap`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The name of the updated map resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the map resource was last updated in [ ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateMapResponse AWS API Documentation
    #
    class UpdateMapResponse < Struct.new(
      :map_arn,
      :map_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePlaceIndexRequest
    #   data as a hash:
    #
    #       {
    #         data_source_configuration: {
    #           intended_use: "SingleUse", # accepts SingleUse, Storage
    #         },
    #         description: "ResourceDescription",
    #         index_name: "ResourceName", # required
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #       }
    #
    # @!attribute [rw] data_source_configuration
    #   Updates the data storage option for the place index resource.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   Updates the description for the place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the place index resource to update.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdatePlaceIndexRequest AWS API Documentation
    #
    class UpdatePlaceIndexRequest < Struct.new(
      :data_source_configuration,
      :description,
      :index_name,
      :pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of the upated place index resource.
    #   Used to specify a resource across AWS.
    #
    #   * Format example: `arn:aws:geo:region:account-id:place-
    #     index/ExamplePlaceIndex`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the updated place index resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the place index resource was last updated in
    #   [ ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdatePlaceIndexResponse AWS API Documentation
    #
    class UpdatePlaceIndexResponse < Struct.new(
      :index_arn,
      :index_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRouteCalculatorRequest
    #   data as a hash:
    #
    #       {
    #         calculator_name: "ResourceName", # required
    #         description: "ResourceDescription",
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #       }
    #
    # @!attribute [rw] calculator_name
    #   The name of the route calculator resource to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Updates the description for the route calculator resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateRouteCalculatorRequest AWS API Documentation
    #
    class UpdateRouteCalculatorRequest < Struct.new(
      :calculator_name,
      :description,
      :pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculator_arn
    #   The Amazon Resource Name (ARN) of the updated route calculator
    #   resource. Used to specify a resource across AWS.
    #
    #   * Format example: `arn:aws:geo:region:account-id:route-
    #     calculator/ExampleCalculator`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] calculator_name
    #   The name of the updated route calculator resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the route calculator was last updated in [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateRouteCalculatorResponse AWS API Documentation
    #
    class UpdateRouteCalculatorResponse < Struct.new(
      :calculator_arn,
      :calculator_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTrackerRequest
    #   data as a hash:
    #
    #       {
    #         description: "ResourceDescription",
    #         position_filtering: "TimeBased", # accepts TimeBased, DistanceBased, AccuracyBased
    #         pricing_plan: "RequestBasedUsage", # accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         pricing_plan_data_source: "String",
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   Updates the description for the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] position_filtering
    #   Updates the position filtering for the tracker resource.
    #
    #   Valid values:
    #
    #   * `TimeBased` - Location updates are evaluated against linked
    #     geofence collections, but not every location update is stored. If
    #     your update frequency is more often than 30 seconds, only one
    #     update per 30 seconds is stored for each unique device ID.
    #
    #   * `DistanceBased` - If the device has moved less than 30 m (98.4
    #     ft), location updates are ignored. Location updates within this
    #     distance are neither evaluated against linked geofence
    #     collections, nor stored. This helps control costs by reducing the
    #     number of geofence evaluations and historical device positions to
    #     paginate through. Distance-based filtering can also reduce the
    #     effects of GPS noise when displaying device trajectories on a map.
    #
    #   * `AccuracyBased` - If the device has moved less than the measured
    #     accuracy, location updates are ignored. For example, if two
    #     consecutive updates from a device have a horizontal accuracy of 5
    #     m and 10 m, the second update is ignored if the device has moved
    #     less than 15 m. Ignored location updates are neither evaluated
    #     against linked geofence collections, nor stored. This helps educe
    #     the effects of GPS noise when displaying device trajectories on a
    #     map, and can help control costs by reducing the number of geofence
    #     evaluations.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   No longer used. If included, the only allowed value is
    #   `RequestBasedUsage`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan_data_source
    #   This parameter is no longer used.
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateTrackerRequest AWS API Documentation
    #
    class UpdateTrackerRequest < Struct.new(
      :description,
      :position_filtering,
      :pricing_plan,
      :pricing_plan_data_source,
      :tracker_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tracker_arn
    #   The Amazon Resource Name (ARN) of the updated tracker resource. Used
    #   to specify a resource across AWS.
    #
    #   * Format example:
    #     `arn:aws:geo:region:account-id:tracker/ExampleTracker`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name of the updated tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the tracker resource was last updated in [
    #   ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/UpdateTrackerResponse AWS API Documentation
    #
    class UpdateTrackerResponse < Struct.new(
      :tracker_arn,
      :tracker_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the AWS service.
    #
    # @!attribute [rw] field_list
    #   The field where the invalid entry was detected.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message with the reason for the validation exception error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the AWS service
    # in a specified field.
    #
    # @!attribute [rw] message
    #   A message with the reason for the validation exception error.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
