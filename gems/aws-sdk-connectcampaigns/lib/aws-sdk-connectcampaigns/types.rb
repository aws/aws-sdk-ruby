# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCampaigns
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

    # Agentless Dialer config
    # @!attribute dialing_capacity
    #   Allocates dialing capacity for this campaign between multiple active campaigns
    #   @return [Float]
    class AgentlessDialerConfig < Struct.new(
      :dialing_capacity,
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
    # @!attribute dialer_config
    #   The possible types of dialer config parameters
    #   @return [Types::DialerConfig]
    # @!attribute outbound_call_config
    #   The configuration used for outbound calls.
    #   @return [Types::OutboundCallConfig]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class Campaign < Struct.new(
      :id,
      :arn,
      :name,
      :connect_instance_id,
      :dialer_config,
      :outbound_call_config,
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
    class CampaignSummary < Struct.new(
      :id,
      :arn,
      :name,
      :connect_instance_id,
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

    # The request for Create Campaign API.
    # @!attribute name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    # @!attribute dialer_config
    #   The possible types of dialer config parameters
    #   @return [Types::DialerConfig]
    # @!attribute outbound_call_config
    #   The configuration used for outbound calls.
    #   @return [Types::OutboundCallConfig]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class CreateCampaignInput < Struct.new(
      :name,
      :connect_instance_id,
      :dialer_config,
      :outbound_call_config,
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
    class CreateCampaignOutput < Struct.new(
      :id,
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # DeleteCampaignRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class DeleteCampaignInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # DeleteCampaignRequest
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class DeleteConnectInstanceConfigInput < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The request for DeleteInstanceOnboardingJob API.
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class DeleteInstanceOnboardingJobInput < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # DescribeCampaignRequests
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class DescribeCampaignInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # DescribeCampaignResponse
    # @!attribute campaign
    #   An Amazon Connect campaign.
    #   @return [Types::Campaign]
    class DescribeCampaignOutput < Struct.new(
      :campaign,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # A dial request for a campaign.
    # @!attribute client_token
    #   Client provided parameter used for idempotency. Its value must be unique for each request.
    #   @return [String]
    # @!attribute phone_number
    #   The phone number of the customer, in E.164 format.
    #   @return [String]
    # @!attribute expiration_time
    #   Timestamp with no UTC offset or timezone
    #   @return [Time]
    # @!attribute attributes
    #   A custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.
    #   @return [Hash<String, String>]
    class DialRequest < Struct.new(
      :client_token,
      :phone_number,
      :expiration_time,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The possible types of dialer config parameters
    # @!attribute progressive_dialer_config
    #   Progressive Dialer config
    #   @return [Types::ProgressiveDialerConfig]
    # @!attribute predictive_dialer_config
    #   Predictive Dialer config
    #   @return [Types::PredictiveDialerConfig]
    # @!attribute agentless_dialer_config
    #   Agentless Dialer config
    #   @return [Types::AgentlessDialerConfig]
    class DialerConfig < Struct.new(
      :progressive_dialer_config,
      :predictive_dialer_config,
      :agentless_dialer_config,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ProgressiveDialerConfig < DialerConfig; end
      class PredictiveDialerConfig < DialerConfig; end
      class AgentlessDialerConfig < DialerConfig; end
      class Unknown < DialerConfig; end
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

    # GetCampaignStateBatchRequest
    # @!attribute campaign_ids
    #   List of CampaignId
    #   @return [Array<String>]
    class GetCampaignStateBatchInput < Struct.new(
      :campaign_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetCampaignStateBatchResponse
    # @!attribute successful_requests
    #   List of successful response of campaign state
    #   @return [Array<Types::SuccessfulCampaignStateResponse>]
    # @!attribute failed_requests
    #   List of failed requests of campaign state
    #   @return [Array<Types::FailedCampaignStateResponse>]
    class GetCampaignStateBatchOutput < Struct.new(
      :successful_requests,
      :failed_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetCampaignStateRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class GetCampaignStateInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetCampaignStateResponse
    # @!attribute state
    #   State of a campaign
    #   @return [String]
    class GetCampaignStateOutput < Struct.new(
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetConnectInstanceConfigRequest
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class GetConnectInstanceConfigInput < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetConnectInstanceConfigResponse
    # @!attribute connect_instance_config
    #   Instance config object
    #   @return [Types::InstanceConfig]
    class GetConnectInstanceConfigOutput < Struct.new(
      :connect_instance_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetInstanceOnboardingJobStatusRequest
    # @!attribute connect_instance_id
    #   Amazon Connect Instance Id
    #   @return [String]
    class GetInstanceOnboardingJobStatusInput < Struct.new(
      :connect_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # GetInstanceOnboardingJobStatusResponse
    # @!attribute connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    class GetInstanceOnboardingJobStatusOutput < Struct.new(
      :connect_instance_onboarding_job_status,
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

    # ListCampaignsRequest
    # @!attribute max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    # @!attribute next_token
    #   The token for the next set of results.
    #   @return [String]
    # @!attribute filters
    #   Filter model by type
    #   @return [Types::CampaignFilters]
    class ListCampaignsInput < Struct.new(
      :max_results,
      :next_token,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # ListCampaignsResponse
    # @!attribute next_token
    #   The token for the next set of results.
    #   @return [String]
    # @!attribute campaign_summary_list
    #   A list of Amazon Connect campaigns.
    #   @return [Array<Types::CampaignSummary>]
    class ListCampaignsOutput < Struct.new(
      :next_token,
      :campaign_summary_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # ListTagsForResource
    # @!attribute arn
    #   Arn
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # ListTagsForResponse
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The configuration used for outbound calls.
    # @!attribute connect_contact_flow_id
    #   The identifier of the contact flow for the outbound call.
    #   @return [String]
    # @!attribute connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify a source phone number, you must specify a queue.
    #   @return [String]
    # @!attribute connect_queue_id
    #   The queue for the call. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue defined in the contact flow is used. If you do not specify a queue, you must specify a source phone number.
    #   @return [String]
    # @!attribute answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    class OutboundCallConfig < Struct.new(
      :connect_contact_flow_id,
      :connect_source_phone_number,
      :connect_queue_id,
      :answer_machine_detection_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # PauseCampaignRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class PauseCampaignInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Predictive Dialer config
    # @!attribute bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    # @!attribute dialing_capacity
    #   Allocates dialing capacity for this campaign between multiple active campaigns
    #   @return [Float]
    class PredictiveDialerConfig < Struct.new(
      :bandwidth_allocation,
      :dialing_capacity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # Progressive Dialer config
    # @!attribute bandwidth_allocation
    #   The bandwidth allocation of a queue resource.
    #   @return [Float]
    # @!attribute dialing_capacity
    #   Allocates dialing capacity for this campaign between multiple active campaigns
    #   @return [Float]
    class ProgressiveDialerConfig < Struct.new(
      :bandwidth_allocation,
      :dialing_capacity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # PutDialRequestBatchRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute dial_requests
    #   A list of dial requests.
    #   @return [Array<Types::DialRequest>]
    class PutDialRequestBatchInput < Struct.new(
      :id,
      :dial_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # PutDialRequestBatchResponse
    # @!attribute successful_requests
    #   A list of successful requests identified by the unique client token.
    #   @return [Array<Types::SuccessfulRequest>]
    # @!attribute failed_requests
    #   A list of failed requests.
    #   @return [Array<Types::FailedRequest>]
    class PutDialRequestBatchOutput < Struct.new(
      :successful_requests,
      :failed_requests,
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

    # ResumeCampaignRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class ResumeCampaignInput < Struct.new(
      :id,
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

    # StartCampaignRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class StartCampaignInput < Struct.new(
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
    class StartInstanceOnboardingJobInput < Struct.new(
      :connect_instance_id,
      :encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # The response for StartInstanceOnboardingJob API.
    # @!attribute connect_instance_onboarding_job_status
    #   Instance onboarding job status object
    #   @return [Types::InstanceOnboardingJobStatus]
    class StartInstanceOnboardingJobOutput < Struct.new(
      :connect_instance_onboarding_job_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # StopCampaignRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    class StopCampaignInput < Struct.new(
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

    # TagResourceRequest
    # @!attribute arn
    #   Arn
    #   @return [String]
    # @!attribute tags
    #   Tag map with key and value.
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
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

    # UntagResourceRequest
    # @!attribute arn
    #   Arn
    #   @return [String]
    # @!attribute tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # UpdateCampaignDialerConfigRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute dialer_config
    #   The possible types of dialer config parameters
    #   @return [Types::DialerConfig]
    class UpdateCampaignDialerConfigInput < Struct.new(
      :id,
      :dialer_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # UpdateCampaignNameRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute name
    #   The name of an Amazon Connect Campaign name.
    #   @return [String]
    class UpdateCampaignNameInput < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # UpdateCampaignOutboundCallConfigRequest
    # @!attribute id
    #   Identifier representing a Campaign
    #   @return [String]
    # @!attribute connect_contact_flow_id
    #   The identifier of the contact flow for the outbound call.
    #   @return [String]
    # @!attribute connect_source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164 format. If you do not specify a source phone number, you must specify a queue.
    #   @return [String]
    # @!attribute answer_machine_detection_config
    #   Answering Machine Detection config
    #   @return [Types::AnswerMachineDetectionConfig]
    class UpdateCampaignOutboundCallConfigInput < Struct.new(
      :id,
      :connect_contact_flow_id,
      :connect_source_phone_number,
      :answer_machine_detection_config,
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
