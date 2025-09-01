# frozen_string_literal: true

# This is generated code!

module Aws::IoTFleetWise
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A signal that represents a vehicle device such as the engine, heater, and door locks.
    #             Data from an actuator reports the state of a certain vehicle device.</p>
    #          <note>
    #             <p> Updating actuator data can change the state of a device. For example, you can
    #                 turn on or off the heater by updating its actuator data.</p>
    #          </note>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the actuator. For example, the fully qualified name of an
    #               actuator might be <code>Vehicle.Front.Left.Door.Lock</code>.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The specified data type of the actuator. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the actuator.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The scientific unit for the actuator.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>A list of possible values an actuator can take.</p>
    #   @return [Array<String>]
    # @!attribute min
    #   <p>The specified possible minimum value of an actuator.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The specified possible maximum value of an actuator.</p>
    #   @return [Float]
    # @!attribute assigned_value
    #   <p>A specified value for the actuator.</p>
    #   @deprecated
    #     assignedValue is no longer in use
    #   @return [String]
    # @!attribute deprecation_message
    #   <p>The deprecation message for the node or the branch that was moved or deleted.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment in addition to the description.</p>
    #   @return [String]
    # @!attribute struct_fully_qualified_name
    #   <p>The fully qualified name of the struct node for the actuator if the data type of the
    #               actuator is <code>Struct</code> or <code>StructArray</code>. For example, the struct
    #               fully qualified name of an actuator might be
    #               <code>Vehicle.Door.LockStruct</code>.</p>
    #   @return [String]
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
      :comment,
      :struct_fully_qualified_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p> The unique ID of the vehicle to associate with the fleet. </p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p> The ID of a fleet. </p>
    #   @return [String]
    class AssociateVehicleFleetInput < Struct.new(
      :vehicle_name,
      :fleet_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class AssociateVehicleFleetOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A signal that represents static information about the vehicle, such as engine type or
    #             manufacturing date.</p>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the attribute. For example, the fully qualified name of an
    #               attribute might be <code>Vehicle.Body.Engine.Type</code>.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The specified data type of the attribute. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the attribute.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The scientific unit for the attribute.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>A list of possible values an attribute can be assigned.</p>
    #   @return [Array<String>]
    # @!attribute min
    #   <p>The specified possible minimum value of the attribute.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The specified possible maximum value of the attribute.</p>
    #   @return [Float]
    # @!attribute assigned_value
    #   <p>A specified value for the attribute.</p>
    #   @deprecated
    #     assignedValue is no longer in use
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the attribute.</p>
    #   @return [String]
    # @!attribute deprecation_message
    #   <p>The deprecation message for the node or the branch that was moved or deleted.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment in addition to the description.</p>
    #   @return [String]
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
      :comment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicles
    #   <p> A list of information about each vehicle to create. For more information, see the
    #                    API data type.</p>
    #   @return [Array<Types::CreateVehicleRequestItem>]
    class BatchCreateVehicleInput < Struct.new(
      :vehicles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicles
    #   <p> A list of information about a batch of created vehicles. For more information, see
    #               the  API data type.</p>
    #   @return [Array<Types::CreateVehicleResponseItem>]
    # @!attribute errors
    #   <p>A list of information about creation errors, or an empty list if there aren't any
    #               errors. </p>
    #   @return [Array<Types::CreateVehicleError>]
    class BatchCreateVehicleOutput < Struct.new(
      :vehicles,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicles
    #   <p> A list of information about the vehicles to update. For more information, see the
    #                    API data type.</p>
    #   @return [Array<Types::UpdateVehicleRequestItem>]
    class BatchUpdateVehicleInput < Struct.new(
      :vehicles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicles
    #   <p> A list of information about the batch of updated vehicles. </p>
    #            <note>
    #               <p>This list contains only unique IDs for the vehicles that were updated.</p>
    #            </note>
    #   @return [Array<Types::UpdateVehicleResponseItem>]
    # @!attribute errors
    #   <p>A list of information about errors returned while updating a batch of vehicles, or, if
    #               there aren't any errors, an empty list.</p>
    #   @return [Array<Types::UpdateVehicleError>]
    class BatchUpdateVehicleOutput < Struct.new(
      :vehicles,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A group of signals that are defined in a hierarchical structure.</p>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the branch. For example, the fully qualified name of a
    #               branch might be <code>Vehicle.Body.Engine</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the branch.</p>
    #   @return [String]
    # @!attribute deprecation_message
    #   <p>The deprecation message for the node or the branch that was moved or deleted.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment in addition to the description.</p>
    #   @return [String]
    class Branch < Struct.new(
      :fully_qualified_name,
      :description,
      :deprecation_message,
      :comment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CampaignStatus
      CREATING = 'CREATING'
      WAITING_FOR_APPROVAL = 'WAITING_FOR_APPROVAL'
      RUNNING = 'RUNNING'
      SUSPENDED = 'SUSPENDED'
    end

    # <p>Information about a campaign. </p>
    #          <p>You can use the  API operation to return this
    #             information about multiple created campaigns.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a campaign.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a campaign.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the campaign.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The ARN of the signal catalog associated with the campaign.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The ARN of a vehicle or fleet to which the campaign is deployed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of a campaign. The status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon Web Services IoT FleetWise is processing your request to create the
    #                       campaign.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WAITING_FOR_APPROVAL</code> - After a campaign is created, it enters the
    #                           <code>WAITING_FOR_APPROVAL</code> state. To allow Amazon Web Services IoT FleetWise to deploy the
    #                       campaign to the target vehicle or fleet, use the  API operation to approve the campaign.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> - The campaign is active. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPENDED</code> - The campaign is suspended. To resume the campaign, use
    #                       the  API operation. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the campaign was created.</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the campaign was modified.</p>
    #   @return [Time]
    class CampaignSummary < Struct.new(
      :arn,
      :name,
      :description,
      :signal_catalog_arn,
      :target_arn,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configurations used to create a decoder manifest.</p>
    # @!attribute network_interface
    #   <p>Contains information about a network interface.</p>
    #   @return [String]
    # @!attribute can_dbc_files
    #   <p>A list of DBC files. You can upload only one DBC file for each network interface and
    #               specify up to five (inclusive) files in the list. The DBC file can be a maximum size of
    #               200 MB.</p>
    #   @return [Array<String>]
    # @!attribute signals_map
    #   <p>Pairs every signal specified in your vehicle model with a signal decoder.</p>
    #   @return [Hash<String, String>]
    class CanDbcDefinition < Struct.new(
      :network_interface,
      :can_dbc_files,
      :signals_map,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A single controller area network (CAN) device interface.</p>
    # @!attribute name
    #   <p>The unique name of the interface.</p>
    #   @return [String]
    # @!attribute protocol_name
    #   <p>The name of the communication protocol for the interface.</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>The version of the communication protocol for the interface.</p>
    #   @return [String]
    class CanInterface < Struct.new(
      :name,
      :protocol_name,
      :protocol_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a single controller area network (CAN) signal and the messages it
    #             receives and transmits.</p>
    # @!attribute message_id
    #   <p>The ID of the message.</p>
    #   @return [Integer]
    # @!attribute is_big_endian
    #   <p>Whether the byte ordering of a CAN message is big-endian.</p>
    #   @return [Boolean]
    # @!attribute is_signed
    #   <p>Determines whether the message is signed (<code>true</code>) or not (<code>false</code>). If it's signed, the message can represent both positive and negative numbers. The <code>isSigned</code> parameter only applies to the <code>INTEGER</code> raw signal type, and it doesn't affect the <code>FLOATING_POINT</code> raw signal type.</p>
    #   @return [Boolean]
    # @!attribute start_bit
    #   <p>Indicates the beginning of the CAN signal. This should always be the least significant
    #               bit (LSB).</p>
    #            <p>This value might be different from the value in a DBC file. For little endian signals,
    #                   <code>startBit</code> is the same value as in the DBC file. For big endian signals
    #               in a DBC file, the start bit is the most significant bit (MSB). You will have to
    #               calculate the LSB instead and pass it as the <code>startBit</code>.</p>
    #   @return [Integer]
    # @!attribute offset
    #   <p>The offset used to calculate the signal value. Combined with factor, the calculation
    #               is <code>value = raw_value * factor + offset</code>.</p>
    #   @return [Float]
    # @!attribute factor
    #   <p>A multiplier used to decode the CAN message.</p>
    #   @return [Float]
    # @!attribute length
    #   <p>How many bytes of data are in the message.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the signal.</p>
    #   @return [String]
    # @!attribute signal_value_type
    #   <p>The value type of the signal. The default value is <code>INTEGER</code>.</p>
    #   @return [String]
    class CanSignal < Struct.new(
      :message_id,
      :is_big_endian,
      :is_signed,
      :start_bit,
      :offset,
      :factor,
      :length,
      :name,
      :signal_value_type,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:message_id] = 0 unless options.key?(:message_id)
        options[:is_big_endian] = false unless options.key?(:is_big_endian)
        options[:is_signed] = false unless options.key?(:is_signed)
        options[:start_bit] = 0 unless options.key?(:start_bit)
        options[:length] = 0 unless options.key?(:length)
        super
      end
    end

    # <p>The log delivery option to send data to Amazon CloudWatch Logs.</p>
    # @!attribute log_type
    #   <p>The type of log to send data to Amazon CloudWatch Logs.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The Amazon CloudWatch Logs group the operation sends data to.</p>
    #   @return [String]
    class CloudWatchLogDeliveryOptions < Struct.new(
      :log_type,
      :log_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies what data to collect and how often or when to collect it.</p>
    # @!attribute time_based_collection_scheme
    #   <p>Information about a collection scheme that uses a time period to decide how often to
    #               collect data.</p>
    #   @return [Types::TimeBasedCollectionScheme]
    # @!attribute condition_based_collection_scheme
    #   <p>Information about a collection scheme that uses a simple logical expression to
    #               recognize what data to collect.</p>
    #   @return [Types::ConditionBasedCollectionScheme]
    class CollectionScheme < Struct.new(
      :time_based_collection_scheme,
      :condition_based_collection_scheme,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class TimeBasedCollectionScheme < CollectionScheme; end
      class ConditionBasedCollectionScheme < CollectionScheme; end
      class Unknown < CollectionScheme; end
    end

    module Compression
      OFF = 'OFF'
      SNAPPY = 'SNAPPY'
    end

    # <p>Information about a collection scheme that uses a simple logical expression to
    #             recognize what data to collect.</p>
    # @!attribute expression
    #   <p>The logical expression used to recognize what data to collect. For example, <code>$variable.`Vehicle.OutsideAirTemperature` &gt;= 105.0</code>.</p>
    #   @return [String]
    # @!attribute minimum_trigger_interval_ms
    #   <p>The minimum duration of time between two triggering events to collect data, in
    #               milliseconds.</p>
    #            <note>
    #               <p>If a signal changes often, you might want to collect data at a slower rate.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute trigger_mode
    #   <p>Whether to collect data for all triggering events (<code>ALWAYS</code>). Specify
    #                   (<code>RISING_EDGE</code>), or specify only when the condition first evaluates to
    #               false. For example, triggering on "AirbagDeployed"; Users aren't interested on
    #               triggering when the airbag is already exploded; they only care about the change from not
    #               deployed =&gt; deployed.</p>
    #   @return [String]
    # @!attribute condition_language_version
    #   <p>Specifies the version of the conditional expression language.</p>
    #   @return [Integer]
    class ConditionBasedCollectionScheme < Struct.new(
      :expression,
      :minimum_trigger_interval_ms,
      :trigger_mode,
      :condition_language_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the condition under which a signal fetch occurs.</p>
    # @!attribute condition_expression
    #   <p>The condition that must be satisfied to trigger a signal fetch.</p>
    #   @return [String]
    # @!attribute trigger_mode
    #   <p>Indicates the mode in which the signal fetch is triggered.</p>
    #   @return [String]
    class ConditionBasedSignalFetchConfig < Struct.new(
      :condition_expression,
      :trigger_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request has conflicting operations. This can occur if you're trying to perform
    #             more than one operation on the same resource at the same time.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource
    #   <p>The resource on which there are conflicting operations.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource on which there are conflicting operations..</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the campaign to create. </p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the campaign to help identify its purpose.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the signal catalog to associate with the campaign.
    #           </p>
    #   @return [String]
    # @!attribute target_arn
    #   <p> The ARN of the vehicle or fleet to deploy a campaign to. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time, in milliseconds, to deliver a campaign after it was approved. If
    #               it's not specified, <code>0</code> is used.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @return [Time]
    # @!attribute expiry_time
    #   <p>The time the campaign expires, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time). Vehicle data isn't collected after the campaign expires. </p>
    #            <p>Default: 253402214400 (December 31, 9999, 00:00:00 UTC)</p>
    #   @return [Time]
    # @!attribute post_trigger_collection_duration
    #   <p>How long (in milliseconds) to collect raw data after a triggering event
    #               initiates the collection. If it's not specified, <code>0</code> is used.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @return [Integer]
    # @!attribute diagnostics_mode
    #   <p>Option for a vehicle to send diagnostic trouble codes to Amazon Web Services IoT FleetWise. If you
    #               want to send diagnostic trouble codes, use <code>SEND_ACTIVE_DTCS</code>. If it's not
    #               specified, <code>OFF</code> is used.</p>
    #            <p>Default: <code>OFF</code>
    #            </p>
    #   @return [String]
    # @!attribute spooling_mode
    #   <p>Determines whether to store collected data after a vehicle lost a connection with the
    #               cloud. After a connection is re-established, the data is automatically forwarded to
    #               Amazon Web Services IoT FleetWise. If you want to store collected data when a vehicle loses connection with the
    #               cloud, use <code>TO_DISK</code>. If it's not specified, <code>OFF</code> is used.</p>
    #            <p>Default: <code>OFF</code>
    #            </p>
    #   @return [String]
    # @!attribute compression
    #   <p>Determines whether to compress signals before transmitting data to Amazon Web Services IoT FleetWise. If you
    #               don't want to compress the signals, use <code>OFF</code>. If it's not specified,
    #                   <code>SNAPPY</code> is used. </p>
    #            <p>Default: <code>SNAPPY</code>
    #            </p>
    #   @return [String]
    # @!attribute priority
    #   <p>A number indicating the priority of one campaign over another campaign for
    #               a certain vehicle or fleet. A campaign with the lowest value is deployed to vehicles
    #               before any other campaigns. If it's not specified, <code>0</code> is used. </p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @deprecated
    #     priority is no longer used or needed as input
    #   @return [Integer]
    # @!attribute signals_to_collect
    #   <p>A list of information about signals to collect. </p>
    #            <note>
    #               <p>If you upload a signal as a condition in a data partition for a campaign, then
    #                   those same signals must be included in <code>signalsToCollect</code>.</p>
    #            </note>
    #   @return [Array<Types::SignalInformation>]
    # @!attribute collection_scheme
    #   <p> The data collection scheme associated with the campaign. You can specify a scheme
    #               that collects data based on time or an event.</p>
    #   @return [Types::CollectionScheme]
    # @!attribute data_extra_dimensions
    #   <p>A list of vehicle attributes to associate with a campaign. </p>
    #            <p>Enrich the data with specified vehicle attributes. For example, add <code>make</code>
    #               and <code>model</code> to the campaign, and Amazon Web Services IoT FleetWise will associate the data with those
    #               attributes as dimensions in Amazon Timestream. You can then query the data against
    #                   <code>make</code> and <code>model</code>.</p>
    #            <p>Default: An empty array</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the campaign.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute data_destination_configs
    #   <p>The destination where the campaign sends data. You can send data to an MQTT topic,
    #               or store it in Amazon S3 or Amazon Timestream.</p>
    #            <p>MQTT is the publish/subscribe messaging protocol used by Amazon Web Services IoT to communicate with
    #               your devices.</p>
    #            <p>Amazon S3 optimizes the cost of data storage and provides additional mechanisms to use vehicle 
    #               data, such as data lakes, centralized data storage, data processing pipelines, and analytics. 
    #               Amazon Web Services IoT FleetWise supports at-least-once file delivery to S3. Your vehicle data is stored on multiple 
    #               Amazon Web Services IoT FleetWise servers for redundancy and high availability.</p>
    #            <p>You can use Amazon Timestream to access and analyze time series data, and Timestream to query
    #               vehicle data so that you can identify trends and patterns.</p>
    #   @return [Array<Types::DataDestinationConfig>]
    # @!attribute data_partitions
    #   <p>The data partitions associated with the signals collected from the vehicle.</p>
    #   @return [Array<Types::DataPartition>]
    # @!attribute signals_to_fetch
    #   <p>A list of information about signals to fetch.</p>
    #   @return [Array<Types::SignalFetchInformation>]
    class CreateCampaignInput < Struct.new(
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
      :data_destination_configs,
      :data_partitions,
      :signals_to_fetch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the created campaign.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the created campaign. </p>
    #   @return [String]
    class CreateCampaignOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The unique name of the decoder manifest to create.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the decoder manifest. </p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p> The Amazon Resource Name (ARN) of the vehicle model (model manifest). </p>
    #   @return [String]
    # @!attribute signal_decoders
    #   <p> A list of information about signal decoders. </p>
    #   @return [Array<Types::SignalDecoder>]
    # @!attribute network_interfaces
    #   <p> A list of information about available network interfaces. </p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute default_for_unmapped_signals
    #   <p>Use default decoders for all unmapped signals in the model. You don't need to provide any detailed decoding information.</p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the decoder manifest.</p>
    #   @return [Array<Types::Tag>]
    class CreateDecoderManifestInput < Struct.new(
      :name,
      :description,
      :model_manifest_arn,
      :signal_decoders,
      :network_interfaces,
      :default_for_unmapped_signals,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the created decoder manifest. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the created decoder manifest. </p>
    #   @return [String]
    class CreateDecoderManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p> The unique ID of the fleet to create. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the fleet to create. </p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p> The Amazon Resource Name (ARN) of a signal catalog. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the fleet.</p>
    #   @return [Array<Types::Tag>]
    class CreateFleetInput < Struct.new(
      :fleet_id,
      :description,
      :signal_catalog_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the created fleet. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the created fleet. </p>
    #   @return [String]
    class CreateFleetOutput < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the vehicle model to create.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the vehicle model. </p>
    #   @return [String]
    # @!attribute nodes
    #   <p> A list of nodes, which are a general abstraction of signals. </p>
    #   @return [Array<String>]
    # @!attribute signal_catalog_arn
    #   <p> The Amazon Resource Name (ARN) of a signal catalog. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the vehicle model.</p>
    #   @return [Array<Types::Tag>]
    class CreateModelManifestInput < Struct.new(
      :name,
      :description,
      :nodes,
      :signal_catalog_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the created vehicle model.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the created vehicle model.</p>
    #   @return [String]
    class CreateModelManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the signal catalog to create. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the signal catalog.</p>
    #   @return [String]
    # @!attribute nodes
    #   <p> A list of information about nodes, which are a general abstraction of signals. For
    #               more information, see the  API data type.</p>
    #   @return [Array<Types::Node>]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the signal catalog.</p>
    #   @return [Array<Types::Tag>]
    class CreateSignalCatalogInput < Struct.new(
      :name,
      :description,
      :nodes,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the created signal catalog. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the created signal catalog. </p>
    #   @return [String]
    class CreateSignalCatalogOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the state template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the state template.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The ARN of the signal catalog associated with the state template.</p>
    #   @return [String]
    # @!attribute state_template_properties
    #   <p>A list of signals from which data is collected. The state template properties contain the fully qualified names of the signals.</p>
    #   @return [Array<String>]
    # @!attribute data_extra_dimensions
    #   <p>A list of vehicle attributes to associate with the payload published on the state template's 
    #             MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will enrich the protobuf encoded payload with those attributes in the <code>extraDimensions</code>
    #             field.</p>
    #   @return [Array<String>]
    # @!attribute metadata_extra_dimensions
    #   <p>A list of vehicle attributes to associate with user properties of the messages published on the
    #             state template's MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will include these attributes as User Properties with the MQTT message.</p>
    #            <p>Default: An empty array</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the state template.</p>
    #   @return [Array<Types::Tag>]
    class CreateStateTemplateRequest < Struct.new(
      :name,
      :description,
      :signal_catalog_arn,
      :state_template_properties,
      :data_extra_dimensions,
      :metadata_extra_dimensions,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the state template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the state template.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class CreateStateTemplateResponse < Struct.new(
      :name,
      :arn,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An HTTP error resulting from creating a vehicle.</p>
    # @!attribute vehicle_name
    #   <p>The ID of the vehicle with the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>An HTTP error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the HTTP error.</p>
    #   @return [String]
    class CreateVehicleError < Struct.new(
      :vehicle_name,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p> The unique ID of the vehicle to create. </p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p> The Amazon Resource Name ARN of a vehicle model. </p>
    #   @return [String]
    # @!attribute decoder_manifest_arn
    #   <p> The ARN of a decoder manifest. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    #            <p>To use attributes with Campaigns or State Templates, you must include them using the 
    #               request parameters <code>dataExtraDimensions</code> and/or <code>metadataExtraDimensions</code> 
    #               (for state templates only) when creating your campaign/state template. </p>
    #   @return [Hash<String, String>]
    # @!attribute association_behavior
    #   <p> An option to create a new Amazon Web Services IoT thing when creating a vehicle, or to validate an
    #               existing Amazon Web Services IoT thing as a vehicle. </p>
    #            <p>Default: <code/>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the vehicle.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute state_templates
    #   <p>Associate state templates with the vehicle. You can monitor the last known state of the vehicle in near real time.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    class CreateVehicleInput < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :association_behavior,
      :tags,
      :state_templates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p>The unique ID of the created vehicle.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the created vehicle. </p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p> The ARN of a created or validated Amazon Web Services IoT thing. </p>
    #   @return [String]
    class CreateVehicleOutput < Struct.new(
      :vehicle_name,
      :arn,
      :thing_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the vehicle to create.</p>
    # @!attribute vehicle_name
    #   <p>The unique ID of the vehicle to create.</p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p>The ARN of the vehicle model (model manifest) to create the vehicle from.</p>
    #   @return [String]
    # @!attribute decoder_manifest_arn
    #   <p>The Amazon Resource Name (ARN) of a decoder manifest associated with the vehicle to create.
    #           </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Static information about a vehicle in a key-value pair. For example: <code>"engine
    #                   Type"</code> : <code>"v6"</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute association_behavior
    #   <p>An option to create a new Amazon Web Services IoT thing when creating a vehicle, or to validate an
    #               existing thing as a vehicle.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Metadata which can be used to manage the vehicle.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute state_templates
    #   <p>Associate state templates to track the state of the vehicle. State templates determine which signal updates the vehicle sends to the cloud.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    class CreateVehicleRequestItem < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :association_behavior,
      :tags,
      :state_templates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a created vehicle.</p>
    # @!attribute vehicle_name
    #   <p>The unique ID of the vehicle to create.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the created vehicle.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of a created or validated Amazon Web Services IoT thing.</p>
    #   @return [String]
    class CreateVehicleResponseItem < Struct.new(
      :vehicle_name,
      :arn,
      :thing_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a custom network interface as defined by the customer.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute name
    #   <p>The name of the interface.</p>
    #   @return [String]
    class CustomDecodingInterface < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about signals using a custom decoding protocol as defined by the customer.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute id
    #   <p>The ID of the signal.</p>
    #   @return [String]
    class CustomDecodingSignal < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a member of the complex data structure. The data type of the property can
    #             be either primitive or another <code>struct</code>.</p>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the custom property. For example, the fully qualified name
    #               of a custom property might be
    #                   <code>ComplexDataTypes.VehicleDataTypes.SVMCamera.FPS</code>.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type for the custom property. </p>
    #   @return [String]
    # @!attribute data_encoding
    #   <p>Indicates whether the property is binary data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the custom property.</p>
    #   @return [String]
    # @!attribute deprecation_message
    #   <p>The deprecation message for the node or the branch that was moved or deleted.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment in addition to the description.</p>
    #   @return [String]
    # @!attribute struct_fully_qualified_name
    #   <p>The fully qualified name of the struct node for the custom property if the data type
    #               of the custom property is <code>Struct</code> or <code>StructArray</code>. </p>
    #   @return [String]
    class CustomProperty < Struct.new(
      :fully_qualified_name,
      :data_type,
      :data_encoding,
      :description,
      :deprecation_message,
      :comment,
      :struct_fully_qualified_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The custom structure represents a complex or higher-order data structure.</p>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the custom structure. For example, the fully qualified
    #               name of a custom structure might be
    #                   <code>ComplexDataTypes.VehicleDataTypes.SVMCamera</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the custom structure.</p>
    #   @return [String]
    # @!attribute deprecation_message
    #   <p>The deprecation message for the node or the branch that was moved or deleted.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment in addition to the description.</p>
    #   @return [String]
    class CustomStruct < Struct.new(
      :fully_qualified_name,
      :description,
      :deprecation_message,
      :comment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The destination where the campaign sends data. You can send data to an MQTT topic,
    #             or store it in Amazon S3 or Amazon Timestream.</p>
    # @!attribute s3_config
    #   <p>The Amazon S3 bucket where the Amazon Web Services IoT FleetWise campaign sends data.</p>
    #   @return [Types::S3Config]
    # @!attribute timestream_config
    #   <p>The Amazon Timestream table where the campaign sends data.</p>
    #   @return [Types::TimestreamConfig]
    # @!attribute mqtt_topic_config
    #   <p>The MQTT topic to which the Amazon Web Services IoT FleetWise campaign routes data.</p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    #   @return [Types::MqttTopicConfig]
    class DataDestinationConfig < Struct.new(
      :s3_config,
      :timestream_config,
      :mqtt_topic_config,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3Config < DataDestinationConfig; end
      class TimestreamConfig < DataDestinationConfig; end
      class MqttTopicConfig < DataDestinationConfig; end
      class Unknown < DataDestinationConfig; end
    end

    module DataFormat
      JSON = 'JSON'
      PARQUET = 'PARQUET'
    end

    # <p>The configuration for signal data storage and upload options. You can only specify these
    #             options when the campaign's spooling mode is <code>TO_DISK</code>.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute id
    #   <p>The ID of the data partition. The data partition ID must be unique within a campaign.
    #               You can establish a data partition as the default partition for a campaign by using
    #                   <code>default</code> as the ID.</p>
    #   @return [String]
    # @!attribute storage_options
    #   <p>The storage options for a data partition.</p>
    #   @return [Types::DataPartitionStorageOptions]
    # @!attribute upload_options
    #   <p>The upload options for the data partition.</p>
    #   @return [Types::DataPartitionUploadOptions]
    class DataPartition < Struct.new(
      :id,
      :storage_options,
      :upload_options,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Size, time, and location options for the data partition.</p>
    # @!attribute maximum_size
    #   <p>The maximum storage size of the data stored in the data partition.</p>
    #            <note>
    #               <p>Newer data overwrites older data when the partition reaches the maximum
    #                   size.</p>
    #            </note>
    #   @return [Types::StorageMaximumSize]
    # @!attribute storage_location
    #   <p>The folder name for the data partition under the campaign storage folder.</p>
    #   @return [String]
    # @!attribute minimum_time_to_live
    #   <p>The amount of time that data in this partition will be kept on disk.</p>
    #            <ul>
    #               <li>
    #                  <p>After the designated amount of time passes, the data can be removed, but it's
    #                       not guaranteed to be removed.</p>
    #               </li>
    #               <li>
    #                  <p>Before the time expires, data in this partition can still be deleted if the
    #                       partition reaches its configured maximum size.</p>
    #               </li>
    #               <li>
    #                  <p>Newer data will overwrite older data when the partition reaches the maximum
    #                       size.</p>
    #               </li>
    #            </ul>
    #   @return [Types::StorageMinimumTimeToLive]
    class DataPartitionStorageOptions < Struct.new(
      :maximum_size,
      :storage_location,
      :minimum_time_to_live,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The upload options for the data partition. If upload options are specified, you must
    #             also specify storage options. See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_DataPartitionStorageOptions.html">DataPartitionStorageOptions</a>.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute expression
    #   <p>The logical expression used to recognize what data to collect. For example, <code>$variable.`Vehicle.OutsideAirTemperature` &gt;= 105.0</code>.</p>
    #   @return [String]
    # @!attribute condition_language_version
    #   <p>The version of the condition language. Defaults to the most recent condition language
    #               version.</p>
    #   @return [Integer]
    class DataPartitionUploadOptions < Struct.new(
      :expression,
      :condition_language_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a created decoder manifest. You can use the  API operation to return this information about
    #             multiple decoder manifests.</p>
    # @!attribute name
    #   <p>The name of the decoder manifest.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of a vehicle model (model manifest) associated with the decoder manifest.
    #           </p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p>The ARN of a vehicle model (model manifest) associated with the decoder
    #               manifest.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the decoder manifest.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder
    #               manifest can't be edited. If the status is marked <code>DRAFT</code>, you can edit the
    #               decoder manifest.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the decoder manifest was created in seconds since epoch (January 1, 1970 at
    #               midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the decoder manifest was last updated in seconds since epoch (January 1, 1970
    #               at midnight UTC time).</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The detailed message for the decoder manifest. When a decoder manifest is in an
    #                   <code>INVALID</code> status, the message contains detailed reason and help
    #               information.</p>
    #   @return [String]
    class DecoderManifestSummary < Struct.new(
      :name,
      :arn,
      :model_manifest_arn,
      :description,
      :status,
      :creation_time,
      :last_modification_time,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request couldn't be completed because it contains signal decoders with one or more
    #             validation errors.</p>
    # @!attribute invalid_signals
    #   <p>The request couldn't be completed because of invalid signals in the request.</p>
    #   @return [Array<Types::InvalidSignalDecoder>]
    # @!attribute invalid_network_interfaces
    #   <p>The request couldn't be completed because of invalid network interfaces in the
    #               request.</p>
    #   @return [Array<Types::InvalidNetworkInterface>]
    # @!attribute message
    #   @return [String]
    class DecoderManifestValidationException < Struct.new(
      :invalid_signals,
      :invalid_network_interfaces,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DefaultForUnmappedSignalsType
      CUSTOM_DECODING = 'CUSTOM_DECODING'
    end

    # @!attribute name
    #   <p> The name of the campaign to delete. </p>
    #   @return [String]
    class DeleteCampaignInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the deleted campaign.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the deleted campaign.</p>
    #            <note>
    #               <p>The ARN isn’t returned if a campaign doesn’t exist.</p>
    #            </note>
    #   @return [String]
    class DeleteCampaignOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest to delete. </p>
    #   @return [String]
    class DeleteDecoderManifestInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the deleted decoder manifest.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted decoder manifest.</p>
    #   @return [String]
    class DeleteDecoderManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p> The ID of the fleet to delete. </p>
    #   @return [String]
    class DeleteFleetInput < Struct.new(
      :fleet_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the deleted fleet.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted fleet.</p>
    #   @return [String]
    class DeleteFleetOutput < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the model manifest to delete. </p>
    #   @return [String]
    class DeleteModelManifestInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the deleted model manifest.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted model manifest.</p>
    #   @return [String]
    class DeleteModelManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the signal catalog to delete. </p>
    #   @return [String]
    class DeleteSignalCatalogInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the deleted signal catalog.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted signal catalog.</p>
    #   @return [String]
    class DeleteSignalCatalogOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class DeleteStateTemplateRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the state template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the state template.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class DeleteStateTemplateResponse < Struct.new(
      :name,
      :arn,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p>The ID of the vehicle to delete. </p>
    #   @return [String]
    class DeleteVehicleInput < Struct.new(
      :vehicle_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p>The ID of the deleted vehicle.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted vehicle.</p>
    #   @return [String]
    class DeleteVehicleOutput < Struct.new(
      :vehicle_name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DiagnosticsMode
      OFF = 'OFF'
      SEND_ACTIVE_DTCS = 'SEND_ACTIVE_DTCS'
    end

    # @!attribute vehicle_name
    #   <p> The unique ID of the vehicle to disassociate from the fleet.</p>
    #   @return [String]
    # @!attribute fleet_id
    #   <p> The unique ID of a fleet. </p>
    #   @return [String]
    class DisassociateVehicleFleetInput < Struct.new(
      :vehicle_name,
      :fleet_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociateVehicleFleetOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncryptionStatus
      PENDING = 'PENDING'
      SUCCESS = 'SUCCESS'
      FAILURE = 'FAILURE'
    end

    module EncryptionType
      KMS_BASED_ENCRYPTION = 'KMS_BASED_ENCRYPTION'
      FLEETWISE_DEFAULT_ENCRYPTION = 'FLEETWISE_DEFAULT_ENCRYPTION'
    end

    # <p>Information about a fleet.</p>
    #          <p>You can use the  API operation to return this
    #             information about multiple fleets.</p>
    # @!attribute id
    #   <p>The unique ID of the fleet.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the fleet.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The ARN of the signal catalog associated with the fleet.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the fleet was created, in seconds since epoch (January 1, 1970 at midnight
    #               UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the fleet was last updated in seconds since epoch (January 1, 1970 at
    #               midnight UTC time).</p>
    #   @return [Time]
    class FleetSummary < Struct.new(
      :id,
      :arn,
      :description,
      :signal_catalog_arn,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             <a href="https://www.w3.org/auto/wg/wiki/Vehicle_Signal_Specification_(VSS)/Vehicle_Data_Spec">Vehicle Signal Specification (VSS)</a> is a precise language used to describe
    #             and model signals in vehicle networks. The JSON file collects signal specificiations in
    #             a VSS format.</p>
    # @!attribute vss_json
    #   <p>Provides the VSS in JSON format.</p>
    #   @return [String]
    class FormattedVss < Struct.new(
      :vss_json,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class VssJson < FormattedVss; end
      class Unknown < FormattedVss; end
    end

    # @!attribute name
    #   <p> The name of the campaign to retrieve information about. </p>
    #   @return [String]
    class GetCampaignInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the campaign.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the campaign. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the campaign.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p> The ARN of a signal catalog. </p>
    #   @return [String]
    # @!attribute target_arn
    #   <p> The ARN of the vehicle or the fleet targeted by the campaign. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of the campaign. The status can be one of: <code>CREATING</code>,
    #                   <code>WAITING_FOR_APPROVAL</code>, <code>RUNNING</code>, and <code>SUSPENDED</code>.
    #           </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The time, in milliseconds, to deliver a campaign after it was approved.</p>
    #   @return [Time]
    # @!attribute expiry_time
    #   <p> The time the campaign expires, in seconds since epoch (January 1, 1970 at midnight
    #               UTC time). Vehicle data won't be collected after the campaign expires.</p>
    #   @return [Time]
    # @!attribute post_trigger_collection_duration
    #   <p> How long (in seconds) to collect raw data after a triggering event initiates the
    #               collection. </p>
    #   @return [Integer]
    # @!attribute diagnostics_mode
    #   <p> Option for a vehicle to send diagnostic trouble codes to Amazon Web Services IoT FleetWise. </p>
    #   @return [String]
    # @!attribute spooling_mode
    #   <p> Whether to store collected data after a vehicle lost a connection with the cloud.
    #               After a connection is re-established, the data is automatically forwarded to Amazon Web Services IoT FleetWise.
    #           </p>
    #   @return [String]
    # @!attribute compression
    #   <p> Whether to compress signals before transmitting data to Amazon Web Services IoT FleetWise. If
    #                   <code>OFF</code> is specified, the signals aren't compressed. If it's not specified,
    #                   <code>SNAPPY</code> is used. </p>
    #   @return [String]
    # @!attribute priority
    #   <p> A number indicating the priority of one campaign over another campaign for a certain
    #               vehicle or fleet. A campaign with the lowest value is deployed to vehicles before any
    #               other campaigns.</p>
    #   @return [Integer]
    # @!attribute signals_to_collect
    #   <p> Information about a list of signals to collect data on. </p>
    #   @return [Array<Types::SignalInformation>]
    # @!attribute collection_scheme
    #   <p> Information about the data collection scheme associated with the campaign. </p>
    #   @return [Types::CollectionScheme]
    # @!attribute data_extra_dimensions
    #   <p> A list of vehicle attributes associated with the campaign. </p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p> The time the campaign was created in seconds since epoch (January 1, 1970 at midnight
    #               UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the campaign was modified.</p>
    #   @return [Time]
    # @!attribute data_destination_configs
    #   <p>The destination where the campaign sends data. You can send data to an MQTT topic,
    #               or store it in Amazon S3 or Amazon Timestream.</p>
    #            <p>MQTT is the publish/subscribe messaging protocol used by Amazon Web Services IoT to communicate with
    #               your devices.</p>
    #            <p>Amazon S3 optimizes the cost of data storage and provides additional mechanisms to use vehicle data, 
    #               such as data lakes, centralized data storage, data processing pipelines, and analytics. </p>
    #            <p>You can use Amazon Timestream to access and analyze time series data, and Timestream to query
    #               vehicle data so that you can identify trends and patterns.</p>
    #   @return [Array<Types::DataDestinationConfig>]
    # @!attribute data_partitions
    #   <p>The data partitions associated with the signals collected from the vehicle.</p>
    #   @return [Array<Types::DataPartition>]
    # @!attribute signals_to_fetch
    #   <p>Information about a list of signals to fetch data from.</p>
    #   @return [Array<Types::SignalFetchInformation>]
    class GetCampaignOutput < Struct.new(
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
      :data_destination_configs,
      :data_partitions,
      :signals_to_fetch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest to retrieve information about. </p>
    #   @return [String]
    class GetDecoderManifestInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the decoder manifest. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the decoder manifest.</p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p> The ARN of a vehicle model (model manifest) associated with the decoder
    #               manifest.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder
    #               manifest can't be edited. If the status is marked <code>DRAFT</code>, you can edit the
    #               decoder manifest.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time the decoder manifest was created in seconds since epoch (January 1, 1970 at midnight UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p> The time the decoder manifest was last updated in seconds since epoch (January 1, 1970 at midnight UTC time).  </p>
    #   @return [Time]
    # @!attribute message
    #   <p>The detailed message for the decoder manifest. When a decoder manifest is in an
    #                   <code>INVALID</code> status, the message contains detailed reason and help
    #               information.</p>
    #   @return [String]
    class GetDecoderManifestOutput < Struct.new(
      :name,
      :arn,
      :description,
      :model_manifest_arn,
      :status,
      :creation_time,
      :last_modification_time,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetEncryptionConfigurationRequest < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kms_key_id
    #   <p>The ID of the KMS key that is used for encryption.</p>
    #   @return [String]
    # @!attribute encryption_status
    #   <p>The encryption status.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The type of encryption. Set to <code>KMS_BASED_ENCRYPTION</code> to use a KMS key
    #               that you own and manage. Set to <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an
    #               Amazon Web Services managed key that is owned by the Amazon Web Services IoT FleetWise service account.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message that describes why encryption settings couldn't be configured, if
    #               applicable.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time when encryption was configured in seconds since epoch (January 1, 1970 at
    #               midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time when encryption was last updated in seconds since epoch (January 1, 1970 at
    #               midnight UTC time).</p>
    #   @return [Time]
    class GetEncryptionConfigurationResponse < Struct.new(
      :kms_key_id,
      :encryption_status,
      :encryption_type,
      :error_message,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p> The ID of the fleet to retrieve information about. </p>
    #   @return [String]
    class GetFleetInput < Struct.new(
      :fleet_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the fleet.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the fleet. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the fleet. </p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p> The ARN of a signal catalog associated with the fleet. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p> The time the fleet was created in seconds since epoch (January 1, 1970 at midnight
    #               UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p> The time the fleet was last updated, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time). </p>
    #   @return [Time]
    class GetFleetOutput < Struct.new(
      :id,
      :arn,
      :description,
      :signal_catalog_arn,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetLoggingOptionsInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cloud_watch_log_delivery
    #   <p>Returns information about log delivery to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogDeliveryOptions]
    class GetLoggingOptionsOutput < Struct.new(
      :cloud_watch_log_delivery,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the vehicle model to retrieve information about. </p>
    #   @return [String]
    class GetModelManifestInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the vehicle model. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the vehicle model. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the vehicle model. </p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p> The ARN of the signal catalog associated with the vehicle model. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle
    #               model can't be edited. You can edit the vehicle model if the status is marked
    #                   <code>DRAFT</code>.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the vehicle model was created, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the vehicle model was modified.</p>
    #   @return [Time]
    class GetModelManifestOutput < Struct.new(
      :name,
      :arn,
      :description,
      :signal_catalog_arn,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetRegisterAccountStatusInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute customer_account_id
    #   <p> The unique ID of the Amazon Web Services account, provided at account creation. </p>
    #   @return [String]
    # @!attribute account_status
    #   <p> The status of registering your account and resources. The status can be one
    #               of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REGISTRATION_SUCCESS</code> - The Amazon Web Services resource is successfully
    #                       registered.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGISTRATION_PENDING</code> - Amazon Web Services IoT FleetWise is processing the registration
    #                       request. This process takes approximately five minutes to complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGISTRATION_FAILURE</code> - Amazon Web Services IoT FleetWise can't register the AWS resource.
    #                       Try again later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute timestream_registration_response
    #   <p> Information about the registered Amazon Timestream resources or errors, if any.</p>
    #   @return [Types::TimestreamRegistrationResponse]
    # @!attribute iam_registration_response
    #   <p> Information about the registered IAM resources or errors, if any. </p>
    #   @return [Types::IamRegistrationResponse]
    # @!attribute creation_time
    #   <p> The time the account was registered, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p> The time this registration was last updated, in seconds since epoch (January 1, 1970
    #               at midnight UTC time). </p>
    #   @return [Time]
    class GetRegisterAccountStatusOutput < Struct.new(
      :customer_account_id,
      :account_status,
      :timestream_registration_response,
      :iam_registration_response,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the signal catalog to retrieve information about. </p>
    #   @return [String]
    class GetSignalCatalogInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the signal catalog. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the signal catalog. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the signal catalog. </p>
    #   @return [String]
    # @!attribute node_counts
    #   <p> The total number of network nodes specified in a signal catalog. </p>
    #   @return [Types::NodeCounts]
    # @!attribute creation_time
    #   <p> The time the signal catalog was created in seconds since epoch (January 1, 1970 at midnight UTC time).  </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The last time the signal catalog was modified.</p>
    #   @return [Time]
    class GetSignalCatalogOutput < Struct.new(
      :name,
      :arn,
      :description,
      :node_counts,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class GetStateTemplateRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the state template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the state template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the state template.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The ARN of the signal catalog associated with the state template.</p>
    #   @return [String]
    # @!attribute state_template_properties
    #   <p>A list of signals from which data is collected. The state template properties contain the fully qualified names of the signals.</p>
    #   @return [Array<String>]
    # @!attribute data_extra_dimensions
    #   <p>A list of vehicle attributes associated with the payload published on the state template's 
    #             MQTT topic. </p>
    #            <p>Default: An empty array</p>
    #   @return [Array<String>]
    # @!attribute metadata_extra_dimensions
    #   <p>A list of vehicle attributes to associate with user properties of the messages published on the
    #             state template's MQTT topic.</p>
    #            <p>Default: An empty array</p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p>The time the state template was created in seconds since epoch (January 1, 1970 at midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the state template was last updated in seconds since epoch (January 1, 1970 at midnight UTC time).</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class GetStateTemplateResponse < Struct.new(
      :name,
      :arn,
      :description,
      :signal_catalog_arn,
      :state_template_properties,
      :data_extra_dimensions,
      :metadata_extra_dimensions,
      :creation_time,
      :last_modification_time,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p> The ID of the vehicle to retrieve information about. </p>
    #   @return [String]
    class GetVehicleInput < Struct.new(
      :vehicle_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p>The ID of the vehicle.</p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the vehicle to retrieve information about. </p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p> The ARN of a vehicle model (model manifest) associated with the vehicle. </p>
    #   @return [String]
    # @!attribute decoder_manifest_arn
    #   <p> The ARN of a decoder manifest associated with the vehicle. </p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:</p>
    #            <p>
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute state_templates
    #   <p>State templates associated with the vehicle.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    # @!attribute creation_time
    #   <p> The time the vehicle was created in seconds since epoch (January 1, 1970 at midnight UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p> The time the vehicle was last updated in seconds since epoch (January 1, 1970 at midnight UTC time).  </p>
    #   @return [Time]
    class GetVehicleOutput < Struct.new(
      :vehicle_name,
      :arn,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :state_templates,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a 
    #               <code>nextToken</code> pagination token is returned in the response. To retrieve the next 
    #               set of results, reissue the search request and include the returned token. When all results 
    #               have been returned, the response does not contain a pagination token value. This parameter 
    #               is only supported for resources of type <code>CAMPAIGN</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive. This parameter is only 
    #               supported for resources of type <code>CAMPAIGN</code>.</p>
    #   @return [Integer]
    # @!attribute vehicle_name
    #   <p> The ID of the vehicle to retrieve information about. </p>
    #   @return [String]
    class GetVehicleStatusInput < Struct.new(
      :next_token,
      :max_results,
      :vehicle_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute campaigns
    #   <p> Lists information about the state of the vehicle with deployed campaigns. </p>
    #   @return [Array<Types::VehicleStatus>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class GetVehicleStatusOutput < Struct.new(
      :campaigns,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about registering an Identity and Access Management (IAM) resource so Amazon Web Services IoT FleetWise edge agent
    #             software can transfer your vehicle data to Amazon Timestream.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to register.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of registering your IAM resource. The status can be one of
    #                   <code>REGISTRATION_SUCCESS</code>, <code>REGISTRATION_PENDING</code>,
    #                   <code>REGISTRATION_FAILURE</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message associated with a registration error.</p>
    #   @return [String]
    class IamRegistrationResponse < Struct.new(
      :role_arn,
      :registration_status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The IAM resource that enables Amazon Web Services IoT FleetWise edge agent software to send data to
    #             Amazon Timestream. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM roles</a> in the
    #                 <i>Identity and Access Management User Guide</i>.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM resource that allows Amazon Web Services IoT FleetWise to send data to
    #               Amazon Timestream. For example, <code>arn:aws:iam::123456789012:role/SERVICE-ROLE-ARN</code>.
    #           </p>
    #   @return [String]
    class IamResources < Struct.new(
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest to import. </p>
    #   @return [String]
    # @!attribute network_file_definitions
    #   <p> The file to load into an Amazon Web Services account. </p>
    #   @return [Array<Types::NetworkFileDefinition>]
    class ImportDecoderManifestInput < Struct.new(
      :name,
      :network_file_definitions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the imported decoder manifest. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the decoder manifest that was imported. </p>
    #   @return [String]
    class ImportDecoderManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the signal catalog to import.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the signal catalog. </p>
    #   @return [String]
    # @!attribute vss
    #   <p>The contents of the Vehicle Signal Specification (VSS) configuration. VSS is a precise
    #               language used to describe and model signals in vehicle networks.</p>
    #   @return [Types::FormattedVss]
    # @!attribute tags
    #   <p>Metadata that can be used to manage the signal catalog.</p>
    #   @return [Array<Types::Tag>]
    class ImportSignalCatalogInput < Struct.new(
      :name,
      :description,
      :vss,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the imported signal catalog. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the imported signal catalog.</p>
    #   @return [String]
    class ImportSignalCatalogOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request couldn't be completed because the server temporarily failed.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the command.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>A reason a vehicle network interface isn't valid.</p>
    # @!attribute interface_id
    #   <p>The ID of the interface that isn't valid.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message about why the interface isn't valid. </p>
    #   @return [String]
    class InvalidNetworkInterface < Struct.new(
      :interface_id,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified node type doesn't match the expected node type for a node. You can
    #             specify the node type as branch, sensor, actuator, or attribute.</p>
    # @!attribute invalid_nodes
    #   <p>The specified node type isn't valid.</p>
    #   @return [Array<Types::Node>]
    # @!attribute reason
    #   <p>The reason the node validation failed.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidNodeException < Struct.new(
      :invalid_nodes,
      :reason,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A reason that a signal isn't valid.</p>
    # @!attribute name
    #   <p>The name of the signal that isn't valid.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message about why the signal isn't valid.</p>
    #   @return [String]
    class InvalidSignal < Struct.new(
      :name,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A reason that a signal decoder isn't valid.</p>
    # @!attribute name
    #   <p>The name of a signal decoder that isn't valid.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A message about why the signal decoder isn't valid.</p>
    #   @return [String]
    # @!attribute hint
    #   <p>The possible cause for the invalid signal decoder.</p>
    #   @return [String]
    class InvalidSignalDecoder < Struct.new(
      :name,
      :reason,
      :hint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request couldn't be completed because it contains signals that aren't
    #             valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute invalid_signals
    #   <p>The signals which caused the exception.</p>
    #   @return [Array<Types::InvalidSignal>]
    class InvalidSignalsException < Struct.new(
      :message,
      :invalid_signals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A service quota was exceeded. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was exceeded.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that was exceeded.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>An optional parameter to filter the results by the status of each created campaign in
    #               your account. The status can be one of: <code>CREATING</code>,
    #                   <code>WAITING_FOR_APPROVAL</code>, <code>RUNNING</code>, or
    #               <code>SUSPENDED</code>.</p>
    #   @return [String]
    # @!attribute list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: campaign name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    #   @return [String]
    class ListCampaignsInput < Struct.new(
      :next_token,
      :max_results,
      :status,
      :list_response_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute campaign_summaries
    #   <p> A summary of information about each campaign. </p>
    #   @return [Array<Types::CampaignSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListCampaignsOutput < Struct.new(
      :campaign_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest to list information about. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class ListDecoderManifestNetworkInterfacesInput < Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute network_interfaces
    #   <p> A list of information about network interfaces. </p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListDecoderManifestNetworkInterfacesOutput < Struct.new(
      :network_interfaces,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest to list information about. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class ListDecoderManifestSignalsInput < Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute signal_decoders
    #   <p> Information about a list of signals to decode. </p>
    #   @return [Array<Types::SignalDecoder>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListDecoderManifestSignalsOutput < Struct.new(
      :signal_decoders,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_manifest_arn
    #   <p> The Amazon Resource Name (ARN) of a vehicle model (model manifest) associated with
    #               the decoder manifest. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: decoder manifest name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    #   @return [String]
    class ListDecoderManifestsInput < Struct.new(
      :model_manifest_arn,
      :next_token,
      :max_results,
      :list_response_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p> A list of information about each decoder manifest. </p>
    #   @return [Array<Types::DecoderManifestSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListDecoderManifestsOutput < Struct.new(
      :summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p> The ID of the vehicle to retrieve information about. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class ListFleetsForVehicleInput < Struct.new(
      :vehicle_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleets
    #   <p> A list of fleet IDs that the vehicle is associated with. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListFleetsForVehicleOutput < Struct.new(
      :fleets,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: fleet ID, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    #   @return [String]
    class ListFleetsInput < Struct.new(
      :next_token,
      :max_results,
      :list_response_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_summaries
    #   <p> A list of information for each fleet. </p>
    #   @return [Array<Types::FleetSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListFleetsOutput < Struct.new(
      :fleet_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the vehicle model to list information about. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class ListModelManifestNodesInput < Struct.new(
      :name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nodes
    #   <p> A list of information about nodes. </p>
    #   @return [Array<Types::Node>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListModelManifestNodesOutput < Struct.new(
      :nodes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute signal_catalog_arn
    #   <p> The ARN of a signal catalog. If you specify a signal catalog, only the vehicle models
    #               associated with it are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: model manifest name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    #   @return [String]
    class ListModelManifestsInput < Struct.new(
      :signal_catalog_arn,
      :next_token,
      :max_results,
      :list_response_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p> A list of information about vehicle models.</p>
    #   @return [Array<Types::ModelManifestSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListModelManifestsOutput < Struct.new(
      :summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ListResponseScope
      METADATA_ONLY = 'METADATA_ONLY'
    end

    # @!attribute name
    #   <p> The name of the signal catalog to list information about. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute signal_node_type
    #   <p>The type of node in the signal catalog.</p>
    #   @return [String]
    class ListSignalCatalogNodesInput < Struct.new(
      :name,
      :next_token,
      :max_results,
      :signal_node_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nodes
    #   <p> A list of information about nodes. </p>
    #   @return [Array<Types::Node>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListSignalCatalogNodesOutput < Struct.new(
      :nodes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class ListSignalCatalogsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p> A list of information about each signal catalog. </p>
    #   @return [Array<Types::SignalCatalogSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListSignalCatalogsOutput < Struct.new(
      :summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: state template ID, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    #   @return [String]
    class ListStateTemplatesRequest < Struct.new(
      :next_token,
      :max_results,
      :list_response_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute summaries
    #   <p>A list of information about each state template.</p>
    #   @return [Array<Types::StateTemplateSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListStateTemplatesResponse < Struct.new(
      :summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p> The ID of a fleet. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class ListVehiclesInFleetInput < Struct.new(
      :fleet_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicles
    #   <p> A list of vehicles associated with the fleet. </p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListVehiclesInFleetOutput < Struct.new(
      :vehicles,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_manifest_arn
    #   <p> The Amazon Resource Name (ARN) of a vehicle model (model manifest). You can use this optional
    #               parameter to list only the vehicles created from a certain vehicle model. </p>
    #   @return [String]
    # @!attribute attribute_names
    #   <p>The fully qualified names of the attributes. You can use this optional parameter to list the 
    #               vehicles containing all the attributes in the request. For example, <code>attributeNames</code> 
    #               could be "<code>Vehicle.Body.Engine.Type, Vehicle.Color</code>" and the corresponding 
    #               <code>attributeValues</code> could be "<code>1.3 L R2, Blue</code>" . In this case, the API 
    #               will filter vehicles with an attribute name <code>Vehicle.Body.Engine.Type</code> that contains
    #               a value of <code>1.3 L R2</code> AND an attribute name <code>Vehicle.Color</code> that contains
    #               a value of "<code>Blue</code>". A request must contain unique values for the <code>attributeNames</code> 
    #               filter and the matching number of <code>attributeValues</code> filters to return the subset 
    #               of vehicles that match the attributes filter condition.</p>
    #   @return [Array<String>]
    # @!attribute attribute_values
    #   <p>Static information about a vehicle attribute value in string format. You can use this optional 
    #               parameter in conjunction with <code>attributeNames</code> to list the vehicles containing all 
    #               the <code>attributeValues</code> corresponding to the <code>attributeNames</code> filter. For 
    #               example, <code>attributeValues</code> could be "<code>1.3 L R2, Blue</code>" and the corresponding 
    #               <code>attributeNames</code> filter could be "<code>Vehicle.Body.Engine.Type, Vehicle.Color</code>". 
    #               In this case, the API will filter vehicles with attribute name <code>Vehicle.Body.Engine.Type</code> 
    #               that contains a value of <code>1.3 L R2</code> AND an attribute name <code>Vehicle.Color</code> that
    #               contains a value of "<code>Blue</code>". A request must contain unique values for the 
    #               <code>attributeNames</code> filter and the matching number of <code>attributeValues</code> 
    #               filter to return the subset of vehicles that match the attributes filter condition.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A pagination token for the next set of results.</p>
    #            <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next set of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return, between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute list_response_scope
    #   <p>When you set the <code>listResponseScope</code> parameter to <code>METADATA_ONLY</code>, the list response includes: vehicle name, Amazon Resource Name (ARN), creation time, and last modification time.</p>
    #   @return [String]
    class ListVehiclesInput < Struct.new(
      :model_manifest_arn,
      :attribute_names,
      :attribute_values,
      :next_token,
      :max_results,
      :list_response_scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_summaries
    #   <p> A list of vehicles and information about them. </p>
    #   @return [Array<Types::VehicleSummary>]
    # @!attribute next_token
    #   <p> The token to retrieve the next set of results, or <code>null</code> if there are no more results. </p>
    #   @return [String]
    class ListVehiclesOutput < Struct.new(
      :vehicle_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LogType
      OFF = 'OFF'
      ERROR = 'ERROR'
    end

    module ManifestStatus
      ACTIVE = 'ACTIVE'
      DRAFT = 'DRAFT'
      INVALID = 'INVALID'
      VALIDATING = 'VALIDATING'
    end

    # <p>The decoding information for a specific message which support higher order data types.
    #         </p>
    # @!attribute topic_name
    #   <p>The topic name for the message signal. It corresponds to topics in ROS 2. </p>
    #   @return [String]
    # @!attribute structured_message
    #   <p>The structured message for the message signal. It can be defined with either a
    #                   <code>primitiveMessageDefinition</code>,
    #                   <code>structuredMessageListDefinition</code>, or
    #                   <code>structuredMessageDefinition</code> recursively.</p>
    #   @return [Types::StructuredMessage]
    class MessageSignal < Struct.new(
      :topic_name,
      :structured_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a vehicle model (model manifest). You can use the  API operation to return this information about
    #             multiple vehicle models.</p>
    # @!attribute name
    #   <p>The name of the vehicle model.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the vehicle model.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The ARN of the signal catalog associated with the vehicle model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the vehicle model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle
    #               model can't be edited. If the status is <code>DRAFT</code>, you can edit the vehicle
    #               model.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the vehicle model was created, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the vehicle model was last updated, in seconds since epoch (January 1, 1970
    #               at midnight UTC time).</p>
    #   @return [Time]
    class ModelManifestSummary < Struct.new(
      :name,
      :arn,
      :signal_catalog_arn,
      :description,
      :status,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The MQTT topic to which the Amazon Web Services IoT FleetWise campaign routes data. For more information, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/protocols.html">Device communication 
    #           protocols</a> in the <i>Amazon Web Services IoT Core Developer Guide</i>.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute mqtt_topic_arn
    #   <p>The ARN of the MQTT topic.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the role that grants Amazon Web Services IoT FleetWise permission to access and act on messages sent to 
    #             the MQTT topic.</p>
    #   @return [String]
    class MqttTopicConfig < Struct.new(
      :mqtt_topic_arn,
      :execution_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifications for defining a vehicle network.</p>
    # @!attribute can_dbc
    #   <p>Information, including CAN DBC files, about the configurations used to create a
    #               decoder manifest.</p>
    #   @return [Types::CanDbcDefinition]
    class NetworkFileDefinition < Struct.new(
      :can_dbc,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class CanDbc < NetworkFileDefinition; end
      class Unknown < NetworkFileDefinition; end
    end

    # <p>Represents a node and its specifications in an in-vehicle communication network. All
    #             signal decoders must be associated with a network node. </p>
    #          <p> To return this information about all the network interfaces specified in a decoder
    #             manifest, use the  API
    #             operation.</p>
    # @!attribute interface_id
    #   <p>The ID of the network interface.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The network protocol for the vehicle. For example, <code>CAN_SIGNAL</code> specifies a
    #               protocol that defines how data is communicated between electronic control units (ECUs).
    #                   <code>OBD_SIGNAL</code> specifies a protocol that defines how self-diagnostic data
    #               is communicated between ECUs.</p>
    #   @return [String]
    # @!attribute can_interface
    #   <p>Information about a network interface specified by the Controller Area Network (CAN)
    #               protocol.</p>
    #   @return [Types::CanInterface]
    # @!attribute obd_interface
    #   <p>Information about a network interface specified by the on-board diagnostic (OBD) II
    #               protocol.</p>
    #   @return [Types::ObdInterface]
    # @!attribute vehicle_middleware
    #   <p>The vehicle middleware defined as a type of network interface. Examples of vehicle
    #               middleware include <code>ROS2</code> and <code>SOME/IP</code>.</p>
    #   @return [Types::VehicleMiddleware]
    # @!attribute custom_decoding_interface
    #   <p>Information about a <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CustomDecodingInterface.html">custom network 
    #             interface</a>.</p>
    #   @return [Types::CustomDecodingInterface]
    class NetworkInterface < Struct.new(
      :interface_id,
      :type,
      :can_interface,
      :obd_interface,
      :vehicle_middleware,
      :custom_decoding_interface,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NetworkInterfaceFailureReason
      DUPLICATE_INTERFACE = 'DUPLICATE_NETWORK_INTERFACE'
      CONFLICTING_NETWORK_INTERFACE = 'CONFLICTING_NETWORK_INTERFACE'
      NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS = 'NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS'
      CAN_NETWORK_INTERFACE_INFO_IS_NULL = 'CAN_NETWORK_INTERFACE_INFO_IS_NULL'
      OBD_NETWORK_INTERFACE_INFO_IS_NULL = 'OBD_NETWORK_INTERFACE_INFO_IS_NULL'
      NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS = 'NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS'
      VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL = 'VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL'
      CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL = 'CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL'
    end

    module NetworkInterfaceType
      CAN_INTERFACE = 'CAN_INTERFACE'
      OBD_INTERFACE = 'OBD_INTERFACE'
      VEHICLE_MIDDLEWARE = 'VEHICLE_MIDDLEWARE'
      CUSTOM_DECODING_INTERFACE = 'CUSTOM_DECODING_INTERFACE'
    end

    # <p>A general abstraction of a signal. A node can be specified as an actuator, attribute,
    #             branch, or sensor.</p>
    # @!attribute branch
    #   <p>Information about a node specified as a branch.</p>
    #            <note>
    #               <p>A group of signals that are defined in a hierarchical structure.</p>
    #            </note>
    #   @return [Types::Branch]
    # @!attribute sensor
    #   <p>An input component that reports the environmental condition of a vehicle.</p>
    #            <note>
    #               <p>You can collect data about fluid levels, temperatures, vibrations, or battery
    #                   voltage from sensors.</p>
    #            </note>
    #   @return [Types::Sensor]
    # @!attribute actuator
    #   <p>Information about a node specified as an actuator.</p>
    #            <note>
    #               <p>An actuator is a digital representation of a vehicle device.</p>
    #            </note>
    #   @return [Types::Actuator]
    # @!attribute attribute
    #   <p>Information about a node specified as an attribute.</p>
    #            <note>
    #               <p>An attribute represents static information about a vehicle.</p>
    #            </note>
    #   @return [Types::Attribute]
    # @!attribute struct
    #   <p>Represents a complex or higher-order data structure.</p>
    #   @return [Types::CustomStruct]
    # @!attribute property
    #   <p>Represents a member of the complex data structure. The <code>datatype</code> of the
    #               property can be either primitive or another <code>struct</code>.</p>
    #   @return [Types::CustomProperty]
    class Node < Struct.new(
      :branch,
      :sensor,
      :actuator,
      :attribute,
      :struct,
      :property,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Branch < Node; end
      class Sensor < Node; end
      class Actuator < Node; end
      class Attribute < Node; end
      class Struct < Node; end
      class Property < Node; end
      class Unknown < Node; end
    end

    # <p>Information about the number of nodes and node types in a vehicle network.</p>
    # @!attribute total_nodes
    #   <p>The total number of nodes in a vehicle network.</p>
    #   @return [Integer]
    # @!attribute total_branches
    #   <p>The total number of nodes in a vehicle network that represent branches.</p>
    #   @return [Integer]
    # @!attribute total_sensors
    #   <p>The total number of nodes in a vehicle network that represent sensors.</p>
    #   @return [Integer]
    # @!attribute total_attributes
    #   <p>The total number of nodes in a vehicle network that represent attributes.</p>
    #   @return [Integer]
    # @!attribute total_actuators
    #   <p>The total number of nodes in a vehicle network that represent actuators.</p>
    #   @return [Integer]
    # @!attribute total_structs
    #   <p>The total structure for the node.</p>
    #   @return [Integer]
    # @!attribute total_properties
    #   <p>The total properties for the node.</p>
    #   @return [Integer]
    class NodeCounts < Struct.new(
      :total_nodes,
      :total_branches,
      :total_sensors,
      :total_attributes,
      :total_actuators,
      :total_structs,
      :total_properties,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_nodes] = 0 unless options.key?(:total_nodes)
        options[:total_branches] = 0 unless options.key?(:total_branches)
        options[:total_sensors] = 0 unless options.key?(:total_sensors)
        options[:total_attributes] = 0 unless options.key?(:total_attributes)
        options[:total_actuators] = 0 unless options.key?(:total_actuators)
        options[:total_structs] = 0 unless options.key?(:total_structs)
        options[:total_properties] = 0 unless options.key?(:total_properties)
        super
      end
    end

    module NodeDataEncoding
      BINARY = 'BINARY'
      TYPED = 'TYPED'
    end

    module NodeDataType
      INT8 = 'INT8'
      UINT8 = 'UINT8'
      INT16 = 'INT16'
      UINT16 = 'UINT16'
      INT32 = 'INT32'
      UINT32 = 'UINT32'
      INT64 = 'INT64'
      UINT64 = 'UINT64'
      BOOLEAN = 'BOOLEAN'
      FLOAT = 'FLOAT'
      DOUBLE = 'DOUBLE'
      STRING = 'STRING'
      UNIX_TIMESTAMP = 'UNIX_TIMESTAMP'
      INT8_ARRAY = 'INT8_ARRAY'
      UINT8_ARRAY = 'UINT8_ARRAY'
      INT16_ARRAY = 'INT16_ARRAY'
      UINT16_ARRAY = 'UINT16_ARRAY'
      INT32_ARRAY = 'INT32_ARRAY'
      UINT32_ARRAY = 'UINT32_ARRAY'
      INT64_ARRAY = 'INT64_ARRAY'
      UINT64_ARRAY = 'UINT64_ARRAY'
      BOOLEAN_ARRAY = 'BOOLEAN_ARRAY'
      FLOAT_ARRAY = 'FLOAT_ARRAY'
      DOUBLE_ARRAY = 'DOUBLE_ARRAY'
      STRING_ARRAY = 'STRING_ARRAY'
      UNIX_TIMESTAMP_ARRAY = 'UNIX_TIMESTAMP_ARRAY'
      UNKNOWN = 'UNKNOWN'
      STRUCT = 'STRUCT'
      STRUCT_ARRAY = 'STRUCT_ARRAY'
    end

    # <p>A network interface that specifies the on-board diagnostic (OBD) II network
    #             protocol.</p>
    # @!attribute name
    #   <p>The name of the interface.</p>
    #   @return [String]
    # @!attribute request_message_id
    #   <p>The ID of the message requesting vehicle data.</p>
    #   @return [Integer]
    # @!attribute obd_standard
    #   <p>The standard OBD II PID.</p>
    #   @return [String]
    # @!attribute pid_request_interval_seconds
    #   <p>The maximum number message requests per second.</p>
    #   @return [Integer]
    # @!attribute dtc_request_interval_seconds
    #   <p>The maximum number message requests per diagnostic trouble code per second.</p>
    #   @return [Integer]
    # @!attribute use_extended_ids
    #   <p>Whether to use extended IDs in the message.</p>
    #   @return [Boolean]
    # @!attribute has_transmission_ecu
    #   <p>Whether the vehicle has a transmission control module (TCM).</p>
    #   @return [Boolean]
    class ObdInterface < Struct.new(
      :name,
      :request_message_id,
      :obd_standard,
      :pid_request_interval_seconds,
      :dtc_request_interval_seconds,
      :use_extended_ids,
      :has_transmission_ecu,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:request_message_id] = 0 unless options.key?(:request_message_id)
        options[:pid_request_interval_seconds] = 0 unless options.key?(:pid_request_interval_seconds)
        options[:dtc_request_interval_seconds] = 0 unless options.key?(:dtc_request_interval_seconds)
        options[:use_extended_ids] = false unless options.key?(:use_extended_ids)
        options[:has_transmission_ecu] = false unless options.key?(:has_transmission_ecu)
        super
      end
    end

    # <p>Information about signal messages using the on-board diagnostics (OBD) II protocol in
    #             a vehicle.</p>
    # @!attribute pid_response_length
    #   <p>The length of the requested data.</p>
    #   @return [Integer]
    # @!attribute service_mode
    #   <p>The mode of operation (diagnostic service) in a message.</p>
    #   @return [Integer]
    # @!attribute pid
    #   <p>The diagnostic code used to request data from a vehicle for this signal.</p>
    #   @return [Integer]
    # @!attribute scaling
    #   <p>A multiplier used to decode the message.</p>
    #   @return [Float]
    # @!attribute offset
    #   <p>The offset used to calculate the signal value. Combined with scaling, the calculation
    #               is <code>value = raw_value * scaling + offset</code>.</p>
    #   @return [Float]
    # @!attribute start_byte
    #   <p>Indicates the beginning of the message.</p>
    #   @return [Integer]
    # @!attribute byte_length
    #   <p>The length of a message.</p>
    #   @return [Integer]
    # @!attribute bit_right_shift
    #   <p>The number of positions to shift bits in the message.</p>
    #   @return [Integer]
    # @!attribute bit_mask_length
    #   <p>The number of bits to mask in a message.</p>
    #   @return [Integer]
    # @!attribute is_signed
    #   <p>Determines whether the message is signed (<code>true</code>) or not (<code>false</code>). If it's signed, the message can represent both positive and negative numbers. The <code>isSigned</code> parameter only applies to the <code>INTEGER</code> raw signal type, and it doesn't affect the <code>FLOATING_POINT</code> raw signal type. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute signal_value_type
    #   <p>The value type of the signal. The default value is <code>INTEGER</code>.</p>
    #   @return [String]
    class ObdSignal < Struct.new(
      :pid_response_length,
      :service_mode,
      :pid,
      :scaling,
      :offset,
      :start_byte,
      :byte_length,
      :bit_right_shift,
      :bit_mask_length,
      :is_signed,
      :signal_value_type,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:service_mode] = 0 unless options.key?(:service_mode)
        options[:pid] = 0 unless options.key?(:pid)
        options[:start_byte] = 0 unless options.key?(:start_byte)
        options[:bit_right_shift] = 0 unless options.key?(:bit_right_shift)
        options[:is_signed] =  unless options.key?(:is_signed)
        super
      end
    end

    # <p>Vehicles associated with the state template will stream telemetry data when there is a change.</p>
    class OnChangeStateTemplateUpdateStrategy < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Vehicles associated with the state template will stream telemetry data during a specified time period.</p>
    # @!attribute state_template_update_rate
    #   <p>The length of time between state template updates.</p>
    #   @return [Types::TimePeriod]
    class PeriodicStateTemplateUpdateStrategy < Struct.new(
      :state_template_update_rate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a primitive type node of the complex data structure.</p>
    # @!attribute ros2_primitive_message_definition
    #   <p>Information about a <code>PrimitiveMessage</code> using a ROS 2 compliant primitive
    #               type message of the complex data structure.</p>
    #   @return [Types::ROS2PrimitiveMessageDefinition]
    class PrimitiveMessageDefinition < Struct.new(
      :ros2_primitive_message_definition,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Ros2PrimitiveMessageDefinition < PrimitiveMessageDefinition; end
      class Unknown < PrimitiveMessageDefinition; end
    end

    # @!attribute kms_key_id
    #   <p>The ID of the KMS key that is used for encryption.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The type of encryption. Choose <code>KMS_BASED_ENCRYPTION</code> to use a KMS key or
    #                   <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an Amazon Web Services managed key.</p>
    #   @return [String]
    class PutEncryptionConfigurationRequest < Struct.new(
      :kms_key_id,
      :encryption_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kms_key_id
    #   <p>The ID of the KMS key that is used for encryption.</p>
    #   @return [String]
    # @!attribute encryption_status
    #   <p>The encryption status.</p>
    #   @return [String]
    # @!attribute encryption_type
    #   <p>The type of encryption. Set to <code>KMS_BASED_ENCRYPTION</code> to use an KMS key that 
    #               you own and manage. Set to <code>FLEETWISE_DEFAULT_ENCRYPTION</code> to use an Amazon Web Services managed 
    #               key that is owned by the Amazon Web Services IoT FleetWise service account.</p>
    #   @return [String]
    class PutEncryptionConfigurationResponse < Struct.new(
      :kms_key_id,
      :encryption_status,
      :encryption_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cloud_watch_log_delivery
    #   <p>Creates or updates the log delivery option to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogDeliveryOptions]
    class PutLoggingOptionsInput < Struct.new(
      :cloud_watch_log_delivery,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutLoggingOptionsOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a ROS 2 compliant primitive type message of the complex data
    #             structure.</p>
    # @!attribute primitive_type
    #   <p>The primitive type (integer, floating point, boolean, etc.) for the ROS 2 primitive
    #               message definition.</p>
    #   @return [String]
    # @!attribute offset
    #   <p>The offset used to calculate the signal value. Combined with scaling, the calculation
    #               is <code>value = raw_value * scaling + offset</code>.</p>
    #   @return [Float]
    # @!attribute scaling
    #   <p>A multiplier used to decode the message.</p>
    #   @return [Float]
    # @!attribute upper_bound
    #   <p>An optional attribute specifying the upper bound for <code>STRING</code> and
    #                   <code>WSTRING</code>.</p>
    #   @return [Integer]
    class ROS2PrimitiveMessageDefinition < Struct.new(
      :primitive_type,
      :offset,
      :scaling,
      :upper_bound,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ROS2PrimitiveType
      BOOL = 'BOOL'
      BYTE = 'BYTE'
      CHAR = 'CHAR'
      FLOAT32 = 'FLOAT32'
      FLOAT64 = 'FLOAT64'
      INT8 = 'INT8'
      UINT8 = 'UINT8'
      INT16 = 'INT16'
      UINT16 = 'UINT16'
      INT32 = 'INT32'
      UINT32 = 'UINT32'
      INT64 = 'INT64'
      UINT64 = 'UINT64'
      STRING = 'STRING'
      WSTRING = 'WSTRING'
    end

    # @!attribute timestream_resources
    #   <p>The registered Amazon Timestream resources that Amazon Web Services IoT FleetWise edge agent software can transfer
    #               your vehicle data to.</p>
    #   @deprecated
    #     Amazon Timestream metadata is now passed in the CreateCampaign API.
    #   @return [Types::TimestreamResources]
    # @!attribute iam_resources
    #   <p>The IAM resource that allows Amazon Web Services IoT FleetWise to send data to Amazon Timestream.</p>
    #   @deprecated
    #     iamResources is no longer used or needed as input
    #   @return [Types::IamResources]
    class RegisterAccountInput < Struct.new(
      :timestream_resources,
      :iam_resources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute register_account_status
    #   <p> The status of registering your Amazon Web Services account, IAM role, and Timestream resources.
    #           </p>
    #   @return [String]
    # @!attribute timestream_resources
    #   <p>The registered Amazon Timestream resources that Amazon Web Services IoT FleetWise edge agent software can transfer
    #               your vehicle data to.</p>
    #   @return [Types::TimestreamResources]
    # @!attribute iam_resources
    #   <p> The registered IAM resource that allows Amazon Web Services IoT FleetWise to send data to Amazon Timestream. </p>
    #   @return [Types::IamResources]
    # @!attribute creation_time
    #   <p> The time the account was registered, in seconds since epoch (January 1, 1970 at
    #               midnight UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p> The time this registration was last updated, in seconds since epoch (January 1, 1970
    #               at midnight UTC time). </p>
    #   @return [Time]
    class RegisterAccountOutput < Struct.new(
      :register_account_status,
      :timestream_resources,
      :iam_resources,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RegistrationStatus
      REGISTRATION_PENDING = 'REGISTRATION_PENDING'
      REGISTRATION_SUCCESS = 'REGISTRATION_SUCCESS'
      REGISTRATION_FAILURE = 'REGISTRATION_FAILURE'
    end

    # <p>The resource wasn't found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that wasn't found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that wasn't found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon S3 bucket where the Amazon Web Services IoT FleetWise campaign sends data. Amazon S3 is an object storage
    #             service that stores data as objects within buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html">Creating, configuring, and working with Amazon S3 buckets</a> in the
    #                 <i>Amazon Simple Storage Service User Guide</i>.</p>
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>Specify the format that files are saved in the Amazon S3 bucket. You can save files in an
    #               Apache Parquet or JSON format.</p>
    #            <ul>
    #               <li>
    #                  <p>Parquet - Store data in a columnar storage file format. Parquet is optimal for
    #                       fast data retrieval and can reduce costs. This option is selected by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>JSON - Store data in a standard text-based JSON file format.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute storage_compression_format
    #   <p>By default, stored data is compressed as a .gzip file. Compressed files have a reduced
    #               file size, which can optimize the cost of data storage.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Enter an S3 bucket prefix. The prefix is the string of characters after the
    #               bucket name and before the object name. You can use the prefix to organize data stored
    #               in Amazon S3 buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-prefixes.html">Organizing objects using
    #                   prefixes</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #            <p>By default, Amazon Web Services IoT FleetWise sets the prefix
    #                   <code>processed-data/year=YY/month=MM/date=DD/hour=HH/</code> (in UTC) to data it
    #               delivers to Amazon S3. You can enter a prefix to append it to this default prefix. For
    #               example, if you enter the prefix <code>vehicles</code>, the prefix will be
    #                   <code>vehicles/processed-data/year=YY/month=MM/date=DD/hour=HH/</code>.</p>
    #   @return [String]
    class S3Config < Struct.new(
      :bucket_arn,
      :data_format,
      :storage_compression_format,
      :prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An input component that reports the environmental condition of a vehicle.</p>
    #          <note>
    #             <p>You can collect data about fluid levels, temperatures, vibrations, or battery
    #                 voltage from sensors.</p>
    #          </note>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the sensor. For example, the fully qualified name of a
    #               sensor might be <code>Vehicle.Body.Engine.Battery</code>.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The specified data type of the sensor. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of a sensor.</p>
    #   @return [String]
    # @!attribute unit
    #   <p>The scientific unit of measurement for data collected by the sensor.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>A list of possible values a sensor can take.</p>
    #   @return [Array<String>]
    # @!attribute min
    #   <p>The specified possible minimum value of the sensor.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The specified possible maximum value of the sensor.</p>
    #   @return [Float]
    # @!attribute deprecation_message
    #   <p>The deprecation message for the node or the branch that was moved or deleted.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment in addition to the description.</p>
    #   @return [String]
    # @!attribute struct_fully_qualified_name
    #   <p>The fully qualified name of the struct node for a sensor if the data type of the
    #               actuator is <code>Struct</code> or <code>StructArray</code>. For example, the struct
    #               fully qualified name of a sensor might be <code>Vehicle.ADAS.CameraStruct</code>.</p>
    #   @return [String]
    class Sensor < Struct.new(
      :fully_qualified_name,
      :data_type,
      :description,
      :unit,
      :allowed_values,
      :min,
      :max,
      :deprecation_message,
      :comment,
      :struct_fully_qualified_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a collection of standardized signals, which can be attributes,
    #             branches, sensors, or actuators.</p>
    # @!attribute name
    #   <p>The name of the signal catalog.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the signal catalog.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the signal catalog was created in seconds since epoch (January 1, 1970 at midnight UTC time). </p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the signal catalog was last updated in seconds since epoch (January 1, 1970 at midnight UTC time). </p>
    #   @return [Time]
    class SignalCatalogSummary < Struct.new(
      :name,
      :arn,
      :creation_time,
      :last_modification_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a signal decoder.</p>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of a signal decoder as defined in a vehicle model.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The network protocol for the vehicle. For example, <code>CAN_SIGNAL</code> specifies a
    #               protocol that defines how data is communicated between electronic control units (ECUs).
    #                   <code>OBD_SIGNAL</code> specifies a protocol that defines how self-diagnostic data
    #               is communicated between ECUs.</p>
    #   @return [String]
    # @!attribute interface_id
    #   <p>The ID of a network interface that specifies what network protocol a vehicle
    #               follows.</p>
    #   @return [String]
    # @!attribute can_signal
    #   <p>Information about signal decoder using the Controller Area Network (CAN)
    #               protocol.</p>
    #   @return [Types::CanSignal]
    # @!attribute obd_signal
    #   <p>Information about signal decoder using the on-board diagnostic (OBD) II
    #               protocol.</p>
    #   @return [Types::ObdSignal]
    # @!attribute message_signal
    #   <p>The decoding information for a specific message which supports higher order data
    #               types. </p>
    #   @return [Types::MessageSignal]
    # @!attribute custom_decoding_signal
    #   <p>Information about a <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/APIReference/API_CustomDecodingSignal.html">custom signal 
    #             decoder</a>.</p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    #   @return [Types::CustomDecodingSignal]
    class SignalDecoder < Struct.new(
      :fully_qualified_name,
      :type,
      :interface_id,
      :can_signal,
      :obd_signal,
      :message_signal,
      :custom_decoding_signal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SignalDecoderFailureReason
      DUPLICATE_SIGNAL = 'DUPLICATE_SIGNAL'
      CONFLICTING_SIGNAL = 'CONFLICTING_SIGNAL'
      SIGNAL_TO_ADD_ALREADY_EXISTS = 'SIGNAL_TO_ADD_ALREADY_EXISTS'
      SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE = 'SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE'
      NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE = 'NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE'
      SIGNAL_NOT_IN_MODEL = 'SIGNAL_NOT_IN_MODEL'
      CAN_SIGNAL_INFO_IS_NULL = 'CAN_SIGNAL_INFO_IS_NULL'
      OBD_SIGNAL_INFO_IS_NULL = 'OBD_SIGNAL_INFO_IS_NULL'
      NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL = 'NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL'
      MESSAGE_SIGNAL_INFO_IS_NULL = 'MESSAGE_SIGNAL_INFO_IS_NULL'
      SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE = 'SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE'
      STRUCT_SIZE_MISMATCH = 'STRUCT_SIZE_MISMATCH'
      NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL = 'NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL'
      SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG = 'SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG'
      EMPTY_MESSAGE_SIGNAL = 'EMPTY_MESSAGE_SIGNAL'
      CUSTOM_DECODING_SIGNAL_INFO_IS_NULL = 'CUSTOM_DECODING_SIGNAL_INFO_IS_NULL'
    end

    module SignalDecoderType
      CAN_SIGNAL = 'CAN_SIGNAL'
      OBD_SIGNAL = 'OBD_SIGNAL'
      MESSAGE_SIGNAL = 'MESSAGE_SIGNAL'
      CUSTOM_DECODING_SIGNAL = 'CUSTOM_DECODING_SIGNAL'
    end

    # <p>The configuration of the signal fetch operation.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute time_based
    #   <p>The configuration of a time-based signal fetch operation.</p>
    #   @return [Types::TimeBasedSignalFetchConfig]
    # @!attribute condition_based
    #   <p>The configuration of a condition-based signal fetch operation.</p>
    #   @return [Types::ConditionBasedSignalFetchConfig]
    class SignalFetchConfig < Struct.new(
      :time_based,
      :condition_based,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class TimeBased < SignalFetchConfig; end
      class ConditionBased < SignalFetchConfig; end
      class Unknown < SignalFetchConfig; end
    end

    # <p>Information about the signal to be fetched.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute fully_qualified_name
    #   <p>The fully qualified name of the signal to be fetched.</p>
    #   @return [String]
    # @!attribute signal_fetch_config
    #   <p>The configuration of the signal fetch operation.</p>
    #   @return [Types::SignalFetchConfig]
    # @!attribute condition_language_version
    #   <p>The version of the condition language used.</p>
    #   @return [Integer]
    # @!attribute actions
    #   <p>The actions to be performed by the signal fetch.</p>
    #   @return [Array<String>]
    class SignalFetchInformation < Struct.new(
      :fully_qualified_name,
      :signal_fetch_config,
      :condition_language_version,
      :actions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a signal.</p>
    # @!attribute name
    #   <p>The name of the signal.</p>
    #   @return [String]
    # @!attribute max_sample_count
    #   <p>The maximum number of samples to collect.</p>
    #   @return [Integer]
    # @!attribute minimum_sampling_interval_ms
    #   <p>The minimum duration of time (in milliseconds) between two triggering events to
    #               collect data.</p>
    #            <note>
    #               <p>If a signal changes often, you might want to collect data at a slower rate.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute data_partition_id
    #   <p>The ID of the data partition this signal is associated with.</p>
    #            <p>The ID must match one of the IDs provided in <code>dataPartitions</code>. This is
    #               accomplished either by specifying a particular data partition ID or by using
    #                   <code>default</code> for an established default partition. You can establish a
    #               default partition in the <code>DataPartition</code> data type.</p>
    #            <note>
    #               <p>If you upload a signal as a condition for a campaign's data partition,
    #                   the same signal must be included in <code>signalsToCollect</code>.</p>
    #            </note>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    #   @return [String]
    class SignalInformation < Struct.new(
      :name,
      :max_sample_count,
      :minimum_sampling_interval_ms,
      :data_partition_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SignalNodeType
      SENSOR = 'SENSOR'
      ACTUATOR = 'ACTUATOR'
      ATTRIBUTE = 'ATTRIBUTE'
      BRANCH = 'BRANCH'
      CUSTOM_STRUCT = 'CUSTOM_STRUCT'
      CUSTOM_PROPERTY = 'CUSTOM_PROPERTY'
    end

    module SignalValueType
      INTEGER = 'INTEGER'
      FLOATING_POINT = 'FLOATING_POINT'
    end

    module SpoolingMode
      OFF = 'OFF'
      TO_DISK = 'TO_DISK'
    end

    # <p>The state template associated with a vehicle. State templates contain state properties, which are signals that belong to a signal catalog that is synchronized between the Amazon Web Services IoT FleetWise Edge and the Amazon Web Services Cloud.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute identifier
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    # @!attribute state_template_update_strategy
    #   <p>The update strategy for the state template. Vehicles associated with the state template can stream telemetry data with either an <code>onChange</code> or <code>periodic</code> update strategy. </p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    #   @return [Types::StateTemplateUpdateStrategy]
    class StateTemplateAssociation < Struct.new(
      :identifier,
      :state_template_update_strategy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a state template.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute name
    #   <p>The name of the state template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the state template.</p>
    #   @return [String]
    # @!attribute signal_catalog_arn
    #   <p>The Amazon Resource Name (ARN) of the signal catalog associated with the state template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the state template.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the state template was created, in seconds since epoch (January 1, 1970 at midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the state template was last updated, in seconds since epoch (January 1, 1970 at midnight UTC time).</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class StateTemplateSummary < Struct.new(
      :name,
      :arn,
      :signal_catalog_arn,
      :description,
      :creation_time,
      :last_modification_time,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The update strategy for the state template. Vehicles associated with the state template can stream telemetry data with either an <code>onChange</code> or <code>periodic</code> update strategy. </p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute periodic
    #   <p>Vehicles associated with the state template will stream telemetry data during a specified time period.</p>
    #   @return [Types::PeriodicStateTemplateUpdateStrategy]
    # @!attribute on_change
    #   <p>Vehicles associated with the state template will stream telemetry data when there is a change.</p>
    #   @return [Types::OnChangeStateTemplateUpdateStrategy]
    class StateTemplateUpdateStrategy < Struct.new(
      :periodic,
      :on_change,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Periodic < StateTemplateUpdateStrategy; end
      class OnChange < StateTemplateUpdateStrategy; end
      class Unknown < StateTemplateUpdateStrategy; end
    end

    module StorageCompressionFormat
      NONE = 'NONE'
      GZIP = 'GZIP'
    end

    # <p>The maximum storage size for the data partition.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute unit
    #   <p>The data type of the data to store.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The maximum amount of time to store data.</p>
    #   @return [Integer]
    class StorageMaximumSize < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StorageMaximumSizeUnit
      MB = 'MB'
      GB = 'GB'
      TB = 'TB'
    end

    # <p>Information about the minimum amount of time that data will be kept.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute unit
    #   <p>The time increment type.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The minimum amount of time to store the data.</p>
    #   @return [Integer]
    class StorageMinimumTimeToLive < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StorageMinimumTimeToLiveUnit
      HOURS = 'HOURS'
      DAYS = 'DAYS'
      WEEKS = 'WEEKS'
    end

    # <p>The structured message for the message signal. It can be defined with either a
    #                 <code>primitiveMessageDefinition</code>,
    #                 <code>structuredMessageListDefinition</code>, or
    #                 <code>structuredMessageDefinition</code> recursively.</p>
    # @!attribute primitive_message_definition
    #   <p>Represents a primitive type node of the complex data structure.</p>
    #   @return [Types::PrimitiveMessageDefinition]
    # @!attribute structured_message_list_definition
    #   <p>Represents a list type node of the complex data structure.</p>
    #   @return [Types::StructuredMessageListDefinition]
    # @!attribute structured_message_definition
    #   <p>Represents a struct type node of the complex data structure.</p>
    #   @return [Array<Types::StructuredMessageFieldNameAndDataTypePair>]
    class StructuredMessage < Struct.new(
      :primitive_message_definition,
      :structured_message_list_definition,
      :structured_message_definition,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class PrimitiveMessageDefinition < StructuredMessage; end
      class StructuredMessageListDefinition < StructuredMessage; end
      class StructuredMessageDefinition < StructuredMessage; end
      class Unknown < StructuredMessage; end
    end

    # <p>Represents a <code>StructureMessageName</code> to <code>DataType</code> map
    #             element.</p>
    # @!attribute field_name
    #   <p>The field name of the structured message. It determines how a data value is referenced
    #               in the target language. </p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type. </p>
    #   @return [Types::StructuredMessage]
    class StructuredMessageFieldNameAndDataTypePair < Struct.new(
      :field_name,
      :data_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a list type node of the complex data structure.</p>
    # @!attribute name
    #   <p>The name of the structured message list definition. </p>
    #   @return [String]
    # @!attribute member_type
    #   <p>The member type of the structured message list definition.</p>
    #   @return [Types::StructuredMessage]
    # @!attribute list_type
    #   <p>The type of list of the structured message list definition.</p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The capacity of the structured message list definition when the list type is
    #                   <code>FIXED_CAPACITY</code> or <code>DYNAMIC_BOUNDED_CAPACITY</code>.</p>
    #   @return [Integer]
    class StructuredMessageListDefinition < Struct.new(
      :name,
      :member_type,
      :list_type,
      :capacity,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:capacity] = 0 unless options.key?(:capacity)
        super
      end
    end

    module StructuredMessageListType
      FIXED_CAPACITY = 'FIXED_CAPACITY'
      DYNAMIC_UNBOUNDED_CAPACITY = 'DYNAMIC_UNBOUNDED_CAPACITY'
      DYNAMIC_BOUNDED_CAPACITY = 'DYNAMIC_BOUNDED_CAPACITY'
    end

    # <p>A set of key/value pairs that are used to manage the resource.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The new or modified tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request couldn't be completed due to throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota identifier of the applied throttling rules for this request.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service that couldn't be completed due to throttling.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the command.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>Information about a collection scheme that uses a time period to decide how often to
    #             collect data.</p>
    # @!attribute period_ms
    #   <p>The time period (in milliseconds) to decide how often to collect data. For example, if
    #               the time period is <code>60000</code>, the Edge Agent software collects data once every
    #               minute.</p>
    #   @return [Integer]
    class TimeBasedCollectionScheme < Struct.new(
      :period_ms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Used to configure a frequency-based vehicle signal fetch.</p>
    # @!attribute execution_frequency_ms
    #   <p>The frequency with which the signal fetch will be executed.</p>
    #   @return [Integer]
    class TimeBasedSignalFetchConfig < Struct.new(
      :execution_frequency_ms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The length of time between state template updates.</p>
    # @!attribute unit
    #   <p>A unit of time.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A number of time units.</p>
    #   @return [Integer]
    class TimePeriod < Struct.new(
      :unit,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TimeUnit
      MILLISECOND = 'MILLISECOND'
      SECOND = 'SECOND'
      MINUTE = 'MINUTE'
      HOUR = 'HOUR'
    end

    # <p>The Amazon Timestream table where the Amazon Web Services IoT FleetWise campaign sends data. Timestream stores and organizes
    #             data to optimize query processing time and to reduce storage costs. For more
    #             information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/data-modeling.html">Data modeling</a> in
    #             the <i>Amazon Timestream Developer Guide</i>.</p>
    # @!attribute timestream_table_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Timestream table.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution role that grants Amazon Web Services IoT FleetWise permission to
    #               deliver data to the Amazon Timestream table.</p>
    #   @return [String]
    class TimestreamConfig < Struct.new(
      :timestream_table_arn,
      :execution_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the registered Amazon Timestream resources or errors, if any.</p>
    # @!attribute timestream_database_name
    #   <p>The name of the Timestream database.</p>
    #   @return [String]
    # @!attribute timestream_table_name
    #   <p>The name of the Timestream database table.</p>
    #   @return [String]
    # @!attribute timestream_database_arn
    #   <p>The Amazon Resource Name (ARN) of the Timestream database.</p>
    #   @return [String]
    # @!attribute timestream_table_arn
    #   <p>The ARN of the Timestream database table.</p>
    #   @return [String]
    # @!attribute registration_status
    #   <p>The status of registering your Amazon Timestream resources. The status can be one of
    #                   <code>REGISTRATION_SUCCESS</code>, <code>REGISTRATION_PENDING</code>,
    #                   <code>REGISTRATION_FAILURE</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message associated with a registration error.</p>
    #   @return [String]
    class TimestreamRegistrationResponse < Struct.new(
      :timestream_database_name,
      :timestream_table_name,
      :timestream_database_arn,
      :timestream_table_arn,
      :registration_status,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The registered Amazon Timestream resources that Amazon Web Services IoT FleetWise edge agent software can transfer
    #             your vehicle data to.</p>
    # @!attribute timestream_database_name
    #   <p>The name of the registered Amazon Timestream database.</p>
    #   @return [String]
    # @!attribute timestream_table_name
    #   <p>The name of the registered Amazon Timestream database table.</p>
    #   @return [String]
    class TimestreamResources < Struct.new(
      :timestream_database_name,
      :timestream_table_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TriggerMode
      ALWAYS = 'ALWAYS'
      RISING_EDGE = 'RISING_EDGE'
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateCampaignAction
      APPROVE = 'APPROVE'
      SUSPEND = 'SUSPEND'
      RESUME = 'RESUME'
      UPDATE = 'UPDATE'
    end

    # @!attribute name
    #   <p> The name of the campaign to update. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the campaign.</p>
    #   @return [String]
    # @!attribute data_extra_dimensions
    #   <p> A list of vehicle attributes to associate with a signal. </p>
    #            <p>Default: An empty array</p>
    #   @return [Array<String>]
    # @!attribute action
    #   <p> Specifies how to update a campaign. The action can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APPROVE</code> - To approve delivering a data collection scheme to
    #                       vehicles. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPEND</code> - To suspend collecting signal data. The campaign is
    #                       deleted from vehicles and all vehicles in the suspended campaign will stop
    #                       sending data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESUME</code> - To reactivate the <code>SUSPEND</code> campaign. The
    #                       campaign is redeployed to all vehicles and the vehicles will resume sending
    #                       data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE</code> - To update a campaign. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateCampaignInput < Struct.new(
      :name,
      :description,
      :data_extra_dimensions,
      :action,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the campaign. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated campaign.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The state of a campaign. The status can be one of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Amazon Web Services IoT FleetWise is processing your request to create the
    #                       campaign. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WAITING_FOR_APPROVAL</code> - After you create a campaign, it enters this state. Use the  API operation to approve the campaign for deployment to the target vehicle or fleet.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> - The campaign is active. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPENDED</code> - The campaign is suspended. To resume the campaign, use
    #                       the  API operation. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateCampaignOutput < Struct.new(
      :arn,
      :name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the decoder manifest to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the decoder manifest to update. </p>
    #   @return [String]
    # @!attribute signal_decoders_to_add
    #   <p> A list of information about decoding additional signals to add to the decoder
    #               manifest. </p>
    #   @return [Array<Types::SignalDecoder>]
    # @!attribute signal_decoders_to_update
    #   <p> A list of updated information about decoding signals to update in the decoder
    #               manifest. </p>
    #   @return [Array<Types::SignalDecoder>]
    # @!attribute signal_decoders_to_remove
    #   <p> A list of signal decoders to remove from the decoder manifest. </p>
    #   @return [Array<String>]
    # @!attribute network_interfaces_to_add
    #   <p> A list of information about the network interfaces to add to the decoder manifest.
    #           </p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute network_interfaces_to_update
    #   <p> A list of information about the network interfaces to update in the decoder manifest.
    #           </p>
    #   @return [Array<Types::NetworkInterface>]
    # @!attribute network_interfaces_to_remove
    #   <p> A list of network interfaces to remove from the decoder manifest.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p> The state of the decoder manifest. If the status is <code>ACTIVE</code>, the decoder
    #               manifest can't be edited. If the status is <code>DRAFT</code>, you can edit the decoder
    #               manifest. </p>
    #   @return [String]
    # @!attribute default_for_unmapped_signals
    #   <p>Use default decoders for all unmapped signals in the model. You don't need to provide any detailed decoding information.</p>
    #            <important>
    #               <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #            </important>
    #   @return [String]
    class UpdateDecoderManifestInput < Struct.new(
      :name,
      :description,
      :signal_decoders_to_add,
      :signal_decoders_to_update,
      :signal_decoders_to_remove,
      :network_interfaces_to_add,
      :network_interfaces_to_update,
      :network_interfaces_to_remove,
      :status,
      :default_for_unmapped_signals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the updated decoder manifest. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the updated decoder manifest. </p>
    #   @return [String]
    class UpdateDecoderManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_id
    #   <p> The ID of the fleet to update. </p>
    #   @return [String]
    # @!attribute description
    #   <p> An updated description of the fleet. </p>
    #   @return [String]
    class UpdateFleetInput < Struct.new(
      :fleet_id,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the updated fleet.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated fleet.</p>
    #   @return [String]
    class UpdateFleetOutput < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module UpdateMode
      OVERWRITE = 'Overwrite'
      MERGE = 'Merge'
    end

    # @!attribute name
    #   <p> The name of the vehicle model to update. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the vehicle model. </p>
    #   @return [String]
    # @!attribute nodes_to_add
    #   <p> A list of <code>fullyQualifiedName</code> of nodes, which are a general abstraction
    #               of signals, to add to the vehicle model. </p>
    #   @return [Array<String>]
    # @!attribute nodes_to_remove
    #   <p> A list of <code>fullyQualifiedName</code> of nodes, which are a general abstraction
    #               of signals, to remove from the vehicle model. </p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p> The state of the vehicle model. If the status is <code>ACTIVE</code>, the vehicle
    #               model can't be edited. If the status is <code>DRAFT</code>, you can edit the vehicle
    #               model. </p>
    #   @return [String]
    class UpdateModelManifestInput < Struct.new(
      :name,
      :description,
      :nodes_to_add,
      :nodes_to_remove,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the updated vehicle model. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the updated vehicle model. </p>
    #   @return [String]
    class UpdateModelManifestOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the signal catalog to update. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A brief description of the signal catalog to update.</p>
    #   @return [String]
    # @!attribute nodes_to_add
    #   <p> A list of information about nodes to add to the signal catalog. </p>
    #   @return [Array<Types::Node>]
    # @!attribute nodes_to_update
    #   <p> A list of information about nodes to update in the signal catalog. </p>
    #   @return [Array<Types::Node>]
    # @!attribute nodes_to_remove
    #   <p> A list of <code>fullyQualifiedName</code> of nodes to remove from the signal catalog.
    #           </p>
    #   @return [Array<String>]
    class UpdateSignalCatalogInput < Struct.new(
      :name,
      :description,
      :nodes_to_add,
      :nodes_to_update,
      :nodes_to_remove,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> The name of the updated signal catalog. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the updated signal catalog. </p>
    #   @return [String]
    class UpdateSignalCatalogOutput < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the state template.</p>
    #   @return [String]
    # @!attribute state_template_properties_to_add
    #   <p>Add signals from which data is collected as part of the state template.</p>
    #   @return [Array<String>]
    # @!attribute state_template_properties_to_remove
    #   <p>Remove signals from which data is collected as part of the state template.</p>
    #   @return [Array<String>]
    # @!attribute data_extra_dimensions
    #   <p>A list of vehicle attributes to associate with the payload published on the state template's 
    #             MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will enrich the protobuf encoded payload with those attributes in the <code>extraDimensions</code>
    #             field.</p>
    #            <p>Default: An empty array</p>
    #   @return [Array<String>]
    # @!attribute metadata_extra_dimensions
    #   <p>A list of vehicle attributes to associate with user properties of the messages published on the
    #             state template's MQTT topic. (See <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/process-visualize-data.html#process-last-known-state-vehicle-data">
    #             Processing last known state vehicle data using MQTT messaging</a>). For example, if you add 
    #             <code>Vehicle.Attributes.Make</code> and <code>Vehicle.Attributes.Model</code> attributes, Amazon Web Services IoT FleetWise 
    #             will include these attributes as User Properties with the MQTT message.</p>
    #   @return [Array<String>]
    class UpdateStateTemplateRequest < Struct.new(
      :identifier,
      :description,
      :state_template_properties_to_add,
      :state_template_properties_to_remove,
      :data_extra_dimensions,
      :metadata_extra_dimensions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the state template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the state template.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique ID of the state template.</p>
    #   @return [String]
    class UpdateStateTemplateResponse < Struct.new(
      :name,
      :arn,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An HTTP error resulting from updating the description for a vehicle.</p>
    # @!attribute vehicle_name
    #   <p>The ID of the vehicle with the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The relevant HTTP error code (400+).</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A message associated with the error.</p>
    #   @return [String]
    class UpdateVehicleError < Struct.new(
      :vehicle_name,
      :code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # @!attribute vehicle_name
    #   <p>The unique ID of the vehicle to update.</p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p>The ARN of a vehicle model (model manifest) associated with the vehicle.</p>
    #   @return [String]
    # @!attribute decoder_manifest_arn
    #   <p>The ARN of the decoder manifest associated with this vehicle.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:</p>
    #            <p>
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute attribute_update_mode
    #   <p>The method the specified attributes will update the existing attributes on the
    #               vehicle. Use<code>Overwite</code> to replace the vehicle attributes with the specified
    #               attributes. Or use <code>Merge</code> to combine all attributes.</p>
    #            <p>This is required if attributes are present in the input.</p>
    #   @return [String]
    # @!attribute state_templates_to_add
    #   <p>Associate state templates with the vehicle.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    # @!attribute state_templates_to_remove
    #   <p>Remove state templates from the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute state_templates_to_update
    #   <p>Change the <code>stateTemplateUpdateStrategy</code> of state templates already associated with the vehicle.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    class UpdateVehicleInput < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :attribute_update_mode,
      :state_templates_to_add,
      :state_templates_to_remove,
      :state_templates_to_update,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute vehicle_name
    #   <p>The ID of the updated vehicle.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the updated vehicle.</p>
    #   @return [String]
    class UpdateVehicleOutput < Struct.new(
      :vehicle_name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the vehicle to update.</p>
    #          <important>
    #             <p>Access to certain Amazon Web Services IoT FleetWise features is currently gated. For more information, see <a href="https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleetwise-regions.html">Amazon Web Services Region and feature availability</a> in the <i>Amazon Web Services IoT FleetWise Developer Guide</i>.</p>
    #          </important>
    # @!attribute vehicle_name
    #   <p>The unique ID of the vehicle to update.</p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p>The ARN of the vehicle model (model manifest) associated with the vehicle to
    #               update.</p>
    #   @return [String]
    # @!attribute decoder_manifest_arn
    #   <p>The ARN of the signal decoder manifest associated with the vehicle to update.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:</p>
    #            <p>
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute attribute_update_mode
    #   <p>The method the specified attributes will update the existing attributes on the
    #               vehicle. Use<code>Overwite</code> to replace the vehicle attributes with the specified
    #               attributes. Or use <code>Merge</code> to combine all attributes.</p>
    #            <p>This is required if attributes are present in the input.</p>
    #   @return [String]
    # @!attribute state_templates_to_add
    #   <p>Associate additional state templates to track the state of the vehicle. State templates determine which signal updates the vehicle sends to the cloud.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    # @!attribute state_templates_to_remove
    #   <p>Remove existing state template associations from the vehicle.</p>
    #   @return [Array<String>]
    # @!attribute state_templates_to_update
    #   <p>Change the <code>stateTemplateUpdateStrategy</code> of state templates already associated with the vehicle.</p>
    #   @return [Array<Types::StateTemplateAssociation>]
    class UpdateVehicleRequestItem < Struct.new(
      :vehicle_name,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :attributes,
      :attribute_update_mode,
      :state_templates_to_add,
      :state_templates_to_remove,
      :state_templates_to_update,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the updated vehicle.</p>
    # @!attribute vehicle_name
    #   <p>The unique ID of the updated vehicle.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated vehicle.</p>
    #   @return [String]
    class UpdateVehicleResponseItem < Struct.new(
      :vehicle_name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the input failed to satisfy the constraints specified by an Amazon Web Services
    #               service.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that fail to satisfy the constraints specified by an Amazon Web Services
    #               service.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A validation error due to mismatch between the expected data type, length, or pattern
    #             of the parameter and the input.</p>
    # @!attribute name
    #   <p>The name of the parameter field with the validation error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the validation error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      UNKNOWN_OPERATION = 'unknownOperation'
      CANNOT_PARSE = 'cannotParse'
      FIELD_VALIDATION_FAILED = 'fieldValidationFailed'
      OTHER = 'other'
    end

    module VehicleAssociationBehavior
      CREATE_IOT_THING = 'CreateIotThing'
      VALIDATE_IOT_THING_EXISTS = 'ValidateIotThingExists'
    end

    # <p>The vehicle middleware defined as a type of network interface. Examples of vehicle
    #             middleware include <code>ROS2</code> and <code>SOME/IP</code>.</p>
    # @!attribute name
    #   <p>The name of the vehicle middleware. </p>
    #   @return [String]
    # @!attribute protocol_name
    #   <p>The protocol name of the vehicle middleware. </p>
    #   @return [String]
    class VehicleMiddleware < Struct.new(
      :name,
      :protocol_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VehicleMiddlewareProtocol
      ROS_2 = 'ROS_2'
    end

    module VehicleState
      CREATED = 'CREATED'
      READY = 'READY'
      HEALTHY = 'HEALTHY'
      SUSPENDED = 'SUSPENDED'
      DELETING = 'DELETING'
      READY_FOR_CHECKIN = 'READY_FOR_CHECKIN'
    end

    # <p>Information about a campaign associated with a vehicle.</p>
    # @!attribute campaign_name
    #   <p>The name of a campaign.</p>
    #   @return [String]
    # @!attribute vehicle_name
    #   <p>The unique ID of the vehicle.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a campaign, which can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The campaign exists but is not yet approved.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The campaign is approved but has not been deployed to the vehicle. Data has not arrived at the vehicle yet.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> - The campaign is deployed to the vehicle.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPENDED</code> - The campaign is suspended and data collection is paused.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The campaign is being removed from the vehicle.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY_FOR_CHECKIN</code> - The campaign is approved and waiting for vehicle check-in before deployment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class VehicleStatus < Struct.new(
      :campaign_name,
      :vehicle_name,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a vehicle.</p>
    #          <p>To return this information about vehicles in your account, you can use the  API operation.</p>
    # @!attribute vehicle_name
    #   <p>The unique ID of the vehicle.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the vehicle.</p>
    #   @return [String]
    # @!attribute model_manifest_arn
    #   <p>The ARN of a vehicle model (model manifest) associated with the vehicle.</p>
    #   @return [String]
    # @!attribute decoder_manifest_arn
    #   <p>The ARN of a decoder manifest associated with the vehicle.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time the vehicle was created in seconds since epoch (January 1, 1970 at midnight UTC time).</p>
    #   @return [Time]
    # @!attribute last_modification_time
    #   <p>The time the vehicle was last updated in seconds since epoch (January 1, 1970 at midnight UTC time). </p>
    #   @return [Time]
    # @!attribute attributes
    #   <p>Static information about a vehicle in a key-value pair. For example:</p>
    #            <p>
    #               <code>"engineType"</code> : <code>"1.3 L R2"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class VehicleSummary < Struct.new(
      :vehicle_name,
      :arn,
      :model_manifest_arn,
      :decoder_manifest_arn,
      :creation_time,
      :last_modification_time,
      :attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
