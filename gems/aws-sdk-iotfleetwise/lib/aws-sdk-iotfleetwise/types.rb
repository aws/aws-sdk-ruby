# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTFleetWise
  module Types

    # You don't have sufficient permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A signal that represents a vehicle device such as the engine, heater,
    # and door locks. Data from an actuator reports the state of a certain
    # vehicle device.
    #
    # <note markdown="1"> Updating actuator data can change the state of a device. For example,
    # you can turn on or off the heater by updating its actuator data.
    #
    #  </note>
    #
    # @!attribute [rw] fully_qualified_name
    #   The fully qualified name of the actuator. For example, the fully
    #   qualified name of an actuator might be
    #   `Vehicle.Front.Left.Door.Lock`.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The specified data type of the actuator.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the actuator.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The scientific unit for the actuator.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   A list of possible values an actuator can take.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min
    #   The specified possible minimum value of an actuator.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The specified possible maximum value of an actuator.
    #   @return [Float]
    #
    # @!attribute [rw] assigned_value
    #   A specified value for the actuator.
    #   @return [String]
    #
    # @!attribute [rw] deprecation_message
    #   The deprecation message for the node or the branch that was moved or
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment in addition to the description.
    #   @return [String]
    #
    class Actuator < Struct.new(
      :fully_qualified_name,
      :data_type,
      :description,
      :unit,
      :allowed_values,
      :min,
      :max,
      :assigned_value,
      :deprecation_message,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to associate with the fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The ID of a fleet.
    #   @return [String]
    #
    class AssociateVehicleFleetRequest < Struct.new(
      :vehicle_name,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateVehicleFleetResponse < Aws::EmptyStructure; end

    # A signal that represents static information about the vehicle, such as
    # engine type or manufacturing date.
    #
    # @!attribute [rw] fully_qualified_name
    #   The fully qualified name of the attribute. For example, the fully
    #   qualified name of an attribute might be `Vehicle.Body.Engine.Type`.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The specified data type of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The scientific unit for the attribute.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   A list of possible values an attribute can be assigned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min
    #   The specified possible minimum value of the attribute.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The specified possible maximum value of the attribute.
    #   @return [Float]
    #
    # @!attribute [rw] assigned_value
    #   A specified value for the attribute.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] deprecation_message
    #   The deprecation message for the node or the branch that was moved or
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment in addition to the description.
    #   @return [String]
    #
    class Attribute < Struct.new(
      :fully_qualified_name,
      :data_type,
      :description,
      :unit,
      :allowed_values,
      :min,
      :max,
      :assigned_value,
      :default_value,
      :deprecation_message,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicles
    #   A list of information about each vehicle to create. For more
    #   information, see the API data type.
    #   @return [Array<Types::CreateVehicleRequestItem>]
    #
    class BatchCreateVehicleRequest < Struct.new(
      :vehicles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicles
    #   A list of information about a batch of created vehicles. For more
    #   information, see the API data type.
    #   @return [Array<Types::CreateVehicleResponseItem>]
    #
    # @!attribute [rw] errors
    #   A list of information about creation errors, or an empty list if
    #   there aren't any errors.
    #   @return [Array<Types::CreateVehicleError>]
    #
    class BatchCreateVehicleResponse < Struct.new(
      :vehicles,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicles
    #   A list of information about the vehicles to update. For more
    #   information, see the API data type.
    #   @return [Array<Types::UpdateVehicleRequestItem>]
    #
    class BatchUpdateVehicleRequest < Struct.new(
      :vehicles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicles
    #   A list of information about the batch of updated vehicles.
    #
    #   <note markdown="1"> This list contains only unique IDs for the vehicles that were
    #   updated.
    #
    #    </note>
    #   @return [Array<Types::UpdateVehicleResponseItem>]
    #
    # @!attribute [rw] errors
    #   A list of information about errors returned while updating a batch
    #   of vehicles, or, if there aren't any errors, an empty list.
    #   @return [Array<Types::UpdateVehicleError>]
    #
    class BatchUpdateVehicleResponse < Struct.new(
      :vehicles,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A group of signals that are defined in a hierarchical structure.
    #
    # @!attribute [rw] fully_qualified_name
    #   The fully qualified name of the branch. For example, the fully
    #   qualified name of a branch might be `Vehicle.Body.Engine`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the branch.
    #   @return [String]
    #
    # @!attribute [rw] deprecation_message
    #   The deprecation message for the node or the branch that was moved or
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment in addition to the description.
    #   @return [String]
    #
    class Branch < Struct.new(
      :fully_qualified_name,
      :description,
      :deprecation_message,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a campaign.
    #
    # You can use the API operation to return this information about
    # multiple created campaigns.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of a campaign.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a campaign.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The ARN of the signal catalog associated with the campaign.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of a vehicle or fleet to which the campaign is deployed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of a campaign. The status can be one of the following:
    #
    #   * `CREATING` - Amazon Web Services IoT FleetWise is processing your
    #     request to create the campaign.
    #
    #   * `WAITING_FOR_APPROVAL` - After a campaign is created, it enters
    #     the `WAITING_FOR_APPROVAL` state. To allow Amazon Web Services IoT
    #     FleetWise to deploy the campaign to the target vehicle or fleet,
    #     use the API operation to approve the campaign.
    #
    #   * `RUNNING` - The campaign is active.
    #
    #   * `SUSPENDED` - The campaign is suspended. To resume the campaign,
    #     use the API operation.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the campaign was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the campaign was modified.
    #   @return [Time]
    #
    class CampaignSummary < Struct.new(
      :arn,
      :name,
      :description,
      :signal_catalog_arn,
      :target_arn,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations used to create a decoder manifest.
    #
    # @!attribute [rw] network_interface
    #   Contains information about a network interface.
    #   @return [String]
    #
    # @!attribute [rw] can_dbc_files
    #   A list of DBC files. You can upload only one DBC file for each
    #   network interface and specify up to five (inclusive) files in the
    #   list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] signals_map
    #   Pairs every signal specified in your vehicle model with a signal
    #   decoder.
    #   @return [Hash<String,String>]
    #
    class CanDbcDefinition < Struct.new(
      :network_interface,
      :can_dbc_files,
      :signals_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single controller area network (CAN) device interface.
    #
    # @!attribute [rw] name
    #   The unique name of the interface.
    #   @return [String]
    #
    # @!attribute [rw] protocol_name
    #   The name of the communication protocol for the interface.
    #   @return [String]
    #
    # @!attribute [rw] protocol_version
    #   The version of the communication protocol for the interface.
    #   @return [String]
    #
    class CanInterface < Struct.new(
      :name,
      :protocol_name,
      :protocol_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a single controller area network (CAN) signal and
    # the messages it receives and transmits.
    #
    # @!attribute [rw] message_id
    #   The ID of the message.
    #   @return [Integer]
    #
    # @!attribute [rw] is_big_endian
    #   Whether the byte ordering of a CAN message is big-endian.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_signed
    #   Whether the message data is specified as a signed value.
    #   @return [Boolean]
    #
    # @!attribute [rw] start_bit
    #   Indicates the beginning of the CAN signal. This should always be the
    #   least significant bit (LSB).
    #
    #   This value might be different from the value in a DBC file. For
    #   little endian signals, `startBit` is the same value as in the DBC
    #   file. For big endian signals in a DBC file, the start bit is the
    #   most significant bit (MSB). You will have to calculate the LSB
    #   instead and pass it as the `startBit`.
    #   @return [Integer]
    #
    # @!attribute [rw] offset
    #   The offset used to calculate the signal value. Combined with factor,
    #   the calculation is `value = raw_value * factor + offset`.
    #   @return [Float]
    #
    # @!attribute [rw] factor
    #   A multiplier used to decode the CAN message.
    #   @return [Float]
    #
    # @!attribute [rw] length
    #   How many bytes of data are in the message.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the signal.
    #   @return [String]
    #
    class CanSignal < Struct.new(
      :message_id,
      :is_big_endian,
      :is_signed,
      :start_bit,
      :offset,
      :factor,
      :length,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log delivery option to send data to Amazon CloudWatch Logs.
    #
    # @!attribute [rw] log_type
    #   The type of log to send data to Amazon CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] log_group_name
    #   The Amazon CloudWatch Logs group the operation sends data to.
    #   @return [String]
    #
    class CloudWatchLogDeliveryOptions < Struct.new(
      :log_type,
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies what data to collect and how often or when to collect it.
    #
    # @note CollectionScheme is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CollectionScheme is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CollectionScheme corresponding to the set member.
    #
    # @!attribute [rw] time_based_collection_scheme
    #   Information about a collection scheme that uses a time period to
    #   decide how often to collect data.
    #   @return [Types::TimeBasedCollectionScheme]
    #
    # @!attribute [rw] condition_based_collection_scheme
    #   Information about a collection scheme that uses a simple logical
    #   expression to recognize what data to collect.
    #   @return [Types::ConditionBasedCollectionScheme]
    #
    class CollectionScheme < Struct.new(
      :time_based_collection_scheme,
      :condition_based_collection_scheme,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TimeBasedCollectionScheme < CollectionScheme; end
      class ConditionBasedCollectionScheme < CollectionScheme; end
      class Unknown < CollectionScheme; end
    end

    # Information about a collection scheme that uses a simple logical
    # expression to recognize what data to collect.
    #
    # @!attribute [rw] expression
    #   The logical expression used to recognize what data to collect. For
    #   example, `$variable.Vehicle.OutsideAirTemperature >= 105.0`.
    #   @return [String]
    #
    # @!attribute [rw] minimum_trigger_interval_ms
    #   The minimum duration of time between two triggering events to
    #   collect data, in milliseconds.
    #
    #   <note markdown="1"> If a signal changes often, you might want to collect data at a
    #   slower rate.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] trigger_mode
    #   Whether to collect data for all triggering events (`ALWAYS`).
    #   Specify (`RISING_EDGE`), or specify only when the condition first
    #   evaluates to false. For example, triggering on "AirbagDeployed";
    #   Users aren't interested on triggering when the airbag is already
    #   exploded; they only care about the change from not deployed =&gt;
    #   deployed.
    #   @return [String]
    #
    # @!attribute [rw] condition_language_version
    #   Specifies the version of the conditional expression language.
    #   @return [Integer]
    #
    class ConditionBasedCollectionScheme < Struct.new(
      :expression,
      :minimum_trigger_interval_ms,
      :trigger_mode,
      :condition_language_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has conflicting operations. This can occur if you're
    # trying to perform more than one operation on the same resource at the
    # same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource on which there are conflicting operations.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource on which there are conflicting operations..
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message,
      :resource,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the campaign to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the campaign to help identify its
    #   purpose.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   (Optional) The Amazon Resource Name (ARN) of the signal catalog to
    #   associate with the campaign.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the vehicle or fleet to deploy a campaign to.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   (Optional) The time, in milliseconds, to deliver a campaign after it
    #   was approved. If it's not specified, `0` is used.
    #
    #   Default: `0`
    #   @return [Time]
    #
    # @!attribute [rw] expiry_time
    #   (Optional) The time the campaign expires, in seconds since epoch
    #   (January 1, 1970 at midnight UTC time). Vehicle data isn't
    #   collected after the campaign expires.
    #
    #   Default: 253402214400 (December 31, 9999, 00:00:00 UTC)
    #   @return [Time]
    #
    # @!attribute [rw] post_trigger_collection_duration
    #   (Optional) How long (in milliseconds) to collect raw data after a
    #   triggering event initiates the collection. If it's not specified,
    #   `0` is used.
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] diagnostics_mode
    #   (Optional) Option for a vehicle to send diagnostic trouble codes to
    #   Amazon Web Services IoT FleetWise. If you want to send diagnostic
    #   trouble codes, use `SEND_ACTIVE_DTCS`. If it's not specified, `OFF`
    #   is used.
    #
    #   Default: `OFF`
    #   @return [String]
    #
    # @!attribute [rw] spooling_mode
    #   (Optional) Whether to store collected data after a vehicle lost a
    #   connection with the cloud. After a connection is re-established, the
    #   data is automatically forwarded to Amazon Web Services IoT
    #   FleetWise. If you want to store collected data when a vehicle loses
    #   connection with the cloud, use `TO_DISK`. If it's not specified,
    #   `OFF` is used.
    #
    #   Default: `OFF`
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   (Optional) Whether to compress signals before transmitting data to
    #   Amazon Web Services IoT FleetWise. If you don't want to compress
    #   the signals, use `OFF`. If it's not specified, `SNAPPY` is used.
    #
    #   Default: `SNAPPY`
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   (Optional) A number indicating the priority of one campaign over
    #   another campaign for a certain vehicle or fleet. A campaign with the
    #   lowest value is deployed to vehicles before any other campaigns. If
    #   it's not specified, `0` is used.
    #
    #   Default: `0`
    #   @return [Integer]
    #
    # @!attribute [rw] signals_to_collect
    #   (Optional) A list of information about signals to collect.
    #   @return [Array<Types::SignalInformation>]
    #
    # @!attribute [rw] collection_scheme
    #   The data collection scheme associated with the campaign. You can
    #   specify a scheme that collects data based on time or an event.
    #   @return [Types::CollectionScheme]
    #
    # @!attribute [rw] data_extra_dimensions
    #   (Optional) A list of vehicle attributes to associate with a
    #   campaign.
    #
    #   Enrich the data with specified vehicle attributes. For example, add
    #   `make` and `model` to the campaign, and Amazon Web Services IoT
    #   FleetWise will associate the data with those attributes as
    #   dimensions in Amazon Timestream. You can then query the data against
    #   `make` and `model`.
    #
    #   Default: An empty array
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the campaign.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] data_destination_configs
    #   The destination where the campaign sends data. You can choose to
    #   send data to be stored in Amazon S3 or Amazon Timestream.
    #
    #   Amazon S3 optimizes the cost of data storage and provides additional
    #   mechanisms to use vehicle data, such as data lakes, centralized data
    #   storage, data processing pipelines, and analytics.
    #
    #   You can use Amazon Timestream to access and analyze time series
    #   data, and Timestream to query vehicle data so that you can identify
    #   trends and patterns.
    #   @return [Array<Types::DataDestinationConfig>]
    #
    class CreateCampaignRequest < Struct.new(
      :name,
      :description,
      :signal_catalog_arn,
      :target_arn,
      :start_time,
      :expiry_time,
      :post_trigger_collection_duration,
      :diagnostics_mode,
      :spooling_mode,
      :compression,
      :priority,
      :signals_to_collect,
      :collection_scheme,
      :data_extra_dimensions,
      :tags,
      :data_destination_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the created campaign.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created campaign.
    #   @return [String]
    #
    class CreateCampaignResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name of the decoder manifest to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The Amazon Resource Name (ARN) of the vehicle model (model
    #   manifest).
    #   @return [String]
    #
    # @!attribute [rw] signal_decoders
    #   A list of information about signal decoders.
    #   @return [Array<Types::SignalDecoder>]
    #
    # @!attribute [rw] network_interfaces
    #   A list of information about available network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the decoder manifest.
    #   @return [Array<Types::Tag>]
    #
    class CreateDecoderManifestRequest < Struct.new(
      :name,
      :description,
      :model_manifest_arn,
      :signal_decoders,
      :network_interfaces,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the created decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created decoder manifest.
    #   @return [String]
    #
    class CreateDecoderManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The unique ID of the fleet to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the fleet to create.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The Amazon Resource Name (ARN) of a signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the fleet.
    #   @return [Array<Types::Tag>]
    #
    class CreateFleetRequest < Struct.new(
      :fleet_id,
      :description,
      :signal_catalog_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the created fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created fleet.
    #   @return [String]
    #
    class CreateFleetResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the vehicle model to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] nodes
    #   A list of nodes, which are a general abstraction of signals.
    #   @return [Array<String>]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The Amazon Resource Name (ARN) of a signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the vehicle model.
    #   @return [Array<Types::Tag>]
    #
    class CreateModelManifestRequest < Struct.new(
      :name,
      :description,
      :nodes,
      :signal_catalog_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the created vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created vehicle model.
    #   @return [String]
    #
    class CreateModelManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] nodes
    #   A list of information about nodes, which are a general abstraction
    #   of signals. For more information, see the API data type.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the signal catalog.
    #   @return [Array<Types::Tag>]
    #
    class CreateSignalCatalogRequest < Struct.new(
      :name,
      :description,
      :nodes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the created signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created signal catalog.
    #   @return [String]
    #
    class CreateSignalCatalogResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP error resulting from creating a vehicle.
    #
    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle with the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An HTTP error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the HTTP error.
    #   @return [String]
    #
    class CreateVehicleError < Struct.new(
      :vehicle_name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to create.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The Amazon Resource Name ARN of a vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] decoder_manifest_arn
    #   The ARN of a decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #   `"engineType"` : `"1.3 L R2"`
    #
    #   A campaign must include the keys (attribute names) in
    #   `dataExtraDimensions` for them to display in Amazon Timestream.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] association_behavior
    #   An option to create a new Amazon Web Services IoT thing when
    #   creating a vehicle, or to validate an existing Amazon Web Services
    #   IoT thing as a vehicle.
    #
    #   Default: ``
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the vehicle.
    #   @return [Array<Types::Tag>]
    #
    class CreateVehicleRequest < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :association_behavior,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the vehicle to create.
    #
    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to create.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of the vehicle model (model manifest) to create the vehicle
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] decoder_manifest_arn
    #   The Amazon Resource Name (ARN) of a decoder manifest associated with
    #   the vehicle to create.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #   `"engine Type"` : `"v6"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] association_behavior
    #   An option to create a new Amazon Web Services IoT thing when
    #   creating a vehicle, or to validate an existing thing as a vehicle.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Metadata which can be used to manage the vehicle.
    #   @return [Array<Types::Tag>]
    #
    class CreateVehicleRequestItem < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :association_behavior,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The unique ID of the created vehicle.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created vehicle.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of a created or validated Amazon Web Services IoT thing.
    #   @return [String]
    #
    class CreateVehicleResponse < Struct.new(
      :vehicle_name,
      :arn,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a created vehicle.
    #
    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to create.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the created vehicle.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of a created or validated Amazon Web Services IoT thing.
    #   @return [String]
    #
    class CreateVehicleResponseItem < Struct.new(
      :vehicle_name,
      :arn,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination where the Amazon Web Services IoT FleetWise campaign
    # sends data. You can send data to be stored in Amazon S3 or Amazon
    # Timestream.
    #
    # @note DataDestinationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DataDestinationConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataDestinationConfig corresponding to the set member.
    #
    # @!attribute [rw] s3_config
    #   The Amazon S3 bucket where the Amazon Web Services IoT FleetWise
    #   campaign sends data.
    #   @return [Types::S3Config]
    #
    # @!attribute [rw] timestream_config
    #   The Amazon Timestream table where the campaign sends data.
    #   @return [Types::TimestreamConfig]
    #
    class DataDestinationConfig < Struct.new(
      :s3_config,
      :timestream_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Config < DataDestinationConfig; end
      class TimestreamConfig < DataDestinationConfig; end
      class Unknown < DataDestinationConfig; end
    end

    # Information about a created decoder manifest. You can use the API
    # operation to return this information about multiple decoder manifests.
    #
    # @!attribute [rw] name
    #   The name of the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the decoder manifest. If the status is `ACTIVE`, the
    #   decoder manifest can't be edited. If the status is marked `DRAFT`,
    #   you can edit the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the decoder manifest was created in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the decoder manifest was last updated in seconds since
    #   epoch (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class DecoderManifestSummary < Struct.new(
      :name,
      :arn,
      :model_manifest_arn,
      :description,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be completed because it contains signal decoders
    # with one or more validation errors.
    #
    # @!attribute [rw] invalid_signals
    #   The request couldn't be completed because of invalid signals in the
    #   request.
    #   @return [Array<Types::InvalidSignalDecoder>]
    #
    # @!attribute [rw] invalid_network_interfaces
    #   The request couldn't be completed because of invalid network
    #   interfaces in the request.
    #   @return [Array<Types::InvalidNetworkInterface>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class DecoderManifestValidationException < Struct.new(
      :invalid_signals,
      :invalid_network_interfaces,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the campaign to delete.
    #   @return [String]
    #
    class DeleteCampaignRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the deleted campaign.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted campaign.
    #
    #   <note markdown="1"> The ARN isn’t returned if a campaign doesn’t exist.
    #
    #    </note>
    #   @return [String]
    #
    class DeleteCampaignResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest to delete.
    #   @return [String]
    #
    class DeleteDecoderManifestRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the deleted decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted decoder manifest.
    #   @return [String]
    #
    class DeleteDecoderManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The ID of the fleet to delete.
    #   @return [String]
    #
    class DeleteFleetRequest < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the deleted fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted fleet.
    #   @return [String]
    #
    class DeleteFleetResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the model manifest to delete.
    #   @return [String]
    #
    class DeleteModelManifestRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the deleted model manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted model manifest.
    #   @return [String]
    #
    class DeleteModelManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog to delete.
    #   @return [String]
    #
    class DeleteSignalCatalogRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the deleted signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted signal catalog.
    #   @return [String]
    #
    class DeleteSignalCatalogResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle to delete.
    #   @return [String]
    #
    class DeleteVehicleRequest < Struct.new(
      :vehicle_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The ID of the deleted vehicle.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted vehicle.
    #   @return [String]
    #
    class DeleteVehicleResponse < Struct.new(
      :vehicle_name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to disassociate from the fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_id
    #   The unique ID of a fleet.
    #   @return [String]
    #
    class DisassociateVehicleFleetRequest < Struct.new(
      :vehicle_name,
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateVehicleFleetResponse < Aws::EmptyStructure; end

    # Information about a fleet.
    #
    # You can use the API operation to return this information about
    # multiple fleets.
    #
    # @!attribute [rw] id
    #   The unique ID of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The ARN of the signal catalog associated with the fleet.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the fleet was created, in seconds since epoch (January 1,
    #   1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the fleet was last updated in seconds since epoch (January
    #   1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class FleetSummary < Struct.new(
      :id,
      :arn,
      :description,
      :signal_catalog_arn,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # [Vehicle Signal Specification (VSS)][1] is a precise language used to
    # describe and model signals in vehicle networks. The JSON file collects
    # signal specificiations in a VSS format.
    #
    #
    #
    # [1]: https://www.w3.org/auto/wg/wiki/Vehicle_Signal_Specification_(VSS)/Vehicle_Data_Spec
    #
    # @note FormattedVss is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] vss_json
    #   Provides the VSS in JSON format.
    #   @return [String]
    #
    class FormattedVss < Struct.new(
      :vss_json,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class VssJson < FormattedVss; end
      class Unknown < FormattedVss; end
    end

    # @!attribute [rw] name
    #   The name of the campaign to retrieve information about.
    #   @return [String]
    #
    class GetCampaignRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The ARN of a signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The ARN of the vehicle or the fleet targeted by the campaign.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the campaign. The status can be one of: `CREATING`,
    #   `WAITING_FOR_APPROVAL`, `RUNNING`, and `SUSPENDED`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time, in milliseconds, to deliver a campaign after it was
    #   approved.
    #   @return [Time]
    #
    # @!attribute [rw] expiry_time
    #   The time the campaign expires, in seconds since epoch (January 1,
    #   1970 at midnight UTC time). Vehicle data won't be collected after
    #   the campaign expires.
    #   @return [Time]
    #
    # @!attribute [rw] post_trigger_collection_duration
    #   How long (in seconds) to collect raw data after a triggering event
    #   initiates the collection.
    #   @return [Integer]
    #
    # @!attribute [rw] diagnostics_mode
    #   Option for a vehicle to send diagnostic trouble codes to Amazon Web
    #   Services IoT FleetWise.
    #   @return [String]
    #
    # @!attribute [rw] spooling_mode
    #   Whether to store collected data after a vehicle lost a connection
    #   with the cloud. After a connection is re-established, the data is
    #   automatically forwarded to Amazon Web Services IoT FleetWise.
    #   @return [String]
    #
    # @!attribute [rw] compression
    #   Whether to compress signals before transmitting data to Amazon Web
    #   Services IoT FleetWise. If `OFF` is specified, the signals aren't
    #   compressed. If it's not specified, `SNAPPY` is used.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   A number indicating the priority of one campaign over another
    #   campaign for a certain vehicle or fleet. A campaign with the lowest
    #   value is deployed to vehicles before any other campaigns.
    #   @return [Integer]
    #
    # @!attribute [rw] signals_to_collect
    #   Information about a list of signals to collect data on.
    #   @return [Array<Types::SignalInformation>]
    #
    # @!attribute [rw] collection_scheme
    #   Information about the data collection scheme associated with the
    #   campaign.
    #   @return [Types::CollectionScheme]
    #
    # @!attribute [rw] data_extra_dimensions
    #   A list of vehicle attributes associated with the campaign.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_time
    #   The time the campaign was created in seconds since epoch (January 1,
    #   1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the campaign was modified.
    #   @return [Time]
    #
    # @!attribute [rw] data_destination_configs
    #   The destination where the campaign sends data. You can choose to
    #   send data to be stored in Amazon S3 or Amazon Timestream.
    #
    #   Amazon S3 optimizes the cost of data storage and provides additional
    #   mechanisms to use vehicle data, such as data lakes, centralized data
    #   storage, data processing pipelines, and analytics.
    #
    #   You can use Amazon Timestream to access and analyze time series
    #   data, and Timestream to query vehicle data so that you can identify
    #   trends and patterns.
    #   @return [Array<Types::DataDestinationConfig>]
    #
    class GetCampaignResponse < Struct.new(
      :name,
      :arn,
      :description,
      :signal_catalog_arn,
      :target_arn,
      :status,
      :start_time,
      :expiry_time,
      :post_trigger_collection_duration,
      :diagnostics_mode,
      :spooling_mode,
      :compression,
      :priority,
      :signals_to_collect,
      :collection_scheme,
      :data_extra_dimensions,
      :creation_time,
      :last_modification_time,
      :data_destination_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest to retrieve information about.
    #   @return [String]
    #
    class GetDecoderManifestRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the decoder manifest. If the status is `ACTIVE`, the
    #   decoder manifest can't be edited. If the status is marked `DRAFT`,
    #   you can edit the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the decoder manifest was created in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the decoder manifest was last updated in seconds since
    #   epoch (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class GetDecoderManifestResponse < Struct.new(
      :name,
      :arn,
      :description,
      :model_manifest_arn,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The ID of the fleet to retrieve information about.
    #   @return [String]
    #
    class GetFleetRequest < Struct.new(
      :fleet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The ARN of a signal catalog associated with the fleet.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the fleet was created in seconds since epoch (January 1,
    #   1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the fleet was last updated, in seconds since epoch (January
    #   1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class GetFleetResponse < Struct.new(
      :id,
      :arn,
      :description,
      :signal_catalog_arn,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetLoggingOptionsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] cloud_watch_log_delivery
    #   Returns information about log delivery to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogDeliveryOptions]
    #
    class GetLoggingOptionsResponse < Struct.new(
      :cloud_watch_log_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the vehicle model to retrieve information about.
    #   @return [String]
    #
    class GetModelManifestRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The ARN of the signal catalog associated with the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the vehicle model. If the status is `ACTIVE`, the
    #   vehicle model can't be edited. You can edit the vehicle model if
    #   the status is marked `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the vehicle model was created, in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the vehicle model was modified.
    #   @return [Time]
    #
    class GetModelManifestResponse < Struct.new(
      :name,
      :arn,
      :description,
      :signal_catalog_arn,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetRegisterAccountStatusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] customer_account_id
    #   The unique ID of the Amazon Web Services account, provided at
    #   account creation.
    #   @return [String]
    #
    # @!attribute [rw] account_status
    #   The status of registering your account and resources. The status can
    #   be one of:
    #
    #   * `REGISTRATION_SUCCESS` - The Amazon Web Services resource is
    #     successfully registered.
    #
    #   * `REGISTRATION_PENDING` - Amazon Web Services IoT FleetWise is
    #     processing the registration request. This process takes
    #     approximately five minutes to complete.
    #
    #   * `REGISTRATION_FAILURE` - Amazon Web Services IoT FleetWise can't
    #     register the AWS resource. Try again later.
    #   @return [String]
    #
    # @!attribute [rw] timestream_registration_response
    #   Information about the registered Amazon Timestream resources or
    #   errors, if any.
    #   @return [Types::TimestreamRegistrationResponse]
    #
    # @!attribute [rw] iam_registration_response
    #   Information about the registered IAM resources or errors, if any.
    #   @return [Types::IamRegistrationResponse]
    #
    # @!attribute [rw] creation_time
    #   The time the account was registered, in seconds since epoch (January
    #   1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time this registration was last updated, in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class GetRegisterAccountStatusResponse < Struct.new(
      :customer_account_id,
      :account_status,
      :timestream_registration_response,
      :iam_registration_response,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog to retrieve information about.
    #   @return [String]
    #
    class GetSignalCatalogRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] node_counts
    #   The total number of network nodes specified in a signal catalog.
    #   @return [Types::NodeCounts]
    #
    # @!attribute [rw] creation_time
    #   The time the signal catalog was created in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The last time the signal catalog was modified.
    #   @return [Time]
    #
    class GetSignalCatalogResponse < Struct.new(
      :name,
      :arn,
      :description,
      :node_counts,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle to retrieve information about.
    #   @return [String]
    #
    class GetVehicleRequest < Struct.new(
      :vehicle_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the vehicle to retrieve
    #   information about.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   vehicle.
    #   @return [String]
    #
    # @!attribute [rw] decoder_manifest_arn
    #   The ARN of a decoder manifest associated with the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #
    #   `"engineType"` : `"1.3 L R2"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_time
    #   The time the vehicle was created in seconds since epoch (January 1,
    #   1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the vehicle was last updated in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class GetVehicleResponse < Struct.new(
      :vehicle_name,
      :arn,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle to retrieve information about.
    #   @return [String]
    #
    class GetVehicleStatusRequest < Struct.new(
      :next_token,
      :max_results,
      :vehicle_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaigns
    #   Lists information about the state of the vehicle with deployed
    #   campaigns.
    #   @return [Array<Types::VehicleStatus>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class GetVehicleStatusResponse < Struct.new(
      :campaigns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about registering an Identity and Access Management (IAM)
    # resource so Amazon Web Services IoT FleetWise edge agent software can
    # transfer your vehicle data to Amazon Timestream.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to register.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The status of registering your IAM resource. The status can be one
    #   of `REGISTRATION_SUCCESS`, `REGISTRATION_PENDING`,
    #   `REGISTRATION_FAILURE`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message associated with a registration error.
    #   @return [String]
    #
    class IamRegistrationResponse < Struct.new(
      :role_arn,
      :registration_status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IAM resource that enables Amazon Web Services IoT FleetWise edge
    # agent software to send data to Amazon Timestream.
    #
    # For more information, see [IAM roles][1] in the *Identity and Access
    # Management User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM resource that allows
    #   Amazon Web Services IoT FleetWise to send data to Amazon Timestream.
    #   For example, `arn:aws:iam::123456789012:role/SERVICE-ROLE-ARN`.
    #   @return [String]
    #
    class IamResources < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest to import.
    #   @return [String]
    #
    # @!attribute [rw] network_file_definitions
    #   The file to load into an Amazon Web Services account.
    #   @return [Array<Types::NetworkFileDefinition>]
    #
    class ImportDecoderManifestRequest < Struct.new(
      :name,
      :network_file_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the imported decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the decoder manifest that was
    #   imported.
    #   @return [String]
    #
    class ImportDecoderManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog to import.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] vss
    #   The contents of the Vehicle Signal Specification (VSS)
    #   configuration. VSS is a precise language used to describe and model
    #   signals in vehicle networks.
    #   @return [Types::FormattedVss]
    #
    # @!attribute [rw] tags
    #   Metadata that can be used to manage the signal catalog.
    #   @return [Array<Types::Tag>]
    #
    class ImportSignalCatalogRequest < Struct.new(
      :name,
      :description,
      :vss,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the imported signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the imported signal catalog.
    #   @return [String]
    #
    class ImportSignalCatalogResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be completed because the server temporarily
    # failed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the command.
    #   @return [Integer]
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reason a vehicle network interface isn't valid.
    #
    # @!attribute [rw] interface_id
    #   The ID of the interface that isn't valid.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message about why the interface isn't valid.
    #   @return [String]
    #
    class InvalidNetworkInterface < Struct.new(
      :interface_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified node type doesn't match the expected node type for a
    # node. You can specify the node type as branch, sensor, actuator, or
    # attribute.
    #
    # @!attribute [rw] invalid_nodes
    #   The specified node type isn't valid.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] reason
    #   The reason the node validation failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InvalidNodeException < Struct.new(
      :invalid_nodes,
      :reason,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reason that a signal isn't valid.
    #
    # @!attribute [rw] name
    #   The name of the signal that isn't valid.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message about why the signal isn't valid.
    #   @return [String]
    #
    class InvalidSignal < Struct.new(
      :name,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reason that a signal decoder isn't valid.
    #
    # @!attribute [rw] name
    #   The name of a signal decoder that isn't valid.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A message about why the signal decoder isn't valid.
    #   @return [String]
    #
    class InvalidSignalDecoder < Struct.new(
      :name,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be completed because it contains signals that
    # aren't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] invalid_signals
    #   The signals which caused the exception.
    #   @return [Array<Types::InvalidSignal>]
    #
    class InvalidSignalsException < Struct.new(
      :message,
      :invalid_signals)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service quota was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that was exceeded.
    #   @return [String]
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Optional parameter to filter the results by the status of each
    #   created campaign in your account. The status can be one of:
    #   `CREATING`, `WAITING_FOR_APPROVAL`, `RUNNING`, or `SUSPENDED`.
    #   @return [String]
    #
    class ListCampaignsRequest < Struct.new(
      :next_token,
      :max_results,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] campaign_summaries
    #   A summary of information about each campaign.
    #   @return [Array<Types::CampaignSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListCampaignsResponse < Struct.new(
      :campaign_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest to list information about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListDecoderManifestNetworkInterfacesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] network_interfaces
    #   A list of information about network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListDecoderManifestNetworkInterfacesResponse < Struct.new(
      :network_interfaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest to list information about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListDecoderManifestSignalsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signal_decoders
    #   Information about a list of signals to decode.
    #   @return [Array<Types::SignalDecoder>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListDecoderManifestSignalsResponse < Struct.new(
      :signal_decoders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_manifest_arn
    #   The Amazon Resource Name (ARN) of a vehicle model (model manifest)
    #   associated with the decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListDecoderManifestsRequest < Struct.new(
      :model_manifest_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of information about each decoder manifest.
    #   @return [Array<Types::DecoderManifestSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListDecoderManifestsResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle to retrieve information about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListFleetsForVehicleRequest < Struct.new(
      :vehicle_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleets
    #   A list of fleet IDs that the vehicle is associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListFleetsForVehicleResponse < Struct.new(
      :fleets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListFleetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_summaries
    #   A list of information for each fleet.
    #   @return [Array<Types::FleetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListFleetsResponse < Struct.new(
      :fleet_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the vehicle model to list information about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListModelManifestNodesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodes
    #   A list of information about nodes.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListModelManifestNodesResponse < Struct.new(
      :nodes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signal_catalog_arn
    #   The ARN of a signal catalog. If you specify a signal catalog, only
    #   the vehicle models associated with it are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListModelManifestsRequest < Struct.new(
      :signal_catalog_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of information about vehicle models.
    #   @return [Array<Types::ModelManifestSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListModelManifestsResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog to list information about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListSignalCatalogNodesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodes
    #   A list of information about nodes.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListSignalCatalogNodesResponse < Struct.new(
      :nodes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListSignalCatalogsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summaries
    #   A list of information about each signal catalog.
    #   @return [Array<Types::SignalCatalogSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListSignalCatalogsResponse < Struct.new(
      :summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The ID of a fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListVehiclesInFleetRequest < Struct.new(
      :fleet_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicles
    #   A list of vehicles associated with the fleet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListVehiclesInFleetResponse < Struct.new(
      :vehicles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_manifest_arn
    #   The Amazon Resource Name (ARN) of a vehicle model (model manifest).
    #   You can use this optional parameter to list only the vehicles
    #   created from a certain vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for the next set of results.
    #
    #   If the results of a search are large, only a portion of the results
    #   are returned, and a `nextToken` pagination token is returned in the
    #   response. To retrieve the next set of results, reissue the search
    #   request and include the returned token. When all results have been
    #   returned, the response does not contain a pagination token value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return, between 1 and 100, inclusive.
    #   @return [Integer]
    #
    class ListVehiclesRequest < Struct.new(
      :model_manifest_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_summaries
    #   A list of vehicles and information about them.
    #   @return [Array<Types::VehicleSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results, or `null` if there
    #   are no more results.
    #   @return [String]
    #
    class ListVehiclesResponse < Struct.new(
      :vehicle_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a vehicle model (model manifest). You can use the
    # API operation to return this information about multiple vehicle
    # models.
    #
    # @!attribute [rw] name
    #   The name of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] signal_catalog_arn
    #   The ARN of the signal catalog associated with the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of the vehicle model. If the status is `ACTIVE`, the
    #   vehicle model can't be edited. If the status is `DRAFT`, you can
    #   edit the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the vehicle model was created, in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the vehicle model was last updated, in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class ModelManifestSummary < Struct.new(
      :name,
      :arn,
      :signal_catalog_arn,
      :description,
      :status,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifications for defining a vehicle network.
    #
    # @note NetworkFileDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] can_dbc
    #   Information, including CAN DBC files, about the configurations used
    #   to create a decoder manifest.
    #   @return [Types::CanDbcDefinition]
    #
    class NetworkFileDefinition < Struct.new(
      :can_dbc,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CanDbc < NetworkFileDefinition; end
      class Unknown < NetworkFileDefinition; end
    end

    # Represents a node and its specifications in an in-vehicle
    # communication network. All signal decoders must be associated with a
    # network node.
    #
    # To return this information about all the network interfaces specified
    # in a decoder manifest, use the API operation.
    #
    # @!attribute [rw] interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The network protocol for the vehicle. For example, `CAN_SIGNAL`
    #   specifies a protocol that defines how data is communicated between
    #   electronic control units (ECUs). `OBD_SIGNAL` specifies a protocol
    #   that defines how self-diagnostic data is communicated between ECUs.
    #   @return [String]
    #
    # @!attribute [rw] can_interface
    #   Information about a network interface specified by the Controller
    #   Area Network (CAN) protocol.
    #   @return [Types::CanInterface]
    #
    # @!attribute [rw] obd_interface
    #   Information about a network interface specified by the On-board
    #   diagnostic (OBD) II protocol.
    #   @return [Types::ObdInterface]
    #
    class NetworkInterface < Struct.new(
      :interface_id,
      :type,
      :can_interface,
      :obd_interface)
      SENSITIVE = []
      include Aws::Structure
    end

    # A general abstraction of a signal. A node can be specified as an
    # actuator, attribute, branch, or sensor.
    #
    # @note Node is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Node is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Node corresponding to the set member.
    #
    # @!attribute [rw] branch
    #   Information about a node specified as a branch.
    #
    #   <note markdown="1"> A group of signals that are defined in a hierarchical structure.
    #
    #    </note>
    #   @return [Types::Branch]
    #
    # @!attribute [rw] sensor
    #   An input component that reports the environmental condition of a
    #   vehicle.
    #
    #   <note markdown="1"> You can collect data about fluid levels, temperatures, vibrations,
    #   or battery voltage from sensors.
    #
    #    </note>
    #   @return [Types::Sensor]
    #
    # @!attribute [rw] actuator
    #   Information about a node specified as an actuator.
    #
    #   <note markdown="1"> An actuator is a digital representation of a vehicle device.
    #
    #    </note>
    #   @return [Types::Actuator]
    #
    # @!attribute [rw] attribute
    #   Information about a node specified as an attribute.
    #
    #   <note markdown="1"> An attribute represents static information about a vehicle.
    #
    #    </note>
    #   @return [Types::Attribute]
    #
    class Node < Struct.new(
      :branch,
      :sensor,
      :actuator,
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Branch < Node; end
      class Sensor < Node; end
      class Actuator < Node; end
      class Attribute < Node; end
      class Unknown < Node; end
    end

    # Information about the number of nodes and node types in a vehicle
    # network.
    #
    # @!attribute [rw] total_nodes
    #   The total number of nodes in a vehicle network.
    #   @return [Integer]
    #
    # @!attribute [rw] total_branches
    #   The total number of nodes in a vehicle network that represent
    #   branches.
    #   @return [Integer]
    #
    # @!attribute [rw] total_sensors
    #   The total number of nodes in a vehicle network that represent
    #   sensors.
    #   @return [Integer]
    #
    # @!attribute [rw] total_attributes
    #   The total number of nodes in a vehicle network that represent
    #   attributes.
    #   @return [Integer]
    #
    # @!attribute [rw] total_actuators
    #   The total number of nodes in a vehicle network that represent
    #   actuators.
    #   @return [Integer]
    #
    class NodeCounts < Struct.new(
      :total_nodes,
      :total_branches,
      :total_sensors,
      :total_attributes,
      :total_actuators)
      SENSITIVE = []
      include Aws::Structure
    end

    # A network interface that specifies the On-board diagnostic (OBD) II
    # network protocol.
    #
    # @!attribute [rw] name
    #   The name of the interface.
    #   @return [String]
    #
    # @!attribute [rw] request_message_id
    #   The ID of the message requesting vehicle data.
    #   @return [Integer]
    #
    # @!attribute [rw] obd_standard
    #   The standard OBD II PID.
    #   @return [String]
    #
    # @!attribute [rw] pid_request_interval_seconds
    #   The maximum number message requests per second.
    #   @return [Integer]
    #
    # @!attribute [rw] dtc_request_interval_seconds
    #   The maximum number message requests per diagnostic trouble code per
    #   second.
    #   @return [Integer]
    #
    # @!attribute [rw] use_extended_ids
    #   Whether to use extended IDs in the message.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_transmission_ecu
    #   Whether the vehicle has a transmission control module (TCM).
    #   @return [Boolean]
    #
    class ObdInterface < Struct.new(
      :name,
      :request_message_id,
      :obd_standard,
      :pid_request_interval_seconds,
      :dtc_request_interval_seconds,
      :use_extended_ids,
      :has_transmission_ecu)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about signal messages using the on-board diagnostics (OBD)
    # II protocol in a vehicle.
    #
    # @!attribute [rw] pid_response_length
    #   The length of the requested data.
    #   @return [Integer]
    #
    # @!attribute [rw] service_mode
    #   The mode of operation (diagnostic service) in a message.
    #   @return [Integer]
    #
    # @!attribute [rw] pid
    #   The diagnostic code used to request data from a vehicle for this
    #   signal.
    #   @return [Integer]
    #
    # @!attribute [rw] scaling
    #   A multiplier used to decode the message.
    #   @return [Float]
    #
    # @!attribute [rw] offset
    #   The offset used to calculate the signal value. Combined with
    #   scaling, the calculation is `value = raw_value * scaling + offset`.
    #   @return [Float]
    #
    # @!attribute [rw] start_byte
    #   Indicates the beginning of the message.
    #   @return [Integer]
    #
    # @!attribute [rw] byte_length
    #   The length of a message.
    #   @return [Integer]
    #
    # @!attribute [rw] bit_right_shift
    #   The number of positions to shift bits in the message.
    #   @return [Integer]
    #
    # @!attribute [rw] bit_mask_length
    #   The number of bits to mask in a message.
    #   @return [Integer]
    #
    class ObdSignal < Struct.new(
      :pid_response_length,
      :service_mode,
      :pid,
      :scaling,
      :offset,
      :start_byte,
      :byte_length,
      :bit_right_shift,
      :bit_mask_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cloud_watch_log_delivery
    #   Creates or updates the log delivery option to Amazon CloudWatch
    #   Logs.
    #   @return [Types::CloudWatchLogDeliveryOptions]
    #
    class PutLoggingOptionsRequest < Struct.new(
      :cloud_watch_log_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    class PutLoggingOptionsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] timestream_resources
    #   The registered Amazon Timestream resources that Amazon Web Services
    #   IoT FleetWise edge agent software can transfer your vehicle data to.
    #   @return [Types::TimestreamResources]
    #
    # @!attribute [rw] iam_resources
    #   The IAM resource that allows Amazon Web Services IoT FleetWise to
    #   send data to Amazon Timestream.
    #   @return [Types::IamResources]
    #
    class RegisterAccountRequest < Struct.new(
      :timestream_resources,
      :iam_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] register_account_status
    #   The status of registering your Amazon Web Services account, IAM
    #   role, and Timestream resources.
    #   @return [String]
    #
    # @!attribute [rw] timestream_resources
    #   The registered Amazon Timestream resources that Amazon Web Services
    #   IoT FleetWise edge agent software can transfer your vehicle data to.
    #   @return [Types::TimestreamResources]
    #
    # @!attribute [rw] iam_resources
    #   The registered IAM resource that allows Amazon Web Services IoT
    #   FleetWise to send data to Amazon Timestream.
    #   @return [Types::IamResources]
    #
    # @!attribute [rw] creation_time
    #   The time the account was registered, in seconds since epoch (January
    #   1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time this registration was last updated, in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class RegisterAccountResponse < Struct.new(
      :register_account_status,
      :timestream_resources,
      :iam_resources,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource wasn't found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that wasn't found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that wasn't found.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 bucket where the Amazon Web Services IoT FleetWise
    # campaign sends data. Amazon S3 is an object storage service that
    # stores data as objects within buckets. For more information, see
    # [Creating, configuring, and working with Amazon S3 buckets][1] in the
    # *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html
    #
    # @!attribute [rw] bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   Specify the format that files are saved in the Amazon S3 bucket. You
    #   can save files in an Apache Parquet or JSON format.
    #
    #   * Parquet - Store data in a columnar storage file format. Parquet is
    #     optimal for fast data retrieval and can reduce costs. This option
    #     is selected by default.
    #
    #   * JSON - Store data in a standard text-based JSON file format.
    #   @return [String]
    #
    # @!attribute [rw] storage_compression_format
    #   By default, stored data is compressed as a .gzip file. Compressed
    #   files have a reduced file size, which can optimize the cost of data
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   (Optional) Enter an S3 bucket prefix. The prefix is the string of
    #   characters after the bucket name and before the object name. You can
    #   use the prefix to organize data stored in Amazon S3 buckets. For
    #   more information, see [Organizing objects using prefixes][1] in the
    #   *Amazon Simple Storage Service User Guide*.
    #
    #   By default, Amazon Web Services IoT FleetWise sets the prefix
    #   `processed-data/year=YY/month=MM/date=DD/hour=HH/` (in UTC) to data
    #   it delivers to Amazon S3. You can enter a prefix to append it to
    #   this default prefix. For example, if you enter the prefix
    #   `vehicles`, the prefix will be
    #   `vehicles/processed-data/year=YY/month=MM/date=DD/hour=HH/`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html
    #   @return [String]
    #
    class S3Config < Struct.new(
      :bucket_arn,
      :data_format,
      :storage_compression_format,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # An input component that reports the environmental condition of a
    # vehicle.
    #
    # <note markdown="1"> You can collect data about fluid levels, temperatures, vibrations, or
    # battery voltage from sensors.
    #
    #  </note>
    #
    # @!attribute [rw] fully_qualified_name
    #   The fully qualified name of the sensor. For example, the fully
    #   qualified name of a sensor might be `Vehicle.Body.Engine.Battery`.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The specified data type of the sensor.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of a sensor.
    #   @return [String]
    #
    # @!attribute [rw] unit
    #   The scientific unit of measurement for data collected by the sensor.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   A list of possible values a sensor can take.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min
    #   The specified possible minimum value of the sensor.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The specified possible maximum value of the sensor.
    #   @return [Float]
    #
    # @!attribute [rw] deprecation_message
    #   The deprecation message for the node or the branch that was moved or
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment in addition to the description.
    #   @return [String]
    #
    class Sensor < Struct.new(
      :fully_qualified_name,
      :data_type,
      :description,
      :unit,
      :allowed_values,
      :min,
      :max,
      :deprecation_message,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a collection of standardized signals, which can be
    # attributes, branches, sensors, or actuators.
    #
    # @!attribute [rw] name
    #   The name of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the signal catalog was created in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the signal catalog was last updated in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class SignalCatalogSummary < Struct.new(
      :name,
      :arn,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a signal decoder.
    #
    # @!attribute [rw] fully_qualified_name
    #   The fully qualified name of a signal decoder as defined in a vehicle
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The network protocol for the vehicle. For example, `CAN_SIGNAL`
    #   specifies a protocol that defines how data is communicated between
    #   electronic control units (ECUs). `OBD_SIGNAL` specifies a protocol
    #   that defines how self-diagnostic data is communicated between ECUs.
    #   @return [String]
    #
    # @!attribute [rw] interface_id
    #   The ID of a network interface that specifies what network protocol a
    #   vehicle follows.
    #   @return [String]
    #
    # @!attribute [rw] can_signal
    #   Information about signal decoder using the Controller Area Network
    #   (CAN) protocol.
    #   @return [Types::CanSignal]
    #
    # @!attribute [rw] obd_signal
    #   Information about signal decoder using the On-board diagnostic (OBD)
    #   II protocol.
    #   @return [Types::ObdSignal]
    #
    class SignalDecoder < Struct.new(
      :fully_qualified_name,
      :type,
      :interface_id,
      :can_signal,
      :obd_signal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a signal.
    #
    # @!attribute [rw] name
    #   The name of the signal.
    #   @return [String]
    #
    # @!attribute [rw] max_sample_count
    #   The maximum number of samples to collect.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_sampling_interval_ms
    #   The minimum duration of time (in milliseconds) between two
    #   triggering events to collect data.
    #
    #   <note markdown="1"> If a signal changes often, you might want to collect data at a
    #   slower rate.
    #
    #    </note>
    #   @return [Integer]
    #
    class SignalInformation < Struct.new(
      :name,
      :max_sample_count,
      :minimum_sampling_interval_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of key/value pairs that are used to manage the resource.
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The new or modified tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # The request couldn't be completed due to throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota identifier of the applied throttling rules for this
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service that couldn't be completed due to
    #   throttling.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the command.
    #   @return [Integer]
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a collection scheme that uses a time period to
    # decide how often to collect data.
    #
    # @!attribute [rw] period_ms
    #   The time period (in milliseconds) to decide how often to collect
    #   data. For example, if the time period is `60000`, the Edge Agent
    #   software collects data once every minute.
    #   @return [Integer]
    #
    class TimeBasedCollectionScheme < Struct.new(
      :period_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Timestream table where the Amazon Web Services IoT
    # FleetWise campaign sends data. Timestream stores and organizes data to
    # optimize query processing time and to reduce storage costs. For more
    # information, see [Data modeling][1] in the *Amazon Timestream
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/data-modeling.html
    #
    # @!attribute [rw] timestream_table_arn
    #   The Amazon Resource Name (ARN) of the Amazon Timestream table.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that
    #   grants Amazon Web Services IoT FleetWise permission to deliver data
    #   to the Amazon Timestream table.
    #   @return [String]
    #
    class TimestreamConfig < Struct.new(
      :timestream_table_arn,
      :execution_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the registered Amazon Timestream resources or
    # errors, if any.
    #
    # @!attribute [rw] timestream_database_name
    #   The name of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] timestream_table_name
    #   The name of the Timestream database table.
    #   @return [String]
    #
    # @!attribute [rw] timestream_database_arn
    #   The Amazon Resource Name (ARN) of the Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] timestream_table_arn
    #   The ARN of the Timestream database table.
    #   @return [String]
    #
    # @!attribute [rw] registration_status
    #   The status of registering your Amazon Timestream resources. The
    #   status can be one of `REGISTRATION_SUCCESS`, `REGISTRATION_PENDING`,
    #   `REGISTRATION_FAILURE`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message associated with a registration error.
    #   @return [String]
    #
    class TimestreamRegistrationResponse < Struct.new(
      :timestream_database_name,
      :timestream_table_name,
      :timestream_database_arn,
      :timestream_table_arn,
      :registration_status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The registered Amazon Timestream resources that Amazon Web Services
    # IoT FleetWise edge agent software can transfer your vehicle data to.
    #
    # @!attribute [rw] timestream_database_name
    #   The name of the registered Amazon Timestream database.
    #   @return [String]
    #
    # @!attribute [rw] timestream_table_name
    #   The name of the registered Amazon Timestream database table.
    #   @return [String]
    #
    class TimestreamResources < Struct.new(
      :timestream_database_name,
      :timestream_table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of the tags to be removed from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the campaign to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] data_extra_dimensions
    #   A list of vehicle attributes to associate with a signal.
    #
    #   Default: An empty array
    #   @return [Array<String>]
    #
    # @!attribute [rw] action
    #   Specifies how to update a campaign. The action can be one of the
    #   following:
    #
    #   * `APPROVE` - To approve delivering a data collection scheme to
    #     vehicles.
    #
    #   * `SUSPEND` - To suspend collecting signal data. The campaign is
    #     deleted from vehicles and all vehicles in the suspended campaign
    #     will stop sending data.
    #
    #   * `RESUME` - To reactivate the `SUSPEND` campaign. The campaign is
    #     redeployed to all vehicles and the vehicles will resume sending
    #     data.
    #
    #   * `UPDATE` - To update a campaign.
    #   @return [String]
    #
    class UpdateCampaignRequest < Struct.new(
      :name,
      :description,
      :data_extra_dimensions,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the campaign.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated campaign.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of a campaign. The status can be one of:
    #
    #   * `CREATING` - Amazon Web Services IoT FleetWise is processing your
    #     request to create the campaign.
    #
    #   * `WAITING_FOR_APPROVAL` - After a campaign is created, it enters
    #     the `WAITING_FOR_APPROVAL` state. To allow Amazon Web Services IoT
    #     FleetWise to deploy the campaign to the target vehicle or fleet,
    #     use the API operation to approve the campaign.
    #
    #   * `RUNNING` - The campaign is active.
    #
    #   * `SUSPENDED` - The campaign is suspended. To resume the campaign,
    #     use the API operation.
    #   @return [String]
    #
    class UpdateCampaignResponse < Struct.new(
      :arn,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the decoder manifest to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the decoder manifest to update.
    #   @return [String]
    #
    # @!attribute [rw] signal_decoders_to_add
    #   A list of information about decoding additional signals to add to
    #   the decoder manifest.
    #   @return [Array<Types::SignalDecoder>]
    #
    # @!attribute [rw] signal_decoders_to_update
    #   A list of updated information about decoding signals to update in
    #   the decoder manifest.
    #   @return [Array<Types::SignalDecoder>]
    #
    # @!attribute [rw] signal_decoders_to_remove
    #   A list of signal decoders to remove from the decoder manifest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] network_interfaces_to_add
    #   A list of information about the network interfaces to add to the
    #   decoder manifest.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] network_interfaces_to_update
    #   A list of information about the network interfaces to update in the
    #   decoder manifest.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] network_interfaces_to_remove
    #   A list of network interfaces to remove from the decoder manifest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The state of the decoder manifest. If the status is `ACTIVE`, the
    #   decoder manifest can't be edited. If the status is `DRAFT`, you can
    #   edit the decoder manifest.
    #   @return [String]
    #
    class UpdateDecoderManifestRequest < Struct.new(
      :name,
      :description,
      :signal_decoders_to_add,
      :signal_decoders_to_update,
      :signal_decoders_to_remove,
      :network_interfaces_to_add,
      :network_interfaces_to_update,
      :network_interfaces_to_remove,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the updated decoder manifest.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated decoder manifest.
    #   @return [String]
    #
    class UpdateDecoderManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_id
    #   The ID of the fleet to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An updated description of the fleet.
    #   @return [String]
    #
    class UpdateFleetRequest < Struct.new(
      :fleet_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the updated fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated fleet.
    #   @return [String]
    #
    class UpdateFleetResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the vehicle model to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] nodes_to_add
    #   A list of `fullyQualifiedName` of nodes, which are a general
    #   abstraction of signals, to add to the vehicle model.
    #   @return [Array<String>]
    #
    # @!attribute [rw] nodes_to_remove
    #   A list of `fullyQualifiedName` of nodes, which are a general
    #   abstraction of signals, to remove from the vehicle model.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The state of the vehicle model. If the status is `ACTIVE`, the
    #   vehicle model can't be edited. If the status is `DRAFT`, you can
    #   edit the vehicle model.
    #   @return [String]
    #
    class UpdateModelManifestRequest < Struct.new(
      :name,
      :description,
      :nodes_to_add,
      :nodes_to_remove,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the updated vehicle model.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated vehicle model.
    #   @return [String]
    #
    class UpdateModelManifestResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the signal catalog to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the signal catalog to update.
    #   @return [String]
    #
    # @!attribute [rw] nodes_to_add
    #   A list of information about nodes to add to the signal catalog.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] nodes_to_update
    #   A list of information about nodes to update in the signal catalog.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] nodes_to_remove
    #   A list of `fullyQualifiedName` of nodes to remove from the signal
    #   catalog.
    #   @return [Array<String>]
    #
    class UpdateSignalCatalogRequest < Struct.new(
      :name,
      :description,
      :nodes_to_add,
      :nodes_to_update,
      :nodes_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the updated signal catalog.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the updated signal catalog.
    #   @return [String]
    #
    class UpdateSignalCatalogResponse < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP error resulting from updating the description for a vehicle.
    #
    # @!attribute [rw] vehicle_name
    #   The ID of the vehicle with the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The relevant HTTP error code (400+).
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   A message associated with the error.
    #   @return [String]
    #
    class UpdateVehicleError < Struct.new(
      :vehicle_name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to update.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   vehicle.
    #   @return [String]
    #
    # @!attribute [rw] decoder_manifest_arn
    #   The ARN of the decoder manifest associated with this vehicle.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #
    #   `"engineType"` : `"1.3 L R2"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_update_mode
    #   The method the specified attributes will update the existing
    #   attributes on the vehicle. Use`Overwite` to replace the vehicle
    #   attributes with the specified attributes. Or use `Merge` to combine
    #   all attributes.
    #
    #   This is required if attributes are present in the input.
    #   @return [String]
    #
    class UpdateVehicleRequest < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :attribute_update_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the vehicle to update.
    #
    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle to update.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of the vehicle model (model manifest) associated with the
    #   vehicle to update.
    #   @return [String]
    #
    # @!attribute [rw] decoder_manifest_arn
    #   The ARN of the signal decoder manifest associated with the vehicle
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Static information about a vehicle in a key-value pair. For example:
    #
    #   `"engineType"` : `"1.3 L R2"`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] attribute_update_mode
    #   The method the specified attributes will update the existing
    #   attributes on the vehicle. Use`Overwite` to replace the vehicle
    #   attributes with the specified attributes. Or use `Merge` to combine
    #   all attributes.
    #
    #   This is required if attributes are present in the input.
    #   @return [String]
    #
    class UpdateVehicleRequestItem < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :attribute_update_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vehicle_name
    #   The ID of the updated vehicle.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the updated vehicle.
    #   @return [String]
    #
    class UpdateVehicleResponse < Struct.new(
      :vehicle_name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the updated vehicle.
    #
    # @!attribute [rw] vehicle_name
    #   The unique ID of the updated vehicle.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated vehicle.
    #   @return [String]
    #
    class UpdateVehicleResponseItem < Struct.new(
      :vehicle_name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the input failed to satisfy the constraints specified by
    #   an Amazon Web Services service.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that fail to satisfy the constraints specified by
    #   an Amazon Web Services service.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation error due to mismatch between the expected data type,
    # length, or pattern of the parameter and the input.
    #
    # @!attribute [rw] name
    #   The name of the parameter field with the validation error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message about the validation error.
    #   @return [String]
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the state of a vehicle and how it relates to the
    # status of a campaign.
    #
    # @!attribute [rw] campaign_name
    #   The name of a campaign.
    #   @return [String]
    #
    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The state of a vehicle, which can be one of the following:
    #
    #   * `CREATED` - Amazon Web Services IoT FleetWise sucessfully created
    #     the vehicle.
    #
    #   * `READY` - The vehicle is ready to receive a campaign deployment.
    #
    #   * `HEALTHY` - A campaign deployment was delivered to the vehicle.
    #
    #   * `SUSPENDED` - A campaign associated with the vehicle was suspended
    #     and data collection was paused.
    #
    #   * `DELETING` - Amazon Web Services IoT FleetWise is removing a
    #     campaign from the vehicle.
    #   @return [String]
    #
    class VehicleStatus < Struct.new(
      :campaign_name,
      :vehicle_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a vehicle.
    #
    # To return this information about vehicles in your account, you can use
    # the API operation.
    #
    # @!attribute [rw] vehicle_name
    #   The unique ID of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] model_manifest_arn
    #   The ARN of a vehicle model (model manifest) associated with the
    #   vehicle.
    #   @return [String]
    #
    # @!attribute [rw] decoder_manifest_arn
    #   The ARN of a decoder manifest associated with the vehicle.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time the vehicle was created in seconds since epoch (January 1,
    #   1970 at midnight UTC time).
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_time
    #   The time the vehicle was last updated in seconds since epoch
    #   (January 1, 1970 at midnight UTC time).
    #   @return [Time]
    #
    class VehicleSummary < Struct.new(
      :vehicle_name,
      :arn,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :creation_time,
      :last_modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
