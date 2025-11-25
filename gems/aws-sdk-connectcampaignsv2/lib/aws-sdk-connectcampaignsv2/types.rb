# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectCampaignsV2
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Agentless config
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/AgentlessConfig AWS API Documentation
    #
    class AgentlessConfig < Aws::EmptyStructure; end

    # Answering Machine Detection config
    #
    # @!attribute [rw] enable_answer_machine_detection
    #   Enable or disable answering machine detection
    #   @return [Boolean]
    #
    # @!attribute [rw] await_answer_machine_prompt
    #   Enable or disable await answer machine prompt
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/AnswerMachineDetectionConfig AWS API Documentation
    #
    class AnswerMachineDetectionConfig < Struct.new(
      :enable_answer_machine_detection,
      :await_answer_machine_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Connect campaign.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype_config
    #   Campaign Channel Subtype config
    #   @return [Types::ChannelSubtypeConfig]
    #
    # @!attribute [rw] source
    #   Source of the campaign
    #   @return [Types::Source]
    #
    # @!attribute [rw] connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] communication_time_config
    #   Campaign communication time config
    #   @return [Types::CommunicationTimeConfig]
    #
    # @!attribute [rw] communication_limits_override
    #   Communication limits config
    #   @return [Types::CommunicationLimitsConfig]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/Campaign AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter model by type
    #
    # @!attribute [rw] instance_id_filter
    #   Connect instance identifier filter
    #   @return [Types::InstanceIdFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CampaignFilters AWS API Documentation
    #
    class CampaignFilters < Struct.new(
      :instance_id_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Connect campaign summary.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] channel_subtypes
    #   Channel subtype list
    #   @return [Array<String>]
    #
    # @!attribute [rw] schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CampaignSummary AWS API Documentation
    #
    class CampaignSummary < Struct.new(
      :id,
      :arn,
      :name,
      :connect_instance_id,
      :channel_subtypes,
      :schedule,
      :connect_campaign_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Campaign Channel Subtype config
    #
    # @!attribute [rw] telephony
    #   Telephony Channel Subtype config
    #   @return [Types::TelephonyChannelSubtypeConfig]
    #
    # @!attribute [rw] sms
    #   SMS Channel Subtype config
    #   @return [Types::SmsChannelSubtypeConfig]
    #
    # @!attribute [rw] email
    #   Email Channel Subtype config
    #   @return [Types::EmailChannelSubtypeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ChannelSubtypeConfig AWS API Documentation
    #
    class ChannelSubtypeConfig < Struct.new(
      :telephony,
      :sms,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # ChannelSubtypeParameters for an outbound request
    #
    # @note ChannelSubtypeParameters is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] telephony
    #   Parameters for the Telephony Channel Subtype
    #   @return [Types::TelephonyChannelSubtypeParameters]
    #
    # @!attribute [rw] sms
    #   Parameters for the SMS Channel Subtype
    #   @return [Types::SmsChannelSubtypeParameters]
    #
    # @!attribute [rw] email
    #   Parameters for the Email Channel Subtype
    #   @return [Types::EmailChannelSubtypeParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ChannelSubtypeParameters AWS API Documentation
    #
    class ChannelSubtypeParameters < Struct.new(
      :telephony,
      :sms,
      :email,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Telephony < ChannelSubtypeParameters; end
      class Sms < ChannelSubtypeParameters; end
      class Email < ChannelSubtypeParameters; end
      class Unknown < ChannelSubtypeParameters; end
    end

    # Communication Limit
    #
    # @!attribute [rw] max_count_per_recipient
    #   Maximum number of contacts allowed for a given target within the
    #   given frequency.
    #   @return [Integer]
    #
    # @!attribute [rw] frequency
    #   The number of days to consider with regards to this limit.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The communication limit time unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CommunicationLimit AWS API Documentation
    #
    class CommunicationLimit < Struct.new(
      :max_count_per_recipient,
      :frequency,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Communication limits
    #
    # @note CommunicationLimits is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CommunicationLimits is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CommunicationLimits corresponding to the set member.
    #
    # @!attribute [rw] communication_limits_list
    #   List of communication limit
    #   @return [Array<Types::CommunicationLimit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CommunicationLimits AWS API Documentation
    #
    class CommunicationLimits < Struct.new(
      :communication_limits_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CommunicationLimitsList < CommunicationLimits; end
      class Unknown < CommunicationLimits; end
    end

    # Communication limits config
    #
    # @!attribute [rw] all_channel_subtypes
    #   Communication limits
    #   @return [Types::CommunicationLimits]
    #
    # @!attribute [rw] instance_limits_handling
    #   Instance limits handling
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CommunicationLimitsConfig AWS API Documentation
    #
    class CommunicationLimitsConfig < Struct.new(
      :all_channel_subtypes,
      :instance_limits_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Campaign communication time config
    #
    # @!attribute [rw] local_time_zone_config
    #   Local time zone config
    #   @return [Types::LocalTimeZoneConfig]
    #
    # @!attribute [rw] telephony
    #   Time window config
    #   @return [Types::TimeWindow]
    #
    # @!attribute [rw] sms
    #   Time window config
    #   @return [Types::TimeWindow]
    #
    # @!attribute [rw] email
    #   Time window config
    #   @return [Types::TimeWindow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CommunicationTimeConfig AWS API Documentation
    #
    class CommunicationTimeConfig < Struct.new(
      :local_time_zone_config,
      :telephony,
      :sms,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for CreateCampaign API.
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype_config
    #   Campaign Channel Subtype config
    #   @return [Types::ChannelSubtypeConfig]
    #
    # @!attribute [rw] source
    #   Source of the campaign
    #   @return [Types::Source]
    #
    # @!attribute [rw] connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] communication_time_config
    #   Campaign communication time config
    #   @return [Types::CommunicationTimeConfig]
    #
    # @!attribute [rw] communication_limits_override
    #   Communication limits config
    #   @return [Types::CommunicationLimitsConfig]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :name,
      :connect_instance_id,
      :channel_subtype_config,
      :source,
      :connect_campaign_flow_arn,
      :schedule,
      :communication_time_config,
      :communication_limits_override,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for Create Campaign API
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :id,
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer Profiles integration config
    #
    # @!attribute [rw] domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] object_type_names
    #   Object type names map.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CustomerProfilesIntegrationConfig AWS API Documentation
    #
    class CustomerProfilesIntegrationConfig < Struct.new(
      :domain_arn,
      :object_type_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer Profiles integration identifier
    #
    # @!attribute [rw] domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CustomerProfilesIntegrationIdentifier AWS API Documentation
    #
    class CustomerProfilesIntegrationIdentifier < Struct.new(
      :domain_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer Profiles integration summary
    #
    # @!attribute [rw] domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] object_type_names
    #   Object type names map.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/CustomerProfilesIntegrationSummary AWS API Documentation
    #
    class CustomerProfilesIntegrationSummary < Struct.new(
      :domain_arn,
      :object_type_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteCampaignChannelSubtypeConfig API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype
    #   The type of campaign channel subtype.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignChannelSubtypeConfigRequest AWS API Documentation
    #
    class DeleteCampaignChannelSubtypeConfigRequest < Struct.new(
      :id,
      :channel_subtype)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteCampaignCommunicationLimits API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The type of campaign communication limits config.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignCommunicationLimitsRequest AWS API Documentation
    #
    class DeleteCampaignCommunicationLimitsRequest < Struct.new(
      :id,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteCampaignCommunicationTime API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The type of campaign communication time config
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignCommunicationTimeRequest AWS API Documentation
    #
    class DeleteCampaignCommunicationTimeRequest < Struct.new(
      :id,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteCampaign API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteConnectInstanceConfig API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] campaign_deletion_policy
    #   Enumeration of the policies to enact on existing campaigns during
    #   instance config deletion
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteConnectInstanceConfigRequest AWS API Documentation
    #
    class DeleteConnectInstanceConfigRequest < Struct.new(
      :connect_instance_id,
      :campaign_deletion_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteConnectInstanceIntegration API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] integration_identifier
    #   Integration identifier for Connect instance
    #   @return [Types::IntegrationIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteConnectInstanceIntegrationRequest AWS API Documentation
    #
    class DeleteConnectInstanceIntegrationRequest < Struct.new(
      :connect_instance_id,
      :integration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteInstanceOnboardingJob API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DeleteInstanceOnboardingJobRequest AWS API Documentation
    #
    class DeleteInstanceOnboardingJobRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DescribeCampaign API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DescribeCampaignRequest AWS API Documentation
    #
    class DescribeCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for DescribeCampaign API.
    #
    # @!attribute [rw] campaign
    #   An Amazon Connect campaign.
    #   @return [Types::Campaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/DescribeCampaignResponse AWS API Documentation
    #
    class DescribeCampaignResponse < Struct.new(
      :campaign)
      SENSITIVE = []
      include Aws::Structure
    end

    # Email Channel Subtype config
    #
    # @!attribute [rw] capacity
    #   Allocates outbound capacity for the specific channel subtype of this
    #   campaign between multiple active campaigns
    #   @return [Float]
    #
    # @!attribute [rw] outbound_mode
    #   Email Outbound Mode
    #   @return [Types::EmailOutboundMode]
    #
    # @!attribute [rw] default_outbound_config
    #   Default Email Outbound config
    #   @return [Types::EmailOutboundConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/EmailChannelSubtypeConfig AWS API Documentation
    #
    class EmailChannelSubtypeConfig < Struct.new(
      :capacity,
      :outbound_mode,
      :default_outbound_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for the Email Channel Subtype
    #
    # @!attribute [rw] destination_email_address
    #   Source/Destination Email address used for Email messages
    #   @return [String]
    #
    # @!attribute [rw] connect_source_email_address
    #   Source/Destination Email address used for Email messages
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] template_parameters
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/EmailChannelSubtypeParameters AWS API Documentation
    #
    class EmailChannelSubtypeParameters < Struct.new(
      :destination_email_address,
      :connect_source_email_address,
      :template_arn,
      :template_parameters)
      SENSITIVE = [:destination_email_address, :connect_source_email_address, :template_parameters]
      include Aws::Structure
    end

    # Default Email Outbound config
    #
    # @!attribute [rw] connect_source_email_address
    #   Source/Destination Email address used for Email messages
    #   @return [String]
    #
    # @!attribute [rw] source_email_address_display_name
    #   Display name for Email Address
    #   @return [String]
    #
    # @!attribute [rw] wisdom_template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/EmailOutboundConfig AWS API Documentation
    #
    class EmailOutboundConfig < Struct.new(
      :connect_source_email_address,
      :source_email_address_display_name,
      :wisdom_template_arn)
      SENSITIVE = [:connect_source_email_address, :source_email_address_display_name]
      include Aws::Structure
    end

    # Email Outbound Mode
    #
    # @note EmailOutboundMode is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EmailOutboundMode is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EmailOutboundMode corresponding to the set member.
    #
    # @!attribute [rw] agentless
    #   Agentless config
    #   @return [Types::AgentlessConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/EmailOutboundMode AWS API Documentation
    #
    class EmailOutboundMode < Struct.new(
      :agentless,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Agentless < EmailOutboundMode; end
      class Unknown < EmailOutboundMode; end
    end

    # Encryption config for Connect Instance. Note that sensitive data will
    # always be encrypted. If disabled, service will perform encryption with
    # its own key. If enabled, a KMS key id needs to be provided and KMS
    # charges will apply. KMS is only type supported
    #
    # @!attribute [rw] enabled
    #   Boolean to indicate if custom encryption has been enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_type
    #   Server-side encryption type.
    #   @return [String]
    #
    # @!attribute [rw] key_arn
    #   KMS key id/arn for encryption config.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :enabled,
      :encryption_type,
      :key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event trigger of the campaign
    #
    # @!attribute [rw] customer_profiles_domain_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/EventTrigger AWS API Documentation
    #
    class EventTrigger < Struct.new(
      :customer_profiles_domain_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failed response of campaign state
    #
    # @!attribute [rw] campaign_id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   A predefined code indicating the error that caused the failure in
    #   getting state of campaigns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/FailedCampaignStateResponse AWS API Documentation
    #
    class FailedCampaignStateResponse < Struct.new(
      :campaign_id,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Failure details for a profile outbound request
    #
    # @!attribute [rw] client_token
    #   Client provided parameter used for idempotency. Its value must be
    #   unique for each request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the profile outbound request
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   Predefined code indicating the error that caused the failure
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/FailedProfileOutboundRequest AWS API Documentation
    #
    class FailedProfileOutboundRequest < Struct.new(
      :client_token,
      :id,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A failed request identified by the unique client token.
    #
    # @!attribute [rw] client_token
    #   Client provided parameter used for idempotency. Its value must be
    #   unique for each request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier representing a Dial request
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   A predefined code indicating the error that caused the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/FailedRequest AWS API Documentation
    #
    class FailedRequest < Struct.new(
      :client_token,
      :id,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for GetCampaignStateBatch API.
    #
    # @!attribute [rw] campaign_ids
    #   List of CampaignId
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetCampaignStateBatchRequest AWS API Documentation
    #
    class GetCampaignStateBatchRequest < Struct.new(
      :campaign_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for GetCampaignStateBatch API.
    #
    # @!attribute [rw] successful_requests
    #   List of successful response of campaign state
    #   @return [Array<Types::SuccessfulCampaignStateResponse>]
    #
    # @!attribute [rw] failed_requests
    #   List of failed requests of campaign state
    #   @return [Array<Types::FailedCampaignStateResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetCampaignStateBatchResponse AWS API Documentation
    #
    class GetCampaignStateBatchResponse < Struct.new(
      :successful_requests,
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for GetCampaignState API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetCampaignStateRequest AWS API Documentation
    #
    class GetCampaignStateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for GetCampaignState API.
    #
    # @!attribute [rw] state
    #   State of a campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetCampaignStateResponse AWS API Documentation
    #
    class GetCampaignStateResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for GetConnectInstanceConfig API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetConnectInstanceConfigRequest AWS API Documentation
    #
    class GetConnectInstanceConfigRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for GetConnectInstanceConfig API.
    #
    # @!attribute [rw] connect_instance_config
    #   Instance config object
    #   @return [Types::InstanceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetConnectInstanceConfigResponse AWS API Documentation
    #
    class GetConnectInstanceConfigResponse < Struct.new(
      :connect_instance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for GetInstanceCommunicationLimits API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetInstanceCommunicationLimitsRequest AWS API Documentation
    #
    class GetInstanceCommunicationLimitsRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for GetInstanceCommunicationLimits API.
    #
    # @!attribute [rw] communication_limits_config
    #   Instance Communication limits config
    #   @return [Types::InstanceCommunicationLimitsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetInstanceCommunicationLimitsResponse AWS API Documentation
    #
    class GetInstanceCommunicationLimitsResponse < Struct.new(
      :communication_limits_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for GetInstanceOnboardingJobStatus API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetInstanceOnboardingJobStatusRequest AWS API Documentation
    #
    class GetInstanceOnboardingJobStatusRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for GetInstanceOnboardingJobStatus API.
    #
    # @!attribute [rw] connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/GetInstanceOnboardingJobStatusResponse AWS API Documentation
    #
    class GetInstanceOnboardingJobStatusResponse < Struct.new(
      :connect_instance_onboarding_job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instance Communication limits config
    #
    # @!attribute [rw] all_channel_subtypes
    #   Communication limits
    #   @return [Types::CommunicationLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InstanceCommunicationLimitsConfig AWS API Documentation
    #
    class InstanceCommunicationLimitsConfig < Struct.new(
      :all_channel_subtypes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instance config object
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] service_linked_role_arn
    #   Service linked role arn
    #   @return [String]
    #
    # @!attribute [rw] encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data
    #   will always be encrypted. If disabled, service will perform
    #   encryption with its own key. If enabled, a KMS key id needs to be
    #   provided and KMS charges will apply. KMS is only type supported
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InstanceConfig AWS API Documentation
    #
    class InstanceConfig < Struct.new(
      :connect_instance_id,
      :service_linked_role_arn,
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connect instance identifier filter
    #
    # @!attribute [rw] value
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   Operators for Connect instance identifier filter
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InstanceIdFilter AWS API Documentation
    #
    class InstanceIdFilter < Struct.new(
      :value,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instance onboarding job status object
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Enumeration of the possible states for instance onboarding job
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   Enumeration of the possible failure codes for instance onboarding
    #   job
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InstanceOnboardingJobStatus AWS API Documentation
    #
    class InstanceOnboardingJobStatus < Struct.new(
      :connect_instance_id,
      :status,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Integration config for Connect Instance
    #
    # @note IntegrationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] customer_profiles
    #   Customer Profiles integration config
    #   @return [Types::CustomerProfilesIntegrationConfig]
    #
    # @!attribute [rw] q_connect
    #   Q Connect integration config
    #   @return [Types::QConnectIntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/IntegrationConfig AWS API Documentation
    #
    class IntegrationConfig < Struct.new(
      :customer_profiles,
      :q_connect,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomerProfiles < IntegrationConfig; end
      class QConnect < IntegrationConfig; end
      class Unknown < IntegrationConfig; end
    end

    # Integration identifier for Connect instance
    #
    # @note IntegrationIdentifier is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] customer_profiles
    #   Customer Profiles integration identifier
    #   @return [Types::CustomerProfilesIntegrationIdentifier]
    #
    # @!attribute [rw] q_connect
    #   Q Connect integration identifier
    #   @return [Types::QConnectIntegrationIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/IntegrationIdentifier AWS API Documentation
    #
    class IntegrationIdentifier < Struct.new(
      :customer_profiles,
      :q_connect,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomerProfiles < IntegrationIdentifier; end
      class QConnect < IntegrationIdentifier; end
      class Unknown < IntegrationIdentifier; end
    end

    # Integration summary for Connect instance.
    #
    # @note IntegrationSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IntegrationSummary corresponding to the set member.
    #
    # @!attribute [rw] customer_profiles
    #   Customer Profiles integration summary
    #   @return [Types::CustomerProfilesIntegrationSummary]
    #
    # @!attribute [rw] q_connect
    #   Q Connect integration summary
    #   @return [Types::QConnectIntegrationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/IntegrationSummary AWS API Documentation
    #
    class IntegrationSummary < Struct.new(
      :customer_profiles,
      :q_connect,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomerProfiles < IntegrationSummary; end
      class QConnect < IntegrationSummary; end
      class Unknown < IntegrationSummary; end
    end

    # Request processing failed because of an error or failure with the
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the campaign.
    #
    # @!attribute [rw] state
    #   State of a campaign
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InvalidCampaignStateException AWS API Documentation
    #
    class InvalidCampaignStateException < Struct.new(
      :state,
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for ListCampaigns API.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filter model by type
    #   @return [Types::CampaignFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListCampaignsRequest AWS API Documentation
    #
    class ListCampaignsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for ListCampaigns API.
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] campaign_summary_list
    #   A list of Amazon Connect campaigns.
    #   @return [Array<Types::CampaignSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListCampaignsResponse AWS API Documentation
    #
    class ListCampaignsResponse < Struct.new(
      :next_token,
      :campaign_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for ListConnectInstanceIntegrations API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListConnectInstanceIntegrationsRequest AWS API Documentation
    #
    class ListConnectInstanceIntegrationsRequest < Struct.new(
      :connect_instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for ListConnectInstanceIntegrations API.
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] integration_summary_list
    #   A list of Amazon Connect Instance Integrations.
    #   @return [Array<Types::IntegrationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListConnectInstanceIntegrationsResponse AWS API Documentation
    #
    class ListConnectInstanceIntegrationsResponse < Struct.new(
      :next_token,
      :integration_summary_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for ListTagsForResource API.
    #
    # @!attribute [rw] arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for ListTagsForResource API.
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Local time zone config
    #
    # @!attribute [rw] default_time_zone
    #   Time Zone Id in the IANA format
    #   @return [String]
    #
    # @!attribute [rw] local_time_zone_detection
    #   Local TimeZone Detection method list
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/LocalTimeZoneConfig AWS API Documentation
    #
    class LocalTimeZoneConfig < Struct.new(
      :default_time_zone,
      :local_time_zone_detection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Open Hours config
    #
    # @note OpenHours is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OpenHours is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OpenHours corresponding to the set member.
    #
    # @!attribute [rw] daily_hours
    #   Daily Hours map
    #   @return [Hash<String,Array<Types::TimeRange>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/OpenHours AWS API Documentation
    #
    class OpenHours < Struct.new(
      :daily_hours,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DailyHours < OpenHours; end
      class Unknown < OpenHours; end
    end

    # An outbound request for a campaign.
    #
    # @!attribute [rw] client_token
    #   Client provided parameter used for idempotency. Its value must be
    #   unique for each request.
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    #
    # @!attribute [rw] channel_subtype_parameters
    #   ChannelSubtypeParameters for an outbound request
    #   @return [Types::ChannelSubtypeParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/OutboundRequest AWS API Documentation
    #
    class OutboundRequest < Struct.new(
      :client_token,
      :expiration_time,
      :channel_subtype_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for PauseCampaign API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PauseCampaignRequest AWS API Documentation
    #
    class PauseCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Predictive config
    #
    # @!attribute [rw] bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PredictiveConfig AWS API Documentation
    #
    class PredictiveConfig < Struct.new(
      :bandwidth_allocation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Preview config
    #
    # @!attribute [rw] bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    #
    # @!attribute [rw] timeout_config
    #   Timeout Config for preview contacts.
    #   @return [Types::TimeoutConfig]
    #
    # @!attribute [rw] agent_actions
    #   Actions that can be performed by agent during preview phase.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PreviewConfig AWS API Documentation
    #
    class PreviewConfig < Struct.new(
      :bandwidth_allocation,
      :timeout_config,
      :agent_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a profile outbound request
    #
    # @!attribute [rw] client_token
    #   Client provided parameter used for idempotency. Its value must be
    #   unique for each request.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   Identifier of the customer profile
    #   @return [String]
    #
    # @!attribute [rw] expiration_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ProfileOutboundRequest AWS API Documentation
    #
    class ProfileOutboundRequest < Struct.new(
      :client_token,
      :profile_id,
      :expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Progressive config
    #
    # @!attribute [rw] bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ProgressiveConfig AWS API Documentation
    #
    class ProgressiveConfig < Struct.new(
      :bandwidth_allocation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for PutConnectInstanceIntegration API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] integration_config
    #   Integration config for Connect Instance
    #   @return [Types::IntegrationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutConnectInstanceIntegrationRequest AWS API Documentation
    #
    class PutConnectInstanceIntegrationRequest < Struct.new(
      :connect_instance_id,
      :integration_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for PutInstanceCommunicationLimits API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] communication_limits_config
    #   Instance Communication limits config
    #   @return [Types::InstanceCommunicationLimitsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutInstanceCommunicationLimitsRequest AWS API Documentation
    #
    class PutInstanceCommunicationLimitsRequest < Struct.new(
      :connect_instance_id,
      :communication_limits_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for PutOutboundRequestBatch API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] outbound_requests
    #   A list of outbound requests.
    #   @return [Array<Types::OutboundRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutOutboundRequestBatchRequest AWS API Documentation
    #
    class PutOutboundRequestBatchRequest < Struct.new(
      :id,
      :outbound_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for PutOutboundRequestBatch API.
    #
    # @!attribute [rw] successful_requests
    #   A list of successful requests identified by the unique client token.
    #   @return [Array<Types::SuccessfulRequest>]
    #
    # @!attribute [rw] failed_requests
    #   A list of failed requests.
    #   @return [Array<Types::FailedRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutOutboundRequestBatchResponse AWS API Documentation
    #
    class PutOutboundRequestBatchResponse < Struct.new(
      :successful_requests,
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for PutProfileOutboundRequestBatch API
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] profile_outbound_requests
    #   List of profile outbound requests
    #   @return [Array<Types::ProfileOutboundRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutProfileOutboundRequestBatchRequest AWS API Documentation
    #
    class PutProfileOutboundRequestBatchRequest < Struct.new(
      :id,
      :profile_outbound_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for PutProfileOutboundRequestBatch API
    #
    # @!attribute [rw] successful_requests
    #   List of successful profile outbound requests
    #   @return [Array<Types::SuccessfulProfileOutboundRequest>]
    #
    # @!attribute [rw] failed_requests
    #   List of failed profile outbound requests
    #   @return [Array<Types::FailedProfileOutboundRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/PutProfileOutboundRequestBatchResponse AWS API Documentation
    #
    class PutProfileOutboundRequestBatchResponse < Struct.new(
      :successful_requests,
      :failed_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Q Connect integration config
    #
    # @!attribute [rw] knowledge_base_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/QConnectIntegrationConfig AWS API Documentation
    #
    class QConnectIntegrationConfig < Struct.new(
      :knowledge_base_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Q Connect integration identifier
    #
    # @!attribute [rw] knowledge_base_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/QConnectIntegrationIdentifier AWS API Documentation
    #
    class QConnectIntegrationIdentifier < Struct.new(
      :knowledge_base_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Q Connect integration summary
    #
    # @!attribute [rw] knowledge_base_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/QConnectIntegrationSummary AWS API Documentation
    #
    class QConnectIntegrationSummary < Struct.new(
      :knowledge_base_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Restricted period
    #
    # @!attribute [rw] name
    #   The name of a restricted period.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   Date in ISO 8601 format, e.g. 2024-01-01
    #   @return [String]
    #
    # @!attribute [rw] end_date
    #   Date in ISO 8601 format, e.g. 2024-01-01
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/RestrictedPeriod AWS API Documentation
    #
    class RestrictedPeriod < Struct.new(
      :name,
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Restricted period config
    #
    # @note RestrictedPeriods is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RestrictedPeriods is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RestrictedPeriods corresponding to the set member.
    #
    # @!attribute [rw] restricted_period_list
    #   List of restricted period
    #   @return [Array<Types::RestrictedPeriod>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/RestrictedPeriods AWS API Documentation
    #
    class RestrictedPeriods < Struct.new(
      :restricted_period_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RestrictedPeriodList < RestrictedPeriods; end
      class Unknown < RestrictedPeriods; end
    end

    # The request for ResumeCampaign API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ResumeCampaignRequest AWS API Documentation
    #
    class ResumeCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Campaign schedule
    #
    # @!attribute [rw] start_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    #
    # @!attribute [rw] refresh_frequency
    #   Time duration in ISO 8601 format
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :start_time,
      :end_time,
      :refresh_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # SMS Channel Subtype config
    #
    # @!attribute [rw] capacity
    #   Allocates outbound capacity for the specific channel subtype of this
    #   campaign between multiple active campaigns
    #   @return [Float]
    #
    # @!attribute [rw] outbound_mode
    #   SMS Outbound Mode
    #   @return [Types::SmsOutboundMode]
    #
    # @!attribute [rw] default_outbound_config
    #   Default SMS Outbound config
    #   @return [Types::SmsOutboundConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SmsChannelSubtypeConfig AWS API Documentation
    #
    class SmsChannelSubtypeConfig < Struct.new(
      :capacity,
      :outbound_mode,
      :default_outbound_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for the SMS Channel Subtype
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] connect_source_phone_number_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] template_parameters
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SmsChannelSubtypeParameters AWS API Documentation
    #
    class SmsChannelSubtypeParameters < Struct.new(
      :destination_phone_number,
      :connect_source_phone_number_arn,
      :template_arn,
      :template_parameters)
      SENSITIVE = [:destination_phone_number, :template_parameters]
      include Aws::Structure
    end

    # Default SMS Outbound config
    #
    # @!attribute [rw] connect_source_phone_number_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] wisdom_template_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SmsOutboundConfig AWS API Documentation
    #
    class SmsOutboundConfig < Struct.new(
      :connect_source_phone_number_arn,
      :wisdom_template_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # SMS Outbound Mode
    #
    # @note SmsOutboundMode is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SmsOutboundMode is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SmsOutboundMode corresponding to the set member.
    #
    # @!attribute [rw] agentless
    #   Agentless config
    #   @return [Types::AgentlessConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SmsOutboundMode AWS API Documentation
    #
    class SmsOutboundMode < Struct.new(
      :agentless,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Agentless < SmsOutboundMode; end
      class Unknown < SmsOutboundMode; end
    end

    # Source of the campaign
    #
    # @note Source is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Source is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Source corresponding to the set member.
    #
    # @!attribute [rw] customer_profiles_segment_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] event_trigger
    #   Event trigger of the campaign
    #   @return [Types::EventTrigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/Source AWS API Documentation
    #
    class Source < Struct.new(
      :customer_profiles_segment_arn,
      :event_trigger,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomerProfilesSegmentArn < Source; end
      class EventTrigger < Source; end
      class Unknown < Source; end
    end

    # The request for StartCampaign API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StartCampaignRequest AWS API Documentation
    #
    class StartCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for StartInstanceOnboardingJob API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] encryption_config
    #   Encryption config for Connect Instance. Note that sensitive data
    #   will always be encrypted. If disabled, service will perform
    #   encryption with its own key. If enabled, a KMS key id needs to be
    #   provided and KMS charges will apply. KMS is only type supported
    #   @return [Types::EncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StartInstanceOnboardingJobRequest AWS API Documentation
    #
    class StartInstanceOnboardingJobRequest < Struct.new(
      :connect_instance_id,
      :encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for StartInstanceOnboardingJob API.
    #
    # @!attribute [rw] connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StartInstanceOnboardingJobResponse AWS API Documentation
    #
    class StartInstanceOnboardingJobResponse < Struct.new(
      :connect_instance_onboarding_job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for StopCampaign API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/StopCampaignRequest AWS API Documentation
    #
    class StopCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Successful response of campaign state
    #
    # @!attribute [rw] campaign_id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of a campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SuccessfulCampaignStateResponse AWS API Documentation
    #
    class SuccessfulCampaignStateResponse < Struct.new(
      :campaign_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Success details for a profile outbound request
    #
    # @!attribute [rw] client_token
    #   Client provided parameter used for idempotency. Its value must be
    #   unique for each request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier of the profile outbound request
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SuccessfulProfileOutboundRequest AWS API Documentation
    #
    class SuccessfulProfileOutboundRequest < Struct.new(
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A successful request identified by the unique client token.
    #
    # @!attribute [rw] client_token
    #   Client provided parameter used for idempotency. Its value must be
    #   unique for each request.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier representing a Dial request
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/SuccessfulRequest AWS API Documentation
    #
    class SuccessfulRequest < Struct.new(
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for TagResource API.
    #
    # @!attribute [rw] arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Telephony Channel Subtype config
    #
    # @!attribute [rw] capacity
    #   Allocates outbound capacity for the specific channel subtype of this
    #   campaign between multiple active campaigns
    #   @return [Float]
    #
    # @!attribute [rw] connect_queue_id
    #   The queue for the call. If you specify a queue, the phone displayed
    #   for caller ID is the phone number specified in the queue. If you do
    #   not specify a queue, the queue defined in the contact flow is used.
    #   If you do not specify a queue, you must specify a source phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] outbound_mode
    #   Telephony Outbound Mode
    #   @return [Types::TelephonyOutboundMode]
    #
    # @!attribute [rw] default_outbound_config
    #   Default Telephony Outbound config
    #   @return [Types::TelephonyOutboundConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TelephonyChannelSubtypeConfig AWS API Documentation
    #
    class TelephonyChannelSubtypeConfig < Struct.new(
      :capacity,
      :connect_queue_id,
      :outbound_mode,
      :default_outbound_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for the Telephony Channel Subtype
    #
    # @!attribute [rw] destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in
    #   E.164 format. If you do not specify a source phone number, you must
    #   specify a queue.
    #   @return [String]
    #
    # @!attribute [rw] answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    #
    # @!attribute [rw] ring_timeout
    #   Ring timeout for outbound calls
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TelephonyChannelSubtypeParameters AWS API Documentation
    #
    class TelephonyChannelSubtypeParameters < Struct.new(
      :destination_phone_number,
      :attributes,
      :connect_source_phone_number,
      :answer_machine_detection_config,
      :ring_timeout)
      SENSITIVE = [:destination_phone_number, :attributes]
      include Aws::Structure
    end

    # Default Telephony Outbound config
    #
    # @!attribute [rw] connect_contact_flow_id
    #   The identifier of the contact flow for the outbound call.
    #   @return [String]
    #
    # @!attribute [rw] connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in
    #   E.164 format. If you do not specify a source phone number, you must
    #   specify a queue.
    #   @return [String]
    #
    # @!attribute [rw] answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    #
    # @!attribute [rw] ring_timeout
    #   Ring timeout for outbound calls
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TelephonyOutboundConfig AWS API Documentation
    #
    class TelephonyOutboundConfig < Struct.new(
      :connect_contact_flow_id,
      :connect_source_phone_number,
      :answer_machine_detection_config,
      :ring_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Telephony Outbound Mode
    #
    # @note TelephonyOutboundMode is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TelephonyOutboundMode is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TelephonyOutboundMode corresponding to the set member.
    #
    # @!attribute [rw] progressive
    #   Progressive config
    #   @return [Types::ProgressiveConfig]
    #
    # @!attribute [rw] predictive
    #   Predictive config
    #   @return [Types::PredictiveConfig]
    #
    # @!attribute [rw] agentless
    #   Agentless config
    #   @return [Types::AgentlessConfig]
    #
    # @!attribute [rw] preview
    #   Preview config
    #   @return [Types::PreviewConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TelephonyOutboundMode AWS API Documentation
    #
    class TelephonyOutboundMode < Struct.new(
      :progressive,
      :predictive,
      :agentless,
      :preview,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Progressive < TelephonyOutboundMode; end
      class Predictive < TelephonyOutboundMode; end
      class Agentless < TelephonyOutboundMode; end
      class Preview < TelephonyOutboundMode; end
      class Unknown < TelephonyOutboundMode; end
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Time range in 24 hour format
    #
    # @!attribute [rw] start_time
    #   Time in ISO 8601 format, e.g. T23:11
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   Time in ISO 8601 format, e.g. T23:11
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Time window config
    #
    # @!attribute [rw] open_hours
    #   Open Hours config
    #   @return [Types::OpenHours]
    #
    # @!attribute [rw] restricted_periods
    #   Restricted period config
    #   @return [Types::RestrictedPeriods]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TimeWindow AWS API Documentation
    #
    class TimeWindow < Struct.new(
      :open_hours,
      :restricted_periods)
      SENSITIVE = []
      include Aws::Structure
    end

    # Timeout Config for preview contacts.
    #
    # @!attribute [rw] duration_in_seconds
    #   Timeout duration for a preview contact in seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/TimeoutConfig AWS API Documentation
    #
    class TimeoutConfig < Struct.new(
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UntagResource API.
    #
    # @!attribute [rw] arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignChannelSubtypeConfig API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] channel_subtype_config
    #   Campaign Channel Subtype config
    #   @return [Types::ChannelSubtypeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignChannelSubtypeConfigRequest AWS API Documentation
    #
    class UpdateCampaignChannelSubtypeConfigRequest < Struct.new(
      :id,
      :channel_subtype_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignCommunicationLimits API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] communication_limits_override
    #   Communication limits config
    #   @return [Types::CommunicationLimitsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignCommunicationLimitsRequest AWS API Documentation
    #
    class UpdateCampaignCommunicationLimitsRequest < Struct.new(
      :id,
      :communication_limits_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignCommunicationTime API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] communication_time_config
    #   Campaign communication time config
    #   @return [Types::CommunicationTimeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignCommunicationTimeRequest AWS API Documentation
    #
    class UpdateCampaignCommunicationTimeRequest < Struct.new(
      :id,
      :communication_time_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignFlowAssociation API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] connect_campaign_flow_arn
    #   Amazon Resource Names(ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignFlowAssociationRequest AWS API Documentation
    #
    class UpdateCampaignFlowAssociationRequest < Struct.new(
      :id,
      :connect_campaign_flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignName API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignNameRequest AWS API Documentation
    #
    class UpdateCampaignNameRequest < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignSchedule API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   Campaign schedule
    #   @return [Types::Schedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignScheduleRequest AWS API Documentation
    #
    class UpdateCampaignScheduleRequest < Struct.new(
      :id,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for UpdateCampaignSource API.
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Source of the campaign
    #   @return [Types::Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/UpdateCampaignSourceRequest AWS API Documentation
    #
    class UpdateCampaignSourceRequest < Struct.new(
      :id,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaignsv2-2024-04-23/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

