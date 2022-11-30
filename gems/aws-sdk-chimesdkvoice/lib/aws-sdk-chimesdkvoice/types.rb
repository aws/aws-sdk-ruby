# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKVoice
  module Types

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # @!attribute [rw] street_name
    #   @return [String]
    #
    # @!attribute [rw] street_suffix
    #   @return [String]
    #
    # @!attribute [rw] post_directional
    #   @return [String]
    #
    # @!attribute [rw] pre_directional
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   @return [String]
    #
    # @!attribute [rw] city
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   @return [String]
    #
    # @!attribute [rw] postal_code_plus_4
    #   @return [String]
    #
    # @!attribute [rw] country
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Address AWS API Documentation
    #
    class Address < Struct.new(
      :street_name,
      :street_suffix,
      :post_directional,
      :pre_directional,
      :street_number,
      :city,
      :state,
      :postal_code,
      :postal_code_plus_4,
      :country)
      SENSITIVE = [:street_name, :street_suffix, :post_directional, :pre_directional, :street_number, :city, :state, :postal_code, :postal_code_plus_4, :country]
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   @return [Array<String>]
    #
    # @!attribute [rw] force_associate
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnectorGroupRequest AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id,
      :e164_phone_numbers,
      :force_associate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnectorGroupResponse AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorGroupResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   @return [Array<String>]
    #
    # @!attribute [rw] force_associate
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnectorRequest AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :e164_phone_numbers,
      :force_associate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnectorResponse AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BadRequestException AWS API Documentation
    #
    class BadRequestException < Aws::EmptyStructure; end

    # @!attribute [rw] phone_number_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchDeletePhoneNumberRequest AWS API Documentation
    #
    class BatchDeletePhoneNumberRequest < Struct.new(
      :phone_number_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchDeletePhoneNumberResponse AWS API Documentation
    #
    class BatchDeletePhoneNumberResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_phone_number_request_items
    #   @return [Array<Types::UpdatePhoneNumberRequestItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchUpdatePhoneNumberRequest AWS API Documentation
    #
    class BatchUpdatePhoneNumberRequest < Struct.new(
      :update_phone_number_request_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchUpdatePhoneNumberResponse AWS API Documentation
    #
    class BatchUpdatePhoneNumberResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] street_info
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   @return [String]
    #
    # @!attribute [rw] city
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   @return [String]
    #
    # @!attribute [rw] postal_code_plus_4
    #   @return [String]
    #
    # @!attribute [rw] country
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CandidateAddress AWS API Documentation
    #
    class CandidateAddress < Struct.new(
      :street_info,
      :street_number,
      :city,
      :state,
      :postal_code,
      :postal_code_plus_4,
      :country)
      SENSITIVE = [:street_info, :street_number, :city, :state, :postal_code, :postal_code_plus_4, :country]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreatePhoneNumberOrderRequest AWS API Documentation
    #
    class CreatePhoneNumberOrderRequest < Struct.new(
      :product_type,
      :e164_phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_order
    #   @return [Types::PhoneNumberOrder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreatePhoneNumberOrderResponse AWS API Documentation
    #
    class CreatePhoneNumberOrderResponse < Struct.new(
      :phone_number_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] participant_phone_numbers
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] expiry_minutes
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_selection_behavior
    #   @return [String]
    #
    # @!attribute [rw] geo_match_level
    #   @return [String]
    #
    # @!attribute [rw] geo_match_params
    #   @return [Types::GeoMatchParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateProxySessionRequest AWS API Documentation
    #
    class CreateProxySessionRequest < Struct.new(
      :voice_connector_id,
      :participant_phone_numbers,
      :name,
      :expiry_minutes,
      :capabilities,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] proxy_session
    #   @return [Types::ProxySession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateProxySessionResponse AWS API Documentation
    #
    class CreateProxySessionResponse < Struct.new(
      :proxy_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] from_phone_number
    #   @return [String]
    #
    # @!attribute [rw] to_phone_number
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] sip_headers
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] arguments_map
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplicationCallRequest AWS API Documentation
    #
    class CreateSipMediaApplicationCallRequest < Struct.new(
      :from_phone_number,
      :to_phone_number,
      :sip_media_application_id,
      :sip_headers,
      :arguments_map)
      SENSITIVE = [:from_phone_number, :to_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_call
    #   @return [Types::SipMediaApplicationCall]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplicationCallResponse AWS API Documentation
    #
    class CreateSipMediaApplicationCallResponse < Struct.new(
      :sip_media_application_call)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_region
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplicationRequest AWS API Documentation
    #
    class CreateSipMediaApplicationRequest < Struct.new(
      :aws_region,
      :name,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   @return [Types::SipMediaApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplicationResponse AWS API Documentation
    #
    class CreateSipMediaApplicationResponse < Struct.new(
      :sip_media_application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] trigger_type
    #   @return [String]
    #
    # @!attribute [rw] trigger_value
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @!attribute [rw] target_applications
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipRuleRequest AWS API Documentation
    #
    class CreateSipRuleRequest < Struct.new(
      :name,
      :trigger_type,
      :trigger_value,
      :disabled,
      :target_applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule
    #   @return [Types::SipRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipRuleResponse AWS API Documentation
    #
    class CreateSipRuleResponse < Struct.new(
      :sip_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorGroupRequest AWS API Documentation
    #
    class CreateVoiceConnectorGroupRequest < Struct.new(
      :name,
      :voice_connector_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group
    #   @return [Types::VoiceConnectorGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorGroupResponse AWS API Documentation
    #
    class CreateVoiceConnectorGroupResponse < Struct.new(
      :voice_connector_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorRequest AWS API Documentation
    #
    class CreateVoiceConnectorRequest < Struct.new(
      :name,
      :aws_region,
      :require_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorResponse AWS API Documentation
    #
    class CreateVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] username
    #   @return [String]
    #
    # @!attribute [rw] password
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Credential AWS API Documentation
    #
    class Credential < Struct.new(
      :username,
      :password)
      SENSITIVE = [:username, :password]
      include Aws::Structure
    end

    # @!attribute [rw] emergency_phone_number
    #   @return [String]
    #
    # @!attribute [rw] test_phone_number
    #   @return [String]
    #
    # @!attribute [rw] calling_country
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DNISEmergencyCallingConfiguration AWS API Documentation
    #
    class DNISEmergencyCallingConfiguration < Struct.new(
      :emergency_phone_number,
      :test_phone_number,
      :calling_country)
      SENSITIVE = [:emergency_phone_number, :test_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeletePhoneNumberRequest AWS API Documentation
    #
    class DeletePhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = [:phone_number_id]
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteProxySessionRequest AWS API Documentation
    #
    class DeleteProxySessionRequest < Struct.new(
      :voice_connector_id,
      :proxy_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteSipMediaApplicationRequest AWS API Documentation
    #
    class DeleteSipMediaApplicationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteSipRuleRequest AWS API Documentation
    #
    class DeleteSipRuleRequest < Struct.new(
      :sip_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorEmergencyCallingConfigurationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorGroupRequest AWS API Documentation
    #
    class DeleteVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorOriginationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorOriginationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorProxyRequest AWS API Documentation
    #
    class DeleteVoiceConnectorProxyRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorRequest AWS API Documentation
    #
    class DeleteVoiceConnectorRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorStreamingConfigurationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorStreamingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] usernames
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorTerminationCredentialsRequest AWS API Documentation
    #
    class DeleteVoiceConnectorTerminationCredentialsRequest < Struct.new(
      :voice_connector_id,
      :usernames)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorTerminationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnectorGroupRequest AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id,
      :e164_phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnectorGroupResponse AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorGroupResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnectorRequest AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :e164_phone_numbers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_errors
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnectorResponse AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dnis
    #   @return [Array<Types::DNISEmergencyCallingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/EmergencyCallingConfiguration AWS API Documentation
    #
    class EmergencyCallingConfiguration < Struct.new(
      :dnis)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Aws::EmptyStructure; end

    # @!attribute [rw] country
    #   @return [String]
    #
    # @!attribute [rw] area_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GeoMatchParams AWS API Documentation
    #
    class GeoMatchParams < Struct.new(
      :country,
      :area_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   @return [Types::VoiceConnectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetGlobalSettingsResponse AWS API Documentation
    #
    class GetGlobalSettingsResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_order_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberOrderRequest AWS API Documentation
    #
    class GetPhoneNumberOrderRequest < Struct.new(
      :phone_number_order_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_order
    #   @return [Types::PhoneNumberOrder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberOrderResponse AWS API Documentation
    #
    class GetPhoneNumberOrderResponse < Struct.new(
      :phone_number_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberRequest AWS API Documentation
    #
    class GetPhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = [:phone_number_id]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   @return [Types::PhoneNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberResponse AWS API Documentation
    #
    class GetPhoneNumberResponse < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calling_name
    #   @return [String]
    #
    # @!attribute [rw] calling_name_updated_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberSettingsResponse AWS API Documentation
    #
    class GetPhoneNumberSettingsResponse < Struct.new(
      :calling_name,
      :calling_name_updated_timestamp)
      SENSITIVE = [:calling_name]
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetProxySessionRequest AWS API Documentation
    #
    class GetProxySessionRequest < Struct.new(
      :voice_connector_id,
      :proxy_session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_session
    #   @return [Types::ProxySession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetProxySessionResponse AWS API Documentation
    #
    class GetProxySessionResponse < Struct.new(
      :proxy_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationAlexaSkillConfigurationRequest AWS API Documentation
    #
    class GetSipMediaApplicationAlexaSkillConfigurationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_alexa_skill_configuration
    #   @return [Types::SipMediaApplicationAlexaSkillConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationAlexaSkillConfigurationResponse AWS API Documentation
    #
    class GetSipMediaApplicationAlexaSkillConfigurationResponse < Struct.new(
      :sip_media_application_alexa_skill_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationLoggingConfigurationRequest AWS API Documentation
    #
    class GetSipMediaApplicationLoggingConfigurationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_logging_configuration
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationLoggingConfigurationResponse AWS API Documentation
    #
    class GetSipMediaApplicationLoggingConfigurationResponse < Struct.new(
      :sip_media_application_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationRequest AWS API Documentation
    #
    class GetSipMediaApplicationRequest < Struct.new(
      :sip_media_application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   @return [Types::SipMediaApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationResponse AWS API Documentation
    #
    class GetSipMediaApplicationResponse < Struct.new(
      :sip_media_application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipRuleRequest AWS API Documentation
    #
    class GetSipRuleRequest < Struct.new(
      :sip_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule
    #   @return [Types::SipRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipRuleResponse AWS API Documentation
    #
    class GetSipRuleResponse < Struct.new(
      :sip_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorEmergencyCallingConfigurationRequest AWS API Documentation
    #
    class GetVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] emergency_calling_configuration
    #   @return [Types::EmergencyCallingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorEmergencyCallingConfigurationResponse AWS API Documentation
    #
    class GetVoiceConnectorEmergencyCallingConfigurationResponse < Struct.new(
      :emergency_calling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorGroupRequest AWS API Documentation
    #
    class GetVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group
    #   @return [Types::VoiceConnectorGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorGroupResponse AWS API Documentation
    #
    class GetVoiceConnectorGroupResponse < Struct.new(
      :voice_connector_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorLoggingConfigurationRequest AWS API Documentation
    #
    class GetVoiceConnectorLoggingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorLoggingConfigurationResponse AWS API Documentation
    #
    class GetVoiceConnectorLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorOriginationRequest AWS API Documentation
    #
    class GetVoiceConnectorOriginationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination
    #   @return [Types::Origination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorOriginationResponse AWS API Documentation
    #
    class GetVoiceConnectorOriginationResponse < Struct.new(
      :origination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorProxyRequest AWS API Documentation
    #
    class GetVoiceConnectorProxyRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy
    #   @return [Types::Proxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorProxyResponse AWS API Documentation
    #
    class GetVoiceConnectorProxyResponse < Struct.new(
      :proxy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorRequest AWS API Documentation
    #
    class GetVoiceConnectorRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorResponse AWS API Documentation
    #
    class GetVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorStreamingConfigurationRequest AWS API Documentation
    #
    class GetVoiceConnectorStreamingConfigurationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_configuration
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorStreamingConfigurationResponse AWS API Documentation
    #
    class GetVoiceConnectorStreamingConfigurationResponse < Struct.new(
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTerminationHealthRequest AWS API Documentation
    #
    class GetVoiceConnectorTerminationHealthRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination_health
    #   @return [Types::TerminationHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTerminationHealthResponse AWS API Documentation
    #
    class GetVoiceConnectorTerminationHealthResponse < Struct.new(
      :termination_health)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTerminationRequest AWS API Documentation
    #
    class GetVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTerminationResponse AWS API Documentation
    #
    class GetVoiceConnectorTerminationResponse < Struct.new(
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_regions
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListAvailableVoiceConnectorRegionsResponse AWS API Documentation
    #
    class ListAvailableVoiceConnectorRegionsResponse < Struct.new(
      :voice_connector_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListPhoneNumberOrdersRequest AWS API Documentation
    #
    class ListPhoneNumberOrdersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_orders
    #   @return [Array<Types::PhoneNumberOrder>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListPhoneNumberOrdersResponse AWS API Documentation
    #
    class ListPhoneNumberOrdersResponse < Struct.new(
      :phone_number_orders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   @return [String]
    #
    # @!attribute [rw] filter_value
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListPhoneNumbersRequest AWS API Documentation
    #
    class ListPhoneNumbersRequest < Struct.new(
      :status,
      :product_type,
      :filter_name,
      :filter_value,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_numbers
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListPhoneNumbersResponse AWS API Documentation
    #
    class ListPhoneNumbersResponse < Struct.new(
      :phone_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListProxySessionsRequest AWS API Documentation
    #
    class ListProxySessionsRequest < Struct.new(
      :voice_connector_id,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_sessions
    #   @return [Array<Types::ProxySession>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListProxySessionsResponse AWS API Documentation
    #
    class ListProxySessionsResponse < Struct.new(
      :proxy_sessions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSipMediaApplicationsRequest AWS API Documentation
    #
    class ListSipMediaApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_applications
    #   @return [Array<Types::SipMediaApplication>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSipMediaApplicationsResponse AWS API Documentation
    #
    class ListSipMediaApplicationsResponse < Struct.new(
      :sip_media_applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSipRulesRequest AWS API Documentation
    #
    class ListSipRulesRequest < Struct.new(
      :sip_media_application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rules
    #   @return [Array<Types::SipRule>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSipRulesResponse AWS API Documentation
    #
    class ListSipRulesResponse < Struct.new(
      :sip_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSupportedPhoneNumberCountriesRequest AWS API Documentation
    #
    class ListSupportedPhoneNumberCountriesRequest < Struct.new(
      :product_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_countries
    #   @return [Array<Types::PhoneNumberCountry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSupportedPhoneNumberCountriesResponse AWS API Documentation
    #
    class ListSupportedPhoneNumberCountriesResponse < Struct.new(
      :phone_number_countries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorGroupsRequest AWS API Documentation
    #
    class ListVoiceConnectorGroupsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_groups
    #   @return [Array<Types::VoiceConnectorGroup>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorGroupsResponse AWS API Documentation
    #
    class ListVoiceConnectorGroupsResponse < Struct.new(
      :voice_connector_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorTerminationCredentialsRequest AWS API Documentation
    #
    class ListVoiceConnectorTerminationCredentialsRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usernames
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorTerminationCredentialsResponse AWS API Documentation
    #
    class ListVoiceConnectorTerminationCredentialsResponse < Struct.new(
      :usernames)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorsRequest AWS API Documentation
    #
    class ListVoiceConnectorsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connectors
    #   @return [Array<Types::VoiceConnector>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorsResponse AWS API Documentation
    #
    class ListVoiceConnectorsResponse < Struct.new(
      :voice_connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enable_sip_logs
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :enable_sip_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/NotFoundException AWS API Documentation
    #
    class NotFoundException < Aws::EmptyStructure; end

    # @!attribute [rw] e164_phone_number
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/OrderedPhoneNumber AWS API Documentation
    #
    class OrderedPhoneNumber < Struct.new(
      :e164_phone_number,
      :status)
      SENSITIVE = [:e164_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] routes
    #   @return [Array<Types::OriginationRoute>]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Origination AWS API Documentation
    #
    class Origination < Struct.new(
      :routes,
      :disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] host
    #   @return [String]
    #
    # @!attribute [rw] port
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   @return [Integer]
    #
    # @!attribute [rw] weight
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/OriginationRoute AWS API Documentation
    #
    class OriginationRoute < Struct.new(
      :host,
      :port,
      :protocol,
      :priority,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   @return [String]
    #
    # @!attribute [rw] proxy_phone_number
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Participant AWS API Documentation
    #
    class Participant < Struct.new(
      :phone_number,
      :proxy_phone_number)
      SENSITIVE = [:phone_number, :proxy_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_number
    #   @return [String]
    #
    # @!attribute [rw] country
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   @return [Types::PhoneNumberCapabilities]
    #
    # @!attribute [rw] associations
    #   @return [Array<Types::PhoneNumberAssociation>]
    #
    # @!attribute [rw] calling_name
    #   @return [String]
    #
    # @!attribute [rw] calling_name_status
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] deletion_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] order_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PhoneNumber AWS API Documentation
    #
    class PhoneNumber < Struct.new(
      :phone_number_id,
      :e164_phone_number,
      :country,
      :type,
      :product_type,
      :status,
      :capabilities,
      :associations,
      :calling_name,
      :calling_name_status,
      :created_timestamp,
      :updated_timestamp,
      :deletion_timestamp,
      :order_id)
      SENSITIVE = [:phone_number_id, :e164_phone_number, :calling_name]
      include Aws::Structure
    end

    # @!attribute [rw] value
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] associated_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PhoneNumberAssociation AWS API Documentation
    #
    class PhoneNumberAssociation < Struct.new(
      :value,
      :name,
      :associated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inbound_call
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_call
    #   @return [Boolean]
    #
    # @!attribute [rw] inbound_sms
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_sms
    #   @return [Boolean]
    #
    # @!attribute [rw] inbound_mms
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_mms
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PhoneNumberCapabilities AWS API Documentation
    #
    class PhoneNumberCapabilities < Struct.new(
      :inbound_call,
      :outbound_call,
      :inbound_sms,
      :outbound_sms,
      :inbound_mms,
      :outbound_mms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] country_code
    #   @return [String]
    #
    # @!attribute [rw] supported_phone_number_types
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PhoneNumberCountry AWS API Documentation
    #
    class PhoneNumberCountry < Struct.new(
      :country_code,
      :supported_phone_number_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PhoneNumberError AWS API Documentation
    #
    class PhoneNumberError < Struct.new(
      :phone_number_id,
      :error_code,
      :error_message)
      SENSITIVE = [:phone_number_id]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_order_id
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] order_type
    #   @return [String]
    #
    # @!attribute [rw] ordered_phone_numbers
    #   @return [Array<Types::OrderedPhoneNumber>]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PhoneNumberOrder AWS API Documentation
    #
    class PhoneNumberOrder < Struct.new(
      :phone_number_order_id,
      :product_type,
      :status,
      :order_type,
      :ordered_phone_numbers,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] default_session_expiry_minutes
    #   @return [Integer]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @!attribute [rw] fall_back_phone_number
    #   @return [String]
    #
    # @!attribute [rw] phone_number_countries
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Proxy AWS API Documentation
    #
    class Proxy < Struct.new(
      :default_session_expiry_minutes,
      :disabled,
      :fall_back_phone_number,
      :phone_number_countries)
      SENSITIVE = [:fall_back_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] expiry_minutes
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] ended_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] participants
    #   @return [Array<Types::Participant>]
    #
    # @!attribute [rw] number_selection_behavior
    #   @return [String]
    #
    # @!attribute [rw] geo_match_level
    #   @return [String]
    #
    # @!attribute [rw] geo_match_params
    #   @return [Types::GeoMatchParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ProxySession AWS API Documentation
    #
    class ProxySession < Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      :name,
      :status,
      :expiry_minutes,
      :capabilities,
      :created_timestamp,
      :updated_timestamp,
      :ended_timestamp,
      :participants,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_alexa_skill_configuration
    #   @return [Types::SipMediaApplicationAlexaSkillConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutSipMediaApplicationAlexaSkillConfigurationRequest AWS API Documentation
    #
    class PutSipMediaApplicationAlexaSkillConfigurationRequest < Struct.new(
      :sip_media_application_id,
      :sip_media_application_alexa_skill_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_alexa_skill_configuration
    #   @return [Types::SipMediaApplicationAlexaSkillConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutSipMediaApplicationAlexaSkillConfigurationResponse AWS API Documentation
    #
    class PutSipMediaApplicationAlexaSkillConfigurationResponse < Struct.new(
      :sip_media_application_alexa_skill_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_logging_configuration
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutSipMediaApplicationLoggingConfigurationRequest AWS API Documentation
    #
    class PutSipMediaApplicationLoggingConfigurationRequest < Struct.new(
      :sip_media_application_id,
      :sip_media_application_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_logging_configuration
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutSipMediaApplicationLoggingConfigurationResponse AWS API Documentation
    #
    class PutSipMediaApplicationLoggingConfigurationResponse < Struct.new(
      :sip_media_application_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] emergency_calling_configuration
    #   @return [Types::EmergencyCallingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorEmergencyCallingConfigurationRequest AWS API Documentation
    #
    class PutVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      :voice_connector_id,
      :emergency_calling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] emergency_calling_configuration
    #   @return [Types::EmergencyCallingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorEmergencyCallingConfigurationResponse AWS API Documentation
    #
    class PutVoiceConnectorEmergencyCallingConfigurationResponse < Struct.new(
      :emergency_calling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorLoggingConfigurationRequest AWS API Documentation
    #
    class PutVoiceConnectorLoggingConfigurationRequest < Struct.new(
      :voice_connector_id,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] logging_configuration
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorLoggingConfigurationResponse AWS API Documentation
    #
    class PutVoiceConnectorLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] origination
    #   @return [Types::Origination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorOriginationRequest AWS API Documentation
    #
    class PutVoiceConnectorOriginationRequest < Struct.new(
      :voice_connector_id,
      :origination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origination
    #   @return [Types::Origination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorOriginationResponse AWS API Documentation
    #
    class PutVoiceConnectorOriginationResponse < Struct.new(
      :origination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] default_session_expiry_minutes
    #   @return [Integer]
    #
    # @!attribute [rw] phone_number_pool_countries
    #   @return [Array<String>]
    #
    # @!attribute [rw] fall_back_phone_number
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorProxyRequest AWS API Documentation
    #
    class PutVoiceConnectorProxyRequest < Struct.new(
      :voice_connector_id,
      :default_session_expiry_minutes,
      :phone_number_pool_countries,
      :fall_back_phone_number,
      :disabled)
      SENSITIVE = [:fall_back_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] proxy
    #   @return [Types::Proxy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorProxyResponse AWS API Documentation
    #
    class PutVoiceConnectorProxyResponse < Struct.new(
      :proxy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] streaming_configuration
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorStreamingConfigurationRequest AWS API Documentation
    #
    class PutVoiceConnectorStreamingConfigurationRequest < Struct.new(
      :voice_connector_id,
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_configuration
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorStreamingConfigurationResponse AWS API Documentation
    #
    class PutVoiceConnectorStreamingConfigurationResponse < Struct.new(
      :streaming_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   @return [Array<Types::Credential>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorTerminationCredentialsRequest AWS API Documentation
    #
    class PutVoiceConnectorTerminationCredentialsRequest < Struct.new(
      :voice_connector_id,
      :credentials)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] termination
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorTerminationRequest AWS API Documentation
    #
    class PutVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id,
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] termination
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorTerminationResponse AWS API Documentation
    #
    class PutVoiceConnectorTerminationResponse < Struct.new(
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/RestorePhoneNumberRequest AWS API Documentation
    #
    class RestorePhoneNumberRequest < Struct.new(
      :phone_number_id)
      SENSITIVE = [:phone_number_id]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   @return [Types::PhoneNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/RestorePhoneNumberResponse AWS API Documentation
    #
    class RestorePhoneNumberResponse < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] area_code
    #   @return [String]
    #
    # @!attribute [rw] city
    #   @return [String]
    #
    # @!attribute [rw] country
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] toll_free_prefix
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SearchAvailablePhoneNumbersRequest AWS API Documentation
    #
    class SearchAvailablePhoneNumbersRequest < Struct.new(
      :area_code,
      :city,
      :country,
      :state,
      :toll_free_prefix,
      :phone_number_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] e164_phone_numbers
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SearchAvailablePhoneNumbersResponse AWS API Documentation
    #
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      :e164_phone_numbers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Aws::EmptyStructure; end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplication AWS API Documentation
    #
    class SipMediaApplication < Struct.new(
      :sip_media_application_id,
      :aws_region,
      :name,
      :endpoints,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alexa_skill_status
    #   @return [String]
    #
    # @!attribute [rw] alexa_skill_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationAlexaSkillConfiguration AWS API Documentation
    #
    class SipMediaApplicationAlexaSkillConfiguration < Struct.new(
      :alexa_skill_status,
      :alexa_skill_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transaction_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationCall AWS API Documentation
    #
    class SipMediaApplicationCall < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lambda_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationEndpoint AWS API Documentation
    #
    class SipMediaApplicationEndpoint < Struct.new(
      :lambda_arn)
      SENSITIVE = [:lambda_arn]
      include Aws::Structure
    end

    # @!attribute [rw] enable_sip_media_application_message_logs
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationLoggingConfiguration AWS API Documentation
    #
    class SipMediaApplicationLoggingConfiguration < Struct.new(
      :enable_sip_media_application_message_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @!attribute [rw] trigger_type
    #   @return [String]
    #
    # @!attribute [rw] trigger_value
    #   @return [String]
    #
    # @!attribute [rw] target_applications
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipRule AWS API Documentation
    #
    class SipRule < Struct.new(
      :sip_rule_id,
      :name,
      :disabled,
      :trigger_type,
      :trigger_value,
      :target_applications,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   @return [Integer]
    #
    # @!attribute [rw] aws_region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipRuleTargetApplication AWS API Documentation
    #
    class SipRuleTargetApplication < Struct.new(
      :sip_media_application_id,
      :priority,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_retention_in_hours
    #   @return [Integer]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @!attribute [rw] streaming_notification_targets
    #   @return [Array<Types::StreamingNotificationTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StreamingConfiguration AWS API Documentation
    #
    class StreamingConfiguration < Struct.new(
      :data_retention_in_hours,
      :disabled,
      :streaming_notification_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notification_target
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StreamingNotificationTarget AWS API Documentation
    #
    class StreamingNotificationTarget < Struct.new(
      :notification_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cps_limit
    #   @return [Integer]
    #
    # @!attribute [rw] default_phone_number
    #   @return [String]
    #
    # @!attribute [rw] calling_regions
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_allowed_list
    #   @return [Array<String>]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Termination AWS API Documentation
    #
    class Termination < Struct.new(
      :cps_limit,
      :default_phone_number,
      :calling_regions,
      :cidr_allowed_list,
      :disabled)
      SENSITIVE = [:default_phone_number]
      include Aws::Structure
    end

    # @!attribute [rw] timestamp
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/TerminationHealth AWS API Documentation
    #
    class TerminationHealth < Struct.new(
      :timestamp,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Aws::EmptyStructure; end

    # @!attribute [rw] voice_connector
    #   @return [Types::VoiceConnectorSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateGlobalSettingsRequest AWS API Documentation
    #
    class UpdateGlobalSettingsRequest < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @!attribute [rw] calling_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdatePhoneNumberRequest AWS API Documentation
    #
    class UpdatePhoneNumberRequest < Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name)
      SENSITIVE = [:phone_number_id, :calling_name]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number_id
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   @return [String]
    #
    # @!attribute [rw] calling_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdatePhoneNumberRequestItem AWS API Documentation
    #
    class UpdatePhoneNumberRequestItem < Struct.new(
      :phone_number_id,
      :product_type,
      :calling_name)
      SENSITIVE = [:phone_number_id, :calling_name]
      include Aws::Structure
    end

    # @!attribute [rw] phone_number
    #   @return [Types::PhoneNumber]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdatePhoneNumberResponse AWS API Documentation
    #
    class UpdatePhoneNumberResponse < Struct.new(
      :phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calling_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdatePhoneNumberSettingsRequest AWS API Documentation
    #
    class UpdatePhoneNumberSettingsRequest < Struct.new(
      :calling_name)
      SENSITIVE = [:calling_name]
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   @return [Array<String>]
    #
    # @!attribute [rw] expiry_minutes
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateProxySessionRequest AWS API Documentation
    #
    class UpdateProxySessionRequest < Struct.new(
      :voice_connector_id,
      :proxy_session_id,
      :capabilities,
      :expiry_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] proxy_session
    #   @return [Types::ProxySession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateProxySessionResponse AWS API Documentation
    #
    class UpdateProxySessionResponse < Struct.new(
      :proxy_session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplicationCallRequest AWS API Documentation
    #
    class UpdateSipMediaApplicationCallRequest < Struct.new(
      :sip_media_application_id,
      :transaction_id,
      :arguments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_call
    #   @return [Types::SipMediaApplicationCall]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplicationCallResponse AWS API Documentation
    #
    class UpdateSipMediaApplicationCallResponse < Struct.new(
      :sip_media_application_call)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplicationRequest AWS API Documentation
    #
    class UpdateSipMediaApplicationRequest < Struct.new(
      :sip_media_application_id,
      :name,
      :endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   @return [Types::SipMediaApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplicationResponse AWS API Documentation
    #
    class UpdateSipMediaApplicationResponse < Struct.new(
      :sip_media_application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   @return [Boolean]
    #
    # @!attribute [rw] target_applications
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipRuleRequest AWS API Documentation
    #
    class UpdateSipRuleRequest < Struct.new(
      :sip_rule_id,
      :name,
      :disabled,
      :target_applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_rule
    #   @return [Types::SipRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipRuleResponse AWS API Documentation
    #
    class UpdateSipRuleResponse < Struct.new(
      :sip_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnectorGroupRequest AWS API Documentation
    #
    class UpdateVoiceConnectorGroupRequest < Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group
    #   @return [Types::VoiceConnectorGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnectorGroupResponse AWS API Documentation
    #
    class UpdateVoiceConnectorGroupResponse < Struct.new(
      :voice_connector_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnectorRequest AWS API Documentation
    #
    class UpdateVoiceConnectorRequest < Struct.new(
      :voice_connector_id,
      :name,
      :require_encryption)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnectorResponse AWS API Documentation
    #
    class UpdateVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   @return [String]
    #
    # @!attribute [rw] street_info
    #   @return [String]
    #
    # @!attribute [rw] city
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] country
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ValidateE911AddressRequest AWS API Documentation
    #
    class ValidateE911AddressRequest < Struct.new(
      :aws_account_id,
      :street_number,
      :street_info,
      :city,
      :state,
      :country,
      :postal_code)
      SENSITIVE = [:street_number, :street_info, :city, :state, :country, :postal_code]
      include Aws::Structure
    end

    # @!attribute [rw] validation_result
    #   @return [Integer]
    #
    # @!attribute [rw] address_external_id
    #   @return [String]
    #
    # @!attribute [rw] address
    #   @return [Types::Address]
    #
    # @!attribute [rw] candidate_address_list
    #   @return [Array<Types::CandidateAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ValidateE911AddressResponse AWS API Documentation
    #
    class ValidateE911AddressResponse < Struct.new(
      :validation_result,
      :address_external_id,
      :address,
      :candidate_address_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] outbound_host_name
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] voice_connector_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceConnector AWS API Documentation
    #
    class VoiceConnector < Struct.new(
      :voice_connector_id,
      :aws_region,
      :name,
      :outbound_host_name,
      :require_encryption,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @!attribute [rw] created_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   @return [Time]
    #
    # @!attribute [rw] voice_connector_group_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceConnectorGroup AWS API Documentation
    #
    class VoiceConnectorGroup < Struct.new(
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceConnectorItem AWS API Documentation
    #
    class VoiceConnectorItem < Struct.new(
      :voice_connector_id,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cdr_bucket
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceConnectorSettings AWS API Documentation
    #
    class VoiceConnectorSettings < Struct.new(
      :cdr_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
