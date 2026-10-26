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
    AudioGenerativeOutputLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#AudioGenerativeOutputLanguage", name: "AudioGenerativeOutputLanguage")
    AudioInputLanguages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#AudioInputLanguages", name: "AudioInputLanguages")
    AudioLanguageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#AudioLanguageConfiguration", name: "AudioLanguageConfiguration")
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
    BlueprintOptimizationInvocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintOptimizationInvocationArn", name: "BlueprintOptimizationInvocationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-iso|-iso-[a-z]|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:blueprint-optimization-invocation/[a-zA-Z0-9-_]+$"})
    BlueprintOptimizationJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintOptimizationJobStatus", name: "BlueprintOptimizationJobStatus")
    BlueprintOptimizationObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintOptimizationObject", name: "BlueprintOptimizationObject")
    BlueprintOptimizationOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintOptimizationOutputConfiguration", name: "BlueprintOptimizationOutputConfiguration")
    BlueprintOptimizationSample = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintOptimizationSample", name: "BlueprintOptimizationSample")
    BlueprintOptimizationSamples = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintOptimizationSamples", name: "BlueprintOptimizationSamples")
    BlueprintSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintSchema", name: "BlueprintSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#sensitive" => {}})
    BlueprintStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintStage", name: "BlueprintStage")
    BlueprintStageFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintStageFilter", name: "BlueprintStageFilter")
    BlueprintSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintSummary", name: "BlueprintSummary")
    BlueprintVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#BlueprintVersion", name: "BlueprintVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9]*$"})
    Blueprints = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#Blueprints", name: "Blueprints")
    ChannelLabelingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ChannelLabelingConfiguration", name: "ChannelLabelingConfiguration")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 33, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,256}$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopyBlueprintStageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CopyBlueprintStageRequest", name: "CopyBlueprintStageRequest")
    CopyBlueprintStageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CopyBlueprintStageResponse", name: "CopyBlueprintStageResponse")
    CreateBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintRequest", name: "CreateBlueprintRequest")
    CreateBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintResponse", name: "CreateBlueprintResponse")
    CreateBlueprintVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintVersionRequest", name: "CreateBlueprintVersionRequest")
    CreateBlueprintVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateBlueprintVersionResponse", name: "CreateBlueprintVersionResponse")
    CreateDataAutomationLibraryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateDataAutomationLibraryRequest", name: "CreateDataAutomationLibraryRequest")
    CreateDataAutomationLibraryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateDataAutomationLibraryResponse", name: "CreateDataAutomationLibraryResponse")
    CreateDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateDataAutomationProjectRequest", name: "CreateDataAutomationProjectRequest")
    CreateDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CreateDataAutomationProjectResponse", name: "CreateDataAutomationProjectResponse")
    CustomOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#CustomOutputConfiguration", name: "CustomOutputConfiguration")
    DataAutomationLibrary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibrary", name: "DataAutomationLibrary")
    DataAutomationLibraryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryArn", name: "DataAutomationLibraryArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-iso|-iso-[a-z]|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:data-automation-library/[a-zA-Z0-9-]{12,36}$"})
    DataAutomationLibraryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryConfiguration", name: "DataAutomationLibraryConfiguration")
    DataAutomationLibraryDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryDescription", name: "DataAutomationLibraryDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><À-ÖØ-Üßà-öø-üẞ¿¡Œ-œ°£¥₹€§©ª®™¹±-µ✓⑆-⑉฿₽₱₦₣₩₫₺]*$", "smithy.api#sensitive" => {}})
    DataAutomationLibraryEntitySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryEntitySummaries", name: "DataAutomationLibraryEntitySummaries")
    DataAutomationLibraryEntitySummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryEntitySummary", name: "DataAutomationLibraryEntitySummary")
    DataAutomationLibraryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryFilter", name: "DataAutomationLibraryFilter")
    DataAutomationLibraryIngestionJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryIngestionJob", name: "DataAutomationLibraryIngestionJob")
    DataAutomationLibraryIngestionJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryIngestionJobArn", name: "DataAutomationLibraryIngestionJobArn", traits: {"smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-iso|-iso-[a-z]|-us-gov):bedrock:[a-zA-Z0-9-]*:[0-9]{12}:data-automation-library-ingestion-job/[a-zA-Z0-9-]{12,36}$"})
    DataAutomationLibraryIngestionJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryIngestionJobSummaries", name: "DataAutomationLibraryIngestionJobSummaries")
    DataAutomationLibraryIngestionJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryIngestionJobSummary", name: "DataAutomationLibraryIngestionJobSummary")
    DataAutomationLibraryItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryItem", name: "DataAutomationLibraryItem")
    DataAutomationLibraryItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryItems", name: "DataAutomationLibraryItems", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    DataAutomationLibraryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryName", name: "DataAutomationLibraryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$", "smithy.api#sensitive" => {}})
    DataAutomationLibraryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibraryStatus", name: "DataAutomationLibraryStatus")
    DataAutomationLibrarySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibrarySummaries", name: "DataAutomationLibrarySummaries")
    DataAutomationLibrarySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationLibrarySummary", name: "DataAutomationLibrarySummary")
    DataAutomationProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProfileArn", name: "DataAutomationProfileArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:aws(|-cn|-us-gov):bedrock:[a-zA-Z0-9-]*:(aws|[0-9]{12}):data-automation-profile/[a-zA-Z0-9-_.]+$"})
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
    DataAutomationProjectType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DataAutomationProjectType", name: "DataAutomationProjectType")
    DateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.bedrockdataautomation#DateTimestamp", name: "DateTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteBlueprintRequest", name: "DeleteBlueprintRequest")
    DeleteBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteBlueprintResponse", name: "DeleteBlueprintResponse")
    DeleteDataAutomationLibraryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteDataAutomationLibraryRequest", name: "DeleteDataAutomationLibraryRequest")
    DeleteDataAutomationLibraryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteDataAutomationLibraryResponse", name: "DeleteDataAutomationLibraryResponse")
    DeleteDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteDataAutomationProjectRequest", name: "DeleteDataAutomationProjectRequest")
    DeleteDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteDataAutomationProjectResponse", name: "DeleteDataAutomationProjectResponse")
    DeleteEntitiesInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DeleteEntitiesInfo", name: "DeleteEntitiesInfo")
    DesiredModality = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#DesiredModality", name: "DesiredModality")
    DocumentBoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentBoundingBox", name: "DocumentBoundingBox")
    DocumentCustomOutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#DocumentCustomOutputConfiguration", name: "DocumentCustomOutputConfiguration")
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
    EntityDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#EntityDescription", name: "EntityDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><À-ÖØ-Üßà-öø-üẞ¿¡Œ-œ°£¥₹€§©ª®™¹±-µ✓⑆-⑉฿₽₱₦₣₩₫₺]*$", "smithy.api#sensitive" => {}})
    EntityDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockdataautomation#EntityDetails", name: "EntityDetails")
    EntityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#EntityId", name: "EntityId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    EntityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#EntityIdList", name: "EntityIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    EntityMetadata = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#EntityMetadata", name: "EntityMetadata")
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#EntityType", name: "EntityType")
    EntityTypeInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#EntityTypeInfo", name: "EntityTypeInfo")
    EntityTypeInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#EntityTypeInfoList", name: "EntityTypeInfoList")
    EventBridgeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#EventBridgeConfiguration", name: "EventBridgeConfiguration")
    FallbackBlueprintItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#FallbackBlueprintItems", name: "FallbackBlueprintItems", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    GetBlueprintOptimizationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetBlueprintOptimizationStatusRequest", name: "GetBlueprintOptimizationStatusRequest", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrockdataautomation#BlueprintOptimizationJobResource"}]})
    GetBlueprintOptimizationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetBlueprintOptimizationStatusResponse", name: "GetBlueprintOptimizationStatusResponse")
    GetBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetBlueprintRequest", name: "GetBlueprintRequest")
    GetBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetBlueprintResponse", name: "GetBlueprintResponse")
    GetDataAutomationLibraryEntityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryEntityRequest", name: "GetDataAutomationLibraryEntityRequest")
    GetDataAutomationLibraryEntityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryEntityResponse", name: "GetDataAutomationLibraryEntityResponse")
    GetDataAutomationLibraryIngestionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryIngestionJobRequest", name: "GetDataAutomationLibraryIngestionJobRequest")
    GetDataAutomationLibraryIngestionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryIngestionJobResponse", name: "GetDataAutomationLibraryIngestionJobResponse")
    GetDataAutomationLibraryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryRequest", name: "GetDataAutomationLibraryRequest")
    GetDataAutomationLibraryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryResponse", name: "GetDataAutomationLibraryResponse")
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
    InlinePayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockdataautomation#InlinePayload", name: "InlinePayload")
    InputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InputConfiguration", name: "InputConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvokeBlueprintOptimizationAsyncRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InvokeBlueprintOptimizationAsyncRequest", name: "InvokeBlueprintOptimizationAsyncRequest")
    InvokeBlueprintOptimizationAsyncResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InvokeBlueprintOptimizationAsyncResponse", name: "InvokeBlueprintOptimizationAsyncResponse", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.bedrockdataautomation#BlueprintOptimizationJobResource"}]})
    InvokeDataAutomationLibraryIngestionJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InvokeDataAutomationLibraryIngestionJobRequest", name: "InvokeDataAutomationLibraryIngestionJobRequest")
    InvokeDataAutomationLibraryIngestionJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#InvokeDataAutomationLibraryIngestionJobResponse", name: "InvokeDataAutomationLibraryIngestionJobResponse")
    KmsEncryptionContext = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.bedrockdataautomation#KmsEncryptionContext", name: "KmsEncryptionContext", traits: {"smithy.api#length" => {"min" => 1}})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]+$"})
    Language = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#Language", name: "Language")
    LibraryIngestionJobOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#LibraryIngestionJobOperationType", name: "LibraryIngestionJobOperationType")
    LibraryIngestionJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#LibraryIngestionJobStatus", name: "LibraryIngestionJobStatus")
    ListBlueprintsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListBlueprintsRequest", name: "ListBlueprintsRequest")
    ListBlueprintsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListBlueprintsResponse", name: "ListBlueprintsResponse")
    ListDataAutomationLibrariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationLibrariesRequest", name: "ListDataAutomationLibrariesRequest")
    ListDataAutomationLibrariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationLibrariesResponse", name: "ListDataAutomationLibrariesResponse")
    ListDataAutomationLibraryEntitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraryEntitiesRequest", name: "ListDataAutomationLibraryEntitiesRequest")
    ListDataAutomationLibraryEntitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraryEntitiesResponse", name: "ListDataAutomationLibraryEntitiesResponse")
    ListDataAutomationLibraryIngestionJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraryIngestionJobsRequest", name: "ListDataAutomationLibraryIngestionJobsRequest")
    ListDataAutomationLibraryIngestionJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraryIngestionJobsResponse", name: "ListDataAutomationLibraryIngestionJobsResponse")
    ListDataAutomationProjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationProjectsRequest", name: "ListDataAutomationProjectsRequest")
    ListDataAutomationProjectsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListDataAutomationProjectsResponse", name: "ListDataAutomationProjectsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.bedrockdataautomation#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ModalityProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ModalityProcessingConfiguration", name: "ModalityProcessingConfiguration")
    ModalityRoutingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ModalityRoutingConfiguration", name: "ModalityRoutingConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^\\S*$"})
    NonBlankString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#NonBlankString", name: "NonBlankString", traits: {"smithy.api#pattern" => "^[\\s\\S]+$"})
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#NotificationConfiguration", name: "NotificationConfiguration")
    OutputConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#OutputConfiguration", name: "OutputConfiguration")
    OverrideConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#OverrideConfiguration", name: "OverrideConfiguration")
    PIIEntitiesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#PIIEntitiesConfiguration", name: "PIIEntitiesConfiguration")
    PIIEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#PIIEntityType", name: "PIIEntityType")
    PIIEntityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#PIIEntityTypes", name: "PIIEntityTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    PIIRedactionMaskMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#PIIRedactionMaskMode", name: "PIIRedactionMaskMode")
    Phrase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#Phrase", name: "Phrase")
    PhraseDisplayAsText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#PhraseDisplayAsText", name: "PhraseDisplayAsText", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".+", "smithy.api#sensitive" => {}})
    PhraseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#PhraseList", name: "PhraseList", traits: {"smithy.api#length" => {"min" => 1}})
    PhraseText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#PhraseText", name: "PhraseText", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".+", "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOwner = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#ResourceOwner", name: "ResourceOwner")
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#S3Object", name: "S3Object")
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#S3ObjectVersion", name: "S3ObjectVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    SensitiveDataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#SensitiveDataConfiguration", name: "SensitiveDataConfiguration")
    SensitiveDataDetectionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#SensitiveDataDetectionMode", name: "SensitiveDataDetectionMode")
    SensitiveDataDetectionScope = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#SensitiveDataDetectionScope", name: "SensitiveDataDetectionScope", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    SensitiveDataDetectionScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#SensitiveDataDetectionScopeType", name: "SensitiveDataDetectionScopeType")
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
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.bedrockdataautomation#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(|-cn|-iso|-iso-[a-z]|-us-gov):bedrock:[a-z0-9-]*:[0-9]{12}:(blueprint|data-automation-project|blueprint-optimization-invocation|data-automation-library|data-automation-library-ingestion-job)/[a-zA-Z0-9-]{12,36}$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TranscriptConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#TranscriptConfiguration", name: "TranscriptConfiguration")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.bedrockdataautomation#Type", name: "Type")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateBlueprintRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateBlueprintRequest", name: "UpdateBlueprintRequest")
    UpdateBlueprintResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateBlueprintResponse", name: "UpdateBlueprintResponse")
    UpdateDataAutomationLibraryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateDataAutomationLibraryRequest", name: "UpdateDataAutomationLibraryRequest")
    UpdateDataAutomationLibraryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateDataAutomationLibraryResponse", name: "UpdateDataAutomationLibraryResponse")
    UpdateDataAutomationProjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateDataAutomationProjectRequest", name: "UpdateDataAutomationProjectRequest")
    UpdateDataAutomationProjectResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#UpdateDataAutomationProjectResponse", name: "UpdateDataAutomationProjectResponse")
    UpsertEntitiesInfo = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.bedrockdataautomation#UpsertEntitiesInfo", name: "UpsertEntitiesInfo", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    UpsertEntityInfo = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.bedrockdataautomation#UpsertEntityInfo", name: "UpsertEntityInfo")
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
    VocabularyEntity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VocabularyEntity", name: "VocabularyEntity")
    VocabularyEntityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VocabularyEntityInfo", name: "VocabularyEntityInfo")
    VocabularyEntitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.bedrockdataautomation#VocabularyEntitySummary", name: "VocabularyEntitySummary")

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
    AudioExtractionCategoryTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionCategoryType, name: "member"))
    AudioGenerativeOutputLanguage.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    AudioGenerativeOutputLanguage.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "EN"}))
    AudioInputLanguages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "member"))
    AudioLanguageConfiguration.add_member(:input_languages, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioInputLanguages, name: "inputLanguages"))
    AudioLanguageConfiguration.add_member(:generative_output_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioGenerativeOutputLanguage, name: "generativeOutputLanguage"))
    AudioLanguageConfiguration.add_member(:identify_multiple_languages, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "identifyMultipleLanguages"))
    AudioLanguageConfiguration.type = Types::AudioLanguageConfiguration
    AudioOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    AudioOverrideConfiguration.add_member(:language_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioLanguageConfiguration, name: "languageConfiguration"))
    AudioOverrideConfiguration.add_member(:sensitive_data_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataConfiguration, name: "sensitiveDataConfiguration"))
    AudioOverrideConfiguration.type = Types::AudioOverrideConfiguration
    AudioStandardExtraction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioExtractionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    AudioStandardExtraction.type = Types::AudioStandardExtraction
    AudioStandardGenerativeField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    AudioStandardGenerativeField.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardGenerativeFieldTypes, name: "types"))
    AudioStandardGenerativeField.type = Types::AudioStandardGenerativeField
    AudioStandardGenerativeFieldType.add_member(:audio_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO_SUMMARY", traits: {"smithy.api#enumValue" => "AUDIO_SUMMARY"}))
    AudioStandardGenerativeFieldType.add_member(:iab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAB", traits: {"smithy.api#enumValue" => "IAB"}))
    AudioStandardGenerativeFieldType.add_member(:topic_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOPIC_SUMMARY", traits: {"smithy.api#enumValue" => "TOPIC_SUMMARY"}))
    AudioStandardGenerativeFieldTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioStandardGenerativeFieldType, name: "member"))
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
    Blueprint.add_member(:optimization_samples, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationSamples, name: "optimizationSamples"))
    Blueprint.add_member(:optimization_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "optimizationTime"))
    Blueprint.type = Types::Blueprint
    BlueprintFilter.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    BlueprintFilter.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    BlueprintFilter.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    BlueprintFilter.type = Types::BlueprintFilter
    BlueprintItem.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    BlueprintItem.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    BlueprintItem.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    BlueprintItem.type = Types::BlueprintItem
    BlueprintItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintItem, name: "member"))
    BlueprintOptimizationJobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "Created"}))
    BlueprintOptimizationJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    BlueprintOptimizationJobStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    BlueprintOptimizationJobStatus.add_member(:service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ERROR", traits: {"smithy.api#enumValue" => "ServiceError"}))
    BlueprintOptimizationJobStatus.add_member(:client_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_ERROR", traits: {"smithy.api#enumValue" => "ClientError"}))
    BlueprintOptimizationObject.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#required" => {}}))
    BlueprintOptimizationObject.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "stage"))
    BlueprintOptimizationObject.type = Types::BlueprintOptimizationObject
    BlueprintOptimizationOutputConfiguration.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "s3Object", traits: {"smithy.api#required" => {}}))
    BlueprintOptimizationOutputConfiguration.type = Types::BlueprintOptimizationOutputConfiguration
    BlueprintOptimizationSample.add_member(:asset_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "assetS3Object", traits: {"smithy.api#required" => {}}))
    BlueprintOptimizationSample.add_member(:ground_truth_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "groundTruthS3Object", traits: {"smithy.api#required" => {}}))
    BlueprintOptimizationSample.type = Types::BlueprintOptimizationSample
    BlueprintOptimizationSamples.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationSample, name: "member"))
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
    Blueprints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintSummary, name: "member"))
    ChannelLabelingConfiguration.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    ChannelLabelingConfiguration.type = Types::ChannelLabelingConfiguration
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ConflictException.type = Types::ConflictException
    CopyBlueprintStageRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CopyBlueprintStageRequest.add_member(:source_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "sourceStage", traits: {"smithy.api#required" => {}}))
    CopyBlueprintStageRequest.add_member(:target_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "targetStage", traits: {"smithy.api#required" => {}}))
    CopyBlueprintStageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CopyBlueprintStageRequest.type = Types::CopyBlueprintStageRequest
    CopyBlueprintStageResponse.type = Types::CopyBlueprintStageResponse
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
    CreateDataAutomationLibraryRequest.add_member(:library_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryName, name: "libraryName", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationLibraryRequest.add_member(:library_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryDescription, name: "libraryDescription"))
    CreateDataAutomationLibraryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataAutomationLibraryRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateDataAutomationLibraryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDataAutomationLibraryRequest.type = Types::CreateDataAutomationLibraryRequest
    CreateDataAutomationLibraryResponse.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn"))
    CreateDataAutomationLibraryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryStatus, name: "status"))
    CreateDataAutomationLibraryResponse.type = Types::CreateDataAutomationLibraryResponse
    CreateDataAutomationProjectRequest.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationProjectRequest.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectDescription, name: "projectDescription"))
    CreateDataAutomationProjectRequest.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    CreateDataAutomationProjectRequest.add_member(:project_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectType, name: "projectType", traits: {"smithy.api#default" => "ASYNC"}))
    CreateDataAutomationProjectRequest.add_member(:standard_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputConfiguration, name: "standardOutputConfiguration", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationProjectRequest.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "customOutputConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideConfiguration, name: "overrideConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:data_automation_library_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryConfiguration, name: "dataAutomationLibraryConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateDataAutomationProjectRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    CreateDataAutomationProjectRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDataAutomationProjectRequest.type = Types::CreateDataAutomationProjectRequest
    CreateDataAutomationProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    CreateDataAutomationProjectResponse.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    CreateDataAutomationProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status"))
    CreateDataAutomationProjectResponse.type = Types::CreateDataAutomationProjectResponse
    CustomOutputConfiguration.add_member(:blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintItems, name: "blueprints"))
    CustomOutputConfiguration.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentCustomOutputConfiguration, name: "document"))
    CustomOutputConfiguration.type = Types::CustomOutputConfiguration
    DataAutomationLibrary.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#required" => {}}))
    DataAutomationLibrary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationLibrary.add_member(:library_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryName, name: "libraryName", traits: {"smithy.api#required" => {}}))
    DataAutomationLibrary.add_member(:library_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryDescription, name: "libraryDescription"))
    DataAutomationLibrary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DataAutomationLibrary.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeInfoList, name: "entityTypes"))
    DataAutomationLibrary.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    DataAutomationLibrary.add_member(:kms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsEncryptionContext, name: "kmsEncryptionContext"))
    DataAutomationLibrary.type = Types::DataAutomationLibrary
    DataAutomationLibraryConfiguration.add_member(:libraries, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryItems, name: "libraries"))
    DataAutomationLibraryConfiguration.type = Types::DataAutomationLibraryConfiguration
    DataAutomationLibraryEntitySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryEntitySummary, name: "member"))
    DataAutomationLibraryEntitySummary.add_member(:vocabulary, Types::DataAutomationLibraryEntitySummary::Vocabulary, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyEntitySummary, name: "vocabulary"))
    DataAutomationLibraryEntitySummary.add_member(:unknown, Types::DataAutomationLibraryEntitySummary::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DataAutomationLibraryEntitySummary.type = Types::DataAutomationLibraryEntitySummary
    DataAutomationLibraryFilter.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryFilter.type = Types::DataAutomationLibraryFilter
    DataAutomationLibraryIngestionJob.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJob.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJob.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJob.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryIngestionJobOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJob.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryIngestionJobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJob.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJob.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "completionTime"))
    DataAutomationLibraryIngestionJob.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    DataAutomationLibraryIngestionJob.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorType"))
    DataAutomationLibraryIngestionJob.type = Types::DataAutomationLibraryIngestionJob
    DataAutomationLibraryIngestionJobSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJobSummary, name: "member"))
    DataAutomationLibraryIngestionJobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryIngestionJobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJobSummary.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJobSummary.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryIngestionJobOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJobSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryIngestionJobSummary.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "completionTime"))
    DataAutomationLibraryIngestionJobSummary.type = Types::DataAutomationLibraryIngestionJobSummary
    DataAutomationLibraryItem.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#required" => {}}))
    DataAutomationLibraryItem.type = Types::DataAutomationLibraryItem
    DataAutomationLibraryItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryItem, name: "member"))
    DataAutomationLibraryStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DataAutomationLibraryStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DataAutomationLibrarySummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibrarySummary, name: "member"))
    DataAutomationLibrarySummary.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#required" => {}}))
    DataAutomationLibrarySummary.add_member(:library_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryName, name: "libraryName"))
    DataAutomationLibrarySummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationLibrarySummary.type = Types::DataAutomationLibrarySummary
    DataAutomationProject.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastModifiedTime", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    DataAutomationProject.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    DataAutomationProject.add_member(:project_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectType, name: "projectType"))
    DataAutomationProject.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectDescription, name: "projectDescription"))
    DataAutomationProject.add_member(:standard_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputConfiguration, name: "standardOutputConfiguration"))
    DataAutomationProject.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "customOutputConfiguration"))
    DataAutomationProject.add_member(:override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideConfiguration, name: "overrideConfiguration"))
    DataAutomationProject.add_member(:data_automation_library_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryConfiguration, name: "dataAutomationLibraryConfiguration"))
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
    DataAutomationProjectSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectSummary, name: "member"))
    DataAutomationProjectSummary.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DataAutomationProjectSummary.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    DataAutomationProjectSummary.add_member(:project_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectType, name: "projectType"))
    DataAutomationProjectSummary.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectName, name: "projectName"))
    DataAutomationProjectSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "creationTime", traits: {"smithy.api#required" => {}}))
    DataAutomationProjectSummary.type = Types::DataAutomationProjectSummary
    DataAutomationProjectType.add_member(:async, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASYNC", traits: {"smithy.api#enumValue" => "ASYNC"}))
    DataAutomationProjectType.add_member(:sync, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYNC", traits: {"smithy.api#enumValue" => "SYNC"}))
    DeleteBlueprintRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBlueprintRequest.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion", traits: {"smithy.api#httpQuery" => "blueprintVersion"}))
    DeleteBlueprintRequest.type = Types::DeleteBlueprintRequest
    DeleteBlueprintResponse.type = Types::DeleteBlueprintResponse
    DeleteDataAutomationLibraryRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAutomationLibraryRequest.type = Types::DeleteDataAutomationLibraryRequest
    DeleteDataAutomationLibraryResponse.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn"))
    DeleteDataAutomationLibraryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryStatus, name: "status"))
    DeleteDataAutomationLibraryResponse.type = Types::DeleteDataAutomationLibraryResponse
    DeleteDataAutomationProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataAutomationProjectRequest.type = Types::DeleteDataAutomationProjectRequest
    DeleteDataAutomationProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    DeleteDataAutomationProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status"))
    DeleteDataAutomationProjectResponse.type = Types::DeleteDataAutomationProjectResponse
    DeleteEntitiesInfo.add_member(:entity_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityIdList, name: "entityIds", traits: {"smithy.api#required" => {}}))
    DeleteEntitiesInfo.type = Types::DeleteEntitiesInfo
    DesiredModality.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE", traits: {"smithy.api#enumValue" => "IMAGE"}))
    DesiredModality.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    DesiredModality.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    DesiredModality.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "VIDEO"}))
    DocumentBoundingBox.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    DocumentBoundingBox.type = Types::DocumentBoundingBox
    DocumentCustomOutputConfiguration.add_member(:fallback_blueprints, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackBlueprintItems, name: "fallbackBlueprints"))
    DocumentCustomOutputConfiguration.type = Types::DocumentCustomOutputConfiguration
    DocumentExtractionGranularity.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentExtractionGranularityTypes, name: "types"))
    DocumentExtractionGranularity.type = Types::DocumentExtractionGranularity
    DocumentExtractionGranularityType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    DocumentExtractionGranularityType.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE", traits: {"smithy.api#enumValue" => "PAGE"}))
    DocumentExtractionGranularityType.add_member(:element, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELEMENT", traits: {"smithy.api#enumValue" => "ELEMENT"}))
    DocumentExtractionGranularityType.add_member(:word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORD", traits: {"smithy.api#enumValue" => "WORD"}))
    DocumentExtractionGranularityType.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE", traits: {"smithy.api#enumValue" => "LINE"}))
    DocumentExtractionGranularityTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentExtractionGranularityType, name: "member"))
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
    DocumentOutputTextFormatTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOutputTextFormatType, name: "member"))
    DocumentOverrideConfiguration.add_member(:splitter, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitterConfiguration, name: "splitter"))
    DocumentOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    DocumentOverrideConfiguration.add_member(:sensitive_data_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataConfiguration, name: "sensitiveDataConfiguration"))
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
    EntityDetails.add_member(:vocabulary, Types::EntityDetails::Vocabulary, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyEntity, name: "vocabulary"))
    EntityDetails.add_member(:unknown, Types::EntityDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EntityDetails.type = Types::EntityDetails
    EntityIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "member"))
    EntityType.add_member(:vocabulary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOCABULARY", traits: {"smithy.api#enumValue" => "VOCABULARY"}))
    EntityTypeInfo.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    EntityTypeInfo.add_member(:entity_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityMetadata, name: "entityMetadata"))
    EntityTypeInfo.type = Types::EntityTypeInfo
    EntityTypeInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypeInfo, name: "member"))
    EventBridgeConfiguration.add_member(:event_bridge_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "eventBridgeEnabled", traits: {"smithy.api#required" => {}}))
    EventBridgeConfiguration.type = Types::EventBridgeConfiguration
    FallbackBlueprintItems.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintItem, name: "member"))
    GetBlueprintOptimizationStatusRequest.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationInvocationArn, name: "invocationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBlueprintOptimizationStatusRequest.type = Types::GetBlueprintOptimizationStatusRequest
    GetBlueprintOptimizationStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationJobStatus, name: "status"))
    GetBlueprintOptimizationStatusResponse.add_member(:error_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorType"))
    GetBlueprintOptimizationStatusResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "errorMessage"))
    GetBlueprintOptimizationStatusResponse.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationOutputConfiguration, name: "outputConfiguration"))
    GetBlueprintOptimizationStatusResponse.type = Types::GetBlueprintOptimizationStatusResponse
    GetBlueprintRequest.add_member(:blueprint_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintArn, name: "blueprintArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBlueprintRequest.add_member(:blueprint_version, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintVersion, name: "blueprintVersion"))
    GetBlueprintRequest.add_member(:blueprint_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintStage, name: "blueprintStage"))
    GetBlueprintRequest.type = Types::GetBlueprintRequest
    GetBlueprintResponse.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: Blueprint, name: "blueprint", traits: {"smithy.api#nestedProperties" => {}, "smithy.api#required" => {}}))
    GetBlueprintResponse.type = Types::GetBlueprintResponse
    GetDataAutomationLibraryEntityRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationLibraryEntityRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationLibraryEntityRequest.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationLibraryEntityRequest.type = Types::GetDataAutomationLibraryEntityRequest
    GetDataAutomationLibraryEntityResponse.add_member(:entity, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDetails, name: "entity"))
    GetDataAutomationLibraryEntityResponse.type = Types::GetDataAutomationLibraryEntityResponse
    GetDataAutomationLibraryIngestionJobRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationLibraryIngestionJobRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJobArn, name: "jobArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationLibraryIngestionJobRequest.type = Types::GetDataAutomationLibraryIngestionJobRequest
    GetDataAutomationLibraryIngestionJobResponse.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJob, name: "job"))
    GetDataAutomationLibraryIngestionJobResponse.type = Types::GetDataAutomationLibraryIngestionJobResponse
    GetDataAutomationLibraryRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataAutomationLibraryRequest.type = Types::GetDataAutomationLibraryRequest
    GetDataAutomationLibraryResponse.add_member(:library, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibrary, name: "library", traits: {"smithy.api#nestedProperties" => {}}))
    GetDataAutomationLibraryResponse.type = Types::GetDataAutomationLibraryResponse
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
    ImageExtractionCategoryTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionCategoryType, name: "member"))
    ImageOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    ImageOverrideConfiguration.add_member(:sensitive_data_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataConfiguration, name: "sensitiveDataConfiguration"))
    ImageOverrideConfiguration.type = Types::ImageOverrideConfiguration
    ImageStandardExtraction.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageExtractionCategory, name: "category", traits: {"smithy.api#required" => {}}))
    ImageStandardExtraction.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBoundingBox, name: "boundingBox", traits: {"smithy.api#required" => {}}))
    ImageStandardExtraction.type = Types::ImageStandardExtraction
    ImageStandardGenerativeField.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    ImageStandardGenerativeField.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardGenerativeFieldTypes, name: "types"))
    ImageStandardGenerativeField.type = Types::ImageStandardGenerativeField
    ImageStandardGenerativeFieldType.add_member(:image_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_SUMMARY", traits: {"smithy.api#enumValue" => "IMAGE_SUMMARY"}))
    ImageStandardGenerativeFieldType.add_member(:iab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAB", traits: {"smithy.api#enumValue" => "IAB"}))
    ImageStandardGenerativeFieldTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardGenerativeFieldType, name: "member"))
    ImageStandardOutputConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardExtraction, name: "extraction"))
    ImageStandardOutputConfiguration.add_member(:generative_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStandardGenerativeField, name: "generativeField"))
    ImageStandardOutputConfiguration.type = Types::ImageStandardOutputConfiguration
    InlinePayload.add_member(:upsert_entities_info, Types::InlinePayload::UpsertEntitiesInfo, ::Smithy::Schema::Shapes::MemberShape.new(target: UpsertEntitiesInfo, name: "upsertEntitiesInfo"))
    InlinePayload.add_member(:delete_entities_info, Types::InlinePayload::DeleteEntitiesInfo, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteEntitiesInfo, name: "deleteEntitiesInfo"))
    InlinePayload.add_member(:unknown, Types::InlinePayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    InlinePayload.type = Types::InlinePayload
    InputConfiguration.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "s3Object"))
    InputConfiguration.add_member(:inline_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: InlinePayload, name: "inlinePayload"))
    InputConfiguration.type = Types::InputConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    InternalServerException.type = Types::InternalServerException
    InvokeBlueprintOptimizationAsyncRequest.add_member(:blueprint, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationObject, name: "blueprint", traits: {"smithy.api#required" => {}}))
    InvokeBlueprintOptimizationAsyncRequest.add_member(:samples, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationSamples, name: "samples", traits: {"smithy.api#required" => {}}))
    InvokeBlueprintOptimizationAsyncRequest.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationOutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    InvokeBlueprintOptimizationAsyncRequest.add_member(:data_automation_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProfileArn, name: "dataAutomationProfileArn", traits: {"smithy.api#required" => {}}))
    InvokeBlueprintOptimizationAsyncRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    InvokeBlueprintOptimizationAsyncRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    InvokeBlueprintOptimizationAsyncRequest.type = Types::InvokeBlueprintOptimizationAsyncRequest
    InvokeBlueprintOptimizationAsyncResponse.add_member(:invocation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintOptimizationInvocationArn, name: "invocationArn", traits: {"smithy.api#required" => {}}))
    InvokeBlueprintOptimizationAsyncResponse.type = Types::InvokeBlueprintOptimizationAsyncResponse
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:input_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputConfiguration, name: "inputConfiguration", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LibraryIngestionJobOperationType, name: "operationType", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfiguration, name: "outputConfiguration", traits: {"smithy.api#required" => {}}))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "notificationConfiguration"))
    InvokeDataAutomationLibraryIngestionJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    InvokeDataAutomationLibraryIngestionJobRequest.type = Types::InvokeDataAutomationLibraryIngestionJobRequest
    InvokeDataAutomationLibraryIngestionJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJobArn, name: "jobArn"))
    InvokeDataAutomationLibraryIngestionJobResponse.type = Types::InvokeDataAutomationLibraryIngestionJobResponse
    KmsEncryptionContext.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextKey, name: "key"))
    KmsEncryptionContext.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContextValue, name: "value"))
    Language.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN", traits: {"smithy.api#enumValue" => "EN"}))
    Language.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    Language.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    Language.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    Language.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    Language.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    Language.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA", traits: {"smithy.api#enumValue" => "JA"}))
    Language.add_member(:ko, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO", traits: {"smithy.api#enumValue" => "KO"}))
    Language.add_member(:cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN", traits: {"smithy.api#enumValue" => "CN"}))
    Language.add_member(:tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TW", traits: {"smithy.api#enumValue" => "TW"}))
    Language.add_member(:hk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HK", traits: {"smithy.api#enumValue" => "HK"}))
    LibraryIngestionJobOperationType.add_member(:upsert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPSERT", traits: {"smithy.api#enumValue" => "UPSERT"}))
    LibraryIngestionJobOperationType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    LibraryIngestionJobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LibraryIngestionJobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    LibraryIngestionJobStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    LibraryIngestionJobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
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
    ListDataAutomationLibrariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDataAutomationLibrariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationLibrariesRequest.add_member(:project_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectFilter, name: "projectFilter"))
    ListDataAutomationLibrariesRequest.type = Types::ListDataAutomationLibrariesRequest
    ListDataAutomationLibrariesResponse.add_member(:libraries, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibrarySummaries, name: "libraries"))
    ListDataAutomationLibrariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationLibrariesResponse.type = Types::ListDataAutomationLibrariesResponse
    ListDataAutomationLibraryEntitiesRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataAutomationLibraryEntitiesRequest.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "entityType", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataAutomationLibraryEntitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDataAutomationLibraryEntitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationLibraryEntitiesRequest.type = Types::ListDataAutomationLibraryEntitiesRequest
    ListDataAutomationLibraryEntitiesResponse.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryEntitySummaries, name: "entities"))
    ListDataAutomationLibraryEntitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationLibraryEntitiesResponse.type = Types::ListDataAutomationLibraryEntitiesResponse
    ListDataAutomationLibraryIngestionJobsRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataAutomationLibraryIngestionJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDataAutomationLibraryIngestionJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationLibraryIngestionJobsRequest.type = Types::ListDataAutomationLibraryIngestionJobsRequest
    ListDataAutomationLibraryIngestionJobsResponse.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryIngestionJobSummaries, name: "jobs"))
    ListDataAutomationLibraryIngestionJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationLibraryIngestionJobsResponse.type = Types::ListDataAutomationLibraryIngestionJobsResponse
    ListDataAutomationProjectsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDataAutomationProjectsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDataAutomationProjectsRequest.add_member(:project_stage_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStageFilter, name: "projectStageFilter"))
    ListDataAutomationProjectsRequest.add_member(:blueprint_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: BlueprintFilter, name: "blueprintFilter"))
    ListDataAutomationProjectsRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, name: "resourceOwner"))
    ListDataAutomationProjectsRequest.add_member(:library_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryFilter, name: "libraryFilter"))
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
    NotificationConfiguration.add_member(:event_bridge_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeConfiguration, name: "eventBridgeConfiguration", traits: {"smithy.api#required" => {}}))
    NotificationConfiguration.type = Types::NotificationConfiguration
    OutputConfiguration.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    OutputConfiguration.type = Types::OutputConfiguration
    OverrideConfiguration.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentOverrideConfiguration, name: "document"))
    OverrideConfiguration.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageOverrideConfiguration, name: "image"))
    OverrideConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoOverrideConfiguration, name: "video"))
    OverrideConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioOverrideConfiguration, name: "audio"))
    OverrideConfiguration.add_member(:modality_routing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityRoutingConfiguration, name: "modalityRouting"))
    OverrideConfiguration.type = Types::OverrideConfiguration
    PIIEntitiesConfiguration.add_member(:pii_entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: PIIEntityTypes, name: "piiEntityTypes"))
    PIIEntitiesConfiguration.add_member(:redaction_mask_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PIIRedactionMaskMode, name: "redactionMaskMode"))
    PIIEntitiesConfiguration.type = Types::PIIEntitiesConfiguration
    PIIEntityType.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    PIIEntityType.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDRESS", traits: {"smithy.api#enumValue" => "ADDRESS"}))
    PIIEntityType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    PIIEntityType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    PIIEntityType.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "EMAIL"}))
    PIIEntityType.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE", traits: {"smithy.api#enumValue" => "PHONE"}))
    PIIEntityType.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USERNAME", traits: {"smithy.api#enumValue" => "USERNAME"}))
    PIIEntityType.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASSWORD", traits: {"smithy.api#enumValue" => "PASSWORD"}))
    PIIEntityType.add_member(:driver_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRIVER_ID", traits: {"smithy.api#enumValue" => "DRIVER_ID"}))
    PIIEntityType.add_member(:license_plate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LICENSE_PLATE", traits: {"smithy.api#enumValue" => "LICENSE_PLATE"}))
    PIIEntityType.add_member(:vehicle_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VEHICLE_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "VEHICLE_IDENTIFICATION_NUMBER"}))
    PIIEntityType.add_member(:credit_debit_card_cvv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_CVV", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_CVV"}))
    PIIEntityType.add_member(:credit_debit_card_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_EXPIRY", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_EXPIRY"}))
    PIIEntityType.add_member(:credit_debit_card_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREDIT_DEBIT_CARD_NUMBER", traits: {"smithy.api#enumValue" => "CREDIT_DEBIT_CARD_NUMBER"}))
    PIIEntityType.add_member(:pin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PIN", traits: {"smithy.api#enumValue" => "PIN"}))
    PIIEntityType.add_member(:international_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNATIONAL_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "INTERNATIONAL_BANK_ACCOUNT_NUMBER"}))
    PIIEntityType.add_member(:swift_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWIFT_CODE", traits: {"smithy.api#enumValue" => "SWIFT_CODE"}))
    PIIEntityType.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP_ADDRESS", traits: {"smithy.api#enumValue" => "IP_ADDRESS"}))
    PIIEntityType.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAC_ADDRESS", traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    PIIEntityType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    PIIEntityType.add_member(:aws_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCESS_KEY", traits: {"smithy.api#enumValue" => "AWS_ACCESS_KEY"}))
    PIIEntityType.add_member(:aws_secret_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SECRET_KEY", traits: {"smithy.api#enumValue" => "AWS_SECRET_KEY"}))
    PIIEntityType.add_member(:us_bank_account_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_BANK_ACCOUNT_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ACCOUNT_NUMBER"}))
    PIIEntityType.add_member(:us_bank_routing_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_BANK_ROUTING_NUMBER", traits: {"smithy.api#enumValue" => "US_BANK_ROUTING_NUMBER"}))
    PIIEntityType.add_member(:us_individual_tax_identification_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", traits: {"smithy.api#enumValue" => "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER"}))
    PIIEntityType.add_member(:us_passport_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_PASSPORT_NUMBER", traits: {"smithy.api#enumValue" => "US_PASSPORT_NUMBER"}))
    PIIEntityType.add_member(:us_social_security_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_SOCIAL_SECURITY_NUMBER", traits: {"smithy.api#enumValue" => "US_SOCIAL_SECURITY_NUMBER"}))
    PIIEntityType.add_member(:ca_health_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_HEALTH_NUMBER", traits: {"smithy.api#enumValue" => "CA_HEALTH_NUMBER"}))
    PIIEntityType.add_member(:ca_social_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_SOCIAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "CA_SOCIAL_INSURANCE_NUMBER"}))
    PIIEntityType.add_member(:uk_national_health_service_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_HEALTH_SERVICE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_HEALTH_SERVICE_NUMBER"}))
    PIIEntityType.add_member(:uk_national_insurance_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_NATIONAL_INSURANCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_NATIONAL_INSURANCE_NUMBER"}))
    PIIEntityType.add_member(:uk_unique_taxpayer_reference_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", traits: {"smithy.api#enumValue" => "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER"}))
    PIIEntityTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PIIEntityType, name: "member"))
    PIIRedactionMaskMode.add_member(:pii, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PII", traits: {"smithy.api#enumValue" => "PII"}))
    PIIRedactionMaskMode.add_member(:entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENTITY_TYPE", traits: {"smithy.api#enumValue" => "ENTITY_TYPE"}))
    Phrase.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: PhraseText, name: "text", traits: {"smithy.api#required" => {}}))
    Phrase.add_member(:display_as_text, ::Smithy::Schema::Shapes::MemberShape.new(target: PhraseDisplayAsText, name: "displayAsText"))
    Phrase.type = Types::Phrase
    PhraseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Phrase, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceOwner.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    ResourceOwner.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    S3Object.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3Uri", traits: {"smithy.api#required" => {}}))
    S3Object.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "version"))
    S3Object.type = Types::S3Object
    SensitiveDataConfiguration.add_member(:detection_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataDetectionMode, name: "detectionMode", traits: {"smithy.api#required" => {}}))
    SensitiveDataConfiguration.add_member(:detection_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataDetectionScope, name: "detectionScope"))
    SensitiveDataConfiguration.add_member(:pii_entities_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PIIEntitiesConfiguration, name: "piiEntitiesConfiguration"))
    SensitiveDataConfiguration.type = Types::SensitiveDataConfiguration
    SensitiveDataDetectionMode.add_member(:detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTION", traits: {"smithy.api#enumValue" => "DETECTION"}))
    SensitiveDataDetectionMode.add_member(:detection_and_redaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETECTION_AND_REDACTION", traits: {"smithy.api#enumValue" => "DETECTION_AND_REDACTION"}))
    SensitiveDataDetectionScope.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataDetectionScopeType, name: "member"))
    SensitiveDataDetectionScopeType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    SensitiveDataDetectionScopeType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
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
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
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
    UpdateDataAutomationLibraryRequest.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAutomationLibraryRequest.add_member(:library_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryDescription, name: "libraryDescription"))
    UpdateDataAutomationLibraryRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateDataAutomationLibraryRequest.type = Types::UpdateDataAutomationLibraryRequest
    UpdateDataAutomationLibraryResponse.add_member(:library_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryArn, name: "libraryArn"))
    UpdateDataAutomationLibraryResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryStatus, name: "status"))
    UpdateDataAutomationLibraryResponse.type = Types::UpdateDataAutomationLibraryResponse
    UpdateDataAutomationProjectRequest.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataAutomationProjectRequest.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    UpdateDataAutomationProjectRequest.add_member(:project_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectDescription, name: "projectDescription"))
    UpdateDataAutomationProjectRequest.add_member(:standard_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardOutputConfiguration, name: "standardOutputConfiguration", traits: {"smithy.api#required" => {}}))
    UpdateDataAutomationProjectRequest.add_member(:custom_output_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomOutputConfiguration, name: "customOutputConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:override_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideConfiguration, name: "overrideConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:data_automation_library_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationLibraryConfiguration, name: "dataAutomationLibraryConfiguration"))
    UpdateDataAutomationProjectRequest.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "encryptionConfiguration"))
    UpdateDataAutomationProjectRequest.type = Types::UpdateDataAutomationProjectRequest
    UpdateDataAutomationProjectResponse.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectArn, name: "projectArn", traits: {"smithy.api#required" => {}}))
    UpdateDataAutomationProjectResponse.add_member(:project_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStage, name: "projectStage"))
    UpdateDataAutomationProjectResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DataAutomationProjectStatus, name: "status"))
    UpdateDataAutomationProjectResponse.type = Types::UpdateDataAutomationProjectResponse
    UpsertEntitiesInfo.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpsertEntityInfo, name: "member"))
    UpsertEntityInfo.add_member(:vocabulary, Types::UpsertEntityInfo::Vocabulary, ::Smithy::Schema::Shapes::MemberShape.new(target: VocabularyEntityInfo, name: "vocabulary"))
    UpsertEntityInfo.add_member(:unknown, Types::UpsertEntityInfo::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    UpsertEntityInfo.type = Types::UpsertEntityInfo
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankString, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    VideoBoundingBox.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    VideoBoundingBox.type = Types::VideoBoundingBox
    VideoExtractionCategory.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "state", traits: {"smithy.api#required" => {}}))
    VideoExtractionCategory.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionCategoryTypes, name: "types"))
    VideoExtractionCategory.type = Types::VideoExtractionCategory
    VideoExtractionCategoryType.add_member(:content_moderation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_MODERATION", traits: {"smithy.api#enumValue" => "CONTENT_MODERATION"}))
    VideoExtractionCategoryType.add_member(:text_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_DETECTION", traits: {"smithy.api#enumValue" => "TEXT_DETECTION"}))
    VideoExtractionCategoryType.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSCRIPT", traits: {"smithy.api#enumValue" => "TRANSCRIPT"}))
    VideoExtractionCategoryType.add_member(:logos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGOS", traits: {"smithy.api#enumValue" => "LOGOS"}))
    VideoExtractionCategoryTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoExtractionCategoryType, name: "member"))
    VideoOverrideConfiguration.add_member(:modality_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ModalityProcessingConfiguration, name: "modalityProcessing"))
    VideoOverrideConfiguration.add_member(:sensitive_data_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveDataConfiguration, name: "sensitiveDataConfiguration"))
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
    VideoStandardGenerativeFieldTypes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardGenerativeFieldType, name: "member"))
    VideoStandardOutputConfiguration.add_member(:extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardExtraction, name: "extraction"))
    VideoStandardOutputConfiguration.add_member(:generative_field, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoStandardGenerativeField, name: "generativeField"))
    VideoStandardOutputConfiguration.type = Types::VideoStandardOutputConfiguration
    VocabularyEntity.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    VocabularyEntity.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    VocabularyEntity.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    VocabularyEntity.add_member(:phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: PhraseList, name: "phrases"))
    VocabularyEntity.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastModifiedTime"))
    VocabularyEntity.type = Types::VocabularyEntity
    VocabularyEntityInfo.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    VocabularyEntityInfo.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    VocabularyEntityInfo.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language", traits: {"smithy.api#required" => {}}))
    VocabularyEntityInfo.add_member(:phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: PhraseList, name: "phrases", traits: {"smithy.api#required" => {}}))
    VocabularyEntityInfo.type = Types::VocabularyEntityInfo
    VocabularyEntitySummary.add_member(:entity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityId, name: "entityId"))
    VocabularyEntitySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityDescription, name: "description"))
    VocabularyEntitySummary.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: Language, name: "language"))
    VocabularyEntitySummary.add_member(:num_of_phrases, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numOfPhrases", traits: {"smithy.api#range" => {"min" => 1}}))
    VocabularyEntitySummary.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimestamp, name: "lastModifiedTime"))
    VocabularyEntitySummary.type = Types::VocabularyEntitySummary

    AmazonBedrockKeystoneBuildTimeService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.bedrockdataautomation#AmazonBedrockKeystoneBuildTimeService"
      service.name = "AmazonBedrockKeystoneBuildTimeService"
      service.version = "2023-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Bedrock Data Automation", "arnNamespace" => "bedrock", "endpointPrefix" => "bedrock-data-automation", "cloudTrailEventSource" => "bedrock.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "bedrock"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Data Automation for Amazon Bedrock", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-data-automation-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-data-automation-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-data-automation.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://bedrock-data-automation.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:copy_blueprint_stage, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#CopyBlueprintStage"
        operation.name = "CopyBlueprintStage"
        operation.input = CopyBlueprintStageRequest
        operation.output = CopyBlueprintStageResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/blueprints/{blueprintArn}/copy-stage"}, "smithy.api#idempotent" => {}}
      end)
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
      service.add_operation(:create_data_automation_library, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#CreateDataAutomationLibrary"
        operation.name = "CreateDataAutomationLibrary"
        operation.input = CreateDataAutomationLibraryRequest
        operation.output = CreateDataAutomationLibraryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/data-automation-libraries/"}, "smithy.api#idempotent" => {}}
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
      service.add_operation(:delete_data_automation_library, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#DeleteDataAutomationLibrary"
        operation.name = "DeleteDataAutomationLibrary"
        operation.input = DeleteDataAutomationLibraryRequest
        operation.output = DeleteDataAutomationLibraryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/data-automation-libraries/{libraryArn}/"}, "smithy.api#idempotent" => {}}
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
      service.add_operation(:get_blueprint_optimization_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#GetBlueprintOptimizationStatus"
        operation.name = "GetBlueprintOptimizationStatus"
        operation.input = GetBlueprintOptimizationStatusRequest
        operation.output = GetBlueprintOptimizationStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/getBlueprintOptimizationStatus/{invocationArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_automation_library, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#GetDataAutomationLibrary"
        operation.name = "GetDataAutomationLibrary"
        operation.input = GetDataAutomationLibraryRequest
        operation.output = GetDataAutomationLibraryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-libraries/{libraryArn}/"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_automation_library_entity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryEntity"
        operation.name = "GetDataAutomationLibraryEntity"
        operation.input = GetDataAutomationLibraryEntityRequest
        operation.output = GetDataAutomationLibraryEntityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-libraries/{libraryArn}/entityType/{entityType}/entities/{entityId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_automation_library_ingestion_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#GetDataAutomationLibraryIngestionJob"
        operation.name = "GetDataAutomationLibraryIngestionJob"
        operation.input = GetDataAutomationLibraryIngestionJobRequest
        operation.output = GetDataAutomationLibraryIngestionJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/{jobArn}"}, "smithy.api#readonly" => {}}
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
      service.add_operation(:invoke_blueprint_optimization_async, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#InvokeBlueprintOptimizationAsync"
        operation.name = "InvokeBlueprintOptimizationAsync"
        operation.input = InvokeBlueprintOptimizationAsyncRequest
        operation.output = InvokeBlueprintOptimizationAsyncResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/invokeBlueprintOptimizationAsync"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:invoke_data_automation_library_ingestion_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#InvokeDataAutomationLibraryIngestionJob"
        operation.name = "InvokeDataAutomationLibraryIngestionJob"
        operation.input = InvokeDataAutomationLibraryIngestionJobRequest
        operation.output = InvokeDataAutomationLibraryIngestionJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "PUT", "uri" => "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/"}, "smithy.api#idempotent" => {}}
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
      service.add_operation(:list_data_automation_libraries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraries"
        operation.name = "ListDataAutomationLibraries"
        operation.input = ListDataAutomationLibrariesRequest
        operation.output = ListDataAutomationLibrariesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-libraries/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataAutomationLibraries.new
      end)
      service.add_operation(:list_data_automation_library_entities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraryEntities"
        operation.name = "ListDataAutomationLibraryEntities"
        operation.input = ListDataAutomationLibraryEntitiesRequest
        operation.output = ListDataAutomationLibraryEntitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-libraries/{libraryArn}/entityType/{entityType}/entities/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataAutomationLibraryEntities.new
      end)
      service.add_operation(:list_data_automation_library_ingestion_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#ListDataAutomationLibraryIngestionJobs"
        operation.name = "ListDataAutomationLibraryIngestionJobs"
        operation.input = ListDataAutomationLibraryIngestionJobsRequest
        operation.output = ListDataAutomationLibraryIngestionJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataAutomationLibraryIngestionJobs.new
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
      service.add_operation(:update_data_automation_library, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.bedrockdataautomation#UpdateDataAutomationLibrary"
        operation.name = "UpdateDataAutomationLibrary"
        operation.input = UpdateDataAutomationLibraryRequest
        operation.output = UpdateDataAutomationLibraryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/data-automation-libraries/{libraryArn}/"}, "smithy.api#idempotent" => {}}
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
