# frozen_string_literal: true

# This is generated code!

module Aws::ConnectHealth
  # This module contains the types returned by client operations.
  module Types

    # <p>This error is thrown when the client does not supply proper credentials to the API.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The unique identifier of the Subscription.</p>
    #   @return [String]
    class ActivateSubscriptionInput < Struct.new(
      nil,
      :domain_id,
      :subscription_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p/>
    #   @return [Types::SubscriptionDescription]
    class ActivateSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a generated artifact including location and status</p>
    # @!attribute output_location
    #   <p/>
    #   @return [String]
    # @!attribute status
    #   <p>The generation status of the artifact</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for failure if the artifact generation failed</p>
    #   @return [String]
    class ArtifactDetails < Struct.new(
      nil,
      :output_location,
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Results of clinical note generation including note, transcript, and summary</p>
    # @!attribute note_result
    #   <p>Details about the generated clinical note</p>
    #   @return [Types::ArtifactDetails]
    # @!attribute transcript_result
    #   <p>Details about the generated transcript</p>
    #   @return [Types::ArtifactDetails]
    # @!attribute after_visit_summary_result
    #   <p>Details about the generated after visit summary</p>
    #   @return [Types::ArtifactDetails]
    class ClinicalNoteGenerationResult < Struct.new(
      nil,
      :note_result,
      :transcript_result,
      :after_visit_summary_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for generating clinical notes from the audio stream</p>
    # @!attribute note_template_settings
    #   <p>Settings for the note template to use</p>
    #   @return [Types::NoteTemplateSettings]
    class ClinicalNoteGenerationSettings < Struct.new(
      nil,
      :note_template_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing settings for clinical note generation</p>
    # @!attribute note_template_settings
    #   <p>Settings for the note template used</p>
    #   @return [Types::NoteTemplateSettingsResponse]
    class ClinicalNoteGenerationSettingsResponse < Struct.new(
      nil,
      :note_template_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This error is thrown when a resource update is no longer valid due to assumptions about initial state changing.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the new Domain.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use for encrypting data in this Domain.</p>
    #   @return [String]
    # @!attribute web_app_setup_configuration
    #   <p>Configuration for the Domain web application. Optional, but if provided all fields are required.</p>
    #   @return [Types::CreateWebAppConfiguration]
    # @!attribute tags
    #   <p>Tags to associate with the Domain.</p>
    #   @return [Hash<String, String>]
    class CreateDomainInput < Struct.new(
      nil,
      :name,
      :kms_key_arn,
      :web_app_setup_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p/>
    #   @return [String]
    # @!attribute arn
    #   <p/>
    #   @return [String]
    # @!attribute name
    #   <p/>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p/>
    #   @return [String]
    # @!attribute encryption_context
    #   <p/>
    #   @return [Types::EncryptionContext]
    # @!attribute status
    #   <p/>
    #   @return [String]
    # @!attribute web_app_url
    #   <p/>
    #   @return [String]
    # @!attribute web_app_configuration
    #   <p/>
    #   @return [Types::WebAppConfiguration]
    # @!attribute created_at
    #   <p/>
    #   @return [Time]
    class CreateDomainOutput < Struct.new(
      nil,
      :domain_id,
      :arn,
      :name,
      :kms_key_arn,
      :encryption_context,
      :status,
      :web_app_url,
      :web_app_configuration,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    #   @return [String]
    class CreateSubscriptionInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p/>
    #   @return [String]
    # @!attribute subscription_id
    #   <p/>
    #   @return [String]
    # @!attribute arn
    #   <p/>
    #   @return [String]
    # @!attribute status
    #   <p/>
    #   @return [String]
    # @!attribute created_at
    #   <p/>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p/>
    #   @return [Time]
    # @!attribute activated_at
    #   <p/>
    #   @return [Time]
    # @!attribute deactivated_at
    #   <p/>
    #   @return [Time]
    class CreateSubscriptionOutput < Struct.new(
      nil,
      :domain_id,
      :subscription_id,
      :arn,
      :status,
      :created_at,
      :last_updated_at,
      :activated_at,
      :deactivated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for creating a web application. Used only in CreateDomain operation input.</p>
    # @!attribute ehr_role
    #   <p>ARN of the IAM role used for EHR operations.</p>
    #   @return [String]
    # @!attribute idc_instance_id
    #   <p>The Identity Center instance ID to use for creating the application.</p>
    #   @return [String]
    # @!attribute idc_region
    #   <p>The AWS region where Identity Center is configured.</p>
    #   @return [String]
    class CreateWebAppConfiguration < Struct.new(
      nil,
      :ehr_role,
      :idc_instance_id,
      :idc_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for using a custom note template with specific instructions</p>
    # @!attribute template_type
    #   <p>The base template type to customize</p>
    #   @return [String]
    # @!attribute template_instructions
    #   <p>Custom instructions for each section of the template</p>
    #   @return [Array<Types::TemplateSectionInstruction>]
    class CustomTemplate < Struct.new(
      nil,
      :template_type,
      :template_instructions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing custom template information</p>
    # @!attribute template_type
    #   <p>The base template type that was customized</p>
    #   @return [String]
    class CustomTemplateResponse < Struct.new(
      nil,
      :template_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The unique identifier of the Subscription.</p>
    #   @return [String]
    class DeactivateSubscriptionInput < Struct.new(
      nil,
      :domain_id,
      :subscription_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p/>
    #   @return [Types::SubscriptionDescription]
    class DeactivateSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The id of the Domain to delete</p>
    #   @return [String]
    class DeleteDomainInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The id of the Domain requested for deletion</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the Domain that was requested for deletion</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of Domain</p>
    #   @return [String]
    class DeleteDomainOutput < Struct.new(
      nil,
      :domain_id,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a Domain.</p>
    # @!attribute domain_id
    #   <p>The unique identifier of the Domain.</p>
    #   @return [String]
    # @!attribute arn
    #   <p/>
    #   @return [String]
    # @!attribute name
    #   <p/>
    #   @return [String]
    # @!attribute status
    #   <p/>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the Domain was created.</p>
    #   @return [Time]
    class DomainSummary < Struct.new(
      nil,
      :domain_id,
      :arn,
      :name,
      :status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Context information about the clinical encounter</p>
    # @!attribute unstructured_context
    #   <p>Unstructured context information in markdown format</p>
    #   @return [String]
    class EncounterContext < Struct.new(
      nil,
      :unstructured_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encryption context for a Domain.</p>
    # @!attribute encryption_type
    #   <p>The type of encryption key used.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key. Only present when encryptionType is CUSTOMER_MANAGED_KEY.</p>
    #   @return [String]
    class EncryptionContext < Struct.new(
      nil,
      :encryption_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>FHIR server configuration for input data source</p>
    # @!attribute fhir_endpoint
    #   <p>FHIR server endpoint URL for accessing patient data.</p>
    #   @return [String]
    # @!attribute oauth_token
    #   <p>OAuth token for authenticating with the FHIR server.</p>
    #   @return [String]
    class FHIRServer < Struct.new(
      nil,
      :fhir_endpoint,
      :oauth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The id of the Domain to get</p>
    #   @return [String]
    class GetDomainInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p/>
    #   @return [String]
    # @!attribute arn
    #   <p/>
    #   @return [String]
    # @!attribute name
    #   <p/>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p/>
    #   @return [String]
    # @!attribute encryption_context
    #   <p/>
    #   @return [Types::EncryptionContext]
    # @!attribute status
    #   <p/>
    #   @return [String]
    # @!attribute web_app_url
    #   <p/>
    #   @return [String]
    # @!attribute web_app_configuration
    #   <p/>
    #   @return [Types::WebAppConfiguration]
    # @!attribute created_at
    #   <p/>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags associated with the Domain</p>
    #   @return [Hash<String, String>]
    class GetDomainOutput < Struct.new(
      nil,
      :domain_id,
      :arn,
      :name,
      :kms_key_arn,
      :encryption_context,
      :status,
      :web_app_url,
      :web_app_configuration,
      :created_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session identifier</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The Domain identifier</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Subscription identifier</p>
    #   @return [String]
    class GetMedicalScribeListeningSessionInput < Struct.new(
      nil,
      :session_id,
      :domain_id,
      :subscription_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute medical_scribe_listening_session_details
    #   <p>Details about the Medical Scribe listening session</p>
    #   @return [Types::MedicalScribeListeningSessionDetails]
    class GetMedicalScribeListeningSessionOutput < Struct.new(
      nil,
      :medical_scribe_listening_session_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p/>
    #   @return [String]
    # @!attribute job_id
    #   <p/>
    #   @return [String]
    class GetPatientInsightsJobRequest < Struct.new(
      nil,
      :domain_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p/>
    #   @return [String]
    # @!attribute job_arn
    #   <p/>
    #   @return [String]
    # @!attribute job_status
    #   <p/>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time the patient insights job was submitted.</p>
    #   @return [Time]
    # @!attribute updated_time
    #   <p>Date and time the patient insights job was last updated.</p>
    #   @return [Time]
    # @!attribute insights_output
    #   <p/>
    #   @return [Types::InsightsOutput]
    # @!attribute status_details
    #   <p>Contains information about the status of a job.</p>
    #   @return [String]
    # @!attribute patient_context
    #   <p/>
    #   @return [Types::PatientInsightsPatientContext]
    # @!attribute insights_context
    #   <p/>
    #   @return [Types::InsightsContext]
    # @!attribute encounter_context
    #   <p/>
    #   @return [Types::PatientInsightsEncounterContext]
    # @!attribute user_context
    #   <p/>
    #   @return [Types::UserContext]
    # @!attribute input_data_config
    #   <p/>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p/>
    #   @return [Types::OutputDataConfig]
    class GetPatientInsightsJobResponse < Struct.new(
      nil,
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
      :output_data_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The unique identifier of the Subscription.</p>
    #   @return [String]
    class GetSubscriptionInput < Struct.new(
      nil,
      :domain_id,
      :subscription_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p/>
    #   @return [Types::SubscriptionDescription]
    class GetSubscriptionOutput < Struct.new(
      nil,
      :subscription,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for input patient data</p>
    # @!attribute fhir_server
    #   <p>FHIR server configuration to retrieve patient data.</p>
    #   @return [Types::FHIRServer]
    # @!attribute s3_sources
    #   <p>List of S3 sources containing patient data.</p>
    #   @return [Array<Types::S3Source>]
    class InputDataConfig < Struct.new(
      nil,
      :fhir_server,
      :s3_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for insights that user wants to generate</p>
    # @!attribute insights_type
    #   <p/>
    #   @return [String]
    class InsightsContext < Struct.new(
      nil,
      :insights_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output of patient insights job</p>
    # @!attribute uri
    #   <p/>
    #   @return [String]
    class InsightsOutput < Struct.new(
      nil,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This error is thrown when a transient error causes our API to fail.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Filter by Domain status.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination.</p>
    #   @return [String]
    class ListDomainsInput < Struct.new(
      nil,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domains
    #   <p>List of Domains.</p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   <p>Token for the next page of results.</p>
    #   @return [String]
    class ListDomainsOutput < Struct.new(
      nil,
      :domains,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the parent Domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination.</p>
    #   @return [String]
    class ListSubscriptionsInput < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriptions
    #   <p>List of Subscriptions.</p>
    #   @return [Array<Types::SubscriptionDescription>]
    # @!attribute next_token
    #   <p>Token for the next page of results.</p>
    #   @return [String]
    class ListSubscriptionsOutput < Struct.new(
      nil,
      :subscriptions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to list tags for</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for using a managed note template</p>
    # @!attribute template_type
    #   <p>The type of managed template to use</p>
    #   @return [String]
    class ManagedTemplate < Struct.new(
      nil,
      :template_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing managed template information</p>
    # @!attribute template_type
    #   <p>The type of managed template used</p>
    #   @return [String]
    class ManagedTemplateResponse < Struct.new(
      nil,
      :template_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event containing audio data for the Medical Scribe stream</p>
    # @!attribute audio_chunk
    #   <p>The audio data chunk</p>
    #   @return [String]
    class MedicalScribeAudioEvent < Struct.new(
      nil,
      :audio_chunk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event containing raw binary audio data for the Medical Scribe stream. The audio is sent as a raw binary payload rather than as a base64-encoded value.</p>
    # @!attribute audio_chunk
    #   <p>The raw binary audio data chunk</p>
    #   @return [String]
    class MedicalScribeBinaryAudioEvent < Struct.new(
      nil,
      :audio_chunk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a channel in the audio stream</p>
    # @!attribute channel_id
    #   <p>The channel identifier</p>
    #   @return [Integer]
    # @!attribute participant_role
    #   <p>The role of the participant on this channel</p>
    #   @return [String]
    class MedicalScribeChannelDefinition < Struct.new(
      nil,
      :channel_id,
      :participant_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event containing configuration for the Medical Scribe session</p>
    # @!attribute post_stream_action_settings
    #   <p>Settings for actions to perform after the stream ends</p>
    #   @return [Types::MedicalScribePostStreamActionSettings]
    # @!attribute channel_definitions
    #   <p>Channel definitions for the audio stream</p>
    #   @return [Array<Types::MedicalScribeChannelDefinition>]
    # @!attribute encounter_context
    #   <p>Context information about the clinical encounter</p>
    #   @return [Types::EncounterContext]
    class MedicalScribeConfigurationEvent < Struct.new(
      nil,
      :post_stream_action_settings,
      :channel_definitions,
      :encounter_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input stream for Medical Scribe containing audio and configuration events</p>
    # @!attribute audio_event
    #   <p/>
    #   @return [Types::MedicalScribeAudioEvent]
    # @!attribute binary_audio_event
    #   <p>An event containing raw binary audio data for the Medical Scribe stream. The audio is sent as a raw binary payload rather than as a base64-encoded value.</p>
    #   @return [Types::MedicalScribeBinaryAudioEvent]
    # @!attribute session_control_event
    #   <p/>
    #   @return [Types::MedicalScribeSessionControlEvent]
    # @!attribute configuration_event
    #   <p/>
    #   @return [Types::MedicalScribeConfigurationEvent]
    class MedicalScribeInputStream < Struct.new(
      :audio_event,
      :binary_audio_event,
      :session_control_event,
      :configuration_event,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AudioEvent < MedicalScribeInputStream; end
      class BinaryAudioEvent < MedicalScribeInputStream; end
      class SessionControlEvent < MedicalScribeInputStream; end
      class ConfigurationEvent < MedicalScribeInputStream; end
      class Unknown < MedicalScribeInputStream; end
    end

    # <p>Detailed information about a Medical Scribe listening session</p>
    # @!attribute session_id
    #   <p>The Session identifier</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The Domain identifier</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Subscription identifier</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The Language Code for the audio in the session</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>The encoding for the input audio</p>
    #   @return [String]
    # @!attribute channel_definitions
    #   <p>Channel definitions for the audio stream</p>
    #   @return [Array<Types::MedicalScribeChannelDefinition>]
    # @!attribute post_stream_action_settings
    #   <p>Settings for post-stream actions</p>
    #   @return [Types::MedicalScribePostStreamActionSettingsResponse]
    # @!attribute post_stream_action_result
    #   <p>Results of post-stream actions</p>
    #   @return [Types::MedicalScribePostStreamActionsResult]
    # @!attribute encounter_context_provided
    #   <p>Indicates whether encounter context was provided</p>
    #   @return [Boolean]
    # @!attribute stream_status
    #   <p>The current status of the stream</p>
    #   @return [String]
    # @!attribute stream_creation_time
    #   <p>The timestamp when the stream was created</p>
    #   @return [Time]
    # @!attribute stream_end_time
    #   <p>The timestamp when the stream ended</p>
    #   @return [Time]
    class MedicalScribeListeningSessionDetails < Struct.new(
      nil,
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
      :stream_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output stream from Medical Scribe containing transcript events and errors</p>
    # @!attribute transcript_event
    #   <p/>
    #   @return [Types::MedicalScribeTranscriptEvent]
    # @!attribute internal_failure_exception
    #   <p/>
    #   @return [Types::InternalServerException]
    # @!attribute validation_exception
    #   <p/>
    #   @return [Types::ValidationException]
    class MedicalScribeOutputStream < Struct.new(
      :transcript_event,
      :internal_failure_exception,
      :validation_exception,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TranscriptEvent < MedicalScribeOutputStream; end
      class InternalFailureException < MedicalScribeOutputStream; end
      class ValidationException < MedicalScribeOutputStream; end
      class Unknown < MedicalScribeOutputStream; end
    end

    # <p>Settings for actions to perform after the audio stream ends</p>
    # @!attribute output_s3_uri
    #   <p/>
    #   @return [String]
    # @!attribute clinical_note_generation_settings
    #   <p>Settings for clinical note generation</p>
    #   @return [Types::ClinicalNoteGenerationSettings]
    class MedicalScribePostStreamActionSettings < Struct.new(
      nil,
      :output_s3_uri,
      :clinical_note_generation_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing settings for post-stream actions</p>
    # @!attribute output_s3_uri
    #   <p/>
    #   @return [String]
    # @!attribute clinical_note_generation_settings
    #   <p>Settings for clinical note generation</p>
    #   @return [Types::ClinicalNoteGenerationSettingsResponse]
    class MedicalScribePostStreamActionSettingsResponse < Struct.new(
      nil,
      :output_s3_uri,
      :clinical_note_generation_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Results of post-stream actions performed after the audio stream ended</p>
    # @!attribute clinical_note_generation_result
    #   <p>Results of clinical note generation</p>
    #   @return [Types::ClinicalNoteGenerationResult]
    class MedicalScribePostStreamActionsResult < Struct.new(
      nil,
      :clinical_note_generation_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event for controlling the Medical Scribe session</p>
    # @!attribute type
    #   <p>The type of session control event</p>
    #   @return [String]
    class MedicalScribeSessionControlEvent < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event containing transcript data from the Medical Scribe stream</p>
    # @!attribute transcript_segment
    #   <p>A segment of the transcript</p>
    #   @return [Types::MedicalScribeTranscriptSegment]
    class MedicalScribeTranscriptEvent < Struct.new(
      nil,
      :transcript_segment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A segment of transcript text with timing and channel information</p>
    # @!attribute segment_id
    #   <p>The unique identifier for this segment</p>
    #   @return [String]
    # @!attribute audio_begin_offset
    #   <p>The offset from audio start when the audio for this segment begins</p>
    #   @return [Float]
    # @!attribute audio_end_offset
    #   <p>The offset from audio start when the audio for this segment ends</p>
    #   @return [Float]
    # @!attribute is_partial
    #   <p>Indicates whether this is a partial or final transcript</p>
    #   @return [Boolean]
    # @!attribute channel_id
    #   <p>The channel identifier for this segment</p>
    #   @return [String]
    # @!attribute content
    #   <p>The transcript text content</p>
    #   @return [String]
    class MedicalScribeTranscriptSegment < Struct.new(
      nil,
      :segment_id,
      :audio_begin_offset,
      :audio_end_offset,
      :is_partial,
      :channel_id,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings for the note template to use for clinical note generation</p>
    # @!attribute managed_template
    #   <p/>
    #   @return [Types::ManagedTemplate]
    # @!attribute custom_template
    #   <p/>
    #   @return [Types::CustomTemplate]
    class NoteTemplateSettings < Struct.new(
      :managed_template,
      :custom_template,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ManagedTemplate < NoteTemplateSettings; end
      class CustomTemplate < NoteTemplateSettings; end
      class Unknown < NoteTemplateSettings; end
    end

    # <p>Response containing note template settings</p>
    # @!attribute managed_template
    #   <p/>
    #   @return [Types::ManagedTemplateResponse]
    # @!attribute custom_template
    #   <p/>
    #   @return [Types::CustomTemplateResponse]
    class NoteTemplateSettingsResponse < Struct.new(
      :managed_template,
      :custom_template,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ManagedTemplate < NoteTemplateSettingsResponse; end
      class CustomTemplate < NoteTemplateSettingsResponse; end
      class Unknown < NoteTemplateSettingsResponse; end
    end

    # <p>Configuration details for insights output.</p>
    # @!attribute s3_output_path
    #   <p>S3 URI where the insights output will be stored.</p>
    #   @return [String]
    class OutputDataConfig < Struct.new(
      nil,
      :s3_output_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for an encounter</p>
    # @!attribute encounter_reason
    #   <p>Chief complaint for the visit</p>
    #   @return [String]
    class PatientInsightsEncounterContext < Struct.new(
      nil,
      :encounter_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for a patient</p>
    # @!attribute patient_id
    #   <p>Unique identifier of the patient</p>
    #   @return [String]
    # @!attribute date_of_birth
    #   <p>Date of birth of the patient.</p>
    #   @return [String]
    # @!attribute pronouns
    #   <p>Pronouns preferred by the patient.</p>
    #   @return [String]
    class PatientInsightsPatientContext < Struct.new(
      nil,
      :patient_id,
      :date_of_birth,
      :pronouns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This error is thrown when the requested resource is not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>S3 uri for input data source</p>
    # @!attribute uri
    #   <p>The S3 URI.</p>
    #   @return [String]
    class S3Source < Struct.new(
      nil,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session identifier</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The Domain identifier</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Subscription identifier</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The Language Code for the audio in the session</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>The encoding for the input audio</p>
    #   @return [String]
    # @!attribute input_stream
    #   <p/>
    #   @return [Types::MedicalScribeInputStream]
    class StartMedicalScribeListeningSessionInput < Struct.new(
      nil,
      :session_id,
      :domain_id,
      :subscription_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :input_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The Session identifier</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The Domain identifier</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The Subscription identifier</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The Request identifier</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The Language Code for the audio in the session</p>
    #   @return [String]
    # @!attribute media_sample_rate_hertz
    #   <p>The sample rate of the input audio</p>
    #   @return [Integer]
    # @!attribute media_encoding
    #   <p>The encoding for the input audio</p>
    #   @return [String]
    # @!attribute response_stream
    #   <p>The output stream containing transcript events</p>
    #   @return [Types::MedicalScribeOutputStream]
    class StartMedicalScribeListeningSessionOutput < Struct.new(
      nil,
      :session_id,
      :domain_id,
      :subscription_id,
      :request_id,
      :language_code,
      :media_sample_rate_hertz,
      :media_encoding,
      :response_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p/>
    #   @return [String]
    # @!attribute patient_context
    #   <p/>
    #   @return [Types::PatientInsightsPatientContext]
    # @!attribute insights_context
    #   <p/>
    #   @return [Types::InsightsContext]
    # @!attribute encounter_context
    #   <p/>
    #   @return [Types::PatientInsightsEncounterContext]
    # @!attribute user_context
    #   <p/>
    #   @return [Types::UserContext]
    # @!attribute input_data_config
    #   <p/>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p/>
    #   @return [Types::OutputDataConfig]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class StartPatientInsightsJobRequest < Struct.new(
      nil,
      :domain_id,
      :patient_context,
      :insights_context,
      :encounter_context,
      :user_context,
      :input_data_config,
      :output_data_config,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   <p/>
    #   @return [String]
    # @!attribute job_id
    #   <p/>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Date and time the patient insights job was submitted.</p>
    #   @return [Time]
    class StartPatientInsightsJobResponse < Struct.new(
      nil,
      :job_arn,
      :job_id,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete subscription resource data.</p>
    # @!attribute domain_id
    #   <p/>
    #   @return [String]
    # @!attribute subscription_id
    #   <p/>
    #   @return [String]
    # @!attribute arn
    #   <p/>
    #   @return [String]
    # @!attribute status
    #   <p/>
    #   @return [String]
    # @!attribute created_at
    #   <p/>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p/>
    #   @return [Time]
    # @!attribute activated_at
    #   <p/>
    #   @return [Time]
    # @!attribute deactivated_at
    #   <p/>
    #   @return [Time]
    class SubscriptionDescription < Struct.new(
      nil,
      :domain_id,
      :subscription_id,
      :arn,
      :status,
      :created_at,
      :last_updated_at,
      :activated_at,
      :deactivated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to tag</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Instructions for generating a specific section of a clinical note</p>
    # @!attribute section_header
    #   <p>The header for this section of the template</p>
    #   @return [String]
    # @!attribute section_instruction
    #   <p>The instruction for generating this section</p>
    #   @return [String]
    class TemplateSectionInstruction < Struct.new(
      nil,
      :section_header,
      :section_instruction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This error is thrown when the client exceeds the allowed request rate.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to untag</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for user initiating insights job</p>
    # @!attribute role
    #   <p/>
    #   @return [String]
    # @!attribute user_id
    #   <p>Unique identifier of the user</p>
    #   @return [String]
    # @!attribute specialty
    #   <p/>
    #   @return [String]
    class UserContext < Struct.new(
      nil,
      :role,
      :user_id,
      :specialty,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This error is thrown when the client supplies invalid input to the API.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the Domain web application, including Identity Center settings. If provided, all fields are required.</p>
    # @!attribute ehr_role
    #   <p>ARN of the IAM role used for EHR operations.</p>
    #   @return [String]
    # @!attribute idc_application_id
    #   <p>The Identity Center application ID associated with this Domain.</p>
    #   @return [String]
    # @!attribute idc_region
    #   <p>The AWS region where Identity Center is configured.</p>
    #   @return [String]
    class WebAppConfiguration < Struct.new(
      nil,
      :ehr_role,
      :idc_application_id,
      :idc_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
