# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    class AssociateAwsAccountWithPartnerAccountRequest < Struct.new(
      :sidewalk,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sidewalk
    #   The Sidewalk account credentials.
    #   @return [Types::SidewalkAccountInfo]
    #
    class AssociateAwsAccountWithPartnerAccountResponse < Struct.new(
      :sidewalk)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Adding, updating, or deleting the resource can cause an inconsistent
    # state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
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
    #         expression_type: "RuleName", # required, accepts RuleName
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
    #   can be used to manage a resource.
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
    #   The tags to attach to the new device profile Tags are metadata that
    #   can be used to manage a resource.
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
    #   that can be used to manage a resource.
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
    #         },
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
    class CreateWirelessDeviceRequest < Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :client_request_token,
      :lo_ra_wan)
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
    #   that can be used to manage a resource.
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
    class CreateWirelessGatewayTaskDefinitionRequest < Struct.new(
      :auto_create_tasks,
      :name,
      :update,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the new wireless gateway task definition.
    #   @return [String]
    #
    class CreateWirelessGatewayTaskDefinitionResponse < Struct.new(
      :id)
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
    #
    #   The `AppServerPrivateKey` value is empty to protect its security.
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
    #         identifier_type: "WirelessDeviceId", # required, accepts WirelessDeviceId, DevEui, ThingName
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
    #   The name of the thing associated with the wireless device.
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
    class GetWirelessDeviceResponse < Struct.new(
      :type,
      :name,
      :description,
      :destination_name,
      :id,
      :arn,
      :thing_name,
      :thing_arn,
      :lo_ra_wan)
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
    class GetWirelessDeviceStatisticsResponse < Struct.new(
      :wireless_device_id,
      :last_uplink_received_at,
      :lo_ra_wan)
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
    class GetWirelessGatewayCertificateResponse < Struct.new(
      :iot_certificate_id)
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
    #   The name of the thing associated with the wireless gateway.
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
    class GetWirelessGatewayStatisticsResponse < Struct.new(
      :wireless_gateway_id,
      :last_uplink_received_at)
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
    class GetWirelessGatewayTaskDefinitionResponse < Struct.new(
      :auto_create_tasks,
      :name,
      :update)
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
    #
    #   The `AppServerPrivateKey` value is empty to protect its security.
    #   @return [Array<Types::SidewalkAccountInfoWithFingerprint>]
    #
    class ListPartnerAccountsResponse < Struct.new(
      :next_token,
      :sidewalk)
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
    #   The ARN of the resource for which to list tags.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags attached to the specified resource. Tags are metadata that
    #   can be used to manage a resource
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
    class ListWirelessDevicesRequest < Struct.new(
      :max_results,
      :next_token,
      :destination_name,
      :device_profile_id,
      :service_profile_id,
      :wireless_device_type)
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

    # LoRa object for create functions.
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
    #   LoRa object for create APIs
    #   @return [Types::AbpV1_0_x]
    #
    class LoRaWANDevice < Struct.new(
      :dev_eui,
      :device_profile_id,
      :service_profile_id,
      :otaa_v1_1,
      :otaa_v1_0_x,
      :abp_v1_1,
      :abp_v1_0_x)
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
    #   The MAC version (such as OTAA 1.1 or OTA 1.0.3) to use with this
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

    # LoRaWANGateway object.
    #
    # @note When making an API call, you may pass LoRaWANGateway
    #   data as a hash:
    #
    #       {
    #         gateway_eui: "GatewayEui",
    #         rf_region: "RfRegion",
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
    class LoRaWANGateway < Struct.new(
      :gateway_eui,
      :rf_region)
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

    # LoRa object for update functions.
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

    # OTAA device object for v1.0.x
    #
    # @note When making an API call, you may pass OtaaV1_0_x
    #   data as a hash:
    #
    #       {
    #         app_key: "AppKey",
    #         app_eui: "AppEui",
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
    class OtaaV1_0_x < Struct.new(
      :app_key,
      :app_eui)
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

    # Resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
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
    #   be: `0` for UM (unacknowledge mode), `1` for AM (acknowledge mode),
    #   or `2` for (TM) transparent mode.
    #   @return [Integer]
    #
    # @!attribute [rw] payload_data
    #   The message payload to send.
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
    # @!attribute [rw] app_server_private_key
    #   The Sidewalk application server private key.
    #   @return [String]
    #
    class SidewalkAccountInfoWithFingerprint < Struct.new(
      :amazon_id,
      :app_server_private_key)
      SENSITIVE = [:app_server_private_key]
      include Aws::Structure
    end

    # Sidewalk object used by list functions.
    #
    # @!attribute [rw] amazon_id
    #   The Sidewalk Amazon ID.
    #   @return [String]
    #
    class SidewalkListDevice < Struct.new(
      :amazon_id)
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
    #       }
    #
    # @!attribute [rw] seq
    #   The sequence number.
    #   @return [Integer]
    #
    class SidewalkSendDataToDevice < Struct.new(
      :seq)
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
    #   metadata that can be used to manage a resource.
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
    #   @return [String]
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_name)
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
    #         expression_type: "RuleName", # accepts RuleName
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
    class UpdateWirelessGatewayRequest < Struct.new(
      :id,
      :name,
      :description)
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
    class UpdateWirelessGatewayTaskEntry < Struct.new(
      :id,
      :lo_ra_wan)
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
    class WirelessDeviceStatistics < Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :destination_name,
      :last_uplink_received_at,
      :lo_ra_wan,
      :sidewalk)
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
