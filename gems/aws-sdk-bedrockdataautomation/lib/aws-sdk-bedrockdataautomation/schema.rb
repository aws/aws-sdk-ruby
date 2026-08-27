# frozen_string_literal: true

# This is generated code!

module Aws::BedrockDataAutomation
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AudioExtractionCategory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioExtractionCategory", name: "AudioExtractionCategory")
    AudioExtractionCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#AudioExtractionCategoryType", name: "AudioExtractionCategoryType")
    AudioExtractionCategoryTypeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioExtractionCategoryTypeConfiguration", name: "AudioExtractionCategoryTypeConfiguration")
    AudioExtractionCategoryTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#AudioExtractionCategoryTypes", name: "AudioExtractionCategoryTypes")
    AudioOverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioOverrideConfiguration", name: "AudioOverrideConfiguration")
    AudioStandardExtraction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioStandardExtraction", name: "AudioStandardExtraction")
    AudioStandardGenerativeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioStandardGenerativeField", name: "AudioStandardGenerativeField")
    AudioStandardGenerativeFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#AudioStandardGenerativeFieldType", name: "AudioStandardGenerativeFieldType")
    AudioStandardGenerativeFieldTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#AudioStandardGenerativeFieldTypes", name: "AudioStandardGenerativeFieldTypes")
    AudioStandardOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioStandardOutputConfiguration", name: "AudioStandardOutputConfiguration")
    Blueprint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#Blueprint", name: "Blueprint")
    BlueprintArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintArn", name: "BlueprintArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):blueprint/(bedrock-data-automation-public-[a-zA-Z0-9-_]{1,30}|[a-zA-Z0-9-]{12,36})$"})
    BlueprintFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintFilter", name: "BlueprintFilter")
    BlueprintItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintItem", name: "BlueprintItem")
    BlueprintItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintItems", name: "BlueprintItems")
    BlueprintName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintName", name: "BlueprintName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#sensitive" => {}})
    BlueprintSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintSchema", name: "BlueprintSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    BlueprintStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintStage", name: "BlueprintStage")
    BlueprintStageFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintStageFilter", name: "BlueprintStageFilter")
    BlueprintSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintSummary", name: "BlueprintSummary")
    BlueprintVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintVersion", name: "BlueprintVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]*$"})
    Blueprints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#Blueprints", name: "Blueprints")
    ChannelLabelingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ChannelLabelingConfiguration", name: "ChannelLabelingConfiguration")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintRequest", name: "CreateBlueprintRequest")
    CreateBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintResponse", name: "CreateBlueprintResponse")
    CreateBlueprintVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintVersionRequest", name: "CreateBlueprintVersionRequest")
    CreateBlueprintVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintVersionResponse", name: "CreateBlueprintVersionResponse")
    CreateDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateDataAutomationProjectRequest", name: "CreateDataAutomationProjectRequest")
    CreateDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateDataAutomationProjectResponse", name: "CreateDataAutomationProjectResponse")
    CustomOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CustomOutputConfiguration", name: "CustomOutputConfiguration")
    DataAutomationProject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProject", name: "DataAutomationProject")
    DataAutomationProjectArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectArn", name: "DataAutomationProjectArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):data-automation-project/[a-zA-Z0-9-]{12,36}$"})
    DataAutomationProjectDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectDescription", name: "DataAutomationProjectDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#sensitive" => {}})
    DataAutomationProjectFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectFilter", name: "DataAutomationProjectFilter")
    DataAutomationProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectName", name: "DataAutomationProjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#sensitive" => {}})
    DataAutomationProjectStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectStage", name: "DataAutomationProjectStage")
    DataAutomationProjectStageFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectStageFilter", name: "DataAutomationProjectStageFilter")
    DataAutomationProjectStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectStatus", name: "DataAutomationProjectStatus")
    DataAutomationProjectSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectSummaries", name: "DataAutomationProjectSummaries")
    DataAutomationProjectSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectSummary", name: "DataAutomationProjectSummary")
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bedrockdataautomation#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteBlueprintRequest", name: "DeleteBlueprintRequest")
    DeleteBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteBlueprintResponse", name: "DeleteBlueprintResponse")
    DeleteDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteDataAutomationProjectRequest", name: "DeleteDataAutomationProjectRequest")
    DeleteDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteDataAutomationProjectResponse", name: "DeleteDataAutomationProjectResponse")
    DesiredModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DesiredModality", name: "DesiredModality")
    DocumentBoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentBoundingBox", name: "DocumentBoundingBox")
    DocumentExtractionGranularity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentExtractionGranularity", name: "DocumentExtractionGranularity")
    DocumentExtractionGranularityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentExtractionGranularityType", name: "DocumentExtractionGranularityType")
    DocumentExtractionGranularityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentExtractionGranularityTypes", name: "DocumentExtractionGranularityTypes")
    DocumentOutputAdditionalFileFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentOutputAdditionalFileFormat", name: "DocumentOutputAdditionalFileFormat")
    DocumentOutputFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentOutputFormat", name: "DocumentOutputFormat")
    DocumentOutputTextFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentOutputTextFormat", name: "DocumentOutputTextFormat")
    DocumentOutputTextFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentOutputTextFormatType", name: "DocumentOutputTextFormatType")
    DocumentOutputTextFormatTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentOutputTextFormatTypes", name: "DocumentOutputTextFormatTypes")
    DocumentOverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentOverrideConfiguration", name: "DocumentOverrideConfiguration")
    DocumentStandardExtraction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentStandardExtraction", name: "DocumentStandardExtraction")
    DocumentStandardGenerativeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentStandardGenerativeField", name: "DocumentStandardGenerativeField")
    DocumentStandardOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentStandardOutputConfiguration", name: "DocumentStandardOutputConfiguration")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionContextKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#EncryptionContextKey", name: "EncryptionContextKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^.*\\S.*$"})
    EncryptionContextValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#EncryptionContextValue", name: "EncryptionContextValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^.*\\S.*$"})
    GetBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetBlueprintRequest", name: "GetBlueprintRequest")
    GetBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetBlueprintResponse", name: "GetBlueprintResponse")
    GetDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationProjectRequest", name: "GetDataAutomationProjectRequest")
    GetDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationProjectResponse", name: "GetDataAutomationProjectResponse")
    ImageBoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ImageBoundingBox", name: "ImageBoundingBox")
    ImageExtractionCategory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ImageExtractionCategory", name: "ImageExtractionCategory")
    ImageExtractionCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#ImageExtractionCategoryType", name: "ImageExtractionCategoryType")
    ImageExtractionCategoryTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#ImageExtractionCategoryTypes", name: "ImageExtractionCategoryTypes")
    ImageOverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ImageOverrideConfiguration", name: "ImageOverrideConfiguration")
    ImageStandardExtraction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ImageStandardExtraction", name: "ImageStandardExtraction")
    ImageStandardGenerativeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ImageStandardGenerativeField", name: "ImageStandardGenerativeField")
    ImageStandardGenerativeFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#ImageStandardGenerativeFieldType", name: "ImageStandardGenerativeFieldType")
    ImageStandardGenerativeFieldTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#ImageStandardGenerativeFieldTypes", name: "ImageStandardGenerativeFieldTypes")
    ImageStandardOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ImageStandardOutputConfiguration", name: "ImageStandardOutputConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsEncryptionContext = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockdataautomation#KmsEncryptionContext", name: "KmsEncryptionContext", traits: {"smithy.api#length" => {"min" => 1}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]+$"})
    ListBlueprintsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListBlueprintsRequest", name: "ListBlueprintsRequest")
    ListBlueprintsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListBlueprintsResponse", name: "ListBlueprintsResponse")
    ListDataAutomationProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationProjectsRequest", name: "ListDataAutomationProjectsRequest")
    ListDataAutomationProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationProjectsResponse", name: "ListDataAutomationProjectsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockdataautomation#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ModalityProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ModalityProcessingConfiguration", name: "ModalityProcessingConfiguration")
    ModalityRoutingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ModalityRoutingConfiguration", name: "ModalityRoutingConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    OverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#OverrideConfiguration", name: "OverrideConfiguration")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#ResourceOwner", name: "ResourceOwner")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SpeakerLabelingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#SpeakerLabelingConfiguration", name: "SpeakerLabelingConfiguration")
    SplitterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#SplitterConfiguration", name: "SplitterConfiguration")
    StandardOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#StandardOutputConfiguration", name: "StandardOutputConfiguration")
    State = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#State", name: "State")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-z0-9-]*:[0-9]{12}:(blueprint|data-automation-project)/[a-zA-Z0-9-]{12,36}$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TranscriptConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#TranscriptConfiguration", name: "TranscriptConfiguration")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#Type", name: "Type")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateBlueprintRequest", name: "UpdateBlueprintRequest")
    UpdateBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateBlueprintResponse", name: "UpdateBlueprintResponse")
    UpdateDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateDataAutomationProjectRequest", name: "UpdateDataAutomationProjectRequest")
    UpdateDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateDataAutomationProjectResponse", name: "UpdateDataAutomationProjectResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    VideoBoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VideoBoundingBox", name: "VideoBoundingBox")
    VideoExtractionCategory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VideoExtractionCategory", name: "VideoExtractionCategory")
    VideoExtractionCategoryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#VideoExtractionCategoryType", name: "VideoExtractionCategoryType")
    VideoExtractionCategoryTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#VideoExtractionCategoryTypes", name: "VideoExtractionCategoryTypes")
    VideoOverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VideoOverrideConfiguration", name: "VideoOverrideConfiguration")
    VideoStandardExtraction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VideoStandardExtraction", name: "VideoStandardExtraction")
    VideoStandardGenerativeField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VideoStandardGenerativeField", name: "VideoStandardGenerativeField")
    VideoStandardGenerativeFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#VideoStandardGenerativeFieldType", name: "VideoStandardGenerativeFieldType")
    VideoStandardGenerativeFieldTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#VideoStandardGenerativeFieldTypes", name: "VideoStandardGenerativeFieldTypes")
    VideoStandardOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VideoStandardOutputConfiguration", name: "VideoStandardOutputConfiguration")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AudioExtractionCategory.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    AudioExtractionCategory.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionCategoryTypes, name: "types"))
    AudioExtractionCategory.add_member(:type_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionCategoryTypeConfiguration, name: "typeConfiguration"))
    AudioExtractionCategory.type = Types::AudioExtractionCategory
    AudioExtractionCategoryType.add_member(:audio_content_moderation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO_CONTENT_MODERATION", traits: {"smithy.api#enumValue" => "AUDIO_CONTENT_MODERATION"}))
    AudioExtractionCategoryType.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSCRIPT", traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    AudioExtractionCategoryType.add_member(:topic_content_moderation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOPIC_CONTENT_MODERATION", traits: {"smithy.api#enumValue" => "TOPIC_CONTENT_MODERATION"}))
    AudioExtractionCategoryTypeConfiguration.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptConfiguration, name: "transcript"))
    AudioExtractionCategoryTypeConfiguration.type = Types::AudioExtractionCategoryTypeConfiguration
    AudioExtractionCategoryTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionCategoryType, name: "member")
    AudioOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    AudioOverrideConfiguration.type = Types::AudioOverrideConfiguration
    AudioStandardExtraction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    AudioStandardExtraction.type = Types::AudioStandardExtraction
    AudioStandardGenerativeField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    AudioStandardGenerativeField.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardGenerativeFieldTypes, name: "types"))
    AudioStandardGenerativeField.type = Types::AudioStandardGenerativeField
    AudioStandardGenerativeFieldType.add_member(:audio_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO_SUMMARY", traits: {"smithy.api#enumValue" => "AUDIO_SUMMARY"}))
    AudioStandardGenerativeFieldType.add_member(:iab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAB", traits: {"smithy.api#enumValue" => "IAB"}))
    AudioStandardGenerativeFieldType.add_member(:topic_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOPIC_SUMMARY", traits: {"smithy.api#enumValue" => "TOPIC_SUMMARY"}))
    AudioStandardGenerativeFieldTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardGenerativeFieldType, name: "member")
    AudioStandardOutputConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardExtraction, name: "extraction"))
    AudioStandardOutputConfiguration.add_member(:generative_field, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardGenerativeField, name: "generativeField"))
    AudioStandardOutputConfiguration.type = Types::AudioStandardOutputConfiguration
    Blueprint.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintSchema, name: "schema", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintName, name: "blueprintName", traits: {"smithy.api#required" => {}}))
    Blueprint.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    Blueprint.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    Blueprint.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    Blueprint.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionContext, name: "kmsEncryptionContext"))
    Blueprint.type = Types::Blueprint
    BlueprintFilter.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    BlueprintFilter.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    BlueprintFilter.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    BlueprintFilter.type = Types::BlueprintFilter
    BlueprintItem.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    BlueprintItem.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    BlueprintItem.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    BlueprintItem.type = Types::BlueprintItem
    BlueprintItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintItem, name: "member")
    BlueprintStage.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    BlueprintStage.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    BlueprintStageFilter.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    BlueprintStageFilter.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    BlueprintStageFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    BlueprintSummary.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    BlueprintSummary.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    BlueprintSummary.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    BlueprintSummary.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintName, name: "blueprintName"))
    BlueprintSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    BlueprintSummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastModifiedTime"))
    BlueprintSummary.type = Types::BlueprintSummary
    Blueprints.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintSummary, name: "member")
    ChannelLabelingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    ChannelLabelingConfiguration.type = Types::ChannelLabelingConfiguration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateBlueprintRequest.add_member(:blueprint_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintName, name: "blueprintName", traits: {"smithy.api#required" => {}}))
    CreateBlueprintRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type", traits: {"smithy.api#required" => {}}))
    CreateBlueprintRequest.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    CreateBlueprintRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintSchema, name: "schema", traits: {"smithy.api#required" => {}}))
    CreateBlueprintRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBlueprintRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateBlueprintRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateBlueprintRequest.type = Types::CreateBlueprintRequest
    CreateBlueprintResponse.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "blueprint", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateBlueprintResponse.type = Types::CreateBlueprintResponse
    CreateBlueprintVersionRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBlueprintVersionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateBlueprintVersionRequest.type = Types::CreateBlueprintVersionRequest
    CreateBlueprintVersionResponse.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "blueprint", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    CreateBlueprintVersionResponse.type = Types::CreateBlueprintVersionResponse
    CreateDataAutomationProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationProjectRequest.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectDescription, name: "projectDescription"))
    CreateDataAutomationProjectRequest.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    CreateDataAutomationProjectRequest.add_member(:standard_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputConfiguration, name: "standardOutputConfiguration", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationProjectRequest.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "customOutputConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideConfiguration, name: "overrideConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataAutomationProjectRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDataAutomationProjectRequest.type = Types::CreateDataAutomationProjectRequest
    CreateDataAutomationProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationProjectResponse.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    CreateDataAutomationProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status"))
    CreateDataAutomationProjectResponse.type = Types::CreateDataAutomationProjectResponse
    CustomOutputConfiguration.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintItems, name: "blueprints"))
    CustomOutputConfiguration.type = Types::CustomOutputConfiguration
    DataAutomationProject.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    DataAutomationProject.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectDescription, name: "projectDescription"))
    DataAutomationProject.add_member(:standard_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputConfiguration, name: "standardOutputConfiguration"))
    DataAutomationProject.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "customOutputConfiguration"))
    DataAutomationProject.add_member(:override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideConfiguration, name: "overrideConfiguration"))
    DataAutomationProject.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    DataAutomationProject.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionContext, name: "kmsEncryptionContext"))
    DataAutomationProject.type = Types::DataAutomationProject
    DataAutomationProjectFilter.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DataAutomationProjectFilter.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    DataAutomationProjectFilter.type = Types::DataAutomationProjectFilter
    DataAutomationProjectStage.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    DataAutomationProjectStage.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    DataAutomationProjectStageFilter.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    DataAutomationProjectStageFilter.add_member(:live, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE", traits: {"smithy.api#enumValue" => "LIVE"}))
    DataAutomationProjectStageFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    DataAutomationProjectStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DataAutomationProjectStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DataAutomationProjectStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DataAutomationProjectSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectSummary, name: "member")
    DataAutomationProjectSummary.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DataAutomationProjectSummary.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    DataAutomationProjectSummary.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectName, name: "projectName"))
    DataAutomationProjectSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationProjectSummary.type = Types::DataAutomationProjectSummary
    DeleteBlueprintRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBlueprintRequest.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion", traits: {"smithy.api#httpQuery" => "blueprintVersion"}))
    DeleteBlueprintRequest.type = Types::DeleteBlueprintRequest
    DeleteBlueprintResponse.type = Types::DeleteBlueprintResponse
    DeleteDataAutomationProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAutomationProjectRequest.type = Types::DeleteDataAutomationProjectRequest
    DeleteDataAutomationProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DeleteDataAutomationProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status"))
    DeleteDataAutomationProjectResponse.type = Types::DeleteDataAutomationProjectResponse
    DesiredModality.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    DesiredModality.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    DesiredModality.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    DesiredModality.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "VIDEO"}))
    DocumentBoundingBox.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    DocumentBoundingBox.type = Types::DocumentBoundingBox
    DocumentExtractionGranularity.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentExtractionGranularityTypes, name: "types"))
    DocumentExtractionGranularity.type = Types::DocumentExtractionGranularity
    DocumentExtractionGranularityType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    DocumentExtractionGranularityType.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE", traits: {"smithy.api#enumValue" => "PAGE"}))
    DocumentExtractionGranularityType.add_member(:element, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELEMENT", traits: {"smithy.api#enumValue" => "ELEMENT"}))
    DocumentExtractionGranularityType.add_member(:word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORD", traits: {"smithy.api#enumValue" => "WORD"}))
    DocumentExtractionGranularityType.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE", traits: {"smithy.api#enumValue" => "LINE"}))
    DocumentExtractionGranularityTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentExtractionGranularityType, name: "member")
    DocumentOutputAdditionalFileFormat.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    DocumentOutputAdditionalFileFormat.type = Types::DocumentOutputAdditionalFileFormat
    DocumentOutputFormat.add_member(:text_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputTextFormat, name: "textFormat", traits: {"smithy.api#required" => {}}))
    DocumentOutputFormat.add_member(:additional_file_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputAdditionalFileFormat, name: "additionalFileFormat", traits: {"smithy.api#required" => {}}))
    DocumentOutputFormat.type = Types::DocumentOutputFormat
    DocumentOutputTextFormat.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputTextFormatTypes, name: "types"))
    DocumentOutputTextFormat.type = Types::DocumentOutputTextFormat
    DocumentOutputTextFormatType.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PLAIN_TEXT"}))
    DocumentOutputTextFormatType.add_member(:markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKDOWN", traits: {"smithy.api#enumValue" => "MARKDOWN"}))
    DocumentOutputTextFormatType.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTML", traits: {"smithy.api#enumValue" => "HTML"}))
    DocumentOutputTextFormatType.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    DocumentOutputTextFormatTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputTextFormatType, name: "member")
    DocumentOverrideConfiguration.add_member(:splitter, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitterConfiguration, name: "splitter"))
    DocumentOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    DocumentOverrideConfiguration.type = Types::DocumentOverrideConfiguration
    DocumentStandardExtraction.add_member(:granularity, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentExtractionGranularity, name: "granularity", traits: {"smithy.api#required" => {}}))
    DocumentStandardExtraction.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentBoundingBox, name: "boundingBox", traits: {"smithy.api#required" => {}}))
    DocumentStandardExtraction.type = Types::DocumentStandardExtraction
    DocumentStandardGenerativeField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    DocumentStandardGenerativeField.type = Types::DocumentStandardGenerativeField
    DocumentStandardOutputConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStandardExtraction, name: "extraction"))
    DocumentStandardOutputConfiguration.add_member(:generative_field, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStandardGenerativeField, name: "generativeField"))
    DocumentStandardOutputConfiguration.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputFormat, name: "outputFormat"))
    DocumentStandardOutputConfiguration.type = Types::DocumentStandardOutputConfiguration
    EncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    EncryptionConfiguration.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionContext, name: "kmsEncryptionContext"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    GetBlueprintRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBlueprintRequest.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    GetBlueprintRequest.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    GetBlueprintRequest.type = Types::GetBlueprintRequest
    GetBlueprintResponse.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "blueprint", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetBlueprintResponse.type = Types::GetBlueprintResponse
    GetDataAutomationProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationProjectRequest.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    GetDataAutomationProjectRequest.type = Types::GetDataAutomationProjectRequest
    GetDataAutomationProjectResponse.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProject, name: "project", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetDataAutomationProjectResponse.type = Types::GetDataAutomationProjectResponse
    ImageBoundingBox.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    ImageBoundingBox.type = Types::ImageBoundingBox
    ImageExtractionCategory.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    ImageExtractionCategory.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionCategoryTypes, name: "types"))
    ImageExtractionCategory.type = Types::ImageExtractionCategory
    ImageExtractionCategoryType.add_member(:content_moderation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_MODERATION", traits: {"smithy.api#enumValue" => "CONTENT_MODERATION"}))
    ImageExtractionCategoryType.add_member(:text_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_DETECTION", traits: {"smithy.api#enumValue" => "TEXT_DETECTION"}))
    ImageExtractionCategoryType.add_member(:logos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGOS", traits: {"smithy.api#enumValue" => "LOGOS"}))
    ImageExtractionCategoryTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionCategoryType, name: "member")
    ImageOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    ImageOverrideConfiguration.type = Types::ImageOverrideConfiguration
    ImageStandardExtraction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    ImageStandardExtraction.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBoundingBox, name: "boundingBox", traits: {"smithy.api#required" => {}}))
    ImageStandardExtraction.type = Types::ImageStandardExtraction
    ImageStandardGenerativeField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    ImageStandardGenerativeField.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardGenerativeFieldTypes, name: "types"))
    ImageStandardGenerativeField.type = Types::ImageStandardGenerativeField
    ImageStandardGenerativeFieldType.add_member(:image_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_SUMMARY", traits: {"smithy.api#enumValue" => "IMAGE_SUMMARY"}))
    ImageStandardGenerativeFieldType.add_member(:iab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAB", traits: {"smithy.api#enumValue" => "IAB"}))
    ImageStandardGenerativeFieldTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardGenerativeFieldType, name: "member")
    ImageStandardOutputConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardExtraction, name: "extraction"))
    ImageStandardOutputConfiguration.add_member(:generative_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardGenerativeField, name: "generativeField"))
    ImageStandardOutputConfiguration.type = Types::ImageStandardOutputConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    KmsEncryptionContext.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextKey, name: "key")
    KmsEncryptionContext.value = ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextValue, name: "value")
    ListBlueprintsRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn"))
    ListBlueprintsRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, name: "resourceOwner"))
    ListBlueprintsRequest.add_member(:blueprint_stage_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStageFilter, name: "blueprintStageFilter"))
    ListBlueprintsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListBlueprintsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBlueprintsRequest.add_member(:project_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectFilter, name: "projectFilter"))
    ListBlueprintsRequest.type = Types::ListBlueprintsRequest
    ListBlueprintsResponse.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprints, name: "blueprints", traits: {"smithy.api#required" => {}}))
    ListBlueprintsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBlueprintsResponse.type = Types::ListBlueprintsResponse
    ListDataAutomationProjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDataAutomationProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationProjectsRequest.add_member(:project_stage_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStageFilter, name: "projectStageFilter"))
    ListDataAutomationProjectsRequest.add_member(:blueprint_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintFilter, name: "blueprintFilter"))
    ListDataAutomationProjectsRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, name: "resourceOwner"))
    ListDataAutomationProjectsRequest.type = Types::ListDataAutomationProjectsRequest
    ListDataAutomationProjectsResponse.add_member(:projects, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectSummaries, name: "projects", traits: {"smithy.api#required" => {}}))
    ListDataAutomationProjectsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationProjectsResponse.type = Types::ListDataAutomationProjectsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModalityProcessingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state"))
    ModalityProcessingConfiguration.type = Types::ModalityProcessingConfiguration
    ModalityRoutingConfiguration.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredModality, name: "jpeg"))
    ModalityRoutingConfiguration.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredModality, name: "png"))
    ModalityRoutingConfiguration.add_member(:mp4, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredModality, name: "mp4"))
    ModalityRoutingConfiguration.add_member(:mov, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredModality, name: "mov"))
    ModalityRoutingConfiguration.type = Types::ModalityRoutingConfiguration
    OverrideConfiguration.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOverrideConfiguration, name: "document"))
    OverrideConfiguration.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageOverrideConfiguration, name: "image"))
    OverrideConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoOverrideConfiguration, name: "video"))
    OverrideConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioOverrideConfiguration, name: "audio"))
    OverrideConfiguration.add_member(:modality_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityRoutingConfiguration, name: "modalityRouting"))
    OverrideConfiguration.type = Types::OverrideConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwner.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    ResourceOwner.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpeakerLabelingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    SpeakerLabelingConfiguration.type = Types::SpeakerLabelingConfiguration
    SplitterConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state"))
    SplitterConfiguration.type = Types::SplitterConfiguration
    StandardOutputConfiguration.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentStandardOutputConfiguration, name: "document"))
    StandardOutputConfiguration.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardOutputConfiguration, name: "image"))
    StandardOutputConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardOutputConfiguration, name: "video"))
    StandardOutputConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardOutputConfiguration, name: "audio"))
    StandardOutputConfiguration.type = Types::StandardOutputConfiguration
    State.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    State.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TranscriptConfiguration.add_member(:speaker_labeling, ::Smithy::Schema::Shapes::MemberShape.new(target: SpeakerLabelingConfiguration, name: "speakerLabeling"))
    TranscriptConfiguration.add_member(:channel_labeling, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelLabelingConfiguration, name: "channelLabeling"))
    TranscriptConfiguration.type = Types::TranscriptConfiguration
    Type.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    Type.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    Type.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    Type.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "VIDEO"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "resourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateBlueprintRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBlueprintRequest.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintSchema, name: "schema", traits: {"smithy.api#required" => {}}))
    UpdateBlueprintRequest.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    UpdateBlueprintRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    UpdateBlueprintRequest.type = Types::UpdateBlueprintRequest
    UpdateBlueprintResponse.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "blueprint", traits: {"smithy.api#required" => {}}))
    UpdateBlueprintResponse.type = Types::UpdateBlueprintResponse
    UpdateDataAutomationProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAutomationProjectRequest.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    UpdateDataAutomationProjectRequest.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectDescription, name: "projectDescription"))
    UpdateDataAutomationProjectRequest.add_member(:standard_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputConfiguration, name: "standardOutputConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateDataAutomationProjectRequest.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "customOutputConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideConfiguration, name: "overrideConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    UpdateDataAutomationProjectRequest.type = Types::UpdateDataAutomationProjectRequest
    UpdateDataAutomationProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    UpdateDataAutomationProjectResponse.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    UpdateDataAutomationProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status"))
    UpdateDataAutomationProjectResponse.type = Types::UpdateDataAutomationProjectResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member")
    VideoBoundingBox.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    VideoBoundingBox.type = Types::VideoBoundingBox
    VideoExtractionCategory.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    VideoExtractionCategory.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionCategoryTypes, name: "types"))
    VideoExtractionCategory.type = Types::VideoExtractionCategory
    VideoExtractionCategoryType.add_member(:content_moderation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_MODERATION", traits: {"smithy.api#enumValue" => "CONTENT_MODERATION"}))
    VideoExtractionCategoryType.add_member(:text_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_DETECTION", traits: {"smithy.api#enumValue" => "TEXT_DETECTION"}))
    VideoExtractionCategoryType.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSCRIPT", traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    VideoExtractionCategoryType.add_member(:logos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGOS", traits: {"smithy.api#enumValue" => "LOGOS"}))
    VideoExtractionCategoryTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionCategoryType, name: "member")
    VideoOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    VideoOverrideConfiguration.type = Types::VideoOverrideConfiguration
    VideoStandardExtraction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    VideoStandardExtraction.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoBoundingBox, name: "boundingBox", traits: {"smithy.api#required" => {}}))
    VideoStandardExtraction.type = Types::VideoStandardExtraction
    VideoStandardGenerativeField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    VideoStandardGenerativeField.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardGenerativeFieldTypes, name: "types"))
    VideoStandardGenerativeField.type = Types::VideoStandardGenerativeField
    VideoStandardGenerativeFieldType.add_member(:video_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO_SUMMARY", traits: {"smithy.api#enumValue" => "VIDEO_SUMMARY"}))
    VideoStandardGenerativeFieldType.add_member(:iab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAB", traits: {"smithy.api#enumValue" => "IAB"}))
    VideoStandardGenerativeFieldType.add_member(:chapter_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAPTER_SUMMARY", traits: {"smithy.api#enumValue" => "CHAPTER_SUMMARY"}))
    VideoStandardGenerativeFieldTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardGenerativeFieldType, name: "member")
    VideoStandardOutputConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardExtraction, name: "extraction"))
    VideoStandardOutputConfiguration.add_member(:generative_field, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardGenerativeField, name: "generativeField"))
    VideoStandardOutputConfiguration.type = Types::VideoStandardOutputConfiguration

    AmazonBedrockKeystoneBuildTimeService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockdataautomation#AmazonBedrockKeystoneBuildTimeService"
      service.name = "AmazonBedrockKeystoneBuildTimeService"
      service.version = "2023-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock Data Automation", "arnNamespace" => "bedrock", "endpointPrefix" => "bedrock-data-automation", "cloudTrailEventSource" => "bedrock.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Data Automation for Amazon Bedrock"}
      service.add_operation(:create_blueprint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#CreateBlueprint"
        operation.name = "CreateBlueprint"
        operation.input = CreateBlueprintRequest
        operation.output = CreateBlueprintResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/blueprints/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_blueprint_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#CreateBlueprintVersion"
        operation.name = "CreateBlueprintVersion"
        operation.input = CreateBlueprintVersionRequest
        operation.output = CreateBlueprintVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/blueprints/{blueprintArn}/versions/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_automation_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#CreateDataAutomationProject"
        operation.name = "CreateDataAutomationProject"
        operation.input = CreateDataAutomationProjectRequest
        operation.output = CreateDataAutomationProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/data-automation-projects/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_blueprint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#DeleteBlueprint"
        operation.name = "DeleteBlueprint"
        operation.input = DeleteBlueprintRequest
        operation.output = DeleteBlueprintResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/blueprints/{blueprintArn}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_automation_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#DeleteDataAutomationProject"
        operation.name = "DeleteDataAutomationProject"
        operation.input = DeleteDataAutomationProjectRequest
        operation.output = DeleteDataAutomationProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/data-automation-projects/{projectArn}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_blueprint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#GetBlueprint"
        operation.name = "GetBlueprint"
        operation.input = GetBlueprintRequest
        operation.output = GetBlueprintResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/blueprints/{blueprintArn}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_automation_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#GetDataAutomationProject"
        operation.name = "GetDataAutomationProject"
        operation.input = GetDataAutomationProjectRequest
        operation.output = GetDataAutomationProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-projects/{projectArn}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_blueprints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#ListBlueprints"
        operation.name = "ListBlueprints"
        operation.input = ListBlueprintsRequest
        operation.output = ListBlueprintsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/blueprints/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListBlueprints.new
      end)
      service.add_operation(:list_data_automation_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#ListDataAutomationProjects"
        operation.name = "ListDataAutomationProjects"
        operation.input = ListDataAutomationProjectsRequest
        operation.output = ListDataAutomationProjectsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-projects/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataAutomationProjects.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/listTagsForResource"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tagResource"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/untagResource"}}
      end)
      service.add_operation(:update_blueprint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#UpdateBlueprint"
        operation.name = "UpdateBlueprint"
        operation.input = UpdateBlueprintRequest
        operation.output = UpdateBlueprintResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/blueprints/{blueprintArn}/"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_automation_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#UpdateDataAutomationProject"
        operation.name = "UpdateDataAutomationProject"
        operation.input = UpdateDataAutomationProjectRequest
        operation.output = UpdateDataAutomationProjectResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/data-automation-projects/{projectArn}/"}, "smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
