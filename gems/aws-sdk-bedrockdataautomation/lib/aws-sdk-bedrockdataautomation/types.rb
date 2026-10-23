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

    # Override Configuration of Audio
    # @!attribute modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    class AudioOverrideConfiguration < Struct.new(
      nil,
      :modality_processing,
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
    # @!attribute standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    # @!attribute custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    # @!attribute override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
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
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
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
    class CustomOutputConfiguration < Struct.new(
      nil,
      :blueprints,
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
      :project_description,
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
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
    class DocumentOverrideConfiguration < Struct.new(
      nil,
      :splitter,
      :modality_processing,
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
    class ImageOverrideConfiguration < Struct.new(
      nil,
      :modality_processing,
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
    class ListDataAutomationProjectsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :project_stage_filter,
      :blueprint_filter,
      :resource_owner,
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
    class VideoOverrideConfiguration < Struct.new(
      nil,
      :modality_processing,
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

  end
end
