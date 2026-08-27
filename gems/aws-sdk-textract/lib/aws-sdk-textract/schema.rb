# frozen_string_literal: true

# This is generated code!

module Aws::Textract
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client"})
    Adapter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Adapter", name: "Adapter")
    AdapterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AdapterDescription", name: "AdapterDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><]+$"})
    AdapterId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AdapterId", name: "AdapterId", traits: {"smithy.api#length" => {"min" => 12, "max" => 1011}})
    AdapterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#AdapterList", name: "AdapterList")
    AdapterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AdapterName", name: "AdapterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    AdapterOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AdapterOverview", name: "AdapterOverview")
    AdapterPage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AdapterPage", name: "AdapterPage", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "^[0-9\\*\\-]+$"})
    AdapterPages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#AdapterPages", name: "AdapterPages", traits: {"smithy.api#length" => {"min" => 1}})
    AdapterVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AdapterVersion", name: "AdapterVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AdapterVersionDatasetConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AdapterVersionDatasetConfig", name: "AdapterVersionDatasetConfig")
    AdapterVersionEvaluationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AdapterVersionEvaluationMetric", name: "AdapterVersionEvaluationMetric")
    AdapterVersionEvaluationMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#AdapterVersionEvaluationMetrics", name: "AdapterVersionEvaluationMetrics")
    AdapterVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#AdapterVersionList", name: "AdapterVersionList")
    AdapterVersionOverview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AdapterVersionOverview", name: "AdapterVersionOverview")
    AdapterVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#AdapterVersionStatus", name: "AdapterVersionStatus")
    AdapterVersionStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AdapterVersionStatusMessage", name: "AdapterVersionStatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><]+$"})
    Adapters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#Adapters", name: "Adapters", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AdaptersConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AdaptersConfig", name: "AdaptersConfig")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnalyzeDocumentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeDocumentRequest", name: "AnalyzeDocumentRequest")
    AnalyzeDocumentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeDocumentResponse", name: "AnalyzeDocumentResponse")
    AnalyzeExpenseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeExpenseRequest", name: "AnalyzeExpenseRequest")
    AnalyzeExpenseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeExpenseResponse", name: "AnalyzeExpenseResponse")
    AnalyzeIDDetections = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeIDDetections", name: "AnalyzeIDDetections")
    AnalyzeIDRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeIDRequest", name: "AnalyzeIDRequest")
    AnalyzeIDResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#AnalyzeIDResponse", name: "AnalyzeIDResponse")
    Angle = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.textract#Angle", name: "Angle")
    AutoUpdate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#AutoUpdate", name: "AutoUpdate")
    BadDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#BadDocumentException", name: "BadDocumentException", traits: {"smithy.api#error" => "client"})
    Block = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Block", name: "Block")
    BlockList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#BlockList", name: "BlockList")
    BlockType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#BlockType", name: "BlockType")
    BoundingBox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#BoundingBox", name: "BoundingBox")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ContentClassifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#ContentClassifier", name: "ContentClassifier")
    ContentClassifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#ContentClassifiers", name: "ContentClassifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateAdapterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#CreateAdapterRequest", name: "CreateAdapterRequest")
    CreateAdapterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#CreateAdapterResponse", name: "CreateAdapterResponse")
    CreateAdapterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#CreateAdapterVersionRequest", name: "CreateAdapterVersionRequest")
    CreateAdapterVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#CreateAdapterVersionResponse", name: "CreateAdapterVersionResponse")
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.textract#DateTime", name: "DateTime")
    DeleteAdapterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DeleteAdapterRequest", name: "DeleteAdapterRequest")
    DeleteAdapterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DeleteAdapterResponse", name: "DeleteAdapterResponse")
    DeleteAdapterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DeleteAdapterVersionRequest", name: "DeleteAdapterVersionRequest")
    DeleteAdapterVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DeleteAdapterVersionResponse", name: "DeleteAdapterVersionResponse")
    DetectDocumentTextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DetectDocumentTextRequest", name: "DetectDocumentTextRequest")
    DetectDocumentTextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DetectDocumentTextResponse", name: "DetectDocumentTextResponse")
    DetectedSignature = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DetectedSignature", name: "DetectedSignature")
    DetectedSignatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#DetectedSignatureList", name: "DetectedSignatureList")
    Document = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Document", name: "Document")
    DocumentGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DocumentGroup", name: "DocumentGroup")
    DocumentGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#DocumentGroupList", name: "DocumentGroupList")
    DocumentLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DocumentLocation", name: "DocumentLocation")
    DocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DocumentMetadata", name: "DocumentMetadata")
    DocumentPages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#DocumentPages", name: "DocumentPages", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    DocumentTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#DocumentTooLargeException", name: "DocumentTooLargeException", traits: {"smithy.api#error" => "client"})
    EntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#EntityType", name: "EntityType")
    EntityTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#EntityTypes", name: "EntityTypes")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#ErrorCode", name: "ErrorCode")
    EvaluationMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#EvaluationMetric", name: "EvaluationMetric")
    ExpenseCurrency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ExpenseCurrency", name: "ExpenseCurrency")
    ExpenseDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ExpenseDetection", name: "ExpenseDetection")
    ExpenseDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ExpenseDocument", name: "ExpenseDocument")
    ExpenseDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#ExpenseDocumentList", name: "ExpenseDocumentList")
    ExpenseField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ExpenseField", name: "ExpenseField")
    ExpenseFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#ExpenseFieldList", name: "ExpenseFieldList")
    ExpenseGroupProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ExpenseGroupProperty", name: "ExpenseGroupProperty")
    ExpenseGroupPropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#ExpenseGroupPropertyList", name: "ExpenseGroupPropertyList")
    ExpenseType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ExpenseType", name: "ExpenseType")
    Extraction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Extraction", name: "Extraction")
    ExtractionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#ExtractionList", name: "ExtractionList")
    FeatureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#FeatureType", name: "FeatureType")
    FeatureTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#FeatureTypes", name: "FeatureTypes")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.textract#Float", name: "Float", traits: {"smithy.api#default" => 0})
    FlowDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#FlowDefinitionArn", name: "FlowDefinitionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Geometry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Geometry", name: "Geometry")
    GetAdapterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetAdapterRequest", name: "GetAdapterRequest")
    GetAdapterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetAdapterResponse", name: "GetAdapterResponse")
    GetAdapterVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetAdapterVersionRequest", name: "GetAdapterVersionRequest")
    GetAdapterVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetAdapterVersionResponse", name: "GetAdapterVersionResponse")
    GetDocumentAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetDocumentAnalysisRequest", name: "GetDocumentAnalysisRequest")
    GetDocumentAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetDocumentAnalysisResponse", name: "GetDocumentAnalysisResponse")
    GetDocumentTextDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetDocumentTextDetectionRequest", name: "GetDocumentTextDetectionRequest")
    GetDocumentTextDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetDocumentTextDetectionResponse", name: "GetDocumentTextDetectionResponse")
    GetExpenseAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetExpenseAnalysisRequest", name: "GetExpenseAnalysisRequest")
    GetExpenseAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetExpenseAnalysisResponse", name: "GetExpenseAnalysisResponse")
    GetLendingAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetLendingAnalysisRequest", name: "GetLendingAnalysisRequest")
    GetLendingAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetLendingAnalysisResponse", name: "GetLendingAnalysisResponse")
    GetLendingAnalysisSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetLendingAnalysisSummaryRequest", name: "GetLendingAnalysisSummaryRequest")
    GetLendingAnalysisSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#GetLendingAnalysisSummaryResponse", name: "GetLendingAnalysisSummaryResponse")
    HumanLoopActivationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#HumanLoopActivationOutput", name: "HumanLoopActivationOutput")
    HumanLoopActivationReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#HumanLoopActivationReason", name: "HumanLoopActivationReason")
    HumanLoopActivationReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#HumanLoopActivationReasons", name: "HumanLoopActivationReasons", traits: {"smithy.api#length" => {"min" => 1}})
    HumanLoopArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#HumanLoopArn", name: "HumanLoopArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HumanLoopConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#HumanLoopConfig", name: "HumanLoopConfig")
    HumanLoopDataAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#HumanLoopDataAttributes", name: "HumanLoopDataAttributes")
    HumanLoopName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#HumanLoopName", name: "HumanLoopName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9])*$"})
    HumanLoopQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#HumanLoopQuotaExceededException", name: "HumanLoopQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    IdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#IdList", name: "IdList")
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client"})
    IdentityDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#IdentityDocument", name: "IdentityDocument")
    IdentityDocumentField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#IdentityDocumentField", name: "IdentityDocumentField")
    IdentityDocumentFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#IdentityDocumentFieldList", name: "IdentityDocumentFieldList")
    IdentityDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#IdentityDocumentList", name: "IdentityDocumentList")
    ImageBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.textract#ImageBlob", name: "ImageBlob", traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    InvalidJobIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#InvalidJobIdException", name: "InvalidJobIdException", traits: {"smithy.api#error" => "client"})
    InvalidKMSKeyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#InvalidKMSKeyException", name: "InvalidKMSKeyException", traits: {"smithy.api#error" => "client"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    InvalidS3ObjectException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#InvalidS3ObjectException", name: "InvalidS3ObjectException", traits: {"smithy.api#error" => "client"})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#JobStatus", name: "JobStatus")
    JobTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#JobTag", name: "JobTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:]+$"})
    KMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#KMSKeyId", name: "KMSKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    LendingDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LendingDetection", name: "LendingDetection")
    LendingDetectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#LendingDetectionList", name: "LendingDetectionList")
    LendingDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LendingDocument", name: "LendingDocument")
    LendingField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LendingField", name: "LendingField")
    LendingFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#LendingFieldList", name: "LendingFieldList")
    LendingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LendingResult", name: "LendingResult")
    LendingResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#LendingResultList", name: "LendingResultList")
    LendingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LendingSummary", name: "LendingSummary")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    LineItemFields = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LineItemFields", name: "LineItemFields")
    LineItemGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#LineItemGroup", name: "LineItemGroup")
    LineItemGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#LineItemGroupList", name: "LineItemGroupList")
    LineItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#LineItemList", name: "LineItemList")
    ListAdapterVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ListAdapterVersionsRequest", name: "ListAdapterVersionsRequest")
    ListAdapterVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ListAdapterVersionsResponse", name: "ListAdapterVersionsResponse")
    ListAdaptersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ListAdaptersRequest", name: "ListAdaptersRequest")
    ListAdaptersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ListAdaptersResponse", name: "ListAdaptersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.textract#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#pattern" => "\\S"})
    NormalizedValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#NormalizedValue", name: "NormalizedValue")
    NotificationChannel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#NotificationChannel", name: "NotificationChannel")
    OutputConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#OutputConfig", name: "OutputConfig")
    PageClassification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#PageClassification", name: "PageClassification")
    PageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#PageList", name: "PageList")
    Pages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#Pages", name: "Pages")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    Percent = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.textract#Percent", name: "Percent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    Point = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Point", name: "Point")
    Polygon = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#Polygon", name: "Polygon")
    Prediction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Prediction", name: "Prediction")
    PredictionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#PredictionList", name: "PredictionList")
    ProvisionedThroughputExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ProvisionedThroughputExceededException", name: "ProvisionedThroughputExceededException", traits: {"smithy.api#error" => "client"})
    Queries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#Queries", name: "Queries", traits: {"smithy.api#length" => {"min" => 1}})
    QueriesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#QueriesConfig", name: "QueriesConfig")
    Query = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Query", name: "Query")
    QueryInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#QueryInput", name: "QueryInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><]+$"})
    QueryPage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#QueryPage", name: "QueryPage", traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "^[0-9\\*\\-]+$"})
    QueryPages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#QueryPages", name: "QueryPages", traits: {"smithy.api#length" => {"min" => 1}})
    Relationship = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Relationship", name: "Relationship")
    RelationshipList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#RelationshipList", name: "RelationshipList")
    RelationshipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#RelationshipType", name: "RelationshipType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#S3Object", name: "S3Object")
    S3ObjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#S3ObjectName", name: "S3ObjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    S3ObjectVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#S3ObjectVersion", name: "S3ObjectVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    SNSTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#SNSTopicArn", name: "SNSTopicArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1024}, "smithy.api#pattern" => "^(^arn:([a-z\\d-]+):sns:[a-zA-Z\\d-]{1,20}:\\w{12}:.+$)$"})
    SelectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#SelectionStatus", name: "SelectionStatus")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client"})
    SignatureDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#SignatureDetection", name: "SignatureDetection")
    SignatureDetectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#SignatureDetectionList", name: "SignatureDetectionList")
    SplitDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#SplitDocument", name: "SplitDocument")
    SplitDocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#SplitDocumentList", name: "SplitDocumentList")
    StartDocumentAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartDocumentAnalysisRequest", name: "StartDocumentAnalysisRequest")
    StartDocumentAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartDocumentAnalysisResponse", name: "StartDocumentAnalysisResponse")
    StartDocumentTextDetectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartDocumentTextDetectionRequest", name: "StartDocumentTextDetectionRequest")
    StartDocumentTextDetectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartDocumentTextDetectionResponse", name: "StartDocumentTextDetectionResponse")
    StartExpenseAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartExpenseAnalysisRequest", name: "StartExpenseAnalysisRequest")
    StartExpenseAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartExpenseAnalysisResponse", name: "StartExpenseAnalysisResponse")
    StartLendingAnalysisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartLendingAnalysisRequest", name: "StartLendingAnalysisRequest")
    StartLendingAnalysisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#StartLendingAnalysisResponse", name: "StartLendingAnalysisResponse")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#StatusMessage", name: "StatusMessage")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#StringList", name: "StringList")
    SynthesizedJsonHumanLoopActivationConditionsEvaluationResults = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#SynthesizedJsonHumanLoopActivationConditionsEvaluationResults", name: "SynthesizedJsonHumanLoopActivationConditionsEvaluationResults", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#mediaType" => "application/json"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.textract#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.textract#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TextType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#TextType", name: "TextType")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "server"})
    UInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.textract#UInteger", name: "UInteger", traits: {"smithy.api#range" => {"min" => 0}})
    UndetectedDocumentTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#UndetectedDocumentTypeList", name: "UndetectedDocumentTypeList")
    UndetectedSignature = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#UndetectedSignature", name: "UndetectedSignature")
    UndetectedSignatureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#UndetectedSignatureList", name: "UndetectedSignatureList")
    UnsupportedDocumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#UnsupportedDocumentException", name: "UnsupportedDocumentException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAdapterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#UpdateAdapterRequest", name: "UpdateAdapterRequest")
    UpdateAdapterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#UpdateAdapterResponse", name: "UpdateAdapterResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValueType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.textract#ValueType", name: "ValueType")
    Warning = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.textract#Warning", name: "Warning")
    Warnings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.textract#Warnings", name: "Warnings")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AccessDeniedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    AccessDeniedException.type = Types::AccessDeniedException
    Adapter.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    Adapter.add_member(:pages, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterPages, name: "Pages"))
    Adapter.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersion, name: "Version", traits: {"smithy.api#required" => {}}))
    Adapter.type = Types::Adapter
    AdapterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterOverview, name: "member")
    AdapterOverview.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    AdapterOverview.add_member(:adapter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterName, name: "AdapterName"))
    AdapterOverview.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTime"))
    AdapterOverview.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes"))
    AdapterOverview.type = Types::AdapterOverview
    AdapterPages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterPage, name: "member")
    AdapterVersionDatasetConfig.add_member(:manifest_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "ManifestS3Object"))
    AdapterVersionDatasetConfig.type = Types::AdapterVersionDatasetConfig
    AdapterVersionEvaluationMetric.add_member(:baseline, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMetric, name: "Baseline"))
    AdapterVersionEvaluationMetric.add_member(:adapter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationMetric, name: "AdapterVersion"))
    AdapterVersionEvaluationMetric.add_member(:feature_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureType, name: "FeatureType"))
    AdapterVersionEvaluationMetric.type = Types::AdapterVersionEvaluationMetric
    AdapterVersionEvaluationMetrics.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionEvaluationMetric, name: "member")
    AdapterVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionOverview, name: "member")
    AdapterVersionOverview.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    AdapterVersionOverview.add_member(:adapter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersion, name: "AdapterVersion"))
    AdapterVersionOverview.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTime"))
    AdapterVersionOverview.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes"))
    AdapterVersionOverview.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionStatus, name: "Status"))
    AdapterVersionOverview.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionStatusMessage, name: "StatusMessage"))
    AdapterVersionOverview.type = Types::AdapterVersionOverview
    AdapterVersionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AdapterVersionStatus.add_member(:at_risk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT_RISK", traits: {"smithy.api#enumValue" => "AT_RISK"}))
    AdapterVersionStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    AdapterVersionStatus.add_member(:creation_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_ERROR", traits: {"smithy.api#enumValue" => "CREATION_ERROR"}))
    AdapterVersionStatus.add_member(:creation_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATION_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATION_IN_PROGRESS"}))
    Adapters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Adapter, name: "member")
    AdaptersConfig.add_member(:adapters, ::Smithy::Schema::Shapes::MemberShape.new(target: Adapters, name: "Adapters", traits: {"smithy.api#required" => {}}))
    AdaptersConfig.type = Types::AdaptersConfig
    AnalyzeDocumentRequest.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Document", traits: {"smithy.api#required" => {}}))
    AnalyzeDocumentRequest.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes", traits: {"smithy.api#required" => {}}))
    AnalyzeDocumentRequest.add_member(:human_loop_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopConfig, name: "HumanLoopConfig"))
    AnalyzeDocumentRequest.add_member(:queries_config, ::Smithy::Schema::Shapes::MemberShape.new(target: QueriesConfig, name: "QueriesConfig"))
    AnalyzeDocumentRequest.add_member(:adapters_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdaptersConfig, name: "AdaptersConfig"))
    AnalyzeDocumentRequest.type = Types::AnalyzeDocumentRequest
    AnalyzeDocumentResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    AnalyzeDocumentResponse.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockList, name: "Blocks"))
    AnalyzeDocumentResponse.add_member(:human_loop_activation_output, ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopActivationOutput, name: "HumanLoopActivationOutput"))
    AnalyzeDocumentResponse.add_member(:analyze_document_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnalyzeDocumentModelVersion"))
    AnalyzeDocumentResponse.type = Types::AnalyzeDocumentResponse
    AnalyzeExpenseRequest.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Document", traits: {"smithy.api#required" => {}}))
    AnalyzeExpenseRequest.type = Types::AnalyzeExpenseRequest
    AnalyzeExpenseResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    AnalyzeExpenseResponse.add_member(:expense_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseDocumentList, name: "ExpenseDocuments"))
    AnalyzeExpenseResponse.type = Types::AnalyzeExpenseResponse
    AnalyzeIDDetections.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text", traits: {"smithy.api#required" => {}}))
    AnalyzeIDDetections.add_member(:normalized_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NormalizedValue, name: "NormalizedValue"))
    AnalyzeIDDetections.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    AnalyzeIDDetections.type = Types::AnalyzeIDDetections
    AnalyzeIDRequest.add_member(:document_pages, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentPages, name: "DocumentPages", traits: {"smithy.api#required" => {}}))
    AnalyzeIDRequest.type = Types::AnalyzeIDRequest
    AnalyzeIDResponse.add_member(:identity_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityDocumentList, name: "IdentityDocuments"))
    AnalyzeIDResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    AnalyzeIDResponse.add_member(:analyze_id_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnalyzeIDModelVersion"))
    AnalyzeIDResponse.type = Types::AnalyzeIDResponse
    AutoUpdate.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoUpdate.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    BadDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadDocumentException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    BadDocumentException.type = Types::BadDocumentException
    Block.add_member(:block_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockType, name: "BlockType"))
    Block.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    Block.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    Block.add_member(:text_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TextType, name: "TextType"))
    Block.add_member(:row_index, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "RowIndex"))
    Block.add_member(:column_index, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "ColumnIndex"))
    Block.add_member(:row_span, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "RowSpan"))
    Block.add_member(:column_span, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "ColumnSpan"))
    Block.add_member(:geometry, ::Smithy::Schema::Shapes::MemberShape.new(target: Geometry, name: "Geometry"))
    Block.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Id"))
    Block.add_member(:relationships, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipList, name: "Relationships"))
    Block.add_member(:entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EntityTypes, name: "EntityTypes"))
    Block.add_member(:selection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionStatus, name: "SelectionStatus"))
    Block.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "Page"))
    Block.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: Query, name: "Query"))
    Block.type = Types::Block
    BlockList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Block, name: "member")
    BlockType.add_member(:key_value_set, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY_VALUE_SET", traits: {"smithy.api#enumValue" => "KEY_VALUE_SET"}))
    BlockType.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAGE", traits: {"smithy.api#enumValue" => "PAGE"}))
    BlockType.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE", traits: {"smithy.api#enumValue" => "LINE"}))
    BlockType.add_member(:word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORD", traits: {"smithy.api#enumValue" => "WORD"}))
    BlockType.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE", traits: {"smithy.api#enumValue" => "TABLE"}))
    BlockType.add_member(:cell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CELL", traits: {"smithy.api#enumValue" => "CELL"}))
    BlockType.add_member(:selection_element, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECTION_ELEMENT", traits: {"smithy.api#enumValue" => "SELECTION_ELEMENT"}))
    BlockType.add_member(:merged_cell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGED_CELL", traits: {"smithy.api#enumValue" => "MERGED_CELL"}))
    BlockType.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TITLE", traits: {"smithy.api#enumValue" => "TITLE"}))
    BlockType.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY", traits: {"smithy.api#enumValue" => "QUERY"}))
    BlockType.add_member(:query_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERY_RESULT", traits: {"smithy.api#enumValue" => "QUERY_RESULT"}))
    BlockType.add_member(:signature, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGNATURE", traits: {"smithy.api#enumValue" => "SIGNATURE"}))
    BlockType.add_member(:table_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_TITLE", traits: {"smithy.api#enumValue" => "TABLE_TITLE"}))
    BlockType.add_member(:table_footer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_FOOTER", traits: {"smithy.api#enumValue" => "TABLE_FOOTER"}))
    BlockType.add_member(:layout_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_TEXT", traits: {"smithy.api#enumValue" => "LAYOUT_TEXT"}))
    BlockType.add_member(:layout_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_TITLE", traits: {"smithy.api#enumValue" => "LAYOUT_TITLE"}))
    BlockType.add_member(:layout_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_HEADER", traits: {"smithy.api#enumValue" => "LAYOUT_HEADER"}))
    BlockType.add_member(:layout_footer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_FOOTER", traits: {"smithy.api#enumValue" => "LAYOUT_FOOTER"}))
    BlockType.add_member(:layout_section_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_SECTION_HEADER", traits: {"smithy.api#enumValue" => "LAYOUT_SECTION_HEADER"}))
    BlockType.add_member(:layout_page_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_PAGE_NUMBER", traits: {"smithy.api#enumValue" => "LAYOUT_PAGE_NUMBER"}))
    BlockType.add_member(:layout_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_LIST", traits: {"smithy.api#enumValue" => "LAYOUT_LIST"}))
    BlockType.add_member(:layout_figure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_FIGURE", traits: {"smithy.api#enumValue" => "LAYOUT_FIGURE"}))
    BlockType.add_member(:layout_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_TABLE", traits: {"smithy.api#enumValue" => "LAYOUT_TABLE"}))
    BlockType.add_member(:layout_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT_KEY_VALUE", traits: {"smithy.api#enumValue" => "LAYOUT_KEY_VALUE"}))
    BoundingBox.add_member(:width, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Width", traits: {"smithy.api#default" => 0}))
    BoundingBox.add_member(:height, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Height", traits: {"smithy.api#default" => 0}))
    BoundingBox.add_member(:left, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Left", traits: {"smithy.api#default" => 0}))
    BoundingBox.add_member(:top, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Top", traits: {"smithy.api#default" => 0}))
    BoundingBox.type = Types::BoundingBox
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ConflictException.type = Types::ConflictException
    ContentClassifier.add_member(:free_of_personally_identifiable_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION", traits: {"smithy.api#enumValue" => "FreeOfPersonallyIdentifiableInformation"}))
    ContentClassifier.add_member(:free_of_adult_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FREE_OF_ADULT_CONTENT", traits: {"smithy.api#enumValue" => "FreeOfAdultContent"}))
    ContentClassifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContentClassifier, name: "member")
    CreateAdapterRequest.add_member(:adapter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterName, name: "AdapterName", traits: {"smithy.api#required" => {}}))
    CreateAdapterRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAdapterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterDescription, name: "Description"))
    CreateAdapterRequest.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes", traits: {"smithy.api#required" => {}}))
    CreateAdapterRequest.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoUpdate, name: "AutoUpdate"))
    CreateAdapterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateAdapterRequest.type = Types::CreateAdapterRequest
    CreateAdapterResponse.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    CreateAdapterResponse.type = Types::CreateAdapterResponse
    CreateAdapterVersionRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    CreateAdapterVersionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAdapterVersionRequest.add_member(:dataset_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionDatasetConfig, name: "DatasetConfig", traits: {"smithy.api#required" => {}}))
    CreateAdapterVersionRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    CreateAdapterVersionRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig", traits: {"smithy.api#required" => {}}))
    CreateAdapterVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    CreateAdapterVersionRequest.type = Types::CreateAdapterVersionRequest
    CreateAdapterVersionResponse.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    CreateAdapterVersionResponse.add_member(:adapter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersion, name: "AdapterVersion"))
    CreateAdapterVersionResponse.type = Types::CreateAdapterVersionResponse
    DeleteAdapterRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    DeleteAdapterRequest.type = Types::DeleteAdapterRequest
    DeleteAdapterResponse.type = Types::DeleteAdapterResponse
    DeleteAdapterVersionRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    DeleteAdapterVersionRequest.add_member(:adapter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersion, name: "AdapterVersion", traits: {"smithy.api#required" => {}}))
    DeleteAdapterVersionRequest.type = Types::DeleteAdapterVersionRequest
    DeleteAdapterVersionResponse.type = Types::DeleteAdapterVersionResponse
    DetectDocumentTextRequest.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "Document", traits: {"smithy.api#required" => {}}))
    DetectDocumentTextRequest.type = Types::DetectDocumentTextRequest
    DetectDocumentTextResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    DetectDocumentTextResponse.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockList, name: "Blocks"))
    DetectDocumentTextResponse.add_member(:detect_document_text_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetectDocumentTextModelVersion"))
    DetectDocumentTextResponse.type = Types::DetectDocumentTextResponse
    DetectedSignature.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "Page"))
    DetectedSignature.type = Types::DetectedSignature
    DetectedSignatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DetectedSignature, name: "member")
    Document.add_member(:bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBlob, name: "Bytes"))
    Document.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "S3Object"))
    Document.type = Types::Document
    DocumentGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Type"))
    DocumentGroup.add_member(:split_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SplitDocumentList, name: "SplitDocuments"))
    DocumentGroup.add_member(:detected_signatures, ::Smithy::Schema::Shapes::MemberShape.new(target: DetectedSignatureList, name: "DetectedSignatures"))
    DocumentGroup.add_member(:undetected_signatures, ::Smithy::Schema::Shapes::MemberShape.new(target: UndetectedSignatureList, name: "UndetectedSignatures"))
    DocumentGroup.type = Types::DocumentGroup
    DocumentGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentGroup, name: "member")
    DocumentLocation.add_member(:s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "S3Object"))
    DocumentLocation.type = Types::DocumentLocation
    DocumentMetadata.add_member(:pages, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "Pages"))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentPages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Document, name: "member")
    DocumentTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    DocumentTooLargeException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    DocumentTooLargeException.type = Types::DocumentTooLargeException
    EntityType.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEY", traits: {"smithy.api#enumValue" => "KEY"}))
    EntityType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    EntityType.add_member(:column_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COLUMN_HEADER", traits: {"smithy.api#enumValue" => "COLUMN_HEADER"}))
    EntityType.add_member(:table_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_TITLE", traits: {"smithy.api#enumValue" => "TABLE_TITLE"}))
    EntityType.add_member(:table_footer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_FOOTER", traits: {"smithy.api#enumValue" => "TABLE_FOOTER"}))
    EntityType.add_member(:table_section_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_SECTION_TITLE", traits: {"smithy.api#enumValue" => "TABLE_SECTION_TITLE"}))
    EntityType.add_member(:table_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_SUMMARY", traits: {"smithy.api#enumValue" => "TABLE_SUMMARY"}))
    EntityType.add_member(:structured_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRUCTURED_TABLE", traits: {"smithy.api#enumValue" => "STRUCTURED_TABLE"}))
    EntityType.add_member(:semi_structured_table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEMI_STRUCTURED_TABLE", traits: {"smithy.api#enumValue" => "SEMI_STRUCTURED_TABLE"}))
    EntityTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EntityType, name: "member")
    EvaluationMetric.add_member(:f1_score, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "F1Score", traits: {"smithy.api#default" => 0}))
    EvaluationMetric.add_member(:precision, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Precision", traits: {"smithy.api#default" => 0}))
    EvaluationMetric.add_member(:recall, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Recall", traits: {"smithy.api#default" => 0}))
    EvaluationMetric.type = Types::EvaluationMetric
    ExpenseCurrency.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ExpenseCurrency.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    ExpenseCurrency.type = Types::ExpenseCurrency
    ExpenseDetection.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    ExpenseDetection.add_member(:geometry, ::Smithy::Schema::Shapes::MemberShape.new(target: Geometry, name: "Geometry"))
    ExpenseDetection.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    ExpenseDetection.type = Types::ExpenseDetection
    ExpenseDocument.add_member(:expense_index, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "ExpenseIndex"))
    ExpenseDocument.add_member(:summary_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseFieldList, name: "SummaryFields"))
    ExpenseDocument.add_member(:line_item_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemGroupList, name: "LineItemGroups"))
    ExpenseDocument.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockList, name: "Blocks"))
    ExpenseDocument.type = Types::ExpenseDocument
    ExpenseDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseDocument, name: "member")
    ExpenseField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseType, name: "Type"))
    ExpenseField.add_member(:label_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseDetection, name: "LabelDetection"))
    ExpenseField.add_member(:value_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseDetection, name: "ValueDetection"))
    ExpenseField.add_member(:page_number, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "PageNumber"))
    ExpenseField.add_member(:currency, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseCurrency, name: "Currency"))
    ExpenseField.add_member(:group_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseGroupPropertyList, name: "GroupProperties"))
    ExpenseField.type = Types::ExpenseField
    ExpenseFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseField, name: "member")
    ExpenseGroupProperty.add_member(:types, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Types"))
    ExpenseGroupProperty.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id"))
    ExpenseGroupProperty.type = Types::ExpenseGroupProperty
    ExpenseGroupPropertyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseGroupProperty, name: "member")
    ExpenseType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    ExpenseType.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    ExpenseType.type = Types::ExpenseType
    Extraction.add_member(:lending_document, ::Smithy::Schema::Shapes::MemberShape.new(target: LendingDocument, name: "LendingDocument"))
    Extraction.add_member(:expense_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseDocument, name: "ExpenseDocument"))
    Extraction.add_member(:identity_document, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityDocument, name: "IdentityDocument"))
    Extraction.type = Types::Extraction
    ExtractionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Extraction, name: "member")
    FeatureType.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLES", traits: {"smithy.api#enumValue" => "TABLES"}))
    FeatureType.add_member(:forms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORMS", traits: {"smithy.api#enumValue" => "FORMS"}))
    FeatureType.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUERIES", traits: {"smithy.api#enumValue" => "QUERIES"}))
    FeatureType.add_member(:signatures, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGNATURES", traits: {"smithy.api#enumValue" => "SIGNATURES"}))
    FeatureType.add_member(:layout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAYOUT", traits: {"smithy.api#enumValue" => "LAYOUT"}))
    FeatureTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureType, name: "member")
    Geometry.add_member(:bounding_box, ::Smithy::Schema::Shapes::MemberShape.new(target: BoundingBox, name: "BoundingBox"))
    Geometry.add_member(:polygon, ::Smithy::Schema::Shapes::MemberShape.new(target: Polygon, name: "Polygon"))
    Geometry.add_member(:rotation_angle, ::Smithy::Schema::Shapes::MemberShape.new(target: Angle, name: "RotationAngle"))
    Geometry.type = Types::Geometry
    GetAdapterRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    GetAdapterRequest.type = Types::GetAdapterRequest
    GetAdapterResponse.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    GetAdapterResponse.add_member(:adapter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterName, name: "AdapterName"))
    GetAdapterResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTime"))
    GetAdapterResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterDescription, name: "Description"))
    GetAdapterResponse.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes"))
    GetAdapterResponse.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoUpdate, name: "AutoUpdate"))
    GetAdapterResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetAdapterResponse.type = Types::GetAdapterResponse
    GetAdapterVersionRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    GetAdapterVersionRequest.add_member(:adapter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersion, name: "AdapterVersion", traits: {"smithy.api#required" => {}}))
    GetAdapterVersionRequest.type = Types::GetAdapterVersionRequest
    GetAdapterVersionResponse.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    GetAdapterVersionResponse.add_member(:adapter_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersion, name: "AdapterVersion"))
    GetAdapterVersionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTime"))
    GetAdapterVersionResponse.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes"))
    GetAdapterVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionStatus, name: "Status"))
    GetAdapterVersionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionStatusMessage, name: "StatusMessage"))
    GetAdapterVersionResponse.add_member(:dataset_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionDatasetConfig, name: "DatasetConfig"))
    GetAdapterVersionResponse.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    GetAdapterVersionResponse.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig"))
    GetAdapterVersionResponse.add_member(:evaluation_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionEvaluationMetrics, name: "EvaluationMetrics"))
    GetAdapterVersionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    GetAdapterVersionResponse.type = Types::GetAdapterVersionResponse
    GetDocumentAnalysisRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetDocumentAnalysisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetDocumentAnalysisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetDocumentAnalysisRequest.type = Types::GetDocumentAnalysisRequest
    GetDocumentAnalysisResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    GetDocumentAnalysisResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetDocumentAnalysisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetDocumentAnalysisResponse.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockList, name: "Blocks"))
    GetDocumentAnalysisResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "Warnings"))
    GetDocumentAnalysisResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    GetDocumentAnalysisResponse.add_member(:analyze_document_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnalyzeDocumentModelVersion"))
    GetDocumentAnalysisResponse.type = Types::GetDocumentAnalysisResponse
    GetDocumentTextDetectionRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetDocumentTextDetectionRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetDocumentTextDetectionRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetDocumentTextDetectionRequest.type = Types::GetDocumentTextDetectionRequest
    GetDocumentTextDetectionResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    GetDocumentTextDetectionResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetDocumentTextDetectionResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetDocumentTextDetectionResponse.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockList, name: "Blocks"))
    GetDocumentTextDetectionResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "Warnings"))
    GetDocumentTextDetectionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    GetDocumentTextDetectionResponse.add_member(:detect_document_text_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DetectDocumentTextModelVersion"))
    GetDocumentTextDetectionResponse.type = Types::GetDocumentTextDetectionResponse
    GetExpenseAnalysisRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetExpenseAnalysisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetExpenseAnalysisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetExpenseAnalysisRequest.type = Types::GetExpenseAnalysisRequest
    GetExpenseAnalysisResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    GetExpenseAnalysisResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetExpenseAnalysisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetExpenseAnalysisResponse.add_member(:expense_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseDocumentList, name: "ExpenseDocuments"))
    GetExpenseAnalysisResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "Warnings"))
    GetExpenseAnalysisResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    GetExpenseAnalysisResponse.add_member(:analyze_expense_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnalyzeExpenseModelVersion"))
    GetExpenseAnalysisResponse.type = Types::GetExpenseAnalysisResponse
    GetLendingAnalysisRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetLendingAnalysisRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetLendingAnalysisRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetLendingAnalysisRequest.type = Types::GetLendingAnalysisRequest
    GetLendingAnalysisResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    GetLendingAnalysisResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetLendingAnalysisResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    GetLendingAnalysisResponse.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: LendingResultList, name: "Results"))
    GetLendingAnalysisResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "Warnings"))
    GetLendingAnalysisResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    GetLendingAnalysisResponse.add_member(:analyze_lending_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnalyzeLendingModelVersion"))
    GetLendingAnalysisResponse.type = Types::GetLendingAnalysisResponse
    GetLendingAnalysisSummaryRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    GetLendingAnalysisSummaryRequest.type = Types::GetLendingAnalysisSummaryRequest
    GetLendingAnalysisSummaryResponse.add_member(:document_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentMetadata, name: "DocumentMetadata"))
    GetLendingAnalysisSummaryResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "JobStatus"))
    GetLendingAnalysisSummaryResponse.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: LendingSummary, name: "Summary"))
    GetLendingAnalysisSummaryResponse.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "Warnings"))
    GetLendingAnalysisSummaryResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    GetLendingAnalysisSummaryResponse.add_member(:analyze_lending_model_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AnalyzeLendingModelVersion"))
    GetLendingAnalysisSummaryResponse.type = Types::GetLendingAnalysisSummaryResponse
    HumanLoopActivationOutput.add_member(:human_loop_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopArn, name: "HumanLoopArn"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopActivationReasons, name: "HumanLoopActivationReasons"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_conditions_evaluation_results, ::Smithy::Schema::Shapes::MemberShape.new(target: SynthesizedJsonHumanLoopActivationConditionsEvaluationResults, name: "HumanLoopActivationConditionsEvaluationResults"))
    HumanLoopActivationOutput.type = Types::HumanLoopActivationOutput
    HumanLoopActivationReasons.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopActivationReason, name: "member")
    HumanLoopConfig.add_member(:human_loop_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopName, name: "HumanLoopName", traits: {"smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FlowDefinitionArn, name: "FlowDefinitionArn", traits: {"smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:data_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: HumanLoopDataAttributes, name: "DataAttributes"))
    HumanLoopConfig.type = Types::HumanLoopConfig
    HumanLoopDataAttributes.add_member(:content_classifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentClassifiers, name: "ContentClassifiers"))
    HumanLoopDataAttributes.type = Types::HumanLoopDataAttributes
    HumanLoopQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType"))
    HumanLoopQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuotaCode"))
    HumanLoopQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ServiceCode"))
    HumanLoopQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    HumanLoopQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    HumanLoopQuotaExceededException.type = Types::HumanLoopQuotaExceededException
    IdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    IdempotentParameterMismatchException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    IdentityDocument.add_member(:document_index, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "DocumentIndex"))
    IdentityDocument.add_member(:identity_document_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityDocumentFieldList, name: "IdentityDocumentFields"))
    IdentityDocument.add_member(:blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockList, name: "Blocks"))
    IdentityDocument.type = Types::IdentityDocument
    IdentityDocumentField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzeIDDetections, name: "Type"))
    IdentityDocumentField.add_member(:value_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzeIDDetections, name: "ValueDetection"))
    IdentityDocumentField.type = Types::IdentityDocumentField
    IdentityDocumentFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityDocumentField, name: "member")
    IdentityDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityDocument, name: "member")
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServerError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InternalServerError.type = Types::InternalServerError
    InvalidJobIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidJobIdException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidJobIdException.type = Types::InvalidJobIdException
    InvalidKMSKeyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidKMSKeyException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidKMSKeyException.type = Types::InvalidKMSKeyException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidParameterException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidS3ObjectException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InvalidS3ObjectException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    InvalidS3ObjectException.type = Types::InvalidS3ObjectException
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:partial_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIAL_SUCCESS", traits: {"smithy.api#enumValue" => "PARTIAL_SUCCESS"}))
    LendingDetection.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Text"))
    LendingDetection.add_member(:selection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionStatus, name: "SelectionStatus"))
    LendingDetection.add_member(:geometry, ::Smithy::Schema::Shapes::MemberShape.new(target: Geometry, name: "Geometry"))
    LendingDetection.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    LendingDetection.type = Types::LendingDetection
    LendingDetectionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LendingDetection, name: "member")
    LendingDocument.add_member(:lending_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: LendingFieldList, name: "LendingFields"))
    LendingDocument.add_member(:signature_detections, ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureDetectionList, name: "SignatureDetections"))
    LendingDocument.type = Types::LendingDocument
    LendingField.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    LendingField.add_member(:key_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: LendingDetection, name: "KeyDetection"))
    LendingField.add_member(:value_detections, ::Smithy::Schema::Shapes::MemberShape.new(target: LendingDetectionList, name: "ValueDetections"))
    LendingField.type = Types::LendingField
    LendingFieldList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LendingField, name: "member")
    LendingResult.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "Page"))
    LendingResult.add_member(:page_classification, ::Smithy::Schema::Shapes::MemberShape.new(target: PageClassification, name: "PageClassification"))
    LendingResult.add_member(:extractions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtractionList, name: "Extractions"))
    LendingResult.type = Types::LendingResult
    LendingResultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LendingResult, name: "member")
    LendingSummary.add_member(:document_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentGroupList, name: "DocumentGroups"))
    LendingSummary.add_member(:undetected_document_types, ::Smithy::Schema::Shapes::MemberShape.new(target: UndetectedDocumentTypeList, name: "UndetectedDocumentTypes"))
    LendingSummary.type = Types::LendingSummary
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    LimitExceededException.type = Types::LimitExceededException
    LineItemFields.add_member(:line_item_expense_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpenseFieldList, name: "LineItemExpenseFields"))
    LineItemFields.type = Types::LineItemFields
    LineItemGroup.add_member(:line_item_group_index, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "LineItemGroupIndex"))
    LineItemGroup.add_member(:line_items, ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemList, name: "LineItems"))
    LineItemGroup.type = Types::LineItemGroup
    LineItemGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemGroup, name: "member")
    LineItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LineItemFields, name: "member")
    ListAdapterVersionsRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    ListAdapterVersionsRequest.add_member(:after_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "AfterCreationTime"))
    ListAdapterVersionsRequest.add_member(:before_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "BeforeCreationTime"))
    ListAdapterVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAdapterVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdapterVersionsRequest.type = Types::ListAdapterVersionsRequest
    ListAdapterVersionsResponse.add_member(:adapter_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterVersionList, name: "AdapterVersions"))
    ListAdapterVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdapterVersionsResponse.type = Types::ListAdapterVersionsResponse
    ListAdaptersRequest.add_member(:after_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "AfterCreationTime"))
    ListAdaptersRequest.add_member(:before_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "BeforeCreationTime"))
    ListAdaptersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListAdaptersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdaptersRequest.type = Types::ListAdaptersRequest
    ListAdaptersResponse.add_member(:adapters, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterList, name: "Adapters"))
    ListAdaptersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListAdaptersResponse.type = Types::ListAdaptersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NormalizedValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value"))
    NormalizedValue.add_member(:value_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueType, name: "ValueType"))
    NormalizedValue.type = Types::NormalizedValue
    NotificationChannel.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SNSTopicArn, name: "SNSTopicArn", traits: {"smithy.api#required" => {}}))
    NotificationChannel.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    NotificationChannel.type = Types::NotificationChannel
    OutputConfig.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    OutputConfig.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectName, name: "S3Prefix"))
    OutputConfig.type = Types::OutputConfig
    PageClassification.add_member(:page_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionList, name: "PageType", traits: {"smithy.api#required" => {}}))
    PageClassification.add_member(:page_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictionList, name: "PageNumber", traits: {"smithy.api#required" => {}}))
    PageClassification.type = Types::PageClassification
    PageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "member")
    Pages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "member")
    Point.add_member(:x, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "X", traits: {"smithy.api#default" => 0}))
    Point.add_member(:y, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, name: "Y", traits: {"smithy.api#default" => 0}))
    Point.type = Types::Point
    Polygon.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Point, name: "member")
    Prediction.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Value"))
    Prediction.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    Prediction.type = Types::Prediction
    PredictionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Prediction, name: "member")
    ProvisionedThroughputExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ProvisionedThroughputExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    Queries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Query, name: "member")
    QueriesConfig.add_member(:queries, ::Smithy::Schema::Shapes::MemberShape.new(target: Queries, name: "Queries", traits: {"smithy.api#required" => {}}))
    QueriesConfig.type = Types::QueriesConfig
    Query.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInput, name: "Text", traits: {"smithy.api#required" => {}}))
    Query.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryInput, name: "Alias"))
    Query.add_member(:pages, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryPages, name: "Pages"))
    Query.type = Types::Query
    QueryPages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryPage, name: "member")
    Relationship.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RelationshipType, name: "Type"))
    Relationship.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, name: "Ids"))
    Relationship.type = Types::Relationship
    RelationshipList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Relationship, name: "member")
    RelationshipType.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE", traits: {"smithy.api#enumValue" => "VALUE"}))
    RelationshipType.add_member(:child, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHILD", traits: {"smithy.api#enumValue" => "CHILD"}))
    RelationshipType.add_member(:complex_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLEX_FEATURES", traits: {"smithy.api#enumValue" => "COMPLEX_FEATURES"}))
    RelationshipType.add_member(:merged_cell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MERGED_CELL", traits: {"smithy.api#enumValue" => "MERGED_CELL"}))
    RelationshipType.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TITLE", traits: {"smithy.api#enumValue" => "TITLE"}))
    RelationshipType.add_member(:answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSWER", traits: {"smithy.api#enumValue" => "ANSWER"}))
    RelationshipType.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE", traits: {"smithy.api#enumValue" => "TABLE"}))
    RelationshipType.add_member(:table_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_TITLE", traits: {"smithy.api#enumValue" => "TABLE_TITLE"}))
    RelationshipType.add_member(:table_footer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TABLE_FOOTER", traits: {"smithy.api#enumValue" => "TABLE_FOOTER"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Object.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "Bucket"))
    S3Object.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectName, name: "Name"))
    S3Object.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersion, name: "Version"))
    S3Object.type = Types::S3Object
    SelectionStatus.add_member(:selected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECTED", traits: {"smithy.api#enumValue" => "SELECTED"}))
    SelectionStatus.add_member(:not_selected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_SELECTED", traits: {"smithy.api#enumValue" => "NOT_SELECTED"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceQuotaExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignatureDetection.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: Percent, name: "Confidence"))
    SignatureDetection.add_member(:geometry, ::Smithy::Schema::Shapes::MemberShape.new(target: Geometry, name: "Geometry"))
    SignatureDetection.type = Types::SignatureDetection
    SignatureDetectionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SignatureDetection, name: "member")
    SplitDocument.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "Index"))
    SplitDocument.add_member(:pages, ::Smithy::Schema::Shapes::MemberShape.new(target: PageList, name: "Pages"))
    SplitDocument.type = Types::SplitDocument
    SplitDocumentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SplitDocument, name: "member")
    StartDocumentAnalysisRequest.add_member(:document_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentLocation, name: "DocumentLocation", traits: {"smithy.api#required" => {}}))
    StartDocumentAnalysisRequest.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes", traits: {"smithy.api#required" => {}}))
    StartDocumentAnalysisRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    StartDocumentAnalysisRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTag, name: "JobTag"))
    StartDocumentAnalysisRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "NotificationChannel"))
    StartDocumentAnalysisRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig"))
    StartDocumentAnalysisRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    StartDocumentAnalysisRequest.add_member(:queries_config, ::Smithy::Schema::Shapes::MemberShape.new(target: QueriesConfig, name: "QueriesConfig"))
    StartDocumentAnalysisRequest.add_member(:adapters_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AdaptersConfig, name: "AdaptersConfig"))
    StartDocumentAnalysisRequest.type = Types::StartDocumentAnalysisRequest
    StartDocumentAnalysisResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartDocumentAnalysisResponse.type = Types::StartDocumentAnalysisResponse
    StartDocumentTextDetectionRequest.add_member(:document_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentLocation, name: "DocumentLocation", traits: {"smithy.api#required" => {}}))
    StartDocumentTextDetectionRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    StartDocumentTextDetectionRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTag, name: "JobTag"))
    StartDocumentTextDetectionRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "NotificationChannel"))
    StartDocumentTextDetectionRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig"))
    StartDocumentTextDetectionRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    StartDocumentTextDetectionRequest.type = Types::StartDocumentTextDetectionRequest
    StartDocumentTextDetectionResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartDocumentTextDetectionResponse.type = Types::StartDocumentTextDetectionResponse
    StartExpenseAnalysisRequest.add_member(:document_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentLocation, name: "DocumentLocation", traits: {"smithy.api#required" => {}}))
    StartExpenseAnalysisRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    StartExpenseAnalysisRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTag, name: "JobTag"))
    StartExpenseAnalysisRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "NotificationChannel"))
    StartExpenseAnalysisRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig"))
    StartExpenseAnalysisRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    StartExpenseAnalysisRequest.type = Types::StartExpenseAnalysisRequest
    StartExpenseAnalysisResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartExpenseAnalysisResponse.type = Types::StartExpenseAnalysisResponse
    StartLendingAnalysisRequest.add_member(:document_location, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentLocation, name: "DocumentLocation", traits: {"smithy.api#required" => {}}))
    StartLendingAnalysisRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken"))
    StartLendingAnalysisRequest.add_member(:job_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTag, name: "JobTag"))
    StartLendingAnalysisRequest.add_member(:notification_channel, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationChannel, name: "NotificationChannel"))
    StartLendingAnalysisRequest.add_member(:output_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputConfig, name: "OutputConfig"))
    StartLendingAnalysisRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, name: "KMSKeyId"))
    StartLendingAnalysisRequest.type = Types::StartLendingAnalysisRequest
    StartLendingAnalysisResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    StartLendingAnalysisResponse.type = Types::StartLendingAnalysisResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TextType.add_member(:handwriting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HANDWRITING", traits: {"smithy.api#enumValue" => "HANDWRITING"}))
    TextType.add_member(:printed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRINTED", traits: {"smithy.api#enumValue" => "PRINTED"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ThrottlingException.type = Types::ThrottlingException
    UndetectedDocumentTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member")
    UndetectedSignature.add_member(:page, ::Smithy::Schema::Shapes::MemberShape.new(target: UInteger, name: "Page"))
    UndetectedSignature.type = Types::UndetectedSignature
    UndetectedSignatureList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UndetectedSignature, name: "member")
    UnsupportedDocumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnsupportedDocumentException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    UnsupportedDocumentException.type = Types::UnsupportedDocumentException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAdapterRequest.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId", traits: {"smithy.api#required" => {}}))
    UpdateAdapterRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterDescription, name: "Description"))
    UpdateAdapterRequest.add_member(:adapter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterName, name: "AdapterName"))
    UpdateAdapterRequest.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoUpdate, name: "AutoUpdate"))
    UpdateAdapterRequest.type = Types::UpdateAdapterRequest
    UpdateAdapterResponse.add_member(:adapter_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterId, name: "AdapterId"))
    UpdateAdapterResponse.add_member(:adapter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterName, name: "AdapterName"))
    UpdateAdapterResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreationTime"))
    UpdateAdapterResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: AdapterDescription, name: "Description"))
    UpdateAdapterResponse.add_member(:feature_types, ::Smithy::Schema::Shapes::MemberShape.new(target: FeatureTypes, name: "FeatureTypes"))
    UpdateAdapterResponse.add_member(:auto_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoUpdate, name: "AutoUpdate"))
    UpdateAdapterResponse.type = Types::UpdateAdapterResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ValidationException.type = Types::ValidationException
    ValueType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATE", traits: {"smithy.api#enumValue" => "DATE"}))
    Warning.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    Warning.add_member(:pages, ::Smithy::Schema::Shapes::MemberShape.new(target: Pages, name: "Pages"))
    Warning.type = Types::Warning
    Warnings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Warning, name: "member")

    Textract = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.textract#Textract"
      service.name = "Textract"
      service.version = "2018-06-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Textract", "arnNamespace" => "textract", "cloudFormationName" => "Textract", "cloudTrailEventSource" => "textract.amazonaws.com", "endpointPrefix" => "textract"}, "aws.auth#sigv4" => {"name" => "textract"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Textract"}
      service.add_operation(:analyze_document, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#AnalyzeDocument"
        operation.name = "AnalyzeDocument"
        operation.input = AnalyzeDocumentRequest
        operation.output = AnalyzeDocumentResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << HumanLoopQuotaExceededException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:analyze_expense, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#AnalyzeExpense"
        operation.name = "AnalyzeExpense"
        operation.input = AnalyzeExpenseRequest
        operation.output = AnalyzeExpenseResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:analyze_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#AnalyzeID"
        operation.name = "AnalyzeID"
        operation.input = AnalyzeIDRequest
        operation.output = AnalyzeIDResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:create_adapter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#CreateAdapter"
        operation.name = "CreateAdapter"
        operation.input = CreateAdapterRequest
        operation.output = CreateAdapterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_adapter_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#CreateAdapterVersion"
        operation.name = "CreateAdapterVersion"
        operation.input = CreateAdapterVersionRequest
        operation.output = CreateAdapterVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << LimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_adapter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#DeleteAdapter"
        operation.name = "DeleteAdapter"
        operation.input = DeleteAdapterRequest
        operation.output = DeleteAdapterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_adapter_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#DeleteAdapterVersion"
        operation.name = "DeleteAdapterVersion"
        operation.input = DeleteAdapterVersionRequest
        operation.output = DeleteAdapterVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:detect_document_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#DetectDocumentText"
        operation.name = "DetectDocumentText"
        operation.input = DetectDocumentTextRequest
        operation.output = DetectDocumentTextResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:get_adapter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetAdapter"
        operation.name = "GetAdapter"
        operation.input = GetAdapterRequest
        operation.output = GetAdapterResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_adapter_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetAdapterVersion"
        operation.name = "GetAdapterVersion"
        operation.input = GetAdapterVersionRequest
        operation.output = GetAdapterVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:get_document_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetDocumentAnalysis"
        operation.name = "GetDocumentAnalysis"
        operation.input = GetDocumentAnalysisRequest
        operation.output = GetDocumentAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidJobIdException
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_document_text_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetDocumentTextDetection"
        operation.name = "GetDocumentTextDetection"
        operation.input = GetDocumentTextDetectionRequest
        operation.output = GetDocumentTextDetectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidJobIdException
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_expense_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetExpenseAnalysis"
        operation.name = "GetExpenseAnalysis"
        operation.input = GetExpenseAnalysisRequest
        operation.output = GetExpenseAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidJobIdException
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_lending_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetLendingAnalysis"
        operation.name = "GetLendingAnalysis"
        operation.input = GetLendingAnalysisRequest
        operation.output = GetLendingAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidJobIdException
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:get_lending_analysis_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetLendingAnalysisSummary"
        operation.name = "GetLendingAnalysisSummary"
        operation.input = GetLendingAnalysisSummaryRequest
        operation.output = GetLendingAnalysisSummaryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidJobIdException
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.traits = {}
      end)
      service.add_operation(:list_adapter_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#ListAdapterVersions"
        operation.name = "ListAdapterVersions"
        operation.input = ListAdapterVersionsRequest
        operation.output = ListAdapterVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdapterVersions.new
      end)
      service.add_operation(:list_adapters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#ListAdapters"
        operation.name = "ListAdapters"
        operation.input = ListAdaptersRequest
        operation.output = ListAdaptersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdapters.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:start_document_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartDocumentAnalysis"
        operation.name = "StartDocumentAnalysis"
        operation.input = StartDocumentAnalysisRequest
        operation.output = StartDocumentAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << LimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:start_document_text_detection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartDocumentTextDetection"
        operation.name = "StartDocumentTextDetection"
        operation.input = StartDocumentTextDetectionRequest
        operation.output = StartDocumentTextDetectionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << LimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:start_expense_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartExpenseAnalysis"
        operation.name = "StartExpenseAnalysis"
        operation.input = StartExpenseAnalysisRequest
        operation.output = StartExpenseAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << LimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:start_lending_analysis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartLendingAnalysis"
        operation.name = "StartLendingAnalysis"
        operation.input = StartLendingAnalysisRequest
        operation.output = StartLendingAnalysisResponse
        operation.errors << AccessDeniedException
        operation.errors << BadDocumentException
        operation.errors << DocumentTooLargeException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServerError
        operation.errors << InvalidKMSKeyException
        operation.errors << InvalidParameterException
        operation.errors << InvalidS3ObjectException
        operation.errors << LimitExceededException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ThrottlingException
        operation.errors << UnsupportedDocumentException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_adapter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#UpdateAdapter"
        operation.name = "UpdateAdapter"
        operation.input = UpdateAdapterRequest
        operation.output = UpdateAdapterResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerError
        operation.errors << InvalidParameterException
        operation.errors << ProvisionedThroughputExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {}
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
