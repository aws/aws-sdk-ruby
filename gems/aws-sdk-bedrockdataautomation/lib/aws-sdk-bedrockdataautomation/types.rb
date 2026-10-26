# frozen_string_literal: true

# This is generated code!

module Aws::BedrockDataAutomation
  # This module contains the types returned by client operations.
  module Types

    # This exception is thrown when a request is denied per access permissions
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Category of Audio Extraction
    # @!attribute state
    #   State
    #   @return [String]
    # @!attribute types
    #   List of Audio Extraction Category Type
    #   @return [Array<String>]
    # @!attribute type_configuration
    #   Configuration for different audio extraction category types
    #   @return [Types::AudioExtractionCategoryTypeConfiguration]
    class AudioExtractionCategory < Struct.new(
      nil,
      :state,
      :types,
      :type_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for different audio extraction category types
    # @!attribute transcript
    #   Configuration for transcript related features
    #   @return [Types::TranscriptConfiguration]
    class AudioExtractionCategoryTypeConfiguration < Struct.new(
      nil,
      :transcript,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Optional configuration for audio language settings
    # @!attribute input_languages
    #   List of supported audio languages
    #   @return [Array<String>]
    # @!attribute generative_output_language
    #   Configuration for Audio output language
    #   @return [String]
    # @!attribute identify_multiple_languages
    #   Enable multiple language identification in audio
    #   @return [Boolean]
    class AudioLanguageConfiguration < Struct.new(
      nil,
      :input_languages,
      :generative_output_language,
      :identify_multiple_languages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Override Configuration of Audio
    # @!attribute modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    # @!attribute language_configuration
    #   Optional configuration for audio language settings
    #   @return [Types::AudioLanguageConfiguration]
    # @!attribute sensitive_data_configuration
    #   Configuration for sensitive data detection and redaction
    #   @return [Types::SensitiveDataConfiguration]
    class AudioOverrideConfiguration < Struct.new(
      nil,
      :modality_processing,
      :language_configuration,
      :sensitive_data_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Extraction Configuration of Audio
    # @!attribute category
    #   Category of Audio Extraction
    #   @return [Types::AudioExtractionCategory]
    class AudioStandardExtraction < Struct.new(
      nil,
      :category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Generative Field Configuration of Audio
    # @!attribute state
    #   State
    #   @return [String]
    # @!attribute types
    #   List of Audio Standard Generative Field Type
    #   @return [Array<String>]
    class AudioStandardGenerativeField < Struct.new(
      nil,
      :state,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Output Configuration of Audio
    # @!attribute extraction
    #   Standard Extraction Configuration of Audio
    #   @return [Types::AudioStandardExtraction]
    # @!attribute generative_field
    #   Standard Generative Field Configuration of Audio
    #   @return [Types::AudioStandardGenerativeField]
    class AudioStandardOutputConfiguration < Struct.new(
      nil,
      :extraction,
      :generative_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains the information of a Blueprint.
    # @!attribute blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    # @!attribute schema
    #   Schema of the blueprint
    #   @return [String]
    # @!attribute type
    #   Type
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute last_modified_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute blueprint_name
    #   Name of the Blueprint
    #   @return [String]
    # @!attribute blueprint_version
    #   Blueprint Version
    #   @return [String]
    # @!attribute blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    # @!attribute kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    # @!attribute kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String, String>]
    # @!attribute optimization_samples
    #   List of Blueprint Optimization Samples
    #   @return [Array<Types::BlueprintOptimizationSample>]
    # @!attribute optimization_time
    #   Time Stamp
    #   @return [Time]
    class Blueprint < Struct.new(
      nil,
      :blueprint_arn,
      :schema,
      :type,
      :creation_time,
      :last_modified_time,
      :blueprint_name,
      :blueprint_version,
      :blueprint_stage,
      :kms_key_id,
      :kms_encryption_context,
      :optimization_samples,
      :optimization_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Blueprint Filter
    # @!attribute blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    # @!attribute blueprint_version
    #   Blueprint Version
    #   @return [String]
    # @!attribute blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    class BlueprintFilter < Struct.new(
      nil,
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Blueprint Item
    # @!attribute blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    # @!attribute blueprint_version
    #   Blueprint Version
    #   @return [String]
    # @!attribute blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    class BlueprintItem < Struct.new(
      nil,
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Structure for single blueprint entity.
    # @!attribute blueprint_arn
    #   Arn of blueprint.
    #   @return [String]
    # @!attribute stage
    #   Stage of blueprint.
    #   @return [String]
    class BlueprintOptimizationObject < Struct.new(
      nil,
      :blueprint_arn,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Blueprint Optimization Output configuration.
    # @!attribute s3_object
    #   S3 object.
    #   @return [Types::S3Object]
    class BlueprintOptimizationOutputConfiguration < Struct.new(
      nil,
      :s3_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Blueprint Recommendation Sample
    # @!attribute asset_s3_object
    #   S3 Object of the asset
    #   @return [Types::S3Object]
    # @!attribute ground_truth_s3_object
    #   Ground truth for the Blueprint and Asset combination
    #   @return [Types::S3Object]
    class BlueprintOptimizationSample < Struct.new(
      nil,
      :asset_s3_object,
      :ground_truth_s3_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a Blueprint
    # @!attribute blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    # @!attribute blueprint_version
    #   Blueprint Version
    #   @return [String]
    # @!attribute blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    # @!attribute blueprint_name
    #   Name of the Blueprint
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute last_modified_time
    #   Time Stamp
    #   @return [Time]
    class BlueprintSummary < Struct.new(
      nil,
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage,
      :blueprint_name,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Channel labeling configuration
    # @!attribute state
    #   State
    #   @return [String]
    class ChannelLabelingConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception is thrown when there is a conflict performing an operation
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # CopyBlueprintStage Request
    # @!attribute blueprint_arn
    #   Blueprint to be copied
    #   @return [String]
    # @!attribute source_stage
    #   Source stage to copy from
    #   @return [String]
    # @!attribute target_stage
    #   Target stage to copy to
    #   @return [String]
    # @!attribute client_token
    #   Client token for idempotency
    #   @return [String]
    class CopyBlueprintStageRequest < Struct.new(
      nil,
      :blueprint_arn,
      :source_stage,
      :target_stage,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # CopyBlueprintStage Response
    class CopyBlueprintStageResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create Blueprint Request
    # @!attribute blueprint_name
    #   Name of the Blueprint
    #   @return [String]
    # @!attribute type
    #   Type
    #   @return [String]
    # @!attribute blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    # @!attribute schema
    #   Schema of the blueprint
    #   @return [String]
    # @!attribute client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    # @!attribute encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class CreateBlueprintRequest < Struct.new(
      nil,
      :blueprint_name,
      :type,
      :blueprint_stage,
      :schema,
      :client_token,
      :encryption_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create Blueprint Response
    # @!attribute blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    class CreateBlueprintResponse < Struct.new(
      nil,
      :blueprint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create Blueprint Version Request
    # @!attribute blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    # @!attribute client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    class CreateBlueprintVersionRequest < Struct.new(
      nil,
      :blueprint_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create Blueprint Version Response
    # @!attribute blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    class CreateBlueprintVersionResponse < Struct.new(
      nil,
      :blueprint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create DataAutomationLibrary Request
    # @!attribute library_name
    #   Name of the DataAutomationLibrary
    #   @return [String]
    # @!attribute library_description
    #   Description of the DataAutomationLibrary
    #   @return [String]
    # @!attribute client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    # @!attribute encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class CreateDataAutomationLibraryRequest < Struct.new(
      nil,
      :library_name,
      :library_description,
      :client_token,
      :encryption_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create DataAutomationLibrary Response
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute status
    #   Status of DataAutomationLibrary
    #   @return [String]
    class CreateDataAutomationLibraryResponse < Struct.new(
      nil,
      :library_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create DataAutomationProject Request
    # @!attribute project_name
    #   Name of the DataAutomationProject
    #   @return [String]
    # @!attribute project_description
    #   Description of the DataAutomationProject
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    # @!attribute project_type
    #   Type of the DataAutomationProject
    #   @return [String]
    # @!attribute standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    # @!attribute custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
    # @!attribute data_automation_library_configuration
    #   DataAutomation Library configuration
    #   @return [Types::DataAutomationLibraryConfiguration]
    # @!attribute client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    # @!attribute encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class CreateDataAutomationProjectRequest < Struct.new(
      nil,
      :project_name,
      :project_description,
      :project_stage,
      :project_type,
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
      :data_automation_library_configuration,
      :client_token,
      :encryption_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create DataAutomationProject Response
    # @!attribute project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    # @!attribute status
    #   Status of Data Automation Project
    #   @return [String]
    class CreateDataAutomationProjectResponse < Struct.new(
      nil,
      :project_arn,
      :project_stage,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Custom output configuration
    # @!attribute blueprints
    #   List of Blueprint Item
    #   @return [Array<Types::BlueprintItem>]
    # @!attribute document
    #   Custom Configuration of Document
    #   @return [Types::DocumentCustomOutputConfiguration]
    class CustomOutputConfiguration < Struct.new(
      nil,
      :blueprints,
      :document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains the information of a DataAutomationLibrary.
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute library_name
    #   Name of the DataAutomationLibrary
    #   @return [String]
    # @!attribute library_description
    #   Description of the DataAutomationLibrary
    #   @return [String]
    # @!attribute status
    #   Status of DataAutomationLibrary
    #   @return [String]
    # @!attribute entity_types
    #   List of info for each entity type in the DataAutomationLibrary
    #   @return [Array<Types::EntityTypeInfo>]
    # @!attribute kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    # @!attribute kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String, String>]
    class DataAutomationLibrary < Struct.new(
      nil,
      :library_arn,
      :creation_time,
      :library_name,
      :library_description,
      :status,
      :entity_types,
      :kms_key_id,
      :kms_encryption_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # DataAutomation Library configuration
    # @!attribute libraries
    #   List of DataAutomationLibrary Items
    #   @return [Array<Types::DataAutomationLibraryItem>]
    class DataAutomationLibraryConfiguration < Struct.new(
      nil,
      :libraries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summarized information about an entity
    # @!attribute vocabulary
    #   Summary of a Vocabulary entity
    #   @return [Types::VocabularyEntitySummary]
    class DataAutomationLibraryEntitySummary < Struct.new(
      :vocabulary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Vocabulary < DataAutomationLibraryEntitySummary; end
      class Unknown < DataAutomationLibraryEntitySummary; end
    end

    # Data Automation Library Filter
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    class DataAutomationLibraryFilter < Struct.new(
      nil,
      :library_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains the information of a DataAutomationLibraryIngestionJob
    # @!attribute job_arn
    #   ARN of the DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute creation_time
    #   Timestamp when the DataAutomationLibraryIngestionJob was created
    #   @return [Time]
    # @!attribute entity_type
    #   The entity type associated with DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute operation_type
    #   The operation associated with DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute job_status
    #   The status of the DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute output_configuration
    #   Output configuration of DataAutomationLibraryIngestionJob
    #   @return [Types::OutputConfiguration]
    # @!attribute completion_time
    #   Timestamp when the DataAutomationLibraryIngestionJob was completed
    #   @return [Time]
    # @!attribute error_message
    #   Error message
    #   @return [String]
    # @!attribute error_type
    #   Error type
    #   @return [String]
    class DataAutomationLibraryIngestionJob < Struct.new(
      nil,
      :job_arn,
      :creation_time,
      :entity_type,
      :operation_type,
      :job_status,
      :output_configuration,
      :completion_time,
      :error_message,
      :error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a DataAutomationLibraryIngestionJob
    # @!attribute job_arn
    #   ARN of the DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute job_status
    #   Status of DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute entity_type
    #   Entity types supported in DataAutomationLibraries
    #   @return [String]
    # @!attribute operation_type
    #   DataAutomationLibraryIngestionJob operation type
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute completion_time
    #   Time Stamp
    #   @return [Time]
    class DataAutomationLibraryIngestionJobSummary < Struct.new(
      nil,
      :job_arn,
      :job_status,
      :entity_type,
      :operation_type,
      :creation_time,
      :completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # DataAutomationLibrary Item
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    class DataAutomationLibraryItem < Struct.new(
      nil,
      :library_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a DataAutomationLibrary
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute library_name
    #   Name of the DataAutomationLibrary
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    class DataAutomationLibrarySummary < Struct.new(
      nil,
      :library_arn,
      :library_name,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Contains the information of a DataAutomationProject.
    # @!attribute project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute last_modified_time
    #   Time Stamp
    #   @return [Time]
    # @!attribute project_name
    #   Name of the DataAutomationProject
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    # @!attribute project_type
    #   Type of the DataAutomationProject
    #   @return [String]
    # @!attribute project_description
    #   Description of the DataAutomationProject
    #   @return [String]
    # @!attribute standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    # @!attribute custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
    # @!attribute data_automation_library_configuration
    #   DataAutomation Library configuration
    #   @return [Types::DataAutomationLibraryConfiguration]
    # @!attribute status
    #   Status of Data Automation Project
    #   @return [String]
    # @!attribute kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    # @!attribute kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String, String>]
    class DataAutomationProject < Struct.new(
      nil,
      :project_arn,
      :creation_time,
      :last_modified_time,
      :project_name,
      :project_stage,
      :project_type,
      :project_description,
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
      :data_automation_library_configuration,
      :status,
      :kms_key_id,
      :kms_encryption_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Data Automation Project Filter
    # @!attribute project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    class DataAutomationProjectFilter < Struct.new(
      nil,
      :project_arn,
      :project_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a DataAutomationProject
    # @!attribute project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    # @!attribute project_type
    #   Type of the DataAutomationProject
    #   @return [String]
    # @!attribute project_name
    #   Name of the DataAutomationProject
    #   @return [String]
    # @!attribute creation_time
    #   Time Stamp
    #   @return [Time]
    class DataAutomationProjectSummary < Struct.new(
      nil,
      :project_arn,
      :project_stage,
      :project_type,
      :project_name,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delete Blueprint Request
    # @!attribute blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    # @!attribute blueprint_version
    #   Optional field to delete a specific Blueprint version
    #   @return [String]
    class DeleteBlueprintRequest < Struct.new(
      nil,
      :blueprint_arn,
      :blueprint_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delete Blueprint Response
    class DeleteBlueprintResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delete DataAutomationLibrary Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    class DeleteDataAutomationLibraryRequest < Struct.new(
      nil,
      :library_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delete DataAutomationLibrary Response
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute status
    #   Status of DataAutomationLibrary
    #   @return [String]
    class DeleteDataAutomationLibraryResponse < Struct.new(
      nil,
      :library_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delete DataAutomationProject Request
    # @!attribute project_arn
    #   ARN generated at the server side when a DataAutomationProject is created
    #   @return [String]
    class DeleteDataAutomationProjectRequest < Struct.new(
      nil,
      :project_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delete DataAutomationProject Response
    # @!attribute project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    # @!attribute status
    #   Status of Data Automation Project
    #   @return [String]
    class DeleteDataAutomationProjectResponse < Struct.new(
      nil,
      :project_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input for entities needed to be deleted
    # @!attribute entity_ids
    #   List of EntityId
    #   @return [Array<String>]
    class DeleteEntitiesInfo < Struct.new(
      nil,
      :entity_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Bounding Box Configuration of Document Extraction
    # @!attribute state
    #   State
    #   @return [String]
    class DocumentBoundingBox < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Custom Configuration of Document
    # @!attribute fallback_blueprints
    #   List of Fallback Blueprint Items
    #   @return [Array<Types::BlueprintItem>]
    class DocumentCustomOutputConfiguration < Struct.new(
      nil,
      :fallback_blueprints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Granularity of Document Extraction
    # @!attribute types
    #   List of Document Extraction Granularity Type
    #   @return [Array<String>]
    class DocumentExtractionGranularity < Struct.new(
      nil,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Additional File Format of Document Output
    # @!attribute state
    #   State
    #   @return [String]
    class DocumentOutputAdditionalFileFormat < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output Format of Document
    # @!attribute text_format
    #   Text Format of Document Output
    #   @return [Types::DocumentOutputTextFormat]
    # @!attribute additional_file_format
    #   Additional File Format of Document Output
    #   @return [Types::DocumentOutputAdditionalFileFormat]
    class DocumentOutputFormat < Struct.new(
      nil,
      :text_format,
      :additional_file_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Text Format of Document Output
    # @!attribute types
    #   List of Document Output Text Format Type
    #   @return [Array<String>]
    class DocumentOutputTextFormat < Struct.new(
      nil,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Override Configuration of Document
    # @!attribute splitter
    #   Configuration of Splitter
    #   @return [Types::SplitterConfiguration]
    # @!attribute modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    # @!attribute sensitive_data_configuration
    #   Configuration for sensitive data detection and redaction
    #   @return [Types::SensitiveDataConfiguration]
    class DocumentOverrideConfiguration < Struct.new(
      nil,
      :splitter,
      :modality_processing,
      :sensitive_data_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Extraction Configuration of Document
    # @!attribute granularity
    #   Granularity of Document Extraction
    #   @return [Types::DocumentExtractionGranularity]
    # @!attribute bounding_box
    #   Bounding Box Configuration of Document Extraction
    #   @return [Types::DocumentBoundingBox]
    class DocumentStandardExtraction < Struct.new(
      nil,
      :granularity,
      :bounding_box,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Generative Field Configuration of Document
    # @!attribute state
    #   State
    #   @return [String]
    class DocumentStandardGenerativeField < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Output Configuration of Document
    # @!attribute extraction
    #   Standard Extraction Configuration of Document
    #   @return [Types::DocumentStandardExtraction]
    # @!attribute generative_field
    #   Standard Generative Field Configuration of Document
    #   @return [Types::DocumentStandardGenerativeField]
    # @!attribute output_format
    #   Output Format of Document
    #   @return [Types::DocumentOutputFormat]
    class DocumentStandardOutputConfiguration < Struct.new(
      nil,
      :extraction,
      :generative_field,
      :output_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # KMS Encryption Configuration
    # @!attribute kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    # @!attribute kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String, String>]
    class EncryptionConfiguration < Struct.new(
      nil,
      :kms_key_id,
      :kms_encryption_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Detailed information about an entity
    # @!attribute vocabulary
    #   Vocabulary entity with detailed information
    #   @return [Types::VocabularyEntity]
    class EntityDetails < Struct.new(
      :vocabulary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Vocabulary < EntityDetails; end
      class Unknown < EntityDetails; end
    end

    # Information about an entity type in the DataAutomationLibrary
    # @!attribute entity_type
    #   Entity types supported in DataAutomationLibraries
    #   @return [String]
    # @!attribute entity_metadata
    #   JSON string representing relevant metadata for the entity type
    #   @return [String]
    class EntityTypeInfo < Struct.new(
      nil,
      :entity_type,
      :entity_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Event bridge configuration.
    # @!attribute event_bridge_enabled
    #   Event bridge flag.
    #   @return [Boolean]
    class EventBridgeConfiguration < Struct.new(
      nil,
      :event_bridge_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Structure for request of GetBlueprintOptimizationStatus API.
    # @!attribute invocation_arn
    #   Invocation arn.
    #   @return [String]
    class GetBlueprintOptimizationStatusRequest < Struct.new(
      nil,
      :invocation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Response of GetBlueprintOptimizationStatus API.
    # @!attribute status
    #   Job Status.
    #   @return [String]
    # @!attribute error_type
    #   Error Type.
    #   @return [String]
    # @!attribute error_message
    #   Error Message.
    #   @return [String]
    # @!attribute output_configuration
    #   Output configuration.
    #   @return [Types::BlueprintOptimizationOutputConfiguration]
    class GetBlueprintOptimizationStatusResponse < Struct.new(
      nil,
      :status,
      :error_type,
      :error_message,
      :output_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get Blueprint Request
    # @!attribute blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    # @!attribute blueprint_version
    #   Optional field to get a specific Blueprint version
    #   @return [String]
    # @!attribute blueprint_stage
    #   Optional field to get a specific Blueprint stage
    #   @return [String]
    class GetBlueprintRequest < Struct.new(
      nil,
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get Blueprint Response
    # @!attribute blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    class GetBlueprintResponse < Struct.new(
      nil,
      :blueprint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationLibraryEntity Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute entity_type
    #   The entity type for which the entity is requested
    #   @return [String]
    # @!attribute entity_id
    #   Unique identifier for the entity
    #   @return [String]
    class GetDataAutomationLibraryEntityRequest < Struct.new(
      nil,
      :library_arn,
      :entity_type,
      :entity_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationLibraryEntity Response
    # @!attribute entity
    #   Detailed information about the entity
    #   @return [Types::EntityDetails]
    class GetDataAutomationLibraryEntityResponse < Struct.new(
      nil,
      :entity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationLibraryIngestionJob Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute job_arn
    #   ARN of the DataAutomationLibraryIngestionJob
    #   @return [String]
    class GetDataAutomationLibraryIngestionJobRequest < Struct.new(
      nil,
      :library_arn,
      :job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationLibraryIngestionJob Response
    # @!attribute job
    #   Contains the information of a library ingestion job
    #   @return [Types::DataAutomationLibraryIngestionJob]
    class GetDataAutomationLibraryIngestionJobResponse < Struct.new(
      nil,
      :job,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationLibrary Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    class GetDataAutomationLibraryRequest < Struct.new(
      nil,
      :library_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationLibrary Response
    # @!attribute library
    #   Contains the information of a DataAutomationLibrary.
    #   @return [Types::DataAutomationLibrary]
    class GetDataAutomationLibraryResponse < Struct.new(
      nil,
      :library,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationProject Request
    # @!attribute project_arn
    #   ARN generated at the server side when a DataAutomationProject is created
    #   @return [String]
    # @!attribute project_stage
    #   Optional field to delete a specific DataAutomationProject stage
    #   @return [String]
    class GetDataAutomationProjectRequest < Struct.new(
      nil,
      :project_arn,
      :project_stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Get DataAutomationProject Response
    # @!attribute project
    #   Contains the information of a DataAutomationProject.
    #   @return [Types::DataAutomationProject]
    class GetDataAutomationProjectResponse < Struct.new(
      nil,
      :project,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Bounding Box Configuration of Image Extraction
    # @!attribute state
    #   State
    #   @return [String]
    class ImageBoundingBox < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Category of Image Extraction
    # @!attribute state
    #   State
    #   @return [String]
    # @!attribute types
    #   List of Image Extraction Category
    #   @return [Array<String>]
    class ImageExtractionCategory < Struct.new(
      nil,
      :state,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Override Configuration of Image
    # @!attribute modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    # @!attribute sensitive_data_configuration
    #   Configuration for sensitive data detection and redaction
    #   @return [Types::SensitiveDataConfiguration]
    class ImageOverrideConfiguration < Struct.new(
      nil,
      :modality_processing,
      :sensitive_data_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Extraction Configuration of Image
    # @!attribute category
    #   Category of Image Extraction
    #   @return [Types::ImageExtractionCategory]
    # @!attribute bounding_box
    #   Bounding Box Configuration of Image Extraction
    #   @return [Types::ImageBoundingBox]
    class ImageStandardExtraction < Struct.new(
      nil,
      :category,
      :bounding_box,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Generative Field Configuration of Image
    # @!attribute state
    #   State
    #   @return [String]
    # @!attribute types
    #   List of Image Standard Generative Field Type
    #   @return [Array<String>]
    class ImageStandardGenerativeField < Struct.new(
      nil,
      :state,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Output Configuration of Image
    # @!attribute extraction
    #   Standard Extraction Configuration of Image
    #   @return [Types::ImageStandardExtraction]
    # @!attribute generative_field
    #   Standard Generative Field Configuration of Image
    #   @return [Types::ImageStandardGenerativeField]
    class ImageStandardOutputConfiguration < Struct.new(
      nil,
      :extraction,
      :generative_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input payload structure definition
    # @!attribute upsert_entities_info
    #   List of UpsertEntityInfo for upserting data in a DataAutomationLibraryIngestionJob
    #   @return [Array<Types::UpsertEntityInfo>]
    # @!attribute delete_entities_info
    #   Input for entities needed to be deleted
    #   @return [Types::DeleteEntitiesInfo]
    class InlinePayload < Struct.new(
      :upsert_entities_info,
      :delete_entities_info,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UpsertEntitiesInfo < InlinePayload; end
      class DeleteEntitiesInfo < InlinePayload; end
      class Unknown < InlinePayload; end
    end

    # Input configuration for DataAutomationLibraryIngestionJob
    # @!attribute s3_object
    #   S3 object
    #   @return [Types::S3Object]
    # @!attribute inline_payload
    #   Input Payload
    #   @return [Types::InlinePayload]
    class InputConfiguration < Struct.new(
      nil,
      :s3_object,
      :inline_payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception is thrown if there was an unexpected error during processing of request
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Invoke Blueprint Optimization Async Request
    # @!attribute blueprint
    #   Blueprint to be optimized
    #   @return [Types::BlueprintOptimizationObject]
    # @!attribute samples
    #   List of Blueprint Optimization Samples
    #   @return [Array<Types::BlueprintOptimizationSample>]
    # @!attribute output_configuration
    #   Output configuration where the results should be placed
    #   @return [Types::BlueprintOptimizationOutputConfiguration]
    # @!attribute data_automation_profile_arn
    #   Data automation profile ARN
    #   @return [String]
    # @!attribute encryption_configuration
    #   Encryption configuration.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tags
    #   List of tags.
    #   @return [Array<Types::Tag>]
    class InvokeBlueprintOptimizationAsyncRequest < Struct.new(
      nil,
      :blueprint,
      :samples,
      :output_configuration,
      :data_automation_profile_arn,
      :encryption_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Invoke Blueprint Optimization Async Response
    # @!attribute invocation_arn
    #   ARN of the blueprint optimization job
    #   @return [String]
    class InvokeBlueprintOptimizationAsyncResponse < Struct.new(
      nil,
      :invocation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Invoke DataAutomationLibraryIngestionJob Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute client_token
    #   Idempotency token
    #   @return [String]
    # @!attribute input_configuration
    #   Input configuration of DataAutomationLibraryIngestionJob request
    #   @return [Types::InputConfiguration]
    # @!attribute entity_type
    #   The entity type for which DataAutomationLibraryIngestionJob is being run
    #   @return [String]
    # @!attribute operation_type
    #   The operation to be performed by DataAutomationLibraryIngestionJob
    #   @return [String]
    # @!attribute output_configuration
    #   Output configuration of DataAutomationLibraryIngestionJob
    #   @return [Types::OutputConfiguration]
    # @!attribute notification_configuration
    #   Notification configuration.
    #   @return [Types::NotificationConfiguration]
    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class InvokeDataAutomationLibraryIngestionJobRequest < Struct.new(
      nil,
      :library_arn,
      :client_token,
      :input_configuration,
      :entity_type,
      :operation_type,
      :output_configuration,
      :notification_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Invoke DataAutomationLibraryIngestionJob Response
    # @!attribute job_arn
    #   ARN of the DataAutomationLibraryIngestionJob
    #   @return [String]
    class InvokeDataAutomationLibraryIngestionJobResponse < Struct.new(
      nil,
      :job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List Blueprint Request
    # @!attribute blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    # @!attribute resource_owner
    #   Resource Owner
    #   @return [String]
    # @!attribute blueprint_stage_filter
    #   Blueprint Stage filter
    #   @return [String]
    # @!attribute max_results
    #   Max Results
    #   @return [Integer]
    # @!attribute next_token
    #   Pagination token
    #   @return [String]
    # @!attribute project_filter
    #   Data Automation Project Filter
    #   @return [Types::DataAutomationProjectFilter]
    class ListBlueprintsRequest < Struct.new(
      nil,
      :blueprint_arn,
      :resource_owner,
      :blueprint_stage_filter,
      :max_results,
      :next_token,
      :project_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List Blueprint Response
    # @!attribute blueprints
    #   List of Blueprints
    #   @return [Array<Types::BlueprintSummary>]
    # @!attribute next_token
    #   Pagination token
    #   @return [String]
    class ListBlueprintsResponse < Struct.new(
      nil,
      :blueprints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationLibraries Request
    # @!attribute max_results
    #   Max Results
    #   @return [Integer]
    # @!attribute next_token
    #   Pagination token
    #   @return [String]
    # @!attribute project_filter
    #   Data Automation Project Filter
    #   @return [Types::DataAutomationProjectFilter]
    class ListDataAutomationLibrariesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :project_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationLibraries Response
    # @!attribute libraries
    #   List of DataAutomationLibrarySummary objects
    #   @return [Array<Types::DataAutomationLibrarySummary>]
    # @!attribute next_token
    #   Pagination token
    #   @return [String]
    class ListDataAutomationLibrariesResponse < Struct.new(
      nil,
      :libraries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationLibraryEntities Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute entity_type
    #   The entity type for which the entity list is requested
    #   @return [String]
    # @!attribute max_results
    #   Max Results
    #   @return [Integer]
    # @!attribute next_token
    #   Pagination token for retrieving the next set of results
    #   @return [String]
    class ListDataAutomationLibraryEntitiesRequest < Struct.new(
      nil,
      :library_arn,
      :entity_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationLibraryEntities Response
    # @!attribute entities
    #   List of entities
    #   @return [Array<Types::DataAutomationLibraryEntitySummary>]
    # @!attribute next_token
    #   Pagination token for retrieving the next set of results
    #   @return [String]
    class ListDataAutomationLibraryEntitiesResponse < Struct.new(
      nil,
      :entities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationLibraryIngestionJobs Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute max_results
    #   Max Results
    #   @return [Integer]
    # @!attribute next_token
    #   Pagination token for retrieving the next set of results
    #   @return [String]
    class ListDataAutomationLibraryIngestionJobsRequest < Struct.new(
      nil,
      :library_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationLibraryIngestionJobs Response
    # @!attribute jobs
    #   List of data automation library ingestion jobs
    #   @return [Array<Types::DataAutomationLibraryIngestionJobSummary>]
    # @!attribute next_token
    #   Pagination token for retrieving the next set of results
    #   @return [String]
    class ListDataAutomationLibraryIngestionJobsResponse < Struct.new(
      nil,
      :jobs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationProject Request
    # @!attribute max_results
    #   Max Results
    #   @return [Integer]
    # @!attribute next_token
    #   Pagination token
    #   @return [String]
    # @!attribute project_stage_filter
    #   Project Stage filter
    #   @return [String]
    # @!attribute blueprint_filter
    #   Blueprint Filter
    #   @return [Types::BlueprintFilter]
    # @!attribute resource_owner
    #   Resource Owner
    #   @return [String]
    # @!attribute library_filter
    #   Data Automation Library Filter
    #   @return [Types::DataAutomationLibraryFilter]
    class ListDataAutomationProjectsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :project_stage_filter,
      :blueprint_filter,
      :resource_owner,
      :library_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # List DataAutomationProject Response
    # @!attribute projects
    #   List of DataAutomationProjectSummary
    #   @return [Array<Types::DataAutomationProjectSummary>]
    # @!attribute next_token
    #   Pagination token
    #   @return [String]
    class ListDataAutomationProjectsResponse < Struct.new(
      nil,
      :projects,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration to enable/disable processing of modality
    # @!attribute state
    #   State
    #   @return [String]
    class ModalityProcessingConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for routing file type to desired modality
    # @!attribute jpeg
    #   Desired Modality types
    #   @return [String]
    # @!attribute png
    #   Desired Modality types
    #   @return [String]
    # @!attribute mp4
    #   Desired Modality types
    #   @return [String]
    # @!attribute mov
    #   Desired Modality types
    #   @return [String]
    class ModalityRoutingConfiguration < Struct.new(
      nil,
      :jpeg,
      :png,
      :mp4,
      :mov,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Notification configuration.
    # @!attribute event_bridge_configuration
    #   Event bridge configuration.
    #   @return [Types::EventBridgeConfiguration]
    class NotificationConfiguration < Struct.new(
      nil,
      :event_bridge_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output configuration for DataAutomationLibraryIngestionJob
    # @!attribute s3_uri
    #   S3 Uri
    #   @return [String]
    class OutputConfiguration < Struct.new(
      nil,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Override configuration
    # @!attribute document
    #   Override Configuration of Document
    #   @return [Types::DocumentOverrideConfiguration]
    # @!attribute image
    #   Override Configuration of Image
    #   @return [Types::ImageOverrideConfiguration]
    # @!attribute video
    #   Override Configuration of Video
    #   @return [Types::VideoOverrideConfiguration]
    # @!attribute audio
    #   Override Configuration of Audio
    #   @return [Types::AudioOverrideConfiguration]
    # @!attribute modality_routing
    #   Configuration for routing file type to desired modality
    #   @return [Types::ModalityRoutingConfiguration]
    class OverrideConfiguration < Struct.new(
      nil,
      :document,
      :image,
      :video,
      :audio,
      :modality_routing,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for PII entities detection and redaction
    # @!attribute pii_entity_types
    #   Types of PII entities to detect
    #   @return [Array<String>]
    # @!attribute redaction_mask_mode
    #   Mode for redacting detected PII
    #   @return [String]
    class PIIEntitiesConfiguration < Struct.new(
      nil,
      :pii_entity_types,
      :redaction_mask_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Phrase structure for vocabulary
    # @!attribute text
    #   Text content of the phrase
    #   @return [String]
    # @!attribute display_as_text
    #   Text to configure how phrase is displayed in Transcript
    #   @return [String]
    class Phrase < Struct.new(
      nil,
      :text,
      :display_as_text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception is thrown when a resource referenced by the operation does not exist
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # S3 object
    # @!attribute s3_uri
    #   S3 uri.
    #   @return [String]
    # @!attribute version
    #   S3 object version.
    #   @return [String]
    class S3Object < Struct.new(
      nil,
      :s3_uri,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for sensitive data detection and redaction
    # @!attribute detection_mode
    #   Mode for sensitive data detection
    #   @return [String]
    # @!attribute detection_scope
    #   Scope of detection - what types of sensitive data to detect
    #   @return [Array<String>]
    # @!attribute pii_entities_configuration
    #   Configuration for PII entities detection and redaction
    #   @return [Types::PIIEntitiesConfiguration]
    class SensitiveDataConfiguration < Struct.new(
      nil,
      :detection_mode,
      :detection_scope,
      :pii_entities_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception is thrown when a request is made beyond the service quota
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Speaker labeling configuration
    # @!attribute state
    #   State
    #   @return [String]
    class SpeakerLabelingConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration of Splitter
    # @!attribute state
    #   State
    #   @return [String]
    class SplitterConfiguration < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard output configuration
    # @!attribute document
    #   Standard Output Configuration of Document
    #   @return [Types::DocumentStandardOutputConfiguration]
    # @!attribute image
    #   Standard Output Configuration of Image
    #   @return [Types::ImageStandardOutputConfiguration]
    # @!attribute video
    #   Standard Output Configuration of Video
    #   @return [Types::VideoStandardOutputConfiguration]
    # @!attribute audio
    #   Standard Output Configuration of Audio
    #   @return [Types::AudioStandardOutputConfiguration]
    class StandardOutputConfiguration < Struct.new(
      nil,
      :document,
      :image,
      :video,
      :audio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Key value pair of a tag
    # @!attribute key
    #   Defines the context of the tag.
    #   @return [String]
    # @!attribute value
    #   Defines the value within the context. e.g. <key=reason, value=training>.
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
    #   ARN of a taggable resource
    #   @return [String]
    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception is thrown when the number of requests exceeds the limit
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for transcript related features
    # @!attribute speaker_labeling
    #   Speaker labeling configuration
    #   @return [Types::SpeakerLabelingConfiguration]
    # @!attribute channel_labeling
    #   Channel labeling configuration
    #   @return [Types::ChannelLabelingConfiguration]
    class TranscriptConfiguration < Struct.new(
      nil,
      :speaker_labeling,
      :channel_labeling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    # @!attribute tag_keys
    #   List of tag keys
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update Blueprint Request
    # @!attribute blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    # @!attribute schema
    #   Schema of the blueprint
    #   @return [String]
    # @!attribute blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    # @!attribute encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    class UpdateBlueprintRequest < Struct.new(
      nil,
      :blueprint_arn,
      :schema,
      :blueprint_stage,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update Blueprint Response
    # @!attribute blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    class UpdateBlueprintResponse < Struct.new(
      nil,
      :blueprint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update DataAutomationLibrary Request
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute library_description
    #   Description of the DataAutomationLibrary
    #   @return [String]
    # @!attribute client_token
    #   Client specified token used for idempotency checks
    #   @return [String]
    class UpdateDataAutomationLibraryRequest < Struct.new(
      nil,
      :library_arn,
      :library_description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update DataAutomationLibrary Response
    # @!attribute library_arn
    #   ARN generated at the server side when a DataAutomationLibrary is created
    #   @return [String]
    # @!attribute status
    #   Status of DataAutomationLibrary
    #   @return [String]
    class UpdateDataAutomationLibraryResponse < Struct.new(
      nil,
      :library_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update DataAutomationProject Request
    # @!attribute project_arn
    #   ARN generated at the server side when a DataAutomationProject is created
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    # @!attribute project_description
    #   Description of the DataAutomationProject
    #   @return [String]
    # @!attribute standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    # @!attribute custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
    # @!attribute data_automation_library_configuration
    #   DataAutomation Library configuration
    #   @return [Types::DataAutomationLibraryConfiguration]
    # @!attribute encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    class UpdateDataAutomationProjectRequest < Struct.new(
      nil,
      :project_arn,
      :project_stage,
      :project_description,
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
      :data_automation_library_configuration,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Update DataAutomationProject Response
    # @!attribute project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    # @!attribute project_stage
    #   Stage of the Project
    #   @return [String]
    # @!attribute status
    #   Status of Data Automation Project
    #   @return [String]
    class UpdateDataAutomationProjectResponse < Struct.new(
      nil,
      :project_arn,
      :project_stage,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input configuration for upserting data in a DataAutomationLibraryIngestionJob
    # @!attribute vocabulary
    #   Vocabulary entity info with detailed information
    #   @return [Types::VocabularyEntityInfo]
    class UpsertEntityInfo < Struct.new(
      :vocabulary,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Vocabulary < UpsertEntityInfo; end
      class Unknown < UpsertEntityInfo; end
    end

    # This exception is thrown when the request's input validation fails
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    # @!attribute field_list
    #   list of ValidationExceptionField
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Stores information about a field passed inside a request that resulted in an exception
    # @!attribute name
    #   Non Blank String
    #   @return [String]
    # @!attribute message
    #   Non Blank String
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Bounding Box Configuration of Video Extraction
    # @!attribute state
    #   State
    #   @return [String]
    class VideoBoundingBox < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Category of Video Extraction
    # @!attribute state
    #   State
    #   @return [String]
    # @!attribute types
    #   List of Video Extraction Category Type
    #   @return [Array<String>]
    class VideoExtractionCategory < Struct.new(
      nil,
      :state,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Override Configuration of Video
    # @!attribute modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    # @!attribute sensitive_data_configuration
    #   Configuration for sensitive data detection and redaction
    #   @return [Types::SensitiveDataConfiguration]
    class VideoOverrideConfiguration < Struct.new(
      nil,
      :modality_processing,
      :sensitive_data_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Extraction Configuration of Video
    # @!attribute category
    #   Category of Video Extraction
    #   @return [Types::VideoExtractionCategory]
    # @!attribute bounding_box
    #   Bounding Box Configuration of Video Extraction
    #   @return [Types::VideoBoundingBox]
    class VideoStandardExtraction < Struct.new(
      nil,
      :category,
      :bounding_box,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Generative Field Configuration of Video
    # @!attribute state
    #   State
    #   @return [String]
    # @!attribute types
    #   List of Video Standard Generative Field Type
    #   @return [Array<String>]
    class VideoStandardGenerativeField < Struct.new(
      nil,
      :state,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Standard Output Configuration of Video
    # @!attribute extraction
    #   Standard Extraction Configuration of Video
    #   @return [Types::VideoStandardExtraction]
    # @!attribute generative_field
    #   Standard Generative Field Configuration of Video
    #   @return [Types::VideoStandardGenerativeField]
    class VideoStandardOutputConfiguration < Struct.new(
      nil,
      :extraction,
      :generative_field,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Vocabulary entity with detailed information
    # @!attribute entity_id
    #   Unique identifier for the entity
    #   @return [String]
    # @!attribute description
    #   Description of the entity
    #   @return [String]
    # @!attribute language
    #   Supported input languages
    #   @return [String]
    # @!attribute phrases
    #   List of phrases
    #   @return [Array<Types::Phrase>]
    # @!attribute last_modified_time
    #   Time Stamp
    #   @return [Time]
    class VocabularyEntity < Struct.new(
      nil,
      :entity_id,
      :description,
      :language,
      :phrases,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Vocabulary entity info with detailed information
    # @!attribute entity_id
    #   Unique identifier for the entity
    #   @return [String]
    # @!attribute description
    #   Description of the entity
    #   @return [String]
    # @!attribute language
    #   Supported input languages
    #   @return [String]
    # @!attribute phrases
    #   List of phrases
    #   @return [Array<Types::Phrase>]
    class VocabularyEntityInfo < Struct.new(
      nil,
      :entity_id,
      :description,
      :language,
      :phrases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Summary of a Vocabulary entity
    # @!attribute entity_id
    #   Unique identifier for the entity
    #   @return [String]
    # @!attribute description
    #   Description of the entity
    #   @return [String]
    # @!attribute language
    #   Supported input languages
    #   @return [String]
    # @!attribute num_of_phrases
    #   num of phrases in the entity
    #   @return [Integer]
    # @!attribute last_modified_time
    #   Time Stamp
    #   @return [Time]
    class VocabularyEntitySummary < Struct.new(
      nil,
      :entity_id,
      :description,
      :language,
      :num_of_phrases,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
