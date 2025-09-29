# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BedrockDataAutomation
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AudioExtractionCategory = Shapes::StructureShape.new(name: 'AudioExtractionCategory')
    AudioExtractionCategoryType = Shapes::StringShape.new(name: 'AudioExtractionCategoryType')
    AudioExtractionCategoryTypeConfiguration = Shapes::StructureShape.new(name: 'AudioExtractionCategoryTypeConfiguration')
    AudioExtractionCategoryTypes = Shapes::ListShape.new(name: 'AudioExtractionCategoryTypes')
    AudioOverrideConfiguration = Shapes::StructureShape.new(name: 'AudioOverrideConfiguration')
    AudioStandardExtraction = Shapes::StructureShape.new(name: 'AudioStandardExtraction')
    AudioStandardGenerativeField = Shapes::StructureShape.new(name: 'AudioStandardGenerativeField')
    AudioStandardGenerativeFieldType = Shapes::StringShape.new(name: 'AudioStandardGenerativeFieldType')
    AudioStandardGenerativeFieldTypes = Shapes::ListShape.new(name: 'AudioStandardGenerativeFieldTypes')
    AudioStandardOutputConfiguration = Shapes::StructureShape.new(name: 'AudioStandardOutputConfiguration')
    Blueprint = Shapes::StructureShape.new(name: 'Blueprint')
    BlueprintArn = Shapes::StringShape.new(name: 'BlueprintArn')
    BlueprintFilter = Shapes::StructureShape.new(name: 'BlueprintFilter')
    BlueprintItem = Shapes::StructureShape.new(name: 'BlueprintItem')
    BlueprintItems = Shapes::ListShape.new(name: 'BlueprintItems')
    BlueprintName = Shapes::StringShape.new(name: 'BlueprintName')
    BlueprintSchema = Shapes::StringShape.new(name: 'BlueprintSchema')
    BlueprintStage = Shapes::StringShape.new(name: 'BlueprintStage')
    BlueprintStageFilter = Shapes::StringShape.new(name: 'BlueprintStageFilter')
    BlueprintSummary = Shapes::StructureShape.new(name: 'BlueprintSummary')
    BlueprintVersion = Shapes::StringShape.new(name: 'BlueprintVersion')
    Blueprints = Shapes::ListShape.new(name: 'Blueprints')
    ChannelLabelingConfiguration = Shapes::StructureShape.new(name: 'ChannelLabelingConfiguration')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateBlueprintRequest = Shapes::StructureShape.new(name: 'CreateBlueprintRequest')
    CreateBlueprintResponse = Shapes::StructureShape.new(name: 'CreateBlueprintResponse')
    CreateBlueprintVersionRequest = Shapes::StructureShape.new(name: 'CreateBlueprintVersionRequest')
    CreateBlueprintVersionResponse = Shapes::StructureShape.new(name: 'CreateBlueprintVersionResponse')
    CreateDataAutomationProjectRequest = Shapes::StructureShape.new(name: 'CreateDataAutomationProjectRequest')
    CreateDataAutomationProjectResponse = Shapes::StructureShape.new(name: 'CreateDataAutomationProjectResponse')
    CustomOutputConfiguration = Shapes::StructureShape.new(name: 'CustomOutputConfiguration')
    DataAutomationProject = Shapes::StructureShape.new(name: 'DataAutomationProject')
    DataAutomationProjectArn = Shapes::StringShape.new(name: 'DataAutomationProjectArn')
    DataAutomationProjectDescription = Shapes::StringShape.new(name: 'DataAutomationProjectDescription')
    DataAutomationProjectFilter = Shapes::StructureShape.new(name: 'DataAutomationProjectFilter')
    DataAutomationProjectName = Shapes::StringShape.new(name: 'DataAutomationProjectName')
    DataAutomationProjectStage = Shapes::StringShape.new(name: 'DataAutomationProjectStage')
    DataAutomationProjectStageFilter = Shapes::StringShape.new(name: 'DataAutomationProjectStageFilter')
    DataAutomationProjectStatus = Shapes::StringShape.new(name: 'DataAutomationProjectStatus')
    DataAutomationProjectSummaries = Shapes::ListShape.new(name: 'DataAutomationProjectSummaries')
    DataAutomationProjectSummary = Shapes::StructureShape.new(name: 'DataAutomationProjectSummary')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeleteBlueprintRequest = Shapes::StructureShape.new(name: 'DeleteBlueprintRequest')
    DeleteBlueprintResponse = Shapes::StructureShape.new(name: 'DeleteBlueprintResponse')
    DeleteDataAutomationProjectRequest = Shapes::StructureShape.new(name: 'DeleteDataAutomationProjectRequest')
    DeleteDataAutomationProjectResponse = Shapes::StructureShape.new(name: 'DeleteDataAutomationProjectResponse')
    DesiredModality = Shapes::StringShape.new(name: 'DesiredModality')
    DocumentBoundingBox = Shapes::StructureShape.new(name: 'DocumentBoundingBox')
    DocumentExtractionGranularity = Shapes::StructureShape.new(name: 'DocumentExtractionGranularity')
    DocumentExtractionGranularityType = Shapes::StringShape.new(name: 'DocumentExtractionGranularityType')
    DocumentExtractionGranularityTypes = Shapes::ListShape.new(name: 'DocumentExtractionGranularityTypes')
    DocumentOutputAdditionalFileFormat = Shapes::StructureShape.new(name: 'DocumentOutputAdditionalFileFormat')
    DocumentOutputFormat = Shapes::StructureShape.new(name: 'DocumentOutputFormat')
    DocumentOutputTextFormat = Shapes::StructureShape.new(name: 'DocumentOutputTextFormat')
    DocumentOutputTextFormatType = Shapes::StringShape.new(name: 'DocumentOutputTextFormatType')
    DocumentOutputTextFormatTypes = Shapes::ListShape.new(name: 'DocumentOutputTextFormatTypes')
    DocumentOverrideConfiguration = Shapes::StructureShape.new(name: 'DocumentOverrideConfiguration')
    DocumentStandardExtraction = Shapes::StructureShape.new(name: 'DocumentStandardExtraction')
    DocumentStandardGenerativeField = Shapes::StructureShape.new(name: 'DocumentStandardGenerativeField')
    DocumentStandardOutputConfiguration = Shapes::StructureShape.new(name: 'DocumentStandardOutputConfiguration')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EncryptionContextKey = Shapes::StringShape.new(name: 'EncryptionContextKey')
    EncryptionContextValue = Shapes::StringShape.new(name: 'EncryptionContextValue')
    GetBlueprintRequest = Shapes::StructureShape.new(name: 'GetBlueprintRequest')
    GetBlueprintResponse = Shapes::StructureShape.new(name: 'GetBlueprintResponse')
    GetDataAutomationProjectRequest = Shapes::StructureShape.new(name: 'GetDataAutomationProjectRequest')
    GetDataAutomationProjectResponse = Shapes::StructureShape.new(name: 'GetDataAutomationProjectResponse')
    ImageBoundingBox = Shapes::StructureShape.new(name: 'ImageBoundingBox')
    ImageExtractionCategory = Shapes::StructureShape.new(name: 'ImageExtractionCategory')
    ImageExtractionCategoryType = Shapes::StringShape.new(name: 'ImageExtractionCategoryType')
    ImageExtractionCategoryTypes = Shapes::ListShape.new(name: 'ImageExtractionCategoryTypes')
    ImageOverrideConfiguration = Shapes::StructureShape.new(name: 'ImageOverrideConfiguration')
    ImageStandardExtraction = Shapes::StructureShape.new(name: 'ImageStandardExtraction')
    ImageStandardGenerativeField = Shapes::StructureShape.new(name: 'ImageStandardGenerativeField')
    ImageStandardGenerativeFieldType = Shapes::StringShape.new(name: 'ImageStandardGenerativeFieldType')
    ImageStandardGenerativeFieldTypes = Shapes::ListShape.new(name: 'ImageStandardGenerativeFieldTypes')
    ImageStandardOutputConfiguration = Shapes::StructureShape.new(name: 'ImageStandardOutputConfiguration')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsEncryptionContext = Shapes::MapShape.new(name: 'KmsEncryptionContext')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListBlueprintsRequest = Shapes::StructureShape.new(name: 'ListBlueprintsRequest')
    ListBlueprintsResponse = Shapes::StructureShape.new(name: 'ListBlueprintsResponse')
    ListDataAutomationProjectsRequest = Shapes::StructureShape.new(name: 'ListDataAutomationProjectsRequest')
    ListDataAutomationProjectsResponse = Shapes::StructureShape.new(name: 'ListDataAutomationProjectsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    ModalityProcessingConfiguration = Shapes::StructureShape.new(name: 'ModalityProcessingConfiguration')
    ModalityRoutingConfiguration = Shapes::StructureShape.new(name: 'ModalityRoutingConfiguration')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    OverrideConfiguration = Shapes::StructureShape.new(name: 'OverrideConfiguration')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOwner = Shapes::StringShape.new(name: 'ResourceOwner')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SpeakerLabelingConfiguration = Shapes::StructureShape.new(name: 'SpeakerLabelingConfiguration')
    SplitterConfiguration = Shapes::StructureShape.new(name: 'SplitterConfiguration')
    StandardOutputConfiguration = Shapes::StructureShape.new(name: 'StandardOutputConfiguration')
    State = Shapes::StringShape.new(name: 'State')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TranscriptConfiguration = Shapes::StructureShape.new(name: 'TranscriptConfiguration')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateBlueprintRequest = Shapes::StructureShape.new(name: 'UpdateBlueprintRequest')
    UpdateBlueprintResponse = Shapes::StructureShape.new(name: 'UpdateBlueprintResponse')
    UpdateDataAutomationProjectRequest = Shapes::StructureShape.new(name: 'UpdateDataAutomationProjectRequest')
    UpdateDataAutomationProjectResponse = Shapes::StructureShape.new(name: 'UpdateDataAutomationProjectResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    VideoBoundingBox = Shapes::StructureShape.new(name: 'VideoBoundingBox')
    VideoExtractionCategory = Shapes::StructureShape.new(name: 'VideoExtractionCategory')
    VideoExtractionCategoryType = Shapes::StringShape.new(name: 'VideoExtractionCategoryType')
    VideoExtractionCategoryTypes = Shapes::ListShape.new(name: 'VideoExtractionCategoryTypes')
    VideoOverrideConfiguration = Shapes::StructureShape.new(name: 'VideoOverrideConfiguration')
    VideoStandardExtraction = Shapes::StructureShape.new(name: 'VideoStandardExtraction')
    VideoStandardGenerativeField = Shapes::StructureShape.new(name: 'VideoStandardGenerativeField')
    VideoStandardGenerativeFieldType = Shapes::StringShape.new(name: 'VideoStandardGenerativeFieldType')
    VideoStandardGenerativeFieldTypes = Shapes::ListShape.new(name: 'VideoStandardGenerativeFieldTypes')
    VideoStandardOutputConfiguration = Shapes::StructureShape.new(name: 'VideoStandardOutputConfiguration')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AudioExtractionCategory.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    AudioExtractionCategory.add_member(:types, Shapes::ShapeRef.new(shape: AudioExtractionCategoryTypes, location_name: "types"))
    AudioExtractionCategory.add_member(:type_configuration, Shapes::ShapeRef.new(shape: AudioExtractionCategoryTypeConfiguration, location_name: "typeConfiguration"))
    AudioExtractionCategory.struct_class = Types::AudioExtractionCategory

    AudioExtractionCategoryTypeConfiguration.add_member(:transcript, Shapes::ShapeRef.new(shape: TranscriptConfiguration, location_name: "transcript"))
    AudioExtractionCategoryTypeConfiguration.struct_class = Types::AudioExtractionCategoryTypeConfiguration

    AudioExtractionCategoryTypes.member = Shapes::ShapeRef.new(shape: AudioExtractionCategoryType)

    AudioOverrideConfiguration.add_member(:modality_processing, Shapes::ShapeRef.new(shape: ModalityProcessingConfiguration, location_name: "modalityProcessing"))
    AudioOverrideConfiguration.struct_class = Types::AudioOverrideConfiguration

    AudioStandardExtraction.add_member(:category, Shapes::ShapeRef.new(shape: AudioExtractionCategory, required: true, location_name: "category"))
    AudioStandardExtraction.struct_class = Types::AudioStandardExtraction

    AudioStandardGenerativeField.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    AudioStandardGenerativeField.add_member(:types, Shapes::ShapeRef.new(shape: AudioStandardGenerativeFieldTypes, location_name: "types"))
    AudioStandardGenerativeField.struct_class = Types::AudioStandardGenerativeField

    AudioStandardGenerativeFieldTypes.member = Shapes::ShapeRef.new(shape: AudioStandardGenerativeFieldType)

    AudioStandardOutputConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: AudioStandardExtraction, location_name: "extraction"))
    AudioStandardOutputConfiguration.add_member(:generative_field, Shapes::ShapeRef.new(shape: AudioStandardGenerativeField, location_name: "generativeField"))
    AudioStandardOutputConfiguration.struct_class = Types::AudioStandardOutputConfiguration

    Blueprint.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location_name: "blueprintArn"))
    Blueprint.add_member(:schema, Shapes::ShapeRef.new(shape: BlueprintSchema, required: true, location_name: "schema"))
    Blueprint.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    Blueprint.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "creationTime"))
    Blueprint.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastModifiedTime"))
    Blueprint.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: BlueprintName, required: true, location_name: "blueprintName"))
    Blueprint.add_member(:blueprint_version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "blueprintVersion"))
    Blueprint.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    Blueprint.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    Blueprint.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: KmsEncryptionContext, location_name: "kmsEncryptionContext"))
    Blueprint.struct_class = Types::Blueprint

    BlueprintFilter.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location_name: "blueprintArn"))
    BlueprintFilter.add_member(:blueprint_version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "blueprintVersion"))
    BlueprintFilter.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    BlueprintFilter.struct_class = Types::BlueprintFilter

    BlueprintItem.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location_name: "blueprintArn"))
    BlueprintItem.add_member(:blueprint_version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "blueprintVersion"))
    BlueprintItem.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    BlueprintItem.struct_class = Types::BlueprintItem

    BlueprintItems.member = Shapes::ShapeRef.new(shape: BlueprintItem)

    BlueprintSummary.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location_name: "blueprintArn"))
    BlueprintSummary.add_member(:blueprint_version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "blueprintVersion"))
    BlueprintSummary.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    BlueprintSummary.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: BlueprintName, location_name: "blueprintName"))
    BlueprintSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "creationTime"))
    BlueprintSummary.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "lastModifiedTime"))
    BlueprintSummary.struct_class = Types::BlueprintSummary

    Blueprints.member = Shapes::ShapeRef.new(shape: BlueprintSummary)

    ChannelLabelingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    ChannelLabelingConfiguration.struct_class = Types::ChannelLabelingConfiguration

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateBlueprintRequest.add_member(:blueprint_name, Shapes::ShapeRef.new(shape: BlueprintName, required: true, location_name: "blueprintName"))
    CreateBlueprintRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    CreateBlueprintRequest.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    CreateBlueprintRequest.add_member(:schema, Shapes::ShapeRef.new(shape: BlueprintSchema, required: true, location_name: "schema"))
    CreateBlueprintRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBlueprintRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateBlueprintRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateBlueprintRequest.struct_class = Types::CreateBlueprintRequest

    CreateBlueprintResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: Blueprint, required: true, location_name: "blueprint"))
    CreateBlueprintResponse.struct_class = Types::CreateBlueprintResponse

    CreateBlueprintVersionRequest.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location: "uri", location_name: "blueprintArn"))
    CreateBlueprintVersionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateBlueprintVersionRequest.struct_class = Types::CreateBlueprintVersionRequest

    CreateBlueprintVersionResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: Blueprint, required: true, location_name: "blueprint"))
    CreateBlueprintVersionResponse.struct_class = Types::CreateBlueprintVersionResponse

    CreateDataAutomationProjectRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: DataAutomationProjectName, required: true, location_name: "projectName"))
    CreateDataAutomationProjectRequest.add_member(:project_description, Shapes::ShapeRef.new(shape: DataAutomationProjectDescription, location_name: "projectDescription"))
    CreateDataAutomationProjectRequest.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    CreateDataAutomationProjectRequest.add_member(:standard_output_configuration, Shapes::ShapeRef.new(shape: StandardOutputConfiguration, required: true, location_name: "standardOutputConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:custom_output_configuration, Shapes::ShapeRef.new(shape: CustomOutputConfiguration, location_name: "customOutputConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:override_configuration, Shapes::ShapeRef.new(shape: OverrideConfiguration, location_name: "overrideConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDataAutomationProjectRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDataAutomationProjectRequest.struct_class = Types::CreateDataAutomationProjectRequest

    CreateDataAutomationProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location_name: "projectArn"))
    CreateDataAutomationProjectResponse.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    CreateDataAutomationProjectResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataAutomationProjectStatus, location_name: "status"))
    CreateDataAutomationProjectResponse.struct_class = Types::CreateDataAutomationProjectResponse

    CustomOutputConfiguration.add_member(:blueprints, Shapes::ShapeRef.new(shape: BlueprintItems, location_name: "blueprints"))
    CustomOutputConfiguration.struct_class = Types::CustomOutputConfiguration

    DataAutomationProject.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location_name: "projectArn"))
    DataAutomationProject.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "creationTime"))
    DataAutomationProject.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "lastModifiedTime"))
    DataAutomationProject.add_member(:project_name, Shapes::ShapeRef.new(shape: DataAutomationProjectName, required: true, location_name: "projectName"))
    DataAutomationProject.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    DataAutomationProject.add_member(:project_description, Shapes::ShapeRef.new(shape: DataAutomationProjectDescription, location_name: "projectDescription"))
    DataAutomationProject.add_member(:standard_output_configuration, Shapes::ShapeRef.new(shape: StandardOutputConfiguration, location_name: "standardOutputConfiguration"))
    DataAutomationProject.add_member(:custom_output_configuration, Shapes::ShapeRef.new(shape: CustomOutputConfiguration, location_name: "customOutputConfiguration"))
    DataAutomationProject.add_member(:override_configuration, Shapes::ShapeRef.new(shape: OverrideConfiguration, location_name: "overrideConfiguration"))
    DataAutomationProject.add_member(:status, Shapes::ShapeRef.new(shape: DataAutomationProjectStatus, required: true, location_name: "status"))
    DataAutomationProject.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    DataAutomationProject.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: KmsEncryptionContext, location_name: "kmsEncryptionContext"))
    DataAutomationProject.struct_class = Types::DataAutomationProject

    DataAutomationProjectFilter.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location_name: "projectArn"))
    DataAutomationProjectFilter.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    DataAutomationProjectFilter.struct_class = Types::DataAutomationProjectFilter

    DataAutomationProjectSummaries.member = Shapes::ShapeRef.new(shape: DataAutomationProjectSummary)

    DataAutomationProjectSummary.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location_name: "projectArn"))
    DataAutomationProjectSummary.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    DataAutomationProjectSummary.add_member(:project_name, Shapes::ShapeRef.new(shape: DataAutomationProjectName, location_name: "projectName"))
    DataAutomationProjectSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "creationTime"))
    DataAutomationProjectSummary.struct_class = Types::DataAutomationProjectSummary

    DeleteBlueprintRequest.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location: "uri", location_name: "blueprintArn"))
    DeleteBlueprintRequest.add_member(:blueprint_version, Shapes::ShapeRef.new(shape: BlueprintVersion, location: "querystring", location_name: "blueprintVersion"))
    DeleteBlueprintRequest.struct_class = Types::DeleteBlueprintRequest

    DeleteBlueprintResponse.struct_class = Types::DeleteBlueprintResponse

    DeleteDataAutomationProjectRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location: "uri", location_name: "projectArn"))
    DeleteDataAutomationProjectRequest.struct_class = Types::DeleteDataAutomationProjectRequest

    DeleteDataAutomationProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location_name: "projectArn"))
    DeleteDataAutomationProjectResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataAutomationProjectStatus, location_name: "status"))
    DeleteDataAutomationProjectResponse.struct_class = Types::DeleteDataAutomationProjectResponse

    DocumentBoundingBox.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    DocumentBoundingBox.struct_class = Types::DocumentBoundingBox

    DocumentExtractionGranularity.add_member(:types, Shapes::ShapeRef.new(shape: DocumentExtractionGranularityTypes, location_name: "types"))
    DocumentExtractionGranularity.struct_class = Types::DocumentExtractionGranularity

    DocumentExtractionGranularityTypes.member = Shapes::ShapeRef.new(shape: DocumentExtractionGranularityType)

    DocumentOutputAdditionalFileFormat.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    DocumentOutputAdditionalFileFormat.struct_class = Types::DocumentOutputAdditionalFileFormat

    DocumentOutputFormat.add_member(:text_format, Shapes::ShapeRef.new(shape: DocumentOutputTextFormat, required: true, location_name: "textFormat"))
    DocumentOutputFormat.add_member(:additional_file_format, Shapes::ShapeRef.new(shape: DocumentOutputAdditionalFileFormat, required: true, location_name: "additionalFileFormat"))
    DocumentOutputFormat.struct_class = Types::DocumentOutputFormat

    DocumentOutputTextFormat.add_member(:types, Shapes::ShapeRef.new(shape: DocumentOutputTextFormatTypes, location_name: "types"))
    DocumentOutputTextFormat.struct_class = Types::DocumentOutputTextFormat

    DocumentOutputTextFormatTypes.member = Shapes::ShapeRef.new(shape: DocumentOutputTextFormatType)

    DocumentOverrideConfiguration.add_member(:splitter, Shapes::ShapeRef.new(shape: SplitterConfiguration, location_name: "splitter"))
    DocumentOverrideConfiguration.add_member(:modality_processing, Shapes::ShapeRef.new(shape: ModalityProcessingConfiguration, location_name: "modalityProcessing"))
    DocumentOverrideConfiguration.struct_class = Types::DocumentOverrideConfiguration

    DocumentStandardExtraction.add_member(:granularity, Shapes::ShapeRef.new(shape: DocumentExtractionGranularity, required: true, location_name: "granularity"))
    DocumentStandardExtraction.add_member(:bounding_box, Shapes::ShapeRef.new(shape: DocumentBoundingBox, required: true, location_name: "boundingBox"))
    DocumentStandardExtraction.struct_class = Types::DocumentStandardExtraction

    DocumentStandardGenerativeField.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    DocumentStandardGenerativeField.struct_class = Types::DocumentStandardGenerativeField

    DocumentStandardOutputConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: DocumentStandardExtraction, location_name: "extraction"))
    DocumentStandardOutputConfiguration.add_member(:generative_field, Shapes::ShapeRef.new(shape: DocumentStandardGenerativeField, location_name: "generativeField"))
    DocumentStandardOutputConfiguration.add_member(:output_format, Shapes::ShapeRef.new(shape: DocumentOutputFormat, location_name: "outputFormat"))
    DocumentStandardOutputConfiguration.struct_class = Types::DocumentStandardOutputConfiguration

    EncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, required: true, location_name: "kmsKeyId"))
    EncryptionConfiguration.add_member(:kms_encryption_context, Shapes::ShapeRef.new(shape: KmsEncryptionContext, location_name: "kmsEncryptionContext"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    GetBlueprintRequest.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location: "uri", location_name: "blueprintArn"))
    GetBlueprintRequest.add_member(:blueprint_version, Shapes::ShapeRef.new(shape: BlueprintVersion, location_name: "blueprintVersion"))
    GetBlueprintRequest.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    GetBlueprintRequest.struct_class = Types::GetBlueprintRequest

    GetBlueprintResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: Blueprint, required: true, location_name: "blueprint"))
    GetBlueprintResponse.struct_class = Types::GetBlueprintResponse

    GetDataAutomationProjectRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location: "uri", location_name: "projectArn"))
    GetDataAutomationProjectRequest.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    GetDataAutomationProjectRequest.struct_class = Types::GetDataAutomationProjectRequest

    GetDataAutomationProjectResponse.add_member(:project, Shapes::ShapeRef.new(shape: DataAutomationProject, required: true, location_name: "project"))
    GetDataAutomationProjectResponse.struct_class = Types::GetDataAutomationProjectResponse

    ImageBoundingBox.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    ImageBoundingBox.struct_class = Types::ImageBoundingBox

    ImageExtractionCategory.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    ImageExtractionCategory.add_member(:types, Shapes::ShapeRef.new(shape: ImageExtractionCategoryTypes, location_name: "types"))
    ImageExtractionCategory.struct_class = Types::ImageExtractionCategory

    ImageExtractionCategoryTypes.member = Shapes::ShapeRef.new(shape: ImageExtractionCategoryType)

    ImageOverrideConfiguration.add_member(:modality_processing, Shapes::ShapeRef.new(shape: ModalityProcessingConfiguration, location_name: "modalityProcessing"))
    ImageOverrideConfiguration.struct_class = Types::ImageOverrideConfiguration

    ImageStandardExtraction.add_member(:category, Shapes::ShapeRef.new(shape: ImageExtractionCategory, required: true, location_name: "category"))
    ImageStandardExtraction.add_member(:bounding_box, Shapes::ShapeRef.new(shape: ImageBoundingBox, required: true, location_name: "boundingBox"))
    ImageStandardExtraction.struct_class = Types::ImageStandardExtraction

    ImageStandardGenerativeField.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    ImageStandardGenerativeField.add_member(:types, Shapes::ShapeRef.new(shape: ImageStandardGenerativeFieldTypes, location_name: "types"))
    ImageStandardGenerativeField.struct_class = Types::ImageStandardGenerativeField

    ImageStandardGenerativeFieldTypes.member = Shapes::ShapeRef.new(shape: ImageStandardGenerativeFieldType)

    ImageStandardOutputConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: ImageStandardExtraction, location_name: "extraction"))
    ImageStandardOutputConfiguration.add_member(:generative_field, Shapes::ShapeRef.new(shape: ImageStandardGenerativeField, location_name: "generativeField"))
    ImageStandardOutputConfiguration.struct_class = Types::ImageStandardOutputConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    KmsEncryptionContext.key = Shapes::ShapeRef.new(shape: EncryptionContextKey)
    KmsEncryptionContext.value = Shapes::ShapeRef.new(shape: EncryptionContextValue)

    ListBlueprintsRequest.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, location_name: "blueprintArn"))
    ListBlueprintsRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, location_name: "resourceOwner"))
    ListBlueprintsRequest.add_member(:blueprint_stage_filter, Shapes::ShapeRef.new(shape: BlueprintStageFilter, location_name: "blueprintStageFilter"))
    ListBlueprintsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListBlueprintsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBlueprintsRequest.add_member(:project_filter, Shapes::ShapeRef.new(shape: DataAutomationProjectFilter, location_name: "projectFilter"))
    ListBlueprintsRequest.struct_class = Types::ListBlueprintsRequest

    ListBlueprintsResponse.add_member(:blueprints, Shapes::ShapeRef.new(shape: Blueprints, required: true, location_name: "blueprints"))
    ListBlueprintsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBlueprintsResponse.struct_class = Types::ListBlueprintsResponse

    ListDataAutomationProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDataAutomationProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataAutomationProjectsRequest.add_member(:project_stage_filter, Shapes::ShapeRef.new(shape: DataAutomationProjectStageFilter, location_name: "projectStageFilter"))
    ListDataAutomationProjectsRequest.add_member(:blueprint_filter, Shapes::ShapeRef.new(shape: BlueprintFilter, location_name: "blueprintFilter"))
    ListDataAutomationProjectsRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, location_name: "resourceOwner"))
    ListDataAutomationProjectsRequest.struct_class = Types::ListDataAutomationProjectsRequest

    ListDataAutomationProjectsResponse.add_member(:projects, Shapes::ShapeRef.new(shape: DataAutomationProjectSummaries, required: true, location_name: "projects"))
    ListDataAutomationProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataAutomationProjectsResponse.struct_class = Types::ListDataAutomationProjectsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ModalityProcessingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    ModalityProcessingConfiguration.struct_class = Types::ModalityProcessingConfiguration

    ModalityRoutingConfiguration.add_member(:jpeg, Shapes::ShapeRef.new(shape: DesiredModality, location_name: "jpeg"))
    ModalityRoutingConfiguration.add_member(:png, Shapes::ShapeRef.new(shape: DesiredModality, location_name: "png"))
    ModalityRoutingConfiguration.add_member(:mp4, Shapes::ShapeRef.new(shape: DesiredModality, location_name: "mp4"))
    ModalityRoutingConfiguration.add_member(:mov, Shapes::ShapeRef.new(shape: DesiredModality, location_name: "mov"))
    ModalityRoutingConfiguration.struct_class = Types::ModalityRoutingConfiguration

    OverrideConfiguration.add_member(:document, Shapes::ShapeRef.new(shape: DocumentOverrideConfiguration, location_name: "document"))
    OverrideConfiguration.add_member(:image, Shapes::ShapeRef.new(shape: ImageOverrideConfiguration, location_name: "image"))
    OverrideConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoOverrideConfiguration, location_name: "video"))
    OverrideConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioOverrideConfiguration, location_name: "audio"))
    OverrideConfiguration.add_member(:modality_routing, Shapes::ShapeRef.new(shape: ModalityRoutingConfiguration, location_name: "modalityRouting"))
    OverrideConfiguration.struct_class = Types::OverrideConfiguration

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SpeakerLabelingConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    SpeakerLabelingConfiguration.struct_class = Types::SpeakerLabelingConfiguration

    SplitterConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    SplitterConfiguration.struct_class = Types::SplitterConfiguration

    StandardOutputConfiguration.add_member(:document, Shapes::ShapeRef.new(shape: DocumentStandardOutputConfiguration, location_name: "document"))
    StandardOutputConfiguration.add_member(:image, Shapes::ShapeRef.new(shape: ImageStandardOutputConfiguration, location_name: "image"))
    StandardOutputConfiguration.add_member(:video, Shapes::ShapeRef.new(shape: VideoStandardOutputConfiguration, location_name: "video"))
    StandardOutputConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioStandardOutputConfiguration, location_name: "audio"))
    StandardOutputConfiguration.struct_class = Types::StandardOutputConfiguration

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TranscriptConfiguration.add_member(:speaker_labeling, Shapes::ShapeRef.new(shape: SpeakerLabelingConfiguration, location_name: "speakerLabeling"))
    TranscriptConfiguration.add_member(:channel_labeling, Shapes::ShapeRef.new(shape: ChannelLabelingConfiguration, location_name: "channelLabeling"))
    TranscriptConfiguration.struct_class = Types::TranscriptConfiguration

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "resourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateBlueprintRequest.add_member(:blueprint_arn, Shapes::ShapeRef.new(shape: BlueprintArn, required: true, location: "uri", location_name: "blueprintArn"))
    UpdateBlueprintRequest.add_member(:schema, Shapes::ShapeRef.new(shape: BlueprintSchema, required: true, location_name: "schema"))
    UpdateBlueprintRequest.add_member(:blueprint_stage, Shapes::ShapeRef.new(shape: BlueprintStage, location_name: "blueprintStage"))
    UpdateBlueprintRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateBlueprintRequest.struct_class = Types::UpdateBlueprintRequest

    UpdateBlueprintResponse.add_member(:blueprint, Shapes::ShapeRef.new(shape: Blueprint, required: true, location_name: "blueprint"))
    UpdateBlueprintResponse.struct_class = Types::UpdateBlueprintResponse

    UpdateDataAutomationProjectRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location: "uri", location_name: "projectArn"))
    UpdateDataAutomationProjectRequest.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    UpdateDataAutomationProjectRequest.add_member(:project_description, Shapes::ShapeRef.new(shape: DataAutomationProjectDescription, location_name: "projectDescription"))
    UpdateDataAutomationProjectRequest.add_member(:standard_output_configuration, Shapes::ShapeRef.new(shape: StandardOutputConfiguration, required: true, location_name: "standardOutputConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:custom_output_configuration, Shapes::ShapeRef.new(shape: CustomOutputConfiguration, location_name: "customOutputConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:override_configuration, Shapes::ShapeRef.new(shape: OverrideConfiguration, location_name: "overrideConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateDataAutomationProjectRequest.struct_class = Types::UpdateDataAutomationProjectRequest

    UpdateDataAutomationProjectResponse.add_member(:project_arn, Shapes::ShapeRef.new(shape: DataAutomationProjectArn, required: true, location_name: "projectArn"))
    UpdateDataAutomationProjectResponse.add_member(:project_stage, Shapes::ShapeRef.new(shape: DataAutomationProjectStage, location_name: "projectStage"))
    UpdateDataAutomationProjectResponse.add_member(:status, Shapes::ShapeRef.new(shape: DataAutomationProjectStatus, location_name: "status"))
    UpdateDataAutomationProjectResponse.struct_class = Types::UpdateDataAutomationProjectResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VideoBoundingBox.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    VideoBoundingBox.struct_class = Types::VideoBoundingBox

    VideoExtractionCategory.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    VideoExtractionCategory.add_member(:types, Shapes::ShapeRef.new(shape: VideoExtractionCategoryTypes, location_name: "types"))
    VideoExtractionCategory.struct_class = Types::VideoExtractionCategory

    VideoExtractionCategoryTypes.member = Shapes::ShapeRef.new(shape: VideoExtractionCategoryType)

    VideoOverrideConfiguration.add_member(:modality_processing, Shapes::ShapeRef.new(shape: ModalityProcessingConfiguration, location_name: "modalityProcessing"))
    VideoOverrideConfiguration.struct_class = Types::VideoOverrideConfiguration

    VideoStandardExtraction.add_member(:category, Shapes::ShapeRef.new(shape: VideoExtractionCategory, required: true, location_name: "category"))
    VideoStandardExtraction.add_member(:bounding_box, Shapes::ShapeRef.new(shape: VideoBoundingBox, required: true, location_name: "boundingBox"))
    VideoStandardExtraction.struct_class = Types::VideoStandardExtraction

    VideoStandardGenerativeField.add_member(:state, Shapes::ShapeRef.new(shape: State, required: true, location_name: "state"))
    VideoStandardGenerativeField.add_member(:types, Shapes::ShapeRef.new(shape: VideoStandardGenerativeFieldTypes, location_name: "types"))
    VideoStandardGenerativeField.struct_class = Types::VideoStandardGenerativeField

    VideoStandardGenerativeFieldTypes.member = Shapes::ShapeRef.new(shape: VideoStandardGenerativeFieldType)

    VideoStandardOutputConfiguration.add_member(:extraction, Shapes::ShapeRef.new(shape: VideoStandardExtraction, location_name: "extraction"))
    VideoStandardOutputConfiguration.add_member(:generative_field, Shapes::ShapeRef.new(shape: VideoStandardGenerativeField, location_name: "generativeField"))
    VideoStandardOutputConfiguration.struct_class = Types::VideoStandardOutputConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-07-26"

      api.metadata = {
        "apiVersion" => "2023-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "bedrock-data-automation",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Data Automation for Amazon Bedrock",
        "serviceId" => "Bedrock Data Automation",
        "signatureVersion" => "v4",
        "signingName" => "bedrock",
        "uid" => "bedrock-data-automation-2023-07-26",
      }

      api.add_operation(:create_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBlueprint"
        o.http_method = "PUT"
        o.http_request_uri = "/blueprints/"
        o.input = Shapes::ShapeRef.new(shape: CreateBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_blueprint_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBlueprintVersion"
        o.http_method = "POST"
        o.http_request_uri = "/blueprints/{blueprintArn}/versions/"
        o.input = Shapes::ShapeRef.new(shape: CreateBlueprintVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBlueprintVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_data_automation_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataAutomationProject"
        o.http_method = "PUT"
        o.http_request_uri = "/data-automation-projects/"
        o.input = Shapes::ShapeRef.new(shape: CreateDataAutomationProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataAutomationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBlueprint"
        o.http_method = "DELETE"
        o.http_request_uri = "/blueprints/{blueprintArn}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_data_automation_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataAutomationProject"
        o.http_method = "DELETE"
        o.http_request_uri = "/data-automation-projects/{projectArn}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataAutomationProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataAutomationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlueprint"
        o.http_method = "POST"
        o.http_request_uri = "/blueprints/{blueprintArn}/"
        o.input = Shapes::ShapeRef.new(shape: GetBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_data_automation_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataAutomationProject"
        o.http_method = "POST"
        o.http_request_uri = "/data-automation-projects/{projectArn}/"
        o.input = Shapes::ShapeRef.new(shape: GetDataAutomationProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataAutomationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_blueprints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBlueprints"
        o.http_method = "POST"
        o.http_request_uri = "/blueprints/"
        o.input = Shapes::ShapeRef.new(shape: ListBlueprintsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBlueprintsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_automation_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataAutomationProjects"
        o.http_method = "POST"
        o.http_request_uri = "/data-automation-projects/"
        o.input = Shapes::ShapeRef.new(shape: ListDataAutomationProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataAutomationProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/listTagsForResource"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tagResource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/untagResource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_blueprint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBlueprint"
        o.http_method = "PUT"
        o.http_request_uri = "/blueprints/{blueprintArn}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBlueprintRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBlueprintResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_data_automation_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataAutomationProject"
        o.http_method = "PUT"
        o.http_request_uri = "/data-automation-projects/{projectArn}/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataAutomationProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataAutomationProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
