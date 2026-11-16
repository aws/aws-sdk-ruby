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

    # Contains the sections of a note template checklist and the discussion
    # status of each section.
    #
    # @!attribute [rw] checklist_id
    #   The identifier of the checklist. For a managed note template, this
    #   value is the template type, such as `HISTORY_AND_PHYSICAL`. For a
    #   custom note template, this value is `CUSTOM_` followed by the
    #   template base, such as `CUSTOM_GIRPP`.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The checklist items in template order. The list contains one item
    #   for each checklist section, including sections that have not been
    #   discussed.
    #   @return [Array<Types::ChecklistItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/Checklist AWS API Documentation
    #
    class Checklist < Struct.new(
      :checklist_id,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a checklist item and its discussion status.
    #
    # @!attribute [rw] item_key
    #   The key that uniquely identifies the item within the checklist. For
    #   a managed note template, this value is a service-defined section
    #   key, such as `CHIEF_COMPLAINT`. For a custom note template, this
    #   value is the `sectionHeader` of the section that you defined.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The discussion status of the checklist item. The following values
    #   are valid:
    #
    #   * `DISCUSSED`: The conversation has covered the item.
    #
    #   * `PARTIALLY_DISCUSSED`: The conversation has covered part of the
    #     item.
    #
    #   * `NOT_DISCUSSED`: The conversation has not covered the item.
    #
    #   The status usually progresses toward `DISCUSSED`, but it can return
    #   to `NOT_DISCUSSED` if a speaker retracts a statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ChecklistItem AWS API Documentation
    #
    class ChecklistItem < Struct.new(
      :item_key,
      :status)
      SENSITIVE = [:item_key]
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

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The configuration of the dataset. The member that you set determines
    #   the dataset type. You can't change the configuration after you
    #   create the dataset.
    #   @return [Types::DatasetConfig]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the operation returns the dataset that the first request
    #   created. If you reuse a clientToken with different parameters, the
    #   request fails with ConflictException. Use a new clientToken for a
    #   request with different parameters.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateDatasetInput AWS API Documentation
    #
    class CreateDatasetInput < Struct.new(
      :domain_id,
      :name,
      :config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the dataset, determined by the configuration that you
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset. A new dataset has the status CREATING.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the dataset was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/CreateDatasetOutput AWS API Documentation
    #
    class CreateDatasetOutput < Struct.new(
      :arn,
      :dataset_id,
      :type,
      :status,
      :created_at)
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

    # Input configuration for creating a web application. Used only in
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

    # The results of building a Dataset, by dataset type.
    #
    # @note DatasetArtifacts is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DatasetArtifacts corresponding to the set member.
    #
    # @!attribute [rw] medical_coding
    #   The results of building a medical coding dataset.
    #   @return [Types::MedicalCodingDatasetArtifacts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DatasetArtifacts AWS API Documentation
    #
    class DatasetArtifacts < Struct.new(
      :medical_coding,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MedicalCoding < DatasetArtifacts; end
      class Unknown < DatasetArtifacts; end
    end

    # The configuration of a Dataset. Set one member, which determines the
    # dataset type.
    #
    # @note DatasetConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DatasetConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DatasetConfig corresponding to the set member.
    #
    # @!attribute [rw] medical_coding
    #   The configuration of a medical coding dataset, which tailors medical
    #   coding jobs to your coded examples.
    #   @return [Types::MedicalCodingDatasetConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DatasetConfig AWS API Documentation
    #
    class DatasetConfig < Struct.new(
      :medical_coding,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MedicalCoding < DatasetConfig; end
      class Unknown < DatasetConfig; end
    end

    # Summary information about a Dataset.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of the dataset, such as the reason that it
    #   failed to build or delete.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the dataset was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DatasetSummary AWS API Documentation
    #
    class DatasetSummary < Struct.new(
      :arn,
      :dataset_id,
      :name,
      :type,
      :status,
      :status_details,
      :created_at,
      :updated_at)
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
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DeleteDatasetInput AWS API Documentation
    #
    class DeleteDatasetInput < Struct.new(
      :domain_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the dataset. After Amazon Connect Health accepts the
    #   request, the status is DELETING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/DeleteDatasetOutput AWS API Documentation
    #
    class DeleteDatasetOutput < Struct.new(
      :arn,
      :dataset_id,
      :status)
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
    # @!attribute [rw] medical_coding_context
    #   Structured patient and encounter context for medical code
    #   generation.
    #   @return [Types::MedicalCodingContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/EncounterContext AWS API Documentation
    #
    class EncounterContext < Struct.new(
      :unstructured_context,
      :medical_coding_context)
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
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetDatasetInput AWS API Documentation
    #
    class GetDatasetInput < Struct.new(
      :domain_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The configuration that you provided when you created the dataset.
    #   @return [Types::DatasetConfig]
    #
    # @!attribute [rw] status
    #   The status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status_details
    #   Details about the status of the dataset, such as the reason that it
    #   failed to build or delete.
    #   @return [String]
    #
    # @!attribute [rw] artifacts
    #   The results of building the dataset, such as medical coding
    #   evaluation scores. Available after Amazon Connect Health builds the
    #   dataset.
    #   @return [Types::DatasetArtifacts]
    #
    # @!attribute [rw] created_at
    #   The date and time that the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time that the dataset was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetDatasetOutput AWS API Documentation
    #
    class GetDatasetOutput < Struct.new(
      :arn,
      :dataset_id,
      :name,
      :type,
      :config,
      :status,
      :status_details,
      :artifacts,
      :created_at,
      :updated_at)
      SENSITIVE = []
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

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the medical coding job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetMedicalCodingJobRequest AWS API Documentation
    #
    class GetMedicalCodingJobRequest < Struct.new(
      :domain_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier of the medical coding job.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the medical coding job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the medical coding job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the medical coding job was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   The date and time that the medical coding job was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] text
    #   The clinical text that the medical coding job codes.
    #   @return [String]
    #
    # @!attribute [rw] patient_context
    #   The patient context that you provided for the job.
    #   @return [Types::MedicalCodesPatientContext]
    #
    # @!attribute [rw] encounter_context
    #   The encounter context that you provided for the job.
    #   @return [Types::MedicalCodesEncounterContext]
    #
    # @!attribute [rw] output_data_config
    #   The output configuration that you provided for the job.
    #   @return [Types::MedicalCodingOutputDataConfig]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset that the job codes against. Not
    #   returned if the job uses the general medical coding knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] medical_coding_output
    #   The location of the job results. Returned when the job succeeds.
    #   @return [Types::MedicalCodingOutput]
    #
    # @!attribute [rw] status_details
    #   Details about the status of the job, such as the reason that it
    #   failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/GetMedicalCodingJobResponse AWS API Documentation
    #
    class GetMedicalCodingJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      :creation_time,
      :updated_time,
      :text,
      :patient_context,
      :encounter_context,
      :output_data_config,
      :dataset_id,
      :medical_coding_output,
      :status_details)
      SENSITIVE = [:text]
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

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Returns only datasets of this type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, from a previous ListDatasets
    #   response. If you don't specify a value, the operation returns the
    #   first page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of datasets to return in one page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListDatasetsInput AWS API Documentation
    #
    class ListDatasetsInput < Struct.new(
      :domain_id,
      :type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of dataset summaries.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. Not returned if there are no
    #   more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/ListDatasetsOutput AWS API Documentation
    #
    class ListDatasetsOutput < Struct.new(
      :items,
      :next_token)
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

    # Results of medical code generation, including the medical codes and
    # the medical coding job.
    #
    # @!attribute [rw] medical_codes_result
    #   Details about the generated medical codes. If the status is SKIPPED,
    #   medical codes weren't generated, for example because the clinical
    #   note wasn't generated or had no content.
    #   @return [Types::ArtifactDetails]
    #
    # @!attribute [rw] job_id
    #   The identifier of the medical coding job that generated the medical
    #   codes. To submit feedback on the medical codes, use this value as
    #   the artifactSourceId, with the artifactType MEDICAL\_CODES, in
    #   SubmitFeedback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodeGenerationResult AWS API Documentation
    #
    class MedicalCodeGenerationResult < Struct.new(
      :medical_codes_result,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for generating medical codes from the clinical note after the
    # session ends. Medical code generation is in preview release and is
    # subject to change. Medical code generation is available in the US East
    # (N. Virginia) and US West (Oregon) AWS Regions.
    #
    # @!attribute [rw] enabled
    #   Specifies whether to generate medical codes for the session. If you
    #   set this to true, the service generates medical codes from the
    #   clinical note after the session ends, using your permissions for
    #   medical coding, the output Amazon S3 location, and the AWS KMS key.
    #   You can set this to true only in a Region where medical code
    #   generation is available. To provide a medicalCodingContext, you must
    #   set this to true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodeGenerationSettings AWS API Documentation
    #
    class MedicalCodeGenerationSettings < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response containing settings for medical code generation.
    #
    # @!attribute [rw] enabled
    #   Indicates whether medical code generation was requested for the
    #   session.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodeGenerationSettingsResponse AWS API Documentation
    #
    class MedicalCodeGenerationSettingsResponse < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encounter context for a medical coding job. All fields are optional.
    #
    # @!attribute [rw] encounter_type
    #   The type of the encounter, either in person or telehealth.
    #   @return [String]
    #
    # @!attribute [rw] encounter_reason
    #   The reason for the encounter. The reason can contain letters,
    #   numbers, spaces, periods, commas, and hyphens, and can't contain
    #   only spaces.
    #   @return [String]
    #
    # @!attribute [rw] after_hours
    #   Specifies whether the encounter took place outside regular business
    #   hours.
    #   @return [Boolean]
    #
    # @!attribute [rw] encounter_date
    #   The date of the encounter, in YYYY-MM-DD format. The date can't be
    #   more than one day after the current date in UTC.
    #   @return [String]
    #
    # @!attribute [rw] encounter_duration_minutes
    #   The duration of the encounter, in minutes, from 1 to 1440.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodesEncounterContext AWS API Documentation
    #
    class MedicalCodesEncounterContext < Struct.new(
      :encounter_type,
      :encounter_reason,
      :after_hours,
      :encounter_date,
      :encounter_duration_minutes)
      SENSITIVE = [:encounter_reason, :encounter_date, :encounter_duration_minutes]
      include Aws::Structure
    end

    # Patient context for a medical coding job. All fields are optional.
    #
    # @!attribute [rw] sex
    #   The sex of the patient.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the patient, either new or established.
    #   @return [String]
    #
    # @!attribute [rw] date_of_birth
    #   The date of birth of the patient, in YYYY-MM-DD format. The date
    #   can't be after the current date in UTC.
    #   @return [String]
    #
    # @!attribute [rw] insurance
    #   The insurance of the patient.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodesPatientContext AWS API Documentation
    #
    class MedicalCodesPatientContext < Struct.new(
      :sex,
      :status,
      :date_of_birth,
      :insurance)
      SENSITIVE = [:sex, :status, :date_of_birth, :insurance]
      include Aws::Structure
    end

    # Patient and encounter context for medical code generation. Providing
    # this information can improve the accuracy of the medical codes. To
    # provide it, you must also set enabled to true in
    # medicalCodeGenerationSettings. All fields are optional. The service
    # generates medical codes without any field that you leave out.
    #
    # @!attribute [rw] sex
    #   The sex of the patient.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the patient, either new or established.
    #   @return [String]
    #
    # @!attribute [rw] date_of_birth
    #   The date of birth of the patient, in YYYY-MM-DD format. The date
    #   can't be after the current date in UTC.
    #   @return [String]
    #
    # @!attribute [rw] encounter_type
    #   The type of the encounter, either in person or telehealth.
    #   @return [String]
    #
    # @!attribute [rw] encounter_reason
    #   The reason for the encounter. The reason can contain letters,
    #   numbers, spaces, periods, commas, and hyphens, and can't contain
    #   only spaces.
    #   @return [String]
    #
    # @!attribute [rw] after_hours
    #   Specifies whether the encounter took place outside regular business
    #   hours.
    #   @return [Boolean]
    #
    # @!attribute [rw] encounter_date
    #   The date of the encounter, in YYYY-MM-DD format. The date can't be
    #   more than one day after the current date in UTC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodingContext AWS API Documentation
    #
    class MedicalCodingContext < Struct.new(
      :sex,
      :status,
      :date_of_birth,
      :encounter_type,
      :encounter_reason,
      :after_hours,
      :encounter_date)
      SENSITIVE = [:sex, :status, :date_of_birth, :encounter_reason, :encounter_date]
      include Aws::Structure
    end

    # The results of building a medical coding dataset.
    #
    # @!attribute [rw] evaluation_s3_uri
    #   The Amazon S3 location, under the s3OutputPath of the dataset, of
    #   the evaluation scores for the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodingDatasetArtifacts AWS API Documentation
    #
    class MedicalCodingDatasetArtifacts < Struct.new(
      :evaluation_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a medical coding dataset. Amazon Connect Health
    # uses the coded examples that are in the input location when you create
    # the dataset, and writes evaluation scores to the output location, with
    # your permissions. Later changes to the input location don't change
    # the dataset.
    #
    # @!attribute [rw] s3_input_path
    #   The Amazon S3 location of your coded examples. You need s3:GetObject
    #   and s3:ListBucket permissions for it, and kms:Decrypt if you encrypt
    #   it with an AWS KMS key.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 location where Amazon Connect Health writes the
    #   evaluation scores for the dataset. You need s3:PutObject permission
    #   for it, and kms:GenerateDataKey if you encrypt it with an AWS KMS
    #   key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodingDatasetConfig AWS API Documentation
    #
    class MedicalCodingDatasetConfig < Struct.new(
      :s3_input_path,
      :s3_output_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the results of a medical coding job.
    #
    # @!attribute [rw] uri
    #   The Amazon S3 location of the medical codes that the job generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodingOutput AWS API Documentation
    #
    class MedicalCodingOutput < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration for a medical coding job.
    #
    # @!attribute [rw] s3_output_path
    #   The Amazon S3 location where Amazon Connect Health writes the
    #   results of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalCodingOutputDataConfig AWS API Documentation
    #
    class MedicalCodingOutputDataConfig < Struct.new(
      :s3_output_path)
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

    # An event containing raw binary audio data for the Medical Scribe
    # stream. The audio is sent as a raw binary payload rather than as a
    # base64-encoded value.
    #
    # @!attribute [rw] audio_chunk
    #   The raw binary audio data chunk
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeBinaryAudioEvent AWS API Documentation
    #
    class MedicalScribeBinaryAudioEvent < Struct.new(
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

    # Real-time extraction is in preview release for Amazon Connect Health
    # and is subject to change. To request access to this feature, contact
    # your AWS account team.
    #
    # The session's checklist as of this point in the session. Each event
    # carries every item with its current status, not only the items that
    # changed.
    #
    # @!attribute [rw] snapshot_version
    #   The version of this snapshot. Versions increase within a session and
    #   can skip values. Keep the snapshot with the highest version and
    #   ignore any event whose version is not higher, including after you
    #   reconnect to the session. Versions of checklist events and
    #   periodontal chart events are independent.
    #   @return [Integer]
    #
    # @!attribute [rw] checklists
    #   The checklists for the session. The list is empty when no checklist
    #   is active.
    #   @return [Array<Types::Checklist>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribeChecklistEvent AWS API Documentation
    #
    class MedicalScribeChecklistEvent < Struct.new(
      :snapshot_version,
      :checklists,
      :event_type)
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
    # @!attribute [rw] medical_coding_context_provided
    #   Indicates whether medical coding context was provided.
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
      :medical_coding_context_provided,
      :stream_status,
      :stream_creation_time,
      :stream_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Real-time extraction is in preview release for Amazon Connect Health
    # and is subject to change. To request access to this feature, contact
    # your AWS account team.
    #
    # The periodontal chart as of this point in the session. Each event
    # carries every tooth charted so far, not only the teeth that changed.
    #
    # @!attribute [rw] snapshot_version
    #   The version of this snapshot. Versions increase within a session and
    #   can skip values. Keep the snapshot with the highest version and
    #   ignore any event whose version is not higher, including after you
    #   reconnect to the session. Versions of checklist events and
    #   periodontal chart events are independent.
    #   @return [Integer]
    #
    # @!attribute [rw] teeth
    #   The teeth that have a recorded value or are marked missing, in
    #   ascending `toothNumber` order.
    #   @return [Array<Types::PeriodontalTooth>]
    #
    # @!attribute [rw] review_items
    #   Items that need the clinician's confirmation.
    #   @return [Array<Types::PeriodontalReview>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePeriodontalChartEvent AWS API Documentation
    #
    class MedicalScribePeriodontalChartEvent < Struct.new(
      :snapshot_version,
      :teeth,
      :review_items,
      :event_type)
      SENSITIVE = [:teeth, :review_items]
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
    # @!attribute [rw] medical_code_generation_settings
    #   Settings for medical code generation. Medical code generation is in
    #   preview release and is subject to change.
    #   @return [Types::MedicalCodeGenerationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePostStreamActionSettings AWS API Documentation
    #
    class MedicalScribePostStreamActionSettings < Struct.new(
      :output_s3_uri,
      :clinical_note_generation_settings,
      :medical_code_generation_settings)
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
    # @!attribute [rw] medical_code_generation_settings
    #   Settings for medical code generation. Returned only if you specified
    #   medicalCodeGenerationSettings when you started the session.
    #   @return [Types::MedicalCodeGenerationSettingsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePostStreamActionSettingsResponse AWS API Documentation
    #
    class MedicalScribePostStreamActionSettingsResponse < Struct.new(
      :output_s3_uri,
      :clinical_note_generation_settings,
      :medical_code_generation_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Results of post-stream actions performed after the audio stream ended
    #
    # @!attribute [rw] clinical_note_generation_result
    #   Results of clinical note generation
    #   @return [Types::ClinicalNoteGenerationResult]
    #
    # @!attribute [rw] medical_code_generation_result
    #   Results of medical code generation. Returned if medical code
    #   generation runs for the session. Not returned if you set enabled to
    #   false in medicalCodeGenerationSettings.
    #   @return [Types::MedicalCodeGenerationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/MedicalScribePostStreamActionsResult AWS API Documentation
    #
    class MedicalScribePostStreamActionsResult < Struct.new(
      :clinical_note_generation_result,
      :medical_code_generation_result)
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

    # An item of the periodontal chart that needs the clinician's
    # confirmation.
    #
    # @!attribute [rw] reason
    #   The reason for review. The following values are valid:
    #
    #   * `SITE_NOT_CHARTED`: One or more sites have no reading.
    #
    #   * `VALUE_NOT_CHARTED`: A dictated value or charting instruction was
    #     not charted, for example because the value was out of range or not
    #     valid at its position.
    #
    #   * `READING_COUNT_MISMATCH`: The number of dictated values did not
    #     match the number of open sites. The values were charted as
    #     dictated.
    #
    #   * `LINE_UNCLEAR`: A line of dictation could not be interpreted and
    #     was not charted.
    #
    #   * `TOOTH_UNCLEAR`: A line of dictation did not identify the tooth
    #     and was not charted.
    #
    #   * `MISSING_TOOTH_CONFLICT`: The dictation conflicts with a tooth
    #     marked as missing.
    #
    #   * `MEASUREMENT_NOT_CHARTED`: The dictation included a measurement
    #     that the chart does not record, such as plaque, calculus, or the
    #     mucogingival junction.
    #
    #   * `SESSION_ISSUE`: The exam setup could not be used and all teeth
    #     were assumed to be present, or the earlier chart could not be
    #     restored and charting restarted.
    #   @return [String]
    #
    # @!attribute [rw] tooth_number
    #   The tooth that the item refers to.
    #   @return [Integer]
    #
    # @!attribute [rw] sites
    #   The probing sites of that tooth that the item refers to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/PeriodontalReview AWS API Documentation
    #
    class PeriodontalReview < Struct.new(
      :reason,
      :tooth_number,
      :sites)
      SENSITIVE = []
      include Aws::Structure
    end

    # The measurements at one probing site of a tooth.
    #
    # @!attribute [rw] site
    #   The probing site. The following values are valid:
    #
    #   * `DB`: Distobuccal.
    #
    #   * `B`: Buccal.
    #
    #   * `MB`: Mesiobuccal.
    #
    #   * `DL`: Distolingual.
    #
    #   * `L`: Lingual.
    #
    #   * `ML`: Mesiolingual.
    #   @return [String]
    #
    # @!attribute [rw] probing_depth
    #   The probing depth, in millimeters. The value ranges from 0 to 15.
    #   @return [Integer]
    #
    # @!attribute [rw] recession
    #   The gingival recession, in millimeters. The value ranges from -5 to
    #   15. For example, `-1` represents "plus one."
    #   @return [Integer]
    #
    # @!attribute [rw] bleeding
    #   Specifies whether the site bled during probing.
    #   @return [Boolean]
    #
    # @!attribute [rw] suppuration
    #   Specifies whether suppuration was present at the site.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/PeriodontalSite AWS API Documentation
    #
    class PeriodontalSite < Struct.new(
      :site,
      :probing_depth,
      :recession,
      :bleeding,
      :suppuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The chart for one tooth.
    #
    # @!attribute [rw] tooth_number
    #   The tooth number in the Universal Numbering System. The value ranges
    #   from 1 to 32.
    #   @return [Integer]
    #
    # @!attribute [rw] missing
    #   Specifies whether the tooth is missing.
    #   @return [Boolean]
    #
    # @!attribute [rw] mobility
    #   The tooth mobility grade. The value ranges from 0 to 3.
    #   @return [Integer]
    #
    # @!attribute [rw] furcation
    #   The furcation involvement class. The value ranges from 0 to 3.
    #   @return [Integer]
    #
    # @!attribute [rw] sites
    #   The probing sites that have a recorded measurement, in the order
    #   `MB`, `B`, `DB`, `ML`, `L`, `DL`.
    #   @return [Array<Types::PeriodontalSite>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/PeriodontalTooth AWS API Documentation
    #
    class PeriodontalTooth < Struct.new(
      :tooth_number,
      :missing,
      :mobility,
      :furcation,
      :sites)
      SENSITIVE = [:sites]
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

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The clinical text to generate medical codes for, such as a clinical
    #   note.
    #   @return [String]
    #
    # @!attribute [rw] patient_context
    #   Patient context for the job. Providing this information can improve
    #   the accuracy of the medical codes.
    #   @return [Types::MedicalCodesPatientContext]
    #
    # @!attribute [rw] encounter_context
    #   Encounter context for the job. Providing this information can
    #   improve the accuracy of the medical codes.
    #   @return [Types::MedicalCodesEncounterContext]
    #
    # @!attribute [rw] output_data_config
    #   The output configuration for the job.
    #   @return [Types::MedicalCodingOutputDataConfig]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of an ACTIVE medical coding dataset in the
    #   Domain to code against. If you don't specify a dataset, the job
    #   uses the general medical coding knowledge base.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/StartMedicalCodingJobRequest AWS API Documentation
    #
    class StartMedicalCodingJobRequest < Struct.new(
      :domain_id,
      :text,
      :patient_context,
      :encounter_context,
      :output_data_config,
      :dataset_id,
      :client_token)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the medical coding job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the medical coding job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the medical coding job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/StartMedicalCodingJobResponse AWS API Documentation
    #
    class StartMedicalCodingJobResponse < Struct.new(
      :job_arn,
      :job_id,
      :creation_time)
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
    #   The output stream that contains transcript events, periodontal chart
    #   events, checklist events, and errors.
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

    # @!attribute [rw] domain_id
    #   The unique identifier of the parent Domain.
    #   @return [String]
    #
    # @!attribute [rw] artifact_source_id
    #   The identifier of the artifact source. For a clinical document, this
    #   is the session ID. For a set of medical codes, this is the medical
    #   coding job ID.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The unique identifier of the Subscription.
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   The type of artifact that you submit feedback for. The following
    #   values are valid:
    #
    #   * CLINICAL\_DOC is the clinical document generated for an ambient
    #     documentation session.
    #
    #   * MEDICAL\_CODES is the set of medical codes generated by a medical
    #     coding job.
    #   @return [String]
    #
    # @!attribute [rw] signed_artifact_s3_uri
    #   The Amazon Simple Storage Service (Amazon S3) URI of the final
    #   artifact that the clinician signed.
    #   @return [String]
    #
    # @!attribute [rw] generated_artifact_s3_uri
    #   The Amazon S3 URI of the clinical document or set of medical codes
    #   that Amazon Connect Health generated.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional comments about the feedback.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If this token matches
    #   a previous request, the service ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/SubmitFeedbackRequest AWS API Documentation
    #
    class SubmitFeedbackRequest < Struct.new(
      :domain_id,
      :artifact_source_id,
      :subscription_id,
      :artifact_type,
      :signed_artifact_s3_uri,
      :generated_artifact_s3_uri,
      :comments,
      :client_token)
      SENSITIVE = [:comments]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connecthealth-2025-01-29/SubmitFeedbackResponse AWS API Documentation
    #
    class SubmitFeedbackResponse < Aws::EmptyStructure; end

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
          :binary_audio_event,
          :session_control_event,
          :configuration_event
        ]
      end

    end

    # The output stream of a listening session. It carries transcript
    # events, periodontal chart events, checklist events, and errors.
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
          :validation_exception,
          :periodontal_chart_event,
          :checklist_event
        ]
      end

    end

  end
end

