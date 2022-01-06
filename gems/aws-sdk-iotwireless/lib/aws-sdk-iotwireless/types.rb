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
    # @note When making an API call, you may pass AbpV1_0_x
    #   data as a hash:
    #
    #       {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           nwk_s_key: "NwkSKey",
    #           app_s_key: "AppSKey",
    #         },
    #       }
    #
    # @!attribute [rw] dev_addr
    #   The DevAddr value.
    #   @return [String]
    #
    # @!attribute [rw] session_keys
    #   Session keys for ABP v1.0.x
    #   @return [Types::SessionKeysAbpV1_0_x]
    #
    class AbpV1_0_x < Struct.new(
      :dev_addr,
      :session_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # ABP device object for LoRaWAN specification v1.1
    #
    # @note When making an API call, you may pass AbpV1_1
    #   data as a hash:
    #
    #       {
    #         dev_addr: "DevAddr",
    #         session_keys: {
    #           f_nwk_s_int_key: "FNwkSIntKey",
    #           s_nwk_s_int_key: "SNwkSIntKey",
    #           nwk_s_enc_key: "NwkSEncKey",
    #           app_s_key: "AppSKey",
    #         },
    #       }
    #
    # @!attribute [rw] dev_addr
    #   The DevAddr value.
    #   @return [String]
    #
    # @!attribute [rw] session_keys
    #   Session keys for ABP v1.1
    #   @return [Types::SessionKeysAbpV1_1]
    #
    class AbpV1_1 < Struct.new(
      :dev_addr,
      :session_keys)
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

    # @note When making an API call, you may pass AssociateAwsAccountWithPartnerAccountRequest
    #   data as a hash:
    #
    #       {
    #         sidewalk: { # required
    #           amazon_id: "AmazonId",
    #           app_server_private_key: "AppServerPrivateKey",
    #         },
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass AssociateMulticastGroupWithFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         multicast_group_id: "MulticastGroupId", # required
    #       }
    #
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

    # @note When making an API call, you may pass AssociateWirelessDeviceWithFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         wireless_device_id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass AssociateWirelessDeviceWithMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         wireless_device_id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass AssociateWirelessDeviceWithThingRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #         thing_arn: "ThingArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass AssociateWirelessGatewayWithCertificateRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #         iot_certificate_id: "IotCertificateId", # required
    #       }
    #
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

    # @note When making an API call, you may pass AssociateWirelessGatewayWithThingRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #         thing_arn: "ThingArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass CancelMulticastGroupSessionRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #       }
    #
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

    # @note When making an API call, you may pass CreateDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DestinationName", # required
    #         expression_type: "RuleName", # required, accepts RuleName, MqttTopic
    #         expression: "Expression", # required
    #         description: "Description",
    #         role_arn: "RoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #       }
    #
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

    # @note When making an API call, you may pass CreateDeviceProfileRequest
    #   data as a hash:
    #
    #       {
    #         name: "DeviceProfileName",
    #         lo_ra_wan: {
    #           supports_class_b: false,
    #           class_b_timeout: 1,
    #           ping_slot_period: 1,
    #           ping_slot_dr: 1,
    #           ping_slot_freq: 1,
    #           supports_class_c: false,
    #           class_c_timeout: 1,
    #           mac_version: "MacVersion",
    #           reg_params_revision: "RegParamsRevision",
    #           rx_delay_1: 1,
    #           rx_dr_offset_1: 1,
    #           rx_data_rate_2: 1,
    #           rx_freq_2: 1,
    #           factory_preset_freqs_list: [1],
    #           max_eirp: 1,
    #           max_duty_cycle: 1,
    #           rf_region: "RfRegion",
    #           supports_join: false,
    #           supports_32_bit_f_cnt: false,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #       }
    #
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
    class CreateDeviceProfileRequest < Struct.new(
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
    #   The ID of the new device profile.
    #   @return [String]
    #
    class CreateDeviceProfileResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         name: "FuotaTaskName",
    #         description: "Description",
    #         client_request_token: "ClientRequestToken",
    #         lo_ra_wan: {
    #           rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #         },
    #         firmware_update_image: "FirmwareUpdateImage", # required
    #         firmware_update_role: "FirmwareUpdateRole", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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
    class CreateFuotaTaskRequest < Struct.new(
      :name,
      :description,
      :client_request_token,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :tags)
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

    # @note When making an API call, you may pass CreateMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         name: "MulticastGroupName",
    #         description: "Description",
    #         client_request_token: "ClientRequestToken",
    #         lo_ra_wan: { # required
    #           rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #           dl_class: "ClassB", # accepts ClassB, ClassC
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass CreateServiceProfileRequest
    #   data as a hash:
    #
    #       {
    #         name: "ServiceProfileName",
    #         lo_ra_wan: {
    #           add_gw_metadata: false,
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #       }
    #
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

    # @note When making an API call, you may pass CreateWirelessDeviceRequest
    #   data as a hash:
    #
    #       {
    #         type: "Sidewalk", # required, accepts Sidewalk, LoRaWAN
    #         name: "WirelessDeviceName",
    #         description: "Description",
    #         destination_name: "DestinationName", # required
    #         client_request_token: "ClientRequestToken",
    #         lo_ra_wan: {
    #           dev_eui: "DevEui",
    #           device_profile_id: "DeviceProfileId",
    #           service_profile_id: "ServiceProfileId",
    #           otaa_v1_1: {
    #             app_key: "AppKey",
    #             nwk_key: "NwkKey",
    #             join_eui: "JoinEui",
    #           },
    #           otaa_v1_0_x: {
    #             app_key: "AppKey",
    #             app_eui: "AppEui",
    #             gen_app_key: "GenAppKey",
    #           },
    #           abp_v1_1: {
    #             dev_addr: "DevAddr",
    #             session_keys: {
    #               f_nwk_s_int_key: "FNwkSIntKey",
    #               s_nwk_s_int_key: "SNwkSIntKey",
    #               nwk_s_enc_key: "NwkSEncKey",
    #               app_s_key: "AppSKey",
    #             },
    #           },
    #           abp_v1_0_x: {
    #             dev_addr: "DevAddr",
    #             session_keys: {
    #               nwk_s_key: "NwkSKey",
    #               app_s_key: "AppSKey",
    #             },
    #           },
    #           f_ports: {
    #             fuota: 1,
    #             multicast: 1,
    #             clock_sync: 1,
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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
    class CreateWirelessDeviceRequest < Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :client_request_token,
      :lo_ra_wan,
      :tags)
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

    # @note When making an API call, you may pass CreateWirelessGatewayRequest
    #   data as a hash:
    #
    #       {
    #         name: "WirelessGatewayName",
    #         description: "Description",
    #         lo_ra_wan: { # required
    #           gateway_eui: "GatewayEui",
    #           rf_region: "RfRegion",
    #           join_eui_filters: [
    #             ["JoinEui"],
    #           ],
    #           net_id_filters: ["NetId"],
    #           sub_bands: [1],
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #       }
    #
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

    # @note When making an API call, you may pass CreateWirelessGatewayTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         auto_create_tasks: false, # required
    #         name: "WirelessGatewayTaskName",
    #         update: {
    #           update_data_source: "UpdateDataSource",
    #           update_data_role: "UpdateDataSource",
    #           lo_ra_wan: {
    #             update_signature: "UpdateSignature",
    #             sig_key_crc: 1,
    #             current_version: {
    #               package_version: "PackageVersion",
    #               model: "Model",
    #               station: "Station",
    #             },
    #             update_version: {
    #               package_version: "PackageVersion",
    #               model: "Model",
    #               station: "Station",
    #             },
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass CreateWirelessGatewayTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #         wireless_gateway_task_definition_id: "WirelessGatewayTaskDefinitionId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DestinationName", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteDeviceProfileRequest
    #   data as a hash:
    #
    #       {
    #         id: "DeviceProfileId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteQueuedMessagesRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #         message_id: "MessageId", # required
    #         wireless_device_type: "Sidewalk", # accepts Sidewalk, LoRaWAN
    #       }
    #
    # @!attribute [rw] id
    #   Id of a given wireless device which messages will be deleted
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   if messageID=="*", the queue for a particular wireless deviceId
    #   will be purged, otherwise, the specific message with messageId will
    #   be deleted
    #   @return [String]
    #
    # @!attribute [rw] wireless_device_type
    #   The wireless device type, it is either Sidewalk or LoRaWAN.
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

    # @note When making an API call, you may pass DeleteServiceProfileRequest
    #   data as a hash:
    #
    #       {
    #         id: "ServiceProfileId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteWirelessDeviceRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteWirelessGatewayRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteWirelessGatewayTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayTaskDefinitionId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteWirelessGatewayTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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
    # @note When making an API call, you may pass DeviceRegistrationStateEventConfiguration
    #   data as a hash:
    #
    #       {
    #         sidewalk: {
    #           amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #         },
    #       }
    #
    # @!attribute [rw] sidewalk
    #   Device registration state event configuration object for enabling or
    #   disabling Sidewalk related event topics.
    #   @return [Types::SidewalkEventNotificationConfigurations]
    #
    class DeviceRegistrationStateEventConfiguration < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateAwsAccountFromPartnerAccountRequest
    #   data as a hash:
    #
    #       {
    #         partner_account_id: "PartnerAccountId", # required
    #         partner_type: "Sidewalk", # required, accepts Sidewalk
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateMulticastGroupFromFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         multicast_group_id: "MulticastGroupId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateWirelessDeviceFromFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         wireless_device_id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateWirelessDeviceFromMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         wireless_device_id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateWirelessDeviceFromThingRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateWirelessGatewayFromCertificateRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateWirelessGatewayFromThingRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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

    # The message in downlink queue.
    #
    # @!attribute [rw] message_id
    #   The messageId allocated by IoT Wireless for tracing purpose
    #   @return [String]
    #
    # @!attribute [rw] transmit_mode
    #   The transmit mode to use to send data to the wireless device. Can
    #   be: `0` for UM (unacknowledge mode) or `1` for AM (acknowledge
    #   mode).
    #   @return [Integer]
    #
    # @!attribute [rw] received_at
    #   The timestamp that Iot Wireless received the message.
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

    # List of FPort assigned for different LoRaWAN application packages to
    # use
    #
    # @note When making an API call, you may pass FPorts
    #   data as a hash:
    #
    #       {
    #         fuota: 1,
    #         multicast: 1,
    #         clock_sync: 1,
    #       }
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
    class FPorts < Struct.new(
      :fuota,
      :multicast,
      :clock_sync)
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

    # @note When making an API call, you may pass GetDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DestinationName", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetDeviceProfileRequest
    #   data as a hash:
    #
    #       {
    #         id: "DeviceProfileId", # required
    #       }
    #
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
    class GetDeviceProfileResponse < Struct.new(
      :arn,
      :name,
      :id,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #       }
    #
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
    class GetFuotaTaskResponse < Struct.new(
      :arn,
      :id,
      :status,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    class GetLogLevelsByResourceTypesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] default_log_level
    #   The log level for a log message.
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

    # @note When making an API call, you may pass GetMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetMulticastGroupSessionRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetNetworkAnalyzerConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_name: "NetworkAnalyzerConfigurationName", # required
    #       }
    #
    # @!attribute [rw] configuration_name
    #   NetworkAnalyzer configuration name.
    #   @return [String]
    #
    class GetNetworkAnalyzerConfigurationRequest < Struct.new(
      :configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] trace_content
    #   Trace Content for resources.
    #   @return [Types::TraceContent]
    #
    # @!attribute [rw] wireless_devices
    #   List of WirelessDevices in the NetworkAnalyzerConfiguration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways
    #   List of WirelessGateways in the NetworkAnalyzerConfiguration.
    #   @return [Array<String>]
    #
    class GetNetworkAnalyzerConfigurationResponse < Struct.new(
      :trace_content,
      :wireless_devices,
      :wireless_gateways)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPartnerAccountRequest
    #   data as a hash:
    #
    #       {
    #         partner_account_id: "PartnerAccountId", # required
    #         partner_type: "Sidewalk", # required, accepts Sidewalk
    #       }
    #
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

    # @note When making an API call, you may pass GetResourceEventConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         identifier: "Identifier", # required
    #         identifier_type: "PartnerAccountId", # required, accepts PartnerAccountId
    #         partner_type: "Sidewalk", # accepts Sidewalk
    #       }
    #
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
    #   PartnerAccountId.
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
    #   Event configuration for the device registration state event
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Event configuration for the Proximity event
    #   @return [Types::ProximityEventConfiguration]
    #
    class GetResourceEventConfigurationResponse < Struct.new(
      :device_registration_state,
      :proximity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourceLogLevelRequest
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "ResourceIdentifier", # required
    #         resource_type: "ResourceType", # required
    #       }
    #
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
    #   The log level for a log message.
    #   @return [String]
    #
    class GetResourceLogLevelResponse < Struct.new(
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceEndpointRequest
    #   data as a hash:
    #
    #       {
    #         service_type: "CUPS", # accepts CUPS, LNS
    #       }
    #
    # @!attribute [rw] service_type
    #   The service type for which to get endpoint information about. Can be
    #   `CUPS` for the Configuration and Update Server endpoint, or `LNS`
    #   for the LoRaWAN Network Server endpoint.
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

    # @note When making an API call, you may pass GetServiceProfileRequest
    #   data as a hash:
    #
    #       {
    #         id: "ServiceProfileId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessDeviceRequest
    #   data as a hash:
    #
    #       {
    #         identifier: "Identifier", # required
    #         identifier_type: "WirelessDeviceId", # required, accepts WirelessDeviceId, DevEui, ThingName, SidewalkManufacturingSn
    #       }
    #
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
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWirelessDeviceStatisticsRequest
    #   data as a hash:
    #
    #       {
    #         wireless_device_id: "WirelessDeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessGatewayCertificateRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessGatewayFirmwareInformationRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessGatewayRequest
    #   data as a hash:
    #
    #       {
    #         identifier: "Identifier", # required
    #         identifier_type: "GatewayEui", # required, accepts GatewayEui, WirelessGatewayId, ThingName
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessGatewayStatisticsRequest
    #   data as a hash:
    #
    #       {
    #         wireless_gateway_id: "WirelessGatewayId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessGatewayTaskDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayTaskDefinitionId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWirelessGatewayTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
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

    # @note When making an API call, you may pass ListDeviceProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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
    class ListDeviceProfilesRequest < Struct.new(
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

    # @note When making an API call, you may pass ListFuotaTasksRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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

    # @note When making an API call, you may pass ListMulticastGroupsByFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListMulticastGroupsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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

    # @note When making an API call, you may pass ListPartnerAccountsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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

    # @note When making an API call, you may pass ListQueuedMessagesRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         wireless_device_type: "Sidewalk", # accepts Sidewalk, LoRaWAN
    #       }
    #
    # @!attribute [rw] id
    #   Id of a given wireless device which the downlink packets are
    #   targeted
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
    #   The wireless device type, it is either Sidewalk or LoRaWAN.
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
    #   The messages in downlink queue.
    #   @return [Array<Types::DownlinkQueueMessage>]
    #
    class ListQueuedMessagesResponse < Struct.new(
      :next_token,
      :downlink_queue_messages_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListWirelessDevicesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         destination_name: "DestinationName",
    #         device_profile_id: "DeviceProfileId",
    #         service_profile_id: "ServiceProfileId",
    #         wireless_device_type: "Sidewalk", # accepts Sidewalk, LoRaWAN
    #         fuota_task_id: "FuotaTaskId",
    #         multicast_group_id: "MulticastGroupId",
    #       }
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

    # @note When making an API call, you may pass ListWirelessGatewayTaskDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         task_definition_type: "UPDATE", # accepts UPDATE
    #       }
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

    # @note When making an API call, you may pass ListWirelessGatewaysRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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

    # LoRaWAN object for create functions.
    #
    # @note When making an API call, you may pass LoRaWANDevice
    #   data as a hash:
    #
    #       {
    #         dev_eui: "DevEui",
    #         device_profile_id: "DeviceProfileId",
    #         service_profile_id: "ServiceProfileId",
    #         otaa_v1_1: {
    #           app_key: "AppKey",
    #           nwk_key: "NwkKey",
    #           join_eui: "JoinEui",
    #         },
    #         otaa_v1_0_x: {
    #           app_key: "AppKey",
    #           app_eui: "AppEui",
    #           gen_app_key: "GenAppKey",
    #         },
    #         abp_v1_1: {
    #           dev_addr: "DevAddr",
    #           session_keys: {
    #             f_nwk_s_int_key: "FNwkSIntKey",
    #             s_nwk_s_int_key: "SNwkSIntKey",
    #             nwk_s_enc_key: "NwkSEncKey",
    #             app_s_key: "AppSKey",
    #           },
    #         },
    #         abp_v1_0_x: {
    #           dev_addr: "DevAddr",
    #           session_keys: {
    #             nwk_s_key: "NwkSKey",
    #             app_s_key: "AppSKey",
    #           },
    #         },
    #         f_ports: {
    #           fuota: 1,
    #           multicast: 1,
    #           clock_sync: 1,
    #         },
    #       }
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
    # @note When making an API call, you may pass LoRaWANDeviceProfile
    #   data as a hash:
    #
    #       {
    #         supports_class_b: false,
    #         class_b_timeout: 1,
    #         ping_slot_period: 1,
    #         ping_slot_dr: 1,
    #         ping_slot_freq: 1,
    #         supports_class_c: false,
    #         class_c_timeout: 1,
    #         mac_version: "MacVersion",
    #         reg_params_revision: "RegParamsRevision",
    #         rx_delay_1: 1,
    #         rx_dr_offset_1: 1,
    #         rx_data_rate_2: 1,
    #         rx_freq_2: 1,
    #         factory_preset_freqs_list: [1],
    #         max_eirp: 1,
    #         max_duty_cycle: 1,
    #         rf_region: "RfRegion",
    #         supports_join: false,
    #         supports_32_bit_f_cnt: false,
    #       }
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
    # @note When making an API call, you may pass LoRaWANFuotaTask
    #   data as a hash:
    #
    #       {
    #         rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #       }
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
    # @note When making an API call, you may pass LoRaWANGateway
    #   data as a hash:
    #
    #       {
    #         gateway_eui: "GatewayEui",
    #         rf_region: "RfRegion",
    #         join_eui_filters: [
    #           ["JoinEui"],
    #         ],
    #         net_id_filters: ["NetId"],
    #         sub_bands: [1],
    #       }
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
    class LoRaWANGateway < Struct.new(
      :gateway_eui,
      :rf_region,
      :join_eui_filters,
      :net_id_filters,
      :sub_bands)
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
    # @note When making an API call, you may pass LoRaWANGatewayVersion
    #   data as a hash:
    #
    #       {
    #         package_version: "PackageVersion",
    #         model: "Model",
    #         station: "Station",
    #       }
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
    # @note When making an API call, you may pass LoRaWANMulticast
    #   data as a hash:
    #
    #       {
    #         rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #         dl_class: "ClassB", # accepts ClassB, ClassC
    #       }
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
    # @note When making an API call, you may pass LoRaWANMulticastMetadata
    #   data as a hash:
    #
    #       {
    #         f_port: 1,
    #       }
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
    # @note When making an API call, you may pass LoRaWANMulticastSession
    #   data as a hash:
    #
    #       {
    #         dl_dr: 1,
    #         dl_freq: 1,
    #         session_start_time: Time.now,
    #         session_timeout: 1,
    #       }
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
    class LoRaWANMulticastSession < Struct.new(
      :dl_dr,
      :dl_freq,
      :session_start_time,
      :session_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWAN router info.
    #
    # @note When making an API call, you may pass LoRaWANSendDataToDevice
    #   data as a hash:
    #
    #       {
    #         f_port: 1,
    #       }
    #
    # @!attribute [rw] f_port
    #   The Fport value.
    #   @return [Integer]
    #
    class LoRaWANSendDataToDevice < Struct.new(
      :f_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANServiceProfile object.
    #
    # @note When making an API call, you may pass LoRaWANServiceProfile
    #   data as a hash:
    #
    #       {
    #         add_gw_metadata: false,
    #       }
    #
    # @!attribute [rw] add_gw_metadata
    #   The AddGWMetaData value.
    #   @return [Boolean]
    #
    class LoRaWANServiceProfile < Struct.new(
      :add_gw_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The LoRaWAN information used to start a FUOTA task.
    #
    # @note When making an API call, you may pass LoRaWANStartFuotaTask
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now,
    #       }
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
    # @note When making an API call, you may pass LoRaWANUpdateDevice
    #   data as a hash:
    #
    #       {
    #         device_profile_id: "DeviceProfileId",
    #         service_profile_id: "ServiceProfileId",
    #       }
    #
    # @!attribute [rw] device_profile_id
    #   The ID of the device profile for the wireless device.
    #   @return [String]
    #
    # @!attribute [rw] service_profile_id
    #   The ID of the service profile.
    #   @return [String]
    #
    class LoRaWANUpdateDevice < Struct.new(
      :device_profile_id,
      :service_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # LoRaWANUpdateGatewayTaskCreate object.
    #
    # @note When making an API call, you may pass LoRaWANUpdateGatewayTaskCreate
    #   data as a hash:
    #
    #       {
    #         update_signature: "UpdateSignature",
    #         sig_key_crc: 1,
    #         current_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station",
    #         },
    #         update_version: {
    #           package_version: "PackageVersion",
    #           model: "Model",
    #           station: "Station",
    #         },
    #       }
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
    # @note When making an API call, you may pass MulticastWirelessMetadata
    #   data as a hash:
    #
    #       {
    #         lo_ra_wan: {
    #           f_port: 1,
    #         },
    #       }
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

    # OTAA device object for v1.0.x
    #
    # @note When making an API call, you may pass OtaaV1_0_x
    #   data as a hash:
    #
    #       {
    #         app_key: "AppKey",
    #         app_eui: "AppEui",
    #         gen_app_key: "GenAppKey",
    #       }
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
    # @note When making an API call, you may pass OtaaV1_1
    #   data as a hash:
    #
    #       {
    #         app_key: "AppKey",
    #         nwk_key: "NwkKey",
    #         join_eui: "JoinEui",
    #       }
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

    # Proximity event configuration object for enabling and disabling
    # relevant topics.
    #
    # @note When making an API call, you may pass ProximityEventConfiguration
    #   data as a hash:
    #
    #       {
    #         sidewalk: {
    #           amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #         },
    #       }
    #
    # @!attribute [rw] sidewalk
    #   Proximity event configuration object for enabling or disabling
    #   Sidewalk related event topics.
    #   @return [Types::SidewalkEventNotificationConfigurations]
    #
    class ProximityEventConfiguration < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourceLogLevelRequest
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "ResourceIdentifier", # required
    #         resource_type: "ResourceType", # required
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #       }
    #
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
    #   The log level for a log message.
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

    # @note When making an API call, you may pass ResetResourceLogLevelRequest
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "ResourceIdentifier", # required
    #         resource_type: "ResourceType", # required
    #       }
    #
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

    # @note When making an API call, you may pass SendDataToMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         payload_data: "PayloadData", # required
    #         wireless_metadata: { # required
    #           lo_ra_wan: {
    #             f_port: 1,
    #           },
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass SendDataToWirelessDeviceRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #         transmit_mode: 1, # required
    #         payload_data: "PayloadData", # required
    #         wireless_metadata: {
    #           lo_ra_wan: {
    #             f_port: 1,
    #           },
    #           sidewalk: {
    #             seq: 1,
    #             message_type: "CUSTOM_COMMAND_ID_NOTIFY", # accepts CUSTOM_COMMAND_ID_NOTIFY, CUSTOM_COMMAND_ID_GET, CUSTOM_COMMAND_ID_SET, CUSTOM_COMMAND_ID_RESP
    #           },
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass SessionKeysAbpV1_0_x
    #   data as a hash:
    #
    #       {
    #         nwk_s_key: "NwkSKey",
    #         app_s_key: "AppSKey",
    #       }
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
    # @note When making an API call, you may pass SessionKeysAbpV1_1
    #   data as a hash:
    #
    #       {
    #         f_nwk_s_int_key: "FNwkSIntKey",
    #         s_nwk_s_int_key: "SNwkSIntKey",
    #         nwk_s_enc_key: "NwkSEncKey",
    #         app_s_key: "AppSKey",
    #       }
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
    # @note When making an API call, you may pass SidewalkAccountInfo
    #   data as a hash:
    #
    #       {
    #         amazon_id: "AmazonId",
    #         app_server_private_key: "AppServerPrivateKey",
    #       }
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
    class SidewalkDevice < Struct.new(
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates)
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

    # SidewalkEventNotificationConfigurations object Event configuration
    # object for Sidewalk related event topics.
    #
    # @note When making an API call, you may pass SidewalkEventNotificationConfigurations
    #   data as a hash:
    #
    #       {
    #         amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #       }
    #
    # @!attribute [rw] amazon_id_event_topic
    #   Enum to denote whether amazon id event topic is enabled or disabled.
    #   @return [String]
    #
    class SidewalkEventNotificationConfigurations < Struct.new(
      :amazon_id_event_topic)
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
    class SidewalkListDevice < Struct.new(
      :amazon_id,
      :sidewalk_id,
      :sidewalk_manufacturing_sn,
      :device_certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a Sidewalk router.
    #
    # @note When making an API call, you may pass SidewalkSendDataToDevice
    #   data as a hash:
    #
    #       {
    #         seq: 1,
    #         message_type: "CUSTOM_COMMAND_ID_NOTIFY", # accepts CUSTOM_COMMAND_ID_NOTIFY, CUSTOM_COMMAND_ID_GET, CUSTOM_COMMAND_ID_SET, CUSTOM_COMMAND_ID_RESP
    #       }
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
    class SidewalkSendDataToDevice < Struct.new(
      :seq,
      :message_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sidewalk update.
    #
    # @note When making an API call, you may pass SidewalkUpdateAccount
    #   data as a hash:
    #
    #       {
    #         app_server_private_key: "AppServerPrivateKey",
    #       }
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

    # @note When making an API call, you may pass StartBulkAssociateWirelessDeviceWithMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         query_string: "QueryString",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         query_string: "QueryString",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass StartFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         lo_ra_wan: {
    #           start_time: Time.now,
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass StartMulticastGroupSessionRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         lo_ra_wan: { # required
    #           dl_dr: 1,
    #           dl_freq: 1,
    #           session_start_time: Time.now,
    #           session_timeout: 1,
    #         },
    #       }
    #
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

    # A simple label consisting of a customer-defined key-value pair
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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

    # @note When making an API call, you may pass TestWirelessDeviceRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #       }
    #
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

    # Trace Content for resources.
    #
    # @note When making an API call, you may pass TraceContent
    #   data as a hash:
    #
    #       {
    #         wireless_device_frame_info: "ENABLED", # accepts ENABLED, DISABLED
    #         log_level: "INFO", # accepts INFO, ERROR, DISABLED
    #       }
    #
    # @!attribute [rw] wireless_device_frame_info
    #   WirelessDevice FrameInfo for trace content.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message.
    #   @return [String]
    #
    class TraceContent < Struct.new(
      :wireless_device_frame_info,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "DestinationName", # required
    #         expression_type: "RuleName", # accepts RuleName, MqttTopic
    #         expression: "Expression",
    #         description: "Description",
    #         role_arn: "RoleArn",
    #       }
    #
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

    # @note When making an API call, you may pass UpdateFuotaTaskRequest
    #   data as a hash:
    #
    #       {
    #         id: "FuotaTaskId", # required
    #         name: "FuotaTaskName",
    #         description: "Description",
    #         lo_ra_wan: {
    #           rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #         },
    #         firmware_update_image: "FirmwareUpdateImage",
    #         firmware_update_role: "FirmwareUpdateRole",
    #       }
    #
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
    class UpdateFuotaTaskRequest < Struct.new(
      :id,
      :name,
      :description,
      :lo_ra_wan,
      :firmware_update_image,
      :firmware_update_role)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateFuotaTaskResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateLogLevelsByResourceTypesRequest
    #   data as a hash:
    #
    #       {
    #         default_log_level: "INFO", # accepts INFO, ERROR, DISABLED
    #         wireless_device_log_options: [
    #           {
    #             type: "Sidewalk", # required, accepts Sidewalk, LoRaWAN
    #             log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #             events: [
    #               {
    #                 event: "Join", # required, accepts Join, Rejoin, Uplink_Data, Downlink_Data, Registration
    #                 log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #               },
    #             ],
    #           },
    #         ],
    #         wireless_gateway_log_options: [
    #           {
    #             type: "LoRaWAN", # required, accepts LoRaWAN
    #             log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #             events: [
    #               {
    #                 event: "CUPS_Request", # required, accepts CUPS_Request, Certificate
    #                 log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] default_log_level
    #   The log level for a log message.
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

    # @note When making an API call, you may pass UpdateMulticastGroupRequest
    #   data as a hash:
    #
    #       {
    #         id: "MulticastGroupId", # required
    #         name: "MulticastGroupName",
    #         description: "Description",
    #         lo_ra_wan: {
    #           rf_region: "EU868", # accepts EU868, US915, AU915, AS923-1
    #           dl_class: "ClassB", # accepts ClassB, ClassC
    #         },
    #       }
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

    # @note When making an API call, you may pass UpdateNetworkAnalyzerConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         configuration_name: "NetworkAnalyzerConfigurationName", # required
    #         trace_content: {
    #           wireless_device_frame_info: "ENABLED", # accepts ENABLED, DISABLED
    #           log_level: "INFO", # accepts INFO, ERROR, DISABLED
    #         },
    #         wireless_devices_to_add: ["WirelessDeviceId"],
    #         wireless_devices_to_remove: ["WirelessDeviceId"],
    #         wireless_gateways_to_add: ["WirelessGatewayId"],
    #         wireless_gateways_to_remove: ["WirelessGatewayId"],
    #       }
    #
    # @!attribute [rw] configuration_name
    #   NetworkAnalyzer configuration name.
    #   @return [String]
    #
    # @!attribute [rw] trace_content
    #   Trace Content for resources.
    #   @return [Types::TraceContent]
    #
    # @!attribute [rw] wireless_devices_to_add
    #   WirelessDevices to add into NetworkAnalyzerConfiguration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_devices_to_remove
    #   WirelessDevices to remove from NetworkAnalyzerConfiguration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways_to_add
    #   WirelessGateways to add into NetworkAnalyzerConfiguration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] wireless_gateways_to_remove
    #   WirelessGateways to remove from NetworkAnalyzerConfiguration.
    #   @return [Array<String>]
    #
    class UpdateNetworkAnalyzerConfigurationRequest < Struct.new(
      :configuration_name,
      :trace_content,
      :wireless_devices_to_add,
      :wireless_devices_to_remove,
      :wireless_gateways_to_add,
      :wireless_gateways_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateNetworkAnalyzerConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdatePartnerAccountRequest
    #   data as a hash:
    #
    #       {
    #         sidewalk: { # required
    #           app_server_private_key: "AppServerPrivateKey",
    #         },
    #         partner_account_id: "PartnerAccountId", # required
    #         partner_type: "Sidewalk", # required, accepts Sidewalk
    #       }
    #
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

    # @note When making an API call, you may pass UpdateResourceEventConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         identifier: "Identifier", # required
    #         identifier_type: "PartnerAccountId", # required, accepts PartnerAccountId
    #         partner_type: "Sidewalk", # accepts Sidewalk
    #         device_registration_state: {
    #           sidewalk: {
    #             amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #           },
    #         },
    #         proximity: {
    #           sidewalk: {
    #             amazon_id_event_topic: "Enabled", # accepts Enabled, Disabled
    #           },
    #         },
    #       }
    #
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
    #   PartnerAccountId
    #   @return [String]
    #
    # @!attribute [rw] device_registration_state
    #   Event configuration for the device registration state event
    #   @return [Types::DeviceRegistrationStateEventConfiguration]
    #
    # @!attribute [rw] proximity
    #   Event configuration for the Proximity event
    #   @return [Types::ProximityEventConfiguration]
    #
    class UpdateResourceEventConfigurationRequest < Struct.new(
      :identifier,
      :identifier_type,
      :partner_type,
      :device_registration_state,
      :proximity)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateResourceEventConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateWirelessDeviceRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessDeviceId", # required
    #         destination_name: "DestinationName",
    #         name: "WirelessDeviceName",
    #         description: "Description",
    #         lo_ra_wan: {
    #           device_profile_id: "DeviceProfileId",
    #           service_profile_id: "ServiceProfileId",
    #         },
    #       }
    #
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
    class UpdateWirelessDeviceRequest < Struct.new(
      :id,
      :destination_name,
      :name,
      :description,
      :lo_ra_wan)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateWirelessDeviceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateWirelessGatewayRequest
    #   data as a hash:
    #
    #       {
    #         id: "WirelessGatewayId", # required
    #         name: "WirelessGatewayName",
    #         description: "Description",
    #         join_eui_filters: [
    #           ["JoinEui"],
    #         ],
    #         net_id_filters: ["NetId"],
    #       }
    #
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
    class UpdateWirelessGatewayRequest < Struct.new(
      :id,
      :name,
      :description,
      :join_eui_filters,
      :net_id_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    class UpdateWirelessGatewayResponse < Aws::EmptyStructure; end

    # UpdateWirelessGatewayTaskCreate object.
    #
    # @note When making an API call, you may pass UpdateWirelessGatewayTaskCreate
    #   data as a hash:
    #
    #       {
    #         update_data_source: "UpdateDataSource",
    #         update_data_role: "UpdateDataSource",
    #         lo_ra_wan: {
    #           update_signature: "UpdateSignature",
    #           sig_key_crc: 1,
    #           current_version: {
    #             package_version: "PackageVersion",
    #             model: "Model",
    #             station: "Station",
    #           },
    #           update_version: {
    #             package_version: "PackageVersion",
    #             model: "Model",
    #             station: "Station",
    #           },
    #         },
    #       }
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

    # The log options for a wireless device event and can be used to set log
    # levels for a specific wireless device event.
    #
    # For a LoRaWAN device, possible events for a log messsage are: `Join`,
    # `Rejoin`, `Downlink_Data`, and `Uplink_Data`. For a Sidewalk device,
    # possible events for a log message are `Registration`, `Downlink_Data`,
    # and `Uplink_Data`.
    #
    # @note When making an API call, you may pass WirelessDeviceEventLogOption
    #   data as a hash:
    #
    #       {
    #         event: "Join", # required, accepts Join, Rejoin, Uplink_Data, Downlink_Data, Registration
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #       }
    #
    # @!attribute [rw] event
    #   The event for a log message, if the log message is tied to a
    #   wireless device.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message.
    #   @return [String]
    #
    class WirelessDeviceEventLogOption < Struct.new(
      :event,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log options for wireless devices and can be used to set log levels
    # for a specific type of wireless device.
    #
    # @note When making an API call, you may pass WirelessDeviceLogOption
    #   data as a hash:
    #
    #       {
    #         type: "Sidewalk", # required, accepts Sidewalk, LoRaWAN
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #         events: [
    #           {
    #             event: "Join", # required, accepts Join, Rejoin, Uplink_Data, Downlink_Data, Registration
    #             log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type
    #   The wireless device type.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message.
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
    # @note When making an API call, you may pass WirelessGatewayEventLogOption
    #   data as a hash:
    #
    #       {
    #         event: "CUPS_Request", # required, accepts CUPS_Request, Certificate
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #       }
    #
    # @!attribute [rw] event
    #   The event for a log message, if the log message is tied to a
    #   wireless gateway.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message.
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
    # @note When making an API call, you may pass WirelessGatewayLogOption
    #   data as a hash:
    #
    #       {
    #         type: "LoRaWAN", # required, accepts LoRaWAN
    #         log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #         events: [
    #           {
    #             event: "CUPS_Request", # required, accepts CUPS_Request, Certificate
    #             log_level: "INFO", # required, accepts INFO, ERROR, DISABLED
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type
    #   The wireless gateway type.
    #   @return [String]
    #
    # @!attribute [rw] log_level
    #   The log level for a log message.
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
    # @note When making an API call, you may pass WirelessMetadata
    #   data as a hash:
    #
    #       {
    #         lo_ra_wan: {
    #           f_port: 1,
    #         },
    #         sidewalk: {
    #           seq: 1,
    #           message_type: "CUSTOM_COMMAND_ID_NOTIFY", # accepts CUSTOM_COMMAND_ID_NOTIFY, CUSTOM_COMMAND_ID_GET, CUSTOM_COMMAND_ID_SET, CUSTOM_COMMAND_ID_RESP
    #         },
    #       }
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
