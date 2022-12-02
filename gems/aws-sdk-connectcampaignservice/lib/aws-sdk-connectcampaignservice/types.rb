# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectCampaignService
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Answering Machine Detection config
    #
    # @!attribute [rw] enable_answer_machine_detection
    #   Enable or disable answering machine detection
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/AnswerMachineDetectionConfig AWS API Documentation
    #
    class AnswerMachineDetectionConfig < Struct.new(
      :enable_answer_machine_detection)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Connect campaign.
    #
    # @!attribute [rw] arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] dialer_config
    #   The possible types of dialer config parameters
    #   @return [Types::DialerConfig]
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @!attribute [rw] outbound_call_config
    #   The configuration used for outbound calls.
    #   @return [Types::OutboundCallConfig]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/Campaign AWS API Documentation
    #
    class Campaign < Struct.new(
      :arn,
      :connect_instance_id,
      :dialer_config,
      :id,
      :name,
      :outbound_call_config,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/CampaignFilters AWS API Documentation
    #
    class CampaignFilters < Struct.new(
      :instance_id_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Connect campaign summary.
    #
    # @!attribute [rw] arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/CampaignSummary AWS API Documentation
    #
    class CampaignSummary < Struct.new(
      :arn,
      :connect_instance_id,
      :id,
      :name)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for Create Campaign API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] dialer_config
    #   The possible types of dialer config parameters
    #   @return [Types::DialerConfig]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @!attribute [rw] outbound_call_config
    #   The configuration used for outbound calls.
    #   @return [Types::OutboundCallConfig]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/CreateCampaignRequest AWS API Documentation
    #
    class CreateCampaignRequest < Struct.new(
      :connect_instance_id,
      :dialer_config,
      :name,
      :outbound_call_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for Create Campaign API
    #
    # @!attribute [rw] arn
    #   The resource name of an Amazon Connect campaign.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/CreateCampaignResponse AWS API Documentation
    #
    class CreateCampaignResponse < Struct.new(
      :arn,
      :id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteCampaignRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DeleteCampaignRequest AWS API Documentation
    #
    class DeleteCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # DeleteCampaignRequest
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DeleteConnectInstanceConfigRequest AWS API Documentation
    #
    class DeleteConnectInstanceConfigRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request for DeleteInstanceOnboardingJob API.
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DeleteInstanceOnboardingJobRequest AWS API Documentation
    #
    class DeleteInstanceOnboardingJobRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeCampaignRequests
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DescribeCampaignRequest AWS API Documentation
    #
    class DescribeCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # DescribeCampaignResponse
    #
    # @!attribute [rw] campaign
    #   An Amazon Connect campaign.
    #   @return [Types::Campaign]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DescribeCampaignResponse AWS API Documentation
    #
    class DescribeCampaignResponse < Struct.new(
      :campaign)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dial request for a campaign.
    #
    # @!attribute [rw] attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in contact
    #   flows just like any other contact attributes.
    #   @return [Hash<String,String>]
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
    # @!attribute [rw] phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DialRequest AWS API Documentation
    #
    class DialRequest < Struct.new(
      :attributes,
      :client_token,
      :expiration_time,
      :phone_number)
      SENSITIVE = [:attributes, :phone_number]
      include Aws::Structure
    end

    # The possible types of dialer config parameters
    #
    # @note DialerConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DialerConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DialerConfig corresponding to the set member.
    #
    # @!attribute [rw] predictive_dialer_config
    #   Predictive Dialer config
    #   @return [Types::PredictiveDialerConfig]
    #
    # @!attribute [rw] progressive_dialer_config
    #   Progressive Dialer config
    #   @return [Types::ProgressiveDialerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/DialerConfig AWS API Documentation
    #
    class DialerConfig < Struct.new(
      :predictive_dialer_config,
      :progressive_dialer_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PredictiveDialerConfig < DialerConfig; end
      class ProgressiveDialerConfig < DialerConfig; end
      class Unknown < DialerConfig; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/EncryptionConfig AWS API Documentation
    #
    class EncryptionConfig < Struct.new(
      :enabled,
      :encryption_type,
      :key_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/FailedCampaignStateResponse AWS API Documentation
    #
    class FailedCampaignStateResponse < Struct.new(
      :campaign_id,
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
    # @!attribute [rw] failure_code
    #   A predefined code indicating the error that caused the failure.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Identifier representing a Dial request
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/FailedRequest AWS API Documentation
    #
    class FailedRequest < Struct.new(
      :client_token,
      :failure_code,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetCampaignStateBatchRequest
    #
    # @!attribute [rw] campaign_ids
    #   List of CampaignId
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetCampaignStateBatchRequest AWS API Documentation
    #
    class GetCampaignStateBatchRequest < Struct.new(
      :campaign_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetCampaignStateBatchResponse
    #
    # @!attribute [rw] failed_requests
    #   List of failed requests of campaign state
    #   @return [Array<Types::FailedCampaignStateResponse>]
    #
    # @!attribute [rw] successful_requests
    #   List of successful response of campaign state
    #   @return [Array<Types::SuccessfulCampaignStateResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetCampaignStateBatchResponse AWS API Documentation
    #
    class GetCampaignStateBatchResponse < Struct.new(
      :failed_requests,
      :successful_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetCampaignStateRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetCampaignStateRequest AWS API Documentation
    #
    class GetCampaignStateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetCampaignStateResponse
    #
    # @!attribute [rw] state
    #   State of a campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetCampaignStateResponse AWS API Documentation
    #
    class GetCampaignStateResponse < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetConnectInstanceConfigRequest
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetConnectInstanceConfigRequest AWS API Documentation
    #
    class GetConnectInstanceConfigRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetConnectInstanceConfigResponse
    #
    # @!attribute [rw] connect_instance_config
    #   Instance config object
    #   @return [Types::InstanceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetConnectInstanceConfigResponse AWS API Documentation
    #
    class GetConnectInstanceConfigResponse < Struct.new(
      :connect_instance_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetInstanceOnboardingJobStatusRequest
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetInstanceOnboardingJobStatusRequest AWS API Documentation
    #
    class GetInstanceOnboardingJobStatusRequest < Struct.new(
      :connect_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetInstanceOnboardingJobStatusResponse
    #
    # @!attribute [rw] connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/GetInstanceOnboardingJobStatusResponse AWS API Documentation
    #
    class GetInstanceOnboardingJobStatusResponse < Struct.new(
      :connect_instance_onboarding_job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instance config object
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
    # @!attribute [rw] service_linked_role_arn
    #   Service linked role arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/InstanceConfig AWS API Documentation
    #
    class InstanceConfig < Struct.new(
      :connect_instance_id,
      :encryption_config,
      :service_linked_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connect instance identifier filter
    #
    # @!attribute [rw] operator
    #   Operators for Connect instance identifier filter
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/InstanceIdFilter AWS API Documentation
    #
    class InstanceIdFilter < Struct.new(
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instance onboarding job status object
    #
    # @!attribute [rw] connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   Enumeration of the possible failure codes for instance onboarding
    #   job
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Enumeration of the possible states for instance onboarding job
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/InstanceOnboardingJobStatus AWS API Documentation
    #
    class InstanceOnboardingJobStatus < Struct.new(
      :connect_instance_id,
      :failure_code,
      :status)
      SENSITIVE = []
      include Aws::Structure
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/InternalServerException AWS API Documentation
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
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] state
    #   State of a campaign
    #   @return [String]
    #
    # @!attribute [rw] x_amz_error_type
    #   A header that defines the error encountered while processing the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/InvalidCampaignStateException AWS API Documentation
    #
    class InvalidCampaignStateException < Struct.new(
      :message,
      :state,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListCampaignsRequest
    #
    # @!attribute [rw] filters
    #   Filter model by type
    #   @return [Types::CampaignFilters]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ListCampaignsRequest AWS API Documentation
    #
    class ListCampaignsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListCampaignsResponse
    #
    # @!attribute [rw] campaign_summary_list
    #   A list of Amazon Connect campaigns.
    #   @return [Array<Types::CampaignSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ListCampaignsResponse AWS API Documentation
    #
    class ListCampaignsResponse < Struct.new(
      :campaign_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTagsForResource
    #
    # @!attribute [rw] arn
    #   Arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # ListTagsForResponse
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration used for outbound calls.
    #
    # @!attribute [rw] answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    #
    # @!attribute [rw] connect_contact_flow_id
    #   The identifier of the contact flow for the outbound call.
    #   @return [String]
    #
    # @!attribute [rw] connect_queue_id
    #   The queue for the call. If you specify a queue, the phone displayed
    #   for caller ID is the phone number specified in the queue. If you do
    #   not specify a queue, the queue defined in the contact flow is used.
    #   If you do not specify a queue, you must specify a source phone
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in
    #   E.164 format. If you do not specify a source phone number, you must
    #   specify a queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/OutboundCallConfig AWS API Documentation
    #
    class OutboundCallConfig < Struct.new(
      :answer_machine_detection_config,
      :connect_contact_flow_id,
      :connect_queue_id,
      :connect_source_phone_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # PauseCampaignRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/PauseCampaignRequest AWS API Documentation
    #
    class PauseCampaignRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Predictive Dialer config
    #
    # @!attribute [rw] bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/PredictiveDialerConfig AWS API Documentation
    #
    class PredictiveDialerConfig < Struct.new(
      :bandwidth_allocation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Progressive Dialer config
    #
    # @!attribute [rw] bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ProgressiveDialerConfig AWS API Documentation
    #
    class ProgressiveDialerConfig < Struct.new(
      :bandwidth_allocation)
      SENSITIVE = []
      include Aws::Structure
    end

    # PutDialRequestBatchRequest
    #
    # @!attribute [rw] dial_requests
    #   A list of dial requests.
    #   @return [Array<Types::DialRequest>]
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/PutDialRequestBatchRequest AWS API Documentation
    #
    class PutDialRequestBatchRequest < Struct.new(
      :dial_requests,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # PutDialRequestBatchResponse
    #
    # @!attribute [rw] failed_requests
    #   A list of failed requests.
    #   @return [Array<Types::FailedRequest>]
    #
    # @!attribute [rw] successful_requests
    #   A list of successful requests identified by the unique client token.
    #   @return [Array<Types::SuccessfulRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/PutDialRequestBatchResponse AWS API Documentation
    #
    class PutDialRequestBatchResponse < Struct.new(
      :failed_requests,
      :successful_requests)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # ResumeCampaignRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ResumeCampaignRequest AWS API Documentation
    #
    class ResumeCampaignRequest < Struct.new(
      :id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # StartCampaignRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StartCampaignRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StartInstanceOnboardingJobRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StartInstanceOnboardingJobResponse AWS API Documentation
    #
    class StartInstanceOnboardingJobResponse < Struct.new(
      :connect_instance_onboarding_job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # StopCampaignRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/StopCampaignRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/SuccessfulCampaignStateResponse AWS API Documentation
    #
    class SuccessfulCampaignStateResponse < Struct.new(
      :campaign_id,
      :state)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/SuccessfulRequest AWS API Documentation
    #
    class SuccessfulRequest < Struct.new(
      :client_token,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # TagResourceRequest
    #
    # @!attribute [rw] arn
    #   Arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag map with key and value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # UntagResourceRequest
    #
    # @!attribute [rw] arn
    #   Arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateCampaignDialerConfigRequest
    #
    # @!attribute [rw] dialer_config
    #   The possible types of dialer config parameters
    #   @return [Types::DialerConfig]
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UpdateCampaignDialerConfigRequest AWS API Documentation
    #
    class UpdateCampaignDialerConfigRequest < Struct.new(
      :dialer_config,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateCampaignNameRequest
    #
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UpdateCampaignNameRequest AWS API Documentation
    #
    class UpdateCampaignNameRequest < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # UpdateCampaignOutboundCallConfigRequest
    #
    # @!attribute [rw] answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
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
    # @!attribute [rw] id
    #   Identifier representing a Campaign
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/UpdateCampaignOutboundCallConfigRequest AWS API Documentation
    #
    class UpdateCampaignOutboundCallConfigRequest < Struct.new(
      :answer_machine_detection_config,
      :connect_contact_flow_id,
      :connect_source_phone_number,
      :id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcampaigns-2021-01-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :x_amz_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
