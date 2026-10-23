# frozen_string_literal: true

# This is generated code!

module Aws::IoTWireless
  # This module contains the types returned by client operations.
  module Types

    # <p>ABP device object for LoRaWAN specification v1.0.x</p>
    # @!attribute dev_addr
    #   <p>The DevAddr value.</p>
    #   @return [String]
    # @!attribute session_keys
    #   <p>Session keys for ABP v1.0.x</p>
    #   @return [Types::SessionKeysAbpV10X]
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #   @return [Integer]
    class AbpV10X < Struct.new(
      nil,
      :dev_addr,
      :session_keys,
      :f_cnt_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ABP device object for LoRaWAN specification v1.1</p>
    # @!attribute dev_addr
    #   <p>The DevAddr value.</p>
    #   @return [String]
    # @!attribute session_keys
    #   <p>Session keys for ABP v1.1</p>
    #   @return [Types::SessionKeysAbpV11]
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #   @return [Integer]
    class AbpV11 < Struct.new(
      nil,
      :dev_addr,
      :session_keys,
      :f_cnt_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>User does not have permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The accuracy of the estimated position in meters. An empty value indicates that no
    #             position data is available. A value of ‘0.0’ value indicates that position data is
    #             available. This data corresponds to the position information that you specified instead
    #             of the position computed by solver.</p>
    # @!attribute horizontal_accuracy
    #   <p>The horizontal accuracy of the estimated position, which is the difference between the
    #               estimated location and the actual device location.</p>
    #   @return [Float]
    # @!attribute vertical_accuracy
    #   <p>The vertical accuracy of the estimated position, which is the difference between the
    #               estimated altitude and actual device latitude in meters.</p>
    #   @return [Float]
    class Accuracy < Struct.new(
      nil,
      :horizontal_accuracy,
      :vertical_accuracy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN application configuration, which can be used to perform geolocation.</p>
    # @!attribute f_port
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>Application type, which can be specified to obtain real-time position information of
    #               your LoRaWAN device.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the position data destination that describes the AWS IoT rule that
    #               processes the device's position data for use by AWS IoT Core for LoRaWAN.</p>
    #   @return [String]
    class ApplicationConfig < Struct.new(
      nil,
      :f_port,
      :type,
      :destination_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Types::SidewalkAccountInfo]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class AssociateAwsAccountWithPartnerAccountRequest < Struct.new(
      nil,
      :sidewalk,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Types::SidewalkAccountInfo]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    class AssociateAwsAccountWithPartnerAccountResponse < Struct.new(
      nil,
      :sidewalk,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class AssociateMulticastGroupWithFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :multicast_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateMulticastGroupWithFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #   @return [String]
    class AssociateWirelessDeviceWithFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :wireless_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateWirelessDeviceWithFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #   @return [String]
    class AssociateWirelessDeviceWithMulticastGroupRequest < Struct.new(
      nil,
      :id,
      :wireless_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateWirelessDeviceWithMulticastGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to associate with the wireless device.</p>
    #   @return [String]
    class AssociateWirelessDeviceWithThingRequest < Struct.new(
      nil,
      :id,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateWirelessDeviceWithThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    # @!attribute iot_certificate_id
    #   <p>The ID of the certificate to associate with the wireless gateway.</p>
    #   @return [String]
    class AssociateWirelessGatewayWithCertificateRequest < Struct.new(
      nil,
      :id,
      :iot_certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute iot_certificate_id
    #   <p>The ID of the certificate associated with the wireless gateway.</p>
    #   @return [String]
    class AssociateWirelessGatewayWithCertificateResponse < Struct.new(
      nil,
      :iot_certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing to associate with the wireless gateway.</p>
    #   @return [String]
    class AssociateWirelessGatewayWithThingRequest < Struct.new(
      nil,
      :id,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateWirelessGatewayWithThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Beaconing parameters for configuring the wireless gateways.</p>
    # @!attribute data_rate
    #   <p>The data rate for gateways that are sending the beacons.</p>
    #   @return [Integer]
    # @!attribute frequencies
    #   <p>The frequency list for the gateways to send the beacons.</p>
    #   @return [Array<Integer>]
    class Beaconing < Struct.new(
      nil,
      :data_rate,
      :frequencies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class CancelMulticastGroupSessionRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelMulticastGroupSessionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CDMA local ID information, which corresponds to the local identification parameters of
    #             a CDMA cell.</p>
    # @!attribute pn_offset
    #   <p>Pseudo-noise offset, which is a characteristic of the signal from a cell on a radio
    #               tower.</p>
    #   @return [Integer]
    # @!attribute cdma_channel
    #   <p>CDMA channel information.</p>
    #   @return [Integer]
    class CdmaLocalId < Struct.new(
      nil,
      :pn_offset,
      :cdma_channel,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CDMA object for network measurement reports.</p>
    # @!attribute pn_offset
    #   <p>Pseudo-noise offset, which is a characteristic of the signal from a cell on a radio
    #               tower.</p>
    #   @return [Integer]
    # @!attribute cdma_channel
    #   <p>CDMA channel information.</p>
    #   @return [Integer]
    # @!attribute pilot_power
    #   <p>Transmit power level of the pilot signal, measured in dBm (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute base_station_id
    #   <p>CDMA base station ID (BSID).</p>
    #   @return [Integer]
    class CdmaNmrObj < Struct.new(
      nil,
      :pn_offset,
      :cdma_channel,
      :pilot_power,
      :base_station_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>CDMA (Code-division multiple access) object.</p>
    # @!attribute system_id
    #   <p>CDMA system ID (SID).</p>
    #   @return [Integer]
    # @!attribute network_id
    #   <p>CDMA network ID (NID).</p>
    #   @return [Integer]
    # @!attribute base_station_id
    #   <p>CDMA base station ID (BSID).</p>
    #   @return [Integer]
    # @!attribute registration_zone
    #   <p>CDMA registration zone (RZ).</p>
    #   @return [Integer]
    # @!attribute cdma_local_id
    #   <p>CDMA local identification (local ID) parameters.</p>
    #   @return [Types::CdmaLocalId]
    # @!attribute pilot_power
    #   <p>Transmit power level of the pilot signal, measured in dBm (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute base_lat
    #   <p>CDMA base station latitude in degrees.</p>
    #   @return [Float]
    # @!attribute base_lng
    #   <p>CDMA base station longitude in degrees.</p>
    #   @return [Float]
    # @!attribute cdma_nmr
    #   <p>CDMA network measurement reports.</p>
    #   @return [Array<Types::CdmaNmrObj>]
    class CdmaObj < Struct.new(
      nil,
      :system_id,
      :network_id,
      :base_station_id,
      :registration_zone,
      :cdma_local_id,
      :pilot_power,
      :base_lat,
      :base_lng,
      :cdma_nmr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cell towers that were used to perform the measurements.</p>
    # @!attribute gsm
    #   <p>GSM object information.</p>
    #   @return [Array<Types::GsmObj>]
    # @!attribute wcdma
    #   <p>WCDMA object information.</p>
    #   @return [Array<Types::WcdmaObj>]
    # @!attribute tdscdma
    #   <p>TD-SCDMA object information.</p>
    #   @return [Array<Types::TdscdmaObj>]
    # @!attribute lte
    #   <p>LTE object information.</p>
    #   @return [Array<Types::LteObj>]
    # @!attribute cdma
    #   <p>CDMA object information.</p>
    #   @return [Array<Types::CdmaObj>]
    class CellTowers < Struct.new(
      nil,
      :gsm,
      :wcdma,
      :tdscdma,
      :lte,
      :cdma,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of sidewalk certificates.</p>
    # @!attribute signing_alg
    #   <p>The certificate chain algorithm provided by sidewalk.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the chosen sidewalk certificate.</p>
    #   @return [String]
    class CertificateList < Struct.new(
      nil,
      :signing_alg,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Adding, updating, or deleting the resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Id of the resource in the conflicting operation.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource in the conflicting operation.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection status event configuration object for enabling or disabling topic.</p>
    # @!attribute lo_ra_wan
    #   <p>Connection status event configuration object for enabling or disabling LoRaWAN related
    #               event topics.</p>
    #   @return [Types::LoRaWANConnectionStatusEventNotificationConfigurations]
    # @!attribute wireless_gateway_id_event_topic
    #   <p>Denotes whether the wireless gateway ID connection status event topic is enabled or
    #               disabled.</p>
    #   @return [String]
    class ConnectionStatusEventConfiguration < Struct.new(
      nil,
      :lo_ra_wan,
      :wireless_gateway_id_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection status resource type event configuration object for enabling or disabling
    #             topic.</p>
    # @!attribute lo_ra_wan
    #   <p>Connection status resource type event configuration object for enabling or disabling
    #               LoRaWAN related event topics.</p>
    #   @return [Types::LoRaWANConnectionStatusResourceTypeEventConfiguration]
    class ConnectionStatusResourceTypeEventConfiguration < Struct.new(
      nil,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #   @return [String]
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to attach to the new destination. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    class CreateDestinationRequest < Struct.new(
      nil,
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #   @return [String]
    class CreateDestinationResponse < Struct.new(
      nil,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The device profile information to use to create the device profile.</p>
    #   @return [Types::LoRaWANDeviceProfile]
    # @!attribute tags
    #   <p>The tags to attach to the new device profile. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute sidewalk
    #   <p>The Sidewalk-related information for creating the Sidewalk device profile.</p>
    #   @return [Types::SidewalkCreateDeviceProfile]
    class CreateDeviceProfileRequest < Struct.new(
      nil,
      :name,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the new device profile.</p>
    #   @return [String]
    class CreateDeviceProfileResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    #   @return [Types::LoRaWANFuotaTask]
    # @!attribute firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA
    #               task.</p>
    #   @return [String]
    # @!attribute firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute redundancy_percent
    #   <p>The percentage of the added fragments that are redundant. For example, if the size of
    #               the firmware image file is 100 bytes and the fragment size is 10 bytes, with
    #                   <code>RedundancyPercent</code> set to 50(%), the final number of encoded fragments
    #               is (100 / 10) + (100 / 10 * 50%) = 15.</p>
    #   @return [Integer]
    # @!attribute fragment_size_bytes
    #   <p>The size of each fragment in bytes. This parameter is supported only for FUOTA tasks
    #               with multicast groups.</p>
    #   @return [Integer]
    # @!attribute fragment_interval_ms
    #   <p>The interval for sending fragments in milliseconds, rounded to the nearest
    #               second.</p>
    #            <note>
    #               <p>This interval only determines the timing for when the Cloud sends down the
    #                   fragments to yor device. There can be a delay for when your device will receive
    #                   these fragments. This delay depends on the device's class and the communication
    #                   delay with the cloud.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute descriptor
    #   <p>The descriptor is the metadata about the file that is transferred to the device using
    #               FUOTA, such as the software version. It is a binary field encoded in base64.</p>
    #   @return [String]
    class CreateFuotaTaskRequest < Struct.new(
      nil,
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :tags,
      :redundancy_percent,
      :fragment_size_bytes,
      :fragment_interval_ms,
      :descriptor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The arn of a FUOTA task.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    class CreateFuotaTaskResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the multicast group.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #   @return [Types::LoRaWANMulticast]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateMulticastGroupRequest < Struct.new(
      nil,
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The arn of the multicast group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class CreateMulticastGroupResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    # @!attribute trace_content
    #   <p>Trace content for your wireless devices, gateways, and multicast groups.</p>
    #   @return [Types::TraceContent]
    # @!attribute wireless_devices
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    #   @return [Array<String>]
    # @!attribute wireless_gateways
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute multicast_groups
    #   <p>Multicast Group resources to add to the network analyzer configruation. Provide the
    #                   <code>MulticastGroupId</code> of the resource to add in the input array.</p>
    #   @return [Array<String>]
    class CreateNetworkAnalyzerConfigurationRequest < Struct.new(
      nil,
      :name,
      :trace_content,
      :wireless_devices,
      :wireless_gateways,
      :description,
      :tags,
      :client_request_token,
      :multicast_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    class CreateNetworkAnalyzerConfigurationResponse < Struct.new(
      nil,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The service profile information to use to create the service profile.</p>
    #   @return [Types::LoRaWANServiceProfile]
    # @!attribute tags
    #   <p>The tags to attach to the new service profile. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    class CreateServiceProfileRequest < Struct.new(
      nil,
      :name,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the new service profile.</p>
    #   @return [String]
    class CreateServiceProfileResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The wireless device type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination to assign to the new wireless device.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The device configuration information to use to create the wireless device.</p>
    #   @return [Types::LoRaWANDevice]
    # @!attribute tags
    #   <p>The tags to attach to the new wireless device. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute positioning
    #   <p>FPort values for the GNSS, stream, and ClockSync functions of the positioning
    #               information.</p>
    #   @return [String]
    # @!attribute sidewalk
    #   <p>The device configuration information to use to create the Sidewalk device.</p>
    #   @return [Types::SidewalkCreateWirelessDevice]
    class CreateWirelessDeviceRequest < Struct.new(
      nil,
      :type,
      :name,
      :description,
      :destination_name,
      :client_request_token,
      :lo_ra_wan,
      :tags,
      :positioning,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the new wireless device.</p>
    #   @return [String]
    class CreateWirelessDeviceResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The gateway configuration information to use to create the wireless gateway.</p>
    #   @return [Types::LoRaWANGateway]
    # @!attribute tags
    #   <p>The tags to attach to the new wireless gateway. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    class CreateWirelessGatewayRequest < Struct.new(
      nil,
      :name,
      :description,
      :lo_ra_wan,
      :tags,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the new wireless gateway.</p>
    #   @return [String]
    class CreateWirelessGatewayResponse < Struct.new(
      nil,
      :arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_create_tasks
    #   <p>Whether to automatically create tasks using this task definition for all gateways with
    #               the specified current version. If <code>false</code>, the task must me created by
    #               calling <code>CreateWirelessGatewayTask</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #   @return [String]
    # @!attribute update
    #   <p>Information about the gateways to update.</p>
    #   @return [Types::UpdateWirelessGatewayTaskCreate]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateWirelessGatewayTaskDefinitionRequest < Struct.new(
      nil,
      :auto_create_tasks,
      :name,
      :update,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the new wireless gateway task definition.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    class CreateWirelessGatewayTaskDefinitionResponse < Struct.new(
      nil,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    # @!attribute wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTaskDefinition.</p>
    #   @return [String]
    class CreateWirelessGatewayTaskRequest < Struct.new(
      nil,
      :id,
      :wireless_gateway_task_definition_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTaskDefinition.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class CreateWirelessGatewayTaskResponse < Struct.new(
      nil,
      :wireless_gateway_task_definition_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The device attestation key (DAK) information.</p>
    # @!attribute certificate_id
    #   <p>The certificate ID for the DAK.</p>
    #   @return [String]
    # @!attribute max_allowed_signature
    #   <p>The maximum number of signatures that the DAK can sign. A value of <code>-1</code>
    #               indicates that there's no device limit.</p>
    #   @return [Integer]
    # @!attribute factory_support
    #   <p>Whether factory support has been enabled.</p>
    #   @return [Boolean]
    # @!attribute ap_id
    #   <p>The advertised product ID (APID) that's used for pre-production and production
    #               applications.</p>
    #   @return [String]
    # @!attribute device_type_id
    #   <p>The device type ID that's used for prototyping applications.</p>
    #   @return [String]
    class DakCertificateMetadata < Struct.new(
      nil,
      :certificate_id,
      :max_allowed_signature,
      :factory_support,
      :ap_id,
      :device_type_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource to delete.</p>
    #   @return [String]
    class DeleteDestinationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #   @return [String]
    class DeleteDeviceProfileRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDeviceProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    class DeleteFuotaTaskRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class DeleteMulticastGroupRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteMulticastGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    class DeleteNetworkAnalyzerConfigurationRequest < Struct.new(
      nil,
      :configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteNetworkAnalyzerConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a given wireless device for which downlink messages will be deleted.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>If message ID is <code>"*"</code>, it cleares the entire downlink queue for a given
    #               device, specified by the wireless device ID. Otherwise, the downlink message with the
    #               specified message ID will be deleted.</p>
    #   @return [String]
    # @!attribute wireless_device_type
    #   <p>The wireless device type, which can be either Sidewalk or LoRaWAN.</p>
    #   @return [String]
    class DeleteQueuedMessagesRequest < Struct.new(
      nil,
      :id,
      :message_id,
      :wireless_device_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteQueuedMessagesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #   @return [String]
    class DeleteServiceProfileRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceProfileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the import task to be deleted.</p>
    #   @return [String]
    class DeleteWirelessDeviceImportTaskRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWirelessDeviceImportTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #   @return [String]
    class DeleteWirelessDeviceRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWirelessDeviceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #   @return [String]
    class DeleteWirelessGatewayRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWirelessGatewayResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #   @return [String]
    class DeleteWirelessGatewayTaskDefinitionRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWirelessGatewayTaskDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to delete.</p>
    #   @return [String]
    class DeleteWirelessGatewayTaskRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWirelessGatewayTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the wireless device to deregister from AWS IoT Wireless.</p>
    #   @return [String]
    # @!attribute wireless_device_type
    #   <p>The type of wireless device to deregister from AWS IoT Wireless, which can be
    #                   <code>LoRaWAN</code> or <code>Sidewalk</code>.</p>
    #   @return [String]
    class DeregisterWirelessDeviceRequest < Struct.new(
      nil,
      :identifier,
      :wireless_device_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterWirelessDeviceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a destination.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #   @return [String]
    class Destinations < Struct.new(
      nil,
      :arn,
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a device profile.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the device profile.</p>
    #   @return [String]
    class DeviceProfile < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Device registration state event configuration object for enabling and disabling
    #             relevant topics.</p>
    # @!attribute sidewalk
    #   <p>Device registration state event configuration object for enabling or disabling
    #               Sidewalk related event topics.</p>
    #   @return [Types::SidewalkEventNotificationConfigurations]
    # @!attribute wireless_device_id_event_topic
    #   <p>Denotes whether the wireless device ID device registration state event topic is
    #               enabled or disabled.</p>
    #   @return [String]
    class DeviceRegistrationStateEventConfiguration < Struct.new(
      nil,
      :sidewalk,
      :wireless_device_id_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Device registration state resource type event configuration object for enabling or
    #             disabling topic.</p>
    # @!attribute sidewalk
    #   <p>Device registration resource type state event configuration object for enabling or
    #               disabling Sidewalk related event topics.</p>
    #   @return [Types::SidewalkResourceTypeEventConfiguration]
    class DeviceRegistrationStateResourceTypeEventConfiguration < Struct.new(
      nil,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The required list of dimensions for the metric.</p>
    # @!attribute name
    #   <p>The name of the dimension.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The dimension's value.</p>
    #   @return [String]
    class Dimension < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    #   @return [String]
    # @!attribute partner_type
    #   <p>The partner type.</p>
    #   @return [String]
    class DisassociateAwsAccountFromPartnerAccountRequest < Struct.new(
      nil,
      :partner_account_id,
      :partner_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAwsAccountFromPartnerAccountResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class DisassociateMulticastGroupFromFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :multicast_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateMulticastGroupFromFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #   @return [String]
    class DisassociateWirelessDeviceFromFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :wireless_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWirelessDeviceFromFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #   @return [String]
    class DisassociateWirelessDeviceFromMulticastGroupRequest < Struct.new(
      nil,
      :id,
      :wireless_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWirelessDeviceFromMulticastGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    class DisassociateWirelessDeviceFromThingRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWirelessDeviceFromThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    class DisassociateWirelessGatewayFromCertificateRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWirelessGatewayFromCertificateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    class DisassociateWirelessGatewayFromThingRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateWirelessGatewayFromThingResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The message in the downlink queue.</p>
    # @!attribute message_id
    #   <p> The message ID assigned by IoT Wireless to each downlink message, which helps
    #               identify the message.</p>
    #   @return [String]
    # @!attribute transmit_mode
    #   <p>The transmit mode to use for sending data to the wireless device. This can be
    #                   <code>0</code> for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge
    #               mode).</p>
    #   @return [Integer]
    # @!attribute received_at
    #   <p>The time at which Iot Wireless received the downlink message.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN router info.</p>
    #   @return [Types::LoRaWANSendDataToDevice]
    class DownlinkQueueMessage < Struct.new(
      nil,
      :message_id,
      :transmit_mode,
      :received_at,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event configuration object for a single resource.</p>
    # @!attribute identifier
    #   <p>Resource identifier opted in for event messaging.</p>
    #   @return [String]
    # @!attribute identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #   @return [String]
    # @!attribute partner_type
    #   <p>Partner type of the resource if the identifier type is PartnerAccountId.</p>
    #   @return [String]
    # @!attribute events
    #   <p>Object of all event configurations and the status of the event topics.</p>
    #   @return [Types::EventNotificationItemConfigurations]
    class EventConfigurationItem < Struct.new(
      nil,
      :identifier,
      :identifier_type,
      :partner_type,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object of all event configurations and the status of the event topics.</p>
    # @!attribute device_registration_state
    #   <p>Device registration state event configuration for an event configuration item.</p>
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    # @!attribute proximity
    #   <p>Proximity event configuration for an event configuration item.</p>
    #   @return [Types::ProximityEventConfiguration]
    # @!attribute join
    #   <p>Join event configuration for an event configuration item.</p>
    #   @return [Types::JoinEventConfiguration]
    # @!attribute connection_status
    #   <p>Connection status event configuration for an event configuration item.</p>
    #   @return [Types::ConnectionStatusEventConfiguration]
    # @!attribute message_delivery_status
    #   <p>Message delivery status event configuration for an event configuration item.</p>
    #   @return [Types::MessageDeliveryStatusEventConfiguration]
    class EventNotificationItemConfigurations < Struct.new(
      nil,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of FPort assigned for different LoRaWAN application packages to use</p>
    # @!attribute fuota
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute multicast
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute clock_sync
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute positioning
    #   <p>FPort values for the GNSS, stream, and ClockSync functions of the positioning
    #               information.</p>
    #   @return [Types::Positioning]
    # @!attribute applications
    #   <p>Optional LoRaWAN application information, which can be used for geolocation.</p>
    #   @return [Array<Types::ApplicationConfig>]
    class FPorts < Struct.new(
      nil,
      :fuota,
      :multicast,
      :clock_sync,
      :positioning,
      :applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A FUOTA task.</p>
    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The arn of a FUOTA task.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #   @return [String]
    class FuotaTask < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log options for a FUOTA task event and can be used to set log levels for a
    #             specific FUOTA task event.</p>
    #          <p>For a LoRaWAN FUOTA task, the only possible event for a log message is
    #                 <code>Fuota</code>.</p>
    # @!attribute event
    #   <p>The event for a log message, if the log message is tied to a FUOTA task.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    class FuotaTaskEventLogOption < Struct.new(
      nil,
      :event,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log options for FUOTA tasks and can be used to set log levels for a specific type
    #             of FUOTA task.</p>
    # @!attribute type
    #   <p>The FUOTA task type.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The list of FUOTA task event log options.</p>
    #   @return [Array<Types::FuotaTaskEventLogOption>]
    class FuotaTaskLogOption < Struct.new(
      nil,
      :type,
      :log_level,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gateway list item object that specifies the frequency and list of gateways for which
    #             the downlink message should be sent.</p>
    # @!attribute gateway_id
    #   <p>The ID of the wireless gateways that you want to add to the list of gateways when
    #               sending downlink messages.</p>
    #   @return [String]
    # @!attribute downlink_frequency
    #   <p>The frequency to use for the gateways when sending a downlink message to the wireless
    #               device.</p>
    #   @return [Integer]
    class GatewayListItem < Struct.new(
      nil,
      :gateway_id,
      :downlink_frequency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource to get.</p>
    #   @return [String]
    class GetDestinationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #   @return [String]
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #   @return [String]
    class GetDestinationResponse < Struct.new(
      nil,
      :arn,
      :name,
      :expression,
      :expression_type,
      :description,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #   @return [String]
    class GetDeviceProfileRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the device profile.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>Information about the device profile.</p>
    #   @return [Types::LoRaWANDeviceProfile]
    # @!attribute sidewalk
    #   <p>Information about the Sidewalk parameters in the device profile.</p>
    #   @return [Types::SidewalkGetDeviceProfile]
    class GetDeviceProfileResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :lo_ra_wan,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetEventConfigurationByResourceTypesRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_registration_state
    #   <p>Resource type event configuration for the device registration state event.</p>
    #   @return [Types::DeviceRegistrationStateResourceTypeEventConfiguration]
    # @!attribute proximity
    #   <p>Resource type event configuration for the proximity event.</p>
    #   @return [Types::ProximityResourceTypeEventConfiguration]
    # @!attribute join
    #   <p>Resource type event configuration for the join event.</p>
    #   @return [Types::JoinResourceTypeEventConfiguration]
    # @!attribute connection_status
    #   <p>Resource type event configuration for the connection status event.</p>
    #   @return [Types::ConnectionStatusResourceTypeEventConfiguration]
    # @!attribute message_delivery_status
    #   <p>Resource type event configuration object for the message delivery status event.</p>
    #   @return [Types::MessageDeliveryStatusResourceTypeEventConfiguration]
    class GetEventConfigurationByResourceTypesResponse < Struct.new(
      nil,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    class GetFuotaTaskRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The arn of a FUOTA task.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a FUOTA task.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information returned from getting a FUOTA task.</p>
    #   @return [Types::LoRaWANFuotaTaskGetInfo]
    # @!attribute firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA
    #               task.</p>
    #   @return [String]
    # @!attribute firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Created at timestamp for the resource.</p>
    #   @return [Time]
    # @!attribute redundancy_percent
    #   <p>The percentage of the added fragments that are redundant. For example, if the size of
    #               the firmware image file is 100 bytes and the fragment size is 10 bytes, with
    #                   <code>RedundancyPercent</code> set to 50(%), the final number of encoded fragments
    #               is (100 / 10) + (100 / 10 * 50%) = 15.</p>
    #   @return [Integer]
    # @!attribute fragment_size_bytes
    #   <p>The size of each fragment in bytes. This parameter is supported only for FUOTA tasks
    #               with multicast groups.</p>
    #   @return [Integer]
    # @!attribute fragment_interval_ms
    #   <p>The interval for sending fragments in milliseconds, rounded to the nearest
    #               second.</p>
    #            <note>
    #               <p>This interval only determines the timing for when the Cloud sends down the
    #                   fragments to yor device. There can be a delay for when your device will receive
    #                   these fragments. This delay depends on the device's class and the communication
    #                   delay with the cloud.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute descriptor
    #   <p>The descriptor is the metadata about the file that is transferred to the device using
    #               FUOTA, such as the software version. It is a binary field encoded in base64.</p>
    #   @return [String]
    class GetFuotaTaskResponse < Struct.new(
      nil,
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
      :fragment_interval_ms,
      :descriptor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetLogLevelsByResourceTypesRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    # @!attribute wireless_gateway_log_options
    #   <p>The list of wireless gateway log options.</p>
    #   @return [Array<Types::WirelessGatewayLogOption>]
    # @!attribute wireless_device_log_options
    #   <p>The list of wireless device log options.</p>
    #   @return [Array<Types::WirelessDeviceLogOption>]
    # @!attribute fuota_task_log_options
    #   <p>The list of FUOTA task log options.</p>
    #   @return [Array<Types::FuotaTaskLogOption>]
    class GetLogLevelsByResourceTypesResponse < Struct.new(
      nil,
      :default_log_level,
      :wireless_gateway_log_options,
      :wireless_device_log_options,
      :fuota_task_log_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetMetricConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary_metric
    #   <p>The configuration status of the AWS account for summary metric aggregation.</p>
    #   @return [Types::SummaryMetricConfiguration]
    class GetMetricConfigurationResponse < Struct.new(
      nil,
      :summary_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary_metric_queries
    #   <p>The list of queries to retrieve the summary metrics.</p>
    #   @return [Array<Types::SummaryMetricQuery>]
    class GetMetricsRequest < Struct.new(
      nil,
      :summary_metric_queries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary_metric_query_results
    #   <p>The list of summary metrics that were retrieved.</p>
    #   @return [Array<Types::SummaryMetricQueryResult>]
    class GetMetricsResponse < Struct.new(
      nil,
      :summary_metric_query_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class GetMulticastGroupRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The arn of the multicast group.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the multicast group.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information that is to be returned from getting multicast group
    #               information.</p>
    #   @return [Types::LoRaWANMulticastGet]
    # @!attribute created_at
    #   <p>Created at timestamp for the resource.</p>
    #   @return [Time]
    class GetMulticastGroupResponse < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :description,
      :status,
      :lo_ra_wan,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class GetMulticastGroupSessionRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with the multicast session.</p>
    #   @return [Types::LoRaWANMulticastSession]
    class GetMulticastGroupSessionResponse < Struct.new(
      nil,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    class GetNetworkAnalyzerConfigurationRequest < Struct.new(
      nil,
      :configuration_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute trace_content
    #   <p>Trace content for your wireless devices, gateways, and multicast groups.</p>
    #   @return [Types::TraceContent]
    # @!attribute wireless_devices
    #   <p>List of wireless device resources that have been added to the network analyzer
    #               configuration.</p>
    #   @return [Array<String>]
    # @!attribute wireless_gateways
    #   <p>List of wireless gateway resources that have been added to the network analyzer
    #               configuration.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    # @!attribute multicast_groups
    #   <p>List of multicast group resources that have been added to the network analyzer
    #               configuration.</p>
    #   @return [Array<String>]
    class GetNetworkAnalyzerConfigurationResponse < Struct.new(
      nil,
      :trace_content,
      :wireless_devices,
      :wireless_gateways,
      :description,
      :arn,
      :name,
      :multicast_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    #   @return [String]
    # @!attribute partner_type
    #   <p>The partner type.</p>
    #   @return [String]
    class GetPartnerAccountRequest < Struct.new(
      nil,
      :partner_account_id,
      :partner_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Types::SidewalkAccountInfoWithFingerprint]
    # @!attribute account_linked
    #   <p>Whether the partner account is linked to the AWS account.</p>
    #   @return [Boolean]
    class GetPartnerAccountResponse < Struct.new(
      nil,
      :sidewalk,
      :account_linked,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:account_linked] = false unless options.key?(:account_linked)
        super
      end
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute resource_identifier
    #   <p>Resource identifier used in a position configuration.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type of the resource for which position configuration is retrieved.</p>
    #   @return [String]
    class GetPositionConfigurationRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute solvers
    #   <p>The wrapper for the solver configuration details object.</p>
    #   @return [Types::PositionSolverDetails]
    # @!attribute destination
    #   <p>The position data destination that describes the AWS IoT rule that processes the
    #               device's position data for use by AWS IoT Core for LoRaWAN.</p>
    #   @return [String]
    class GetPositionConfigurationResponse < Struct.new(
      nil,
      :solvers,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wi_fi_access_points
    #   <p>Retrieves an estimated device position by resolving WLAN measurement data. The
    #               position is resolved using HERE's Wi-Fi based solver.</p>
    #   @return [Array<Types::WiFiAccessPoint>]
    # @!attribute cell_towers
    #   <p>Retrieves an estimated device position by resolving measurement data from cellular
    #               radio towers. The position is resolved using HERE's cellular-based solver.</p>
    #   @return [Types::CellTowers]
    # @!attribute ip
    #   <p>Retrieves an estimated device position by resolving the IP address information from
    #               the device. The position is resolved using MaxMind's IP-based solver.</p>
    #   @return [Types::Ip]
    # @!attribute gnss
    #   <p>Retrieves an estimated device position by resolving the global navigation satellite
    #               system (GNSS) scan data. The position is resolved using the GNSS solver powered by LoRa
    #               Cloud.</p>
    #   @return [Types::Gnss]
    # @!attribute timestamp
    #   <p>Optional information that specifies the time when the position information will be
    #               resolved. It uses the Unix timestamp format. If not specified, the time at which the
    #               request was received will be used.</p>
    #   @return [Time]
    class GetPositionEstimateRequest < Struct.new(
      nil,
      :wi_fi_access_points,
      :cell_towers,
      :ip,
      :gnss,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute geo_json_payload
    #   <p>The position information of the resource, displayed as a JSON payload. The payload is
    #               of type blob and uses the <a href="https://geojson.org/">GeoJSON</a> format,
    #               which a format that's used to encode geographic data structures. A sample payload
    #               contains the timestamp information, the WGS84 coordinates of the location, and the
    #               accuracy and confidence level. For more information and examples, see <a href="https://docs.aws.amazon.com/iot/latest/developerguide/location-resolve-console.html">Resolve device location (console)</a>.</p>
    #   @return [String]
    class GetPositionEstimateResponse < Struct.new(
      nil,
      :geo_json_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute resource_identifier
    #   <p>Resource identifier used to retrieve the position information.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type of the resource for which position information is retrieved.</p>
    #   @return [String]
    class GetPositionRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute position
    #   <p>The position information of the resource.</p>
    #   @return [Array<Float>]
    # @!attribute accuracy
    #   <p>The accuracy of the estimated position in meters. An empty value indicates that no
    #               position data is available. A value of ‘0.0’ value indicates that position data is
    #               available. This data corresponds to the position information that you specified instead
    #               of the position computed by solver.</p>
    #   @return [Types::Accuracy]
    # @!attribute solver_type
    #   <p>The type of solver used to identify the position of the resource.</p>
    #   @return [String]
    # @!attribute solver_provider
    #   <p>The vendor of the positioning solver.</p>
    #   @return [String]
    # @!attribute solver_version
    #   <p>The version of the positioning solver.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp at which the device's position was determined.</p>
    #   @return [String]
    class GetPositionResponse < Struct.new(
      nil,
      :position,
      :accuracy,
      :solver_type,
      :solver_provider,
      :solver_version,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    #   @return [String]
    # @!attribute identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #   @return [String]
    # @!attribute partner_type
    #   <p>Partner type of the resource if the identifier type is
    #               <code>PartnerAccountId</code>.</p>
    #   @return [String]
    class GetResourceEventConfigurationRequest < Struct.new(
      nil,
      :identifier,
      :identifier_type,
      :partner_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_registration_state
    #   <p>Event configuration for the device registration state event.</p>
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    # @!attribute proximity
    #   <p>Event configuration for the proximity event.</p>
    #   @return [Types::ProximityEventConfiguration]
    # @!attribute join
    #   <p>Event configuration for the join event.</p>
    #   @return [Types::JoinEventConfiguration]
    # @!attribute connection_status
    #   <p>Event configuration for the connection status event.</p>
    #   @return [Types::ConnectionStatusEventConfiguration]
    # @!attribute message_delivery_status
    #   <p>Event configuration for the message delivery status event.</p>
    #   @return [Types::MessageDeliveryStatusEventConfiguration]
    class GetResourceEventConfigurationResponse < Struct.new(
      nil,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The unique identifier of the resource, which can be the wireless gateway ID, the
    #               wireless device ID, or the FUOTA task ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource, which can be <code>WirelessDevice</code>,
    #                   <code>WirelessGateway</code>, or <code>FuotaTask</code>.</p>
    #   @return [String]
    class GetResourceLogLevelRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    class GetResourceLogLevelResponse < Struct.new(
      nil,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The identifier of the resource for which position information is retrieved. It can be
    #               the wireless device ID or the wireless gateway ID, depending on the resource
    #               type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource for which position information is retrieved, which can be a
    #               wireless device or a wireless gateway.</p>
    #   @return [String]
    class GetResourcePositionRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute geo_json_payload
    #   <p>The position information of the resource, displayed as a JSON payload. The payload
    #               uses the GeoJSON format, which a format that's used to encode geographic data
    #               structures. For more information, see <a href="https://geojson.org/">GeoJSON</a>.</p>
    #   @return [String]
    class GetResourcePositionResponse < Struct.new(
      nil,
      :geo_json_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_type
    #   <p>The service type for which to get endpoint information about. Can be <code>CUPS</code>
    #               for the Configuration and Update Server endpoint, or <code>LNS</code> for the LoRaWAN
    #               Network Server endpoint.</p>
    #   @return [String]
    class GetServiceEndpointRequest < Struct.new(
      nil,
      :service_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_type
    #   <p>The endpoint's service type.</p>
    #   @return [String]
    # @!attribute service_endpoint
    #   <p>The service endpoint value.</p>
    #   @return [String]
    # @!attribute server_trust
    #   <p>The Root CA of the server trust certificate.</p>
    #   @return [String]
    class GetServiceEndpointResponse < Struct.new(
      nil,
      :service_type,
      :service_endpoint,
      :server_trust,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #   @return [String]
    class GetServiceProfileRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the service profile.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>Information about the service profile.</p>
    #   @return [Types::LoRaWANGetServiceProfileInfo]
    class GetServiceProfileResponse < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the import task for which information is requested.</p>
    #   @return [String]
    class GetWirelessDeviceImportTaskRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the import task for which information is retrieved.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the import task.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination that's assigned to the wireless devices in the import
    #               task.</p>
    #   @return [String]
    # @!attribute sidewalk
    #   <p>The Sidewalk-related information about an import task.</p>
    #   @return [Types::SidewalkGetStartImportInfo]
    # @!attribute creation_time
    #   <p>The time at which the import task was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The import task status.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the provided status information, such as a validation error that causes
    #               the import task to fail.</p>
    #   @return [String]
    # @!attribute initialized_imported_device_count
    #   <p>The number of devices in the import task that are waiting for the control log to start
    #               processing.</p>
    #   @return [Integer]
    # @!attribute pending_imported_device_count
    #   <p>The number of devices in the import task that are waiting in the import task queue to
    #               be onboarded.</p>
    #   @return [Integer]
    # @!attribute onboarded_imported_device_count
    #   <p>The number of devices in the import task that have been onboarded to the import
    #               task.</p>
    #   @return [Integer]
    # @!attribute failed_imported_device_count
    #   <p>The number of devices in the import task that failed to onboard to the import
    #               task.</p>
    #   @return [Integer]
    class GetWirelessDeviceImportTaskResponse < Struct.new(
      nil,
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
      :failed_imported_device_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the wireless device to get.</p>
    #   @return [String]
    # @!attribute identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    #   @return [String]
    class GetWirelessDeviceRequest < Struct.new(
      nil,
      :identifier,
      :identifier_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The wireless device type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination to which the device is assigned.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the wireless device.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing associated with the wireless device. The value is empty if a
    #               thing isn't associated with the device.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing associated with the wireless device.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>Information about the wireless device.</p>
    #   @return [Types::LoRaWANDevice]
    # @!attribute sidewalk
    #   <p>Sidewalk device object.</p>
    #   @return [Types::SidewalkDevice]
    # @!attribute positioning
    #   <p>FPort values for the GNSS, stream, and ClockSync functions of the positioning
    #               information.</p>
    #   @return [String]
    class GetWirelessDeviceResponse < Struct.new(
      nil,
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
      :positioning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device for which to get the data.</p>
    #   @return [String]
    class GetWirelessDeviceStatisticsRequest < Struct.new(
      nil,
      :wireless_device_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #   @return [String]
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #            <note>
    #               <p>This value is only valid for 3 months.</p>
    #            </note>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>Information about the wireless device's operations.</p>
    #   @return [Types::LoRaWANDeviceMetadata]
    # @!attribute sidewalk
    #   <p>MetaData for Sidewalk device.</p>
    #   @return [Types::SidewalkDeviceMetadata]
    class GetWirelessDeviceStatisticsResponse < Struct.new(
      nil,
      :wireless_device_id,
      :last_uplink_received_at,
      :lo_ra_wan,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #   @return [String]
    class GetWirelessGatewayCertificateRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute iot_certificate_id
    #   <p>The ID of the certificate associated with the wireless gateway.</p>
    #   @return [String]
    # @!attribute lo_ra_wan_network_server_certificate_id
    #   <p>The ID of the certificate that is associated with the wireless gateway and used for
    #               the LoRaWANNetworkServer endpoint.</p>
    #   @return [String]
    class GetWirelessGatewayCertificateResponse < Struct.new(
      nil,
      :iot_certificate_id,
      :lo_ra_wan_network_server_certificate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #   @return [String]
    class GetWirelessGatewayFirmwareInformationRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lo_ra_wan
    #   <p>Information about the wireless gateway's firmware.</p>
    #   @return [Types::LoRaWANGatewayCurrentVersion]
    class GetWirelessGatewayFirmwareInformationResponse < Struct.new(
      nil,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the wireless gateway to get.</p>
    #   @return [String]
    # @!attribute identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    #   @return [String]
    class GetWirelessGatewayRequest < Struct.new(
      nil,
      :identifier,
      :identifier_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the wireless gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>Information about the wireless gateway.</p>
    #   @return [Types::LoRaWANGateway]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute thing_name
    #   <p>The name of the thing associated with the wireless gateway. The value is empty if a
    #               thing isn't associated with the gateway.</p>
    #   @return [String]
    # @!attribute thing_arn
    #   <p>The ARN of the thing associated with the wireless gateway.</p>
    #   @return [String]
    class GetWirelessGatewayResponse < Struct.new(
      nil,
      :name,
      :id,
      :description,
      :lo_ra_wan,
      :arn,
      :thing_name,
      :thing_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wireless_gateway_id
    #   <p>The ID of the wireless gateway for which to get the data.</p>
    #   @return [String]
    class GetWirelessGatewayStatisticsRequest < Struct.new(
      nil,
      :wireless_gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wireless_gateway_id
    #   <p>The ID of the wireless gateway.</p>
    #   @return [String]
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #            <note>
    #               <p>This value is only valid for 3 months.</p>
    #            </note>
    #   @return [String]
    # @!attribute connection_status
    #   <p>The connection status of the wireless gateway.</p>
    #   @return [String]
    class GetWirelessGatewayStatisticsResponse < Struct.new(
      nil,
      :wireless_gateway_id,
      :last_uplink_received_at,
      :connection_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #   @return [String]
    class GetWirelessGatewayTaskDefinitionRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_create_tasks
    #   <p>Whether to automatically create tasks using this task definition for all gateways with
    #               the specified current version. If <code>false</code>, the task must me created by
    #               calling <code>CreateWirelessGatewayTask</code>.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute update
    #   <p>Information about the gateways to update.</p>
    #   @return [Types::UpdateWirelessGatewayTaskCreate]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    class GetWirelessGatewayTaskDefinitionResponse < Struct.new(
      nil,
      :auto_create_tasks,
      :name,
      :update,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_create_tasks] = false unless options.key?(:auto_create_tasks)
        super
      end
    end

    # @!attribute id
    #   <p>The ID of the resource to get.</p>
    #   @return [String]
    class GetWirelessGatewayTaskRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute wireless_gateway_id
    #   <p>The ID of the wireless gateway.</p>
    #   @return [String]
    # @!attribute wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTask.</p>
    #   @return [String]
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #            <note>
    #               <p>This value is only valid for 3 months.</p>
    #            </note>
    #   @return [String]
    # @!attribute task_created_at
    #   <p>The date and time when the task was created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class GetWirelessGatewayTaskResponse < Struct.new(
      nil,
      :wireless_gateway_id,
      :wireless_gateway_task_definition_id,
      :last_uplink_received_at,
      :task_created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Global identity information.</p>
    # @!attribute lac
    #   <p>Location area code of the global identity.</p>
    #   @return [Integer]
    # @!attribute geran_cid
    #   <p>GERAN (GSM EDGE Radio Access Network) cell global identifier.</p>
    #   @return [Integer]
    class GlobalIdentity < Struct.new(
      nil,
      :lac,
      :geran_cid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Global navigation satellite system (GNSS) object used for positioning.</p>
    # @!attribute payload
    #   <p>Payload that contains the GNSS scan result, or NAV message, in hexadecimal
    #               notation.</p>
    #   @return [String]
    # @!attribute capture_time
    #   <p>Optional parameter that gives an estimate of the time when the GNSS scan information
    #               is taken, in seconds GPS time (GPST). If capture time is not specified, the local server
    #               time is used.</p>
    #   @return [Float]
    # @!attribute capture_time_accuracy
    #   <p>Optional value that gives the capture time estimate accuracy, in seconds. If capture
    #               time accuracy is not specified, default value of 300 is used.</p>
    #   @return [Float]
    # @!attribute assist_position
    #   <p>Optional assistance position information, specified using latitude and longitude
    #               values in degrees. The coordinates are inside the WGS84 reference frame.</p>
    #   @return [Array<Float>]
    # @!attribute assist_altitude
    #   <p>Optional assistance altitude, which is the altitude of the device at capture time,
    #               specified in meters above the WGS84 reference ellipsoid.</p>
    #   @return [Float]
    # @!attribute use2_d_solver
    #   <p>Optional parameter that forces 2D solve, which modifies the positioning algorithm to a
    #               2D solution problem. When this parameter is specified, the assistance altitude should
    #               have an accuracy of at least 10 meters.</p>
    #   @return [Boolean]
    class Gnss < Struct.new(
      nil,
      :payload,
      :capture_time,
      :capture_time_accuracy,
      :assist_position,
      :assist_altitude,
      :use2_d_solver,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:use2_d_solver] = false unless options.key?(:use2_d_solver)
        super
      end
    end

    # <p>GSM local ID information, which corresponds to the local identification parameters of
    #             a GSM cell.</p>
    # @!attribute bsic
    #   <p>GSM base station identity code (BSIC).</p>
    #   @return [Integer]
    # @!attribute bcch
    #   <p>GSM broadcast control channel.</p>
    #   @return [Integer]
    class GsmLocalId < Struct.new(
      nil,
      :bsic,
      :bcch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>GSM object for network measurement reports.</p>
    # @!attribute bsic
    #   <p>GSM base station identity code (BSIC).</p>
    #   @return [Integer]
    # @!attribute bcch
    #   <p>GSM broadcast control channel.</p>
    #   @return [Integer]
    # @!attribute rx_level
    #   <p>Rx level, which is the received signal power, measured in dBm
    #               (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute global_identity
    #   <p>Global identity information of the GSM object.</p>
    #   @return [Types::GlobalIdentity]
    class GsmNmrObj < Struct.new(
      nil,
      :bsic,
      :bcch,
      :rx_level,
      :global_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>GSM object.</p>
    # @!attribute mcc
    #   <p>Mobile Country Code.</p>
    #   @return [Integer]
    # @!attribute mnc
    #   <p>Mobile Network Code.</p>
    #   @return [Integer]
    # @!attribute lac
    #   <p>Location area code.</p>
    #   @return [Integer]
    # @!attribute geran_cid
    #   <p>GERAN (GSM EDGE Radio Access Network) Cell Global Identifier.</p>
    #   @return [Integer]
    # @!attribute gsm_local_id
    #   <p>GSM local identification (local ID) information.</p>
    #   @return [Types::GsmLocalId]
    # @!attribute gsm_timing_advance
    #   <p>Timing advance value, which corresponds to the length of time a signal takes to reach
    #               the base station from a mobile phone.</p>
    #   @return [Integer]
    # @!attribute rx_level
    #   <p>Rx level, which is the received signal power, measured in dBm
    #               (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute gsm_nmr
    #   <p>GSM object for network measurement reports.</p>
    #   @return [Array<Types::GsmNmrObj>]
    class GsmObj < Struct.new(
      nil,
      :mcc,
      :mnc,
      :lac,
      :geran_cid,
      :gsm_local_id,
      :gsm_timing_advance,
      :rx_level,
      :gsm_nmr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Sidewalk device that has been added to an import task.</p>
    # @!attribute sidewalk_manufacturing_sn
    #   <p>The Sidewalk manufacturing serial number (SMSN) of the Sidewalk device.</p>
    #   @return [String]
    # @!attribute onboarding_status
    #   <p>The onboarding status of the Sidewalk device in the import task.</p>
    #   @return [String]
    # @!attribute onboarding_status_reason
    #   <p>The reason for the onboarding status information for the Sidewalk device.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The time at which the status information was last updated.</p>
    #   @return [Time]
    class ImportedSidewalkDevice < Struct.new(
      nil,
      :sidewalk_manufacturing_sn,
      :onboarding_status,
      :onboarding_status_reason,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a wireless device that has been added to an import task.</p>
    # @!attribute sidewalk
    #   <p>The Sidewalk-related information about a device that has been added to an import
    #               task.</p>
    #   @return [Types::ImportedSidewalkDevice]
    class ImportedWirelessDevice < Struct.new(
      nil,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred while processing a request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>IP address used for resolving device location.</p>
    # @!attribute ip_address
    #   <p>IP address information.</p>
    #   @return [String]
    class Ip < Struct.new(
      nil,
      :ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Join event configuration object for enabling or disabling topic.</p>
    # @!attribute lo_ra_wan
    #   <p>Join event configuration object for enabling or disabling LoRaWAN related event
    #               topics.</p>
    #   @return [Types::LoRaWANJoinEventNotificationConfigurations]
    # @!attribute wireless_device_id_event_topic
    #   <p>Denotes whether the wireless device ID join event topic is enabled or disabled.</p>
    #   @return [String]
    class JoinEventConfiguration < Struct.new(
      nil,
      :lo_ra_wan,
      :wireless_device_id_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Join resource type event configuration object for enabling or disabling topic.</p>
    # @!attribute lo_ra_wan
    #   <p>Join resource type event configuration object for enabling or disabling LoRaWAN
    #               related event topics.</p>
    #   @return [Types::LoRaWANJoinResourceTypeEventConfiguration]
    class JoinResourceTypeEventConfiguration < Struct.new(
      nil,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    class ListDestinationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute destination_list
    #   <p>The list of destinations.</p>
    #   @return [Array<Types::Destinations>]
    class ListDestinationsResponse < Struct.new(
      nil,
      :next_token,
      :destination_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute device_profile_type
    #   <p>A filter to list only device profiles that use this type, which can be
    #                   <code>LoRaWAN</code> or <code>Sidewalk</code>.</p>
    #   @return [String]
    class ListDeviceProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :device_profile_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute device_profile_list
    #   <p>The list of device profiles.</p>
    #   @return [Array<Types::DeviceProfile>]
    class ListDeviceProfilesResponse < Struct.new(
      nil,
      :next_token,
      :device_profile_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the import task for which wireless devices are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the devices in the import task.</p>
    #   @return [String]
    class ListDevicesForWirelessDeviceImportTaskRequest < Struct.new(
      nil,
      :id,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <code>null</code> if there are no
    #               additional results.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the Sidewalk destination that describes the IoT rule to route messages
    #               received from devices in an import task that are onboarded to AWS IoT Wireless.</p>
    #   @return [String]
    # @!attribute imported_wireless_device_list
    #   <p>List of wireless devices in an import task and their onboarding status.</p>
    #   @return [Array<Types::ImportedWirelessDevice>]
    class ListDevicesForWirelessDeviceImportTaskResponse < Struct.new(
      nil,
      :next_token,
      :destination_name,
      :imported_wireless_device_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>Resource type to filter event configurations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    class ListEventConfigurationsRequest < Struct.new(
      nil,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute event_configurations_list
    #   <p>Event configurations of all events for a single resource.</p>
    #   @return [Array<Types::EventConfigurationItem>]
    class ListEventConfigurationsResponse < Struct.new(
      nil,
      :next_token,
      :event_configurations_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListFuotaTasksRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute fuota_task_list
    #   <p>Lists the FUOTA tasks registered to your AWS account.</p>
    #   @return [Array<Types::FuotaTask>]
    class ListFuotaTasksResponse < Struct.new(
      nil,
      :next_token,
      :fuota_task_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListMulticastGroupsByFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute multicast_group_list
    #   <p>List of multicast groups associated with a FUOTA task.</p>
    #   @return [Array<Types::MulticastGroupByFuotaTask>]
    class ListMulticastGroupsByFuotaTaskResponse < Struct.new(
      nil,
      :next_token,
      :multicast_group_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListMulticastGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute multicast_group_list
    #   <p>List of multicast groups.</p>
    #   @return [Array<Types::MulticastGroup>]
    class ListMulticastGroupsResponse < Struct.new(
      nil,
      :next_token,
      :multicast_group_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    class ListNetworkAnalyzerConfigurationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute network_analyzer_configuration_list
    #   <p>The list of network analyzer configurations.</p>
    #   @return [Array<Types::NetworkAnalyzerConfigurations>]
    class ListNetworkAnalyzerConfigurationsResponse < Struct.new(
      nil,
      :next_token,
      :network_analyzer_configuration_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListPartnerAccountsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Array<Types::SidewalkAccountInfoWithFingerprint>]
    class ListPartnerAccountsResponse < Struct.new(
      nil,
      :next_token,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute resource_type
    #   <p>Resource type for which position configurations are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    class ListPositionConfigurationsRequest < Struct.new(
      nil,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute position_configuration_list
    #   <p>A list of position configurations.</p>
    #   @return [Array<Types::PositionConfigurationItem>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    class ListPositionConfigurationsResponse < Struct.new(
      nil,
      :position_configuration_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a given wireless device which the downlink message packets are being
    #               sent.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute wireless_device_type
    #   <p>The wireless device type, whic can be either Sidewalk or LoRaWAN.</p>
    #   @return [String]
    class ListQueuedMessagesRequest < Struct.new(
      nil,
      :id,
      :next_token,
      :max_results,
      :wireless_device_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute downlink_queue_messages_list
    #   <p>The messages in the downlink queue.</p>
    #   @return [Array<Types::DownlinkQueueMessage>]
    class ListQueuedMessagesResponse < Struct.new(
      nil,
      :next_token,
      :downlink_queue_messages_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListServiceProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute service_profile_list
    #   <p>The list of service profiles.</p>
    #   @return [Array<Types::ServiceProfile>]
    class ListServiceProfilesResponse < Struct.new(
      nil,
      :next_token,
      :service_profile_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <code>null</code> to receive the first set of results.</p>
    #   @return [String]
    class ListWirelessDeviceImportTasksRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <code>null</code> if there are no
    #               additional results.</p>
    #   @return [String]
    # @!attribute wireless_device_import_task_list
    #   <p>List of import tasks and summary information of onboarding status of devices in each
    #               import task.</p>
    #   @return [Array<Types::WirelessDeviceImportTask>]
    class ListWirelessDeviceImportTasksResponse < Struct.new(
      nil,
      :next_token,
      :wireless_device_import_task_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>A filter to list only the wireless devices that use this destination.</p>
    #   @return [String]
    # @!attribute device_profile_id
    #   <p>A filter to list only the wireless devices that use this device profile.</p>
    #   @return [String]
    # @!attribute service_profile_id
    #   <p>A filter to list only the wireless devices that use this service profile.</p>
    #   @return [String]
    # @!attribute wireless_device_type
    #   <p>A filter to list only the wireless devices that use this wireless device type.</p>
    #   @return [String]
    # @!attribute fuota_task_id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class ListWirelessDevicesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :destination_name,
      :device_profile_id,
      :service_profile_id,
      :wireless_device_type,
      :fuota_task_id,
      :multicast_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute wireless_device_list
    #   <p>The ID of the wireless device.</p>
    #   @return [Array<Types::WirelessDeviceStatistics>]
    class ListWirelessDevicesResponse < Struct.new(
      nil,
      :next_token,
      :wireless_device_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute task_definition_type
    #   <p>A filter to list only the wireless gateway task definitions that use this task
    #               definition type.</p>
    #   @return [String]
    class ListWirelessGatewayTaskDefinitionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :task_definition_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute task_definitions
    #   <p>The list of task definitions.</p>
    #   @return [Array<Types::UpdateWirelessGatewayTaskEntry>]
    class ListWirelessGatewayTaskDefinitionsResponse < Struct.new(
      nil,
      :next_token,
      :task_definitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous
    #               response; otherwise <b>null</b> to receive the first set of
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #   @return [Integer]
    class ListWirelessGatewaysRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>
    #   @return [String]
    # @!attribute wireless_gateway_list
    #   <p>The ID of the wireless gateway.</p>
    #   @return [Array<Types::WirelessGatewayStatistics>]
    class ListWirelessGatewaysResponse < Struct.new(
      nil,
      :next_token,
      :wireless_gateway_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for LoRaWAN connection status resource type event configuration.</p>
    # @!attribute gateway_eui_event_topic
    #   <p>Denotes whether the gateway EUI connection status event topic is enabled or
    #               disabled.</p>
    #   @return [String]
    class LoRaWANConnectionStatusEventNotificationConfigurations < Struct.new(
      nil,
      :gateway_eui_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for LoRaWAN connection status resource type event configuration.</p>
    # @!attribute wireless_gateway_event_topic
    #   <p>Denotes whether the wireless gateway connection status event topic is enabled or
    #               disabled.</p>
    #   @return [String]
    class LoRaWANConnectionStatusResourceTypeEventConfiguration < Struct.new(
      nil,
      :wireless_gateway_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN object for create functions.</p>
    # @!attribute dev_eui
    #   <p>The DevEUI value.</p>
    #   @return [String]
    # @!attribute device_profile_id
    #   <p>The ID of the device profile for the new wireless device.</p>
    #   @return [String]
    # @!attribute service_profile_id
    #   <p>The ID of the service profile.</p>
    #   @return [String]
    # @!attribute otaa_v1_1
    #   <p>OTAA device object for v1.1 for create APIs</p>
    #   @return [Types::OtaaV11]
    # @!attribute otaa_v1_0_x
    #   <p>OTAA device object for create APIs for v1.0.x</p>
    #   @return [Types::OtaaV10X]
    # @!attribute abp_v1_1
    #   <p>ABP device object for create APIs for v1.1</p>
    #   @return [Types::AbpV11]
    # @!attribute abp_v1_0_x
    #   <p>LoRaWAN object for create APIs</p>
    #   @return [Types::AbpV10X]
    # @!attribute f_ports
    #   <p>List of FPort assigned for different LoRaWAN application packages to use</p>
    #   @return [Types::FPorts]
    class LoRaWANDevice < Struct.new(
      nil,
      :dev_eui,
      :device_profile_id,
      :service_profile_id,
      :otaa_v1_1,
      :otaa_v1_0_x,
      :abp_v1_1,
      :abp_v1_0_x,
      :f_ports,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN device metatdata.</p>
    # @!attribute dev_eui
    #   <p>The DevEUI value.</p>
    #   @return [String]
    # @!attribute f_port
    #   <p>The FPort value.</p>
    #   @return [Integer]
    # @!attribute data_rate
    #   <p>The DataRate value.</p>
    #   @return [Integer]
    # @!attribute frequency
    #   <p>The device's channel frequency in Hz.</p>
    #   @return [Integer]
    # @!attribute timestamp
    #   <p>The date and time of the metadata.</p>
    #   @return [String]
    # @!attribute gateways
    #   <p>Information about the gateways accessed by the device.</p>
    #   @return [Array<Types::LoRaWANGatewayMetadata>]
    # @!attribute public_gateways
    #   <p>Information about the LoRaWAN public network accessed by the device.</p>
    #   @return [Array<Types::LoRaWANPublicGatewayMetadata>]
    class LoRaWANDeviceMetadata < Struct.new(
      nil,
      :dev_eui,
      :f_port,
      :data_rate,
      :frequency,
      :timestamp,
      :gateways,
      :public_gateways,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANDeviceProfile object.</p>
    # @!attribute supports_class_b
    #   <p>The SupportsClassB value.</p>
    #   @return [Boolean]
    # @!attribute class_b_timeout
    #   <p>The ClassBTimeout value.</p>
    #   @return [Integer]
    # @!attribute ping_slot_period
    #   <p>The PingSlotPeriod value.</p>
    #   @return [Integer]
    # @!attribute ping_slot_dr
    #   <p>The PingSlotDR value.</p>
    #   @return [Integer]
    # @!attribute ping_slot_freq
    #   <p>The PingSlotFreq value.</p>
    #   @return [Integer]
    # @!attribute supports_class_c
    #   <p>The SupportsClassC value.</p>
    #   @return [Boolean]
    # @!attribute class_c_timeout
    #   <p>The ClassCTimeout value.</p>
    #   @return [Integer]
    # @!attribute mac_version
    #   <p>The MAC version (such as OTAA 1.1 or OTAA 1.0.3) to use with this device
    #               profile.</p>
    #   @return [String]
    # @!attribute reg_params_revision
    #   <p>The version of regional parameters.</p>
    #   @return [String]
    # @!attribute rx_delay1
    #   <p>The RXDelay1 value.</p>
    #   @return [Integer]
    # @!attribute rx_dr_offset1
    #   <p>The RXDROffset1 value.</p>
    #   @return [Integer]
    # @!attribute rx_data_rate2
    #   <p>The RXDataRate2 value.</p>
    #   @return [Integer]
    # @!attribute rx_freq2
    #   <p>The RXFreq2 value.</p>
    #   @return [Integer]
    # @!attribute factory_preset_freqs_list
    #   <p>The list of values that make up the FactoryPresetFreqs value.</p>
    #   @return [Array<Integer>]
    # @!attribute max_eirp
    #   <p>The MaxEIRP value.</p>
    #   @return [Integer]
    # @!attribute max_duty_cycle
    #   <p>The MaxDutyCycle value. It ranges from 0 to 15.</p>
    #   @return [Integer]
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #   @return [String]
    # @!attribute supports_join
    #   <p>The SupportsJoin value.</p>
    #   @return [Boolean]
    # @!attribute supports32_bit_f_cnt
    #   <p>The Supports32BitFCnt value.</p>
    #   @return [Boolean]
    class LoRaWANDeviceProfile < Struct.new(
      nil,
      :supports_class_b,
      :class_b_timeout,
      :ping_slot_period,
      :ping_slot_dr,
      :ping_slot_freq,
      :supports_class_c,
      :class_c_timeout,
      :mac_version,
      :reg_params_revision,
      :rx_delay1,
      :rx_dr_offset1,
      :rx_data_rate2,
      :rx_freq2,
      :factory_preset_freqs_list,
      :max_eirp,
      :max_duty_cycle,
      :rf_region,
      :supports_join,
      :supports32_bit_f_cnt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:supports_class_b] = false unless options.key?(:supports_class_b)
        options[:supports_class_c] = false unless options.key?(:supports_class_c)
        options[:supports32_bit_f_cnt] = false unless options.key?(:supports32_bit_f_cnt)
        super
      end
    end

    # <p>The LoRaWAN information used with a FUOTA task.</p>
    # @!attribute rf_region
    #   <p>Supported RfRegions</p>
    #   @return [String]
    class LoRaWANFuotaTask < Struct.new(
      nil,
      :rf_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LoRaWAN information returned from getting a FUOTA task.</p>
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of a FUOTA task.</p>
    #   @return [Time]
    class LoRaWANFuotaTaskGetInfo < Struct.new(
      nil,
      :rf_region,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANGateway object.</p>
    # @!attribute gateway_eui
    #   <p>The gateway's EUI value.</p>
    #   @return [String]
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #   @return [String]
    # @!attribute join_eui_filters
    #   <p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>
    #   @return [Array<Array<String>>]
    # @!attribute net_id_filters
    #   <p>A list of NetId values that are used by LoRa gateways to filter the uplink
    #               frames.</p>
    #   @return [Array<String>]
    # @!attribute sub_bands
    #   <p>A list of integer indicating which sub bands are supported by LoRa gateway.</p>
    #   @return [Array<Integer>]
    # @!attribute beaconing
    #   <p>Beaconing object information, which consists of the data rate and frequency
    #               parameters.</p>
    #   @return [Types::Beaconing]
    # @!attribute max_eirp
    #   <p>The MaxEIRP value.</p>
    #   @return [Float]
    class LoRaWANGateway < Struct.new(
      nil,
      :gateway_eui,
      :rf_region,
      :join_eui_filters,
      :net_id_filters,
      :sub_bands,
      :beaconing,
      :max_eirp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANGatewayCurrentVersion object.</p>
    # @!attribute current_version
    #   <p>The version of the gateways that should receive the update.</p>
    #   @return [Types::LoRaWANGatewayVersion]
    class LoRaWANGatewayCurrentVersion < Struct.new(
      nil,
      :current_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN gateway metatdata.</p>
    # @!attribute gateway_eui
    #   <p>The gateway's EUI value.</p>
    #   @return [String]
    # @!attribute snr
    #   <p>The SNR value.</p>
    #   @return [Float]
    # @!attribute rssi
    #   <p>The RSSI value.</p>
    #   @return [Float]
    class LoRaWANGatewayMetadata < Struct.new(
      nil,
      :gateway_eui,
      :snr,
      :rssi,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANGatewayVersion object.</p>
    # @!attribute package_version
    #   <p>The version of the wireless gateway firmware.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model number of the wireless gateway.</p>
    #   @return [String]
    # @!attribute station
    #   <p>The basic station version of the wireless gateway.</p>
    #   @return [String]
    class LoRaWANGatewayVersion < Struct.new(
      nil,
      :package_version,
      :model,
      :station,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANGetServiceProfileInfo object.</p>
    # @!attribute ul_rate
    #   <p>The ULRate value.</p>
    #   @return [Integer]
    # @!attribute ul_bucket_size
    #   <p>The ULBucketSize value.</p>
    #   @return [Integer]
    # @!attribute ul_rate_policy
    #   <p>The ULRatePolicy value.</p>
    #   @return [String]
    # @!attribute dl_rate
    #   <p>The DLRate value.</p>
    #   @return [Integer]
    # @!attribute dl_bucket_size
    #   <p>The DLBucketSize value.</p>
    #   @return [Integer]
    # @!attribute dl_rate_policy
    #   <p>The DLRatePolicy value.</p>
    #   @return [String]
    # @!attribute add_gw_metadata
    #   <p>The AddGWMetaData value.</p>
    #   @return [Boolean]
    # @!attribute dev_status_req_freq
    #   <p>The DevStatusReqFreq value.</p>
    #   @return [Integer]
    # @!attribute report_dev_status_battery
    #   <p>The ReportDevStatusBattery value.</p>
    #   @return [Boolean]
    # @!attribute report_dev_status_margin
    #   <p>The ReportDevStatusMargin value.</p>
    #   @return [Boolean]
    # @!attribute dr_min
    #   <p>The DRMin value.</p>
    #   @return [Integer]
    # @!attribute dr_max
    #   <p>The DRMax value.</p>
    #   @return [Integer]
    # @!attribute channel_mask
    #   <p>The ChannelMask value.</p>
    #   @return [String]
    # @!attribute pr_allowed
    #   <p>The PRAllowed value that describes whether passive roaming is allowed.</p>
    #   @return [Boolean]
    # @!attribute hr_allowed
    #   <p>The HRAllowed value that describes whether handover roaming is allowed.</p>
    #   @return [Boolean]
    # @!attribute ra_allowed
    #   <p>The RAAllowed value that describes whether roaming activation is allowed.</p>
    #   @return [Boolean]
    # @!attribute nwk_geo_loc
    #   <p>The NwkGeoLoc value.</p>
    #   @return [Boolean]
    # @!attribute target_per
    #   <p>The TargetPER value.</p>
    #   @return [Integer]
    # @!attribute min_gw_diversity
    #   <p>The MinGwDiversity value.</p>
    #   @return [Integer]
    # @!attribute tx_power_index_min
    #   <p>The Transmit Power Index minimum value.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @return [Integer]
    # @!attribute tx_power_index_max
    #   <p>The Transmit Power Index maximum value.</p>
    #            <p>Default: <code>15</code>
    #            </p>
    #   @return [Integer]
    # @!attribute nb_trans_min
    #   <p>The minimum number of transmissions.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @return [Integer]
    # @!attribute nb_trans_max
    #   <p>The maximum number of transmissions.</p>
    #            <p>Default: <code>3</code>
    #            </p>
    #   @return [Integer]
    class LoRaWANGetServiceProfileInfo < Struct.new(
      nil,
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
      :min_gw_diversity,
      :tx_power_index_min,
      :tx_power_index_max,
      :nb_trans_min,
      :nb_trans_max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:add_gw_metadata] = false unless options.key?(:add_gw_metadata)
        options[:report_dev_status_battery] = false unless options.key?(:report_dev_status_battery)
        options[:report_dev_status_margin] = false unless options.key?(:report_dev_status_margin)
        options[:dr_min] = 0 unless options.key?(:dr_min)
        options[:dr_max] = 0 unless options.key?(:dr_max)
        options[:pr_allowed] = false unless options.key?(:pr_allowed)
        options[:hr_allowed] = false unless options.key?(:hr_allowed)
        options[:ra_allowed] = false unless options.key?(:ra_allowed)
        options[:nwk_geo_loc] = false unless options.key?(:nwk_geo_loc)
        options[:target_per] = 0 unless options.key?(:target_per)
        super
      end
    end

    # <p>Object for LoRaWAN join resource type event configuration.</p>
    # @!attribute dev_eui_event_topic
    #   <p>Denotes whether the Dev EUI join event topic is enabled or disabled.</p>
    #   @return [String]
    class LoRaWANJoinEventNotificationConfigurations < Struct.new(
      nil,
      :dev_eui_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for LoRaWAN join resource type event configuration.</p>
    # @!attribute wireless_device_event_topic
    #   <p>Denotes whether the wireless device join event topic is enabled or disabled.</p>
    #   @return [String]
    class LoRaWANJoinResourceTypeEventConfiguration < Struct.new(
      nil,
      :wireless_device_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN object for list functions.</p>
    # @!attribute dev_eui
    #   <p>The DevEUI value.</p>
    #   @return [String]
    class LoRaWANListDevice < Struct.new(
      nil,
      :dev_eui,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LoRaWAN information that is to be used with the multicast group.</p>
    # @!attribute rf_region
    #   <p>Supported RfRegions</p>
    #   @return [String]
    # @!attribute dl_class
    #   <p>DlClass for LoRaWAM, valid values are ClassB and ClassC.</p>
    #   @return [String]
    # @!attribute participating_gateways
    #   <p>Specify the list of gateways to which you want to send the multicast downlink
    #               messages. The multicast message will be sent to each gateway in the list, with the
    #               transmission interval as the time interval between each message.</p>
    #   @return [Types::ParticipatingGatewaysMulticast]
    class LoRaWANMulticast < Struct.new(
      nil,
      :rf_region,
      :dl_class,
      :participating_gateways,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LoRaWAN information that is to be returned from getting multicast group
    #             information.</p>
    # @!attribute rf_region
    #   <p>Supported RfRegions</p>
    #   @return [String]
    # @!attribute dl_class
    #   <p>DlClass for LoRaWAM, valid values are ClassB and ClassC.</p>
    #   @return [String]
    # @!attribute number_of_devices_requested
    #   <p>Number of devices that are requested to be associated with the multicast group.</p>
    #   @return [Integer]
    # @!attribute number_of_devices_in_group
    #   <p>Number of devices that are associated to the multicast group.</p>
    #   @return [Integer]
    # @!attribute participating_gateways
    #   <p>Specify the list of gateways to which you want to send the multicast downlink
    #               messages. The multicast message will be sent to each gateway in the list, with the
    #               transmission interval as the time interval between each message.</p>
    #   @return [Types::ParticipatingGatewaysMulticast]
    class LoRaWANMulticastGet < Struct.new(
      nil,
      :rf_region,
      :dl_class,
      :number_of_devices_requested,
      :number_of_devices_in_group,
      :participating_gateways,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata information of the LoRaWAN multicast group.</p>
    # @!attribute f_port
    #   <p>The Fport value.</p>
    #   @return [Integer]
    class LoRaWANMulticastMetadata < Struct.new(
      nil,
      :f_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The LoRaWAN information used with the multicast session.</p>
    # @!attribute dl_dr
    #   <p>Downlink data rate.</p>
    #   @return [Integer]
    # @!attribute dl_freq
    #   <p>Downlink frequency.</p>
    #   @return [Integer]
    # @!attribute session_start_time
    #   <p>Timestamp of when the multicast group session is to start.</p>
    #   @return [Time]
    # @!attribute session_timeout
    #   <p>How long before a multicast group session is to timeout.</p>
    #            <note>
    #               <p>We recommend that you provide a timeout value that is a power-of-two (such as 64,
    #                   128, 256). If a non-power-of-two value is provided, it will automatically be rounded
    #                   up to the next supported power-of-two within the allowed range.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute ping_slot_period
    #   <p>The PingSlotPeriod value.</p>
    #   @return [Integer]
    class LoRaWANMulticastSession < Struct.new(
      nil,
      :dl_dr,
      :dl_freq,
      :session_start_time,
      :session_timeout,
      :ping_slot_period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN public gateway metadata.</p>
    # @!attribute provider_net_id
    #   <p>The ID of the LoRaWAN public network provider.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the gateways that are operated by the network provider.</p>
    #   @return [String]
    # @!attribute rssi
    #   <p>The RSSI (received signal strength indicator) value.</p>
    #   @return [Float]
    # @!attribute snr
    #   <p>The SNR (signal to noise ratio) value.</p>
    #   @return [Float]
    # @!attribute rf_region
    #   <p>The frequency band (RFRegion) value.</p>
    #   @return [String]
    # @!attribute dl_allowed
    #   <p>Boolean that indicates whether downlink is allowed using the network.</p>
    #   @return [Boolean]
    class LoRaWANPublicGatewayMetadata < Struct.new(
      nil,
      :provider_net_id,
      :id,
      :rssi,
      :snr,
      :rf_region,
      :dl_allowed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN router info.</p>
    # @!attribute f_port
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute participating_gateways
    #   <p>Choose the gateways that you want to use for the downlink data traffic when the
    #               wireless device is running in class B or class C mode.</p>
    #   @return [Types::ParticipatingGateways]
    class LoRaWANSendDataToDevice < Struct.new(
      nil,
      :f_port,
      :participating_gateways,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANServiceProfile object.</p>
    # @!attribute add_gw_metadata
    #   <p>The AddGWMetaData value.</p>
    #   @return [Boolean]
    # @!attribute dr_min
    #   <p>The DrMin value.</p>
    #   @return [Integer]
    # @!attribute dr_max
    #   <p>The DrMax value.</p>
    #   @return [Integer]
    # @!attribute pr_allowed
    #   <p>The PRAllowed value that describes whether passive roaming is allowed.</p>
    #   @return [Boolean]
    # @!attribute ra_allowed
    #   <p>The RAAllowed value that describes whether roaming activation is allowed.</p>
    #   @return [Boolean]
    # @!attribute tx_power_index_min
    #   <p>The Transmit Power Index minimum.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @return [Integer]
    # @!attribute tx_power_index_max
    #   <p>The Transmit Power Index maximum.</p>
    #            <p>Default: <code>15</code>
    #            </p>
    #   @return [Integer]
    # @!attribute nb_trans_min
    #   <p>The minimum number of transmissions.</p>
    #            <p>Default: <code>0</code>
    #            </p>
    #   @return [Integer]
    # @!attribute nb_trans_max
    #   <p>The maximum number of transmissions.</p>
    #            <p>Default: <code>3</code>
    #            </p>
    #   @return [Integer]
    class LoRaWANServiceProfile < Struct.new(
      nil,
      :add_gw_metadata,
      :dr_min,
      :dr_max,
      :pr_allowed,
      :ra_allowed,
      :tx_power_index_min,
      :tx_power_index_max,
      :nb_trans_min,
      :nb_trans_max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:add_gw_metadata] = false unless options.key?(:add_gw_metadata)
        options[:pr_allowed] = false unless options.key?(:pr_allowed)
        options[:ra_allowed] = false unless options.key?(:ra_allowed)
        super
      end
    end

    # <p>The LoRaWAN information used to start a FUOTA task.</p>
    # @!attribute start_time
    #   <p>Start time of a FUOTA task.</p>
    #   @return [Time]
    class LoRaWANStartFuotaTask < Struct.new(
      nil,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWAN object for update functions.</p>
    # @!attribute device_profile_id
    #   <p>The ID of the device profile for the wireless device.</p>
    #   @return [String]
    # @!attribute service_profile_id
    #   <p>The ID of the service profile.</p>
    #   @return [String]
    # @!attribute abp_v1_1
    #   <p>ABP device object for update APIs for v1.1</p>
    #   @return [Types::UpdateAbpV11]
    # @!attribute abp_v1_0_x
    #   <p>ABP device object for update APIs for v1.0.x</p>
    #   @return [Types::UpdateAbpV10X]
    # @!attribute f_ports
    #   <p>FPorts object for the positioning information of the device.</p>
    #   @return [Types::UpdateFPorts]
    class LoRaWANUpdateDevice < Struct.new(
      nil,
      :device_profile_id,
      :service_profile_id,
      :abp_v1_1,
      :abp_v1_0_x,
      :f_ports,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANUpdateGatewayTaskCreate object.</p>
    # @!attribute update_signature
    #   <p>The signature used to verify the update firmware.</p>
    #   @return [String]
    # @!attribute sig_key_crc
    #   <p>The CRC of the signature private key to check.</p>
    #   @return [Integer]
    # @!attribute current_version
    #   <p>The version of the gateways that should receive the update.</p>
    #   @return [Types::LoRaWANGatewayVersion]
    # @!attribute update_version
    #   <p>The firmware version to update the gateway to.</p>
    #   @return [Types::LoRaWANGatewayVersion]
    class LoRaWANUpdateGatewayTaskCreate < Struct.new(
      nil,
      :update_signature,
      :sig_key_crc,
      :current_version,
      :update_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LoRaWANUpdateGatewayTaskEntry object.</p>
    # @!attribute current_version
    #   <p>The version of the gateways that should receive the update.</p>
    #   @return [Types::LoRaWANGatewayVersion]
    # @!attribute update_version
    #   <p>The firmware version to update the gateway to.</p>
    #   @return [Types::LoRaWANGatewayVersion]
    class LoRaWANUpdateGatewayTaskEntry < Struct.new(
      nil,
      :current_version,
      :update_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LTE local identification (local ID) information.</p>
    # @!attribute pci
    #   <p>Physical cell ID.</p>
    #   @return [Integer]
    # @!attribute earfcn
    #   <p>Evolved universal terrestrial radio access (E-UTRA) absolute radio frequency channel
    #               number (FCN).</p>
    #   @return [Integer]
    class LteLocalId < Struct.new(
      nil,
      :pci,
      :earfcn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LTE object for network measurement reports.</p>
    # @!attribute pci
    #   <p>Physical cell ID.</p>
    #   @return [Integer]
    # @!attribute earfcn
    #   <p>E-UTRA (Evolved universal terrestrial Radio Access) absolute radio frequency channel
    #               Number (EARFCN).</p>
    #   @return [Integer]
    # @!attribute eutran_cid
    #   <p>E-UTRAN (Evolved Universal Terrestrial Radio Access Network) cell global identifier
    #               (EUTRANCID).</p>
    #   @return [Integer]
    # @!attribute rsrp
    #   <p>Signal power of the reference signal received, measured in dBm
    #               (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute rsrq
    #   <p>Signal quality of the reference Signal received, measured in decibels (dB).</p>
    #   @return [Float]
    class LteNmrObj < Struct.new(
      nil,
      :pci,
      :earfcn,
      :eutran_cid,
      :rsrp,
      :rsrq,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:eutran_cid] = 0 unless options.key?(:eutran_cid)
        super
      end
    end

    # <p>LTE object.</p>
    # @!attribute mcc
    #   <p>Mobile Country Code.</p>
    #   @return [Integer]
    # @!attribute mnc
    #   <p>Mobile Network Code.</p>
    #   @return [Integer]
    # @!attribute eutran_cid
    #   <p>E-UTRAN (Evolved Universal Terrestrial Radio Access Network) Cell Global
    #               Identifier.</p>
    #   @return [Integer]
    # @!attribute tac
    #   <p>LTE tracking area code.</p>
    #   @return [Integer]
    # @!attribute lte_local_id
    #   <p>LTE local identification (local ID) information.</p>
    #   @return [Types::LteLocalId]
    # @!attribute lte_timing_advance
    #   <p>LTE timing advance.</p>
    #   @return [Integer]
    # @!attribute rsrp
    #   <p>Signal power of the reference signal received, measured in dBm
    #               (decibel-milliwatts).</p>
    #   @return [Integer]
    # @!attribute rsrq
    #   <p>Signal quality of the reference Signal received, measured in decibels (dB).</p>
    #   @return [Float]
    # @!attribute nr_capable
    #   <p>Parameter that determines whether the LTE object is capable of supporting NR (new
    #               radio).</p>
    #   @return [Boolean]
    # @!attribute lte_nmr
    #   <p>LTE object for network measurement reports.</p>
    #   @return [Array<Types::LteNmrObj>]
    class LteObj < Struct.new(
      nil,
      :mcc,
      :mnc,
      :eutran_cid,
      :tac,
      :lte_local_id,
      :lte_timing_advance,
      :rsrp,
      :rsrq,
      :nr_capable,
      :lte_nmr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:nr_capable] = false unless options.key?(:nr_capable)
        super
      end
    end

    # <p>Message delivery status event configuration object for enabling and disabling relevant
    #             topics.</p>
    # @!attribute sidewalk
    #   <p>
    #               <code>SidewalkEventNotificationConfigurations</code> object, which is the event
    #               configuration object for Sidewalk-related event topics.</p>
    #   @return [Types::SidewalkEventNotificationConfigurations]
    # @!attribute wireless_device_id_event_topic
    #   <p>Denotes whether the wireless device ID message delivery status event topic is enabled
    #               or disabled.</p>
    #   @return [String]
    class MessageDeliveryStatusEventConfiguration < Struct.new(
      nil,
      :sidewalk,
      :wireless_device_id_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Message delivery status resource type event configuration object for enabling or
    #             disabling relevant topic.</p>
    # @!attribute sidewalk
    #   <p>Sidewalk resource type event configuration object for enabling or disabling
    #               topic.</p>
    #   @return [Types::SidewalkResourceTypeEventConfiguration]
    class MessageDeliveryStatusResourceTypeEventConfiguration < Struct.new(
      nil,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The aggregated values of the metric.</p>
    # @!attribute min
    #   <p>The minimum of the values of all data points collected during the aggregation
    #               period.</p>
    #   @return [Float]
    # @!attribute max
    #   <p>The maximum of the values of all the data points collected during the aggregation
    #               period.</p>
    #   @return [Float]
    # @!attribute sum
    #   <p>The sum of the values of all data points collected during the aggregation
    #               period.</p>
    #   @return [Float]
    # @!attribute avg
    #   <p>The average of the values of all data points collected during the aggregation
    #               period.</p>
    #   @return [Float]
    # @!attribute std
    #   <p>The standard deviation of the values of all data points collected during the
    #               aggregation period.</p>
    #   @return [Float]
    # @!attribute p90
    #   <p>The 90th percentile of the values of all data points collected during the aggregation
    #               period.</p>
    #   @return [Float]
    class MetricQueryValue < Struct.new(
      nil,
      :min,
      :max,
      :sum,
      :avg,
      :std,
      :p90,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A multicast group.</p>
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The arn of the multicast group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #   @return [String]
    class MulticastGroup < Struct.new(
      nil,
      :id,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A multicast group that is associated with a FUOTA task.</p>
    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    class MulticastGroupByFuotaTask < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wireless metadata that is to be sent to multicast group.</p>
    # @!attribute lo_ra_wan
    #   <p>The metadata information of the LoRaWAN multicast group.</p>
    #   @return [Types::LoRaWANMulticastMetadata]
    class MulticastWirelessMetadata < Struct.new(
      nil,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network analyzer configurations.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name of the new resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    class NetworkAnalyzerConfigurations < Struct.new(
      nil,
      :arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OTAA device object for v1.0.x</p>
    # @!attribute app_key
    #   <p>The AppKey value.</p>
    #   @return [String]
    # @!attribute app_eui
    #   <p>The AppEUI value. You specify this value when using LoRaWAN versions v1.0.2 or
    #               v1.0.3.</p>
    #   @return [String]
    # @!attribute join_eui
    #   <p>The JoinEUI value. You specify this value instead of the AppEUI when using LoRaWAN
    #               version v1.0.4.</p>
    #   @return [String]
    # @!attribute gen_app_key
    #   <p>The GenAppKey value.</p>
    #   @return [String]
    class OtaaV10X < Struct.new(
      nil,
      :app_key,
      :app_eui,
      :join_eui,
      :gen_app_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OTAA device object for v1.1</p>
    # @!attribute app_key
    #   <p>The AppKey value.</p>
    #   @return [String]
    # @!attribute nwk_key
    #   <p>The NwkKey value.</p>
    #   @return [String]
    # @!attribute join_eui
    #   <p>The JoinEUI value.</p>
    #   @return [String]
    class OtaaV11 < Struct.new(
      nil,
      :app_key,
      :nwk_key,
      :join_eui,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specify the list of gateways to which you want to send downlink data traffic when the
    #             wireless device is running in class B or class C mode.</p>
    # @!attribute downlink_mode
    #   <p>Indicates whether to send the downlink message in sequential mode or concurrent mode,
    #               or to use only the chosen gateways from the previous uplink message transmission.</p>
    #   @return [String]
    # @!attribute gateway_list
    #   <p>The list of gateways that you want to use for sending the downlink data
    #               traffic.</p>
    #   @return [Array<Types::GatewayListItem>]
    # @!attribute transmission_interval
    #   <p>The duration of time for which AWS IoT Core for LoRaWAN will wait before transmitting
    #               the payload to the next gateway.</p>
    #   @return [Integer]
    class ParticipatingGateways < Struct.new(
      nil,
      :downlink_mode,
      :gateway_list,
      :transmission_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specify the list of gateways to which you want to send the multicast downlink
    #             messages. The multicast message will be sent to each gateway in the list, with the
    #             transmission interval as the time interval between each message.</p>
    # @!attribute gateway_list
    #   <p>The list of gateways that you want to use for sending the multicast downlink message.
    #               Each downlink message will be sent to all the gateways in the list in the order that you
    #               provided. If the gateway list is empty, then AWS IoT Core for LoRaWAN chooses the
    #               gateways that were most recently used by the devices to send an uplink message.</p>
    #   @return [Array<String>]
    # @!attribute transmission_interval
    #   <p>The duration of time in milliseconds for which AWS IoT Core for LoRaWAN will wait
    #               before transmitting the multicast payload to the next gateway in the list.</p>
    #   @return [Integer]
    class ParticipatingGatewaysMulticast < Struct.new(
      nil,
      :gateway_list,
      :transmission_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The wrapper for a position configuration.</p>
    # @!attribute resource_identifier
    #   <p>Resource identifier for the position configuration.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type of the resource for the position configuration.</p>
    #   @return [String]
    # @!attribute solvers
    #   <p>The details of the positioning solver object used to compute the location.</p>
    #   @return [Types::PositionSolverDetails]
    # @!attribute destination
    #   <p>The position data destination that describes the AWS IoT rule that processes the
    #               device's position data for use by AWS IoT Core for LoRaWAN.</p>
    #   @return [String]
    class PositionConfigurationItem < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      :solvers,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The wrapper for position solver configurations.</p>
    # @!attribute semtech_gnss
    #   <p>The Semtech GNSS solver configuration object.</p>
    #   @return [Types::SemtechGnssConfiguration]
    class PositionSolverConfigurations < Struct.new(
      nil,
      :semtech_gnss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The wrapper for position solver details.</p>
    # @!attribute semtech_gnss
    #   <p>The Semtech GNSS solver object details.</p>
    #   @return [Types::SemtechGnssDetail]
    class PositionSolverDetails < Struct.new(
      nil,
      :semtech_gnss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The FPorts for the position information.</p>
    # @!attribute clock_sync
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute stream
    #   <p>The Fport value.</p>
    #   @return [Integer]
    # @!attribute gnss
    #   <p>The Fport value.</p>
    #   @return [Integer]
    class Positioning < Struct.new(
      nil,
      :clock_sync,
      :stream,
      :gnss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Proximity event configuration object for enabling and disabling relevant
    #             topics.</p>
    # @!attribute sidewalk
    #   <p>Proximity event configuration object for enabling or disabling Sidewalk related event
    #               topics.</p>
    #   @return [Types::SidewalkEventNotificationConfigurations]
    # @!attribute wireless_device_id_event_topic
    #   <p>Denotes whether the wireless device ID proximity event topic is enabled or
    #               disabled.</p>
    #   @return [String]
    class ProximityEventConfiguration < Struct.new(
      nil,
      :sidewalk,
      :wireless_device_id_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Proximity resource type event configuration object for enabling or disabling
    #             topic.</p>
    # @!attribute sidewalk
    #   <p>Proximity resource type event configuration object for enabling and disabling wireless
    #               device topic.</p>
    #   @return [Types::SidewalkResourceTypeEventConfiguration]
    class ProximityResourceTypeEventConfiguration < Struct.new(
      nil,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute resource_identifier
    #   <p>Resource identifier used to update the position configuration.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type of the resource for which you want to update the position
    #               configuration.</p>
    #   @return [String]
    # @!attribute solvers
    #   <p>The positioning solvers used to update the position configuration of the
    #               resource.</p>
    #   @return [Types::PositionSolverConfigurations]
    # @!attribute destination
    #   <p>The position data destination that describes the AWS IoT rule that processes the
    #               device's position data for use by AWS IoT Core for LoRaWAN.</p>
    #   @return [String]
    class PutPositionConfigurationRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      :solvers,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    class PutPositionConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The unique identifier of the resource, which can be the wireless gateway ID, the
    #               wireless device ID, or the FUOTA task ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource, which can be <code>WirelessDevice</code>,
    #                   <code>WirelessGateway</code>, or <code>FuotaTask</code>.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    class PutResourceLogLevelRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutResourceLogLevelResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ResetAllResourceLogLevelsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ResetAllResourceLogLevelsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The unique identifier of the resource, which can be the wireless gateway ID, the
    #               wireless device ID, or the FUOTA task ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource, which can be <code>WirelessDevice</code>,
    #                   <code>WirelessGateway</code>, or <code>FuotaTask</code>.</p>
    #   @return [String]
    class ResetResourceLogLevelRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ResetResourceLogLevelResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Id of the not found resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the font found resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Semtech GNSS solver configuration.</p>
    # @!attribute status
    #   <p>The status indicating whether the solver is enabled.</p>
    #   @return [String]
    # @!attribute fec
    #   <p>Whether forward error correction is enabled.</p>
    #   @return [String]
    class SemtechGnssConfiguration < Struct.new(
      nil,
      :status,
      :fec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Semtech GNSS solver object.</p>
    # @!attribute provider
    #   <p>The vendor of the solver object.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of positioning solver used.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status indicating whether the solver is enabled.</p>
    #   @return [String]
    # @!attribute fec
    #   <p>Whether forward error correction is enabled.</p>
    #   @return [String]
    class SemtechGnssDetail < Struct.new(
      nil,
      :provider,
      :type,
      :status,
      :fec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    #   @return [String]
    # @!attribute wireless_metadata
    #   <p>Wireless metadata that is to be sent to multicast group.</p>
    #   @return [Types::MulticastWirelessMetadata]
    class SendDataToMulticastGroupRequest < Struct.new(
      nil,
      :id,
      :payload_data,
      :wireless_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>ID of a multicast group message.</p>
    #   @return [String]
    class SendDataToMulticastGroupResponse < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the wireless device to receive the data.</p>
    #   @return [String]
    # @!attribute transmit_mode
    #   <p>The transmit mode to use to send data to the wireless device. Can be: <code>0</code>
    #               for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge mode).</p>
    #   @return [Integer]
    # @!attribute payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    #   @return [String]
    # @!attribute wireless_metadata
    #   <p>Metadata about the message request.</p>
    #   @return [Types::WirelessMetadata]
    class SendDataToWirelessDeviceRequest < Struct.new(
      nil,
      :id,
      :transmit_mode,
      :payload_data,
      :wireless_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message_id
    #   <p>The ID of the message sent to the wireless device.</p>
    #   @return [String]
    class SendDataToWirelessDeviceResponse < Struct.new(
      nil,
      :message_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a service profile.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the service profile.</p>
    #   @return [String]
    class ServiceProfile < Struct.new(
      nil,
      :arn,
      :name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Session keys for ABP v1.1</p>
    # @!attribute nwk_s_key
    #   <p>The NwkSKey value.</p>
    #   @return [String]
    # @!attribute app_s_key
    #   <p>The AppSKey value.</p>
    #   @return [String]
    class SessionKeysAbpV10X < Struct.new(
      nil,
      :nwk_s_key,
      :app_s_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Session keys for ABP v1.1</p>
    # @!attribute f_nwk_s_int_key
    #   <p>The FNwkSIntKey value.</p>
    #   @return [String]
    # @!attribute s_nwk_s_int_key
    #   <p>The SNwkSIntKey value.</p>
    #   @return [String]
    # @!attribute nwk_s_enc_key
    #   <p>The NwkSEncKey value.</p>
    #   @return [String]
    # @!attribute app_s_key
    #   <p>The AppSKey value.</p>
    #   @return [String]
    class SessionKeysAbpV11 < Struct.new(
      nil,
      :f_nwk_s_int_key,
      :s_nwk_s_int_key,
      :nwk_s_enc_key,
      :app_s_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Sidewalk account.</p>
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #   @return [String]
    # @!attribute app_server_private_key
    #   <p>The Sidewalk application server private key.</p>
    #   @return [String]
    class SidewalkAccountInfo < Struct.new(
      nil,
      :amazon_id,
      :app_server_private_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Sidewalk account.</p>
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #   @return [String]
    # @!attribute fingerprint
    #   <p>The fingerprint of the Sidewalk application server private key.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    class SidewalkAccountInfoWithFingerprint < Struct.new(
      nil,
      :amazon_id,
      :fingerprint,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk object for creating a device profile.</p>
    class SidewalkCreateDeviceProfile < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk object for creating a wireless device.</p>
    # @!attribute device_profile_id
    #   <p>The ID of the Sidewalk device profile.</p>
    #   @return [String]
    class SidewalkCreateWirelessDevice < Struct.new(
      nil,
      :device_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk device object.</p>
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #   @return [String]
    # @!attribute sidewalk_id
    #   <p>The sidewalk device identification.</p>
    #   @return [String]
    # @!attribute sidewalk_manufacturing_sn
    #   <p>The Sidewalk manufacturing series number.</p>
    #   @return [String]
    # @!attribute device_certificates
    #   <p>The sidewalk device certificates for Ed25519 and P256r1.</p>
    #   @return [Array<Types::CertificateList>]
    # @!attribute private_keys
    #   <p>The Sidewalk device private keys that will be used for onboarding the device.</p>
    #   @return [Array<Types::CertificateList>]
    # @!attribute device_profile_id
    #   <p>The ID of the Sidewalk device profile.</p>
    #   @return [String]
    # @!attribute certificate_id
    #   <p>The ID of the Sidewalk device profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The Sidewalk device status, such as provisioned or registered.</p>
    #   @return [String]
    class SidewalkDevice < Struct.new(
      nil,
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates,
      :private_keys,
      :device_profile_id,
      :certificate_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>MetaData for Sidewalk device.</p>
    # @!attribute rssi
    #   <p>The RSSI value.</p>
    #   @return [Integer]
    # @!attribute battery_level
    #   <p>Sidewalk device battery level.</p>
    #   @return [String]
    # @!attribute event
    #   <p>Sidewalk device status notification.</p>
    #   @return [String]
    # @!attribute device_state
    #   <p>Device state defines the device status of sidewalk device.</p>
    #   @return [String]
    class SidewalkDeviceMetadata < Struct.new(
      nil,
      :rssi,
      :battery_level,
      :event,
      :device_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <code>SidewalkEventNotificationConfigurations</code> object, which is the event
    #             configuration object for Sidewalk-related event topics.</p>
    # @!attribute amazon_id_event_topic
    #   <p>Denotes whether the Amazon ID event topic is enabled or disabled.</p>
    #   @return [String]
    class SidewalkEventNotificationConfigurations < Struct.new(
      nil,
      :amazon_id_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Gets information about a Sidewalk device profile.</p>
    # @!attribute application_server_public_key
    #   <p>The Sidewalk application server public key.</p>
    #   @return [String]
    # @!attribute qualification_status
    #   <p>Gets information about the certification status of a Sidewalk device profile.</p>
    #   @return [Boolean]
    # @!attribute dak_certificate_metadata
    #   <p>The DAK certificate information of the Sidewalk device profile.</p>
    #   @return [Array<Types::DakCertificateMetadata>]
    class SidewalkGetDeviceProfile < Struct.new(
      nil,
      :application_server_public_key,
      :qualification_status,
      :dak_certificate_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk-related information for devices in an import task that are being
    #             onboarded.</p>
    # @!attribute device_creation_file_list
    #   <p>List of Sidewalk devices that are added to the import task.</p>
    #   @return [Array<String>]
    # @!attribute role
    #   <p>The IAM role that allows AWS IoT Wireless to access the CSV file in the S3
    #               bucket.</p>
    #   @return [String]
    class SidewalkGetStartImportInfo < Struct.new(
      nil,
      :device_creation_file_list,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk object used by list functions.</p>
    # @!attribute amazon_id
    #   <p>The Sidewalk Amazon ID.</p>
    #   @return [String]
    # @!attribute sidewalk_id
    #   <p>The sidewalk device identification.</p>
    #   @return [String]
    # @!attribute sidewalk_manufacturing_sn
    #   <p>The Sidewalk manufacturing series number.</p>
    #   @return [String]
    # @!attribute device_certificates
    #   <p>The sidewalk device certificates for Ed25519 and P256r1.</p>
    #   @return [Array<Types::CertificateList>]
    # @!attribute device_profile_id
    #   <p>Sidewalk object used by list functions.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Sidewalk devices, such as provisioned or registered.</p>
    #   @return [String]
    class SidewalkListDevice < Struct.new(
      nil,
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates,
      :device_profile_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk resource type event configuration object for enabling or disabling
    #             topic.</p>
    # @!attribute wireless_device_event_topic
    #   <p>Denotes whether the wireless device join event topic is enabled or disabled.</p>
    #   @return [String]
    class SidewalkResourceTypeEventConfiguration < Struct.new(
      nil,
      :wireless_device_event_topic,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a Sidewalk router.</p>
    # @!attribute seq
    #   <p>The sequence number.</p>
    #   @return [Integer]
    # @!attribute message_type
    #   <p>Sidewalk device message type. Default value is
    #               <code>CUSTOM_COMMAND_ID_NOTIFY</code>.</p>
    #   @return [String]
    # @!attribute ack_mode_retry_duration_secs
    #   <p>The duration of time in seconds to retry sending the ACK.</p>
    #   @return [Integer]
    class SidewalkSendDataToDevice < Struct.new(
      nil,
      :seq,
      :message_type,
      :ack_mode_retry_duration_secs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an import task created for an individual Sidewalk device.</p>
    # @!attribute sidewalk_manufacturing_sn
    #   <p>The Sidewalk manufacturing serial number (SMSN) of the device added to the import
    #               task.</p>
    #   @return [String]
    class SidewalkSingleStartImportInfo < Struct.new(
      nil,
      :sidewalk_manufacturing_sn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an import task created for bulk provisioning.</p>
    # @!attribute device_creation_file
    #   <p>The CSV file contained in an S3 bucket that's used for adding devices to an import
    #               task.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The IAM role that allows AWS IoT Wireless to access the CSV file in the S3
    #               bucket.</p>
    #   @return [String]
    class SidewalkStartImportInfo < Struct.new(
      nil,
      :device_creation_file,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk update.</p>
    # @!attribute app_server_private_key
    #   <p>The new Sidewalk application server private key.</p>
    #   @return [String]
    class SidewalkUpdateAccount < Struct.new(
      nil,
      :app_server_private_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Sidewalk object information for updating an import task.</p>
    # @!attribute device_creation_file
    #   <p>The CSV file contained in an S3 bucket that's used for appending devices to an
    #               existing import task.</p>
    #   @return [String]
    class SidewalkUpdateImportInfo < Struct.new(
      nil,
      :device_creation_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and
    #               disassociate process.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class StartBulkAssociateWirelessDeviceWithMulticastGroupRequest < Struct.new(
      nil,
      :id,
      :query_string,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartBulkAssociateWirelessDeviceWithMulticastGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and
    #               disassociate process.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest < Struct.new(
      nil,
      :id,
      :query_string,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used to start a FUOTA task.</p>
    #   @return [Types::LoRaWANStartFuotaTask]
    class StartFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with the multicast session.</p>
    #   @return [Types::LoRaWANMulticastSession]
    class StartMulticastGroupSessionRequest < Struct.new(
      nil,
      :id,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartMulticastGroupSessionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_name
    #   <p>The name of the Sidewalk destination that describes the IoT rule to route messages
    #               from the device in the import task that will be onboarded to AWS IoT Wireless.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The name of the wireless device for which an import task is being started.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute sidewalk
    #   <p>The Sidewalk-related parameters for importing a single wireless device.</p>
    #   @return [Types::SidewalkSingleStartImportInfo]
    class StartSingleWirelessDeviceImportTaskRequest < Struct.new(
      nil,
      :destination_name,
      :client_request_token,
      :device_name,
      :tags,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The import task ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the import task.</p>
    #   @return [String]
    class StartSingleWirelessDeviceImportTaskResponse < Struct.new(
      nil,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_name
    #   <p>The name of the Sidewalk destination that describes the IoT rule to route messages
    #               from the devices in the import task that are onboarded to AWS IoT Wireless.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Each resource must have a unique client request token. The client token is used to
    #               implement idempotency. It ensures that the request completes no more than one time. If
    #               you retry a request with the same token and the same parameters, the request will
    #               complete successfully. However, if you try to create a new resource using the same token
    #               but different parameters, an HTTP 409 conflict occurs. If you omit this value, AWS SDKs
    #               will automatically generate a unique client request. For more information about
    #               idempotency, see <a href="https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html">Ensuring idempotency in Amazon
    #                   EC2 API requests</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to
    #               manage a resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute sidewalk
    #   <p>The Sidewalk-related parameters for importing wireless devices that need to be
    #               provisioned in bulk.</p>
    #   @return [Types::SidewalkStartImportInfo]
    class StartWirelessDeviceImportTaskRequest < Struct.new(
      nil,
      :destination_name,
      :client_request_token,
      :tags,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The import task ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the import task.</p>
    #   @return [String]
    class StartWirelessDeviceImportTaskResponse < Struct.new(
      nil,
      :id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of summary metrics.</p>
    # @!attribute status
    #   <p>The status of the configuration of summary metrics.</p>
    #   @return [String]
    class SummaryMetricConfiguration < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary metric query object.</p>
    # @!attribute query_id
    #   <p>The id of the summary metric query.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>The dimensions of the summary metric.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute aggregation_period
    #   <p>The aggregation period of the summary metric.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The start timestamp for the summary metric query.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The end timestamp for the summary metric query.</p>
    #   @return [Time]
    class SummaryMetricQuery < Struct.new(
      nil,
      :query_id,
      :metric_name,
      :dimensions,
      :aggregation_period,
      :start_timestamp,
      :end_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of the summary metrics aggregation operation.</p>
    # @!attribute query_id
    #   <p>The ID of the summary metric results query operation.</p>
    #   @return [String]
    # @!attribute query_status
    #   <p>The status of the summary metric query result.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error message for the summary metric query result.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>The name of the summary metric query result.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>The dimensions of the metric.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute aggregation_period
    #   <p>The aggregation period of the metric.</p>
    #   @return [String]
    # @!attribute start_timestamp
    #   <p>The start timestamp for the summary metric query.</p>
    #   @return [Time]
    # @!attribute end_timestamp
    #   <p>The end timestamp for the summary metric query.</p>
    #   @return [Time]
    # @!attribute timestamps
    #   <p>The timestamp of each aggregation result.</p>
    #   @return [Array<Time>]
    # @!attribute values
    #   <p>The list of aggregated summary metric query results.</p>
    #   @return [Array<Types::MetricQueryValue>]
    # @!attribute unit
    #   <p>The units of measurement to be used for interpreting the aggregation result.</p>
    #   @return [String]
    class SummaryMetricQueryResult < Struct.new(
      nil,
      :query_id,
      :query_status,
      :error,
      :metric_name,
      :dimensions,
      :aggregation_period,
      :start_timestamp,
      :end_timestamp,
      :timestamps,
      :values,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A simple label consisting of a customer-defined key-value pair</p>
    # @!attribute key
    #   <p>The tag's key value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Adds to or modifies the tags of the given resource. Tags are metadata that you can use
    #               to manage a resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>TD-SCDMA local identification (local Id) information.</p>
    # @!attribute uarfcn
    #   <p>TD-SCDMA UTRA (Universal Terrestrial Radio Access Network) absolute RF channel number
    #               (UARFCN).</p>
    #   @return [Integer]
    # @!attribute cell_params
    #   <p>Cell parameters for TD-SCDMA.</p>
    #   @return [Integer]
    class TdscdmaLocalId < Struct.new(
      nil,
      :uarfcn,
      :cell_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>TD-SCDMA object for network measurement reports.</p>
    # @!attribute uarfcn
    #   <p>TD-SCDMA UTRA (Universal Terrestrial Radio Access Network) absolute RF channel
    #               number.</p>
    #   @return [Integer]
    # @!attribute cell_params
    #   <p>Cell parameters for TD-SCDMA network measurement reports object.</p>
    #   @return [Integer]
    # @!attribute utran_cid
    #   <p>UTRAN (UMTS Terrestrial Radio Access Network) cell global identifier.</p>
    #   @return [Integer]
    # @!attribute rscp
    #   <p>Code power of the received signal, measured in decibel-milliwatts (dBm).</p>
    #   @return [Integer]
    # @!attribute path_loss
    #   <p>Path loss, or path attenuation, is the reduction in power density of an
    #               electromagnetic wave as it propagates through space.</p>
    #   @return [Integer]
    class TdscdmaNmrObj < Struct.new(
      nil,
      :uarfcn,
      :cell_params,
      :utran_cid,
      :rscp,
      :path_loss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>TD-SCDMA object.</p>
    # @!attribute mcc
    #   <p>Mobile Country Code.</p>
    #   @return [Integer]
    # @!attribute mnc
    #   <p>Mobile Network Code.</p>
    #   @return [Integer]
    # @!attribute lac
    #   <p>Location Area Code.</p>
    #   @return [Integer]
    # @!attribute utran_cid
    #   <p>UTRAN (UMTS Terrestrial Radio Access Network) Cell Global Identifier.</p>
    #   @return [Integer]
    # @!attribute tdscdma_local_id
    #   <p>TD-SCDMA local identification (local ID) information.</p>
    #   @return [Types::TdscdmaLocalId]
    # @!attribute tdscdma_timing_advance
    #   <p>TD-SCDMA Timing advance.</p>
    #   @return [Integer]
    # @!attribute rscp
    #   <p>Signal power of the received signal (Received Signal Code Power), measured in
    #               decibel-milliwatts (dBm).</p>
    #   @return [Integer]
    # @!attribute path_loss
    #   <p>Path loss, or path attenuation, is the reduction in power density of an
    #               electromagnetic wave as it propagates through space.</p>
    #   @return [Integer]
    # @!attribute tdscdma_nmr
    #   <p>TD-SCDMA object for network measurement reports.</p>
    #   @return [Array<Types::TdscdmaNmrObj>]
    class TdscdmaObj < Struct.new(
      nil,
      :mcc,
      :mnc,
      :lac,
      :utran_cid,
      :tdscdma_local_id,
      :tdscdma_timing_advance,
      :rscp,
      :path_loss,
      :tdscdma_nmr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the wireless device to test.</p>
    #   @return [String]
    class TestWirelessDeviceRequest < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute result
    #   <p>The result returned by the test.</p>
    #   @return [String]
    class TestWirelessDeviceResponse < Struct.new(
      nil,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because it exceeded the allowed API request rate.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because the resource can't have any more tags.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>Name of the resource that exceeds maximum number of tags allowed.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Trace content for your wireless devices, gateways, and multicast groups.</p>
    # @!attribute wireless_device_frame_info
    #   <p>
    #               <code>FrameInfo</code> of your wireless device resources for the trace content. Use
    #               FrameInfo to debug the communication between your LoRaWAN end devices and the network
    #               server.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    # @!attribute multicast_frame_info
    #   <p>
    #               <code>FrameInfo</code> of your multicast group resources for the trace content. Use
    #               FrameInfo to debug the multicast communication between your multicast groups and the
    #               network server.</p>
    #   @return [String]
    class TraceContent < Struct.new(
      nil,
      :wireless_device_frame_info,
      :log_level,
      :multicast_frame_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ABP device object for LoRaWAN specification v1.0.x</p>
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #   @return [Integer]
    class UpdateAbpV10X < Struct.new(
      nil,
      :f_cnt_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ABP device object for LoRaWAN specification v1.1</p>
    # @!attribute f_cnt_start
    #   <p>The FCnt init value.</p>
    #   @return [Integer]
    class UpdateAbpV11 < Struct.new(
      nil,
      :f_cnt_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The new name of the resource.</p>
    #   @return [String]
    # @!attribute expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The new rule name or topic rule to send messages to.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description of the resource.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #   @return [String]
    class UpdateDestinationRequest < Struct.new(
      nil,
      :name,
      :expression_type,
      :expression,
      :description,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDestinationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_registration_state
    #   <p>Device registration state resource type event configuration object for enabling and
    #               disabling wireless gateway topic.</p>
    #   @return [Types::DeviceRegistrationStateResourceTypeEventConfiguration]
    # @!attribute proximity
    #   <p>Proximity resource type event configuration object for enabling and disabling wireless
    #               gateway topic.</p>
    #   @return [Types::ProximityResourceTypeEventConfiguration]
    # @!attribute join
    #   <p>Join resource type event configuration object for enabling and disabling wireless
    #               device topic.</p>
    #   @return [Types::JoinResourceTypeEventConfiguration]
    # @!attribute connection_status
    #   <p>Connection status resource type event configuration object for enabling and disabling
    #               wireless gateway topic.</p>
    #   @return [Types::ConnectionStatusResourceTypeEventConfiguration]
    # @!attribute message_delivery_status
    #   <p>Message delivery status resource type event configuration object for enabling and
    #               disabling wireless device topic.</p>
    #   @return [Types::MessageDeliveryStatusResourceTypeEventConfiguration]
    class UpdateEventConfigurationByResourceTypesRequest < Struct.new(
      nil,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateEventConfigurationByResourceTypesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for updating the FPorts information.</p>
    # @!attribute positioning
    #   <p>Positioning FPorts for the ClockSync, Stream, and GNSS functions.</p>
    #   @return [Types::Positioning]
    # @!attribute applications
    #   <p>LoRaWAN application, which can be used for geolocation by activating
    #               positioning.</p>
    #   @return [Array<Types::ApplicationConfig>]
    class UpdateFPorts < Struct.new(
      nil,
      :positioning,
      :applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of a FUOTA task.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a FUOTA task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    #   @return [Types::LoRaWANFuotaTask]
    # @!attribute firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA
    #               task.</p>
    #   @return [String]
    # @!attribute firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #   @return [String]
    # @!attribute redundancy_percent
    #   <p>The percentage of the added fragments that are redundant. For example, if the size of
    #               the firmware image file is 100 bytes and the fragment size is 10 bytes, with
    #                   <code>RedundancyPercent</code> set to 50(%), the final number of encoded fragments
    #               is (100 / 10) + (100 / 10 * 50%) = 15.</p>
    #   @return [Integer]
    # @!attribute fragment_size_bytes
    #   <p>The size of each fragment in bytes. This parameter is supported only for FUOTA tasks
    #               with multicast groups.</p>
    #   @return [Integer]
    # @!attribute fragment_interval_ms
    #   <p>The interval for sending fragments in milliseconds, rounded to the nearest
    #               second.</p>
    #            <note>
    #               <p>This interval only determines the timing for when the Cloud sends down the
    #                   fragments to yor device. There can be a delay for when your device will receive
    #                   these fragments. This delay depends on the device's class and the communication
    #                   delay with the cloud.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute descriptor
    #   <p>The descriptor is the metadata about the file that is transferred to the device using
    #               FUOTA, such as the software version. It is a binary field encoded in base64.</p>
    #   @return [String]
    class UpdateFuotaTaskRequest < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :redundancy_percent,
      :fragment_size_bytes,
      :fragment_interval_ms,
      :descriptor,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateFuotaTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    # @!attribute fuota_task_log_options
    #   <p>The list of FUOTA task log options.</p>
    #   @return [Array<Types::FuotaTaskLogOption>]
    # @!attribute wireless_device_log_options
    #   <p>The list of wireless device log options.</p>
    #   @return [Array<Types::WirelessDeviceLogOption>]
    # @!attribute wireless_gateway_log_options
    #   <p>The list of wireless gateway log options.</p>
    #   @return [Array<Types::WirelessGatewayLogOption>]
    class UpdateLogLevelsByResourceTypesRequest < Struct.new(
      nil,
      :default_log_level,
      :fuota_task_log_options,
      :wireless_device_log_options,
      :wireless_gateway_log_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateLogLevelsByResourceTypesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary_metric
    #   <p>The value to be used to set summary metric configuration.</p>
    #   @return [Types::SummaryMetricConfiguration]
    class UpdateMetricConfigurationRequest < Struct.new(
      nil,
      :summary_metric,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateMetricConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the multicast group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the multicast group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #   @return [Types::LoRaWANMulticast]
    class UpdateMulticastGroupRequest < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateMulticastGroupResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #   @return [String]
    # @!attribute trace_content
    #   <p>Trace content for your wireless devices, gateways, and multicast groups.</p>
    #   @return [Types::TraceContent]
    # @!attribute wireless_devices_to_add
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    #   @return [Array<String>]
    # @!attribute wireless_devices_to_remove
    #   <p>Wireless device resources to remove from the network analyzer configuration. Provide
    #               the <code>WirelessDeviceId</code> of the resources to remove in the input array.</p>
    #   @return [Array<String>]
    # @!attribute wireless_gateways_to_add
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the
    #                   <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    #   @return [Array<String>]
    # @!attribute wireless_gateways_to_remove
    #   <p>Wireless gateway resources to remove from the network analyzer configuration. Provide
    #               the <code>WirelessGatewayId</code> of the resources to remove in the input array.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>The description of the new resource.</p>
    #   @return [String]
    # @!attribute multicast_groups_to_add
    #   <p>Multicast group resources to add to the network analyzer configuration. Provide the
    #                   <code>MulticastGroupId</code> of the resource to add in the input array.</p>
    #   @return [Array<String>]
    # @!attribute multicast_groups_to_remove
    #   <p>Multicast group resources to remove from the network analyzer configuration. Provide
    #               the <code>MulticastGroupId</code> of the resources to remove in the input array.</p>
    #   @return [Array<String>]
    class UpdateNetworkAnalyzerConfigurationRequest < Struct.new(
      nil,
      :configuration_name,
      :trace_content,
      :wireless_devices_to_add,
      :wireless_devices_to_remove,
      :wireless_gateways_to_add,
      :wireless_gateways_to_remove,
      :description,
      :multicast_groups_to_add,
      :multicast_groups_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateNetworkAnalyzerConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Types::SidewalkUpdateAccount]
    # @!attribute partner_account_id
    #   <p>The ID of the partner account to update.</p>
    #   @return [String]
    # @!attribute partner_type
    #   <p>The partner type.</p>
    #   @return [String]
    class UpdatePartnerAccountRequest < Struct.new(
      nil,
      :sidewalk,
      :partner_account_id,
      :partner_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdatePartnerAccountResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    # @!attribute resource_identifier
    #   <p>Resource identifier of the resource for which position is updated.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Resource type of the resource for which position is updated.</p>
    #   @return [String]
    # @!attribute position
    #   <p>The position information of the resource.</p>
    #   @return [Array<Float>]
    class UpdatePositionRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      :position,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This operation is no longer supported.
    class UpdatePositionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    #   @return [String]
    # @!attribute identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #   @return [String]
    # @!attribute partner_type
    #   <p>Partner type of the resource if the identifier type is
    #               <code>PartnerAccountId</code>
    #            </p>
    #   @return [String]
    # @!attribute device_registration_state
    #   <p>Event configuration for the device registration state event.</p>
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    # @!attribute proximity
    #   <p>Event configuration for the proximity event.</p>
    #   @return [Types::ProximityEventConfiguration]
    # @!attribute join
    #   <p>Event configuration for the join event.</p>
    #   @return [Types::JoinEventConfiguration]
    # @!attribute connection_status
    #   <p>Event configuration for the connection status event.</p>
    #   @return [Types::ConnectionStatusEventConfiguration]
    # @!attribute message_delivery_status
    #   <p>Event configuration for the message delivery status event.</p>
    #   @return [Types::MessageDeliveryStatusEventConfiguration]
    class UpdateResourceEventConfigurationRequest < Struct.new(
      nil,
      :identifier,
      :identifier_type,
      :partner_type,
      :device_registration_state,
      :proximity,
      :join,
      :connection_status,
      :message_delivery_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateResourceEventConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The identifier of the resource for which position information is updated. It can be
    #               the wireless device ID or the wireless gateway ID, depending on the resource
    #               type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource for which position information is updated, which can be a
    #               wireless device or a wireless gateway.</p>
    #   @return [String]
    # @!attribute geo_json_payload
    #   <p>The position information of the resource, displayed as a JSON payload. The payload
    #               uses the GeoJSON format, which a format that's used to encode geographic data
    #               structures. For more information, see <a href="https://geojson.org/">GeoJSON</a>.</p>
    #   @return [String]
    class UpdateResourcePositionRequest < Struct.new(
      nil,
      :resource_identifier,
      :resource_type,
      :geo_json_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateResourcePositionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the import task to be updated.</p>
    #   @return [String]
    # @!attribute sidewalk
    #   <p>The Sidewalk-related parameters of the import task to be updated.</p>
    #   @return [Types::SidewalkUpdateImportInfo]
    class UpdateWirelessDeviceImportTaskRequest < Struct.new(
      nil,
      :id,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWirelessDeviceImportTaskResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the new destination for the device.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name of the resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>A new description of the resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The updated wireless device's configuration.</p>
    #   @return [Types::LoRaWANUpdateDevice]
    # @!attribute positioning
    #   <p>FPort values for the GNSS, stream, and ClockSync functions of the positioning
    #               information.</p>
    #   @return [String]
    class UpdateWirelessDeviceRequest < Struct.new(
      nil,
      :id,
      :destination_name,
      :name,
      :description,
      :lo_ra_wan,
      :positioning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWirelessDeviceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the resource to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name of the resource.</p>
    #            <note>
    #               <p>The following special characters aren't accepted: <code><>^#~$</code>
    #               </p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>A new description of the resource.</p>
    #   @return [String]
    # @!attribute join_eui_filters
    #   <p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>
    #   @return [Array<Array<String>>]
    # @!attribute net_id_filters
    #   <p>A list of NetId values that are used by LoRa gateways to filter the uplink
    #               frames.</p>
    #   @return [Array<String>]
    # @!attribute max_eirp
    #   <p>The MaxEIRP value.</p>
    #   @return [Float]
    class UpdateWirelessGatewayRequest < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :join_eui_filters,
      :net_id_filters,
      :max_eirp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWirelessGatewayResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateWirelessGatewayTaskCreate object.</p>
    # @!attribute update_data_source
    #   <p>The link to the S3 bucket.</p>
    #   @return [String]
    # @!attribute update_data_role
    #   <p>The IAM role used to read data from the S3 bucket.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The properties that relate to the LoRaWAN wireless gateway.</p>
    #   @return [Types::LoRaWANUpdateGatewayTaskCreate]
    class UpdateWirelessGatewayTaskCreate < Struct.new(
      nil,
      :update_data_source,
      :update_data_role,
      :lo_ra_wan,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>UpdateWirelessGatewayTaskEntry object.</p>
    # @!attribute id
    #   <p>The ID of the new wireless gateway task entry.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>The properties that relate to the LoRaWAN wireless gateway.</p>
    #   @return [Types::LoRaWANUpdateGatewayTaskEntry]
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    class UpdateWirelessGatewayTaskEntry < Struct.new(
      nil,
      :id,
      :lo_ra_wan,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input did not meet the specified constraints.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WCDMA local identification (local ID) information.</p>
    # @!attribute uarfcndl
    #   <p>WCDMA UTRA Absolute RF Channel Number downlink.</p>
    #   @return [Integer]
    # @!attribute psc
    #   <p>Primary Scrambling Code.</p>
    #   @return [Integer]
    class WcdmaLocalId < Struct.new(
      nil,
      :uarfcndl,
      :psc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network Measurement Reports.</p>
    # @!attribute uarfcndl
    #   <p>WCDMA UTRA Absolute RF Channel Number downlink.</p>
    #   @return [Integer]
    # @!attribute psc
    #   <p>Primary Scrambling Code.</p>
    #   @return [Integer]
    # @!attribute utran_cid
    #   <p>UTRAN (UMTS Terrestrial Radio Access Network) Cell Global Identifier.</p>
    #   @return [Integer]
    # @!attribute rscp
    #   <p>Received Signal Code Power (signal power) (dBm)</p>
    #   @return [Integer]
    # @!attribute path_loss
    #   <p>Path loss, or path attenuation, is the reduction in power density of an
    #               electromagnetic wave as it propagates through space.</p>
    #   @return [Integer]
    class WcdmaNmrObj < Struct.new(
      nil,
      :uarfcndl,
      :psc,
      :utran_cid,
      :rscp,
      :path_loss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WCDMA.</p>
    # @!attribute mcc
    #   <p>Mobile Country Code.</p>
    #   @return [Integer]
    # @!attribute mnc
    #   <p>Mobile Network Code.</p>
    #   @return [Integer]
    # @!attribute lac
    #   <p>Location Area Code.</p>
    #   @return [Integer]
    # @!attribute utran_cid
    #   <p>UTRAN (UMTS Terrestrial Radio Access Network) Cell Global Identifier.</p>
    #   @return [Integer]
    # @!attribute wcdma_local_id
    #   <p>WCDMA local ID information.</p>
    #   @return [Types::WcdmaLocalId]
    # @!attribute rscp
    #   <p>Received Signal Code Power (signal power) (dBm).</p>
    #   @return [Integer]
    # @!attribute path_loss
    #   <p>Path loss, or path attenuation, is the reduction in power density of an
    #               electromagnetic wave as it propagates through space.</p>
    #   @return [Integer]
    # @!attribute wcdma_nmr
    #   <p>WCDMA object for network measurement reports.</p>
    #   @return [Array<Types::WcdmaNmrObj>]
    class WcdmaObj < Struct.new(
      nil,
      :mcc,
      :mnc,
      :lac,
      :utran_cid,
      :wcdma_local_id,
      :rscp,
      :path_loss,
      :wcdma_nmr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wi-Fi access point.</p>
    # @!attribute mac_address
    #   <p>Wi-Fi MAC Address.</p>
    #   @return [String]
    # @!attribute rss
    #   <p>Received signal strength (dBm) of the WLAN measurement data.</p>
    #   @return [Integer]
    class WiFiAccessPoint < Struct.new(
      nil,
      :mac_address,
      :rss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log options for a wireless device event and can be used to set log levels for a
    #             specific wireless device event.</p>
    #          <p>For a LoRaWAN device, possible events for a log messsage are: <code>Join</code>,
    #                 <code>Rejoin</code>, <code>Downlink_Data</code>, and <code>Uplink_Data</code>. For a
    #             Sidewalk device, possible events for a log message are <code>Registration</code>,
    #                 <code>Downlink_Data</code>, and <code>Uplink_Data</code>.</p>
    # @!attribute event
    #   <p>The event for a log message, if the log message is tied to a wireless device.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    class WirelessDeviceEventLogOption < Struct.new(
      nil,
      :event,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an import task for wireless devices.</p>
    # @!attribute id
    #   <p>The ID of the wireless device import task.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the wireless device import task.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the Sidewalk destination that that describes the IoT rule to route
    #               messages from the device in the import task that will be onboarded to AWS IoT
    #               Wireless</p>
    #   @return [String]
    # @!attribute sidewalk
    #   <p>The Sidewalk-related information of the wireless device import task.</p>
    #   @return [Types::SidewalkGetStartImportInfo]
    # @!attribute creation_time
    #   <p>The time at which the import task was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status information of the wireless device import task.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that provides additional information about the import task status.</p>
    #   @return [String]
    # @!attribute initialized_imported_device_count
    #   <p>The summary information of count of wireless devices that are waiting for the control
    #               log to be added to an import task.</p>
    #   @return [Integer]
    # @!attribute pending_imported_device_count
    #   <p>The summary information of count of wireless devices in an import task that are
    #               waiting in the queue to be onboarded.</p>
    #   @return [Integer]
    # @!attribute onboarded_imported_device_count
    #   <p>The summary information of count of wireless devices in an import task that have been
    #               onboarded to the import task.</p>
    #   @return [Integer]
    # @!attribute failed_imported_device_count
    #   <p>The summary information of count of wireless devices in an import task that failed to
    #               onboarded to the import task.</p>
    #   @return [Integer]
    class WirelessDeviceImportTask < Struct.new(
      nil,
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
      :failed_imported_device_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log options for wireless devices and can be used to set log levels for a specific
    #             type of wireless device.</p>
    # @!attribute type
    #   <p>The wireless device type.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The list of wireless device event log options.</p>
    #   @return [Array<Types::WirelessDeviceEventLogOption>]
    class WirelessDeviceLogOption < Struct.new(
      nil,
      :type,
      :log_level,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a wireless device's operation.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the wireless device reporting the data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The wireless device type.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute destination_name
    #   <p>The name of the destination to which the device is assigned.</p>
    #   @return [String]
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #            <note>
    #               <p>Theis value is only valid for 3 months.</p>
    #            </note>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN device info.</p>
    #   @return [Types::LoRaWANListDevice]
    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Types::SidewalkListDevice]
    # @!attribute fuota_device_status
    #   <p>The status of a wireless device in a FUOTA task.</p>
    #   @return [String]
    # @!attribute multicast_device_status
    #   <p>The status of the wireless device in the multicast group.</p>
    #   @return [String]
    # @!attribute mc_group_id
    #   <p>Id of the multicast group.</p>
    #   @return [Integer]
    class WirelessDeviceStatistics < Struct.new(
      nil,
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
      :mc_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log options for a wireless gateway event and can be used to set log levels for a
    #             specific wireless gateway event.</p>
    #          <p>For a LoRaWAN gateway, possible events for a log message are <code>CUPS_Request</code>
    #             and <code>Certificate</code>.</p>
    # @!attribute event
    #   <p>The event for a log message, if the log message is tied to a wireless gateway.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    class WirelessGatewayEventLogOption < Struct.new(
      nil,
      :event,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log options for wireless gateways and can be used to set log levels for a specific
    #             type of wireless gateway.</p>
    # @!attribute type
    #   <p>The wireless gateway type.</p>
    #   @return [String]
    # @!attribute log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to
    #                   <code>ERROR</code> to display less verbose logs containing only error information,
    #               or to <code>INFO</code> for more detailed logs.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The list of wireless gateway event log options.</p>
    #   @return [Array<Types::WirelessGatewayEventLogOption>]
    class WirelessGatewayLogOption < Struct.new(
      nil,
      :type,
      :log_level,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a wireless gateway's operation.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the wireless gateway reporting the data.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource.</p>
    #   @return [String]
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN gateway info.</p>
    #   @return [Types::LoRaWANGateway]
    # @!attribute last_uplink_received_at
    #   <p>The date and time when the most recent uplink was received.</p>
    #            <note>
    #               <p>This value is only valid for 3 months.</p>
    #            </note>
    #   @return [String]
    class WirelessGatewayStatistics < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :last_uplink_received_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>WirelessMetadata object.</p>
    # @!attribute lo_ra_wan
    #   <p>LoRaWAN device info.</p>
    #   @return [Types::LoRaWANSendDataToDevice]
    # @!attribute sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #   @return [Types::SidewalkSendDataToDevice]
    class WirelessMetadata < Struct.new(
      nil,
      :lo_ra_wan,
      :sidewalk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
