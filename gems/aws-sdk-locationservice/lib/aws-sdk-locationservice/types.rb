# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LocationService
  module Types

    # The request was denied due to insufficient access or permission. Check
    # with an administrator to verify your permissions.
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
    #     `arn:partition:service:region:account-id:resource-type:resource-id`
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
    #             device_id: "Id", # required
    #             position: [1.0], # required
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

    # Contains geofence details.
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
    #   The geometry details for the geofence.
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
    #   The timestamp for when a position sample was attempted in [ ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
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
    #             device_id: "Id", # required
    #             position: [1.0], # required
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

    # The request was unsuccessful due to a conflict.
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
    #         pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #       }
    #
    # @!attribute [rw] collection_name
    #   A custom name for the geofence collection.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A–Z, a–z, 0-9), hyphens (-),
    #     and underscores (\_).
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
    # @!attribute [rw] pricing_plan
    #   Specifies the pricing plan for your geofence collection. There's
    #   three pricing plan options:
    #
    #   * `RequestBasedUsage` — Selects the "Request-Based Usage" pricing
    #     plan.
    #
    #   * `MobileAssetTracking` — Selects the "Mobile Asset Tracking"
    #     pricing plan.
    #
    #   * `MobileAssetManagement` — Selects the "Mobile Asset Management"
    #     pricing plan.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateGeofenceCollectionRequest AWS API Documentation
    #
    class CreateGeofenceCollectionRequest < Struct.new(
      :collection_name,
      :description,
      :pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collection_arn
    #   The Amazon Resource Name (ARN) for the geofence collection resource.
    #   Used when you need to specify a resource across all AWS.
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
    #         pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
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
    #     (-), and underscores (\_).
    #
    #   * Must be a unique map resource name.
    #
    #   * No spaces allowed. For example, `ExampleMap`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Specifies the pricing plan for your map resource. There's three
    #   pricing plan options:
    #
    #   * `RequestBasedUsage` — Selects the "Request-Based Usage" pricing
    #     plan.
    #
    #   * `MobileAssetTracking` — Selects the "Mobile Asset Tracking"
    #     pricing plan.
    #
    #   * `MobileAssetManagement` — Selects the "Mobile Asset Management"
    #     pricing plan.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreateMapRequest AWS API Documentation
    #
    class CreateMapRequest < Struct.new(
      :configuration,
      :description,
      :map_name,
      :pricing_plan)
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
    #   The Amazon Resource Name (ARN) for the map resource. Used when you
    #   need to specify a resource across all AWS.
    #
    #   * Format example:
    #     `arn:partition:service:region:account-id:resource-type:resource-id`
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
    #         pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #       }
    #
    # @!attribute [rw] data_source
    #   Specifies the data provider of geospatial data.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   Specifies the data storage option for requesting Places.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   The optional description for the Place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the Place index resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-)
    #     and underscores (\_) ).
    #
    #   * Must be a unique Place index resource name.
    #
    #   * No spaces allowed. For example, `ExamplePlaceIndex`.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Specifies the pricing plan for your Place index resource. There's
    #   three pricing plan options:
    #
    #   * `RequestBasedUsage` — Selects the "Request-Based Usage" pricing
    #     plan.
    #
    #   * `MobileAssetTracking` — Selects the "Mobile Asset Tracking"
    #     pricing plan.
    #
    #   * `MobileAssetManagement` — Selects the "Mobile Asset Management"
    #     pricing plan.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/CreatePlaceIndexRequest AWS API Documentation
    #
    class CreatePlaceIndexRequest < Struct.new(
      :data_source,
      :data_source_configuration,
      :description,
      :index_name,
      :pricing_plan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_time
    #   The timestamp for when the Place index resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) for the Place index resource. Used
    #   when you need to specify a resource across all AWS.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name for the Place index resource.
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

    # @note When making an API call, you may pass CreateTrackerRequest
    #   data as a hash:
    #
    #       {
    #         description: "ResourceDescription",
    #         pricing_plan: "RequestBasedUsage", # required, accepts RequestBasedUsage, MobileAssetTracking, MobileAssetManagement
    #         tracker_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   An optional description for the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] pricing_plan
    #   Specifies the pricing plan for your tracker resource. There's three
    #   pricing plan options:
    #
    #   * `RequestBasedUsage` — Selects the "Request-Based Usage" pricing
    #     plan.
    #
    #   * `MobileAssetTracking` — Selects the "Mobile Asset Tracking"
    #     pricing plan.
    #
    #   * `MobileAssetManagement` — Selects the "Mobile Asset Management"
    #     pricing plan.
    #
    #   For additional details and restrictions on each pricing plan option,
    #   see the [Amazon Location Service pricing page][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/location/pricing/
    #   @return [String]
    #
    # @!attribute [rw] tracker_name
    #   The name for the tracker resource.
    #
    #   Requirements:
    #
    #   * Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-)
    #     and underscores (\_).
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
      :pricing_plan,
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
    # <note markdown="1"> By using Places, you agree that AWS may transmit your API queries to
    # your selected third party provider for processing, which may be
    # outside the AWS region you are currently using.
    #
    #  Also, when using HERE as your data provider, you may not (a) use HERE
    # Places for Asset Management, or (b) select the `Storage` option for
    # the `IntendedUse` parameter when requesting Places in Japan. For more
    # information, see the [AWS Service Terms][1] for Amazon Location
    # Service.
    #
    #  </note>
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
    #   The name of the Place index resource to be deleted.
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
    #   The Amazon Resource Name (ARN) for the map resource. Used when you
    #   need to specify a resource across all AWS.
    #   @return [String]
    #
    # @!attribute [rw] map_name
    #   The map style selected from an available provider.
    #   @return [String]
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
    #   The name of the Place index resource.
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
    #   The timestamp for when the Place index resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data provider of geospatial data.
    #   @return [String]
    #
    # @!attribute [rw] data_source_configuration
    #   The specified data storage option for requesting Places.
    #   @return [Types::DataSourceConfiguration]
    #
    # @!attribute [rw] description
    #   The optional description for the Place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) for the Place index resource. Used
    #   when you need to specify a resource across all AWS.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the Place index resource being described.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the Place index resource was last updated in
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
    # @!attribute [rw] tracker_arn
    #   The Amazon Resource Name (ARN) for the tracker resource. Used when
    #   you need to specify a resource across all AWS.
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
      :tracker_arn,
      :tracker_name,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the device position details.
    #
    # @!attribute [rw] device_id
    #   The device whose position you retrieved.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The last known device position.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] received_time
    #   The timestamp for when the tracker resource recieved the position in
    #   [ ISO 8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] sample_time
    #   The timestamp for when the position was detected and sampled in [
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
      :device_id,
      :position,
      :received_time,
      :sample_time)
      SENSITIVE = [:position]
      include Aws::Structure
    end

    # Contains the position update details for a device.
    #
    # @note When making an API call, you may pass DevicePositionUpdate
    #   data as a hash:
    #
    #       {
    #         device_id: "Id", # required
    #         position: [1.0], # required
    #         sample_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] device_id
    #   The device associated to the position update.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The latest device position defined in [WGS 84][1] format:
    #   `[Xlongitude, Ylatitude]`.
    #
    #
    #
    #   [1]: https://earth-info.nga.mil/GandG/wgs84/index.html
    #   @return [Array<Float>]
    #
    # @!attribute [rw] sample_time
    #   The timestamp for when the position update was received in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/DevicePositionUpdate AWS API Documentation
    #
    class DevicePositionUpdate < Struct.new(
      :device_id,
      :position,
      :sample_time)
      SENSITIVE = [:position]
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
    #     `arn:partition:service:region:account-id:resource-type:resource-id`
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
    # <note markdown="1"> Limitation — Amazon Location does not currently support polygons with
    # holes, multipolygons, polygons that are wound clockwise, or that cross
    # the antimeridian.
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
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * The given time for `EndTimeExclusive` must be after the time for
    #     `StartTimeInclusive`.
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
    #   format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #   * The given time for `EndTimeExclusive` must be after the time for
    #     `StartTimeInclusive`.
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
    #   The device whose position you want to retreieve.
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

    # @!attribute [rw] device_id
    #   The device whose position you retrieved.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The last known device position.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] received_time
    #   The timestamp for when the tracker resource recieved the position in
    #   [ ISO 8601 ][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] sample_time
    #   The timestamp for when the position was detected and sampled in [
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
      :device_id,
      :position,
      :received_time,
      :sample_time)
      SENSITIVE = [:position]
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
    #   preference.. For example, `Noto Sans, Arial Unicode`.
    #   @return [String]
    #
    # @!attribute [rw] font_unicode_range
    #   A Unicode range of characters to download glyphs for. Each response
    #   will contain 256 characters. For example, 0-255 includes all
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
    #   Lists the Place index resources that exist in your AWS account
    #   @return [Array<Types::ListPlaceIndexesResponseEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token indicating there are additional pages available.
    #   You can use the token in a following request to fetch the next set
    #   of results.
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

    # A Place index resource listed in your AWS account.
    #
    # @!attribute [rw] create_time
    #   The timestamp for when the Place index resource was created in [ISO
    #   8601][1] format: `YYYY-MM-DDThh:mm:ss.sssZ`.
    #
    #
    #
    #   [1]: https://www.iso.org/iso-8601-date-and-time-format.html
    #   @return [Time]
    #
    # @!attribute [rw] data_source
    #   The data provider of geospatial data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description for the Place index resource.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the Place index resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the Place index resource was last updated in
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
      :update_time)
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
    # @!attribute [rw] tracker_name
    #   The name of the tracker resource.
    #   @return [String]
    #
    # @!attribute [rw] update_time
    #   The timestamp for when the position was detected and sampled in [
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
    #   Valid styles: `VectorEsriLightGrayCanvas`, `VectorEsriLight`,
    #   `VectorEsriStreets`, `VectorEsriNavigation`,
    #   `VectorEsriDarkGrayCanvas`, `VectorEsriLightGrayCanvas`,
    #   `VectorHereBerlin`
    #
    #   <note markdown="1"> When using HERE as your data provider, and selecting the Style
    #   `VectorHereBerlin`, you may not use HERE Maps for Asset Management.
    #   See the [AWS Service Terms][1] for Amazon Location Service.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms/
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
    #   A country, or an area that's part of a larger region . For example,
    #   `Metro Vancouver`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/Place AWS API Documentation
    #
    class Place < Struct.new(
      :address_number,
      :country,
      :geometry,
      :label,
      :municipality,
      :neighborhood,
      :postal_code,
      :region,
      :street,
      :sub_region)
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

    # Specifies a single point of interest, or Place as a result of a search
    # query obtained from a dataset configured in the Place index Resource.
    #
    # @!attribute [rw] place
    #   Contains details about the relevant point of interest.
    #   @return [Types::Place]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchForPositionResult AWS API Documentation
    #
    class SearchForPositionResult < Struct.new(
      :place)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains relevant Places returned by calling
    # `SearchPlaceIndexForText`.
    #
    # @!attribute [rw] place
    #   Contains details about the relevant point of interest.
    #   @return [Types::Place]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchForTextResult AWS API Documentation
    #
    class SearchForTextResult < Struct.new(
      :place)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchPlaceIndexForPositionRequest
    #   data as a hash:
    #
    #       {
    #         index_name: "ResourceName", # required
    #         max_results: 1,
    #         position: [1.0], # required
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the Place index resource you want to use for the search.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   An optional paramer. The maximum number of results returned per
    #   request.
    #
    #   Default value: `50`
    #   @return [Integer]
    #
    # @!attribute [rw] position
    #   Specifies a coordinate for the query defined by a longitude, and
    #   latitude.
    #
    #   * The first position is the X coordinate, or longitude.
    #
    #   * The second position is the Y coordinate, or latitude.
    #
    #   For example, `position=xLongitude&position=yLatitude` .
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPositionRequest AWS API Documentation
    #
    class SearchPlaceIndexForPositionRequest < Struct.new(
      :index_name,
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
    #   Contains a summary of the request.
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

    # A summary of the reverse geocoding request sent using
    # `SearchPlaceIndexForPosition`.
    #
    # @!attribute [rw] data_source
    #   The data provider of geospatial data for the Place index resource.
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
    #   The position given in the reverse geocoding request.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForPositionSummary AWS API Documentation
    #
    class SearchPlaceIndexForPositionSummary < Struct.new(
      :data_source,
      :max_results,
      :position)
      SENSITIVE = [:position]
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
    #         max_results: 1,
    #         text: "SyntheticSearchPlaceIndexForTextRequestString", # required
    #       }
    #
    # @!attribute [rw] bias_position
    #   Searches for results closest to the given position. An optional
    #   parameter defined by longitude, and latitude.
    #
    #   * The first `bias` position is the X coordinate, or longitude.
    #
    #   * The second `bias` position is the Y coordinate, or latitude.
    #
    #   For example, `bias=xLongitude&bias=yLatitude`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_b_box
    #   Filters the results by returning only Places within the provided
    #   bounding box. An optional parameter.
    #
    #   The first 2 `bbox` parameters describe the lower southwest corner:
    #
    #   * The first `bbox` position is the X coordinate or longitude of the
    #     lower southwest corner.
    #
    #   * The second `bbox` position is the Y coordinate or latitude of the
    #     lower southwest corner.
    #
    #   For example, `bbox=xLongitudeSW&bbox=yLatitudeSW`.
    #
    #   The next `bbox` parameters describe the upper northeast corner:
    #
    #   * The third `bbox` position is the X coordinate, or longitude of the
    #     upper northeast corner.
    #
    #   * The fourth `bbox` position is the Y coordinate, or longitude of
    #     the upper northeast corner.
    #
    #   For example, `bbox=xLongitudeNE&bbox=yLatitudeNE`
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_countries
    #   Limits the search to the given a list of countries/regions. An
    #   optional parameter.
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
    #   The name of the Place index resource you want to use for the search.
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
    #   The address, name, city, or region to be used in the search. In
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
      :max_results,
      :text)
      SENSITIVE = [:bias_position, :filter_b_box, :text]
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of Places closest to the specified position. Each result
    #   contains additional information about the specific point of
    #   interest.
    #   @return [Array<Types::SearchForTextResult>]
    #
    # @!attribute [rw] summary
    #   Contains a summary of the request. Contains the `BiasPosition`,
    #   `DataSource`, `FilterBBox`, `FilterCountries`, `MaxResults`,
    #   `ResultBBox`, and `Text`.
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

    # A summary of the geocoding request sent using
    # `SearchPlaceIndexForText`.
    #
    # @!attribute [rw] bias_position
    #   Contains the coordinates for the bias position entered in the
    #   geocoding request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] data_source
    #   The data provider of geospatial data for the Place index resource.
    #   @return [String]
    #
    # @!attribute [rw] filter_b_box
    #   Contains the coordinates for the optional bounding box coordinated
    #   entered in the geocoding request.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] filter_countries
    #   Contains the country filter entered in the geocoding request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Contains the maximum number of results indicated for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] result_b_box
    #   A bounding box that contains the search results within the specified
    #   area indicated by `FilterBBox`. A subset of bounding box specified
    #   using `FilterBBox`.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] text
    #   The address, name, city or region to be used in the geocoding
    #   request. In free-form text format. For example, `Vancouver`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/location-2020-11-19/SearchPlaceIndexForTextSummary AWS API Documentation
    #
    class SearchPlaceIndexForTextSummary < Struct.new(
      :bias_position,
      :data_source,
      :filter_b_box,
      :filter_countries,
      :max_results,
      :result_b_box,
      :text)
      SENSITIVE = [:bias_position, :filter_b_box, :result_b_box, :text]
      include Aws::Structure
    end

    # The request was denied due to request throttling.
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
