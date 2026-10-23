# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKVoice
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have the permissions needed to run this action.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A validated address.</p>
    # @!attribute street_name
    #   <p>The address street, such as <code>8th Avenue</code>.</p>
    #   @return [String]
    # @!attribute street_suffix
    #   <p>The address suffix, such as the <code>N</code> in <code>8th Avenue N</code>.</p>
    #   @return [String]
    # @!attribute post_directional
    #   <p>An address suffix location, such as the <code>S. Unit A</code> in 
    #            <code>Central Park S. Unit A</code>.</p>
    #   @return [String]
    # @!attribute pre_directional
    #   <p>An address prefix location, such as the <code>N</code> in <code>N. Third St.</code>
    #            </p>
    #   @return [String]
    # @!attribute street_number
    #   <p>The numeric portion of an address.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city of an address.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of an address.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code of an address.</p>
    #   @return [String]
    # @!attribute postal_code_plus4
    #   <p>The zip + 4 or postal code + 4 of an address.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country of an address.</p>
    #   @return [String]
    class Address < Struct.new(
      nil,
      :street_name,
      :street_suffix,
      :post_directional,
      :pre_directional,
      :street_number,
      :city,
      :state,
      :postal_code,
      :postal_code_plus4,
      :country,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Amazon Chime SDK Voice Connector group ID.</p>
    #   @return [String]
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime SDK Voice Connector Group and removes any previously existing associations. 
    #            If false, does not associate any phone numbers that have previously existing associations.</p>
    #   @return [Boolean]
    class AssociatePhoneNumbersWithVoiceConnectorGroupRequest < Struct.new(
      nil,
      :voice_connector_group_id,
      :e164_phone_numbers,
      :force_associate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class AssociatePhoneNumbersWithVoiceConnectorGroupResponse < Struct.new(
      nil,
      :phone_number_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime SDK Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>
    #   @return [Boolean]
    class AssociatePhoneNumbersWithVoiceConnectorRequest < Struct.new(
      nil,
      :voice_connector_id,
      :e164_phone_numbers,
      :force_associate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and 
    #            error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class AssociatePhoneNumbersWithVoiceConnectorResponse < Struct.new(
      nil,
      :phone_number_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters don't match the service's restrictions.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_ids
    #   <p>List of phone number IDs.</p>
    #   @return [Array<String>]
    class BatchDeletePhoneNumberRequest < Struct.new(
      nil,
      :phone_number_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a list of the phone numbers is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class BatchDeletePhoneNumberResponse < Struct.new(
      nil,
      :phone_number_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_phone_number_request_items
    #   <p>Lists the phone numbers in the update request.</p>
    #   @return [Array<Types::UpdatePhoneNumberRequestItem>]
    class BatchUpdatePhoneNumberRequest < Struct.new(
      nil,
      :update_phone_number_request_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>A list of failed phone numbers and their error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class BatchUpdatePhoneNumberResponse < Struct.new(
      nil,
      :phone_number_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of an Amazon Chime SDK Voice Connector call.</p>
    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction ID of a Voice Connector call.</p>
    #   @return [String]
    # @!attribute is_caller
    #   <p>Identifies a person as the caller or the callee.</p>
    #   @return [Boolean]
    class CallDetails < Struct.new(
      nil,
      :voice_connector_id,
      :transaction_id,
      :is_caller,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A suggested address.</p>
    # @!attribute street_info
    #   <p>The street information of the candidate address.</p>
    #   @return [String]
    # @!attribute street_number
    #   <p>The numeric portion of the candidate address.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city of the candidate address.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the candidate address.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code of the candidate address.</p>
    #   @return [String]
    # @!attribute postal_code_plus4
    #   <p>The zip + 4 or postal code +4 of the candidate address.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country of the candidate address.</p>
    #   @return [String]
    class CandidateAddress < Struct.new(
      nil,
      :street_info,
      :street_number,
      :city,
      :state,
      :postal_code,
      :postal_code_plus4,
      :country,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Multiple instances of the same request were made simultaneously.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #   @return [String]
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>Specifies the name assigned to one or more phone numbers.</p>
    #   @return [String]
    class CreatePhoneNumberOrderRequest < Struct.new(
      nil,
      :product_type,
      :e164_phone_numbers,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_order
    #   <p>The phone number order details.</p>
    #   @return [Types::PhoneNumberOrder]
    class CreatePhoneNumberOrderResponse < Struct.new(
      nil,
      :phone_number_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute participant_phone_numbers
    #   <p>The participant phone numbers.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the proxy session.</p>
    #   @return [String]
    # @!attribute expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #   @return [Integer]
    # @!attribute capabilities
    #   <p>The proxy session's capabilities.</p>
    #   @return [Array<String>]
    # @!attribute number_selection_behavior
    #   <p>The preference for proxy phone number reuse, or stickiness, between the same 
    #               participants across sessions.</p>
    #   @return [String]
    # @!attribute geo_match_level
    #   <p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>
    #   @return [String]
    # @!attribute geo_match_params
    #   <p>The country and area code for the proxy phone number.</p>
    #   @return [Types::GeoMatchParams]
    class CreateProxySessionRequest < Struct.new(
      nil,
      :voice_connector_id,
      :participant_phone_numbers,
      :name,
      :expiry_minutes,
      :capabilities,
      :number_selection_behavior,
      :geo_match_level,
      :geo_match_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute proxy_session
    #   <p>The proxy session details.</p>
    #   @return [Types::ProxySession]
    class CreateProxySessionResponse < Struct.new(
      nil,
      :proxy_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute from_phone_number
    #   <p>The phone number that a user calls from. This is a phone number in your 
    #            Amazon Chime SDK phone number inventory.</p>
    #   @return [String]
    # @!attribute to_phone_number
    #   <p>The phone number that the service should call.</p>
    #   @return [String]
    # @!attribute sip_media_application_id
    #   <p>The ID of the SIP media application.</p>
    #   @return [String]
    # @!attribute sip_headers
    #   <p>The SIP headers added to an outbound call leg.</p>
    #   @return [Hash<String, String>]
    # @!attribute arguments_map
    #   <p>Context passed to a CreateSipMediaApplication API call. For example, you could pass
    #               key-value pairs such as: <code>"FirstName": "John", "LastName": "Doe"</code>
    #            </p>
    #   @return [Hash<String, String>]
    class CreateSipMediaApplicationCallRequest < Struct.new(
      nil,
      :from_phone_number,
      :to_phone_number,
      :sip_media_application_id,
      :sip_headers,
      :arguments_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_call
    #   <p>The actual call.</p>
    #   @return [Types::SipMediaApplicationCall]
    class CreateSipMediaApplicationCallResponse < Struct.new(
      nil,
      :sip_media_application_call,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute aws_region
    #   <p>The AWS Region assigned to the SIP media application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The SIP media application's name.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>List of endpoints (Lambda ARNs) specified for the SIP media application.</p>
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    # @!attribute tags
    #   <p>The tags assigned to the SIP media application.</p>
    #   @return [Array<Types::Tag>]
    class CreateSipMediaApplicationRequest < Struct.new(
      nil,
      :aws_region,
      :name,
      :endpoints,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application
    #   <p>The SIP media application details.</p>
    #   @return [Types::SipMediaApplication]
    class CreateSipMediaApplicationResponse < Struct.new(
      nil,
      :sip_media_application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the SIP rule.</p>
    #   @return [String]
    # @!attribute trigger_type
    #   <p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, 
    #            currently <code>RequestUriHostname</code> or <code>ToPhoneNumber</code>.</p>
    #   @return [String]
    # @!attribute trigger_value
    #   <p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, the 
    #            value can be the outbound host name of a Voice Connector. If 
    #            <code>TriggerType</code> is <code>ToPhoneNumber</code>, the value can 
    #            be a customer-owned phone number in the E164 format. The 
    #            <code>SipMediaApplication</code> specified in the <code>SipRule</code> is triggered 
    #            if the request URI in an incoming SIP request matches the 
    #            <code>RequestUriHostname</code>, or if the <code>To</code> header in the 
    #            incoming SIP request matches the <code>ToPhoneNumber</code> value.</p>
    #   @return [String]
    # @!attribute disabled
    #   <p>Disables or enables a SIP rule. You must disable SIP rules 
    #            before you can delete them.</p>
    #   @return [Boolean]
    # @!attribute target_applications
    #   <p>List of SIP media applications, with priority and AWS Region. Only one SIP 
    #            application per AWS Region can be used.</p>
    #   @return [Array<Types::SipRuleTargetApplication>]
    class CreateSipRuleRequest < Struct.new(
      nil,
      :name,
      :trigger_type,
      :trigger_value,
      :disabled,
      :target_applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rule
    #   <p>The SIP rule information, including the rule ID, triggers, and target applications.</p>
    #   @return [Types::SipRule]
    class CreateSipRuleResponse < Struct.new(
      nil,
      :sip_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Voice Connector group.</p>
    #   @return [String]
    # @!attribute voice_connector_items
    #   <p>Lists the Voice Connectors that inbound calls are routed to.</p>
    #   @return [Array<Types::VoiceConnectorItem>]
    class CreateVoiceConnectorGroupRequest < Struct.new(
      nil,
      :name,
      :voice_connector_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group
    #   <p>The details of the Voice Connector group.</p>
    #   @return [Types::VoiceConnectorGroup]
    class CreateVoiceConnectorGroupResponse < Struct.new(
      nil,
      :voice_connector_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Voice Connector.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The AWS Region in which the Amazon Chime SDK Voice Connector is created. Default value: 
    #            <code>us-east-1</code> .</p>
    #   @return [String]
    # @!attribute require_encryption
    #   <p>Enables or disables encryption for the Voice Connector.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags assigned to the Voice Connector.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute integration_type
    #   <p>The connectors for use with Amazon Connect.</p>
    #            <p>The following options are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONNECT_CALL_TRANSFER_CONNECTOR</code> - Enables enterprises to integrate
    #                  Amazon Connect with other voice systems to directly transfer voice calls and
    #                  metadata without using the public telephone network. They can use Amazon Connect
    #                  telephony and Interactive Voice Response (IVR) with their existing voice systems to
    #                  modernize the IVR experience of their existing contact center and their enterprise
    #                  and branch voice systems. Additionally, enterprises migrating their contact center to
    #                  Amazon Connect can start with Connect telephony and IVR for immediate
    #                  modernization ahead of agent migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECT_ANALYTICS_CONNECTOR</code> - Enables enterprises to integrate
    #                  Amazon Connect with other voice systems for real-time and post-call analytics.
    #                  They can use Amazon Connect Contact Lens with their existing voice systems to
    #                  provides call recordings, conversational analytics (including contact transcript,
    #                  sensitive data redaction, content categorization, theme detection, sentiment
    #                  analysis, real-time alerts, and post-contact summary), and agent performance
    #                  evaluations (including evaluation forms, automated evaluation, supervisor review)
    #                  with a rich user experience to display, search and filter customer interactions, and
    #                  programmatic access to data streams and the data lake. Additionally, enterprises
    #                  migrating their contact center to Amazon Connect can start with Contact Lens
    #                  analytics and performance insights ahead of agent migration.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute network_type
    #   <p>The type of network for the Voice Connector. Either IPv4 only or dual-stack (IPv4 and IPv6).</p>
    #   @return [String]
    class CreateVoiceConnectorRequest < Struct.new(
      nil,
      :name,
      :aws_region,
      :require_encryption,
      :tags,
      :integration_type,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector
    #   <p>The details of the Voice Connector.</p>
    #   @return [Types::VoiceConnector]
    class CreateVoiceConnectorResponse < Struct.new(
      nil,
      :voice_connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the voice profile domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the voice profile domain.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>The server-side encryption configuration for the request.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different domain creation requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the domain.</p>
    #   @return [Array<Types::Tag>]
    class CreateVoiceProfileDomainRequest < Struct.new(
      nil,
      :name,
      :description,
      :server_side_encryption_configuration,
      :client_request_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain
    #   <p>The requested voice profile domain.</p>
    #   @return [Types::VoiceProfileDomain]
    class CreateVoiceProfileDomainResponse < Struct.new(
      nil,
      :voice_profile_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    #   @return [String]
    class CreateVoiceProfileRequest < Struct.new(
      nil,
      :speaker_search_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile
    #   <p>The requested voice profile.</p>
    #   @return [Types::VoiceProfile]
    class CreateVoiceProfileResponse < Struct.new(
      nil,
      :voice_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SIP credentials used to authenticate requests to an Amazon Chime SDK Voice Connector.</p>
    # @!attribute username
    #   <p>The RFC2617 compliant user name associated with the SIP credentials, in 
    #            US-ASCII format.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The RFC2617 compliant password associated with the SIP credentials, in US-ASCII format.</p>
    #   @return [String]
    class Credential < Struct.new(
      nil,
      :username,
      :password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Dialed Number Identification Service (DNIS) emergency calling configuration 
    #          details associated with an Amazon Chime SDK Voice Connector's emergency calling 
    #          configuration.</p>
    # @!attribute emergency_phone_number
    #   <p>The DNIS phone number that you route emergency calls to, in E.164 format.</p>
    #   @return [String]
    # @!attribute test_phone_number
    #   <p>The DNIS phone number for routing test emergency calls to, in E.164 format.</p>
    #   @return [String]
    # @!attribute calling_country
    #   <p>The country from which emergency calls are allowed, in ISO 3166-1 alpha-2 format.</p>
    #   @return [String]
    class DNISEmergencyCallingConfiguration < Struct.new(
      nil,
      :emergency_phone_number,
      :test_phone_number,
      :calling_country,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    class DeletePhoneNumberRequest < Struct.new(
      nil,
      :phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #   @return [String]
    class DeleteProxySessionRequest < Struct.new(
      nil,
      :voice_connector_id,
      :proxy_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    class DeleteSipMediaApplicationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #   @return [String]
    class DeleteSipRuleRequest < Struct.new(
      nil,
      :sip_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The ID of the Voice Connector for which to delete the external system
    #            configuration.</p>
    #   @return [String]
    class DeleteVoiceConnectorExternalSystemsConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Voice Connector Group ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorGroupRequest < Struct.new(
      nil,
      :voice_connector_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorOriginationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorProxyRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorStreamingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute usernames
    #   <p>The RFC2617 compliant username associated with the SIP credentials, 
    #            in US-ASCII format.</p>
    #   @return [Array<String>]
    class DeleteVoiceConnectorTerminationCredentialsRequest < Struct.new(
      nil,
      :voice_connector_id,
      :usernames,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class DeleteVoiceConnectorTerminationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain_id
    #   <p>The voice profile domain ID.</p>
    #   @return [String]
    class DeleteVoiceProfileDomainRequest < Struct.new(
      nil,
      :voice_profile_domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_id
    #   <p>The voice profile ID.</p>
    #   @return [String]
    class DeleteVoiceProfileRequest < Struct.new(
      nil,
      :voice_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Voice Connector group ID.</p>
    #   @return [String]
    # @!attribute e164_phone_numbers
    #   <p>The list of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    class DisassociatePhoneNumbersFromVoiceConnectorGroupRequest < Struct.new(
      nil,
      :voice_connector_group_id,
      :e164_phone_numbers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, 
    #            a list of the phone numbers is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class DisassociatePhoneNumbersFromVoiceConnectorGroupResponse < Struct.new(
      nil,
      :phone_number_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    #   @return [Array<String>]
    class DisassociatePhoneNumbersFromVoiceConnectorRequest < Struct.new(
      nil,
      :voice_connector_id,
      :e164_phone_numbers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_errors
    #   <p>If the action fails for one or more of the phone numbers in the request, a 
    #            list of the phone numbers is returned, along with error codes and error messages.</p>
    #   @return [Array<Types::PhoneNumberError>]
    class DisassociatePhoneNumbersFromVoiceConnectorResponse < Struct.new(
      nil,
      :phone_number_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The emergency calling configuration details associated with an Amazon Chime SDK 
    #          Voice Connector.</p>
    # @!attribute dnis
    #   <p>The Dialed Number Identification Service (DNIS) emergency calling configuration 
    #            details.</p>
    #   @return [Array<Types::DNISEmergencyCallingConfiguration>]
    class EmergencyCallingConfiguration < Struct.new(
      nil,
      :dnis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an external systems configuration for a Voice
    #          Connector.</p>
    # @!attribute session_border_controller_types
    #   <p>The session border controllers.</p>
    #   @return [Array<String>]
    # @!attribute contact_center_system_types
    #   <p>The contact center system.</p>
    #   @return [Array<String>]
    class ExternalSystemsConfiguration < Struct.new(
      nil,
      :session_border_controller_types,
      :contact_center_system_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is permanently forbidden from making the request.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The country and area code for a proxy phone number in a proxy phone session.</p>
    # @!attribute country
    #   <p>The country.</p>
    #   @return [String]
    # @!attribute area_code
    #   <p>The area code.</p>
    #   @return [String]
    class GeoMatchParams < Struct.new(
      nil,
      :country,
      :area_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector
    #   <p>The Voice Connector settings.</p>
    #   @return [Types::VoiceConnectorSettings]
    class GetGlobalSettingsResponse < Struct.new(
      nil,
      :voice_connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_order_id
    #   <p>The ID of the phone number order .</p>
    #   @return [String]
    class GetPhoneNumberOrderRequest < Struct.new(
      nil,
      :phone_number_order_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_order
    #   <p>The phone number order details.</p>
    #   @return [Types::PhoneNumberOrder]
    class GetPhoneNumberOrderResponse < Struct.new(
      nil,
      :phone_number_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    class GetPhoneNumberRequest < Struct.new(
      nil,
      :phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The phone number details.</p>
    #   @return [Types::PhoneNumber]
    class GetPhoneNumberResponse < Struct.new(
      nil,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calling_name
    #   <p>The default outbound calling name for the account.</p>
    #   @return [String]
    # @!attribute calling_name_updated_timestamp
    #   <p>The updated outbound calling name timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    class GetPhoneNumberSettingsResponse < Struct.new(
      nil,
      :calling_name,
      :calling_name_updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #   @return [String]
    class GetProxySessionRequest < Struct.new(
      nil,
      :voice_connector_id,
      :proxy_session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute proxy_session
    #   <p>The proxy session details.</p>
    #   @return [Types::ProxySession]
    class GetProxySessionResponse < Struct.new(
      nil,
      :proxy_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    class GetSipMediaApplicationAlexaSkillConfigurationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_alexa_skill_configuration
    #   <p>Returns the Alexa Skill configuration.</p>
    #   @return [Types::SipMediaApplicationAlexaSkillConfiguration]
    class GetSipMediaApplicationAlexaSkillConfigurationResponse < Struct.new(
      nil,
      :sip_media_application_alexa_skill_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    class GetSipMediaApplicationLoggingConfigurationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_logging_configuration
    #   <p>The actual logging configuration.</p>
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    class GetSipMediaApplicationLoggingConfigurationResponse < Struct.new(
      nil,
      :sip_media_application_logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID .</p>
    #   @return [String]
    class GetSipMediaApplicationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application
    #   <p>The details of the SIP media application.</p>
    #   @return [Types::SipMediaApplication]
    class GetSipMediaApplicationResponse < Struct.new(
      nil,
      :sip_media_application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #   @return [String]
    class GetSipRuleRequest < Struct.new(
      nil,
      :sip_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rule
    #   <p>The SIP rule details.</p>
    #   @return [Types::SipRule]
    class GetSipRuleResponse < Struct.new(
      nil,
      :sip_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    #   @return [String]
    class GetSpeakerSearchTaskRequest < Struct.new(
      nil,
      :voice_connector_id,
      :speaker_search_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker_search_task
    #   <p>The details of the speaker search task.</p>
    #   @return [Types::SpeakerSearchTask]
    class GetSpeakerSearchTaskResponse < Struct.new(
      nil,
      :speaker_search_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute emergency_calling_configuration
    #   <p>The details of the emergency calling configuration.</p>
    #   @return [Types::EmergencyCallingConfiguration]
    class GetVoiceConnectorEmergencyCallingConfigurationResponse < Struct.new(
      nil,
      :emergency_calling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The ID of the Voice Connector for which to return information about the
    #            external system configuration.</p>
    #   @return [String]
    class GetVoiceConnectorExternalSystemsConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_systems_configuration
    #   <p>An object that contains information about an external systems configuration for a Voice Connector.</p>
    #   @return [Types::ExternalSystemsConfiguration]
    class GetVoiceConnectorExternalSystemsConfigurationResponse < Struct.new(
      nil,
      :external_systems_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Voice Connector group ID.</p>
    #   @return [String]
    class GetVoiceConnectorGroupRequest < Struct.new(
      nil,
      :voice_connector_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group
    #   <p>The details of the Voice Connector group.</p>
    #   @return [Types::VoiceConnectorGroup]
    class GetVoiceConnectorGroupResponse < Struct.new(
      nil,
      :voice_connector_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorLoggingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_configuration
    #   <p>The logging configuration details .</p>
    #   @return [Types::LoggingConfiguration]
    class GetVoiceConnectorLoggingConfigurationResponse < Struct.new(
      nil,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorOriginationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination
    #   <p>The origination setting details.</p>
    #   @return [Types::Origination]
    class GetVoiceConnectorOriginationResponse < Struct.new(
      nil,
      :origination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorProxyRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute proxy
    #   <p>The proxy configuration details.</p>
    #   @return [Types::Proxy]
    class GetVoiceConnectorProxyResponse < Struct.new(
      nil,
      :proxy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector
    #   <p>The Voice Connector details.</p>
    #   @return [Types::VoiceConnector]
    class GetVoiceConnectorResponse < Struct.new(
      nil,
      :voice_connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorStreamingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_configuration
    #   <p>The details of the streaming configuration.</p>
    #   @return [Types::StreamingConfiguration]
    class GetVoiceConnectorStreamingConfigurationResponse < Struct.new(
      nil,
      :streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorTerminationHealthRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute termination_health
    #   <p>The termination health details.</p>
    #   @return [Types::TerminationHealth]
    class GetVoiceConnectorTerminationHealthResponse < Struct.new(
      nil,
      :termination_health,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class GetVoiceConnectorTerminationRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute termination
    #   <p>The termination setting details.</p>
    #   @return [Types::Termination]
    class GetVoiceConnectorTerminationResponse < Struct.new(
      nil,
      :termination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain_id
    #   <p>The voice profile domain ID.</p>
    #   @return [String]
    class GetVoiceProfileDomainRequest < Struct.new(
      nil,
      :voice_profile_domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain
    #   <p>The details of the voice profile domain.</p>
    #   @return [Types::VoiceProfileDomain]
    class GetVoiceProfileDomainResponse < Struct.new(
      nil,
      :voice_profile_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_id
    #   <p>The voice profile ID.</p>
    #   @return [String]
    class GetVoiceProfileRequest < Struct.new(
      nil,
      :voice_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile
    #   <p>The voice profile details.</p>
    #   @return [Types::VoiceProfile]
    class GetVoiceProfileResponse < Struct.new(
      nil,
      :voice_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    #   @return [String]
    # @!attribute is_caller
    #   <p>Specifies whether the voice being analyzed is the caller (originator) or the callee (responder).</p>
    #   @return [Boolean]
    class GetVoiceToneAnalysisTaskRequest < Struct.new(
      nil,
      :voice_connector_id,
      :voice_tone_analysis_task_id,
      :is_caller,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_tone_analysis_task
    #   <p>The details of the voice tone analysis task.</p>
    #   @return [Types::VoiceToneAnalysisTask]
    class GetVoiceToneAnalysisTaskResponse < Struct.new(
      nil,
      :voice_tone_analysis_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access to the target resource is no longer available at the origin server. This condition is likely to be permanent.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class GoneException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_regions
    #   <p>The list of AWS Regions.</p>
    #   @return [Array<String>]
    class ListAvailableVoiceConnectorRegionsResponse < Struct.new(
      nil,
      :voice_connector_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListPhoneNumberOrdersRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_orders
    #   <p>The phone number order details.</p>
    #   @return [Array<Types::PhoneNumberOrder>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    class ListPhoneNumberOrdersResponse < Struct.new(
      nil,
      :phone_number_orders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of your organization's phone numbers.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The phone number product types.</p>
    #   @return [String]
    # @!attribute filter_name
    #   <p>The filter to limit the number of results.</p>
    #   @return [String]
    # @!attribute filter_value
    #   <p>The filter value.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListPhoneNumbersRequest < Struct.new(
      nil,
      :status,
      :product_type,
      :filter_name,
      :filter_value,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_numbers
    #   <p>The phone number details.</p>
    #   @return [Array<Types::PhoneNumber>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListPhoneNumbersResponse < Struct.new(
      nil,
      :phone_numbers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The proxy session status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListProxySessionsRequest < Struct.new(
      nil,
      :voice_connector_id,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute proxy_sessions
    #   <p>The proxy sessions' details.</p>
    #   @return [Array<Types::ProxySession>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    class ListProxySessionsResponse < Struct.new(
      nil,
      :proxy_sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListSipMediaApplicationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_applications
    #   <p>The list of SIP media applications and application details.</p>
    #   @return [Array<Types::SipMediaApplication>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListSipMediaApplicationsResponse < Struct.new(
      nil,
      :sip_media_applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListSipRulesRequest < Struct.new(
      nil,
      :sip_media_application_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rules
    #   <p>The list of SIP rules and details.</p>
    #   @return [Array<Types::SipRule>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListSipRulesResponse < Struct.new(
      nil,
      :sip_rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_type
    #   <p>The phone number product type.</p>
    #   @return [String]
    class ListSupportedPhoneNumberCountriesRequest < Struct.new(
      nil,
      :product_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_countries
    #   <p>The supported phone number countries.</p>
    #   @return [Array<Types::PhoneNumberCountry>]
    class ListSupportedPhoneNumberCountriesResponse < Struct.new(
      nil,
      :phone_number_countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags in the list.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.  </p>
    #   @return [Integer]
    class ListVoiceConnectorGroupsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_groups
    #   <p>The details of the Voice Connector groups.</p>
    #   @return [Array<Types::VoiceConnectorGroup>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListVoiceConnectorGroupsResponse < Struct.new(
      nil,
      :voice_connector_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    class ListVoiceConnectorTerminationCredentialsRequest < Struct.new(
      nil,
      :voice_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usernames
    #   <p>A list of user names.</p>
    #   @return [Array<String>]
    class ListVoiceConnectorTerminationCredentialsResponse < Struct.new(
      nil,
      :usernames,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListVoiceConnectorsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connectors
    #   <p>The details of the Voice Connectors.</p>
    #   @return [Array<Types::VoiceConnector>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListVoiceConnectorsResponse < Struct.new(
      nil,
      :voice_connectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListVoiceProfileDomainsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domains
    #   <p>The list of voice profile domains.</p>
    #   @return [Array<Types::VoiceProfileDomainSummary>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class ListVoiceProfileDomainsResponse < Struct.new(
      nil,
      :voice_profile_domains,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain_id
    #   <p>The ID of the voice profile domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results in the request.</p>
    #   @return [Integer]
    class ListVoiceProfilesRequest < Struct.new(
      nil,
      :voice_profile_domain_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profiles
    #   <p>The list of voice profiles.</p>
    #   @return [Array<Types::VoiceProfileSummary>]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results.</p>
    #   @return [String]
    class ListVoiceProfilesResponse < Struct.new(
      nil,
      :voice_profiles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration associated with an Amazon Chime SDK Voice Connector. 
    #          Specifies whether SIP message logs can be sent to Amazon CloudWatch Logs.</p>
    # @!attribute enable_sip_logs
    #   <p>Boolean that enables sending SIP message logs to Amazon CloudWatch.</p>
    #   @return [Boolean]
    # @!attribute enable_media_metric_logs
    #   <p>Enables or disables media metrics logging.</p>
    #   @return [Boolean]
    class LoggingConfiguration < Struct.new(
      nil,
      :enable_sip_logs,
      :enable_media_metric_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a call analytics task.</p>
    # @!attribute disabled
    #   <p>Denotes the configuration as enabled or disabled.</p>
    #   @return [Boolean]
    # @!attribute configuration_arn
    #   <p>The configuration's ARN.</p>
    #   @return [String]
    class MediaInsightsConfiguration < Struct.new(
      nil,
      :disabled,
      :configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource couldn't be found.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A phone number for which an order has been placed.</p>
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The phone number status.</p>
    #   @return [String]
    class OrderedPhoneNumber < Struct.new(
      nil,
      :e164_phone_number,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Origination settings enable your SIP hosts to receive inbound calls using your 
    #          Amazon Chime SDK Voice Connector.</p>
    #          <note>
    #             <p>The parameters listed below are not required, but you must use at least 
    #          one.</p>
    #          </note>
    # @!attribute routes
    #   <p>The call distribution properties defined for your SIP hosts. Valid range: Minimum 
    #            value of 1. Maximum value of 20. This parameter is not required, but you must specify 
    #            this parameter or <code>Disabled</code>.</p>
    #   @return [Array<Types::OriginationRoute>]
    # @!attribute disabled
    #   <p>When origination settings are disabled, inbound calls are not enabled for your 
    #            Amazon Chime SDK Voice Connector. 
    #            This parameter is not required, but you must specify this parameter or 
    #            <code>Routes</code>.</p>
    #   @return [Boolean]
    class Origination < Struct.new(
      nil,
      :routes,
      :disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Origination routes define call distribution properties for your SIP hosts to 
    #          receive inbound calls using an Amazon Chime SDK Voice Connector. Limit: Ten origination 
    #          routes for each Voice Connector.</p>
    #          <note>
    #             <p>The parameters listed below are not required, but you must use at least one.</p>
    #          </note>
    # @!attribute host
    #   <p>The FQDN or IP address to contact for origination traffic.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The designated origination route port. Defaults to 5060.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol to use for the origination route. Encryption-enabled Amazon Chime SDK Voice Connectors use 
    #            TCP protocol by default.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority associated with the host, with 1 being the highest priority. Higher 
    #            priority hosts are attempted first.</p>
    #   @return [Integer]
    # @!attribute weight
    #   <p>The weight assigned to an origination route. When hosts have equal priority, 
    #            calls are distributed between them based on their relative weights.</p>
    #   @return [Integer]
    class OriginationRoute < Struct.new(
      nil,
      :host,
      :port,
      :protocol,
      :priority,
      :weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The phone number and proxy phone number for a participant in an Amazon Chime SDK Voice Connector proxy session.</p>
    # @!attribute phone_number
    #   <p>The participant's phone number.</p>
    #   @return [String]
    # @!attribute proxy_phone_number
    #   <p>The participant's proxy phone number.</p>
    #   @return [String]
    class Participant < Struct.new(
      nil,
      :phone_number,
      :proxy_phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A phone number used to call an Amazon 
    #          Chime SDK Voice Connector.</p>
    # @!attribute phone_number_id
    #   <p>The phone number's ID.</p>
    #   @return [String]
    # @!attribute e164_phone_number
    #   <p>The phone number, in E.164 format.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The phone number's country. Format: ISO 3166-1 alpha-2.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The phone number's type.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The phone number's product type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The phone number's status.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The phone number's capabilities.</p>
    #   @return [Types::PhoneNumberCapabilities]
    # @!attribute associations
    #   <p>The phone number's associations.</p>
    #   @return [Array<Types::PhoneNumberAssociation>]
    # @!attribute calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #   @return [String]
    # @!attribute calling_name_status
    #   <p>The outbound calling name status.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The phone number creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The updated phone number timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute deletion_timestamp
    #   <p>The deleted phone number timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute order_id
    #   <p>The phone number's order ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the phone number.</p>
    #   @return [String]
    class PhoneNumber < Struct.new(
      nil,
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
      :order_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The phone number associations, such as an Amazon Chime SDK account ID, user ID, 
    #          Voice Connector ID, or Voice Connector group ID.</p>
    # @!attribute value
    #   <p>Contains the ID for the entity specified in Name.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Defines the association with an Amazon Chime SDK account ID, user ID, Voice Connector ID, or Voice Connector group ID.</p>
    #   @return [String]
    # @!attribute associated_timestamp
    #   <p>The timestamp of the phone number association, in ISO 8601 format.</p>
    #   @return [Time]
    class PhoneNumberAssociation < Struct.new(
      nil,
      :value,
      :name,
      :associated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The phone number capabilities for Amazon Chime SDK phone numbers, 
    #          such as enabled inbound and outbound calling, and text messaging.</p>
    # @!attribute inbound_call
    #   <p>Allows or denies inbound calling for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute outbound_call
    #   <p>Allows or denies outbound calling for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute inbound_sms
    #   <p>Allows or denies inbound SMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute outbound_sms
    #   <p>Allows or denies outbound SMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute inbound_mms
    #   <p>Allows or denies inbound MMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    # @!attribute outbound_mms
    #   <p>Allows or denies inbound MMS messaging for the specified phone number.</p>
    #   @return [Boolean]
    class PhoneNumberCapabilities < Struct.new(
      nil,
      :inbound_call,
      :outbound_call,
      :inbound_sms,
      :outbound_sms,
      :inbound_mms,
      :outbound_mms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The phone number's country.</p>
    # @!attribute country_code
    #   <p>The phone number country code. Format: ISO 3166-1 alpha-2.</p>
    #   @return [String]
    # @!attribute supported_phone_number_types
    #   <p>The supported phone number types.</p>
    #   @return [Array<String>]
    class PhoneNumberCountry < Struct.new(
      nil,
      :country_code,
      :supported_phone_number_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If a phone number action fails for one or more of the phone numbers in a request, 
    #          a list of the failed phone numbers is returned, along with error codes and error messages.</p>
    # @!attribute phone_number_id
    #   <p>The phone number ID for which the action failed.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class PhoneNumberError < Struct.new(
      nil,
      :phone_number_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of an Amazon Chime SDK phone number order.</p>
    # @!attribute phone_number_order_id
    #   <p>The ID of the phone order.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The phone number order product type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the phone number order.</p>
    #   @return [String]
    # @!attribute order_type
    #   <p>The type of phone number being ordered, local or toll-free.</p>
    #   @return [String]
    # @!attribute ordered_phone_numbers
    #   <p>The ordered phone number details, such as the phone number in E.164 format 
    #            and the phone number status.</p>
    #   @return [Array<Types::OrderedPhoneNumber>]
    # @!attribute created_timestamp
    #   <p>The phone number order creation time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The updated phone number order time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute foc_date
    #   <p>The Firm Order Commitment (FOC) date for phone number porting orders. This field is null
    #            if a phone number order is not a porting order.</p>
    #   @return [Time]
    class PhoneNumberOrder < Struct.new(
      nil,
      :phone_number_order_id,
      :product_type,
      :status,
      :order_type,
      :ordered_phone_numbers,
      :created_timestamp,
      :updated_timestamp,
      :foc_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The proxy configuration for an Amazon Chime SDK Voice Connector.</p>
    # @!attribute default_session_expiry_minutes
    #   <p>The default number of minutes allowed for proxy sessions.</p>
    #   @return [Integer]
    # @!attribute disabled
    #   <p>When true, stops proxy sessions from being created on the specified Amazon Chime SDK Voice Connector.</p>
    #   @return [Boolean]
    # @!attribute fall_back_phone_number
    #   <p>The phone number to route calls to after a proxy session expires.</p>
    #   @return [String]
    # @!attribute phone_number_countries
    #   <p>The countries for proxy phone numbers to be selected from.</p>
    #   @return [Array<String>]
    class Proxy < Struct.new(
      nil,
      :default_session_expiry_minutes,
      :disabled,
      :fall_back_phone_number,
      :phone_number_countries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The proxy session for an Amazon Chime SDK Voice Connector.</p>
    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The proxy session name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The proxy session status.</p>
    #   @return [String]
    # @!attribute expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #   @return [Integer]
    # @!attribute capabilities
    #   <p>The proxy session capabilities.</p>
    #   @return [Array<String>]
    # @!attribute created_timestamp
    #   <p>The created time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The updated time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute ended_timestamp
    #   <p>The ended time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute participants
    #   <p>The proxy session participants.</p>
    #   @return [Array<Types::Participant>]
    # @!attribute number_selection_behavior
    #   <p>The preference for proxy phone number reuse, or stickiness, between the same participants across sessions.</p>
    #   @return [String]
    # @!attribute geo_match_level
    #   <p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>
    #   @return [String]
    # @!attribute geo_match_params
    #   <p>The country and area code for the proxy phone number.</p>
    #   @return [Types::GeoMatchParams]
    class ProxySession < Struct.new(
      nil,
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
      :geo_match_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    # @!attribute sip_media_application_alexa_skill_configuration
    #   <p>The Alexa Skill configuration.</p>
    #   @return [Types::SipMediaApplicationAlexaSkillConfiguration]
    class PutSipMediaApplicationAlexaSkillConfigurationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      :sip_media_application_alexa_skill_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_alexa_skill_configuration
    #   <p>Returns the Alexa Skill configuration.</p>
    #   @return [Types::SipMediaApplicationAlexaSkillConfiguration]
    class PutSipMediaApplicationAlexaSkillConfigurationResponse < Struct.new(
      nil,
      :sip_media_application_alexa_skill_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    # @!attribute sip_media_application_logging_configuration
    #   <p>The logging configuration for the specified SIP media application.</p>
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    class PutSipMediaApplicationLoggingConfigurationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      :sip_media_application_logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_logging_configuration
    #   <p>The updated logging configuration for the specified SIP media application.</p>
    #   @return [Types::SipMediaApplicationLoggingConfiguration]
    class PutSipMediaApplicationLoggingConfigurationResponse < Struct.new(
      nil,
      :sip_media_application_logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute emergency_calling_configuration
    #   <p>The configuration being updated.</p>
    #   @return [Types::EmergencyCallingConfiguration]
    class PutVoiceConnectorEmergencyCallingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      :emergency_calling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute emergency_calling_configuration
    #   <p>The updated configuration.</p>
    #   @return [Types::EmergencyCallingConfiguration]
    class PutVoiceConnectorEmergencyCallingConfigurationResponse < Struct.new(
      nil,
      :emergency_calling_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The ID of the Voice Connector for which to add the external system
    #            configuration.</p>
    #   @return [String]
    # @!attribute session_border_controller_types
    #   <p>The session border controllers to use.</p>
    #   @return [Array<String>]
    # @!attribute contact_center_system_types
    #   <p>The contact center system to use.</p>
    #   @return [Array<String>]
    class PutVoiceConnectorExternalSystemsConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      :session_border_controller_types,
      :contact_center_system_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute external_systems_configuration
    #   <p>An object that contains information about an external systems configuration for a Voice Connector.</p>
    #   @return [Types::ExternalSystemsConfiguration]
    class PutVoiceConnectorExternalSystemsConfigurationResponse < Struct.new(
      nil,
      :external_systems_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The logging configuration being updated.</p>
    #   @return [Types::LoggingConfiguration]
    class PutVoiceConnectorLoggingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_configuration
    #   <p>The updated logging configuration.</p>
    #   @return [Types::LoggingConfiguration]
    class PutVoiceConnectorLoggingConfigurationResponse < Struct.new(
      nil,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute origination
    #   <p>The origination settings being updated.</p>
    #   @return [Types::Origination]
    class PutVoiceConnectorOriginationRequest < Struct.new(
      nil,
      :voice_connector_id,
      :origination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute origination
    #   <p>The updated origination settings.</p>
    #   @return [Types::Origination]
    class PutVoiceConnectorOriginationResponse < Struct.new(
      nil,
      :origination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute default_session_expiry_minutes
    #   <p>The default number of minutes allowed for proxy session.</p>
    #   @return [Integer]
    # @!attribute phone_number_pool_countries
    #   <p>The countries for proxy phone numbers to be selected from.</p>
    #   @return [Array<String>]
    # @!attribute fall_back_phone_number
    #   <p>The phone number to route calls to after a proxy session expires.</p>
    #   @return [String]
    # @!attribute disabled
    #   <p>When true, stops proxy sessions from being created on the specified Amazon Chime SDK Voice Connector.</p>
    #   @return [Boolean]
    class PutVoiceConnectorProxyRequest < Struct.new(
      nil,
      :voice_connector_id,
      :default_session_expiry_minutes,
      :phone_number_pool_countries,
      :fall_back_phone_number,
      :disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute proxy
    #   <p>The proxy configuration details.</p>
    #   @return [Types::Proxy]
    class PutVoiceConnectorProxyResponse < Struct.new(
      nil,
      :proxy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute streaming_configuration
    #   <p>The streaming settings being updated.</p>
    #   @return [Types::StreamingConfiguration]
    class PutVoiceConnectorStreamingConfigurationRequest < Struct.new(
      nil,
      :voice_connector_id,
      :streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_configuration
    #   <p>The updated streaming settings.</p>
    #   @return [Types::StreamingConfiguration]
    class PutVoiceConnectorStreamingConfigurationResponse < Struct.new(
      nil,
      :streaming_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>The termination credentials being updated.</p>
    #   @return [Array<Types::Credential>]
    class PutVoiceConnectorTerminationCredentialsRequest < Struct.new(
      nil,
      :voice_connector_id,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute termination
    #   <p>The termination settings to be updated.</p>
    #   @return [Types::Termination]
    class PutVoiceConnectorTerminationRequest < Struct.new(
      nil,
      :voice_connector_id,
      :termination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute termination
    #   <p>The updated termination settings.</p>
    #   @return [Types::Termination]
    class PutVoiceConnectorTerminationResponse < Struct.new(
      nil,
      :termination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the resource limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The ID of the phone number being restored.</p>
    #   @return [String]
    class RestorePhoneNumberRequest < Struct.new(
      nil,
      :phone_number_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The restored phone number.</p>
    #   @return [Types::PhoneNumber]
    class RestorePhoneNumberResponse < Struct.new(
      nil,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute area_code
    #   <p>Confines a search to just the phone numbers associated with the specified area code.</p>
    #   @return [String]
    # @!attribute city
    #   <p>Confines a search to just the phone numbers associated with the specified city.</p>
    #   @return [String]
    # @!attribute country
    #   <p>Confines a search to just the phone numbers associated with the specified country.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Confines a search to just the phone numbers associated with the specified state.</p>
    #   @return [String]
    # @!attribute toll_free_prefix
    #   <p>Confines a search to just the phone numbers associated with the specified toll-free prefix.</p>
    #   @return [String]
    # @!attribute phone_number_type
    #   <p>Confines a search to just the phone numbers associated with the specified phone number type, either <b>local</b> or <b>toll-free</b>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class SearchAvailablePhoneNumbersRequest < Struct.new(
      nil,
      :area_code,
      :city,
      :country,
      :state,
      :toll_free_prefix,
      :phone_number_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute e164_phone_numbers
    #   <p>Confines a search to just the phone numbers in the E.164 format.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token used to return the next page of results.</p>
    #   @return [String]
    class SearchAvailablePhoneNumbersResponse < Struct.new(
      nil,
      :e164_phone_numbers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains the configuration settings for server-side encryption.</p>
    #          <note>
    #             <p>We only support symmetric keys. Do not use asymmetric or HMAC keys, or KMS aliases.</p>
    #          </note>
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt the enrollment data in a voice profile domain. 
    #            Asymmetric customer managed keys are not supported.</p>
    #   @return [String]
    class ServerSideEncryptionConfiguration < Struct.new(
      nil,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service encountered an unexpected error.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceFailureException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the SIP media application, including name and endpoints. 
    #          An AWS account can have multiple SIP media applications.</p>
    # @!attribute sip_media_application_id
    #   <p>A SIP media application's ID.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The AWS Region in which the SIP media application is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The SIP media application's name.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>List of endpoints for a SIP media application. Currently, only one endpoint per 
    #            SIP media application is permitted.</p>
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    # @!attribute created_timestamp
    #   <p>The SIP media application creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the SIP media application was updated.</p>
    #   @return [Time]
    # @!attribute sip_media_application_arn
    #   <p>The ARN of the SIP media application.</p>
    #   @return [String]
    class SipMediaApplication < Struct.new(
      nil,
      :sip_media_application_id,
      :aws_region,
      :name,
      :endpoints,
      :created_timestamp,
      :updated_timestamp,
      :sip_media_application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Alexa Skill configuration of a SIP media application.</p>
    #          <important>
    #             <p>Due to changes made by the Amazon Alexa service, this data type is no longer available for use. For more information, refer to 
    #          the <a href="https://developer.amazon.com/en-US/alexa/alexasmartproperties">Alexa Smart Properties</a> page.</p>
    #          </important>
    # @!attribute alexa_skill_status
    #   <p>The status of the Alexa Skill configuration.</p>
    #   @return [String]
    # @!attribute alexa_skill_ids
    #   <p>The ID of the Alexa Skill configuration.</p>
    #   @return [Array<String>]
    class SipMediaApplicationAlexaSkillConfiguration < Struct.new(
      nil,
      :alexa_skill_status,
      :alexa_skill_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>Call</code> instance for a SIP media application.</p>
    # @!attribute transaction_id
    #   <p>The call's transaction ID.</p>
    #   @return [String]
    class SipMediaApplicationCall < Struct.new(
      nil,
      :transaction_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint assigned to a SIP media application.</p>
    # @!attribute lambda_arn
    #   <p>Valid Amazon Resource Name (ARN) of the Lambda function, version, or alias. 
    #            The function must be created in the same AWS Region as the SIP media application.</p>
    #   @return [String]
    class SipMediaApplicationEndpoint < Struct.new(
      nil,
      :lambda_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration of a SIP media application.</p>
    # @!attribute enable_sip_media_application_message_logs
    #   <p>Enables message logging for the specified SIP media application.</p>
    #   @return [Boolean]
    class SipMediaApplicationLoggingConfiguration < Struct.new(
      nil,
      :enable_sip_media_application_message_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a SIP rule, including name, triggers, and target applications. 
    #          An AWS account can have multiple SIP rules.</p>
    # @!attribute sip_rule_id
    #   <p>A SIP rule's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A SIP rule's name.</p>
    #   @return [String]
    # @!attribute disabled
    #   <p>Indicates whether the SIP rule is enabled or disabled. You must disable a rule before you can delete it.</p>
    #   @return [Boolean]
    # @!attribute trigger_type
    #   <p>The type of trigger set for a SIP rule, either a phone number or a URI request host name.</p>
    #   @return [String]
    # @!attribute trigger_value
    #   <p>The value set for a SIP rule's trigger type. Either a phone number or a URI hostname.</p>
    #   @return [String]
    # @!attribute target_applications
    #   <p>The target SIP media application and other details, such as priority and AWS Region, 
    #            to be specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>
    #   @return [Array<Types::SipRuleTargetApplication>]
    # @!attribute created_timestamp
    #   <p>The time at which the SIP rule was created, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the SIP rule was updated, in ISO 8601 format.</p>
    #   @return [Time]
    class SipRule < Struct.new(
      nil,
      :sip_rule_id,
      :name,
      :disabled,
      :trigger_type,
      :trigger_value,
      :target_applications,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A target SIP media application and other details, such as priority and AWS Region, 
    #          to be specified in the SIP rule. Only one SIP rule per AWS Region can be provided.</p>
    # @!attribute sip_media_application_id
    #   <p>The ID of a rule's target SIP media application.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority setting of a rule's target SIP media application.</p>
    #   @return [Integer]
    # @!attribute aws_region
    #   <p>The AWS Region of a rule's target SIP media application.</p>
    #   @return [String]
    class SipRuleTargetApplication < Struct.new(
      nil,
      :sip_media_application_id,
      :priority,
      :aws_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a speaker search task.</p>
    # @!attribute results
    #   <p>The result value in the speaker search details.</p>
    #   @return [Array<Types::SpeakerSearchResult>]
    # @!attribute voiceprint_generation_status
    #   <p>The status of a voice print generation operation, <code>VoiceprintGenerationSuccess</code> or <code>VoiceprintGenerationFailure</code>..</p>
    #   @return [String]
    class SpeakerSearchDetails < Struct.new(
      nil,
      :results,
      :voiceprint_generation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of a speaker search analysis.</p>
    # @!attribute confidence_score
    #   <p>The confidence score in the speaker search analysis.</p>
    #   @return [Float]
    # @!attribute voice_profile_id
    #   <p>The voice profile ID.</p>
    #   @return [String]
    class SpeakerSearchResult < Struct.new(
      nil,
      :confidence_score,
      :voice_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:confidence_score] = 0 unless options.key?(:confidence_score)
        super
      end
    end

    # <p>A representation of an asynchronous request to perform speaker search analysis on a 
    #          Voice Connector call.</p>
    # @!attribute speaker_search_task_id
    #   <p>The speaker search task ID.</p>
    #   @return [String]
    # @!attribute speaker_search_task_status
    #   <p>The status of the speaker search task, <code>IN_QUEUE</code>, <code>IN_PROGRESS</code>, <code>PARTIAL_SUCCESS</code>, <code>SUCCEEDED</code>, 
    #            <code>FAILED</code>, or <code>STOPPED</code>.</p>
    #   @return [String]
    # @!attribute call_details
    #   <p>The call details of a speaker search task.</p>
    #   @return [Types::CallDetails]
    # @!attribute speaker_search_details
    #   <p>The details of a speaker search task.</p>
    #   @return [Types::SpeakerSearchDetails]
    # @!attribute created_timestamp
    #   <p>The time at which a speaker search task was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which a speaker search task was updated.</p>
    #   @return [Time]
    # @!attribute started_timestamp
    #   <p>The time at which the speaker search task began.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>A detailed message about the status of a speaker search.</p>
    #   @return [String]
    class SpeakerSearchTask < Struct.new(
      nil,
      :speaker_search_task_id,
      :speaker_search_task_status,
      :call_details,
      :speaker_search_details,
      :created_timestamp,
      :updated_timestamp,
      :started_timestamp,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction ID of the call being analyzed.</p>
    #   @return [String]
    # @!attribute voice_profile_domain_id
    #   <p>The ID of the voice profile domain that will store the voice profile.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different speaker search tasks.</p>
    #   @return [String]
    # @!attribute call_leg
    #   <p>Specifies which call leg to stream for speaker search.</p>
    #   @return [String]
    class StartSpeakerSearchTaskRequest < Struct.new(
      nil,
      :voice_connector_id,
      :transaction_id,
      :voice_profile_domain_id,
      :client_request_token,
      :call_leg,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute speaker_search_task
    #   <p>The details of the speaker search task.</p>
    #   @return [Types::SpeakerSearchTask]
    class StartSpeakerSearchTaskResponse < Struct.new(
      nil,
      :speaker_search_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The transaction ID.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different voice tone analysis 
    #            tasks.</p>
    #   @return [String]
    class StartVoiceToneAnalysisTaskRequest < Struct.new(
      nil,
      :voice_connector_id,
      :transaction_id,
      :language_code,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_tone_analysis_task
    #   <p>The details of the voice tone analysis task.</p>
    #   @return [Types::VoiceToneAnalysisTask]
    class StartVoiceToneAnalysisTaskResponse < Struct.new(
      nil,
      :voice_tone_analysis_task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute speaker_search_task_id
    #   <p>The speaker search task ID.</p>
    #   @return [String]
    class StopSpeakerSearchTaskRequest < Struct.new(
      nil,
      :voice_connector_id,
      :speaker_search_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    #   @return [String]
    class StopVoiceToneAnalysisTaskRequest < Struct.new(
      nil,
      :voice_connector_id,
      :voice_tone_analysis_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The streaming configuration associated with an Amazon Chime SDK Voice Connector. 
    #          Specifies whether media streaming is enabled for sending to Amazon Kinesis, and shows the retention 
    #          period for the Amazon Kinesis data, in hours.</p>
    # @!attribute data_retention_in_hours
    #   <p>The amount of time, in hours, to the Kinesis data.</p>
    #   @return [Integer]
    # @!attribute disabled
    #   <p>When true, streaming to Kinesis is off.</p>
    #   @return [Boolean]
    # @!attribute streaming_notification_targets
    #   <p>The streaming notification targets.</p>
    #   @return [Array<Types::StreamingNotificationTarget>]
    # @!attribute media_insights_configuration
    #   <p>The call analytics configuration.</p>
    #   @return [Types::MediaInsightsConfiguration]
    class StreamingConfiguration < Struct.new(
      nil,
      :data_retention_in_hours,
      :disabled,
      :streaming_notification_targets,
      :media_insights_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target recipient for a streaming configuration notification.</p>
    # @!attribute notification_target
    #   <p>The streaming notification target.</p>
    #   @return [String]
    class StreamingNotificationTarget < Struct.new(
      nil,
      :notification_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag applied to a resource.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
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
    #   <p>The ARN of the resource being tagged. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of the tags being added to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Termination settings enable SIP hosts to make outbound calls using an Amazon Chime SDK Voice Connector.</p>
    # @!attribute cps_limit
    #   <p>The limit on calls per second. Max value based on account service quota. Default value of 1.</p>
    #   @return [Integer]
    # @!attribute default_phone_number
    #   <p>The default outbound calling number.</p>
    #   @return [String]
    # @!attribute calling_regions
    #   <p>The countries to which calls are allowed, in ISO 3166-1 alpha-2 format. Required.</p>
    #   @return [Array<String>]
    # @!attribute cidr_allowed_list
    #   <p>The IP addresses allowed to make calls, in CIDR format.</p>
    #   @return [Array<String>]
    # @!attribute disabled
    #   <p>When termination is disabled, outbound calls cannot be made.</p>
    #   @return [Boolean]
    class Termination < Struct.new(
      nil,
      :cps_limit,
      :default_phone_number,
      :calling_regions,
      :cidr_allowed_list,
      :disabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The termination health details, including the source IP address and timestamp of the last successful <code>SIP OPTIONS</code> message from your SIP infrastructure.</p>
    # @!attribute timestamp
    #   <p>The timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute source
    #   <p>The source IP address.</p>
    #   @return [String]
    class TerminationHealth < Struct.new(
      nil,
      :timestamp,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of customer requests exceeds the request rate limit.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ThrottledClientException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client isn't authorized to request a resource.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnauthorizedClientException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A well-formed request couldn't be followed due to semantic errors.</p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class UnprocessableEntityException < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource having its tags removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags being removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector
    #   <p>The Voice Connector settings.</p>
    #   @return [Types::VoiceConnectorSettings]
    class UpdateGlobalSettingsRequest < Struct.new(
      nil,
      :voice_connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number_id
    #   <p>The phone number ID.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product type.</p>
    #   @return [String]
    # @!attribute calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Specifies the updated name assigned to one or more phone numbers.</p>
    #   @return [String]
    class UpdatePhoneNumberRequest < Struct.new(
      nil,
      :phone_number_id,
      :product_type,
      :calling_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The phone number ID, product type, or calling name fields to update, 
    #          used with the <a>BatchUpdatePhoneNumber</a> and <a>UpdatePhoneNumber</a> actions.</p>
    # @!attribute phone_number_id
    #   <p>The phone number ID to update.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The product type to update.</p>
    #   @return [String]
    # @!attribute calling_name
    #   <p>The outbound calling name to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the phone number.</p>
    #   @return [String]
    class UpdatePhoneNumberRequestItem < Struct.new(
      nil,
      :phone_number_id,
      :product_type,
      :calling_name,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute phone_number
    #   <p>The updated phone number details.</p>
    #   @return [Types::PhoneNumber]
    class UpdatePhoneNumberResponse < Struct.new(
      nil,
      :phone_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calling_name
    #   <p>The default outbound calling name for the account.</p>
    #   @return [String]
    class UpdatePhoneNumberSettingsRequest < Struct.new(
      nil,
      :calling_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute proxy_session_id
    #   <p>The proxy session ID.</p>
    #   @return [String]
    # @!attribute capabilities
    #   <p>The proxy session capabilities.</p>
    #   @return [Array<String>]
    # @!attribute expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    #   @return [Integer]
    class UpdateProxySessionRequest < Struct.new(
      nil,
      :voice_connector_id,
      :proxy_session_id,
      :capabilities,
      :expiry_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute proxy_session
    #   <p>The updated proxy session details.</p>
    #   @return [Types::ProxySession]
    class UpdateProxySessionResponse < Struct.new(
      nil,
      :proxy_session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The ID of the SIP media application handling the call.</p>
    #   @return [String]
    # @!attribute transaction_id
    #   <p>The ID of the call transaction.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>Arguments made available to the Lambda function as part of the 
    #            <code>CALL_UPDATE_REQUESTED</code> event. Can contain 0-20 key-value pairs.</p>
    #   @return [Hash<String, String>]
    class UpdateSipMediaApplicationCallRequest < Struct.new(
      nil,
      :sip_media_application_id,
      :transaction_id,
      :arguments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_call
    #   <p>A <code>Call</code> instance for a SIP media application.</p>
    #   @return [Types::SipMediaApplicationCall]
    class UpdateSipMediaApplicationCallResponse < Struct.new(
      nil,
      :sip_media_application_call,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application_id
    #   <p>The SIP media application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the specified SIP media application.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The new set of endpoints for the specified SIP media application.</p>
    #   @return [Array<Types::SipMediaApplicationEndpoint>]
    class UpdateSipMediaApplicationRequest < Struct.new(
      nil,
      :sip_media_application_id,
      :name,
      :endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_media_application
    #   <p>The updated SIP media application’s details.</p>
    #   @return [Types::SipMediaApplication]
    class UpdateSipMediaApplicationResponse < Struct.new(
      nil,
      :sip_media_application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rule_id
    #   <p>The SIP rule ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the specified SIP rule.</p>
    #   @return [String]
    # @!attribute disabled
    #   <p>The new value that indicates whether the rule is disabled.</p>
    #   @return [Boolean]
    # @!attribute target_applications
    #   <p>The new list of target applications.</p>
    #   @return [Array<Types::SipRuleTargetApplication>]
    class UpdateSipRuleRequest < Struct.new(
      nil,
      :sip_rule_id,
      :name,
      :disabled,
      :target_applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sip_rule
    #   <p>The updated SIP rule details.</p>
    #   @return [Types::SipRule]
    class UpdateSipRuleResponse < Struct.new(
      nil,
      :sip_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Voice Connector group.</p>
    #   @return [String]
    # @!attribute voice_connector_items
    #   <p>The <code>VoiceConnectorItems</code> to associate with the Voice Connector 
    #            group.</p>
    #   @return [Array<Types::VoiceConnectorItem>]
    class UpdateVoiceConnectorGroupRequest < Struct.new(
      nil,
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_group
    #   <p>The updated Voice Connector group.</p>
    #   @return [Types::VoiceConnectorGroup]
    class UpdateVoiceConnectorGroupResponse < Struct.new(
      nil,
      :voice_connector_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Voice Connector.</p>
    #   @return [String]
    # @!attribute require_encryption
    #   <p>When enabled, requires encryption for the Voice Connector.</p>
    #   @return [Boolean]
    class UpdateVoiceConnectorRequest < Struct.new(
      nil,
      :voice_connector_id,
      :name,
      :require_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_connector
    #   <p>The updated Voice Connector details.</p>
    #   @return [Types::VoiceConnector]
    class UpdateVoiceConnectorResponse < Struct.new(
      nil,
      :voice_connector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain_id
    #   <p>The domain ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the voice profile domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the voice profile domain.</p>
    #   @return [String]
    class UpdateVoiceProfileDomainRequest < Struct.new(
      nil,
      :voice_profile_domain_id,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_domain
    #   <p>The updated details of the voice profile domain.</p>
    #   @return [Types::VoiceProfileDomain]
    class UpdateVoiceProfileDomainResponse < Struct.new(
      nil,
      :voice_profile_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile_id
    #   <p>The profile ID.</p>
    #   @return [String]
    # @!attribute speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    #   @return [String]
    class UpdateVoiceProfileRequest < Struct.new(
      nil,
      :voice_profile_id,
      :speaker_search_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute voice_profile
    #   <p>The updated voice profile settings.</p>
    #   @return [Types::VoiceProfile]
    class UpdateVoiceProfileResponse < Struct.new(
      nil,
      :voice_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute aws_account_id
    #   <p>The AWS account ID.</p>
    #   @return [String]
    # @!attribute street_number
    #   <p>The address street number, such as <code>200</code> or <code>2121</code>.</p>
    #   @return [String]
    # @!attribute street_info
    #   <p>The address street information, such as <code>8th Avenue</code>.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The address city, such as <code>Portland</code>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The address state, such as <code>ME</code>.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country in the address being validated as two-letter country code in ISO 3166-1
    #            alpha-2 format, such as <code>US</code>. For more information, see <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1 alpha-2</a> in
    #            Wikipedia.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The dress postal code, such <code>04352</code>.</p>
    #   @return [String]
    class ValidateE911AddressRequest < Struct.new(
      nil,
      :aws_account_id,
      :street_number,
      :street_info,
      :city,
      :state,
      :country,
      :postal_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute validation_result
    #   <p>Number indicating the result of address validation.</p>
    #            <p>Each possible result is defined as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>0</code> - Address validation succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1</code> - Address validation succeeded. The address was a close enough
    #                  match and has been corrected as part of the address object.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>2</code> - Address validation failed. You should re-submit the validation
    #                  request with candidates from the <code>CandidateAddressList</code> result, if it's a
    #                  close match.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute address_external_id
    #   <p>The ID that represents the address.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The validated address.</p>
    #   @return [Types::Address]
    # @!attribute candidate_address_list
    #   <p>The list of address suggestions..</p>
    #   @return [Array<Types::CandidateAddress>]
    class ValidateE911AddressResponse < Struct.new(
      nil,
      :validation_result,
      :address_external_id,
      :address,
      :candidate_address_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:validation_result] = 0 unless options.key?(:validation_result)
        super
      end
    end

    # <p>The Amazon Chime SDK Voice Connector configuration, including outbound 
    #          host name and encryption settings.</p>
    # @!attribute voice_connector_id
    #   <p>The Voice Connector's ID.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The AWS Region in which the Voice Connector is created. 
    #            Default: us-east-1.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The Voice Connector's name.</p>
    #   @return [String]
    # @!attribute outbound_host_name
    #   <p>The outbound host name for the Voice Connector.</p>
    #   @return [String]
    # @!attribute require_encryption
    #   <p>Enables or disables encryption for the Voice Connector.</p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>The Voice Connector's creation timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The Voice Connector's updated timestamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute voice_connector_arn
    #   <p>The ARN of the Voice Connector.</p>
    #   @return [String]
    # @!attribute integration_type
    #   <p>The connectors for use with Amazon Connect.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The type of network of the Voice Connector. Either IPv4 only or dual-stack (IPv4 and IPv6).</p>
    #   @return [String]
    class VoiceConnector < Struct.new(
      nil,
      :voice_connector_id,
      :aws_region,
      :name,
      :outbound_host_name,
      :require_encryption,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_arn,
      :integration_type,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Chime SDK Voice Connector group configuration, including 
    #          associated Voice Connectors. You can include Voice Connectors from different 
    #          AWS Regions in a group. This creates a fault tolerant mechanism for 
    #          fallback in case of availability events.</p>
    # @!attribute voice_connector_group_id
    #   <p>The ID of a Voice Connector group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a Voice Connector group.</p>
    #   @return [String]
    # @!attribute voice_connector_items
    #   <p>The Voice Connectors to which you route inbound calls.</p>
    #   @return [Array<Types::VoiceConnectorItem>]
    # @!attribute created_timestamp
    #   <p>The Voice Connector group's creation time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The Voice Connector group's creation time stamp, in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute voice_connector_group_arn
    #   <p>The ARN of the Voice Connector group.</p>
    #   @return [String]
    class VoiceConnectorGroup < Struct.new(
      nil,
      :voice_connector_group_id,
      :name,
      :voice_connector_items,
      :created_timestamp,
      :updated_timestamp,
      :voice_connector_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For Amazon Chime SDK Voice Connector groups, the Amazon Chime SDK Voice 
    #          Connectors to which you route inbound calls. Includes priority configuration 
    #          settings. Limit: 3 VoiceConnectorItems per Voice Connector group.</p>
    # @!attribute voice_connector_id
    #   <p>The Voice Connector ID.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority setting of a Voice Connector item. Calls are routed to hosts 
    #              in priority order, with 1 as the highest priority. When hosts have equal priority, 
    #              the system distributes calls among them based on their relative weight.</p>
    #   @return [Integer]
    class VoiceConnectorItem < Struct.new(
      nil,
      :voice_connector_id,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Chime SDK Voice Connector settings. Includes any Amazon 
    #          S3 buckets designated for storing call detail records.</p>
    # @!attribute cdr_bucket
    #   <p>The S3 bucket that stores the Voice Connector's call detail records.</p>
    #   @return [String]
    class VoiceConnectorSettings < Struct.new(
      nil,
      :cdr_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The combination of a voice print and caller ID.</p>
    # @!attribute voice_profile_id
    #   <p>The ID of the voice profile.</p>
    #   @return [String]
    # @!attribute voice_profile_arn
    #   <p>The ARN of the voice profile.</p>
    #   @return [String]
    # @!attribute voice_profile_domain_id
    #   <p>The ID of the domain that contains the voice profile.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the voice profile was created and enrolled.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the voice profile was last updated.</p>
    #   @return [Time]
    # @!attribute expiration_timestamp
    #   <p>The time at which a voice profile expires unless you re-enroll the caller via the 
    #            <code>UpdateVoiceProfile</code> API.</p>
    #   @return [Time]
    class VoiceProfile < Struct.new(
      nil,
      :voice_profile_id,
      :voice_profile_arn,
      :voice_profile_domain_id,
      :created_timestamp,
      :updated_timestamp,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of voice profiles.</p>
    # @!attribute voice_profile_domain_id
    #   <p>The ID of the voice profile domain.</p>
    #   @return [String]
    # @!attribute voice_profile_domain_arn
    #   <p>The voice profile domain's Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the voice profile domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the voice profile domain.</p>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>A structure that contains the configuration settings for server-side encryption.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute created_timestamp
    #   <p>The time at which the voice profile domain was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the voice profile was last updated.</p>
    #   @return [Time]
    class VoiceProfileDomain < Struct.new(
      nil,
      :voice_profile_domain_id,
      :voice_profile_domain_arn,
      :name,
      :description,
      :server_side_encryption_configuration,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A high-level overview of a voice profile domain.</p>
    # @!attribute voice_profile_domain_id
    #   <p>The ID of the voice profile domain summary.</p>
    #   @return [String]
    # @!attribute voice_profile_domain_arn
    #   <p>The ARN of a voice profile in a voice profile domain summary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the voice profile domain summary.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the voice profile domain summary.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which the voice profile domain summary was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which the voice profile domain summary was last updated.</p>
    #   @return [Time]
    class VoiceProfileDomainSummary < Struct.new(
      nil,
      :voice_profile_domain_id,
      :voice_profile_domain_arn,
      :name,
      :description,
      :created_timestamp,
      :updated_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A high-level summary of a voice profile.</p>
    # @!attribute voice_profile_id
    #   <p>The ID of the voice profile in a voice profile summary.</p>
    #   @return [String]
    # @!attribute voice_profile_arn
    #   <p>The ARN of the voice profile in a voice profile summary.</p>
    #   @return [String]
    # @!attribute voice_profile_domain_id
    #   <p>The ID of the voice profile domain in a voice profile summary.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time at which a voice profile summary was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which a voice profile summary was last updated.</p>
    #   @return [Time]
    # @!attribute expiration_timestamp
    #   <p>Extends the life of the voice profile. You can use <code>UpdateVoiceProfile</code> to refresh an existing voice profile's voice print and extend the life of the summary.</p>
    #   @return [Time]
    class VoiceProfileSummary < Struct.new(
      nil,
      :voice_profile_id,
      :voice_profile_arn,
      :voice_profile_domain_id,
      :created_timestamp,
      :updated_timestamp,
      :expiration_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A representation of an asynchronous request to perform voice tone analysis on a Voice Connector call.</p>
    # @!attribute voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    #   @return [String]
    # @!attribute voice_tone_analysis_task_status
    #   <p>The status of a voice tone analysis task, <code>IN_QUEUE</code>, <code>IN_PROGRESS</code>, <code>PARTIAL_SUCCESS</code>, <code>SUCCEEDED</code>, 
    #            <code>FAILED</code>, or <code>STOPPED</code>.</p>
    #   @return [String]
    # @!attribute call_details
    #   <p>The call details of a voice tone analysis task.</p>
    #   @return [Types::CallDetails]
    # @!attribute created_timestamp
    #   <p>The time at which a voice tone analysis task was created.</p>
    #   @return [Time]
    # @!attribute updated_timestamp
    #   <p>The time at which a voice tone analysis task was updated.</p>
    #   @return [Time]
    # @!attribute started_timestamp
    #   <p>The time at which a voice tone analysis task started.</p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The status of a voice tone analysis task.</p>
    #   @return [String]
    class VoiceToneAnalysisTask < Struct.new(
      nil,
      :voice_tone_analysis_task_id,
      :voice_tone_analysis_task_status,
      :call_details,
      :created_timestamp,
      :updated_timestamp,
      :started_timestamp,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
