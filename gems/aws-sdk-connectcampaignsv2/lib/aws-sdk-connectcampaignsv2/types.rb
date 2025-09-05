# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCampaignsV2
  # This module contains the types returned by client operations.
  module Types

    # You do not have sufficient access to perform this action.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Agentless config
    class AgentlessConfig < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Answering Machine Detection config
    # @!attribute enable_answer_machine_detection
    #   Enable or disable answering machine detection
    #   @return [Boolean]
    # @!attribute await_answer_machine_prompt
    #   Enable or disable await answer machine prompt
    #   @return [Boolean]
    class AnswerMachineDetectionConfig < Struct.new(
      :enable_answer_machine_detection,
      :await_answer_machine_prompt,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:await_answer_machine_prompt] = nil unless options.key?(:await_answer_machine_prompt)
        super
      end
    end

    # An Amazon Connect campaign.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    # @!attribute name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute channel_subtype_config
    #   Campaign Channel Subtype config
    #   @return [Types::ChannelSubtypeConfig]
    # @!attribute source
    #   Source of the campaign
    #   @return [Types::Source]
    # @!attribute connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    # @!attribute communication_time_config
    #   Campaign communication time config
    #   @return [Types::CommunicationTimeConfig]
    # @!attribute communication_limits_override
    #   Communication limits config
    #   @return [Types::CommunicationLimitsConfig]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class Campaign < Struct.new(
      :id,
      :arn,
      :name,
      :connect_instance_id,
      :channel_subtype_config,
      :source,
      :connect_campaign_flow_arn,
      :schedule,
      :communication_time_config,
      :communication_limits_override,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Filter model by type
    # @!attribute instance_id_filter
    #   Connect instance identifier filter
    #   @return [Types::InstanceIdFilter]
    class CampaignFilters < Struct.new(
      :instance_id_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # An Amazon Connect campaign summary.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    # @!attribute name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute channel_subtypes
    #   Channel subtype list
    #   @return [Array<String>]
    # @!attribute schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    # @!attribute connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class CampaignSummary < Struct.new(
      :id,
      :arn,
      :name,
      :connect_instance_id,
      :channel_subtypes,
      :schedule,
      :connect_campaign_flow_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Campaign Channel Subtype config
    # @!attribute telephony
    #   Telephony Channel Subtype config
    #   @return [Types::TelephonyChannelSubtypeConfig]
    # @!attribute sms
    #   SMS Channel Subtype config
    #   @return [Types::SmsChannelSubtypeConfig]
    # @!attribute email
    #   Email Channel Subtype config
    #   @return [Types::EmailChannelSubtypeConfig]
    class ChannelSubtypeConfig < Struct.new(
      :telephony,
      :sms,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # ChannelSubtypeParameters for an outbound request
    # @!attribute telephony
    #   Parameters for the Telephony Channel Subtype
    #   @return [Types::TelephonyChannelSubtypeParameters]
    # @!attribute sms
    #   Parameters for the SMS Channel Subtype
    #   @return [Types::SmsChannelSubtypeParameters]
    # @!attribute email
    #   Parameters for the Email Channel Subtype
    #   @return [Types::EmailChannelSubtypeParameters]
    class ChannelSubtypeParameters < Struct.new(
      :telephony,
      :sms,
      :email,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Telephony < ChannelSubtypeParameters; end
      class Sms < ChannelSubtypeParameters; end
      class Email < ChannelSubtypeParameters; end
      class Unknown < ChannelSubtypeParameters; end
    end

    # Communication Limit
    # @!attribute max_count_per_recipient
    #   Maximum number of contacts allowed for a given target within the given frequency.
    #   @return [Integer]
    # @!attribute frequency
    #   The number of days to consider with regards to this limit.
    #   @return [Integer]
    # @!attribute unit
    #   The communication limit time unit.
    #   @return [String]
    class CommunicationLimit < Struct.new(
      :max_count_per_recipient,
      :frequency,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Communication limits
    # @!attribute communication_limits_list
    #   List of communication limit
    #   @return [Array<Types::CommunicationLimit>]
    class CommunicationLimits < Struct.new(
      :communication_limits_list,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CommunicationLimitsList < CommunicationLimits; end
      class Unknown < CommunicationLimits; end
    end

    # Communication limits config
    # @!attribute all_channel_subtypes
    #   Communication limits
    #   @return [Types::CommunicationLimits]
    # @!attribute instance_limits_handling
    #   Instance limits handling
    #   @return [String]
    class CommunicationLimitsConfig < Struct.new(
      :all_channel_subtypes,
      :instance_limits_handling,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Campaign communication time config
    # @!attribute local_time_zone_config
    #   Local time zone config
    #   @return [Types::LocalTimeZoneConfig]
    # @!attribute telephony
    #   Time window config
    #   @return [Types::TimeWindow]
    # @!attribute sms
    #   Time window config
    #   @return [Types::TimeWindow]
    # @!attribute email
    #   Time window config
    #   @return [Types::TimeWindow]
    class CommunicationTimeConfig < Struct.new(
      :local_time_zone_config,
      :telephony,
      :sms,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request could not be processed because of conflict in the current state of the resource.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for CreateCampaign API.
    # @!attribute name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute channel_subtype_config
    #   Campaign Channel Subtype config
    #   @return [Types::ChannelSubtypeConfig]
    # @!attribute source
    #   Source of the campaign
    #   @return [Types::Source]
    # @!attribute connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    # @!attribute communication_time_config
    #   Campaign communication time config
    #   @return [Types::CommunicationTimeConfig]
    # @!attribute communication_limits_override
    #   Communication limits config
    #   @return [Types::CommunicationLimitsConfig]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class CreateCampaignRequest < Struct.new(
      :name,
      :connect_instance_id,
      :channel_subtype_config,
      :source,
      :connect_campaign_flow_arn,
      :schedule,
      :communication_time_config,
      :communication_limits_override,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for Create Campaign API
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class CreateCampaignResponse < Struct.new(
      :id,
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Customer Profiles integration config
    # @!attribute domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute object_type_names
    #   Object type names map.
    #   @return [Hash<String, String>]
    class CustomerProfilesIntegrationConfig < Struct.new(
      :domain_arn,
      :object_type_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Customer Profiles integration identifier
    # @!attribute domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class CustomerProfilesIntegrationIdentifier < Struct.new(
      :domain_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Customer Profiles integration summary
    # @!attribute domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute object_type_names
    #   Object type names map.
    #   @return [Hash<String, String>]
    class CustomerProfilesIntegrationSummary < Struct.new(
      :domain_arn,
      :object_type_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteCampaignChannelSubtypeConfig API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute channel_subtype
    #   The type of campaign channel subtype.
    #   @return [String]
    class DeleteCampaignChannelSubtypeConfigRequest < Struct.new(
      :id,
      :channel_subtype,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteCampaignCommunicationLimits API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute config
    #   The type of campaign communication limits config.
    #   @return [String]
    class DeleteCampaignCommunicationLimitsRequest < Struct.new(
      :id,
      :config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteCampaignCommunicationTime API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute config
    #   The type of campaign communication time config
    #   @return [String]
    class DeleteCampaignCommunicationTimeRequest < Struct.new(
      :id,
      :config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteCampaign API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class DeleteCampaignRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteConnectInstanceConfig API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute campaign_deletion_policy
    #   Enumeration of the policies to enact on existing campaigns during instance config deletion
    #   @return [String]
    class DeleteConnectInstanceConfigRequest < Struct.new(
      :connect_instance_id,
      :campaign_deletion_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteConnectInstanceIntegration API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute integration_identifier
    #   Integration identifier for Connect instance
    #   @return [Types::IntegrationIdentifier]
    class DeleteConnectInstanceIntegrationRequest < Struct.new(
      :connect_instance_id,
      :integration_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteInstanceOnboardingJob API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class DeleteInstanceOnboardingJobRequest < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DescribeCampaign API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class DescribeCampaignRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for DescribeCampaign API.
    # @!attribute campaign
    #   An Amazon Connect campaign.
    #   @return [Types::Campaign]
    class DescribeCampaignResponse < Struct.new(
      :campaign,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Email Channel Subtype config
    # @!attribute capacity
    #   Allocates outbound capacity for the specific channel subtype of this campaign between multiple active campaigns
    #   @return [Float]
    # @!attribute outbound_mode
    #   Email Outbound Mode
    #   @return [Types::EmailOutboundMode]
    # @!attribute default_outbound_config
    #   Default Email Outbound config
    #   @return [Types::EmailOutboundConfig]
    class EmailChannelSubtypeConfig < Struct.new(
      :capacity,
      :outbound_mode,
      :default_outbound_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Parameters for the Email Channel Subtype
    # @!attribute destination_email_address
    #   Source/Destination Email address used for Email messages
    #   @return [String]
    # @!attribute connect_source_email_address
    #   Source/Destination Email address used for Email messages
    #   @return [String]
    # @!attribute template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute template_parameters
    #   A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.
    #   @return [Hash<String, String>]
    class EmailChannelSubtypeParameters < Struct.new(
      :destination_email_address,
      :connect_source_email_address,
      :template_arn,
      :template_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Default Email Outbound config
    # @!attribute connect_source_email_address
    #   Source/Destination Email address used for Email messages
    #   @return [String]
    # @!attribute source_email_address_display_name
    #   Display name for Email Address
    #   @return [String]
    # @!attribute wisdom_template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class EmailOutboundConfig < Struct.new(
      :connect_source_email_address,
      :source_email_address_display_name,
      :wisdom_template_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Email Outbound Mode
    # @!attribute agentless
    #   Agentless config
    #   @return [Types::AgentlessConfig]
    class EmailOutboundMode < Struct.new(
      :agentless,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Agentless < EmailOutboundMode; end
      class Unknown < EmailOutboundMode; end
    end

    # Encryption config for Connect Instance. Note that sensitive data will always be encrypted.
    # If disabled, service will perform encryption with its own key.
    # If enabled, a KMS key id needs to be provided and KMS charges will apply.
    # KMS is only type supported
    # @!attribute enabled
    #   Boolean to indicate if custom encryption has been enabled.
    #   @return [Boolean]
    # @!attribute encryption_type
    #   Server-side encryption type.
    #   @return [String]
    # @!attribute key_arn
    #   KMS key id/arn for encryption config.
    #   @return [String]
    class EncryptionConfig < Struct.new(
      :enabled,
      :encryption_type,
      :key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # Event trigger of the campaign
    # @!attribute customer_profiles_domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class EventTrigger < Struct.new(
      :customer_profiles_domain_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Failed response of campaign state
    # @!attribute campaign_id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute failure_code
    #   A predefined code indicating the error that caused the failure in getting state of campaigns
    #   @return [String]
    class FailedCampaignStateResponse < Struct.new(
      :campaign_id,
      :failure_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Failure details for a profile outbound request
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute id
    #   Identifier of the profile outbound request
    #   @return [String]
    # @!attribute failure_code
    #   Predefined code indicating the error that caused the failure
    #   @return [String]
    class FailedProfileOutboundRequest < Struct.new(
      :client_token,
      :id,
      :failure_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A failed request identified by the unique client token.
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute id
    #   Identifier representing a Dial request
    #   @return [String]
    # @!attribute failure_code
    #   A predefined code indicating the error that caused the failure.
    #   @return [String]
    class FailedRequest < Struct.new(
      :client_token,
      :id,
      :failure_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for GetCampaignStateBatch API.
    # @!attribute campaign_ids
    #   List of CampaignId
    #   @return [Array<String>]
    class GetCampaignStateBatchRequest < Struct.new(
      :campaign_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for GetCampaignStateBatch API.
    # @!attribute successful_requests
    #   List of successful response of campaign state
    #   @return [Array<Types::SuccessfulCampaignStateResponse>]
    # @!attribute failed_requests
    #   List of failed requests of campaign state
    #   @return [Array<Types::FailedCampaignStateResponse>]
    class GetCampaignStateBatchResponse < Struct.new(
      :successful_requests,
      :failed_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for GetCampaignState API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class GetCampaignStateRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for GetCampaignState API.
    # @!attribute state
    #   State of a campaign
    #   @return [String]
    class GetCampaignStateResponse < Struct.new(
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for GetConnectInstanceConfig API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class GetConnectInstanceConfigRequest < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for GetConnectInstanceConfig API.
    # @!attribute connect_instance_config
    #   Instance config object
    #   @return [Types::InstanceConfig]
    class GetConnectInstanceConfigResponse < Struct.new(
      :connect_instance_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for GetInstanceCommunicationLimits API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class GetInstanceCommunicationLimitsRequest < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for GetInstanceCommunicationLimits API.
    # @!attribute communication_limits_config
    #   Instance Communication limits config
    #   @return [Types::InstanceCommunicationLimitsConfig]
    class GetInstanceCommunicationLimitsResponse < Struct.new(
      :communication_limits_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for GetInstanceOnboardingJobStatus API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class GetInstanceOnboardingJobStatusRequest < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for GetInstanceOnboardingJobStatus API.
    # @!attribute connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    class GetInstanceOnboardingJobStatusResponse < Struct.new(
      :connect_instance_onboarding_job_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Instance Communication limits config
    # @!attribute all_channel_subtypes
    #   Communication limits
    #   @return [Types::CommunicationLimits]
    class InstanceCommunicationLimitsConfig < Struct.new(
      :all_channel_subtypes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Instance config object
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute service_linked_role_arn
    #   Service linked role arn
    #   @return [String]
    # @!attribute encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data will always be encrypted.
    #   If disabled, service will perform encryption with its own key.
    #   If enabled, a KMS key id needs to be provided and KMS charges will apply.
    #   KMS is only type supported
    #   @return [Types::EncryptionConfig]
    class InstanceConfig < Struct.new(
      :connect_instance_id,
      :service_linked_role_arn,
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Connect instance identifier filter
    # @!attribute value
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute operator
    #   Operators for Connect instance identifier filter
    #   @return [String]
    class InstanceIdFilter < Struct.new(
      :value,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Instance onboarding job status object
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute status
    #   Enumeration of the possible states for instance onboarding job
    #   @return [String]
    # @!attribute failure_code
    #   Enumeration of the possible failure codes for instance onboarding job
    #   @return [String]
    class InstanceOnboardingJobStatus < Struct.new(
      :connect_instance_id,
      :status,
      :failure_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Integration config for Connect Instance
    # @!attribute customer_profiles
    #   Customer Profiles integration config
    #   @return [Types::CustomerProfilesIntegrationConfig]
    # @!attribute q_connect
    #   Q Connect integration config
    #   @return [Types::QConnectIntegrationConfig]
    class IntegrationConfig < Struct.new(
      :customer_profiles,
      :q_connect,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CustomerProfiles < IntegrationConfig; end
      class QConnect < IntegrationConfig; end
      class Unknown < IntegrationConfig; end
    end

    # Integration identifier for Connect instance
    # @!attribute customer_profiles
    #   Customer Profiles integration identifier
    #   @return [Types::CustomerProfilesIntegrationIdentifier]
    # @!attribute q_connect
    #   Q Connect integration identifier
    #   @return [Types::QConnectIntegrationIdentifier]
    class IntegrationIdentifier < Struct.new(
      :customer_profiles,
      :q_connect,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CustomerProfiles < IntegrationIdentifier; end
      class QConnect < IntegrationIdentifier; end
      class Unknown < IntegrationIdentifier; end
    end

    # Integration summary for Connect instance.
    # @!attribute customer_profiles
    #   Customer Profiles integration summary
    #   @return [Types::CustomerProfilesIntegrationSummary]
    # @!attribute q_connect
    #   Q Connect integration summary
    #   @return [Types::QConnectIntegrationSummary]
    class IntegrationSummary < Struct.new(
      :customer_profiles,
      :q_connect,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CustomerProfiles < IntegrationSummary; end
      class QConnect < IntegrationSummary; end
      class Unknown < IntegrationSummary; end
    end

    # Request processing failed because of an error or failure with the service.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request could not be processed because of conflict in the current state of the campaign.
    # @!attribute state
    #   State of a campaign
    #   @return [String]
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class InvalidCampaignStateException < Struct.new(
      :state,
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request could not be processed because of conflict in the current state.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class InvalidStateException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for ListCampaigns API.
    # @!attribute max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    # @!attribute next_token
    #   The token for the next set of results.
    #   @return [String]
    # @!attribute filters
    #   Filter model by type
    #   @return [Types::CampaignFilters]
    class ListCampaignsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for ListCampaigns API.
    # @!attribute next_token
    #   The token for the next set of results.
    #   @return [String]
    # @!attribute campaign_summary_list
    #   A list of Amazon Connect campaigns.
    #   @return [Array<Types::CampaignSummary>]
    class ListCampaignsResponse < Struct.new(
      :next_token,
      :campaign_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for ListConnectInstanceIntegrations API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    # @!attribute next_token
    #   The token for the next set of results.
    #   @return [String]
    class ListConnectInstanceIntegrationsRequest < Struct.new(
      :connect_instance_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for ListConnectInstanceIntegrations API.
    # @!attribute next_token
    #   The token for the next set of results.
    #   @return [String]
    # @!attribute integration_summary_list
    #   A list of Amazon Connect Instance Integrations.
    #   @return [Array<Types::IntegrationSummary>]
    class ListConnectInstanceIntegrationsResponse < Struct.new(
      :next_token,
      :integration_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for ListTagsForResource API.
    # @!attribute arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for ListTagsForResource API.
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Local time zone config
    # @!attribute default_time_zone
    #   Time Zone Id in the IANA format
    #   @return [String]
    # @!attribute local_time_zone_detection
    #   Local TimeZone Detection method list
    #   @return [Array<String>]
    class LocalTimeZoneConfig < Struct.new(
      :default_time_zone,
      :local_time_zone_detection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Open Hours config
    # @!attribute daily_hours
    #   Daily Hours map
    #   @return [Hash<String, Array<Types::TimeRange>>]
    class OpenHours < Struct.new(
      :daily_hours,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class DailyHours < OpenHours; end
      class Unknown < OpenHours; end
    end

    # An outbound request for a campaign.
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute expiration_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    # @!attribute channel_subtype_parameters
    #   ChannelSubtypeParameters for an outbound request
    #   @return [Types::ChannelSubtypeParameters]
    class OutboundRequest < Struct.new(
      :client_token,
      :expiration_time,
      :channel_subtype_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for PauseCampaign API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class PauseCampaignRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Predictive config
    # @!attribute bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    class PredictiveConfig < Struct.new(
      :bandwidth_allocation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Information about a profile outbound request
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute profile_id
    #   Identifier of the customer profile
    #   @return [String]
    # @!attribute expiration_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    class ProfileOutboundRequest < Struct.new(
      :client_token,
      :profile_id,
      :expiration_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Progressive config
    # @!attribute bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    class ProgressiveConfig < Struct.new(
      :bandwidth_allocation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for PutConnectInstanceIntegration API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute integration_config
    #   Integration config for Connect Instance
    #   @return [Types::IntegrationConfig]
    class PutConnectInstanceIntegrationRequest < Struct.new(
      :connect_instance_id,
      :integration_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for PutInstanceCommunicationLimits API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute communication_limits_config
    #   Instance Communication limits config
    #   @return [Types::InstanceCommunicationLimitsConfig]
    class PutInstanceCommunicationLimitsRequest < Struct.new(
      :connect_instance_id,
      :communication_limits_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for PutOutboundRequestBatch API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute outbound_requests
    #   A list of outbound requests.
    #   @return [Array<Types::OutboundRequest>]
    class PutOutboundRequestBatchRequest < Struct.new(
      :id,
      :outbound_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for PutOutboundRequestBatch API.
    # @!attribute successful_requests
    #   A list of successful requests identified by the unique client token.
    #   @return [Array<Types::SuccessfulRequest>]
    # @!attribute failed_requests
    #   A list of failed requests.
    #   @return [Array<Types::FailedRequest>]
    class PutOutboundRequestBatchResponse < Struct.new(
      :successful_requests,
      :failed_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for PutProfileOutboundRequestBatch API
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute profile_outbound_requests
    #   List of profile outbound requests
    #   @return [Array<Types::ProfileOutboundRequest>]
    class PutProfileOutboundRequestBatchRequest < Struct.new(
      :id,
      :profile_outbound_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for PutProfileOutboundRequestBatch API
    # @!attribute successful_requests
    #   List of successful profile outbound requests
    #   @return [Array<Types::SuccessfulProfileOutboundRequest>]
    # @!attribute failed_requests
    #   List of failed profile outbound requests
    #   @return [Array<Types::FailedProfileOutboundRequest>]
    class PutProfileOutboundRequestBatchResponse < Struct.new(
      :successful_requests,
      :failed_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Q Connect integration config
    # @!attribute knowledge_base_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class QConnectIntegrationConfig < Struct.new(
      :knowledge_base_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Q Connect integration identifier
    # @!attribute knowledge_base_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class QConnectIntegrationIdentifier < Struct.new(
      :knowledge_base_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Q Connect integration summary
    # @!attribute knowledge_base_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class QConnectIntegrationSummary < Struct.new(
      :knowledge_base_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The specified resource was not found.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Restricted period
    # @!attribute name
    #   The name of a restricted period.
    #   @return [String]
    # @!attribute start_date
    #   Date in ISO 8601 format, e.g. 2024-01-01
    #   @return [String]
    # @!attribute end_date
    #   Date in ISO 8601 format, e.g. 2024-01-01
    #   @return [String]
    class RestrictedPeriod < Struct.new(
      :name,
      :start_date,
      :end_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Restricted period config
    # @!attribute restricted_period_list
    #   List of restricted period
    #   @return [Array<Types::RestrictedPeriod>]
    class RestrictedPeriods < Struct.new(
      :restricted_period_list,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class RestrictedPeriodList < RestrictedPeriods; end
      class Unknown < RestrictedPeriods; end
    end

    # The request for ResumeCampaign API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class ResumeCampaignRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Campaign schedule
    # @!attribute start_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    # @!attribute end_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    # @!attribute refresh_frequency
    #   Time duration in ISO 8601 format
    #   @return [String]
    class Schedule < Struct.new(
      :start_time,
      :end_time,
      :refresh_frequency,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Request would cause a service quota to be exceeded.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # SMS Channel Subtype config
    # @!attribute capacity
    #   Allocates outbound capacity for the specific channel subtype of this campaign between multiple active campaigns
    #   @return [Float]
    # @!attribute outbound_mode
    #   SMS Outbound Mode
    #   @return [Types::SmsOutboundMode]
    # @!attribute default_outbound_config
    #   Default SMS Outbound config
    #   @return [Types::SmsOutboundConfig]
    class SmsChannelSubtypeConfig < Struct.new(
      :capacity,
      :outbound_mode,
      :default_outbound_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Parameters for the SMS Channel Subtype
    # @!attribute destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    # @!attribute connect_source_phone_number_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute template_parameters
    #   A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.
    #   @return [Hash<String, String>]
    class SmsChannelSubtypeParameters < Struct.new(
      :destination_phone_number,
      :connect_source_phone_number_arn,
      :template_arn,
      :template_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Default SMS Outbound config
    # @!attribute connect_source_phone_number_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute wisdom_template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class SmsOutboundConfig < Struct.new(
      :connect_source_phone_number_arn,
      :wisdom_template_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # SMS Outbound Mode
    # @!attribute agentless
    #   Agentless config
    #   @return [Types::AgentlessConfig]
    class SmsOutboundMode < Struct.new(
      :agentless,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Agentless < SmsOutboundMode; end
      class Unknown < SmsOutboundMode; end
    end

    # Source of the campaign
    # @!attribute customer_profiles_segment_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute event_trigger
    #   Event trigger of the campaign
    #   @return [Types::EventTrigger]
    class Source < Struct.new(
      :customer_profiles_segment_arn,
      :event_trigger,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class CustomerProfilesSegmentArn < Source; end
      class EventTrigger < Source; end
      class Unknown < Source; end
    end

    # The request for StartCampaign API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class StartCampaignRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for StartInstanceOnboardingJob API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data will always be encrypted.
    #   If disabled, service will perform encryption with its own key.
    #   If enabled, a KMS key id needs to be provided and KMS charges will apply.
    #   KMS is only type supported
    #   @return [Types::EncryptionConfig]
    class StartInstanceOnboardingJobRequest < Struct.new(
      :connect_instance_id,
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for StartInstanceOnboardingJob API.
    # @!attribute connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    class StartInstanceOnboardingJobResponse < Struct.new(
      :connect_instance_onboarding_job_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for StopCampaign API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class StopCampaignRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Successful response of campaign state
    # @!attribute campaign_id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute state
    #   State of a campaign
    #   @return [String]
    class SuccessfulCampaignStateResponse < Struct.new(
      :campaign_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Success details for a profile outbound request
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute id
    #   Identifier of the profile outbound request
    #   @return [String]
    class SuccessfulProfileOutboundRequest < Struct.new(
      :client_token,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A successful request identified by the unique client token.
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute id
    #   Identifier representing a Dial request
    #   @return [String]
    class SuccessfulRequest < Struct.new(
      :client_token,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for TagResource API.
    # @!attribute arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Telephony Channel Subtype config
    # @!attribute capacity
    #   Allocates outbound capacity for the specific channel subtype of this campaign between multiple active campaigns
    #   @return [Float]
    # @!attribute connect_queue_id
    #   The queue for the call. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue defined in the contact flow is used. If you do not specify a queue, you must specify a source phone number.
    #   @return [String]
    # @!attribute outbound_mode
    #   Telephony Outbound Mode
    #   @return [Types::TelephonyOutboundMode]
    # @!attribute default_outbound_config
    #   Default Telephony Outbound config
    #   @return [Types::TelephonyOutboundConfig]
    class TelephonyChannelSubtypeConfig < Struct.new(
      :capacity,
      :connect_queue_id,
      :outbound_mode,
      :default_outbound_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Parameters for the Telephony Channel Subtype
    # @!attribute destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    # @!attribute attributes
    #   A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.
    #   @return [Hash<String, String>]
    # @!attribute connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify a source phone number, you must specify a queue.
    #   @return [String]
    # @!attribute answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    class TelephonyChannelSubtypeParameters < Struct.new(
      :destination_phone_number,
      :attributes,
      :connect_source_phone_number,
      :answer_machine_detection_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Default Telephony Outbound config
    # @!attribute connect_contact_flow_id
    #   The identifier of the contact flow for the outbound call.
    #   @return [String]
    # @!attribute connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify a source phone number, you must specify a queue.
    #   @return [String]
    # @!attribute answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    class TelephonyOutboundConfig < Struct.new(
      :connect_contact_flow_id,
      :connect_source_phone_number,
      :answer_machine_detection_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Telephony Outbound Mode
    # @!attribute progressive
    #   Progressive config
    #   @return [Types::ProgressiveConfig]
    # @!attribute predictive
    #   Predictive config
    #   @return [Types::PredictiveConfig]
    # @!attribute agentless
    #   Agentless config
    #   @return [Types::AgentlessConfig]
    class TelephonyOutboundMode < Struct.new(
      :progressive,
      :predictive,
      :agentless,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Progressive < TelephonyOutboundMode; end
      class Predictive < TelephonyOutboundMode; end
      class Agentless < TelephonyOutboundMode; end
      class Unknown < TelephonyOutboundMode; end
    end

    # The request was denied due to request throttling.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Time range in 24 hour format
    # @!attribute start_time
    #   Time in ISO 8601 format, e.g. T23:11
    #   @return [String]
    # @!attribute end_time
    #   Time in ISO 8601 format, e.g. T23:11
    #   @return [String]
    class TimeRange < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Time window config
    # @!attribute open_hours
    #   Open Hours config
    #   @return [Types::OpenHours]
    # @!attribute restricted_periods
    #   Restricted period config
    #   @return [Types::RestrictedPeriods]
    class TimeWindow < Struct.new(
      :open_hours,
      :restricted_periods,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UntagResource API.
    # @!attribute arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    # @!attribute tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignChannelSubtypeConfig API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute channel_subtype_config
    #   Campaign Channel Subtype config
    #   @return [Types::ChannelSubtypeConfig]
    class UpdateCampaignChannelSubtypeConfigRequest < Struct.new(
      :id,
      :channel_subtype_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignCommunicationLimits API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute communication_limits_override
    #   Communication limits config
    #   @return [Types::CommunicationLimitsConfig]
    class UpdateCampaignCommunicationLimitsRequest < Struct.new(
      :id,
      :communication_limits_override,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignCommunicationTime API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute communication_time_config
    #   Campaign communication time config
    #   @return [Types::CommunicationTimeConfig]
    class UpdateCampaignCommunicationTimeRequest < Struct.new(
      :id,
      :communication_time_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignFlowAssociation API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    class UpdateCampaignFlowAssociationRequest < Struct.new(
      :id,
      :connect_campaign_flow_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignName API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    class UpdateCampaignNameRequest < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignSchedule API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    class UpdateCampaignScheduleRequest < Struct.new(
      :id,
      :schedule,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for UpdateCampaignSource API.
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute source
    #   Source of the campaign
    #   @return [Types::Source]
    class UpdateCampaignSourceRequest < Struct.new(
      :id,
      :source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS service.
    # @!attribute message
    #   @return [String]
    # @!attribute x_amz_error_type
    #   A header that defines the error encountered while processing the request.
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :x_amz_error_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
