# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockDataAutomation
  module Types

    # This exception is thrown when a request is denied per access
    # permissions
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Category of Audio Extraction
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @!attribute [rw] types
    #   List of Audio Extraction Category Type
    #   @return [Array<String>]
    #
    # @!attribute [rw] type_configuration
    #   Configuration for different audio extraction category types
    #   @return [Types::AudioExtractionCategoryTypeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AudioExtractionCategory AWS API Documentation
    #
    class AudioExtractionCategory < Struct.new(
      :state,
      :types,
      :type_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for different audio extraction category types
    #
    # @!attribute [rw] transcript
    #   Configuration for transcript related features
    #   @return [Types::TranscriptConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AudioExtractionCategoryTypeConfiguration AWS API Documentation
    #
    class AudioExtractionCategoryTypeConfiguration < Struct.new(
      :transcript)
      SENSITIVE = []
      include Aws::Structure
    end

    # Override Configuration of Audio
    #
    # @!attribute [rw] modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AudioOverrideConfiguration AWS API Documentation
    #
    class AudioOverrideConfiguration < Struct.new(
      :modality_processing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Extraction Configuration of Audio
    #
    # @!attribute [rw] category
    #   Category of Audio Extraction
    #   @return [Types::AudioExtractionCategory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AudioStandardExtraction AWS API Documentation
    #
    class AudioStandardExtraction < Struct.new(
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Generative Field Configuration of Audio
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @!attribute [rw] types
    #   List of Audio Standard Generative Field Type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AudioStandardGenerativeField AWS API Documentation
    #
    class AudioStandardGenerativeField < Struct.new(
      :state,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Output Configuration of Audio
    #
    # @!attribute [rw] extraction
    #   Standard Extraction Configuration of Audio
    #   @return [Types::AudioStandardExtraction]
    #
    # @!attribute [rw] generative_field
    #   Standard Generative Field Configuration of Audio
    #   @return [Types::AudioStandardGenerativeField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/AudioStandardOutputConfiguration AWS API Documentation
    #
    class AudioStandardOutputConfiguration < Struct.new(
      :extraction,
      :generative_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of a Blueprint.
    #
    # @!attribute [rw] blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Schema of the blueprint
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time Stamp
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Time Stamp
    #   @return [Time]
    #
    # @!attribute [rw] blueprint_name
    #   Name of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   Blueprint Version
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/Blueprint AWS API Documentation
    #
    class Blueprint < Struct.new(
      :blueprint_arn,
      :schema,
      :type,
      :creation_time,
      :last_modified_time,
      :blueprint_name,
      :blueprint_version,
      :blueprint_stage,
      :kms_key_id,
      :kms_encryption_context)
      SENSITIVE = [:schema, :blueprint_name]
      include Aws::Structure
    end

    # Blueprint Filter
    #
    # @!attribute [rw] blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   Blueprint Version
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/BlueprintFilter AWS API Documentation
    #
    class BlueprintFilter < Struct.new(
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Blueprint Item
    #
    # @!attribute [rw] blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   Blueprint Version
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/BlueprintItem AWS API Documentation
    #
    class BlueprintItem < Struct.new(
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a Blueprint
    #
    # @!attribute [rw] blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   Blueprint Version
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] blueprint_name
    #   Name of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time Stamp
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Time Stamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/BlueprintSummary AWS API Documentation
    #
    class BlueprintSummary < Struct.new(
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage,
      :blueprint_name,
      :creation_time,
      :last_modified_time)
      SENSITIVE = [:blueprint_name]
      include Aws::Structure
    end

    # Channel labeling configuration
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ChannelLabelingConfiguration AWS API Documentation
    #
    class ChannelLabelingConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when there is a conflict performing an
    # operation
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Blueprint Request
    #
    # @!attribute [rw] blueprint_name
    #   Name of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Type
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Schema of the blueprint
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateBlueprintRequest AWS API Documentation
    #
    class CreateBlueprintRequest < Struct.new(
      :blueprint_name,
      :type,
      :blueprint_stage,
      :schema,
      :client_token,
      :encryption_configuration,
      :tags)
      SENSITIVE = [:blueprint_name, :schema]
      include Aws::Structure
    end

    # Create Blueprint Response
    #
    # @!attribute [rw] blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateBlueprintResponse AWS API Documentation
    #
    class CreateBlueprintResponse < Struct.new(
      :blueprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Blueprint Version Request
    #
    # @!attribute [rw] blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateBlueprintVersionRequest AWS API Documentation
    #
    class CreateBlueprintVersionRequest < Struct.new(
      :blueprint_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create Blueprint Version Response
    #
    # @!attribute [rw] blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateBlueprintVersionResponse AWS API Documentation
    #
    class CreateBlueprintVersionResponse < Struct.new(
      :blueprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create DataAutomationProject Request
    #
    # @!attribute [rw] project_name
    #   Name of the DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   Description of the DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @!attribute [rw] standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    #
    # @!attribute [rw] custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    #
    # @!attribute [rw] override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
    #
    # @!attribute [rw] client_token
    #   Client specified token used for idempotency checks
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateDataAutomationProjectRequest AWS API Documentation
    #
    class CreateDataAutomationProjectRequest < Struct.new(
      :project_name,
      :project_description,
      :project_stage,
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
      :client_token,
      :encryption_configuration,
      :tags)
      SENSITIVE = [:project_name, :project_description]
      include Aws::Structure
    end

    # Create DataAutomationProject Response
    #
    # @!attribute [rw] project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of Data Automation Project
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CreateDataAutomationProjectResponse AWS API Documentation
    #
    class CreateDataAutomationProjectResponse < Struct.new(
      :project_arn,
      :project_stage,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom output configuration
    #
    # @!attribute [rw] blueprints
    #   List of Blueprint Item
    #   @return [Array<Types::BlueprintItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/CustomOutputConfiguration AWS API Documentation
    #
    class CustomOutputConfiguration < Struct.new(
      :blueprints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the information of a DataAutomationProject.
    #
    # @!attribute [rw] project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time Stamp
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Time Stamp
    #   @return [Time]
    #
    # @!attribute [rw] project_name
    #   Name of the DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   Description of the DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    #
    # @!attribute [rw] custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    #
    # @!attribute [rw] override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
    #
    # @!attribute [rw] status
    #   Status of Data Automation Project
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DataAutomationProject AWS API Documentation
    #
    class DataAutomationProject < Struct.new(
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
      :kms_encryption_context)
      SENSITIVE = [:project_name, :project_description]
      include Aws::Structure
    end

    # Data Automation Project Filter
    #
    # @!attribute [rw] project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DataAutomationProjectFilter AWS API Documentation
    #
    class DataAutomationProjectFilter < Struct.new(
      :project_arn,
      :project_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a DataAutomationProject
    #
    # @!attribute [rw] project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   Name of the DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Time Stamp
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DataAutomationProjectSummary AWS API Documentation
    #
    class DataAutomationProjectSummary < Struct.new(
      :project_arn,
      :project_stage,
      :project_name,
      :creation_time)
      SENSITIVE = [:project_name]
      include Aws::Structure
    end

    # Delete Blueprint Request
    #
    # @!attribute [rw] blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   Optional field to delete a specific Blueprint version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DeleteBlueprintRequest AWS API Documentation
    #
    class DeleteBlueprintRequest < Struct.new(
      :blueprint_arn,
      :blueprint_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Delete Blueprint Response
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DeleteBlueprintResponse AWS API Documentation
    #
    class DeleteBlueprintResponse < Aws::EmptyStructure; end

    # Delete DataAutomationProject Request
    #
    # @!attribute [rw] project_arn
    #   ARN generated at the server side when a DataAutomationProject is
    #   created
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DeleteDataAutomationProjectRequest AWS API Documentation
    #
    class DeleteDataAutomationProjectRequest < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Delete DataAutomationProject Response
    #
    # @!attribute [rw] project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of Data Automation Project
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DeleteDataAutomationProjectResponse AWS API Documentation
    #
    class DeleteDataAutomationProjectResponse < Struct.new(
      :project_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Bounding Box Configuration of Document Extraction
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentBoundingBox AWS API Documentation
    #
    class DocumentBoundingBox < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Granularity of Document Extraction
    #
    # @!attribute [rw] types
    #   List of Document Extraction Granularity Type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentExtractionGranularity AWS API Documentation
    #
    class DocumentExtractionGranularity < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional File Format of Document Output
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentOutputAdditionalFileFormat AWS API Documentation
    #
    class DocumentOutputAdditionalFileFormat < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output Format of Document
    #
    # @!attribute [rw] text_format
    #   Text Format of Document Output
    #   @return [Types::DocumentOutputTextFormat]
    #
    # @!attribute [rw] additional_file_format
    #   Additional File Format of Document Output
    #   @return [Types::DocumentOutputAdditionalFileFormat]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentOutputFormat AWS API Documentation
    #
    class DocumentOutputFormat < Struct.new(
      :text_format,
      :additional_file_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Text Format of Document Output
    #
    # @!attribute [rw] types
    #   List of Document Output Text Format Type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentOutputTextFormat AWS API Documentation
    #
    class DocumentOutputTextFormat < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Override Configuration of Document
    #
    # @!attribute [rw] splitter
    #   Configuration of Splitter
    #   @return [Types::SplitterConfiguration]
    #
    # @!attribute [rw] modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentOverrideConfiguration AWS API Documentation
    #
    class DocumentOverrideConfiguration < Struct.new(
      :splitter,
      :modality_processing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Extraction Configuration of Document
    #
    # @!attribute [rw] granularity
    #   Granularity of Document Extraction
    #   @return [Types::DocumentExtractionGranularity]
    #
    # @!attribute [rw] bounding_box
    #   Bounding Box Configuration of Document Extraction
    #   @return [Types::DocumentBoundingBox]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentStandardExtraction AWS API Documentation
    #
    class DocumentStandardExtraction < Struct.new(
      :granularity,
      :bounding_box)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Generative Field Configuration of Document
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentStandardGenerativeField AWS API Documentation
    #
    class DocumentStandardGenerativeField < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Output Configuration of Document
    #
    # @!attribute [rw] extraction
    #   Standard Extraction Configuration of Document
    #   @return [Types::DocumentStandardExtraction]
    #
    # @!attribute [rw] generative_field
    #   Standard Generative Field Configuration of Document
    #   @return [Types::DocumentStandardGenerativeField]
    #
    # @!attribute [rw] output_format
    #   Output Format of Document
    #   @return [Types::DocumentOutputFormat]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/DocumentStandardOutputConfiguration AWS API Documentation
    #
    class DocumentStandardOutputConfiguration < Struct.new(
      :extraction,
      :generative_field,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # KMS Encryption Configuration
    #
    # @!attribute [rw] kms_key_id
    #   KMS Key Identifier
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   KMS Encryption Context
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_id,
      :kms_encryption_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Blueprint Request
    #
    # @!attribute [rw] blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   Optional field to get a specific Blueprint version
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Optional field to get a specific Blueprint stage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/GetBlueprintRequest AWS API Documentation
    #
    class GetBlueprintRequest < Struct.new(
      :blueprint_arn,
      :blueprint_version,
      :blueprint_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get Blueprint Response
    #
    # @!attribute [rw] blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/GetBlueprintResponse AWS API Documentation
    #
    class GetBlueprintResponse < Struct.new(
      :blueprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get DataAutomationProject Request
    #
    # @!attribute [rw] project_arn
    #   ARN generated at the server side when a DataAutomationProject is
    #   created
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Optional field to delete a specific DataAutomationProject stage
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/GetDataAutomationProjectRequest AWS API Documentation
    #
    class GetDataAutomationProjectRequest < Struct.new(
      :project_arn,
      :project_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get DataAutomationProject Response
    #
    # @!attribute [rw] project
    #   Contains the information of a DataAutomationProject.
    #   @return [Types::DataAutomationProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/GetDataAutomationProjectResponse AWS API Documentation
    #
    class GetDataAutomationProjectResponse < Struct.new(
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # Bounding Box Configuration of Image Extraction
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ImageBoundingBox AWS API Documentation
    #
    class ImageBoundingBox < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Category of Image Extraction
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @!attribute [rw] types
    #   List of Image Extraction Category
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ImageExtractionCategory AWS API Documentation
    #
    class ImageExtractionCategory < Struct.new(
      :state,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Override Configuration of Image
    #
    # @!attribute [rw] modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ImageOverrideConfiguration AWS API Documentation
    #
    class ImageOverrideConfiguration < Struct.new(
      :modality_processing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Extraction Configuration of Image
    #
    # @!attribute [rw] category
    #   Category of Image Extraction
    #   @return [Types::ImageExtractionCategory]
    #
    # @!attribute [rw] bounding_box
    #   Bounding Box Configuration of Image Extraction
    #   @return [Types::ImageBoundingBox]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ImageStandardExtraction AWS API Documentation
    #
    class ImageStandardExtraction < Struct.new(
      :category,
      :bounding_box)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Generative Field Configuration of Image
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @!attribute [rw] types
    #   List of Image Standard Generative Field Type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ImageStandardGenerativeField AWS API Documentation
    #
    class ImageStandardGenerativeField < Struct.new(
      :state,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Output Configuration of Image
    #
    # @!attribute [rw] extraction
    #   Standard Extraction Configuration of Image
    #   @return [Types::ImageStandardExtraction]
    #
    # @!attribute [rw] generative_field
    #   Standard Generative Field Configuration of Image
    #   @return [Types::ImageStandardGenerativeField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ImageStandardOutputConfiguration AWS API Documentation
    #
    class ImageStandardOutputConfiguration < Struct.new(
      :extraction,
      :generative_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if there was an unexpected error during
    # processing of request
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # List Blueprint Request
    #
    # @!attribute [rw] blueprint_arn
    #   ARN of a Blueprint
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   Resource Owner
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage_filter
    #   Blueprint Stage filter
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Max Results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] project_filter
    #   Data Automation Project Filter
    #   @return [Types::DataAutomationProjectFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListBlueprintsRequest AWS API Documentation
    #
    class ListBlueprintsRequest < Struct.new(
      :blueprint_arn,
      :resource_owner,
      :blueprint_stage_filter,
      :max_results,
      :next_token,
      :project_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # List Blueprint Response
    #
    # @!attribute [rw] blueprints
    #   List of Blueprints
    #   @return [Array<Types::BlueprintSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListBlueprintsResponse AWS API Documentation
    #
    class ListBlueprintsResponse < Struct.new(
      :blueprints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # List DataAutomationProject Request
    #
    # @!attribute [rw] max_results
    #   Max Results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @!attribute [rw] project_stage_filter
    #   Project Stage filter
    #   @return [String]
    #
    # @!attribute [rw] blueprint_filter
    #   Blueprint Filter
    #   @return [Types::BlueprintFilter]
    #
    # @!attribute [rw] resource_owner
    #   Resource Owner
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListDataAutomationProjectsRequest AWS API Documentation
    #
    class ListDataAutomationProjectsRequest < Struct.new(
      :max_results,
      :next_token,
      :project_stage_filter,
      :blueprint_filter,
      :resource_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # List DataAutomationProject Response
    #
    # @!attribute [rw] projects
    #   List of DataAutomationProjectSummary
    #   @return [Array<Types::DataAutomationProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListDataAutomationProjectsResponse AWS API Documentation
    #
    class ListDataAutomationProjectsResponse < Struct.new(
      :projects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration to enable/disable processing of modality
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ModalityProcessingConfiguration AWS API Documentation
    #
    class ModalityProcessingConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for routing file type to desired modality
    #
    # @!attribute [rw] jpeg
    #   Desired Modality types
    #   @return [String]
    #
    # @!attribute [rw] png
    #   Desired Modality types
    #   @return [String]
    #
    # @!attribute [rw] mp4
    #   Desired Modality types
    #   @return [String]
    #
    # @!attribute [rw] mov
    #   Desired Modality types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ModalityRoutingConfiguration AWS API Documentation
    #
    class ModalityRoutingConfiguration < Struct.new(
      :jpeg,
      :png,
      :mp4,
      :mov)
      SENSITIVE = []
      include Aws::Structure
    end

    # Override configuration
    #
    # @!attribute [rw] document
    #   Override Configuration of Document
    #   @return [Types::DocumentOverrideConfiguration]
    #
    # @!attribute [rw] image
    #   Override Configuration of Image
    #   @return [Types::ImageOverrideConfiguration]
    #
    # @!attribute [rw] video
    #   Override Configuration of Video
    #   @return [Types::VideoOverrideConfiguration]
    #
    # @!attribute [rw] audio
    #   Override Configuration of Audio
    #   @return [Types::AudioOverrideConfiguration]
    #
    # @!attribute [rw] modality_routing
    #   Configuration for routing file type to desired modality
    #   @return [Types::ModalityRoutingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/OverrideConfiguration AWS API Documentation
    #
    class OverrideConfiguration < Struct.new(
      :document,
      :image,
      :video,
      :audio,
      :modality_routing)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a resource referenced by the operation
    # does not exist
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a request is made beyond the service
    # quota
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Speaker labeling configuration
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/SpeakerLabelingConfiguration AWS API Documentation
    #
    class SpeakerLabelingConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of Splitter
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/SplitterConfiguration AWS API Documentation
    #
    class SplitterConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard output configuration
    #
    # @!attribute [rw] document
    #   Standard Output Configuration of Document
    #   @return [Types::DocumentStandardOutputConfiguration]
    #
    # @!attribute [rw] image
    #   Standard Output Configuration of Image
    #   @return [Types::ImageStandardOutputConfiguration]
    #
    # @!attribute [rw] video
    #   Standard Output Configuration of Video
    #   @return [Types::VideoStandardOutputConfiguration]
    #
    # @!attribute [rw] audio
    #   Standard Output Configuration of Audio
    #   @return [Types::AudioStandardOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/StandardOutputConfiguration AWS API Documentation
    #
    class StandardOutputConfiguration < Struct.new(
      :document,
      :image,
      :video,
      :audio)
      SENSITIVE = []
      include Aws::Structure
    end

    # Key value pair of a tag
    #
    # @!attribute [rw] key
    #   Defines the context of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Defines the value within the context. e.g. &lt;key=reason,
    #   value=training&gt;.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # This exception is thrown when the number of requests exceeds the limit
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for transcript related features
    #
    # @!attribute [rw] speaker_labeling
    #   Speaker labeling configuration
    #   @return [Types::SpeakerLabelingConfiguration]
    #
    # @!attribute [rw] channel_labeling
    #   Channel labeling configuration
    #   @return [Types::ChannelLabelingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/TranscriptConfiguration AWS API Documentation
    #
    class TranscriptConfiguration < Struct.new(
      :speaker_labeling,
      :channel_labeling)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Update Blueprint Request
    #
    # @!attribute [rw] blueprint_arn
    #   ARN generated at the server side when a Blueprint is created
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Schema of the blueprint
    #   @return [String]
    #
    # @!attribute [rw] blueprint_stage
    #   Stage of the Blueprint
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UpdateBlueprintRequest AWS API Documentation
    #
    class UpdateBlueprintRequest < Struct.new(
      :blueprint_arn,
      :schema,
      :blueprint_stage,
      :encryption_configuration)
      SENSITIVE = [:schema]
      include Aws::Structure
    end

    # Update Blueprint Response
    #
    # @!attribute [rw] blueprint
    #   Contains the information of a Blueprint.
    #   @return [Types::Blueprint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UpdateBlueprintResponse AWS API Documentation
    #
    class UpdateBlueprintResponse < Struct.new(
      :blueprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update DataAutomationProject Request
    #
    # @!attribute [rw] project_arn
    #   ARN generated at the server side when a DataAutomationProject is
    #   created
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   Description of the DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] standard_output_configuration
    #   Standard output configuration
    #   @return [Types::StandardOutputConfiguration]
    #
    # @!attribute [rw] custom_output_configuration
    #   Custom output configuration
    #   @return [Types::CustomOutputConfiguration]
    #
    # @!attribute [rw] override_configuration
    #   Override configuration
    #   @return [Types::OverrideConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   KMS Encryption Configuration
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UpdateDataAutomationProjectRequest AWS API Documentation
    #
    class UpdateDataAutomationProjectRequest < Struct.new(
      :project_arn,
      :project_stage,
      :project_description,
      :standard_output_configuration,
      :custom_output_configuration,
      :override_configuration,
      :encryption_configuration)
      SENSITIVE = [:project_description]
      include Aws::Structure
    end

    # Update DataAutomationProject Response
    #
    # @!attribute [rw] project_arn
    #   ARN of a DataAutomationProject
    #   @return [String]
    #
    # @!attribute [rw] project_stage
    #   Stage of the Project
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of Data Automation Project
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/UpdateDataAutomationProjectResponse AWS API Documentation
    #
    class UpdateDataAutomationProjectResponse < Struct.new(
      :project_arn,
      :project_stage,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the request's input validation fails
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   list of ValidationExceptionField
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field passed inside a request that resulted
    # in an exception
    #
    # @!attribute [rw] name
    #   Non Blank String
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Non Blank String
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Bounding Box Configuration of Video Extraction
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/VideoBoundingBox AWS API Documentation
    #
    class VideoBoundingBox < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Category of Video Extraction
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @!attribute [rw] types
    #   List of Video Extraction Category Type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/VideoExtractionCategory AWS API Documentation
    #
    class VideoExtractionCategory < Struct.new(
      :state,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Override Configuration of Video
    #
    # @!attribute [rw] modality_processing
    #   Configuration to enable/disable processing of modality
    #   @return [Types::ModalityProcessingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/VideoOverrideConfiguration AWS API Documentation
    #
    class VideoOverrideConfiguration < Struct.new(
      :modality_processing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Extraction Configuration of Video
    #
    # @!attribute [rw] category
    #   Category of Video Extraction
    #   @return [Types::VideoExtractionCategory]
    #
    # @!attribute [rw] bounding_box
    #   Bounding Box Configuration of Video Extraction
    #   @return [Types::VideoBoundingBox]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/VideoStandardExtraction AWS API Documentation
    #
    class VideoStandardExtraction < Struct.new(
      :category,
      :bounding_box)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Generative Field Configuration of Video
    #
    # @!attribute [rw] state
    #   State
    #   @return [String]
    #
    # @!attribute [rw] types
    #   List of Video Standard Generative Field Type
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/VideoStandardGenerativeField AWS API Documentation
    #
    class VideoStandardGenerativeField < Struct.new(
      :state,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Standard Output Configuration of Video
    #
    # @!attribute [rw] extraction
    #   Standard Extraction Configuration of Video
    #   @return [Types::VideoStandardExtraction]
    #
    # @!attribute [rw] generative_field
    #   Standard Generative Field Configuration of Video
    #   @return [Types::VideoStandardGenerativeField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-2023-07-26/VideoStandardOutputConfiguration AWS API Documentation
    #
    class VideoStandardOutputConfiguration < Struct.new(
      :extraction,
      :generative_field)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

