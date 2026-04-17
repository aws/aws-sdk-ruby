# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectHealth
  module Types

    # This error is thrown when the client does not supply proper
    # credentials to the API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The unique identifier of the Subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ActivateSubscriptionInput AWS API Documentation
    #
    class ActivateSubscriptionInput < Struct.new(
      :domain_id,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   @return [Types::SubscriptionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ActivateSubscriptionOutput AWS API Documentation
    #
    class ActivateSubscriptionOutput < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a generated artifact including location and status
    #
    # @!attribute [rw] output_location
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The generation status of the artifact
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the artifact generation failed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ArtifactDetails AWS API Documentation
    #
    class ArtifactDetails < Struct.new(
      :output_location,
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Results of clinical note generation including note, transcript, and
    # summary
    #
    # @!attribute [rw] note_result
    #   Details about the generated clinical note
    #   @return [Types::ArtifactDetails]
    #
    # @!attribute [rw] transcript_result
    #   Details about the generated transcript
    #   @return [Types::ArtifactDetails]
    #
    # @!attribute [rw] after_visit_summary_result
    #   Details about the generated after visit summary
    #   @return [Types::ArtifactDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ClinicalNoteGenerationResult AWS API Documentation
    #
    class ClinicalNoteGenerationResult < Struct.new(
      :note_result,
      :transcript_result,
      :after_visit_summary_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for generating clinical notes from the audio stream
    #
    # @!attribute [rw] note_template_settings
    #   Settings for the note template to use
    #   @return [Types::NoteTemplateSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ClinicalNoteGenerationSettings AWS API Documentation
    #
    class ClinicalNoteGenerationSettings < Struct.new(
      :note_template_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response containing settings for clinical note generation
    #
    # @!attribute [rw] note_template_settings
    #   Settings for the note template used
    #   @return [Types::NoteTemplateSettingsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ClinicalNoteGenerationSettingsResponse AWS API Documentation
    #
    class ClinicalNoteGenerationSettingsResponse < Struct.new(
      :note_template_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error is thrown when a resource update is no longer valid due to
    # assumptions about initial state changing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the new Domain.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key to use for encrypting data in this Domain.
    #   @return [String]
    #
    # @!attribute [rw] web_app_setup_configuration
    #   Configuration for the Domain web application. Optional, but if
    #   provided all fields are required.
    #   @return [Types::CreateWebAppConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the Domain.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateDomainInput AWS API Documentation
    #
    class CreateDomainInput < Struct.new(
      :name,
      :kms_key_arn,
      :web_app_setup_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   @return [Types::EncryptionContext]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] web_app_url
    #   @return [String]
    #
    # @!attribute [rw] web_app_configuration
    #   @return [Types::WebAppConfiguration]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateDomainOutput AWS API Documentation
    #
    class CreateDomainOutput < Struct.new(
      :domain_id,
      :arn,
      :name,
      :kms_key_arn,
      :encryption_context,
      :status,
      :web_app_url,
      :web_app_configuration,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateSubscriptionInput AWS API Documentation
    #
    class CreateSubscriptionInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   @return [Time]
    #
    # @!attribute [rw] activated_at
    #   @return [Time]
    #
    # @!attribute [rw] deactivated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateSubscriptionOutput AWS API Documentation
    #
    class CreateSubscriptionOutput < Struct.new(
      :domain_id,
      :subscription_id,
      :arn,
      :status,
      :created_at,
      :last_updated_at,
      :activated_at,
      :deactivated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for creating a Pulse web application. Used only in
    # CreateDomain operation input.
    #
    # @!attribute [rw] ehr_role
    #   ARN of the IAM role used for EHR operations.
    #   @return [String]
    #
    # @!attribute [rw] idc_instance_id
    #   The Identity Center instance ID to use for creating the application.
    #   @return [String]
    #
    # @!attribute [rw] idc_region
    #   The AWS region where Identity Center is configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateWebAppConfiguration AWS API Documentation
    #
    class CreateWebAppConfiguration < Struct.new(
      :ehr_role,
      :idc_instance_id,
      :idc_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for using a custom note template with specific
    # instructions
    #
    # @!attribute [rw] template_type
    #   The base template type to customize
    #   @return [String]
    #
    # @!attribute [rw] template_instructions
    #   Custom instructions for each section of the template
    #   @return [Array<Types::TemplateSectionInstruction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CustomTemplate AWS API Documentation
    #
    class CustomTemplate < Struct.new(
      :template_type,
      :template_instructions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response containing custom template information
    #
    # @!attribute [rw] template_type
    #   The base template type that was customized
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CustomTemplateResponse AWS API Documentation
    #
    class CustomTemplateResponse < Struct.new(
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The unique identifier of the Subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DeactivateSubscriptionInput AWS API Documentation
    #
    class DeactivateSubscriptionInput < Struct.new(
      :domain_id,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   @return [Types::SubscriptionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DeactivateSubscriptionOutput AWS API Documentation
    #
    class DeactivateSubscriptionOutput < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The id of the Domain to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DeleteDomainInput AWS API Documentation
    #
    class DeleteDomainInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The id of the Domain requested for deletion
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the Domain that was requested for deletion
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of Domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DeleteDomainOutput AWS API Documentation
    #
    class DeleteDomainOutput < Struct.new(
      :domain_id,
      :arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a Domain.
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Domain.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Domain was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :domain_id,
      :arn,
      :name,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Context information about the clinical encounter
    #
    # @!attribute [rw] unstructured_context
    #   Unstructured context information in markdown format
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/EncounterContext AWS API Documentation
    #
    class EncounterContext < Struct.new(
      :unstructured_context)
      SENSITIVE = [:unstructured_context]
      include Aws::Structure
    end

    # Encryption context for a Domain.
    #
    # @!attribute [rw] encryption_type
    #   The type of encryption key used.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key. Only present when encryptionType is
    #   CUSTOMER\_MANAGED\_KEY.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/EncryptionContext AWS API Documentation
    #
    class EncryptionContext < Struct.new(
      :encryption_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # FHIR server configuration for input data source
    #
    # @!attribute [rw] fhir_endpoint
    #   FHIR server endpoint URL for accessing patient data.
    #   @return [String]
    #
    # @!attribute [rw] oauth_token
    #   OAuth token for authenticating with the FHIR server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/FHIRServer AWS API Documentation
    #
    class FHIRServer < Struct.new(
      :fhir_endpoint,
      :oauth_token)
      SENSITIVE = [:oauth_token]
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The id of the Domain to get
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetDomainInput AWS API Documentation
    #
    class GetDomainInput < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   @return [String]
    #
    # @!attribute [rw] encryption_context
    #   @return [Types::EncryptionContext]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] web_app_url
    #   @return [String]
    #
    # @!attribute [rw] web_app_configuration
    #   @return [Types::WebAppConfiguration]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Tags associated with the Domain
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetDomainOutput AWS API Documentation
    #
    class GetDomainOutput < Struct.new(
      :domain_id,
      :arn,
      :name,
      :kms_key_arn,
      :encryption_context,
      :status,
      :web_app_url,
      :web_app_configuration,
      :created_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session identifier
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Domain identifier
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Subscription identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetMedicalScribeListeningSessionInput AWS API Documentation
    #
    class GetMedicalScribeListeningSessionInput < Struct.new(
      :session_id,
      :domain_id,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] medical_scribe_listening_session_details
    #   Details about the Medical Scribe listening session
    #   @return [Types::MedicalScribeListeningSessionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetMedicalScribeListeningSessionOutput AWS API Documentation
    #
    class GetMedicalScribeListeningSessionOutput < Struct.new(
      :medical_scribe_listening_session_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetPatientInsightsJobRequest AWS API Documentation
    #
    class GetPatientInsightsJobRequest < Struct.new(
      :domain_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time the patient insights job was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   Date and time the patient insights job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] insights_output
    #   @return [Types::InsightsOutput]
    #
    # @!attribute [rw] status_details
    #   Contains information about the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] patient_context
    #   @return [Types::PatientInsightsPatientContext]
    #
    # @!attribute [rw] insights_context
    #   @return [Types::InsightsContext]
    #
    # @!attribute [rw] encounter_context
    #   @return [Types::PatientInsightsEncounterContext]
    #
    # @!attribute [rw] user_context
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] input_data_config
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   @return [Types::OutputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetPatientInsightsJobResponse AWS API Documentation
    #
    class GetPatientInsightsJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      :creation_time,
      :updated_time,
      :insights_output,
      :status_details,
      :patient_context,
      :insights_context,
      :encounter_context,
      :user_context,
      :input_data_config,
      :output_data_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The unique identifier of the Subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetSubscriptionInput AWS API Documentation
    #
    class GetSubscriptionInput < Struct.new(
      :domain_id,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   @return [Types::SubscriptionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetSubscriptionOutput AWS API Documentation
    #
    class GetSubscriptionOutput < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for input patient data
    #
    # @!attribute [rw] fhir_server
    #   FHIR server configuration to retrieve patient data.
    #   @return [Types::FHIRServer]
    #
    # @!attribute [rw] s3_sources
    #   List of S3 sources containing patient data.
    #   @return [Array<Types::S3Source>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :fhir_server,
      :s3_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for insights that user wants to generate
    #
    # @!attribute [rw] insights_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/InsightsContext AWS API Documentation
    #
    class InsightsContext < Struct.new(
      :insights_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output of patient insights job
    #
    # @!attribute [rw] uri
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/InsightsOutput AWS API Documentation
    #
    class InsightsOutput < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error is thrown when a transient error causes our API to fail.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   Filter by Domain status.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListDomainsInput AWS API Documentation
    #
    class ListDomainsInput < Struct.new(
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   List of Domains.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListDomainsOutput AWS API Documentation
    #
    class ListDomainsOutput < Struct.new(
      :domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListSubscriptionsInput AWS API Documentation
    #
    class ListSubscriptionsInput < Struct.new(
      :domain_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriptions
    #   List of Subscriptions.
    #   @return [Array<Types::SubscriptionDescription>]
    #
    # @!attribute [rw] next_token
    #   Token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListSubscriptionsOutput AWS API Documentation
    #
    class ListSubscriptionsOutput < Struct.new(
      :subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to list tags for
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for using a managed note template
    #
    # @!attribute [rw] template_type
    #   The type of managed template to use
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ManagedTemplate AWS API Documentation
    #
    class ManagedTemplate < Struct.new(
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response containing managed template information
    #
    # @!attribute [rw] template_type
    #   The type of managed template used
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ManagedTemplateResponse AWS API Documentation
    #
    class ManagedTemplateResponse < Struct.new(
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event containing audio data for the Medical Scribe stream
    #
    # @!attribute [rw] audio_chunk
    #   The audio data chunk
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeAudioEvent AWS API Documentation
    #
    class MedicalScribeAudioEvent < Struct.new(
      :audio_chunk,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a channel in the audio stream
    #
    # @!attribute [rw] channel_id
    #   The channel identifier
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   The role of the participant on this channel
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeChannelDefinition AWS API Documentation
    #
    class MedicalScribeChannelDefinition < Struct.new(
      :channel_id,
      :participant_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event containing configuration for the Medical Scribe session
    #
    # @!attribute [rw] post_stream_action_settings
    #   Settings for actions to perform after the stream ends
    #   @return [Types::MedicalScribePostStreamActionSettings]
    #
    # @!attribute [rw] channel_definitions
    #   Channel definitions for the audio stream
    #   @return [Array<Types::MedicalScribeChannelDefinition>]
    #
    # @!attribute [rw] encounter_context
    #   Context information about the clinical encounter
    #   @return [Types::EncounterContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeConfigurationEvent AWS API Documentation
    #
    class MedicalScribeConfigurationEvent < Struct.new(
      :post_stream_action_settings,
      :channel_definitions,
      :encounter_context,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a Medical Scribe listening session
    #
    # @!attribute [rw] session_id
    #   The Session identifier
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Domain identifier
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Subscription identifier
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The Language Code for the audio in the session
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding for the input audio
    #   @return [String]
    #
    # @!attribute [rw] channel_definitions
    #   Channel definitions for the audio stream
    #   @return [Array<Types::MedicalScribeChannelDefinition>]
    #
    # @!attribute [rw] post_stream_action_settings
    #   Settings for post-stream actions
    #   @return [Types::MedicalScribePostStreamActionSettingsResponse]
    #
    # @!attribute [rw] post_stream_action_result
    #   Results of post-stream actions
    #   @return [Types::MedicalScribePostStreamActionsResult]
    #
    # @!attribute [rw] encounter_context_provided
    #   Indicates whether encounter context was provided
    #   @return [Boolean]
    #
    # @!attribute [rw] stream_status
    #   The current status of the stream
    #   @return [String]
    #
    # @!attribute [rw] stream_creation_time
    #   The timestamp when the stream was created
    #   @return [Time]
    #
    # @!attribute [rw] stream_end_time
    #   The timestamp when the stream ended
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeListeningSessionDetails AWS API Documentation
    #
    class MedicalScribeListeningSessionDetails < Struct.new(
      :session_id,
      :domain_id,
      :subscription_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :channel_definitions,
      :post_stream_action_settings,
      :post_stream_action_result,
      :encounter_context_provided,
      :stream_status,
      :stream_creation_time,
      :stream_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for actions to perform after the audio stream ends
    #
    # @!attribute [rw] output_s3_uri
    #   @return [String]
    #
    # @!attribute [rw] clinical_note_generation_settings
    #   Settings for clinical note generation
    #   @return [Types::ClinicalNoteGenerationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePostStreamActionSettings AWS API Documentation
    #
    class MedicalScribePostStreamActionSettings < Struct.new(
      :output_s3_uri,
      :clinical_note_generation_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response containing settings for post-stream actions
    #
    # @!attribute [rw] output_s3_uri
    #   @return [String]
    #
    # @!attribute [rw] clinical_note_generation_settings
    #   Settings for clinical note generation
    #   @return [Types::ClinicalNoteGenerationSettingsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePostStreamActionSettingsResponse AWS API Documentation
    #
    class MedicalScribePostStreamActionSettingsResponse < Struct.new(
      :output_s3_uri,
      :clinical_note_generation_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Results of post-stream actions performed after the audio stream ended
    #
    # @!attribute [rw] clinical_note_generation_result
    #   Results of clinical note generation
    #   @return [Types::ClinicalNoteGenerationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePostStreamActionsResult AWS API Documentation
    #
    class MedicalScribePostStreamActionsResult < Struct.new(
      :clinical_note_generation_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event for controlling the Medical Scribe session
    #
    # @!attribute [rw] type
    #   The type of session control event
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeSessionControlEvent AWS API Documentation
    #
    class MedicalScribeSessionControlEvent < Struct.new(
      :type,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event containing transcript data from the Medical Scribe stream
    #
    # @!attribute [rw] transcript_segment
    #   A segment of the transcript
    #   @return [Types::MedicalScribeTranscriptSegment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeTranscriptEvent AWS API Documentation
    #
    class MedicalScribeTranscriptEvent < Struct.new(
      :transcript_segment,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A segment of transcript text with timing and channel information
    #
    # @!attribute [rw] segment_id
    #   The unique identifier for this segment
    #   @return [String]
    #
    # @!attribute [rw] audio_begin_offset
    #   The offset from audio start when the audio for this segment begins
    #   @return [Float]
    #
    # @!attribute [rw] audio_end_offset
    #   The offset from audio start when the audio for this segment ends
    #   @return [Float]
    #
    # @!attribute [rw] is_partial
    #   Indicates whether this is a partial or final transcript
    #   @return [Boolean]
    #
    # @!attribute [rw] channel_id
    #   The channel identifier for this segment
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The transcript text content
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeTranscriptSegment AWS API Documentation
    #
    class MedicalScribeTranscriptSegment < Struct.new(
      :segment_id,
      :audio_begin_offset,
      :audio_end_offset,
      :is_partial,
      :channel_id,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for the note template to use for clinical note generation
    #
    # @note NoteTemplateSettings is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] managed_template
    #   @return [Types::ManagedTemplate]
    #
    # @!attribute [rw] custom_template
    #   @return [Types::CustomTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/NoteTemplateSettings AWS API Documentation
    #
    class NoteTemplateSettings < Struct.new(
      :managed_template,
      :custom_template,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ManagedTemplate < NoteTemplateSettings; end
      class CustomTemplate < NoteTemplateSettings; end
      class Unknown < NoteTemplateSettings; end
    end

    # Response containing note template settings
    #
    # @note NoteTemplateSettingsResponse is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of NoteTemplateSettingsResponse corresponding to the set member.
    #
    # @!attribute [rw] managed_template
    #   @return [Types::ManagedTemplateResponse]
    #
    # @!attribute [rw] custom_template
    #   @return [Types::CustomTemplateResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/NoteTemplateSettingsResponse AWS API Documentation
    #
    class NoteTemplateSettingsResponse < Struct.new(
      :managed_template,
      :custom_template,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ManagedTemplate < NoteTemplateSettingsResponse; end
      class CustomTemplate < NoteTemplateSettingsResponse; end
      class Unknown < NoteTemplateSettingsResponse; end
    end

    # Configuration details for insights output.
    #
    # @!attribute [rw] s3_output_path
    #   S3 URI where the insights output will be stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_output_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an encounter
    #
    # @!attribute [rw] encounter_reason
    #   Chief complaint for the visit
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/PatientInsightsEncounterContext AWS API Documentation
    #
    class PatientInsightsEncounterContext < Struct.new(
      :encounter_reason)
      SENSITIVE = [:encounter_reason]
      include Aws::Structure
    end

    # Details for a patient
    #
    # @!attribute [rw] patient_id
    #   Unique identifier of the patient
    #   @return [String]
    #
    # @!attribute [rw] date_of_birth
    #   Date of birth of the patient.
    #   @return [String]
    #
    # @!attribute [rw] pronouns
    #   Pronouns preferred by the patient.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/PatientInsightsPatientContext AWS API Documentation
    #
    class PatientInsightsPatientContext < Struct.new(
      :patient_id,
      :date_of_birth,
      :pronouns)
      SENSITIVE = [:patient_id, :date_of_birth, :pronouns]
      include Aws::Structure
    end

    # This error is thrown when the requested resource is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 uri for input data source
    #
    # @!attribute [rw] uri
    #   The S3 URI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/S3Source AWS API Documentation
    #
    class S3Source < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session identifier
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Domain identifier
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Subscription identifier
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The Language Code for the audio in the session
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding for the input audio
    #   @return [String]
    #
    # @!attribute [rw] input_stream
    #   @return [Types::MedicalScribeInputStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/StartMedicalScribeListeningSessionInput AWS API Documentation
    #
    class StartMedicalScribeListeningSessionInput < Struct.new(
      :session_id,
      :domain_id,
      :subscription_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :input_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The Session identifier
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The Domain identifier
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The Subscription identifier
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Request identifier
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The Language Code for the audio in the session
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate of the input audio
    #   @return [Integer]
    #
    # @!attribute [rw] media_encoding
    #   The encoding for the input audio
    #   @return [String]
    #
    # @!attribute [rw] response_stream
    #   The output stream containing transcript events
    #   @return [Types::MedicalScribeOutputStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/StartMedicalScribeListeningSessionOutput AWS API Documentation
    #
    class StartMedicalScribeListeningSessionOutput < Struct.new(
      :session_id,
      :domain_id,
      :subscription_id,
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :response_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] patient_context
    #   @return [Types::PatientInsightsPatientContext]
    #
    # @!attribute [rw] insights_context
    #   @return [Types::InsightsContext]
    #
    # @!attribute [rw] encounter_context
    #   @return [Types::PatientInsightsEncounterContext]
    #
    # @!attribute [rw] user_context
    #   @return [Types::UserContext]
    #
    # @!attribute [rw] input_data_config
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/StartPatientInsightsJobRequest AWS API Documentation
    #
    class StartPatientInsightsJobRequest < Struct.new(
      :domain_id,
      :patient_context,
      :insights_context,
      :encounter_context,
      :user_context,
      :input_data_config,
      :output_data_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Date and time the patient insights job was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/StartPatientInsightsJobResponse AWS API Documentation
    #
    class StartPatientInsightsJobResponse < Struct.new(
      :job_arn,
      :job_id,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complete subscription resource data.
    #
    # @!attribute [rw] domain_id
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   @return [Time]
    #
    # @!attribute [rw] activated_at
    #   @return [Time]
    #
    # @!attribute [rw] deactivated_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/SubscriptionDescription AWS API Documentation
    #
    class SubscriptionDescription < Struct.new(
      :domain_id,
      :subscription_id,
      :arn,
      :status,
      :created_at,
      :last_updated_at,
      :activated_at,
      :deactivated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Instructions for generating a specific section of a clinical note
    #
    # @!attribute [rw] section_header
    #   The header for this section of the template
    #   @return [String]
    #
    # @!attribute [rw] section_instruction
    #   The instruction for generating this section
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/TemplateSectionInstruction AWS API Documentation
    #
    class TemplateSectionInstruction < Struct.new(
      :section_header,
      :section_instruction)
      SENSITIVE = [:section_header, :section_instruction]
      include Aws::Structure
    end

    # This error is thrown when the client exceeds the allowed request rate.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to untag
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for user initiating insights job
    #
    # @!attribute [rw] role
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Unique identifier of the user
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/UserContext AWS API Documentation
    #
    class UserContext < Struct.new(
      :role,
      :user_id,
      :specialty)
      SENSITIVE = [:user_id]
      include Aws::Structure
    end

    # This error is thrown when the client supplies invalid input to the
    # API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the Domain web application, including Identity
    # Center settings. If provided, all fields are required.
    #
    # @!attribute [rw] ehr_role
    #   ARN of the IAM role used for EHR operations.
    #   @return [String]
    #
    # @!attribute [rw] idc_application_id
    #   The Identity Center application ID associated with this Domain.
    #   @return [String]
    #
    # @!attribute [rw] idc_region
    #   The AWS region where Identity Center is configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/WebAppConfiguration AWS API Documentation
    #
    class WebAppConfiguration < Struct.new(
      :ehr_role,
      :idc_application_id,
      :idc_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input stream for Medical Scribe containing audio and configuration
    # events
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeInputStream AWS API Documentation
    #
    class MedicalScribeInputStream < Enumerator

      def event_types
        [
          :audio_event,
          :session_control_event,
          :configuration_event
        ]
      end

    end

    # Output stream from Medical Scribe containing transcript events and
    # errors
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeOutputStream AWS API Documentation
    #
    class MedicalScribeOutputStream < Enumerator

      def event_types
        [
          :transcript_event,
          :internal_failure_exception,
          :validation_exception
        ]
      end

    end

  end
end

