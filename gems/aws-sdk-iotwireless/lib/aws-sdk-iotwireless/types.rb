# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTWireless
  module Types

    # ABP device object for LoRaWAN specification v1.0.x
    #
    # @!attribute [rw] dev_addr
    #   The DevAddr value.
    #   @return [String]
    #
    # @!attribute [rw] session_keys
    #   Session keys for ABP v1.0.x
    #   @return [Types::SessionKeysAbpV1_0_x]
    #
    # @!attribute [rw] f_cnt_start
    #   The FCnt init value.
    #   @return [Integer]
    #
    class AbpV1_0_x < Struct.new(
      :dev_addr,
      :session_keys,
      :f_cnt_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # ABP device object for LoRaWAN specification v1.1
    #
    # @!attribute [rw] dev_addr
    #   The DevAddr value.
    #   @return [String]
    #
    # @!attribute [rw] session_keys
    #   Session keys for ABP v1.1
    #   @return [Types::SessionKeysAbpV1_1]
    #
    # @!attribute [rw] f_cnt_start
    #   The FCnt init value.
    #   @return [Integer]
    #
    class AbpV1_1 < Struct.new(
      :dev_addr,
      :session_keys,
      :f_cnt_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # User does not have permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The accuracy of the estimated position in meters. An empty value
    # indicates that no position data is available. A value of ‘0.0’ value
    # indicates that position data is available. This data corresponds to
    # the position information that you specified instead of the position
    # computed by solver.
    #
    # @!attribute [rw] horizontal_accuracy
    #   The horizontal accuracy of the estimated position, which is the
    #   difference between the estimated location and the actual device
    #   location.
    #   @return [Float]
    #
    # @!attribute [rw] vertical_accuracy
    #   The vertical accuracy of the estimated position, which is the
    #   difference between the estimated altitude and actual device latitude
    #   in meters.
    #   @return [Float]
    #
    class Accuracy < Struct.new(
      :horizontal_accuracy,
      :vertical_accuracy)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN application configuration, which can be used to perform
    # geolocation.
    #
    # @!attribute [rw] f_port
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Application type, which can be specified to obtain real-time
    #   position information of your LoRaWAN device.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the position data destination that describes the AWS IoT
    #   rule that processes the device's position data for use by AWS IoT
    #   Core for LoRaWAN.
    #   @return [String]
    #
    class ApplicationConfig < Struct.new(
      :f_port,
      :type,
      :destination_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkAccountInfo]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class AssociateAwsAccountWithPartnerAccountRequest < Struct.new(
      :sidewalk,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkAccountInfo]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    class AssociateAwsAccountWithPartnerAccountResponse < Struct.new(
      :sidewalk,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] multicast_group_id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class AssociateMulticastGroupWithFuotaTaskRequest < Struct.new(
      :id,
      :multicast_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateMulticastGroupWithFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_id
    #   The ID of the wireless device.
    #   @return [String]
    #
    class AssociateWirelessDeviceWithFuotaTaskRequest < Struct.new(
      :id,
      :wireless_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateWirelessDeviceWithFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_id
    #   The ID of the wireless device.
    #   @return [String]
    #
    class AssociateWirelessDeviceWithMulticastGroupRequest < Struct.new(
      :id,
      :wireless_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateWirelessDeviceWithMulticastGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to associate with the wireless device.
    #   @return [String]
    #
    class AssociateWirelessDeviceWithThingRequest < Struct.new(
      :id,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateWirelessDeviceWithThingResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    # @!attribute [rw] iot_certificate_id
    #   The ID of the certificate to associate with the wireless gateway.
    #   @return [String]
    #
    class AssociateWirelessGatewayWithCertificateRequest < Struct.new(
      :id,
      :iot_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iot_certificate_id
    #   The ID of the certificate associated with the wireless gateway.
    #   @return [String]
    #
    class AssociateWirelessGatewayWithCertificateResponse < Struct.new(
      :iot_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing to associate with the wireless gateway.
    #   @return [String]
    #
    class AssociateWirelessGatewayWithThingRequest < Struct.new(
      :id,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class AssociateWirelessGatewayWithThingResponse < Aws::EmptyStructure; end

    # Beaconing parameters for configuring the wireless gateways.
    #
    # @!attribute [rw] data_rate
    #   The data rate for gateways that are sending the beacons.
    #   @return [Integer]
    #
    # @!attribute [rw] frequencies
    #   The frequency list for the gateways to send the beacons.
    #   @return [Array<Integer>]
    #
    class Beaconing < Struct.new(
      :data_rate,
      :frequencies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class CancelMulticastGroupSessionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class CancelMulticastGroupSessionResponse < Aws::EmptyStructure; end

    # CDMA local ID information, which corresponds to the local
    # identification parameters of a CDMA cell.
    #
    # @!attribute [rw] pn_offset
    #   Pseudo-noise offset, which is a characteristic of the signal from a
    #   cell on a radio tower.
    #   @return [Integer]
    #
    # @!attribute [rw] cdma_channel
    #   CDMA channel information.
    #   @return [Integer]
    #
    class CdmaLocalId < Struct.new(
      :pn_offset,
      :cdma_channel)
      SENSITIVE = []
      include Aws::Structure
    end

    # CDMA object for network measurement reports.
    #
    # @!attribute [rw] pn_offset
    #   Pseudo-noise offset, which is a characteristic of the signal from a
    #   cell on a radio tower.
    #   @return [Integer]
    #
    # @!attribute [rw] cdma_channel
    #   CDMA channel information.
    #   @return [Integer]
    #
    # @!attribute [rw] pilot_power
    #   Transmit power level of the pilot signal, measured in dBm
    #   (decibel-milliwatts).
    #   @return [Integer]
    #
    # @!attribute [rw] base_station_id
    #   CDMA base station ID (BSID).
    #   @return [Integer]
    #
    class CdmaNmrObj < Struct.new(
      :pn_offset,
      :cdma_channel,
      :pilot_power,
      :base_station_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # CDMA (Code-division multiple access) object.
    #
    # @!attribute [rw] system_id
    #   CDMA system ID (SID).
    #   @return [Integer]
    #
    # @!attribute [rw] network_id
    #   CDMA network ID (NID).
    #   @return [Integer]
    #
    # @!attribute [rw] base_station_id
    #   CDMA base station ID (BSID).
    #   @return [Integer]
    #
    # @!attribute [rw] registration_zone
    #   CDMA registration zone (RZ).
    #   @return [Integer]
    #
    # @!attribute [rw] cdma_local_id
    #   CDMA local identification (local ID) parameters.
    #   @return [Types::CdmaLocalId]
    #
    # @!attribute [rw] pilot_power
    #   Transmit power level of the pilot signal, measured in dBm
    #   (decibel-milliwatts).
    #   @return [Integer]
    #
    # @!attribute [rw] base_lat
    #   CDMA base station latitude in degrees.
    #   @return [Float]
    #
    # @!attribute [rw] base_lng
    #   CDMA base station longitude in degrees.
    #   @return [Float]
    #
    # @!attribute [rw] cdma_nmr
    #   CDMA network measurement reports.
    #   @return [Array<Types::CdmaNmrObj>]
    #
    class CdmaObj < Struct.new(
      :system_id,
      :network_id,
      :base_station_id,
      :registration_zone,
      :cdma_local_id,
      :pilot_power,
      :base_lat,
      :base_lng,
      :cdma_nmr)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cell towers that were used to perform the measurements.
    #
    # @!attribute [rw] gsm
    #   GSM object information.
    #   @return [Array<Types::GsmObj>]
    #
    # @!attribute [rw] wcdma
    #   WCDMA object information.
    #   @return [Array<Types::WcdmaObj>]
    #
    # @!attribute [rw] tdscdma
    #   TD-SCDMA object information.
    #   @return [Array<Types::TdscdmaObj>]
    #
    # @!attribute [rw] lte
    #   LTE object information.
    #   @return [Array<Types::LteObj>]
    #
    # @!attribute [rw] cdma
    #   CDMA object information.
    #   @return [Array<Types::CdmaObj>]
    #
    class CellTowers < Struct.new(
      :gsm,
      :wcdma,
      :tdscdma,
      :lte,
      :cdma)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of sidewalk certificates.
    #
    # @!attribute [rw] signing_alg
    #   The certificate chain algorithm provided by sidewalk.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the chosen sidewalk certificate.
    #   @return [String]
    #
    class CertificateList < Struct.new(
      :signing_alg,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adding, updating, or deleting the resource can cause an inconsistent
    # state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Id of the resource in the conflicting operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource in the conflicting operation.
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connection status event configuration object for enabling or disabling
    # topic.
    #
    # @!attribute [rw] lo_ra_wan
    #   Connection status event configuration object for enabling or
    #   disabling LoRaWAN related event topics.
    #   @return [Types::LoRaWANConnectionStatusEventNotificationConfigurations]
    #
    # @!attribute [rw] wireless_gateway_id_event_topic
    #   Denotes whether the wireless gateway ID connection status event
    #   topic is enabled or disabled.
    #   @return [String]
    #
    class ConnectionStatusEventConfiguration < Struct.new(
      :lo_ra_wan,
      :wireless_gateway_id_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connection status resource type event configuration object for
    # enabling or disabling topic.
    #
    # @!attribute [rw] lo_ra_wan
    #   Connection status resource type event configuration object for
    #   enabling or disabling LoRaWAN related event topics.
    #   @return [Types::LoRaWANConnectionStatusResourceTypeEventConfiguration]
    #
    class ConnectionStatusResourceTypeEventConfiguration < Struct.new(
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] expression_type
    #   The type of value in `Expression`.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule name or topic rule to send messages to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM Role that authorizes the destination.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new destination. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateDestinationRequest < Struct.new(
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      :tags,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    class CreateDestinationResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The device profile information to use to create the device profile.
    #   @return [Types::LoRaWANDeviceProfile]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new device profile. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related information for creating the Sidewalk device
    #   profile.
    #   @return [Types::SidewalkCreateDeviceProfile]
    #
    class CreateDeviceProfileRequest < Struct.new(
      :name,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the new device profile.
    #   @return [String]
    #
    class CreateDeviceProfileResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information used with a FUOTA task.
    #   @return [Types::LoRaWANFuotaTask]
    #
    # @!attribute [rw] firmware_update_image
    #   The S3 URI points to a firmware update image that is to be used with
    #   a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] firmware_update_role
    #   The firmware update role that is to be used with a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] redundancy_percent
    #   The percentage of the added fragments that are redundant. For
    #   example, if the size of the firmware image file is 100 bytes and the
    #   fragment size is 10 bytes, with `RedundancyPercent` set to 50(%),
    #   the final number of encoded fragments is (100 / 10) + (100 / 10 *
    #   50%) = 15.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_size_bytes
    #   The size of each fragment in bytes. This parameter is supported only
    #   for FUOTA tasks with multicast groups.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_interval_ms
    #   The interval for sending fragments in milliseconds, rounded to the
    #   nearest second.
    #
    #   <note markdown="1"> This interval only determines the timing for when the Cloud sends
    #   down the fragments to yor device. There can be a delay for when your
    #   device will receive these fragments. This delay depends on the
    #   device's class and the communication delay with the cloud.
    #
    #    </note>
    #   @return [Integer]
    #
    class CreateFuotaTaskRequest < Struct.new(
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :tags,
      :redundancy_percent,
      :fragment_size_bytes,
      :fragment_interval_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The arn of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    class CreateFuotaTaskResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information that is to be used with the multicast group.
    #   @return [Types::LoRaWANMulticast]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class CreateMulticastGroupRequest < Struct.new(
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The arn of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class CreateMulticastGroupResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    # @!attribute [rw] trace_content
    #   Trace content for your wireless gateway and wireless device
    #   resources.
    #   @return [Types::TraceContent]
    #
    # @!attribute [rw] wireless_devices
    #   Wireless device resources to add to the network analyzer
    #   configuration. Provide the `WirelessDeviceId` of the resource to add
    #   in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways
    #   Wireless gateway resources to add to the network analyzer
    #   configuration. Provide the `WirelessGatewayId` of the resource to
    #   add in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] multicast_groups
    #   Multicast Group resources to add to the network analyzer
    #   configruation. Provide the `MulticastGroupId` of the resource to add
    #   in the input array.
    #   @return [Array<String>]
    #
    class CreateNetworkAnalyzerConfigurationRequest < Struct.new(
      :name,
      :trace_content,
      :wireless_devices,
      :wireless_gateways,
      :description,
      :tags,
      :client_request_token,
      :multicast_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    class CreateNetworkAnalyzerConfigurationResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The service profile information to use to create the service
    #   profile.
    #   @return [Types::LoRaWANServiceProfile]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new service profile. Tags are metadata
    #   that you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateServiceProfileRequest < Struct.new(
      :name,
      :lo_ra_wan,
      :tags,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the new service profile.
    #   @return [String]
    #
    class CreateServiceProfileResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The wireless device type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination to assign to the new wireless device.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The device configuration information to use to create the wireless
    #   device.
    #   @return [Types::LoRaWANDevice]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new wireless device. Tags are metadata
    #   that you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] positioning
    #   FPort values for the GNSS, stream, and ClockSync functions of the
    #   positioning information.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk
    #   The device configuration information to use to create the Sidewalk
    #   device.
    #   @return [Types::SidewalkCreateWirelessDevice]
    #
    class CreateWirelessDeviceRequest < Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :client_request_token,
      :lo_ra_wan,
      :tags,
      :positioning,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the new wireless device.
    #   @return [String]
    #
    class CreateWirelessDeviceResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The gateway configuration information to use to create the wireless
    #   gateway.
    #   @return [Types::LoRaWANGateway]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the new wireless gateway. Tags are metadata
    #   that you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateWirelessGatewayRequest < Struct.new(
      :name,
      :description,
      :lo_ra_wan,
      :tags,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the new wireless gateway.
    #   @return [String]
    #
    class CreateWirelessGatewayResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_create_tasks
    #   Whether to automatically create tasks using this task definition for
    #   all gateways with the specified current version. If `false`, the
    #   task must me created by calling `CreateWirelessGatewayTask`.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] update
    #   Information about the gateways to update.
    #   @return [Types::UpdateWirelessGatewayTaskCreate]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class CreateWirelessGatewayTaskDefinitionRequest < Struct.new(
      :auto_create_tasks,
      :name,
      :update,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the new wireless gateway task definition.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    class CreateWirelessGatewayTaskDefinitionResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    # @!attribute [rw] wireless_gateway_task_definition_id
    #   The ID of the WirelessGatewayTaskDefinition.
    #   @return [String]
    #
    class CreateWirelessGatewayTaskRequest < Struct.new(
      :id,
      :wireless_gateway_task_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wireless_gateway_task_definition_id
    #   The ID of the WirelessGatewayTaskDefinition.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    class CreateWirelessGatewayTaskResponse < Struct.new(
      :wireless_gateway_task_definition_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The device attestation key (DAK) information.
    #
    # @!attribute [rw] certificate_id
    #   The certificate ID for the DAK.
    #   @return [String]
    #
    # @!attribute [rw] max_allowed_signature
    #   The maximum number of signatures that the DAK can sign. A value of
    #   `-1` indicates that there's no device limit.
    #   @return [Integer]
    #
    # @!attribute [rw] factory_support
    #   Whether factory support has been enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] ap_id
    #   The advertised product ID (APID) that's used for pre-production and
    #   production applications.
    #   @return [String]
    #
    # @!attribute [rw] device_type_id
    #   The device type ID that's used for prototyping applications.
    #   @return [String]
    #
    class DakCertificateMetadata < Struct.new(
      :certificate_id,
      :max_allowed_signature,
      :factory_support,
      :ap_id,
      :device_type_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource to delete.
    #   @return [String]
    #
    class DeleteDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDestinationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to delete.
    #   @return [String]
    #
    class DeleteDeviceProfileRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteDeviceProfileResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    class DeleteFuotaTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class DeleteMulticastGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteMulticastGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configuration_name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    class DeleteNetworkAnalyzerConfigurationRequest < Struct.new(
      :configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteNetworkAnalyzerConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of a given wireless device for which downlink messages will
    #   be deleted.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   If message ID is `"*"`, it cleares the entire downlink queue for a
    #   given device, specified by the wireless device ID. Otherwise, the
    #   downlink message with the specified message ID will be deleted.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_type
    #   The wireless device type, which can be either Sidewalk or LoRaWAN.
    #   @return [String]
    #
    class DeleteQueuedMessagesRequest < Struct.new(
      :id,
      :message_id,
      :wireless_device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteQueuedMessagesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to delete.
    #   @return [String]
    #
    class DeleteServiceProfileRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteServiceProfileResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The unique identifier of the import task to be deleted.
    #   @return [String]
    #
    class DeleteWirelessDeviceImportTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWirelessDeviceImportTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to delete.
    #   @return [String]
    #
    class DeleteWirelessDeviceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWirelessDeviceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to delete.
    #   @return [String]
    #
    class DeleteWirelessGatewayRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWirelessGatewayResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to delete.
    #   @return [String]
    #
    class DeleteWirelessGatewayTaskDefinitionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWirelessGatewayTaskDefinitionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to delete.
    #   @return [String]
    #
    class DeleteWirelessGatewayTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteWirelessGatewayTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The identifier of the wireless device to deregister from AWS IoT
    #   Wireless.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_type
    #   The type of wireless device to deregister from AWS IoT Wireless,
    #   which can be `LoRaWAN` or `Sidewalk`.
    #   @return [String]
    #
    class DeregisterWirelessDeviceRequest < Struct.new(
      :identifier,
      :wireless_device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeregisterWirelessDeviceResponse < Aws::EmptyStructure; end

    # Describes a destination.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] expression_type
    #   The type of value in `Expression`.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule name or topic rule to send messages to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM Role that authorizes the destination.
    #   @return [String]
    #
    class Destinations < Struct.new(
      :arn,
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a device profile.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the device profile.
    #   @return [String]
    #
    class DeviceProfile < Struct.new(
      :arn,
      :name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Device registration state event configuration object for enabling and
    # disabling relevant topics.
    #
    # @!attribute [rw] sidewalk
    #   Device registration state event configuration object for enabling or
    #   disabling Sidewalk related event topics.
    #   @return [Types::SidewalkEventNotificationConfigurations]
    #
    # @!attribute [rw] wireless_device_id_event_topic
    #   Denotes whether the wireless device ID device registration state
    #   event topic is enabled or disabled.
    #   @return [String]
    #
    class DeviceRegistrationStateEventConfiguration < Struct.new(
      :sidewalk,
      :wireless_device_id_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Device registration state resource type event configuration object for
    # enabling or disabling topic.
    #
    # @!attribute [rw] sidewalk
    #   Device registration resource type state event configuration object
    #   for enabling or disabling Sidewalk related event topics.
    #   @return [Types::SidewalkResourceTypeEventConfiguration]
    #
    class DeviceRegistrationStateResourceTypeEventConfiguration < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_account_id
    #   The partner account ID to disassociate from the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] partner_type
    #   The partner type.
    #   @return [String]
    #
    class DisassociateAwsAccountFromPartnerAccountRequest < Struct.new(
      :partner_account_id,
      :partner_type)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateAwsAccountFromPartnerAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] multicast_group_id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class DisassociateMulticastGroupFromFuotaTaskRequest < Struct.new(
      :id,
      :multicast_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateMulticastGroupFromFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_id
    #   The ID of the wireless device.
    #   @return [String]
    #
    class DisassociateWirelessDeviceFromFuotaTaskRequest < Struct.new(
      :id,
      :wireless_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateWirelessDeviceFromFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_id
    #   The ID of the wireless device.
    #   @return [String]
    #
    class DisassociateWirelessDeviceFromMulticastGroupRequest < Struct.new(
      :id,
      :wireless_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateWirelessDeviceFromMulticastGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    class DisassociateWirelessDeviceFromThingRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateWirelessDeviceFromThingResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    class DisassociateWirelessGatewayFromCertificateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateWirelessGatewayFromCertificateResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    class DisassociateWirelessGatewayFromThingRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DisassociateWirelessGatewayFromThingResponse < Aws::EmptyStructure; end

    # The message in the downlink queue.
    #
    # @!attribute [rw] message_id
    #   The message ID assigned by IoT Wireless to each downlink message,
    #   which helps identify the message.
    #   @return [String]
    #
    # @!attribute [rw] transmit_mode
    #   The transmit mode to use for sending data to the wireless device.
    #   This can be `0` for UM (unacknowledge mode) or `1` for AM
    #   (acknowledge mode).
    #   @return [Integer]
    #
    # @!attribute [rw] received_at
    #   The time at which Iot Wireless received the downlink message.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   LoRaWAN router info.
    #   @return [Types::LoRaWANSendDataToDevice]
    #
    class DownlinkQueueMessage < Struct.new(
      :message_id,
      :transmit_mode,
      :received_at,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event configuration object for a single resource.
    #
    # @!attribute [rw] identifier
    #   Resource identifier opted in for event messaging.
    #   @return [String]
    #
    # @!attribute [rw] identifier_type
    #   Identifier type of the particular resource identifier for event
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] partner_type
    #   Partner type of the resource if the identifier type is
    #   PartnerAccountId.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   Object of all event configurations and the status of the event
    #   topics.
    #   @return [Types::EventNotificationItemConfigurations]
    #
    class EventConfigurationItem < Struct.new(
      :identifier,
      :identifier_type,
      :partner_type,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object of all event configurations and the status of the event topics.
    #
    # @!attribute [rw] device_registration_state
    #   Device registration state event configuration for an event
    #   configuration item.
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Proximity event configuration for an event configuration item.
    #   @return [Types::ProximityEventConfiguration]
    #
    # @!attribute [rw] join
    #   Join event configuration for an event configuration item.
    #   @return [Types::JoinEventConfiguration]
    #
    # @!attribute [rw] connection_status
    #   Connection status event configuration for an event configuration
    #   item.
    #   @return [Types::ConnectionStatusEventConfiguration]
    #
    # @!attribute [rw] message_delivery_status
    #   Message delivery status event configuration for an event
    #   configuration item.
    #   @return [Types::MessageDeliveryStatusEventConfiguration]
    #
    class EventNotificationItemConfigurations < Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of FPort assigned for different LoRaWAN application packages to
    # use
    #
    # @!attribute [rw] fuota
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] multicast
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] clock_sync
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] positioning
    #   FPort values for the GNSS, stream, and ClockSync functions of the
    #   positioning information.
    #   @return [Types::Positioning]
    #
    # @!attribute [rw] applications
    #   Optional LoRaWAN application information, which can be used for
    #   geolocation.
    #   @return [Array<Types::ApplicationConfig>]
    #
    class FPorts < Struct.new(
      :fuota,
      :multicast,
      :clock_sync,
      :positioning,
      :applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # A FUOTA task.
    #
    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The arn of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a FUOTA task.
    #   @return [String]
    #
    class FuotaTask < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gateway list item object that specifies the frequency and list of
    # gateways for which the downlink message should be sent.
    #
    # @!attribute [rw] gateway_id
    #   The ID of the wireless gateways that you want to add to the list of
    #   gateways when sending downlink messages.
    #   @return [String]
    #
    # @!attribute [rw] downlink_frequency
    #   The frequency to use for the gateways when sending a downlink
    #   message to the wireless device.
    #   @return [Integer]
    #
    class GatewayListItem < Struct.new(
      :gateway_id,
      :downlink_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource to get.
    #   @return [String]
    #
    class GetDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule name or topic rule to send messages to.
    #   @return [String]
    #
    # @!attribute [rw] expression_type
    #   The type of value in `Expression`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM Role that authorizes the destination.
    #   @return [String]
    #
    class GetDestinationResponse < Struct.new(
      :arn,
      :name,
      :expression,
      :expression_type,
      :description,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to get.
    #   @return [String]
    #
    class GetDeviceProfileRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the device profile.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   Information about the device profile.
    #   @return [Types::LoRaWANDeviceProfile]
    #
    # @!attribute [rw] sidewalk
    #   Information about the Sidewalk parameters in the device profile.
    #   @return [Types::SidewalkGetDeviceProfile]
    #
    class GetDeviceProfileResponse < Struct.new(
      :arn,
      :name,
      :id,
      :lo_ra_wan,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetEventConfigurationByResourceTypesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] device_registration_state
    #   Resource type event configuration for the device registration state
    #   event.
    #   @return [Types::DeviceRegistrationStateResourceTypeEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Resource type event configuration for the proximity event.
    #   @return [Types::ProximityResourceTypeEventConfiguration]
    #
    # @!attribute [rw] join
    #   Resource type event configuration for the join event.
    #   @return [Types::JoinResourceTypeEventConfiguration]
    #
    # @!attribute [rw] connection_status
    #   Resource type event configuration for the connection status event.
    #   @return [Types::ConnectionStatusResourceTypeEventConfiguration]
    #
    # @!attribute [rw] message_delivery_status
    #   Resource type event configuration object for the message delivery
    #   status event.
    #   @return [Types::MessageDeliveryStatusResourceTypeEventConfiguration]
    #
    class GetEventConfigurationByResourceTypesResponse < Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    class GetFuotaTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The arn of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information returned from getting a FUOTA task.
    #   @return [Types::LoRaWANFuotaTaskGetInfo]
    #
    # @!attribute [rw] firmware_update_image
    #   The S3 URI points to a firmware update image that is to be used with
    #   a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] firmware_update_role
    #   The firmware update role that is to be used with a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Created at timestamp for the resource.
    #   @return [Time]
    #
    # @!attribute [rw] redundancy_percent
    #   The percentage of the added fragments that are redundant. For
    #   example, if the size of the firmware image file is 100 bytes and the
    #   fragment size is 10 bytes, with `RedundancyPercent` set to 50(%),
    #   the final number of encoded fragments is (100 / 10) + (100 / 10 *
    #   50%) = 15.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_size_bytes
    #   The size of each fragment in bytes. This parameter is supported only
    #   for FUOTA tasks with multicast groups.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_interval_ms
    #   The interval for sending fragments in milliseconds, rounded to the
    #   nearest second.
    #
    #   <note markdown="1"> This interval only determines the timing for when the Cloud sends
    #   down the fragments to yor device. There can be a delay for when your
    #   device will receive these fragments. This delay depends on the
    #   device's class and the communication delay with the cloud.
    #
    #    </note>
    #   @return [Integer]
    #
    class GetFuotaTaskResponse < Struct.new(
      :arn,
      :id,
      :status,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :created_at,
      :redundancy_percent,
      :fragment_size_bytes,
      :fragment_interval_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetLogLevelsByResourceTypesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] default_log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    # @!attribute [rw] wireless_gateway_log_options
    #   The list of wireless gateway log options.
    #   @return [Array<Types::WirelessGatewayLogOption>]
    #
    # @!attribute [rw] wireless_device_log_options
    #   The list of wireless device log options.
    #   @return [Array<Types::WirelessDeviceLogOption>]
    #
    class GetLogLevelsByResourceTypesResponse < Struct.new(
      :default_log_level,
      :wireless_gateway_log_options,
      :wireless_device_log_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class GetMulticastGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The arn of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information that is to be returned from getting
    #   multicast group information.
    #   @return [Types::LoRaWANMulticastGet]
    #
    # @!attribute [rw] created_at
    #   Created at timestamp for the resource.
    #   @return [Time]
    #
    class GetMulticastGroupResponse < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :status,
      :lo_ra_wan,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class GetMulticastGroupSessionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information used with the multicast session.
    #   @return [Types::LoRaWANMulticastSession]
    #
    class GetMulticastGroupSessionResponse < Struct.new(
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    class GetNetworkAnalyzerConfigurationRequest < Struct.new(
      :configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_content
    #   Trace content for your wireless gateway and wireless device
    #   resources.
    #   @return [Types::TraceContent]
    #
    # @!attribute [rw] wireless_devices
    #   List of wireless gateway resources that have been added to the
    #   network analyzer configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways
    #   List of wireless gateway resources that have been added to the
    #   network analyzer configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    # @!attribute [rw] multicast_groups
    #   List of multicast group resources that have been added to the
    #   network analyzer configuration.
    #   @return [Array<String>]
    #
    class GetNetworkAnalyzerConfigurationResponse < Struct.new(
      :trace_content,
      :wireless_devices,
      :wireless_gateways,
      :description,
      :arn,
      :name,
      :multicast_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_account_id
    #   The partner account ID to disassociate from the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] partner_type
    #   The partner type.
    #   @return [String]
    #
    class GetPartnerAccountRequest < Struct.new(
      :partner_account_id,
      :partner_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkAccountInfoWithFingerprint]
    #
    # @!attribute [rw] account_linked
    #   Whether the partner account is linked to the AWS account.
    #   @return [Boolean]
    #
    class GetPartnerAccountResponse < Struct.new(
      :sidewalk,
      :account_linked)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   Resource identifier used in a position configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource for which position configuration is
    #   retrieved.
    #   @return [String]
    #
    class GetPositionConfigurationRequest < Struct.new(
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] solvers
    #   The wrapper for the solver configuration details object.
    #   @return [Types::PositionSolverDetails]
    #
    # @!attribute [rw] destination
    #   The position data destination that describes the AWS IoT rule that
    #   processes the device's position data for use by AWS IoT Core for
    #   LoRaWAN.
    #   @return [String]
    #
    class GetPositionConfigurationResponse < Struct.new(
      :solvers,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wi_fi_access_points
    #   Retrieves an estimated device position by resolving WLAN measurement
    #   data. The position is resolved using HERE's Wi-Fi based solver.
    #   @return [Array<Types::WiFiAccessPoint>]
    #
    # @!attribute [rw] cell_towers
    #   Retrieves an estimated device position by resolving measurement data
    #   from cellular radio towers. The position is resolved using HERE's
    #   cellular-based solver.
    #   @return [Types::CellTowers]
    #
    # @!attribute [rw] ip
    #   Retrieves an estimated device position by resolving the IP address
    #   information from the device. The position is resolved using
    #   MaxMind's IP-based solver.
    #   @return [Types::Ip]
    #
    # @!attribute [rw] gnss
    #   Retrieves an estimated device position by resolving the global
    #   navigation satellite system (GNSS) scan data. The position is
    #   resolved using the GNSS solver powered by LoRa Cloud.
    #   @return [Types::Gnss]
    #
    # @!attribute [rw] timestamp
    #   Optional information that specifies the time when the position
    #   information will be resolved. It uses the Unix timestamp format. If
    #   not specified, the time at which the request was received will be
    #   used.
    #   @return [Time]
    #
    class GetPositionEstimateRequest < Struct.new(
      :wi_fi_access_points,
      :cell_towers,
      :ip,
      :gnss,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] geo_json_payload
    #   The position information of the resource, displayed as a JSON
    #   payload. The payload uses the GeoJSON format, which a format that's
    #   used to encode geographic data structures. For more information, see
    #   [GeoJSON][1].
    #
    #
    #
    #   [1]: https://geojson.org/
    #   @return [String]
    #
    class GetPositionEstimateResponse < Struct.new(
      :geo_json_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   Resource identifier used to retrieve the position information.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource for which position information is
    #   retrieved.
    #   @return [String]
    #
    class GetPositionRequest < Struct.new(
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] position
    #   The position information of the resource.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] accuracy
    #   The accuracy of the estimated position in meters. An empty value
    #   indicates that no position data is available. A value of ‘0.0’ value
    #   indicates that position data is available. This data corresponds to
    #   the position information that you specified instead of the position
    #   computed by solver.
    #   @return [Types::Accuracy]
    #
    # @!attribute [rw] solver_type
    #   The type of solver used to identify the position of the resource.
    #   @return [String]
    #
    # @!attribute [rw] solver_provider
    #   The vendor of the positioning solver.
    #   @return [String]
    #
    # @!attribute [rw] solver_version
    #   The version of the positioning solver.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp at which the device's position was determined.
    #   @return [String]
    #
    class GetPositionResponse < Struct.new(
      :position,
      :accuracy,
      :solver_type,
      :solver_provider,
      :solver_version,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Resource identifier to opt in for event messaging.
    #   @return [String]
    #
    # @!attribute [rw] identifier_type
    #   Identifier type of the particular resource identifier for event
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] partner_type
    #   Partner type of the resource if the identifier type is
    #   `PartnerAccountId`.
    #   @return [String]
    #
    class GetResourceEventConfigurationRequest < Struct.new(
      :identifier,
      :identifier_type,
      :partner_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_registration_state
    #   Event configuration for the device registration state event.
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Event configuration for the proximity event.
    #   @return [Types::ProximityEventConfiguration]
    #
    # @!attribute [rw] join
    #   Event configuration for the join event.
    #   @return [Types::JoinEventConfiguration]
    #
    # @!attribute [rw] connection_status
    #   Event configuration for the connection status event.
    #   @return [Types::ConnectionStatusEventConfiguration]
    #
    # @!attribute [rw] message_delivery_status
    #   Event configuration for the message delivery status event.
    #   @return [Types::MessageDeliveryStatusEventConfiguration]
    #
    class GetResourceEventConfigurationResponse < Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier of the resource. For a Wireless Device, it is the
    #   wireless device ID. For a wireless gateway, it is the wireless
    #   gateway ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, which can be `WirelessDevice` or
    #   `WirelessGateway`.
    #   @return [String]
    #
    class GetResourceLogLevelRequest < Struct.new(
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    class GetResourceLogLevelResponse < Struct.new(
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier of the resource for which position information is
    #   retrieved. It can be the wireless device ID or the wireless gateway
    #   ID, depending on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource for which position information is retrieved,
    #   which can be a wireless device or a wireless gateway.
    #   @return [String]
    #
    class GetResourcePositionRequest < Struct.new(
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] geo_json_payload
    #   The position information of the resource, displayed as a JSON
    #   payload. The payload uses the GeoJSON format, which a format that's
    #   used to encode geographic data structures. For more information, see
    #   [GeoJSON][1].
    #
    #
    #
    #   [1]: https://geojson.org/
    #   @return [String]
    #
    class GetResourcePositionResponse < Struct.new(
      :geo_json_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_type
    #   The service type for which to get endpoint information about. Can be
    #   `CUPS` for the Configuration and Update Server endpoint, or `LNS`
    #   for the LoRaWAN Network Server endpoint or `CLAIM` for the global
    #   endpoint.
    #   @return [String]
    #
    class GetServiceEndpointRequest < Struct.new(
      :service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_type
    #   The endpoint's service type.
    #   @return [String]
    #
    # @!attribute [rw] service_endpoint
    #   The service endpoint value.
    #   @return [String]
    #
    # @!attribute [rw] server_trust
    #   The Root CA of the server trust certificate.
    #   @return [String]
    #
    class GetServiceEndpointResponse < Struct.new(
      :service_type,
      :service_endpoint,
      :server_trust)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to get.
    #   @return [String]
    #
    class GetServiceProfileRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the service profile.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   Information about the service profile.
    #   @return [Types::LoRaWANGetServiceProfileInfo]
    #
    class GetServiceProfileResponse < Struct.new(
      :arn,
      :name,
      :id,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the import task for which information is
    #   requested.
    #   @return [String]
    #
    class GetWirelessDeviceImportTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the import task for which information is
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the import task.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination that's assigned to the wireless devices
    #   in the import task.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related information about an import task.
    #   @return [Types::SidewalkGetStartImportInfo]
    #
    # @!attribute [rw] creation_time
    #   The time at which the import task was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The import task status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the provided status information, such as a validation
    #   error that causes the import task to fail.
    #   @return [String]
    #
    # @!attribute [rw] initialized_imported_device_count
    #   The number of devices in the import task that are waiting for the
    #   control log to start processing.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_imported_device_count
    #   The number of devices in the import task that are waiting in the
    #   import task queue to be onboarded.
    #   @return [Integer]
    #
    # @!attribute [rw] onboarded_imported_device_count
    #   The number of devices in the import task that have been onboarded to
    #   the import task.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_imported_device_count
    #   The number of devices in the import task that failed to onboard to
    #   the import task.
    #   @return [Integer]
    #
    class GetWirelessDeviceImportTaskResponse < Struct.new(
      :id,
      :arn,
      :destination_name,
      :sidewalk,
      :creation_time,
      :status,
      :status_reason,
      :initialized_imported_device_count,
      :pending_imported_device_count,
      :onboarded_imported_device_count,
      :failed_imported_device_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the wireless device to get.
    #   @return [String]
    #
    # @!attribute [rw] identifier_type
    #   The type of identifier used in `identifier`.
    #   @return [String]
    #
    class GetWirelessDeviceRequest < Struct.new(
      :identifier,
      :identifier_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The wireless device type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination to which the device is assigned.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the wireless device.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing associated with the wireless device. The value
    #   is empty if a thing isn't associated with the device.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing associated with the wireless device.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   Information about the wireless device.
    #   @return [Types::LoRaWANDevice]
    #
    # @!attribute [rw] sidewalk
    #   Sidewalk device object.
    #   @return [Types::SidewalkDevice]
    #
    # @!attribute [rw] positioning
    #   FPort values for the GNSS, stream, and ClockSync functions of the
    #   positioning information.
    #   @return [String]
    #
    class GetWirelessDeviceResponse < Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :id,
      :arn,
      :thing_name,
      :thing_arn,
      :lo_ra_wan,
      :sidewalk,
      :positioning)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wireless_device_id
    #   The ID of the wireless device for which to get the data.
    #   @return [String]
    #
    class GetWirelessDeviceStatisticsRequest < Struct.new(
      :wireless_device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wireless_device_id
    #   The ID of the wireless device.
    #   @return [String]
    #
    # @!attribute [rw] last_uplink_received_at
    #   The date and time when the most recent uplink was received.
    #
    #   <note markdown="1"> This value is only valid for 3 months.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   Information about the wireless device's operations.
    #   @return [Types::LoRaWANDeviceMetadata]
    #
    # @!attribute [rw] sidewalk
    #   MetaData for Sidewalk device.
    #   @return [Types::SidewalkDeviceMetadata]
    #
    class GetWirelessDeviceStatisticsResponse < Struct.new(
      :wireless_device_id,
      :last_uplink_received_at,
      :lo_ra_wan,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to get.
    #   @return [String]
    #
    class GetWirelessGatewayCertificateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iot_certificate_id
    #   The ID of the certificate associated with the wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan_network_server_certificate_id
    #   The ID of the certificate that is associated with the wireless
    #   gateway and used for the LoRaWANNetworkServer endpoint.
    #   @return [String]
    #
    class GetWirelessGatewayCertificateResponse < Struct.new(
      :iot_certificate_id,
      :lo_ra_wan_network_server_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to get.
    #   @return [String]
    #
    class GetWirelessGatewayFirmwareInformationRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lo_ra_wan
    #   Information about the wireless gateway's firmware.
    #   @return [Types::LoRaWANGatewayCurrentVersion]
    #
    class GetWirelessGatewayFirmwareInformationResponse < Struct.new(
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The identifier of the wireless gateway to get.
    #   @return [String]
    #
    # @!attribute [rw] identifier_type
    #   The type of identifier used in `identifier`.
    #   @return [String]
    #
    class GetWirelessGatewayRequest < Struct.new(
      :identifier,
      :identifier_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   Information about the wireless gateway.
    #   @return [Types::LoRaWANGateway]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] thing_name
    #   The name of the thing associated with the wireless gateway. The
    #   value is empty if a thing isn't associated with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] thing_arn
    #   The ARN of the thing associated with the wireless gateway.
    #   @return [String]
    #
    class GetWirelessGatewayResponse < Struct.new(
      :name,
      :id,
      :description,
      :lo_ra_wan,
      :arn,
      :thing_name,
      :thing_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wireless_gateway_id
    #   The ID of the wireless gateway for which to get the data.
    #   @return [String]
    #
    class GetWirelessGatewayStatisticsRequest < Struct.new(
      :wireless_gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wireless_gateway_id
    #   The ID of the wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] last_uplink_received_at
    #   The date and time when the most recent uplink was received.
    #
    #   <note markdown="1"> This value is only valid for 3 months.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The connection status of the wireless gateway.
    #   @return [String]
    #
    class GetWirelessGatewayStatisticsResponse < Struct.new(
      :wireless_gateway_id,
      :last_uplink_received_at,
      :connection_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to get.
    #   @return [String]
    #
    class GetWirelessGatewayTaskDefinitionRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_create_tasks
    #   Whether to automatically create tasks using this task definition for
    #   all gateways with the specified current version. If `false`, the
    #   task must me created by calling `CreateWirelessGatewayTask`.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update
    #   Information about the gateways to update.
    #   @return [Types::UpdateWirelessGatewayTaskCreate]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    class GetWirelessGatewayTaskDefinitionResponse < Struct.new(
      :auto_create_tasks,
      :name,
      :update,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the resource to get.
    #   @return [String]
    #
    class GetWirelessGatewayTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] wireless_gateway_id
    #   The ID of the wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] wireless_gateway_task_definition_id
    #   The ID of the WirelessGatewayTask.
    #   @return [String]
    #
    # @!attribute [rw] last_uplink_received_at
    #   The date and time when the most recent uplink was received.
    #
    #   <note markdown="1"> This value is only valid for 3 months.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] task_created_at
    #   The date and time when the task was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    class GetWirelessGatewayTaskResponse < Struct.new(
      :wireless_gateway_id,
      :wireless_gateway_task_definition_id,
      :last_uplink_received_at,
      :task_created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Global identity information.
    #
    # @!attribute [rw] lac
    #   Location area code of the global identity.
    #   @return [Integer]
    #
    # @!attribute [rw] geran_cid
    #   GERAN (GSM EDGE Radio Access Network) cell global identifier.
    #   @return [Integer]
    #
    class GlobalIdentity < Struct.new(
      :lac,
      :geran_cid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Global navigation satellite system (GNSS) object used for positioning.
    #
    # @!attribute [rw] payload
    #   Payload that contains the GNSS scan result, or NAV message, in
    #   hexadecimal notation.
    #   @return [String]
    #
    # @!attribute [rw] capture_time
    #   Optional parameter that gives an estimate of the time when the GNSS
    #   scan information is taken, in seconds GPS time (GPST). If capture
    #   time is not specified, the local server time is used.
    #   @return [Float]
    #
    # @!attribute [rw] capture_time_accuracy
    #   Optional value that gives the capture time estimate accuracy, in
    #   seconds. If capture time accuracy is not specified, default value of
    #   300 is used.
    #   @return [Float]
    #
    # @!attribute [rw] assist_position
    #   Optional assistance position information, specified using latitude
    #   and longitude values in degrees. The coordinates are inside the
    #   WGS84 reference frame.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] assist_altitude
    #   Optional assistance altitude, which is the altitude of the device at
    #   capture time, specified in meters above the WGS84 reference
    #   ellipsoid.
    #   @return [Float]
    #
    # @!attribute [rw] use_2_d_solver
    #   Optional parameter that forces 2D solve, which modifies the
    #   positioning algorithm to a 2D solution problem. When this parameter
    #   is specified, the assistance altitude should have an accuracy of at
    #   least 10 meters.
    #   @return [Boolean]
    #
    class Gnss < Struct.new(
      :payload,
      :capture_time,
      :capture_time_accuracy,
      :assist_position,
      :assist_altitude,
      :use_2_d_solver)
      SENSITIVE = []
      include Aws::Structure
    end

    # GSM local ID information, which corresponds to the local
    # identification parameters of a GSM cell.
    #
    # @!attribute [rw] bsic
    #   GSM base station identity code (BSIC).
    #   @return [Integer]
    #
    # @!attribute [rw] bcch
    #   GSM broadcast control channel.
    #   @return [Integer]
    #
    class GsmLocalId < Struct.new(
      :bsic,
      :bcch)
      SENSITIVE = []
      include Aws::Structure
    end

    # GSM object for network measurement reports.
    #
    # @!attribute [rw] bsic
    #   GSM base station identity code (BSIC).
    #   @return [Integer]
    #
    # @!attribute [rw] bcch
    #   GSM broadcast control channel.
    #   @return [Integer]
    #
    # @!attribute [rw] rx_level
    #   Rx level, which is the received signal power, measured in dBm
    #   (decibel-milliwatts).
    #   @return [Integer]
    #
    # @!attribute [rw] global_identity
    #   Global identity information of the GSM object.
    #   @return [Types::GlobalIdentity]
    #
    class GsmNmrObj < Struct.new(
      :bsic,
      :bcch,
      :rx_level,
      :global_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # GSM object.
    #
    # @!attribute [rw] mcc
    #   Mobile Country Code.
    #   @return [Integer]
    #
    # @!attribute [rw] mnc
    #   Mobile Network Code.
    #   @return [Integer]
    #
    # @!attribute [rw] lac
    #   Location area code.
    #   @return [Integer]
    #
    # @!attribute [rw] geran_cid
    #   GERAN (GSM EDGE Radio Access Network) Cell Global Identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] gsm_local_id
    #   GSM local identification (local ID) information.
    #   @return [Types::GsmLocalId]
    #
    # @!attribute [rw] gsm_timing_advance
    #   Timing advance value, which corresponds to the length of time a
    #   signal takes to reach the base station from a mobile phone.
    #   @return [Integer]
    #
    # @!attribute [rw] rx_level
    #   Rx level, which is the received signal power, measured in dBm
    #   (decibel-milliwatts).
    #   @return [Integer]
    #
    # @!attribute [rw] gsm_nmr
    #   GSM object for network measurement reports.
    #   @return [Array<Types::GsmNmrObj>]
    #
    class GsmObj < Struct.new(
      :mcc,
      :mnc,
      :lac,
      :geran_cid,
      :gsm_local_id,
      :gsm_timing_advance,
      :rx_level,
      :gsm_nmr)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Sidewalk device that has been added to an import
    # task.
    #
    # @!attribute [rw] sidewalk_manufacturing_sn
    #   The Sidewalk manufacturing serial number (SMSN) of the Sidewalk
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] onboarding_status
    #   The onboarding status of the Sidewalk device in the import task.
    #   @return [String]
    #
    # @!attribute [rw] onboarding_status_reason
    #   The reason for the onboarding status information for the Sidewalk
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time
    #   The time at which the status information was last updated.
    #   @return [Time]
    #
    class ImportedSidewalkDevice < Struct.new(
      :sidewalk_manufacturing_sn,
      :onboarding_status,
      :onboarding_status_reason,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a wireless device that has been added to an import
    # task.
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related information about a device that has been added
    #   to an import task.
    #   @return [Types::ImportedSidewalkDevice]
    #
    class ImportedWirelessDevice < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred while processing a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # IP address used for resolving device location.
    #
    # @!attribute [rw] ip_address
    #   IP address information.
    #   @return [String]
    #
    class Ip < Struct.new(
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Join event configuration object for enabling or disabling topic.
    #
    # @!attribute [rw] lo_ra_wan
    #   Join event configuration object for enabling or disabling LoRaWAN
    #   related event topics.
    #   @return [Types::LoRaWANJoinEventNotificationConfigurations]
    #
    # @!attribute [rw] wireless_device_id_event_topic
    #   Denotes whether the wireless device ID join event topic is enabled
    #   or disabled.
    #   @return [String]
    #
    class JoinEventConfiguration < Struct.new(
      :lo_ra_wan,
      :wireless_device_id_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Join resource type event configuration object for enabling or
    # disabling topic.
    #
    # @!attribute [rw] lo_ra_wan
    #   Join resource type event configuration object for enabling or
    #   disabling LoRaWAN related event topics.
    #   @return [Types::LoRaWANJoinResourceTypeEventConfiguration]
    #
    class JoinResourceTypeEventConfiguration < Struct.new(
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    class ListDestinationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] destination_list
    #   The list of destinations.
    #   @return [Array<Types::Destinations>]
    #
    class ListDestinationsResponse < Struct.new(
      :next_token,
      :destination_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] device_profile_type
    #   A filter to list only device profiles that use this type, which can
    #   be `LoRaWAN` or `Sidewalk`.
    #   @return [String]
    #
    class ListDeviceProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :device_profile_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] device_profile_list
    #   The list of device profiles.
    #   @return [Array<Types::DeviceProfile>]
    #
    class ListDeviceProfilesResponse < Struct.new(
      :next_token,
      :device_profile_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the import task for which wireless devices are
    #   listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise `null` to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the devices in the import task.
    #   @return [String]
    #
    class ListDevicesForWirelessDeviceImportTaskRequest < Struct.new(
      :id,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or `null` if there
    #   are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the Sidewalk destination that describes the IoT rule to
    #   route messages received from devices in an import task that are
    #   onboarded to AWS IoT Wireless.
    #   @return [String]
    #
    # @!attribute [rw] imported_wireless_device_list
    #   List of wireless devices in an import task and their onboarding
    #   status.
    #   @return [Array<Types::ImportedWirelessDevice>]
    #
    class ListDevicesForWirelessDeviceImportTaskResponse < Struct.new(
      :next_token,
      :destination_name,
      :imported_wireless_device_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   Resource type to filter event configurations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    class ListEventConfigurationsRequest < Struct.new(
      :resource_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] event_configurations_list
    #   Event configurations of all events for a single resource.
    #   @return [Array<Types::EventConfigurationItem>]
    #
    class ListEventConfigurationsResponse < Struct.new(
      :next_token,
      :event_configurations_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    class ListFuotaTasksRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] fuota_task_list
    #   Lists the FUOTA tasks registered to your AWS account.
    #   @return [Array<Types::FuotaTask>]
    #
    class ListFuotaTasksResponse < Struct.new(
      :next_token,
      :fuota_task_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    class ListMulticastGroupsByFuotaTaskRequest < Struct.new(
      :id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] multicast_group_list
    #   List of multicast groups associated with a FUOTA task.
    #   @return [Array<Types::MulticastGroupByFuotaTask>]
    #
    class ListMulticastGroupsByFuotaTaskResponse < Struct.new(
      :next_token,
      :multicast_group_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    class ListMulticastGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] multicast_group_list
    #   List of multicast groups.
    #   @return [Array<Types::MulticastGroup>]
    #
    class ListMulticastGroupsResponse < Struct.new(
      :next_token,
      :multicast_group_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    class ListNetworkAnalyzerConfigurationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] network_analyzer_configuration_list
    #   The list of network analyzer configurations.
    #   @return [Array<Types::NetworkAnalyzerConfigurations>]
    #
    class ListNetworkAnalyzerConfigurationsResponse < Struct.new(
      :next_token,
      :network_analyzer_configuration_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    class ListPartnerAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Array<Types::SidewalkAccountInfoWithFingerprint>]
    #
    class ListPartnerAccountsResponse < Struct.new(
      :next_token,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   Resource type for which position configurations are listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    class ListPositionConfigurationsRequest < Struct.new(
      :resource_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] position_configuration_list
    #   A list of position configurations.
    #   @return [Array<Types::PositionConfigurationItem>]
    #
    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    class ListPositionConfigurationsResponse < Struct.new(
      :position_configuration_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of a given wireless device which the downlink message packets
    #   are being sent.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] wireless_device_type
    #   The wireless device type, whic can be either Sidewalk or LoRaWAN.
    #   @return [String]
    #
    class ListQueuedMessagesRequest < Struct.new(
      :id,
      :next_token,
      :max_results,
      :wireless_device_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] downlink_queue_messages_list
    #   The messages in the downlink queue.
    #   @return [Array<Types::DownlinkQueueMessage>]
    #
    class ListQueuedMessagesResponse < Struct.new(
      :next_token,
      :downlink_queue_messages_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    class ListServiceProfilesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] service_profile_list
    #   The list of service profiles.
    #   @return [Array<Types::ServiceProfile>]
    #
    class ListServiceProfilesResponse < Struct.new(
      :next_token,
      :service_profile_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to list tags.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise `null` to receive the first set of
    #   results.
    #   @return [String]
    #
    class ListWirelessDeviceImportTasksRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or `null` if there
    #   are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_import_task_list
    #   List of import tasks and summary information of onboarding status of
    #   devices in each import task.
    #   @return [Array<Types::WirelessDeviceImportTask>]
    #
    class ListWirelessDeviceImportTasksResponse < Struct.new(
      :next_token,
      :wireless_device_import_task_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   A filter to list only the wireless devices that use this
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] device_profile_id
    #   A filter to list only the wireless devices that use this device
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] service_profile_id
    #   A filter to list only the wireless devices that use this service
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_type
    #   A filter to list only the wireless devices that use this wireless
    #   device type.
    #   @return [String]
    #
    # @!attribute [rw] fuota_task_id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] multicast_group_id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class ListWirelessDevicesRequest < Struct.new(
      :max_results,
      :next_token,
      :destination_name,
      :device_profile_id,
      :service_profile_id,
      :wireless_device_type,
      :fuota_task_id,
      :multicast_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_list
    #   The ID of the wireless device.
    #   @return [Array<Types::WirelessDeviceStatistics>]
    #
    class ListWirelessDevicesResponse < Struct.new(
      :next_token,
      :wireless_device_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] task_definition_type
    #   A filter to list only the wireless gateway task definitions that use
    #   this task definition type.
    #   @return [String]
    #
    class ListWirelessGatewayTaskDefinitionsRequest < Struct.new(
      :max_results,
      :next_token,
      :task_definition_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] task_definitions
    #   The list of task definitions.
    #   @return [Array<Types::UpdateWirelessGatewayTaskEntry>]
    #
    class ListWirelessGatewayTaskDefinitionsResponse < Struct.new(
      :next_token,
      :task_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   To retrieve the next set of results, the `nextToken` value from a
    #   previous response; otherwise **null** to receive the first set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this operation.
    #   @return [Integer]
    #
    class ListWirelessGatewaysRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to use to get the next set of results, or **null** if
    #   there are no additional results.
    #   @return [String]
    #
    # @!attribute [rw] wireless_gateway_list
    #   The ID of the wireless gateway.
    #   @return [Array<Types::WirelessGatewayStatistics>]
    #
    class ListWirelessGatewaysResponse < Struct.new(
      :next_token,
      :wireless_gateway_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for LoRaWAN connection status resource type event
    # configuration.
    #
    # @!attribute [rw] gateway_eui_event_topic
    #   Denotes whether the gateway EUI connection status event topic is
    #   enabled or disabled.
    #   @return [String]
    #
    class LoRaWANConnectionStatusEventNotificationConfigurations < Struct.new(
      :gateway_eui_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for LoRaWAN connection status resource type event
    # configuration.
    #
    # @!attribute [rw] wireless_gateway_event_topic
    #   Denotes whether the wireless gateway connection status event topic
    #   is enabled or disabled.
    #   @return [String]
    #
    class LoRaWANConnectionStatusResourceTypeEventConfiguration < Struct.new(
      :wireless_gateway_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN object for create functions.
    #
    # @!attribute [rw] dev_eui
    #   The DevEUI value.
    #   @return [String]
    #
    # @!attribute [rw] device_profile_id
    #   The ID of the device profile for the new wireless device.
    #   @return [String]
    #
    # @!attribute [rw] service_profile_id
    #   The ID of the service profile.
    #   @return [String]
    #
    # @!attribute [rw] otaa_v1_1
    #   OTAA device object for v1.1 for create APIs
    #   @return [Types::OtaaV1_1]
    #
    # @!attribute [rw] otaa_v1_0_x
    #   OTAA device object for create APIs for v1.0.x
    #   @return [Types::OtaaV1_0_x]
    #
    # @!attribute [rw] abp_v1_1
    #   ABP device object for create APIs for v1.1
    #   @return [Types::AbpV1_1]
    #
    # @!attribute [rw] abp_v1_0_x
    #   LoRaWAN object for create APIs
    #   @return [Types::AbpV1_0_x]
    #
    # @!attribute [rw] f_ports
    #   List of FPort assigned for different LoRaWAN application packages to
    #   use
    #   @return [Types::FPorts]
    #
    class LoRaWANDevice < Struct.new(
      :dev_eui,
      :device_profile_id,
      :service_profile_id,
      :otaa_v1_1,
      :otaa_v1_0_x,
      :abp_v1_1,
      :abp_v1_0_x,
      :f_ports)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN device metatdata.
    #
    # @!attribute [rw] dev_eui
    #   The DevEUI value.
    #   @return [String]
    #
    # @!attribute [rw] f_port
    #   The FPort value.
    #   @return [Integer]
    #
    # @!attribute [rw] data_rate
    #   The DataRate value.
    #   @return [Integer]
    #
    # @!attribute [rw] frequency
    #   The device's channel frequency in Hz.
    #   @return [Integer]
    #
    # @!attribute [rw] timestamp
    #   The date and time of the metadata.
    #   @return [String]
    #
    # @!attribute [rw] gateways
    #   Information about the gateways accessed by the device.
    #   @return [Array<Types::LoRaWANGatewayMetadata>]
    #
    class LoRaWANDeviceMetadata < Struct.new(
      :dev_eui,
      :f_port,
      :data_rate,
      :frequency,
      :timestamp,
      :gateways)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANDeviceProfile object.
    #
    # @!attribute [rw] supports_class_b
    #   The SupportsClassB value.
    #   @return [Boolean]
    #
    # @!attribute [rw] class_b_timeout
    #   The ClassBTimeout value.
    #   @return [Integer]
    #
    # @!attribute [rw] ping_slot_period
    #   The PingSlotPeriod value.
    #   @return [Integer]
    #
    # @!attribute [rw] ping_slot_dr
    #   The PingSlotDR value.
    #   @return [Integer]
    #
    # @!attribute [rw] ping_slot_freq
    #   The PingSlotFreq value.
    #   @return [Integer]
    #
    # @!attribute [rw] supports_class_c
    #   The SupportsClassC value.
    #   @return [Boolean]
    #
    # @!attribute [rw] class_c_timeout
    #   The ClassCTimeout value.
    #   @return [Integer]
    #
    # @!attribute [rw] mac_version
    #   The MAC version (such as OTAA 1.1 or OTAA 1.0.3) to use with this
    #   device profile.
    #   @return [String]
    #
    # @!attribute [rw] reg_params_revision
    #   The version of regional parameters.
    #   @return [String]
    #
    # @!attribute [rw] rx_delay_1
    #   The RXDelay1 value.
    #   @return [Integer]
    #
    # @!attribute [rw] rx_dr_offset_1
    #   The RXDROffset1 value.
    #   @return [Integer]
    #
    # @!attribute [rw] rx_data_rate_2
    #   The RXDataRate2 value.
    #   @return [Integer]
    #
    # @!attribute [rw] rx_freq_2
    #   The RXFreq2 value.
    #   @return [Integer]
    #
    # @!attribute [rw] factory_preset_freqs_list
    #   The list of values that make up the FactoryPresetFreqs value.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] max_eirp
    #   The MaxEIRP value.
    #   @return [Integer]
    #
    # @!attribute [rw] max_duty_cycle
    #   The MaxDutyCycle value.
    #   @return [Integer]
    #
    # @!attribute [rw] rf_region
    #   The frequency band (RFRegion) value.
    #   @return [String]
    #
    # @!attribute [rw] supports_join
    #   The SupportsJoin value.
    #   @return [Boolean]
    #
    # @!attribute [rw] supports_32_bit_f_cnt
    #   The Supports32BitFCnt value.
    #   @return [Boolean]
    #
    class LoRaWANDeviceProfile < Struct.new(
      :supports_class_b,
      :class_b_timeout,
      :ping_slot_period,
      :ping_slot_dr,
      :ping_slot_freq,
      :supports_class_c,
      :class_c_timeout,
      :mac_version,
      :reg_params_revision,
      :rx_delay_1,
      :rx_dr_offset_1,
      :rx_data_rate_2,
      :rx_freq_2,
      :factory_preset_freqs_list,
      :max_eirp,
      :max_duty_cycle,
      :rf_region,
      :supports_join,
      :supports_32_bit_f_cnt)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information used with a FUOTA task.
    #
    # @!attribute [rw] rf_region
    #   Supported RfRegions
    #   @return [String]
    #
    class LoRaWANFuotaTask < Struct.new(
      :rf_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information returned from getting a FUOTA task.
    #
    # @!attribute [rw] rf_region
    #   The frequency band (RFRegion) value.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Start time of a FUOTA task.
    #   @return [Time]
    #
    class LoRaWANFuotaTaskGetInfo < Struct.new(
      :rf_region,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANGateway object.
    #
    # @!attribute [rw] gateway_eui
    #   The gateway's EUI value.
    #   @return [String]
    #
    # @!attribute [rw] rf_region
    #   The frequency band (RFRegion) value.
    #   @return [String]
    #
    # @!attribute [rw] join_eui_filters
    #   A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] net_id_filters
    #   A list of NetId values that are used by LoRa gateways to filter the
    #   uplink frames.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sub_bands
    #   A list of integer indicating which sub bands are supported by LoRa
    #   gateway.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] beaconing
    #   Beaconing object information, which consists of the data rate and
    #   frequency parameters.
    #   @return [Types::Beaconing]
    #
    # @!attribute [rw] max_eirp
    #   The MaxEIRP value.
    #   @return [Float]
    #
    class LoRaWANGateway < Struct.new(
      :gateway_eui,
      :rf_region,
      :join_eui_filters,
      :net_id_filters,
      :sub_bands,
      :beaconing,
      :max_eirp)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANGatewayCurrentVersion object.
    #
    # @!attribute [rw] current_version
    #   The version of the gateways that should receive the update.
    #   @return [Types::LoRaWANGatewayVersion]
    #
    class LoRaWANGatewayCurrentVersion < Struct.new(
      :current_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN gateway metatdata.
    #
    # @!attribute [rw] gateway_eui
    #   The gateway's EUI value.
    #   @return [String]
    #
    # @!attribute [rw] snr
    #   The SNR value.
    #   @return [Float]
    #
    # @!attribute [rw] rssi
    #   The RSSI value.
    #   @return [Float]
    #
    class LoRaWANGatewayMetadata < Struct.new(
      :gateway_eui,
      :snr,
      :rssi)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANGatewayVersion object.
    #
    # @!attribute [rw] package_version
    #   The version of the wireless gateway firmware.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model number of the wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] station
    #   The basic station version of the wireless gateway.
    #   @return [String]
    #
    class LoRaWANGatewayVersion < Struct.new(
      :package_version,
      :model,
      :station)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANGetServiceProfileInfo object.
    #
    # @!attribute [rw] ul_rate
    #   The ULRate value.
    #   @return [Integer]
    #
    # @!attribute [rw] ul_bucket_size
    #   The ULBucketSize value.
    #   @return [Integer]
    #
    # @!attribute [rw] ul_rate_policy
    #   The ULRatePolicy value.
    #   @return [String]
    #
    # @!attribute [rw] dl_rate
    #   The DLRate value.
    #   @return [Integer]
    #
    # @!attribute [rw] dl_bucket_size
    #   The DLBucketSize value.
    #   @return [Integer]
    #
    # @!attribute [rw] dl_rate_policy
    #   The DLRatePolicy value.
    #   @return [String]
    #
    # @!attribute [rw] add_gw_metadata
    #   The AddGWMetaData value.
    #   @return [Boolean]
    #
    # @!attribute [rw] dev_status_req_freq
    #   The DevStatusReqFreq value.
    #   @return [Integer]
    #
    # @!attribute [rw] report_dev_status_battery
    #   The ReportDevStatusBattery value.
    #   @return [Boolean]
    #
    # @!attribute [rw] report_dev_status_margin
    #   The ReportDevStatusMargin value.
    #   @return [Boolean]
    #
    # @!attribute [rw] dr_min
    #   The DRMin value.
    #   @return [Integer]
    #
    # @!attribute [rw] dr_max
    #   The DRMax value.
    #   @return [Integer]
    #
    # @!attribute [rw] channel_mask
    #   The ChannelMask value.
    #   @return [String]
    #
    # @!attribute [rw] pr_allowed
    #   The PRAllowed value that describes whether passive roaming is
    #   allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] hr_allowed
    #   The HRAllowed value that describes whether handover roaming is
    #   allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] ra_allowed
    #   The RAAllowed value that describes whether roaming activation is
    #   allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] nwk_geo_loc
    #   The NwkGeoLoc value.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_per
    #   The TargetPER value.
    #   @return [Integer]
    #
    # @!attribute [rw] min_gw_diversity
    #   The MinGwDiversity value.
    #   @return [Integer]
    #
    class LoRaWANGetServiceProfileInfo < Struct.new(
      :ul_rate,
      :ul_bucket_size,
      :ul_rate_policy,
      :dl_rate,
      :dl_bucket_size,
      :dl_rate_policy,
      :add_gw_metadata,
      :dev_status_req_freq,
      :report_dev_status_battery,
      :report_dev_status_margin,
      :dr_min,
      :dr_max,
      :channel_mask,
      :pr_allowed,
      :hr_allowed,
      :ra_allowed,
      :nwk_geo_loc,
      :target_per,
      :min_gw_diversity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for LoRaWAN join resource type event configuration.
    #
    # @!attribute [rw] dev_eui_event_topic
    #   Denotes whether the Dev EUI join event topic is enabled or disabled.
    #   @return [String]
    #
    class LoRaWANJoinEventNotificationConfigurations < Struct.new(
      :dev_eui_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for LoRaWAN join resource type event configuration.
    #
    # @!attribute [rw] wireless_device_event_topic
    #   Denotes whether the wireless device join event topic is enabled or
    #   disabled.
    #   @return [String]
    #
    class LoRaWANJoinResourceTypeEventConfiguration < Struct.new(
      :wireless_device_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN object for list functions.
    #
    # @!attribute [rw] dev_eui
    #   The DevEUI value.
    #   @return [String]
    #
    class LoRaWANListDevice < Struct.new(
      :dev_eui)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information that is to be used with the multicast group.
    #
    # @!attribute [rw] rf_region
    #   Supported RfRegions
    #   @return [String]
    #
    # @!attribute [rw] dl_class
    #   DlClass for LoRaWAM, valid values are ClassB and ClassC.
    #   @return [String]
    #
    class LoRaWANMulticast < Struct.new(
      :rf_region,
      :dl_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information that is to be returned from getting multicast
    # group information.
    #
    # @!attribute [rw] rf_region
    #   Supported RfRegions
    #   @return [String]
    #
    # @!attribute [rw] dl_class
    #   DlClass for LoRaWAM, valid values are ClassB and ClassC.
    #   @return [String]
    #
    # @!attribute [rw] number_of_devices_requested
    #   Number of devices that are requested to be associated with the
    #   multicast group.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_devices_in_group
    #   Number of devices that are associated to the multicast group.
    #   @return [Integer]
    #
    class LoRaWANMulticastGet < Struct.new(
      :rf_region,
      :dl_class,
      :number_of_devices_requested,
      :number_of_devices_in_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata information of the LoRaWAN multicast group.
    #
    # @!attribute [rw] f_port
    #   The Fport value.
    #   @return [Integer]
    #
    class LoRaWANMulticastMetadata < Struct.new(
      :f_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information used with the multicast session.
    #
    # @!attribute [rw] dl_dr
    #   Downlink data rate.
    #   @return [Integer]
    #
    # @!attribute [rw] dl_freq
    #   Downlink frequency.
    #   @return [Integer]
    #
    # @!attribute [rw] session_start_time
    #   Timestamp of when the multicast group session is to start.
    #   @return [Time]
    #
    # @!attribute [rw] session_timeout
    #   How long before a multicast group session is to timeout.
    #   @return [Integer]
    #
    # @!attribute [rw] ping_slot_period
    #   The PingSlotPeriod value.
    #   @return [Integer]
    #
    class LoRaWANMulticastSession < Struct.new(
      :dl_dr,
      :dl_freq,
      :session_start_time,
      :session_timeout,
      :ping_slot_period)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN router info.
    #
    # @!attribute [rw] f_port
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] participating_gateways
    #   Choose the gateways that you want to use for the downlink data
    #   traffic when the wireless device is running in class B or class C
    #   mode.
    #   @return [Types::ParticipatingGateways]
    #
    class LoRaWANSendDataToDevice < Struct.new(
      :f_port,
      :participating_gateways)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANServiceProfile object.
    #
    # @!attribute [rw] add_gw_metadata
    #   The AddGWMetaData value.
    #   @return [Boolean]
    #
    # @!attribute [rw] dr_min
    #   The DrMin value.
    #   @return [Integer]
    #
    # @!attribute [rw] dr_max
    #   The DrMax value.
    #   @return [Integer]
    #
    # @!attribute [rw] pr_allowed
    #   The PRAllowed value that describes whether passive roaming is
    #   allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] ra_allowed
    #   The RAAllowed value that describes whether roaming activation is
    #   allowed.
    #   @return [Boolean]
    #
    class LoRaWANServiceProfile < Struct.new(
      :add_gw_metadata,
      :dr_min,
      :dr_max,
      :pr_allowed,
      :ra_allowed)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information used to start a FUOTA task.
    #
    # @!attribute [rw] start_time
    #   Start time of a FUOTA task.
    #   @return [Time]
    #
    class LoRaWANStartFuotaTask < Struct.new(
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN object for update functions.
    #
    # @!attribute [rw] device_profile_id
    #   The ID of the device profile for the wireless device.
    #   @return [String]
    #
    # @!attribute [rw] service_profile_id
    #   The ID of the service profile.
    #   @return [String]
    #
    # @!attribute [rw] abp_v1_1
    #   ABP device object for update APIs for v1.1
    #   @return [Types::UpdateAbpV1_1]
    #
    # @!attribute [rw] abp_v1_0_x
    #   ABP device object for update APIs for v1.0.x
    #   @return [Types::UpdateAbpV1_0_x]
    #
    # @!attribute [rw] f_ports
    #   FPorts object for the positioning information of the device.
    #   @return [Types::UpdateFPorts]
    #
    class LoRaWANUpdateDevice < Struct.new(
      :device_profile_id,
      :service_profile_id,
      :abp_v1_1,
      :abp_v1_0_x,
      :f_ports)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANUpdateGatewayTaskCreate object.
    #
    # @!attribute [rw] update_signature
    #   The signature used to verify the update firmware.
    #   @return [String]
    #
    # @!attribute [rw] sig_key_crc
    #   The CRC of the signature private key to check.
    #   @return [Integer]
    #
    # @!attribute [rw] current_version
    #   The version of the gateways that should receive the update.
    #   @return [Types::LoRaWANGatewayVersion]
    #
    # @!attribute [rw] update_version
    #   The firmware version to update the gateway to.
    #   @return [Types::LoRaWANGatewayVersion]
    #
    class LoRaWANUpdateGatewayTaskCreate < Struct.new(
      :update_signature,
      :sig_key_crc,
      :current_version,
      :update_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANUpdateGatewayTaskEntry object.
    #
    # @!attribute [rw] current_version
    #   The version of the gateways that should receive the update.
    #   @return [Types::LoRaWANGatewayVersion]
    #
    # @!attribute [rw] update_version
    #   The firmware version to update the gateway to.
    #   @return [Types::LoRaWANGatewayVersion]
    #
    class LoRaWANUpdateGatewayTaskEntry < Struct.new(
      :current_version,
      :update_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # LTE local identification (local ID) information.
    #
    # @!attribute [rw] pci
    #   Physical cell ID.
    #   @return [Integer]
    #
    # @!attribute [rw] earfcn
    #   Evolved universal terrestrial radio access (E-UTRA) absolute radio
    #   frequency channel number (FCN).
    #   @return [Integer]
    #
    class LteLocalId < Struct.new(
      :pci,
      :earfcn)
      SENSITIVE = []
      include Aws::Structure
    end

    # LTE object for network measurement reports.
    #
    # @!attribute [rw] pci
    #   Physical cell ID.
    #   @return [Integer]
    #
    # @!attribute [rw] earfcn
    #   E-UTRA (Evolved universal terrestrial Radio Access) absolute radio
    #   frequency channel Number (EARFCN).
    #   @return [Integer]
    #
    # @!attribute [rw] eutran_cid
    #   E-UTRAN (Evolved Universal Terrestrial Radio Access Network) cell
    #   global identifier (EUTRANCID).
    #   @return [Integer]
    #
    # @!attribute [rw] rsrp
    #   Signal power of the reference signal received, measured in dBm
    #   (decibel-milliwatts).
    #   @return [Integer]
    #
    # @!attribute [rw] rsrq
    #   Signal quality of the reference Signal received, measured in
    #   decibels (dB).
    #   @return [Float]
    #
    class LteNmrObj < Struct.new(
      :pci,
      :earfcn,
      :eutran_cid,
      :rsrp,
      :rsrq)
      SENSITIVE = []
      include Aws::Structure
    end

    # LTE object.
    #
    # @!attribute [rw] mcc
    #   Mobile Country Code.
    #   @return [Integer]
    #
    # @!attribute [rw] mnc
    #   Mobile Network Code.
    #   @return [Integer]
    #
    # @!attribute [rw] eutran_cid
    #   E-UTRAN (Evolved Universal Terrestrial Radio Access Network) Cell
    #   Global Identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] tac
    #   LTE tracking area code.
    #   @return [Integer]
    #
    # @!attribute [rw] lte_local_id
    #   LTE local identification (local ID) information.
    #   @return [Types::LteLocalId]
    #
    # @!attribute [rw] lte_timing_advance
    #   LTE timing advance.
    #   @return [Integer]
    #
    # @!attribute [rw] rsrp
    #   Signal power of the reference signal received, measured in dBm
    #   (decibel-milliwatts).
    #   @return [Integer]
    #
    # @!attribute [rw] rsrq
    #   Signal quality of the reference Signal received, measured in
    #   decibels (dB).
    #   @return [Float]
    #
    # @!attribute [rw] nr_capable
    #   Parameter that determines whether the LTE object is capable of
    #   supporting NR (new radio).
    #   @return [Boolean]
    #
    # @!attribute [rw] lte_nmr
    #   LTE object for network measurement reports.
    #   @return [Array<Types::LteNmrObj>]
    #
    class LteObj < Struct.new(
      :mcc,
      :mnc,
      :eutran_cid,
      :tac,
      :lte_local_id,
      :lte_timing_advance,
      :rsrp,
      :rsrq,
      :nr_capable,
      :lte_nmr)
      SENSITIVE = []
      include Aws::Structure
    end

    # Message delivery status event configuration object for enabling and
    # disabling relevant topics.
    #
    # @!attribute [rw] sidewalk
    #   `SidewalkEventNotificationConfigurations` object, which is the event
    #   configuration object for Sidewalk-related event topics.
    #   @return [Types::SidewalkEventNotificationConfigurations]
    #
    # @!attribute [rw] wireless_device_id_event_topic
    #   Denotes whether the wireless device ID message delivery status event
    #   topic is enabled or disabled.
    #   @return [String]
    #
    class MessageDeliveryStatusEventConfiguration < Struct.new(
      :sidewalk,
      :wireless_device_id_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Message delivery status resource type event configuration object for
    # enabling or disabling relevant topic.
    #
    # @!attribute [rw] sidewalk
    #   Sidewalk resource type event configuration object for enabling or
    #   disabling topic.
    #   @return [Types::SidewalkResourceTypeEventConfiguration]
    #
    class MessageDeliveryStatusResourceTypeEventConfiguration < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # A multicast group.
    #
    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The arn of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the multicast group.
    #   @return [String]
    #
    class MulticastGroup < Struct.new(
      :id,
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A multicast group that is associated with a FUOTA task.
    #
    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    class MulticastGroupByFuotaTask < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wireless metadata that is to be sent to multicast group.
    #
    # @!attribute [rw] lo_ra_wan
    #   The metadata information of the LoRaWAN multicast group.
    #   @return [Types::LoRaWANMulticastMetadata]
    #
    class MulticastWirelessMetadata < Struct.new(
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network analyzer configurations.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    class NetworkAnalyzerConfigurations < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # OTAA device object for v1.0.x
    #
    # @!attribute [rw] app_key
    #   The AppKey value.
    #   @return [String]
    #
    # @!attribute [rw] app_eui
    #   The AppEUI value.
    #   @return [String]
    #
    # @!attribute [rw] gen_app_key
    #   The GenAppKey value.
    #   @return [String]
    #
    class OtaaV1_0_x < Struct.new(
      :app_key,
      :app_eui,
      :gen_app_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # OTAA device object for v1.1
    #
    # @!attribute [rw] app_key
    #   The AppKey value.
    #   @return [String]
    #
    # @!attribute [rw] nwk_key
    #   The NwkKey value.
    #   @return [String]
    #
    # @!attribute [rw] join_eui
    #   The JoinEUI value.
    #   @return [String]
    #
    class OtaaV1_1 < Struct.new(
      :app_key,
      :nwk_key,
      :join_eui)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specify the list of gateways to which you want to send downlink data
    # traffic when the wireless device is running in class B or class C
    # mode.
    #
    # @!attribute [rw] downlink_mode
    #   Indicates whether to send the downlink message in sequential mode or
    #   concurrent mode, or to use only the chosen gateways from the
    #   previous uplink message transmission.
    #   @return [String]
    #
    # @!attribute [rw] gateway_list
    #   The list of gateways that you want to use for sending the downlink
    #   data traffic.
    #   @return [Array<Types::GatewayListItem>]
    #
    # @!attribute [rw] transmission_interval
    #   The duration of time for which AWS IoT Core for LoRaWAN will wait
    #   before transmitting the payload to the next gateway.
    #   @return [Integer]
    #
    class ParticipatingGateways < Struct.new(
      :downlink_mode,
      :gateway_list,
      :transmission_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # The wrapper for a position configuration.
    #
    # @!attribute [rw] resource_identifier
    #   Resource identifier for the position configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource for the position configuration.
    #   @return [String]
    #
    # @!attribute [rw] solvers
    #   The details of the positioning solver object used to compute the
    #   location.
    #   @return [Types::PositionSolverDetails]
    #
    # @!attribute [rw] destination
    #   The position data destination that describes the AWS IoT rule that
    #   processes the device's position data for use by AWS IoT Core for
    #   LoRaWAN.
    #   @return [String]
    #
    class PositionConfigurationItem < Struct.new(
      :resource_identifier,
      :resource_type,
      :solvers,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The wrapper for position solver configurations.
    #
    # @!attribute [rw] semtech_gnss
    #   The Semtech GNSS solver configuration object.
    #   @return [Types::SemtechGnssConfiguration]
    #
    class PositionSolverConfigurations < Struct.new(
      :semtech_gnss)
      SENSITIVE = []
      include Aws::Structure
    end

    # The wrapper for position solver details.
    #
    # @!attribute [rw] semtech_gnss
    #   The Semtech GNSS solver object details.
    #   @return [Types::SemtechGnssDetail]
    #
    class PositionSolverDetails < Struct.new(
      :semtech_gnss)
      SENSITIVE = []
      include Aws::Structure
    end

    # The FPorts for the position information.
    #
    # @!attribute [rw] clock_sync
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] stream
    #   The Fport value.
    #   @return [Integer]
    #
    # @!attribute [rw] gnss
    #   The Fport value.
    #   @return [Integer]
    #
    class Positioning < Struct.new(
      :clock_sync,
      :stream,
      :gnss)
      SENSITIVE = []
      include Aws::Structure
    end

    # Proximity event configuration object for enabling and disabling
    # relevant topics.
    #
    # @!attribute [rw] sidewalk
    #   Proximity event configuration object for enabling or disabling
    #   Sidewalk related event topics.
    #   @return [Types::SidewalkEventNotificationConfigurations]
    #
    # @!attribute [rw] wireless_device_id_event_topic
    #   Denotes whether the wireless device ID proximity event topic is
    #   enabled or disabled.
    #   @return [String]
    #
    class ProximityEventConfiguration < Struct.new(
      :sidewalk,
      :wireless_device_id_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Proximity resource type event configuration object for enabling or
    # disabling topic.
    #
    # @!attribute [rw] sidewalk
    #   Proximity resource type event configuration object for enabling and
    #   disabling wireless device topic.
    #   @return [Types::SidewalkResourceTypeEventConfiguration]
    #
    class ProximityResourceTypeEventConfiguration < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   Resource identifier used to update the position configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource for which you want to update the
    #   position configuration.
    #   @return [String]
    #
    # @!attribute [rw] solvers
    #   The positioning solvers used to update the position configuration of
    #   the resource.
    #   @return [Types::PositionSolverConfigurations]
    #
    # @!attribute [rw] destination
    #   The position data destination that describes the AWS IoT rule that
    #   processes the device's position data for use by AWS IoT Core for
    #   LoRaWAN.
    #   @return [String]
    #
    class PutPositionConfigurationRequest < Struct.new(
      :resource_identifier,
      :resource_type,
      :solvers,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    class PutPositionConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_identifier
    #   The identifier of the resource. For a Wireless Device, it is the
    #   wireless device ID. For a wireless gateway, it is the wireless
    #   gateway ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, which can be `WirelessDevice` or
    #   `WirelessGateway`.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    class PutResourceLogLevelRequest < Struct.new(
      :resource_identifier,
      :resource_type,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    class PutResourceLogLevelResponse < Aws::EmptyStructure; end

    # @api private
    #
    class ResetAllResourceLogLevelsRequest < Aws::EmptyStructure; end

    class ResetAllResourceLogLevelsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_identifier
    #   The identifier of the resource. For a Wireless Device, it is the
    #   wireless device ID. For a wireless gateway, it is the wireless
    #   gateway ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, which can be `WirelessDevice` or
    #   `WirelessGateway`.
    #   @return [String]
    #
    class ResetResourceLogLevelRequest < Struct.new(
      :resource_identifier,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    class ResetResourceLogLevelResponse < Aws::EmptyStructure; end

    # Resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Id of the not found resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the font found resource.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Semtech GNSS solver configuration.
    #
    # @!attribute [rw] status
    #   The status indicating whether the solver is enabled.
    #   @return [String]
    #
    # @!attribute [rw] fec
    #   Whether forward error correction is enabled.
    #   @return [String]
    #
    class SemtechGnssConfiguration < Struct.new(
      :status,
      :fec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Semtech GNSS solver object.
    #
    # @!attribute [rw] provider
    #   The vendor of the solver object.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of positioning solver used.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status indicating whether the solver is enabled.
    #   @return [String]
    #
    # @!attribute [rw] fec
    #   Whether forward error correction is enabled.
    #   @return [String]
    #
    class SemtechGnssDetail < Struct.new(
      :provider,
      :type,
      :status,
      :fec)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] payload_data
    #   The binary to be sent to the end device, encoded in base64.
    #   @return [String]
    #
    # @!attribute [rw] wireless_metadata
    #   Wireless metadata that is to be sent to multicast group.
    #   @return [Types::MulticastWirelessMetadata]
    #
    class SendDataToMulticastGroupRequest < Struct.new(
      :id,
      :payload_data,
      :wireless_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   ID of a multicast group message.
    #   @return [String]
    #
    class SendDataToMulticastGroupResponse < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the wireless device to receive the data.
    #   @return [String]
    #
    # @!attribute [rw] transmit_mode
    #   The transmit mode to use to send data to the wireless device. Can
    #   be: `0` for UM (unacknowledge mode) or `1` for AM (acknowledge
    #   mode).
    #   @return [Integer]
    #
    # @!attribute [rw] payload_data
    #   The binary to be sent to the end device, encoded in base64.
    #   @return [String]
    #
    # @!attribute [rw] wireless_metadata
    #   Metadata about the message request.
    #   @return [Types::WirelessMetadata]
    #
    class SendDataToWirelessDeviceRequest < Struct.new(
      :id,
      :transmit_mode,
      :payload_data,
      :wireless_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message_id
    #   The ID of the message sent to the wireless device.
    #   @return [String]
    #
    class SendDataToWirelessDeviceResponse < Struct.new(
      :message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a service profile.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the service profile.
    #   @return [String]
    #
    class ServiceProfile < Struct.new(
      :arn,
      :name,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Session keys for ABP v1.1
    #
    # @!attribute [rw] nwk_s_key
    #   The NwkSKey value.
    #   @return [String]
    #
    # @!attribute [rw] app_s_key
    #   The AppSKey value.
    #   @return [String]
    #
    class SessionKeysAbpV1_0_x < Struct.new(
      :nwk_s_key,
      :app_s_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Session keys for ABP v1.1
    #
    # @!attribute [rw] f_nwk_s_int_key
    #   The FNwkSIntKey value.
    #   @return [String]
    #
    # @!attribute [rw] s_nwk_s_int_key
    #   The SNwkSIntKey value.
    #   @return [String]
    #
    # @!attribute [rw] nwk_s_enc_key
    #   The NwkSEncKey value.
    #   @return [String]
    #
    # @!attribute [rw] app_s_key
    #   The AppSKey value.
    #   @return [String]
    #
    class SessionKeysAbpV1_1 < Struct.new(
      :f_nwk_s_int_key,
      :s_nwk_s_int_key,
      :nwk_s_enc_key,
      :app_s_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Sidewalk account.
    #
    # @!attribute [rw] amazon_id
    #   The Sidewalk Amazon ID.
    #   @return [String]
    #
    # @!attribute [rw] app_server_private_key
    #   The Sidewalk application server private key.
    #   @return [String]
    #
    class SidewalkAccountInfo < Struct.new(
      :amazon_id,
      :app_server_private_key)
      SENSITIVE = [:app_server_private_key]
      include Aws::Structure
    end

    # Information about a Sidewalk account.
    #
    # @!attribute [rw] amazon_id
    #   The Sidewalk Amazon ID.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   The fingerprint of the Sidewalk application server private key.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    class SidewalkAccountInfoWithFingerprint < Struct.new(
      :amazon_id,
      :fingerprint,
      :arn)
      SENSITIVE = [:fingerprint]
      include Aws::Structure
    end

    # Sidewalk object for creating a device profile.
    #
    # @api private
    #
    class SidewalkCreateDeviceProfile < Aws::EmptyStructure; end

    # Sidewalk object for creating a wireless device.
    #
    # @!attribute [rw] device_profile_id
    #   The ID of the Sidewalk device profile.
    #   @return [String]
    #
    class SidewalkCreateWirelessDevice < Struct.new(
      :device_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sidewalk device object.
    #
    # @!attribute [rw] amazon_id
    #   The Sidewalk Amazon ID.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk_id
    #   The sidewalk device identification.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk_manufacturing_sn
    #   The Sidewalk manufacturing series number.
    #   @return [String]
    #
    # @!attribute [rw] device_certificates
    #   The sidewalk device certificates for Ed25519 and P256r1.
    #   @return [Array<Types::CertificateList>]
    #
    # @!attribute [rw] private_keys
    #   The Sidewalk device private keys that will be used for onboarding
    #   the device.
    #   @return [Array<Types::CertificateList>]
    #
    # @!attribute [rw] device_profile_id
    #   The ID of the Sidewalk device profile.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the Sidewalk device profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The Sidewalk device status, such as provisioned or registered.
    #   @return [String]
    #
    class SidewalkDevice < Struct.new(
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates,
      :private_keys,
      :device_profile_id,
      :certificate_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # MetaData for Sidewalk device.
    #
    # @!attribute [rw] rssi
    #   The RSSI value.
    #   @return [Integer]
    #
    # @!attribute [rw] battery_level
    #   Sidewalk device battery level.
    #   @return [String]
    #
    # @!attribute [rw] event
    #   Sidewalk device status notification.
    #   @return [String]
    #
    # @!attribute [rw] device_state
    #   Device state defines the device status of sidewalk device.
    #   @return [String]
    #
    class SidewalkDeviceMetadata < Struct.new(
      :rssi,
      :battery_level,
      :event,
      :device_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # `SidewalkEventNotificationConfigurations` object, which is the event
    # configuration object for Sidewalk-related event topics.
    #
    # @!attribute [rw] amazon_id_event_topic
    #   Denotes whether the Amazon ID event topic is enabled or disabled.
    #   @return [String]
    #
    class SidewalkEventNotificationConfigurations < Struct.new(
      :amazon_id_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets information about a Sidewalk device profile.
    #
    # @!attribute [rw] application_server_public_key
    #   The Sidewalk application server public key.
    #   @return [String]
    #
    # @!attribute [rw] qualification_status
    #   Gets information about the certification status of a Sidewalk device
    #   profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] dak_certificate_metadata
    #   The DAK certificate information of the Sidewalk device profile.
    #   @return [Array<Types::DakCertificateMetadata>]
    #
    class SidewalkGetDeviceProfile < Struct.new(
      :application_server_public_key,
      :qualification_status,
      :dak_certificate_metadata)
      SENSITIVE = [:application_server_public_key]
      include Aws::Structure
    end

    # Sidewalk-related information for devices in an import task that are
    # being onboarded.
    #
    # @!attribute [rw] device_creation_file_list
    #   List of Sidewalk devices that are added to the import task.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   The IAM role that allows AWS IoT Wireless to access the CSV file in
    #   the S3 bucket.
    #   @return [String]
    #
    class SidewalkGetStartImportInfo < Struct.new(
      :device_creation_file_list,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sidewalk object used by list functions.
    #
    # @!attribute [rw] amazon_id
    #   The Sidewalk Amazon ID.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk_id
    #   The sidewalk device identification.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk_manufacturing_sn
    #   The Sidewalk manufacturing series number.
    #   @return [String]
    #
    # @!attribute [rw] device_certificates
    #   The sidewalk device certificates for Ed25519 and P256r1.
    #   @return [Array<Types::CertificateList>]
    #
    # @!attribute [rw] device_profile_id
    #   Sidewalk object used by list functions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Sidewalk devices, such as provisioned or
    #   registered.
    #   @return [String]
    #
    class SidewalkListDevice < Struct.new(
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates,
      :device_profile_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sidewalk resource type event configuration object for enabling or
    # disabling topic.
    #
    # @!attribute [rw] wireless_device_event_topic
    #   Denotes whether the wireless device join event topic is enabled or
    #   disabled.
    #   @return [String]
    #
    class SidewalkResourceTypeEventConfiguration < Struct.new(
      :wireless_device_event_topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Sidewalk router.
    #
    # @!attribute [rw] seq
    #   The sequence number.
    #   @return [Integer]
    #
    # @!attribute [rw] message_type
    #   Sidewalk device message type. Default value is
    #   `CUSTOM_COMMAND_ID_NOTIFY`.
    #   @return [String]
    #
    # @!attribute [rw] ack_mode_retry_duration_secs
    #   The duration of time in seconds to retry sending the ACK.
    #   @return [Integer]
    #
    class SidewalkSendDataToDevice < Struct.new(
      :seq,
      :message_type,
      :ack_mode_retry_duration_secs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an import task created for an individual Sidewalk
    # device.
    #
    # @!attribute [rw] sidewalk_manufacturing_sn
    #   The Sidewalk manufacturing serial number (SMSN) of the device added
    #   to the import task.
    #   @return [String]
    #
    class SidewalkSingleStartImportInfo < Struct.new(
      :sidewalk_manufacturing_sn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an import task created for bulk provisioning.
    #
    # @!attribute [rw] device_creation_file
    #   The CSV file contained in an S3 bucket that's used for adding
    #   devices to an import task.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role that allows AWS IoT Wireless to access the CSV file in
    #   the S3 bucket.
    #   @return [String]
    #
    class SidewalkStartImportInfo < Struct.new(
      :device_creation_file,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sidewalk update.
    #
    # @!attribute [rw] app_server_private_key
    #   The new Sidewalk application server private key.
    #   @return [String]
    #
    class SidewalkUpdateAccount < Struct.new(
      :app_server_private_key)
      SENSITIVE = [:app_server_private_key]
      include Aws::Structure
    end

    # Sidewalk object information for updating an import task.
    #
    # @!attribute [rw] device_creation_file
    #   The CSV file contained in an S3 bucket that's used for appending
    #   devices to an existing import task.
    #   @return [String]
    #
    class SidewalkUpdateImportInfo < Struct.new(
      :device_creation_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   Query string used to search for wireless devices as part of the bulk
    #   associate and disassociate process.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class StartBulkAssociateWirelessDeviceWithMulticastGroupRequest < Struct.new(
      :id,
      :query_string,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class StartBulkAssociateWirelessDeviceWithMulticastGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   Query string used to search for wireless devices as part of the bulk
    #   associate and disassociate process.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest < Struct.new(
      :id,
      :query_string,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information used to start a FUOTA task.
    #   @return [Types::LoRaWANStartFuotaTask]
    #
    class StartFuotaTaskRequest < Struct.new(
      :id,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    class StartFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information used with the multicast session.
    #   @return [Types::LoRaWANMulticastSession]
    #
    class StartMulticastGroupSessionRequest < Struct.new(
      :id,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    class StartMulticastGroupSessionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] destination_name
    #   The name of the Sidewalk destination that describes the IoT rule to
    #   route messages from the device in the import task that will be
    #   onboarded to AWS IoT Wireless.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the wireless device for which an import task is being
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related parameters for importing a single wireless
    #   device.
    #   @return [Types::SidewalkSingleStartImportInfo]
    #
    class StartSingleWirelessDeviceImportTaskRequest < Struct.new(
      :destination_name,
      :client_request_token,
      :device_name,
      :tags,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The import task ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the import task.
    #   @return [String]
    #
    class StartSingleWirelessDeviceImportTaskResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_name
    #   The name of the Sidewalk destination that describes the IoT rule to
    #   route messages from the devices in the import task that are
    #   onboarded to AWS IoT Wireless.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Each resource must have a unique client request token. If you try to
    #   create a new resource with the same token as a resource that already
    #   exists, an exception occurs. If you omit this value, AWS SDKs will
    #   automatically generate a unique client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to attach to the specified resource. Tags are metadata that
    #   you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related parameters for importing wireless devices that
    #   need to be provisioned in bulk.
    #   @return [Types::SidewalkStartImportInfo]
    #
    class StartWirelessDeviceImportTaskRequest < Struct.new(
      :destination_name,
      :client_request_token,
      :tags,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The import task ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the import task.
    #   @return [String]
    #
    class StartWirelessDeviceImportTaskResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A simple label consisting of a customer-defined key-value pair
    #
    # @!attribute [rw] key
    #   The tag's key value.
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
    #   The ARN of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds to or modifies the tags of the given resource. Tags are
    #   metadata that you can use to manage a resource.
    #   @return [Array<Types::Tag>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # TD-SCDMA local identification (local Id) information.
    #
    # @!attribute [rw] uarfcn
    #   TD-SCDMA UTRA (Universal Terrestrial Radio Access Network) absolute
    #   RF channel number (UARFCN).
    #   @return [Integer]
    #
    # @!attribute [rw] cell_params
    #   Cell parameters for TD-SCDMA.
    #   @return [Integer]
    #
    class TdscdmaLocalId < Struct.new(
      :uarfcn,
      :cell_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # TD-SCDMA object for network measurement reports.
    #
    # @!attribute [rw] uarfcn
    #   TD-SCDMA UTRA (Universal Terrestrial Radio Access Network) absolute
    #   RF channel number.
    #   @return [Integer]
    #
    # @!attribute [rw] cell_params
    #   Cell parameters for TD-SCDMA network measurement reports object.
    #   @return [Integer]
    #
    # @!attribute [rw] utran_cid
    #   UTRAN (UMTS Terrestrial Radio Access Network) cell global
    #   identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] rscp
    #   Code power of the received signal, measured in decibel-milliwatts
    #   (dBm).
    #   @return [Integer]
    #
    # @!attribute [rw] path_loss
    #   Path loss, or path attenuation, is the reduction in power density of
    #   an electromagnetic wave as it propagates through space.
    #   @return [Integer]
    #
    class TdscdmaNmrObj < Struct.new(
      :uarfcn,
      :cell_params,
      :utran_cid,
      :rscp,
      :path_loss)
      SENSITIVE = []
      include Aws::Structure
    end

    # TD-SCDMA object.
    #
    # @!attribute [rw] mcc
    #   Mobile Country Code.
    #   @return [Integer]
    #
    # @!attribute [rw] mnc
    #   Mobile Network Code.
    #   @return [Integer]
    #
    # @!attribute [rw] lac
    #   Location Area Code.
    #   @return [Integer]
    #
    # @!attribute [rw] utran_cid
    #   UTRAN (UMTS Terrestrial Radio Access Network) Cell Global
    #   Identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] tdscdma_local_id
    #   TD-SCDMA local identification (local ID) information.
    #   @return [Types::TdscdmaLocalId]
    #
    # @!attribute [rw] tdscdma_timing_advance
    #   TD-SCDMA Timing advance.
    #   @return [Integer]
    #
    # @!attribute [rw] rscp
    #   Signal power of the received signal (Received Signal Code Power),
    #   measured in decibel-milliwatts (dBm).
    #   @return [Integer]
    #
    # @!attribute [rw] path_loss
    #   Path loss, or path attenuation, is the reduction in power density of
    #   an electromagnetic wave as it propagates through space.
    #   @return [Integer]
    #
    # @!attribute [rw] tdscdma_nmr
    #   TD-SCDMA object for network measurement reports.
    #   @return [Array<Types::TdscdmaNmrObj>]
    #
    class TdscdmaObj < Struct.new(
      :mcc,
      :mnc,
      :lac,
      :utran_cid,
      :tdscdma_local_id,
      :tdscdma_timing_advance,
      :rscp,
      :path_loss,
      :tdscdma_nmr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the wireless device to test.
    #   @return [String]
    #
    class TestWirelessDeviceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   The result returned by the test.
    #   @return [String]
    #
    class TestWirelessDeviceResponse < Struct.new(
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because it exceeded the allowed API request
    # rate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because the resource can't have any more tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   Name of the resource that exceeds maximum number of tags allowed.
    #   @return [String]
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trace content for your wireless gateway and wireless device resources.
    #
    # @!attribute [rw] wireless_device_frame_info
    #   `FrameInfo` of your wireless device resources for the trace content.
    #   Use FrameInfo to debug the communication between your LoRaWAN end
    #   devices and the network server.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    # @!attribute [rw] multicast_frame_info
    #   `FrameInfo` of your multicast group resources for the trace content.
    #   Use FrameInfo to debug the multicast communication between your
    #   LoRaWAN end devices and the network server.
    #   @return [String]
    #
    class TraceContent < Struct.new(
      :wireless_device_frame_info,
      :log_level,
      :multicast_frame_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # ABP device object for LoRaWAN specification v1.0.x
    #
    # @!attribute [rw] f_cnt_start
    #   The FCnt init value.
    #   @return [Integer]
    #
    class UpdateAbpV1_0_x < Struct.new(
      :f_cnt_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # ABP device object for LoRaWAN specification v1.1
    #
    # @!attribute [rw] f_cnt_start
    #   The FCnt init value.
    #   @return [Integer]
    #
    class UpdateAbpV1_1 < Struct.new(
      :f_cnt_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The new name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] expression_type
    #   The type of value in `Expression`.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The new rule name or topic rule to send messages to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM Role that authorizes the destination.
    #   @return [String]
    #
    class UpdateDestinationRequest < Struct.new(
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateDestinationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] device_registration_state
    #   Device registration state resource type event configuration object
    #   for enabling and disabling wireless gateway topic.
    #   @return [Types::DeviceRegistrationStateResourceTypeEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Proximity resource type event configuration object for enabling and
    #   disabling wireless gateway topic.
    #   @return [Types::ProximityResourceTypeEventConfiguration]
    #
    # @!attribute [rw] join
    #   Join resource type event configuration object for enabling and
    #   disabling wireless device topic.
    #   @return [Types::JoinResourceTypeEventConfiguration]
    #
    # @!attribute [rw] connection_status
    #   Connection status resource type event configuration object for
    #   enabling and disabling wireless gateway topic.
    #   @return [Types::ConnectionStatusResourceTypeEventConfiguration]
    #
    # @!attribute [rw] message_delivery_status
    #   Message delivery status resource type event configuration object for
    #   enabling and disabling wireless device topic.
    #   @return [Types::MessageDeliveryStatusResourceTypeEventConfiguration]
    #
    class UpdateEventConfigurationByResourceTypesRequest < Struct.new(
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateEventConfigurationByResourceTypesResponse < Aws::EmptyStructure; end

    # Object for updating the FPorts information.
    #
    # @!attribute [rw] positioning
    #   Positioning FPorts for the ClockSync, Stream, and GNSS functions.
    #   @return [Types::Positioning]
    #
    # @!attribute [rw] applications
    #   LoRaWAN application, which can be used for geolocation by activating
    #   positioning.
    #   @return [Array<Types::ApplicationConfig>]
    #
    class UpdateFPorts < Struct.new(
      :positioning,
      :applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information used with a FUOTA task.
    #   @return [Types::LoRaWANFuotaTask]
    #
    # @!attribute [rw] firmware_update_image
    #   The S3 URI points to a firmware update image that is to be used with
    #   a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] firmware_update_role
    #   The firmware update role that is to be used with a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] redundancy_percent
    #   The percentage of the added fragments that are redundant. For
    #   example, if the size of the firmware image file is 100 bytes and the
    #   fragment size is 10 bytes, with `RedundancyPercent` set to 50(%),
    #   the final number of encoded fragments is (100 / 10) + (100 / 10 *
    #   50%) = 15.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_size_bytes
    #   The size of each fragment in bytes. This parameter is supported only
    #   for FUOTA tasks with multicast groups.
    #   @return [Integer]
    #
    # @!attribute [rw] fragment_interval_ms
    #   The interval for sending fragments in milliseconds, rounded to the
    #   nearest second.
    #
    #   <note markdown="1"> This interval only determines the timing for when the Cloud sends
    #   down the fragments to yor device. There can be a delay for when your
    #   device will receive these fragments. This delay depends on the
    #   device's class and the communication delay with the cloud.
    #
    #    </note>
    #   @return [Integer]
    #
    class UpdateFuotaTaskRequest < Struct.new(
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :redundancy_percent,
      :fragment_size_bytes,
      :fragment_interval_ms)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateFuotaTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] default_log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_log_options
    #   The list of wireless device log options.
    #   @return [Array<Types::WirelessDeviceLogOption>]
    #
    # @!attribute [rw] wireless_gateway_log_options
    #   The list of wireless gateway log options.
    #   @return [Array<Types::WirelessGatewayLogOption>]
    #
    class UpdateLogLevelsByResourceTypesRequest < Struct.new(
      :default_log_level,
      :wireless_device_log_options,
      :wireless_gateway_log_options)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateLogLevelsByResourceTypesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The LoRaWAN information that is to be used with the multicast group.
    #   @return [Types::LoRaWANMulticast]
    #
    class UpdateMulticastGroupRequest < Struct.new(
      :id,
      :name,
      :description,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateMulticastGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configuration_name
    #   Name of the network analyzer configuration.
    #   @return [String]
    #
    # @!attribute [rw] trace_content
    #   Trace content for your wireless gateway and wireless device
    #   resources.
    #   @return [Types::TraceContent]
    #
    # @!attribute [rw] wireless_devices_to_add
    #   Wireless device resources to add to the network analyzer
    #   configuration. Provide the `WirelessDeviceId` of the resource to add
    #   in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_devices_to_remove
    #   Wireless device resources to remove from the network analyzer
    #   configuration. Provide the `WirelessDeviceId` of the resources to
    #   remove in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways_to_add
    #   Wireless gateway resources to add to the network analyzer
    #   configuration. Provide the `WirelessGatewayId` of the resource to
    #   add in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways_to_remove
    #   Wireless gateway resources to remove from the network analyzer
    #   configuration. Provide the `WirelessGatewayId` of the resources to
    #   remove in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   The description of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] multicast_groups_to_add
    #   Multicast group resources to add to the network analyzer
    #   configuration. Provide the `MulticastGroupId` of the resource to add
    #   in the input array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] multicast_groups_to_remove
    #   Multicast group resources to remove from the network analyzer
    #   configuration. Provide the `MulticastGroupId` of the resource to
    #   remove in the input array.
    #   @return [Array<String>]
    #
    class UpdateNetworkAnalyzerConfigurationRequest < Struct.new(
      :configuration_name,
      :trace_content,
      :wireless_devices_to_add,
      :wireless_devices_to_remove,
      :wireless_gateways_to_add,
      :wireless_gateways_to_remove,
      :description,
      :multicast_groups_to_add,
      :multicast_groups_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateNetworkAnalyzerConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkUpdateAccount]
    #
    # @!attribute [rw] partner_account_id
    #   The ID of the partner account to update.
    #   @return [String]
    #
    # @!attribute [rw] partner_type
    #   The partner type.
    #   @return [String]
    #
    class UpdatePartnerAccountRequest < Struct.new(
      :sidewalk,
      :partner_account_id,
      :partner_type)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdatePartnerAccountResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_identifier
    #   Resource identifier of the resource for which position is updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type of the resource for which position is updated.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   The position information of the resource.
    #   @return [Array<Float>]
    #
    class UpdatePositionRequest < Struct.new(
      :resource_identifier,
      :resource_type,
      :position)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdatePositionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   Resource identifier to opt in for event messaging.
    #   @return [String]
    #
    # @!attribute [rw] identifier_type
    #   Identifier type of the particular resource identifier for event
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] partner_type
    #   Partner type of the resource if the identifier type is
    #   `PartnerAccountId`
    #   @return [String]
    #
    # @!attribute [rw] device_registration_state
    #   Event configuration for the device registration state event.
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Event configuration for the proximity event.
    #   @return [Types::ProximityEventConfiguration]
    #
    # @!attribute [rw] join
    #   Event configuration for the join event.
    #   @return [Types::JoinEventConfiguration]
    #
    # @!attribute [rw] connection_status
    #   Event configuration for the connection status event.
    #   @return [Types::ConnectionStatusEventConfiguration]
    #
    # @!attribute [rw] message_delivery_status
    #   Event configuration for the message delivery status event.
    #   @return [Types::MessageDeliveryStatusEventConfiguration]
    #
    class UpdateResourceEventConfigurationRequest < Struct.new(
      :identifier,
      :identifier_type,
      :partner_type,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateResourceEventConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_identifier
    #   The identifier of the resource for which position information is
    #   updated. It can be the wireless device ID or the wireless gateway
    #   ID, depending on the resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource for which position information is updated,
    #   which can be a wireless device or a wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] geo_json_payload
    #   The position information of the resource, displayed as a JSON
    #   payload. The payload uses the GeoJSON format, which a format that's
    #   used to encode geographic data structures. For more information, see
    #   [GeoJSON][1].
    #
    #
    #
    #   [1]: https://geojson.org/
    #   @return [String]
    #
    class UpdateResourcePositionRequest < Struct.new(
      :resource_identifier,
      :resource_type,
      :geo_json_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateResourcePositionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The identifier of the import task to be updated.
    #   @return [String]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related parameters of the import task to be updated.
    #   @return [Types::SidewalkUpdateImportInfo]
    #
    class UpdateWirelessDeviceImportTaskRequest < Struct.new(
      :id,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateWirelessDeviceImportTaskResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the new destination for the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The updated wireless device's configuration.
    #   @return [Types::LoRaWANUpdateDevice]
    #
    # @!attribute [rw] positioning
    #   FPort values for the GNSS, stream, and ClockSync functions of the
    #   positioning information.
    #   @return [String]
    #
    class UpdateWirelessDeviceRequest < Struct.new(
      :id,
      :destination_name,
      :name,
      :description,
      :lo_ra_wan,
      :positioning)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateWirelessDeviceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the resource to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] join_eui_filters
    #   A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] net_id_filters
    #   A list of NetId values that are used by LoRa gateways to filter the
    #   uplink frames.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_eirp
    #   The MaxEIRP value.
    #   @return [Float]
    #
    class UpdateWirelessGatewayRequest < Struct.new(
      :id,
      :name,
      :description,
      :join_eui_filters,
      :net_id_filters,
      :max_eirp)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateWirelessGatewayResponse < Aws::EmptyStructure; end

    # UpdateWirelessGatewayTaskCreate object.
    #
    # @!attribute [rw] update_data_source
    #   The link to the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] update_data_role
    #   The IAM role used to read data from the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The properties that relate to the LoRaWAN wireless gateway.
    #   @return [Types::LoRaWANUpdateGatewayTaskCreate]
    #
    class UpdateWirelessGatewayTaskCreate < Struct.new(
      :update_data_source,
      :update_data_role,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateWirelessGatewayTaskEntry object.
    #
    # @!attribute [rw] id
    #   The ID of the new wireless gateway task entry.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   The properties that relate to the LoRaWAN wireless gateway.
    #   @return [Types::LoRaWANUpdateGatewayTaskEntry]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    class UpdateWirelessGatewayTaskEntry < Struct.new(
      :id,
      :lo_ra_wan,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input did not meet the specified constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # WCDMA local identification (local ID) information.
    #
    # @!attribute [rw] uarfcndl
    #   WCDMA UTRA Absolute RF Channel Number downlink.
    #   @return [Integer]
    #
    # @!attribute [rw] psc
    #   Primary Scrambling Code.
    #   @return [Integer]
    #
    class WcdmaLocalId < Struct.new(
      :uarfcndl,
      :psc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network Measurement Reports.
    #
    # @!attribute [rw] uarfcndl
    #   WCDMA UTRA Absolute RF Channel Number downlink.
    #   @return [Integer]
    #
    # @!attribute [rw] psc
    #   Primary Scrambling Code.
    #   @return [Integer]
    #
    # @!attribute [rw] utran_cid
    #   UTRAN (UMTS Terrestrial Radio Access Network) Cell Global
    #   Identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] rscp
    #   Received Signal Code Power (signal power) (dBm)
    #   @return [Integer]
    #
    # @!attribute [rw] path_loss
    #   Path loss, or path attenuation, is the reduction in power density of
    #   an electromagnetic wave as it propagates through space.
    #   @return [Integer]
    #
    class WcdmaNmrObj < Struct.new(
      :uarfcndl,
      :psc,
      :utran_cid,
      :rscp,
      :path_loss)
      SENSITIVE = []
      include Aws::Structure
    end

    # WCDMA.
    #
    # @!attribute [rw] mcc
    #   Mobile Country Code.
    #   @return [Integer]
    #
    # @!attribute [rw] mnc
    #   Mobile Network Code.
    #   @return [Integer]
    #
    # @!attribute [rw] lac
    #   Location Area Code.
    #   @return [Integer]
    #
    # @!attribute [rw] utran_cid
    #   UTRAN (UMTS Terrestrial Radio Access Network) Cell Global
    #   Identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] wcdma_local_id
    #   WCDMA local ID information.
    #   @return [Types::WcdmaLocalId]
    #
    # @!attribute [rw] rscp
    #   Received Signal Code Power (signal power) (dBm).
    #   @return [Integer]
    #
    # @!attribute [rw] path_loss
    #   Path loss, or path attenuation, is the reduction in power density of
    #   an electromagnetic wave as it propagates through space.
    #   @return [Integer]
    #
    # @!attribute [rw] wcdma_nmr
    #   WCDMA object for network measurement reports.
    #   @return [Array<Types::WcdmaNmrObj>]
    #
    class WcdmaObj < Struct.new(
      :mcc,
      :mnc,
      :lac,
      :utran_cid,
      :wcdma_local_id,
      :rscp,
      :path_loss,
      :wcdma_nmr)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wi-Fi access point.
    #
    # @!attribute [rw] mac_address
    #   Wi-Fi MAC Address.
    #   @return [String]
    #
    # @!attribute [rw] rss
    #   Received signal strength (dBm) of the WLAN measurement data.
    #   @return [Integer]
    #
    class WiFiAccessPoint < Struct.new(
      :mac_address,
      :rss)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log options for a wireless device event and can be used to set log
    # levels for a specific wireless device event.
    #
    # For a LoRaWAN device, possible events for a log messsage are: `Join`,
    # `Rejoin`, `Downlink_Data`, and `Uplink_Data`. For a Sidewalk device,
    # possible events for a log message are `Registration`, `Downlink_Data`,
    # and `Uplink_Data`.
    #
    # @!attribute [rw] event
    #   The event for a log message, if the log message is tied to a
    #   wireless device.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    class WirelessDeviceEventLogOption < Struct.new(
      :event,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an import task for wireless devices.
    #
    # @!attribute [rw] id
    #   The ID of the wireless device import task.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the wireless device import task.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the Sidewalk destination that that describes the IoT
    #   rule to route messages from the device in the import task that will
    #   be onboarded to AWS IoT Wireless
    #   @return [String]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk-related information of the wireless device import task.
    #   @return [Types::SidewalkGetStartImportInfo]
    #
    # @!attribute [rw] creation_time
    #   The time at which the import task was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status information of the wireless device import task.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that provides additional information about the import
    #   task status.
    #   @return [String]
    #
    # @!attribute [rw] initialized_imported_device_count
    #   The summary information of count of wireless devices that are
    #   waiting for the control log to be added to an import task.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_imported_device_count
    #   The summary information of count of wireless devices in an import
    #   task that are waiting in the queue to be onboarded.
    #   @return [Integer]
    #
    # @!attribute [rw] onboarded_imported_device_count
    #   The summary information of count of wireless devices in an import
    #   task that have been onboarded to the import task.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_imported_device_count
    #   The summary information of count of wireless devices in an import
    #   task that failed to onboarded to the import task.
    #   @return [Integer]
    #
    class WirelessDeviceImportTask < Struct.new(
      :id,
      :arn,
      :destination_name,
      :sidewalk,
      :creation_time,
      :status,
      :status_reason,
      :initialized_imported_device_count,
      :pending_imported_device_count,
      :onboarded_imported_device_count,
      :failed_imported_device_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log options for wireless devices and can be used to set log levels
    # for a specific type of wireless device.
    #
    # @!attribute [rw] type
    #   The wireless device type.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The list of wireless device event log options.
    #   @return [Array<Types::WirelessDeviceEventLogOption>]
    #
    class WirelessDeviceLogOption < Struct.new(
      :type,
      :log_level,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a wireless device's operation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the wireless device reporting the data.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The wireless device type.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] destination_name
    #   The name of the destination to which the device is assigned.
    #   @return [String]
    #
    # @!attribute [rw] last_uplink_received_at
    #   The date and time when the most recent uplink was received.
    #
    #   <note markdown="1"> Theis value is only valid for 3 months.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   LoRaWAN device info.
    #   @return [Types::LoRaWANListDevice]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkListDevice]
    #
    # @!attribute [rw] fuota_device_status
    #   The status of a wireless device in a FUOTA task.
    #   @return [String]
    #
    # @!attribute [rw] multicast_device_status
    #   The status of the wireless device in the multicast group.
    #   @return [String]
    #
    # @!attribute [rw] mc_group_id
    #   Id of the multicast group.
    #   @return [Integer]
    #
    class WirelessDeviceStatistics < Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :destination_name,
      :last_uplink_received_at,
      :lo_ra_wan,
      :sidewalk,
      :fuota_device_status,
      :multicast_device_status,
      :mc_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log options for a wireless gateway event and can be used to set
    # log levels for a specific wireless gateway event.
    #
    # For a LoRaWAN gateway, possible events for a log message are
    # `CUPS_Request` and `Certificate`.
    #
    # @!attribute [rw] event
    #   The event for a log message, if the log message is tied to a
    #   wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    class WirelessGatewayEventLogOption < Struct.new(
      :event,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log options for wireless gateways and can be used to set log
    # levels for a specific type of wireless gateway.
    #
    # @!attribute [rw] type
    #   The wireless gateway type.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message. The log levels can be disabled, or
    #   set to `ERROR` to display less verbose logs containing only error
    #   information, or to `INFO` for more detailed logs.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The list of wireless gateway event log options.
    #   @return [Array<Types::WirelessGatewayEventLogOption>]
    #
    class WirelessGatewayLogOption < Struct.new(
      :type,
      :log_level,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a wireless gateway's operation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the wireless gateway reporting the data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] lo_ra_wan
    #   LoRaWAN gateway info.
    #   @return [Types::LoRaWANGateway]
    #
    # @!attribute [rw] last_uplink_received_at
    #   The date and time when the most recent uplink was received.
    #
    #   <note markdown="1"> This value is only valid for 3 months.
    #
    #    </note>
    #   @return [String]
    #
    class WirelessGatewayStatistics < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :last_uplink_received_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # WirelessMetadata object.
    #
    # @!attribute [rw] lo_ra_wan
    #   LoRaWAN device info.
    #   @return [Types::LoRaWANSendDataToDevice]
    #
    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkSendDataToDevice]
    #
    class WirelessMetadata < Struct.new(
      :lo_ra_wan,
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
