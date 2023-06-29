# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKVoice
  module Types

    # You don't have the permissions needed to run this action.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # A validated address.
    #
    # @!attribute [rw] street_name
    #   The address street, such as `8th Avenue`.
    #   @return [String]
    #
    # @!attribute [rw] street_suffix
    #   The address suffix, such as the `N` in `8th Avenue N`.
    #   @return [String]
    #
    # @!attribute [rw] post_directional
    #   An address suffix location, such as the `S. Unit A` in `Central Park
    #   S. Unit A`.
    #   @return [String]
    #
    # @!attribute [rw] pre_directional
    #   An address prefix location, such as the `N` in `N. Third St.`
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   The numeric portion of an address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of an address.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of an address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of an address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code_plus_4
    #   The zip + 4 or postal code + 4 of an address.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country of an address.
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
    #   The Amazon Chime SDK Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime SDK Voice Connector Group and removes any previously
    #   existing associations. If false, does not associate any phone
    #   numbers that have previously existing associations.
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
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime SDK Voice Connector and removes any previously existing
    #   associations. If false, does not associate any phone numbers that
    #   have previously existing associations.
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
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnectorResponse AWS API Documentation
    #
    class AssociatePhoneNumbersWithVoiceConnectorResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input parameters don't match the service's restrictions.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BadRequestException AWS API Documentation
    #
    class BadRequestException < Aws::EmptyStructure; end

    # @!attribute [rw] phone_number_ids
    #   List of phone number IDs.
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
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
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
    #   Lists the phone numbers in the update request.
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
    #   A list of failed phone numbers and their error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchUpdatePhoneNumberResponse AWS API Documentation
    #
    class BatchUpdatePhoneNumberResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon Chime SDK Voice Connector call.
    #
    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID of a Voice Connector call.
    #   @return [String]
    #
    # @!attribute [rw] is_caller
    #   Identifies a person as the caller or the callee.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CallDetails AWS API Documentation
    #
    class CallDetails < Struct.new(
      :voice_connector_id,
      :transaction_id,
      :is_caller)
      SENSITIVE = []
      include Aws::Structure
    end

    # A suggested address.
    #
    # @!attribute [rw] street_info
    #   The street information of the candidate address.
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   The numeric portion of the candidate address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city of the candidate address.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the candidate address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of the candidate address.
    #   @return [String]
    #
    # @!attribute [rw] postal_code_plus_4
    #   The zip + 4 or postal code +4 of the candidate address.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country of the candidate address.
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

    # Multiple instances of the same request were made simultaneously.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] product_type
    #   The phone number product type.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
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
    #   The phone number order details.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] participant_phone_numbers
    #   The participant phone numbers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the proxy session.
    #   @return [String]
    #
    # @!attribute [rw] expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   The proxy session's capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] number_selection_behavior
    #   The preference for proxy phone number reuse, or stickiness, between
    #   the same participants across sessions.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_level
    #   The preference for matching the country or area code of the proxy
    #   phone number with that of the first participant.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_params
    #   The country and area code for the proxy phone number.
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
    #   The proxy session details.
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
    #   The phone number that a user calls from. This is a phone number in
    #   your Amazon Chime SDK phone number inventory.
    #   @return [String]
    #
    # @!attribute [rw] to_phone_number
    #   The phone number that the service should call.
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_id
    #   The ID of the SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] sip_headers
    #   The SIP headers added to an outbound call leg.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] arguments_map
    #   Context passed to a CreateSipMediaApplication API call. For example,
    #   you could pass key-value pairs such as: `"FirstName": "John",
    #   "LastName": "Doe"`
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
    #   The actual call.
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
    #   The AWS Region assigned to the SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The SIP media application's name.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   List of endpoints (Lambda ARNs) specified for the SIP media
    #   application.
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the SIP media application.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplicationRequest AWS API Documentation
    #
    class CreateSipMediaApplicationRequest < Struct.new(
      :aws_region,
      :name,
      :endpoints,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sip_media_application
    #   The SIP media application details.
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
    #   The name of the SIP rule.
    #   @return [String]
    #
    # @!attribute [rw] trigger_type
    #   The type of trigger assigned to the SIP rule in `TriggerValue`,
    #   currently `RequestUriHostname` or `ToPhoneNumber`.
    #   @return [String]
    #
    # @!attribute [rw] trigger_value
    #   If `TriggerType` is `RequestUriHostname`, the value can be the
    #   outbound host name of a Voice Connector. If `TriggerType` is
    #   `ToPhoneNumber`, the value can be a customer-owned phone number in
    #   the E164 format. The `SipMediaApplication` specified in the
    #   `SipRule` is triggered if the request URI in an incoming SIP request
    #   matches the `RequestUriHostname`, or if the `To` header in the
    #   incoming SIP request matches the `ToPhoneNumber` value.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   Disables or enables a SIP rule. You must disable SIP rules before
    #   you can delete them.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_applications
    #   List of SIP media applications, with priority and AWS Region. Only
    #   one SIP application per AWS Region can be used.
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
    #   The SIP rule information, including the rule ID, triggers, and
    #   target applications.
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
    #   The name of the Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   Lists the Voice Connectors that inbound calls are routed to.
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
    #   The details of the Voice Connector group.
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
    #   The name of the Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the Amazon Chime SDK Voice Connector is
    #   created. Default value: `us-east-1` .
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   Enables or disables encryption for the Voice Connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the Voice Connector.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorRequest AWS API Documentation
    #
    class CreateVoiceConnectorRequest < Struct.new(
      :name,
      :aws_region,
      :require_encryption,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   The details of the Voice Connector.
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorResponse AWS API Documentation
    #
    class CreateVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The server-side encryption configuration for the request.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different domain creation requests.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceProfileDomainRequest AWS API Documentation
    #
    class CreateVoiceProfileDomainRequest < Struct.new(
      :name,
      :description,
      :server_side_encryption_configuration,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain
    #   The requested voice profile domain.
    #   @return [Types::VoiceProfileDomain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceProfileDomainResponse AWS API Documentation
    #
    class CreateVoiceProfileDomainResponse < Struct.new(
      :voice_profile_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] speaker_search_task_id
    #   The ID of the speaker search task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceProfileRequest AWS API Documentation
    #
    class CreateVoiceProfileRequest < Struct.new(
      :speaker_search_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile
    #   The requested voice profile.
    #   @return [Types::VoiceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceProfileResponse AWS API Documentation
    #
    class CreateVoiceProfileResponse < Struct.new(
      :voice_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SIP credentials used to authenticate requests to an Amazon Chime
    # SDK Voice Connector.
    #
    # @!attribute [rw] username
    #   The RFC2617 compliant user name associated with the SIP credentials,
    #   in US-ASCII format.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The RFC2617 compliant password associated with the SIP credentials,
    #   in US-ASCII format.
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

    # The Dialed Number Identification Service (DNIS) emergency calling
    # configuration details associated with an Amazon Chime SDK Voice
    # Connector's emergency calling configuration.
    #
    # @!attribute [rw] emergency_phone_number
    #   The DNIS phone number that you route emergency calls to, in E.164
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] test_phone_number
    #   The DNIS phone number for routing test emergency calls to, in E.164
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] calling_country
    #   The country from which emergency calls are allowed, in ISO 3166-1
    #   alpha-2 format.
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
    #   The phone number ID.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
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
    #   The SIP media application ID.
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
    #   The SIP rule ID.
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
    #   The Voice Connector ID.
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
    #   The Voice Connector Group ID.
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
    #   The Voice Connector ID.
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
    #   The Voice Connector ID.
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
    #   The Voice Connector ID.
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
    #   The Voice Connector ID.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] usernames
    #   The RFC2617 compliant username associated with the SIP credentials,
    #   in US-ASCII format.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorTerminationRequest AWS API Documentation
    #
    class DeleteVoiceConnectorTerminationRequest < Struct.new(
      :voice_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain_id
    #   The voice profile domain ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceProfileDomainRequest AWS API Documentation
    #
    class DeleteVoiceProfileDomainRequest < Struct.new(
      :voice_profile_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_id
    #   The voice profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceProfileRequest AWS API Documentation
    #
    class DeleteVoiceProfileRequest < Struct.new(
      :voice_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_group_id
    #   The Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   The list of phone numbers, in E.164 format.
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
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_numbers
    #   List of phone numbers, in E.164 format.
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
    #   If the action fails for one or more of the phone numbers in the
    #   request, a list of the phone numbers is returned, along with error
    #   codes and error messages.
    #   @return [Array<Types::PhoneNumberError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnectorResponse AWS API Documentation
    #
    class DisassociatePhoneNumbersFromVoiceConnectorResponse < Struct.new(
      :phone_number_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The emergency calling configuration details associated with an Amazon
    # Chime SDK Voice Connector.
    #
    # @!attribute [rw] dnis
    #   The Dialed Number Identification Service (DNIS) emergency calling
    #   configuration details.
    #   @return [Array<Types::DNISEmergencyCallingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/EmergencyCallingConfiguration AWS API Documentation
    #
    class EmergencyCallingConfiguration < Struct.new(
      :dnis)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is permanently forbidden from making the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Aws::EmptyStructure; end

    # The country and area code for a proxy phone number in a proxy phone
    # session.
    #
    # @!attribute [rw] country
    #   The country.
    #   @return [String]
    #
    # @!attribute [rw] area_code
    #   The area code.
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
    #   The Voice Connector settings.
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
    #   The ID of the phone number order .
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
    #   The phone number order details.
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
    #   The phone number ID.
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
    #   The phone number details.
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
    #   The default outbound calling name for the account.
    #   @return [String]
    #
    # @!attribute [rw] calling_name_updated_timestamp
    #   The updated outbound calling name timestamp, in ISO 8601 format.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
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
    #   The proxy session details.
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
    #   The SIP media application ID.
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
    #   Returns the Alexa Skill configuration.
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
    #   The SIP media application ID.
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
    #   The actual logging configuration.
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
    #   The SIP media application ID .
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
    #   The details of the SIP media application.
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
    #   The SIP rule ID.
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
    #   The SIP rule details.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] speaker_search_task_id
    #   The ID of the speaker search task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSpeakerSearchTaskRequest AWS API Documentation
    #
    class GetSpeakerSearchTaskRequest < Struct.new(
      :voice_connector_id,
      :speaker_search_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] speaker_search_task
    #   The details of the speaker search task.
    #   @return [Types::SpeakerSearchTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSpeakerSearchTaskResponse AWS API Documentation
    #
    class GetSpeakerSearchTaskResponse < Struct.new(
      :speaker_search_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
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
    #   The details of the emergency calling configuration.
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
    #   The Voice Connector group ID.
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
    #   The details of the Voice Connector group.
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
    #   The Voice Connector ID.
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
    #   The logging configuration details .
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
    #   The Voice Connector ID.
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
    #   The origination setting details.
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
    #   The Voice Connector ID.
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
    #   The proxy configuration details.
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
    #   The Voice Connector ID.
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
    #   The Voice Connector details.
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
    #   The Voice Connector ID.
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
    #   The details of the streaming configuration.
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
    #   The Voice Connector ID.
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
    #   The termination health details.
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
    #   The Voice Connector ID.
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
    #   The termination setting details.
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTerminationResponse AWS API Documentation
    #
    class GetVoiceConnectorTerminationResponse < Struct.new(
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain_id
    #   The voice profile domain ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceProfileDomainRequest AWS API Documentation
    #
    class GetVoiceProfileDomainRequest < Struct.new(
      :voice_profile_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain
    #   The details of the voice profile domain.
    #   @return [Types::VoiceProfileDomain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceProfileDomainResponse AWS API Documentation
    #
    class GetVoiceProfileDomainResponse < Struct.new(
      :voice_profile_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_id
    #   The voice profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceProfileRequest AWS API Documentation
    #
    class GetVoiceProfileRequest < Struct.new(
      :voice_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile
    #   The voice profile details.
    #   @return [Types::VoiceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceProfileResponse AWS API Documentation
    #
    class GetVoiceProfileResponse < Struct.new(
      :voice_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] voice_tone_analysis_task_id
    #   The ID of the voice tone anlysis task.
    #   @return [String]
    #
    # @!attribute [rw] is_caller
    #   Specifies whether the voice being analyzed is the caller
    #   (originator) or the callee (responder).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceToneAnalysisTaskRequest AWS API Documentation
    #
    class GetVoiceToneAnalysisTaskRequest < Struct.new(
      :voice_connector_id,
      :voice_tone_analysis_task_id,
      :is_caller)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_tone_analysis_task
    #   The details of the voice tone analysis task.
    #   @return [Types::VoiceToneAnalysisTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceToneAnalysisTaskResponse AWS API Documentation
    #
    class GetVoiceToneAnalysisTaskResponse < Struct.new(
      :voice_tone_analysis_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access to the target resource is no longer available at the origin
    # server. This condition is likely to be permanent.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GoneException AWS API Documentation
    #
    class GoneException < Aws::EmptyStructure; end

    # @!attribute [rw] voice_connector_regions
    #   The list of AWS Regions.
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
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The phone number order details.
    #   @return [Array<Types::PhoneNumberOrder>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
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
    #   The status of your organization's phone numbers.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The phone number product types.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The filter to limit the number of results.
    #   @return [String]
    #
    # @!attribute [rw] filter_value
    #   The filter value.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The phone number details.
    #   @return [Array<Types::PhoneNumber>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The proxy session status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The proxy sessions' details.
    #   @return [Array<Types::ProxySession>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
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
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The list of SIP media applications and application details.
    #   @return [Array<Types::SipMediaApplication>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Defaults
    #   to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The list of SIP rules and details.
    #   @return [Array<Types::SipRule>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The phone number product type.
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
    #   The supported phone number countries.
    #   @return [Array<Types::PhoneNumberCountry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSupportedPhoneNumberCountriesResponse AWS API Documentation
    #
    class ListSupportedPhoneNumberCountriesResponse < Struct.new(
      :phone_number_countries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags in the list.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The details of the Voice Connector groups.
    #   @return [Array<Types::VoiceConnectorGroup>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   The Voice Connector ID.
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
    #   A list of user names.
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
    #   The token used to return the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The details of the Voice Connectors.
    #   @return [Array<Types::VoiceConnector>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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

    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceProfileDomainsRequest AWS API Documentation
    #
    class ListVoiceProfileDomainsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domains
    #   The list of voice profile domains.
    #   @return [Array<Types::VoiceProfileDomainSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceProfileDomainsResponse AWS API Documentation
    #
    class ListVoiceProfileDomainsResponse < Struct.new(
      :voice_profile_domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain_id
    #   The ID of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results in the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceProfilesRequest AWS API Documentation
    #
    class ListVoiceProfilesRequest < Struct.new(
      :voice_profile_domain_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profiles
    #   The list of voice profiles.
    #   @return [Array<Types::VoiceProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceProfilesResponse AWS API Documentation
    #
    class ListVoiceProfilesResponse < Struct.new(
      :voice_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration associated with an Amazon Chime SDK Voice
    # Connector. Specifies whether SIP message logs can be sent to Amazon
    # CloudWatch Logs.
    #
    # @!attribute [rw] enable_sip_logs
    #   Boolean that enables sending SIP message logs to Amazon CloudWatch.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_media_metric_logs
    #   Enables or disables media metrics logging.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :enable_sip_logs,
      :enable_media_metric_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a call analytics task.
    #
    # @!attribute [rw] disabled
    #   Denotes the configration as enabled or disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] configuration_arn
    #   The configuration's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/MediaInsightsConfiguration AWS API Documentation
    #
    class MediaInsightsConfiguration < Struct.new(
      :disabled,
      :configuration_arn)
      SENSITIVE = [:configuration_arn]
      include Aws::Structure
    end

    # The requested resource couldn't be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/NotFoundException AWS API Documentation
    #
    class NotFoundException < Aws::EmptyStructure; end

    # A phone number for which an order has been placed.
    #
    # @!attribute [rw] e164_phone_number
    #   The phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The phone number status.
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

    # Origination settings enable your SIP hosts to receive inbound calls
    # using your Amazon Chime SDK Voice Connector.
    #
    # <note markdown="1"> The parameters listed below are not required, but you must use at
    # least one.
    #
    #  </note>
    #
    # @!attribute [rw] routes
    #   The call distribution properties defined for your SIP hosts. Valid
    #   range: Minimum value of 1. Maximum value of 20. This parameter is
    #   not required, but you must specify this parameter or `Disabled`.
    #   @return [Array<Types::OriginationRoute>]
    #
    # @!attribute [rw] disabled
    #   When origination settings are disabled, inbound calls are not
    #   enabled for your Amazon Chime SDK Voice Connector. This parameter is
    #   not required, but you must specify this parameter or `Routes`.
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

    # Origination routes define call distribution properties for your SIP
    # hosts to receive inbound calls using an Amazon Chime SDK Voice
    # Connector. Limit: Ten origination routes for each Voice Connector.
    #
    # <note markdown="1"> The parameters listed below are not required, but you must use at
    # least one.
    #
    #  </note>
    #
    # @!attribute [rw] host
    #   The FQDN or IP address to contact for origination traffic.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The designated origination route port. Defaults to 5060.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for the origination route. Encryption-enabled
    #   Amazon Chime SDK Voice Connectors use TCP protocol by default.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority associated with the host, with 1 being the highest
    #   priority. Higher priority hosts are attempted first.
    #   @return [Integer]
    #
    # @!attribute [rw] weight
    #   The weight assigned to an origination route. When hosts have equal
    #   priority, calls are distributed between them based on their relative
    #   weights.
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

    # The phone number and proxy phone number for a participant in an Amazon
    # Chime SDK Voice Connector proxy session.
    #
    # @!attribute [rw] phone_number
    #   The participant's phone number.
    #   @return [String]
    #
    # @!attribute [rw] proxy_phone_number
    #   The participant's proxy phone number.
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

    # A phone number used to call an Amazon Chime SDK Voice Connector.
    #
    # @!attribute [rw] phone_number_id
    #   The phone number's ID.
    #   @return [String]
    #
    # @!attribute [rw] e164_phone_number
    #   The phone number, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The phone number's country. Format: ISO 3166-1 alpha-2.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The phone number's type.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The phone number's product type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The phone number's status.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The phone number's capabilities.
    #   @return [Types::PhoneNumberCapabilities]
    #
    # @!attribute [rw] associations
    #   The phone number's associations.
    #   @return [Array<Types::PhoneNumberAssociation>]
    #
    # @!attribute [rw] calling_name
    #   The outbound calling name associated with the phone number.
    #   @return [String]
    #
    # @!attribute [rw] calling_name_status
    #   The outbound calling name status.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The phone number creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated phone number timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] deletion_timestamp
    #   The deleted phone number timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] order_id
    #   The phone number's order ID.
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

    # The phone number associations, such as an Amazon Chime SDK account ID,
    # user ID, Voice Connector ID, or Voice Connector group ID.
    #
    # @!attribute [rw] value
    #   Contains the ID for the entity specified in Name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Defines the association with an Amazon Chime SDK account ID, user
    #   ID, Voice Connector ID, or Voice Connector group ID.
    #   @return [String]
    #
    # @!attribute [rw] associated_timestamp
    #   The timestamp of the phone number association, in ISO 8601 format.
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

    # The phone number capabilities for Amazon Chime SDK phone numbers, such
    # as enabled inbound and outbound calling, and text messaging.
    #
    # @!attribute [rw] inbound_call
    #   Allows or denies inbound calling for the specified phone number.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_call
    #   Allows or denies outbound calling for the specified phone number.
    #   @return [Boolean]
    #
    # @!attribute [rw] inbound_sms
    #   Allows or denies inbound SMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_sms
    #   Allows or denies outbound SMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @!attribute [rw] inbound_mms
    #   Allows or denies inbound MMS messaging for the specified phone
    #   number.
    #   @return [Boolean]
    #
    # @!attribute [rw] outbound_mms
    #   Allows or denies inbound MMS messaging for the specified phone
    #   number.
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

    # The phone number's country.
    #
    # @!attribute [rw] country_code
    #   The phone number country code. Format: ISO 3166-1 alpha-2.
    #   @return [String]
    #
    # @!attribute [rw] supported_phone_number_types
    #   The supported phone number types.
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

    # If a phone number action fails for one or more of the phone numbers in
    # a request, a list of the failed phone numbers is returned, along with
    # error codes and error messages.
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID for which the action failed.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
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

    # The details of an Amazon Chime SDK phone number order.
    #
    # @!attribute [rw] phone_number_order_id
    #   The ID of the phone order.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The phone number order product type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the phone number order.
    #   @return [String]
    #
    # @!attribute [rw] order_type
    #   The type of phone number being ordered, local or toll-free.
    #   @return [String]
    #
    # @!attribute [rw] ordered_phone_numbers
    #   The ordered phone number details, such as the phone number in E.164
    #   format and the phone number status.
    #   @return [Array<Types::OrderedPhoneNumber>]
    #
    # @!attribute [rw] created_timestamp
    #   The phone number order creation time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated phone number order time stamp, in ISO 8601 format.
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

    # The proxy configuration for an Amazon Chime SDK Voice Connector.
    #
    # @!attribute [rw] default_session_expiry_minutes
    #   The default number of minutes allowed for proxy sessions.
    #   @return [Integer]
    #
    # @!attribute [rw] disabled
    #   When true, stops proxy sessions from being created on the specified
    #   Amazon Chime SDK Voice Connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] fall_back_phone_number
    #   The phone number to route calls to after a proxy session expires.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_countries
    #   The countries for proxy phone numbers to be selected from.
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

    # The proxy session for an Amazon Chime SDK Voice Connector.
    #
    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The proxy session name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The proxy session status.
    #   @return [String]
    #
    # @!attribute [rw] expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #   @return [Integer]
    #
    # @!attribute [rw] capabilities
    #   The proxy session capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   The created time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The updated time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] ended_timestamp
    #   The ended time stamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] participants
    #   The proxy session participants.
    #   @return [Array<Types::Participant>]
    #
    # @!attribute [rw] number_selection_behavior
    #   The preference for proxy phone number reuse, or stickiness, between
    #   the same participants across sessions.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_level
    #   The preference for matching the country or area code of the proxy
    #   phone number with that of the first participant.
    #   @return [String]
    #
    # @!attribute [rw] geo_match_params
    #   The country and area code for the proxy phone number.
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
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_alexa_skill_configuration
    #   The Alexa Skill configuration.
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
    #   Returns the Alexa Skill configuration.
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
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] sip_media_application_logging_configuration
    #   The logging configuration for the specified SIP media application.
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
    #   The updated logging configuration for the specified SIP media
    #   application.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] emergency_calling_configuration
    #   The configuration being updated.
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
    #   The updated configuration.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The logging configuration being updated.
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
    #   The updated logging configuration.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] origination
    #   The origination settings being updated.
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
    #   The updated origination settings.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] default_session_expiry_minutes
    #   The default number of minutes allowed for proxy session.
    #   @return [Integer]
    #
    # @!attribute [rw] phone_number_pool_countries
    #   The countries for proxy phone numbers to be selected from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fall_back_phone_number
    #   The phone number to route calls to after a proxy session expires.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   When true, stops proxy sessions from being created on the specified
    #   Amazon Chime SDK Voice Connector.
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
    #   The proxy configuration details.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] streaming_configuration
    #   The streaming settings being updated.
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
    #   The updated streaming settings.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The termination credentials being updated.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] termination
    #   The termination settings to be updated.
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
    #   The updated termination settings.
    #   @return [Types::Termination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorTerminationResponse AWS API Documentation
    #
    class PutVoiceConnectorTerminationResponse < Struct.new(
      :termination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the resource limit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] phone_number_id
    #   The ID of the phone number being restored.
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
    #   The restored phone number.
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
    #   Confines a search to just the phone numbers associated with the
    #   specified area code.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   Confines a search to just the phone numbers associated with the
    #   specified city.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   Confines a search to just the phone numbers associated with the
    #   specified country.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Confines a search to just the phone numbers associated with the
    #   specified state.
    #   @return [String]
    #
    # @!attribute [rw] toll_free_prefix
    #   Confines a search to just the phone numbers associated with the
    #   specified toll-free prefix.
    #   @return [String]
    #
    # @!attribute [rw] phone_number_type
    #   Confines a search to just the phone numbers associated with the
    #   specified phone number type, either **local** or **toll-free**.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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
    #   Confines a search to just the phone numbers in the E.164 format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token used to return the next page of results.
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

    # A structure that contains the configuration settings for server-side
    # encryption.
    #
    # <note markdown="1"> We only support symmetric keys. Do not use asymmetric or HMAC keys, or
    # KMS aliases.
    #
    #  </note>
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key used to encrypt the enrollment data in a
    #   voice profile domain. Asymmetric customer managed keys are not
    #   supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ServerSideEncryptionConfiguration AWS API Documentation
    #
    class ServerSideEncryptionConfiguration < Struct.new(
      :kms_key_arn)
      SENSITIVE = [:kms_key_arn]
      include Aws::Structure
    end

    # The service encountered an unexpected error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ServiceFailureException AWS API Documentation
    #
    class ServiceFailureException < Aws::EmptyStructure; end

    # The service is currently unavailable.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Aws::EmptyStructure; end

    # The details of the SIP media application, including name and
    # endpoints. An AWS account can have multiple SIP media applications.
    #
    # @!attribute [rw] sip_media_application_id
    #   A SIP media application's ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the SIP media application is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The SIP media application's name.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   List of endpoints for a SIP media application. Currently, only one
    #   endpoint per SIP media application is permitted.
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    #
    # @!attribute [rw] created_timestamp
    #   The SIP media application creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the SIP media application was updated.
    #   @return [Time]
    #
    # @!attribute [rw] sip_media_application_arn
    #   The ARN of the SIP media application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplication AWS API Documentation
    #
    class SipMediaApplication < Struct.new(
      :sip_media_application_id,
      :aws_region,
      :name,
      :endpoints,
      :created_timestamp,
      :updated_timestamp,
      :sip_media_application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Alexa Skill configuration of a SIP media application.
    #
    # @!attribute [rw] alexa_skill_status
    #   The status of the Alexa Skill configuration.
    #   @return [String]
    #
    # @!attribute [rw] alexa_skill_ids
    #   The ID of the Alexa Skill configuration.
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

    # A `Call` instance for a SIP media application.
    #
    # @!attribute [rw] transaction_id
    #   The call's transaction ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationCall AWS API Documentation
    #
    class SipMediaApplicationCall < Struct.new(
      :transaction_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint assigned to a SIP media application.
    #
    # @!attribute [rw] lambda_arn
    #   Valid Amazon Resource Name (ARN) of the Lambda function, version, or
    #   alias. The function must be created in the same AWS Region as the
    #   SIP media application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationEndpoint AWS API Documentation
    #
    class SipMediaApplicationEndpoint < Struct.new(
      :lambda_arn)
      SENSITIVE = [:lambda_arn]
      include Aws::Structure
    end

    # The logging configuration of a SIP media application.
    #
    # @!attribute [rw] enable_sip_media_application_message_logs
    #   Enables message logging for the specified SIP media application.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SipMediaApplicationLoggingConfiguration AWS API Documentation
    #
    class SipMediaApplicationLoggingConfiguration < Struct.new(
      :enable_sip_media_application_message_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a SIP rule, including name, triggers, and target
    # applications. An AWS account can have multiple SIP rules.
    #
    # @!attribute [rw] sip_rule_id
    #   A SIP rule's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A SIP rule's name.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   Indicates whether the SIP rule is enabled or disabled. You must
    #   disable a rule before you can delete it.
    #   @return [Boolean]
    #
    # @!attribute [rw] trigger_type
    #   The type of trigger set for a SIP rule, either a phone number or a
    #   URI request host name.
    #   @return [String]
    #
    # @!attribute [rw] trigger_value
    #   The value set for a SIP rule's trigger type. Either a phone number
    #   or a URI hostname.
    #   @return [String]
    #
    # @!attribute [rw] target_applications
    #   The target SIP media application and other details, such as priority
    #   and AWS Region, to be specified in the SIP rule. Only one SIP rule
    #   per AWS Region can be provided.
    #   @return [Array<Types::SipRuleTargetApplication>]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the SIP rule was created, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the SIP rule was updated, in ISO 8601 format.
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

    # A target SIP media application and other details, such as priority and
    # AWS Region, to be specified in the SIP rule. Only one SIP rule per AWS
    # Region can be provided.
    #
    # @!attribute [rw] sip_media_application_id
    #   The ID of a rule's target SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority setting of a rule's target SIP media application.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region of a rule's target SIP media application.
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

    # The details of a speaker search task.
    #
    # @!attribute [rw] results
    #   The result value in the speaker search details.
    #   @return [Array<Types::SpeakerSearchResult>]
    #
    # @!attribute [rw] voiceprint_generation_status
    #   The status of a voice print generation operation,
    #   `VoiceprintGenerationSuccess` or `VoiceprintGenerationFailure`..
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SpeakerSearchDetails AWS API Documentation
    #
    class SpeakerSearchDetails < Struct.new(
      :results,
      :voiceprint_generation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a speaker search analysis.
    #
    # @!attribute [rw] confidence_score
    #   The confidence score in the speaker search analysis.
    #   @return [Float]
    #
    # @!attribute [rw] voice_profile_id
    #   The voice profile ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SpeakerSearchResult AWS API Documentation
    #
    class SpeakerSearchResult < Struct.new(
      :confidence_score,
      :voice_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A representation of an asynchronous request to perform speaker search
    # analysis on a Voice Connector call.
    #
    # @!attribute [rw] speaker_search_task_id
    #   The speaker search task ID.
    #   @return [String]
    #
    # @!attribute [rw] speaker_search_task_status
    #   The status of the speaker search task, `IN_QUEUE`, `IN_PROGRESS`,
    #   `PARTIAL_SUCCESS`, `SUCCEEDED`, `FAILED`, or `STOPPED`.
    #   @return [String]
    #
    # @!attribute [rw] call_details
    #   The call details of a speaker search task.
    #   @return [Types::CallDetails]
    #
    # @!attribute [rw] speaker_search_details
    #   The details of a speaker search task.
    #   @return [Types::SpeakerSearchDetails]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which a speaker search task was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which a speaker search task was updated.
    #   @return [Time]
    #
    # @!attribute [rw] started_timestamp
    #   The time at which the speaker search task began.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   A detailed message about the status of a speaker search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SpeakerSearchTask AWS API Documentation
    #
    class SpeakerSearchTask < Struct.new(
      :speaker_search_task_id,
      :speaker_search_task_status,
      :call_details,
      :speaker_search_details,
      :created_timestamp,
      :updated_timestamp,
      :started_timestamp,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID of the call being analyzed.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_domain_id
    #   The ID of the voice profile domain that will store the voice
    #   profile.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different speaker search tasks.
    #   @return [String]
    #
    # @!attribute [rw] call_leg
    #   Specifies which call leg to stream for speaker search.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StartSpeakerSearchTaskRequest AWS API Documentation
    #
    class StartSpeakerSearchTaskRequest < Struct.new(
      :voice_connector_id,
      :transaction_id,
      :voice_profile_domain_id,
      :client_request_token,
      :call_leg)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] speaker_search_task
    #   The details of the speaker search task.
    #   @return [Types::SpeakerSearchTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StartSpeakerSearchTaskResponse AWS API Documentation
    #
    class StartSpeakerSearchTaskResponse < Struct.new(
      :speaker_search_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The transaction ID.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different voice tone analysis tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StartVoiceToneAnalysisTaskRequest AWS API Documentation
    #
    class StartVoiceToneAnalysisTaskRequest < Struct.new(
      :voice_connector_id,
      :transaction_id,
      :language_code,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_tone_analysis_task
    #   The details of the voice tone analysis task.
    #   @return [Types::VoiceToneAnalysisTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StartVoiceToneAnalysisTaskResponse AWS API Documentation
    #
    class StartVoiceToneAnalysisTaskResponse < Struct.new(
      :voice_tone_analysis_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] speaker_search_task_id
    #   The speaker search task ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StopSpeakerSearchTaskRequest AWS API Documentation
    #
    class StopSpeakerSearchTaskRequest < Struct.new(
      :voice_connector_id,
      :speaker_search_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] voice_tone_analysis_task_id
    #   The ID of the voice tone analysis task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StopVoiceToneAnalysisTaskRequest AWS API Documentation
    #
    class StopVoiceToneAnalysisTaskRequest < Struct.new(
      :voice_connector_id,
      :voice_tone_analysis_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The streaming configuration associated with an Amazon Chime SDK Voice
    # Connector. Specifies whether media streaming is enabled for sending to
    # Amazon Kinesis, and shows the retention period for the Amazon Kinesis
    # data, in hours.
    #
    # @!attribute [rw] data_retention_in_hours
    #   The amount of time, in hours, to the Kinesis data.
    #   @return [Integer]
    #
    # @!attribute [rw] disabled
    #   When true, streaming to Kinesis is off.
    #   @return [Boolean]
    #
    # @!attribute [rw] streaming_notification_targets
    #   The streaming notification targets.
    #   @return [Array<Types::StreamingNotificationTarget>]
    #
    # @!attribute [rw] media_insights_configuration
    #   The call analytics configuration.
    #   @return [Types::MediaInsightsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StreamingConfiguration AWS API Documentation
    #
    class StreamingConfiguration < Struct.new(
      :data_retention_in_hours,
      :disabled,
      :streaming_notification_targets,
      :media_insights_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target recipient for a streaming configuration notification.
    #
    # @!attribute [rw] notification_target
    #   The streaming notification target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StreamingNotificationTarget AWS API Documentation
    #
    class StreamingNotificationTarget < Struct.new(
      :notification_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag applied to a resource.
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:key, :value]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource being tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tags being added to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # Termination settings enable SIP hosts to make outbound calls using an
    # Amazon Chime SDK Voice Connector.
    #
    # @!attribute [rw] cps_limit
    #   The limit on calls per second. Max value based on account service
    #   quota. Default value of 1.
    #   @return [Integer]
    #
    # @!attribute [rw] default_phone_number
    #   The default outbound calling number.
    #   @return [String]
    #
    # @!attribute [rw] calling_regions
    #   The countries to which calls are allowed, in ISO 3166-1 alpha-2
    #   format. Required.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cidr_allowed_list
    #   The IP addresses allowed to make calls, in CIDR format.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disabled
    #   When termination is disabled, outbound calls cannot be made.
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

    # The termination health details, including the source IP address and
    # timestamp of the last successful `SIP OPTIONS` message from your SIP
    # infrastructure.
    #
    # @!attribute [rw] timestamp
    #   The timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The source IP address.
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

    # The number of customer requests exceeds the request rate limit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ThrottledClientException AWS API Documentation
    #
    class ThrottledClientException < Aws::EmptyStructure; end

    # The client isn't authorized to request a resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UnauthorizedClientException AWS API Documentation
    #
    class UnauthorizedClientException < Aws::EmptyStructure; end

    # A well-formed request couldn't be followed due to semantic errors.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UnprocessableEntityException AWS API Documentation
    #
    class UnprocessableEntityException < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource having its tags removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags being removed from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:resource_arn]
      include Aws::Structure
    end

    # @!attribute [rw] voice_connector
    #   The Voice Connector settings.
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
    #   The phone number ID.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The product type.
    #   @return [String]
    #
    # @!attribute [rw] calling_name
    #   The outbound calling name associated with the phone number.
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

    # The phone number ID, product type, or calling name fields to update,
    # used with the BatchUpdatePhoneNumber and UpdatePhoneNumber actions.
    #
    # @!attribute [rw] phone_number_id
    #   The phone number ID to update.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The product type to update.
    #   @return [String]
    #
    # @!attribute [rw] calling_name
    #   The outbound calling name to update.
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
    #   The updated phone number details.
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
    #   The default outbound calling name for the account.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] proxy_session_id
    #   The proxy session ID.
    #   @return [String]
    #
    # @!attribute [rw] capabilities
    #   The proxy session capabilities.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expiry_minutes
    #   The number of minutes allowed for the proxy session.
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
    #   The updated proxy session details.
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
    #   The ID of the SIP media application handling the call.
    #   @return [String]
    #
    # @!attribute [rw] transaction_id
    #   The ID of the call transaction.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   Arguments made available to the Lambda function as part of the
    #   `CALL_UPDATE_REQUESTED` event. Can contain 0-20 key-value pairs.
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
    #   A `Call` instance for a SIP media application.
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
    #   The SIP media application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified SIP media application.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The new set of endpoints for the specified SIP media application.
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
    #   The updated SIP media application’s details.
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
    #   The SIP rule ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the specified SIP rule.
    #   @return [String]
    #
    # @!attribute [rw] disabled
    #   The new value that indicates whether the rule is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] target_applications
    #   The new list of target applications.
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
    #   The updated SIP rule details.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   The `VoiceConnectorItems` to associate with the Voice Connector
    #   group.
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
    #   The updated Voice Connector group.
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
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   When enabled, requires encryption for the Voice Connector.
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
    #   The updated Voice Connector details.
    #   @return [Types::VoiceConnector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnectorResponse AWS API Documentation
    #
    class UpdateVoiceConnectorResponse < Struct.new(
      :voice_connector)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain_id
    #   The domain ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the voice profile domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceProfileDomainRequest AWS API Documentation
    #
    class UpdateVoiceProfileDomainRequest < Struct.new(
      :voice_profile_domain_id,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_domain
    #   The updated details of the voice profile domain.
    #   @return [Types::VoiceProfileDomain]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceProfileDomainResponse AWS API Documentation
    #
    class UpdateVoiceProfileDomainResponse < Struct.new(
      :voice_profile_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile_id
    #   The profile ID.
    #   @return [String]
    #
    # @!attribute [rw] speaker_search_task_id
    #   The ID of the speaker search task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceProfileRequest AWS API Documentation
    #
    class UpdateVoiceProfileRequest < Struct.new(
      :voice_profile_id,
      :speaker_search_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] voice_profile
    #   The updated voice profile settings.
    #   @return [Types::VoiceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceProfileResponse AWS API Documentation
    #
    class UpdateVoiceProfileResponse < Struct.new(
      :voice_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] street_number
    #   The address street number, such as `200` or `2121`.
    #   @return [String]
    #
    # @!attribute [rw] street_info
    #   The address street information, such as `8th Avenue`.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The address city, such as `Portland`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The address state, such as `ME`.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in the address being validated.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The dress postal code, such `04352`.
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
    #   Number indicating the result of address validation. `0` means the
    #   address was perfect as-is and successfully validated. `1` means the
    #   address was corrected. `2` means the address sent was not close
    #   enough and was not validated.
    #   @return [Integer]
    #
    # @!attribute [rw] address_external_id
    #   The ID that represents the address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The validated address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] candidate_address_list
    #   The list of address suggestions..
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

    # The Amazon Chime SDK Voice Connector configuration, including outbound
    # host name and encryption settings.
    #
    # @!attribute [rw] voice_connector_id
    #   The Voice Connector's ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region in which the Voice Connector is created. Default:
    #   us-east-1.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The Voice Connector's name.
    #   @return [String]
    #
    # @!attribute [rw] outbound_host_name
    #   The outbound host name for the Voice Connector.
    #   @return [String]
    #
    # @!attribute [rw] require_encryption
    #   Enables or disables encryption for the Voice Connector.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The Voice Connector's creation timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The Voice Connector's updated timestamp, in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] voice_connector_arn
    #   The ARN of the Voice Connector.
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

    # The Amazon Chime SDK Voice Connector group configuration, including
    # associated Voice Connectors. You can include Voice Connectors from
    # different AWS Regions in a group. This creates a fault tolerant
    # mechanism for fallback in case of availability events.
    #
    # @!attribute [rw] voice_connector_group_id
    #   The ID of a Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a Voice Connector group.
    #   @return [String]
    #
    # @!attribute [rw] voice_connector_items
    #   The Voice Connectors to which you route inbound calls.
    #   @return [Array<Types::VoiceConnectorItem>]
    #
    # @!attribute [rw] created_timestamp
    #   The Voice Connector group's creation time stamp, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The Voice Connector group's creation time stamp, in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] voice_connector_group_arn
    #   The ARN of the Voice Connector group.
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

    # For Amazon Chime SDK Voice Connector groups, the Amazon Chime SDK
    # Voice Connectors to which you route inbound calls. Includes priority
    # configuration settings. Limit: 3 VoiceConnectorItems per Voice
    # Connector group.
    #
    # @!attribute [rw] voice_connector_id
    #   The Voice Connector ID.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority setting of a Voice Connector item. Calls are routed to
    #   hosts in priority order, with 1 as the highest priority. When hosts
    #   have equal priority, the system distributes calls among them based
    #   on their relative weight.
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

    # The Amazon Chime SDK Voice Connector settings. Includes any Amazon S3
    # buckets designated for storing call detail records.
    #
    # @!attribute [rw] cdr_bucket
    #   The S3 bucket that stores the Voice Connector's call detail
    #   records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceConnectorSettings AWS API Documentation
    #
    class VoiceConnectorSettings < Struct.new(
      :cdr_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # The combination of a voice print and caller ID.
    #
    # @!attribute [rw] voice_profile_id
    #   The ID of the voice profile.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_arn
    #   The ARN of the voice profile.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_domain_id
    #   The ID of the domain that contains the voice profile.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the voice profile was created and enrolled.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the voice profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_timestamp
    #   The time at which a voice profile expires unless you re-enroll the
    #   caller via the `UpdateVoiceProfile` API.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceProfile AWS API Documentation
    #
    class VoiceProfile < Struct.new(
      :voice_profile_id,
      :voice_profile_arn,
      :voice_profile_domain_id,
      :created_timestamp,
      :updated_timestamp,
      :expiration_timestamp)
      SENSITIVE = [:voice_profile_arn]
      include Aws::Structure
    end

    # A collection of voice profiles.
    #
    # @!attribute [rw] voice_profile_domain_id
    #   The ID of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_domain_arn
    #   The voice profile domain's Amazon Resource Number (ARN).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the voice profile domain.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   A structure that contains the configuration settings for server-side
    #   encryption.
    #   @return [Types::ServerSideEncryptionConfiguration]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the voice profile domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the voice profile was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceProfileDomain AWS API Documentation
    #
    class VoiceProfileDomain < Struct.new(
      :voice_profile_domain_id,
      :voice_profile_domain_arn,
      :name,
      :description,
      :server_side_encryption_configuration,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = [:voice_profile_domain_arn]
      include Aws::Structure
    end

    # A high-level overview of a voice profile domain.
    #
    # @!attribute [rw] voice_profile_domain_id
    #   The ID of the voice profile domain summary.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_domain_arn
    #   The ARN of a voice profile in a voice profile domain summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the voice profile domain summary.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes the voice profile domain summary.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which the voice profile domain summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which the voice profile domain summary was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceProfileDomainSummary AWS API Documentation
    #
    class VoiceProfileDomainSummary < Struct.new(
      :voice_profile_domain_id,
      :voice_profile_domain_arn,
      :name,
      :description,
      :created_timestamp,
      :updated_timestamp)
      SENSITIVE = [:voice_profile_domain_arn]
      include Aws::Structure
    end

    # A high-level summary of a voice profile.
    #
    # @!attribute [rw] voice_profile_id
    #   The ID of the voice profile in a voice profile summary.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_arn
    #   The ARN of the voice profile in a voice profile summary.
    #   @return [String]
    #
    # @!attribute [rw] voice_profile_domain_id
    #   The ID of the voice profile domain in a voice profile summary.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which a voice profile summary was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which a voice profile summary was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_timestamp
    #   Extends the life of the voice profile. You can use
    #   `UpdateVoiceProfile` to refresh an existing voice profile's voice
    #   print and extend the life of the summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceProfileSummary AWS API Documentation
    #
    class VoiceProfileSummary < Struct.new(
      :voice_profile_id,
      :voice_profile_arn,
      :voice_profile_domain_id,
      :created_timestamp,
      :updated_timestamp,
      :expiration_timestamp)
      SENSITIVE = [:voice_profile_arn]
      include Aws::Structure
    end

    # A representation of an asynchronous request to perform voice tone
    # analysis on a Voice Connector call.
    #
    # @!attribute [rw] voice_tone_analysis_task_id
    #   The ID of the voice tone analysis task.
    #   @return [String]
    #
    # @!attribute [rw] voice_tone_analysis_task_status
    #   The status of a voice tone analysis task, `IN_QUEUE`, `IN_PROGRESS`,
    #   `PARTIAL_SUCCESS`, `SUCCEEDED`, `FAILED`, or `STOPPED`.
    #   @return [String]
    #
    # @!attribute [rw] call_details
    #   The call details of a voice tone analysis task.
    #   @return [Types::CallDetails]
    #
    # @!attribute [rw] created_timestamp
    #   The time at which a voice tone analysis task was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_timestamp
    #   The time at which a voice tone analysis task was updated.
    #   @return [Time]
    #
    # @!attribute [rw] started_timestamp
    #   The time at which a voice tone analysis task started.
    #   @return [Time]
    #
    # @!attribute [rw] status_message
    #   The status of a voice tone analysis task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/VoiceToneAnalysisTask AWS API Documentation
    #
    class VoiceToneAnalysisTask < Struct.new(
      :voice_tone_analysis_task_id,
      :voice_tone_analysis_task_status,
      :call_details,
      :created_timestamp,
      :updated_timestamp,
      :started_timestamp,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
