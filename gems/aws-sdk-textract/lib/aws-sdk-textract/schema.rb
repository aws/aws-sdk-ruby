# frozen_string_literal: true

# This is generated code!

module Aws::Textract
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    Adapter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Adapter', name: 'Adapter')
    AdapterDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AdapterDescription', name: 'AdapterDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><]+$"})
    AdapterId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AdapterId', name: 'AdapterId', traits: {"smithy.api#length" => {"min" => 12, "max" => 1011}})
    AdapterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#AdapterList', name: 'AdapterList')
    AdapterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AdapterName', name: 'AdapterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    AdapterOverview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AdapterOverview', name: 'AdapterOverview')
    AdapterPage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AdapterPage', name: 'AdapterPage', traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "^[0-9\\*\\-]+$"})
    AdapterPages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#AdapterPages', name: 'AdapterPages', traits: {"smithy.api#length" => {"min" => 1}})
    AdapterVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AdapterVersion', name: 'AdapterVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    AdapterVersionDatasetConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AdapterVersionDatasetConfig', name: 'AdapterVersionDatasetConfig')
    AdapterVersionEvaluationMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AdapterVersionEvaluationMetric', name: 'AdapterVersionEvaluationMetric')
    AdapterVersionEvaluationMetrics = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#AdapterVersionEvaluationMetrics', name: 'AdapterVersionEvaluationMetrics')
    AdapterVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#AdapterVersionList', name: 'AdapterVersionList')
    AdapterVersionOverview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AdapterVersionOverview', name: 'AdapterVersionOverview')
    AdapterVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#AdapterVersionStatus', name: 'AdapterVersionStatus')
    AdapterVersionStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AdapterVersionStatusMessage', name: 'AdapterVersionStatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><]+$"})
    Adapters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#Adapters', name: 'Adapters', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AdaptersConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AdaptersConfig', name: 'AdaptersConfig')
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnalyzeDocumentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeDocumentRequest', name: 'AnalyzeDocumentRequest')
    AnalyzeDocumentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeDocumentResponse', name: 'AnalyzeDocumentResponse')
    AnalyzeExpenseRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeExpenseRequest', name: 'AnalyzeExpenseRequest')
    AnalyzeExpenseResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeExpenseResponse', name: 'AnalyzeExpenseResponse')
    AnalyzeIDDetections = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeIDDetections', name: 'AnalyzeIDDetections')
    AnalyzeIDRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeIDRequest', name: 'AnalyzeIDRequest')
    AnalyzeIDResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#AnalyzeIDResponse', name: 'AnalyzeIDResponse')
    Angle = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.textract#Angle', name: 'Angle')
    AutoUpdate = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#AutoUpdate', name: 'AutoUpdate')
    BadDocumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#BadDocumentException', name: 'BadDocumentException', traits: {"smithy.api#error" => "client"})
    Block = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Block', name: 'Block')
    BlockList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#BlockList', name: 'BlockList')
    BlockType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#BlockType', name: 'BlockType')
    BoundingBox = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#BoundingBox', name: 'BoundingBox')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client"})
    ContentClassifier = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#ContentClassifier', name: 'ContentClassifier')
    ContentClassifiers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#ContentClassifiers', name: 'ContentClassifiers', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CreateAdapterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#CreateAdapterRequest', name: 'CreateAdapterRequest')
    CreateAdapterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#CreateAdapterResponse', name: 'CreateAdapterResponse')
    CreateAdapterVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#CreateAdapterVersionRequest', name: 'CreateAdapterVersionRequest')
    CreateAdapterVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#CreateAdapterVersionResponse', name: 'CreateAdapterVersionResponse')
    DateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.textract#DateTime', name: 'DateTime')
    DeleteAdapterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DeleteAdapterRequest', name: 'DeleteAdapterRequest')
    DeleteAdapterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DeleteAdapterResponse', name: 'DeleteAdapterResponse')
    DeleteAdapterVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DeleteAdapterVersionRequest', name: 'DeleteAdapterVersionRequest')
    DeleteAdapterVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DeleteAdapterVersionResponse', name: 'DeleteAdapterVersionResponse')
    DetectDocumentTextRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DetectDocumentTextRequest', name: 'DetectDocumentTextRequest')
    DetectDocumentTextResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DetectDocumentTextResponse', name: 'DetectDocumentTextResponse')
    DetectedSignature = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DetectedSignature', name: 'DetectedSignature')
    DetectedSignatureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#DetectedSignatureList', name: 'DetectedSignatureList')
    Document = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Document', name: 'Document')
    DocumentGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DocumentGroup', name: 'DocumentGroup')
    DocumentGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#DocumentGroupList', name: 'DocumentGroupList')
    DocumentLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DocumentLocation', name: 'DocumentLocation')
    DocumentMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DocumentMetadata', name: 'DocumentMetadata')
    DocumentPages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#DocumentPages', name: 'DocumentPages', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    DocumentTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#DocumentTooLargeException', name: 'DocumentTooLargeException', traits: {"smithy.api#error" => "client"})
    EntityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#EntityType', name: 'EntityType')
    EntityTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#EntityTypes', name: 'EntityTypes')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#ErrorCode', name: 'ErrorCode')
    EvaluationMetric = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#EvaluationMetric', name: 'EvaluationMetric')
    ExpenseCurrency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ExpenseCurrency', name: 'ExpenseCurrency')
    ExpenseDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ExpenseDetection', name: 'ExpenseDetection')
    ExpenseDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ExpenseDocument', name: 'ExpenseDocument')
    ExpenseDocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#ExpenseDocumentList', name: 'ExpenseDocumentList')
    ExpenseField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ExpenseField', name: 'ExpenseField')
    ExpenseFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#ExpenseFieldList', name: 'ExpenseFieldList')
    ExpenseGroupProperty = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ExpenseGroupProperty', name: 'ExpenseGroupProperty')
    ExpenseGroupPropertyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#ExpenseGroupPropertyList', name: 'ExpenseGroupPropertyList')
    ExpenseType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ExpenseType', name: 'ExpenseType')
    Extraction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Extraction', name: 'Extraction')
    ExtractionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#ExtractionList', name: 'ExtractionList')
    FeatureType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#FeatureType', name: 'FeatureType')
    FeatureTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#FeatureTypes', name: 'FeatureTypes')
    Float = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.textract#Float', name: 'Float', traits: {"smithy.api#default" => 0})
    FlowDefinitionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#FlowDefinitionArn', name: 'FlowDefinitionArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Geometry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Geometry', name: 'Geometry')
    GetAdapterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetAdapterRequest', name: 'GetAdapterRequest')
    GetAdapterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetAdapterResponse', name: 'GetAdapterResponse')
    GetAdapterVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetAdapterVersionRequest', name: 'GetAdapterVersionRequest')
    GetAdapterVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetAdapterVersionResponse', name: 'GetAdapterVersionResponse')
    GetDocumentAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetDocumentAnalysisRequest', name: 'GetDocumentAnalysisRequest')
    GetDocumentAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetDocumentAnalysisResponse', name: 'GetDocumentAnalysisResponse')
    GetDocumentTextDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetDocumentTextDetectionRequest', name: 'GetDocumentTextDetectionRequest')
    GetDocumentTextDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetDocumentTextDetectionResponse', name: 'GetDocumentTextDetectionResponse')
    GetExpenseAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetExpenseAnalysisRequest', name: 'GetExpenseAnalysisRequest')
    GetExpenseAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetExpenseAnalysisResponse', name: 'GetExpenseAnalysisResponse')
    GetLendingAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetLendingAnalysisRequest', name: 'GetLendingAnalysisRequest')
    GetLendingAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetLendingAnalysisResponse', name: 'GetLendingAnalysisResponse')
    GetLendingAnalysisSummaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetLendingAnalysisSummaryRequest', name: 'GetLendingAnalysisSummaryRequest')
    GetLendingAnalysisSummaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#GetLendingAnalysisSummaryResponse', name: 'GetLendingAnalysisSummaryResponse')
    HumanLoopActivationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#HumanLoopActivationOutput', name: 'HumanLoopActivationOutput')
    HumanLoopActivationReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#HumanLoopActivationReason', name: 'HumanLoopActivationReason')
    HumanLoopActivationReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#HumanLoopActivationReasons', name: 'HumanLoopActivationReasons', traits: {"smithy.api#length" => {"min" => 1}})
    HumanLoopArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#HumanLoopArn', name: 'HumanLoopArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    HumanLoopConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#HumanLoopConfig', name: 'HumanLoopConfig')
    HumanLoopDataAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#HumanLoopDataAttributes', name: 'HumanLoopDataAttributes')
    HumanLoopName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#HumanLoopName', name: 'HumanLoopName', traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9])*$"})
    HumanLoopQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#HumanLoopQuotaExceededException', name: 'HumanLoopQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    IdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#IdList', name: 'IdList')
    IdempotentParameterMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#IdempotentParameterMismatchException', name: 'IdempotentParameterMismatchException', traits: {"smithy.api#error" => "client"})
    IdentityDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#IdentityDocument', name: 'IdentityDocument')
    IdentityDocumentField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#IdentityDocumentField', name: 'IdentityDocumentField')
    IdentityDocumentFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#IdentityDocumentFieldList', name: 'IdentityDocumentFieldList')
    IdentityDocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#IdentityDocumentList', name: 'IdentityDocumentList')
    ImageBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.textract#ImageBlob', name: 'ImageBlob', traits: {"smithy.api#length" => {"min" => 1, "max" => 10485760}})
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    InvalidJobIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#InvalidJobIdException', name: 'InvalidJobIdException', traits: {"smithy.api#error" => "client"})
    InvalidKMSKeyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#InvalidKMSKeyException', name: 'InvalidKMSKeyException', traits: {"smithy.api#error" => "client"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    InvalidS3ObjectException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#InvalidS3ObjectException', name: 'InvalidS3ObjectException', traits: {"smithy.api#error" => "client"})
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#JobStatus', name: 'JobStatus')
    JobTag = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#JobTag', name: 'JobTag', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-:]+$"})
    KMSKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#KMSKeyId', name: 'KMSKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,2048}$"})
    LendingDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LendingDetection', name: 'LendingDetection')
    LendingDetectionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#LendingDetectionList', name: 'LendingDetectionList')
    LendingDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LendingDocument', name: 'LendingDocument')
    LendingField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LendingField', name: 'LendingField')
    LendingFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#LendingFieldList', name: 'LendingFieldList')
    LendingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LendingResult', name: 'LendingResult')
    LendingResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#LendingResultList', name: 'LendingResultList')
    LendingSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LendingSummary', name: 'LendingSummary')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    LineItemFields = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LineItemFields', name: 'LineItemFields')
    LineItemGroup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#LineItemGroup', name: 'LineItemGroup')
    LineItemGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#LineItemGroupList', name: 'LineItemGroupList')
    LineItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#LineItemList', name: 'LineItemList')
    ListAdapterVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ListAdapterVersionsRequest', name: 'ListAdapterVersionsRequest')
    ListAdapterVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ListAdapterVersionsResponse', name: 'ListAdapterVersionsResponse')
    ListAdaptersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ListAdaptersRequest', name: 'ListAdaptersRequest')
    ListAdaptersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ListAdaptersResponse', name: 'ListAdaptersResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.textract#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    NonEmptyString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#NonEmptyString', name: 'NonEmptyString', traits: {"smithy.api#pattern" => "\\S"})
    NormalizedValue = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#NormalizedValue', name: 'NormalizedValue')
    NotificationChannel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#NotificationChannel', name: 'NotificationChannel')
    OutputConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#OutputConfig', name: 'OutputConfig')
    PageClassification = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#PageClassification', name: 'PageClassification')
    PageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#PageList', name: 'PageList')
    Pages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#Pages', name: 'Pages')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    Percent = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.textract#Percent', name: 'Percent', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    Point = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Point', name: 'Point')
    Polygon = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#Polygon', name: 'Polygon')
    Prediction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Prediction', name: 'Prediction')
    PredictionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#PredictionList', name: 'PredictionList')
    ProvisionedThroughputExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ProvisionedThroughputExceededException', name: 'ProvisionedThroughputExceededException', traits: {"smithy.api#error" => "client"})
    Queries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#Queries', name: 'Queries', traits: {"smithy.api#length" => {"min" => 1}})
    QueriesConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#QueriesConfig', name: 'QueriesConfig')
    Query = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Query', name: 'Query')
    QueryInput = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#QueryInput', name: 'QueryInput', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\s!\"\\#\\$%'&\\(\\)\\*\\+\\,\\-\\./:;=\\?@\\[\\\\\\]\\^_`\\{\\|\\}~><]+$"})
    QueryPage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#QueryPage', name: 'QueryPage', traits: {"smithy.api#length" => {"min" => 1, "max" => 9}, "smithy.api#pattern" => "^[0-9\\*\\-]+$"})
    QueryPages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#QueryPages', name: 'QueryPages', traits: {"smithy.api#length" => {"min" => 1}})
    Relationship = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Relationship', name: 'Relationship')
    RelationshipList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#RelationshipList', name: 'RelationshipList')
    RelationshipType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#RelationshipType', name: 'RelationshipType')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[0-9A-Za-z\\.\\-_]*$"})
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#S3Object', name: 'S3Object')
    S3ObjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#S3ObjectName', name: 'S3ObjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    S3ObjectVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#S3ObjectVersion', name: 'S3ObjectVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    SNSTopicArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#SNSTopicArn', name: 'SNSTopicArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1024}, "smithy.api#pattern" => "^(^arn:([a-z\\d-]+):sns:[a-zA-Z\\d-]{1,20}:\\w{12}:.+$)$"})
    SelectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#SelectionStatus', name: 'SelectionStatus')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client"})
    SignatureDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#SignatureDetection', name: 'SignatureDetection')
    SignatureDetectionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#SignatureDetectionList', name: 'SignatureDetectionList')
    SplitDocument = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#SplitDocument', name: 'SplitDocument')
    SplitDocumentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#SplitDocumentList', name: 'SplitDocumentList')
    StartDocumentAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartDocumentAnalysisRequest', name: 'StartDocumentAnalysisRequest')
    StartDocumentAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartDocumentAnalysisResponse', name: 'StartDocumentAnalysisResponse')
    StartDocumentTextDetectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartDocumentTextDetectionRequest', name: 'StartDocumentTextDetectionRequest')
    StartDocumentTextDetectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartDocumentTextDetectionResponse', name: 'StartDocumentTextDetectionResponse')
    StartExpenseAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartExpenseAnalysisRequest', name: 'StartExpenseAnalysisRequest')
    StartExpenseAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartExpenseAnalysisResponse', name: 'StartExpenseAnalysisResponse')
    StartLendingAnalysisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartLendingAnalysisRequest', name: 'StartLendingAnalysisRequest')
    StartLendingAnalysisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#StartLendingAnalysisResponse', name: 'StartLendingAnalysisResponse')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#StatusMessage', name: 'StatusMessage')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#String', name: 'String')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#StringList', name: 'StringList')
    SynthesizedJsonHumanLoopActivationConditionsEvaluationResults = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#SynthesizedJsonHumanLoopActivationConditionsEvaluationResults', name: 'SynthesizedJsonHumanLoopActivationConditionsEvaluationResults', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#mediaType" => "application/json"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.textract#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.textract#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TextType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#TextType', name: 'TextType')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "server"})
    UInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.textract#UInteger', name: 'UInteger', traits: {"smithy.api#range" => {"min" => 0}})
    UndetectedDocumentTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#UndetectedDocumentTypeList', name: 'UndetectedDocumentTypeList')
    UndetectedSignature = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#UndetectedSignature', name: 'UndetectedSignature')
    UndetectedSignatureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#UndetectedSignatureList', name: 'UndetectedSignatureList')
    UnsupportedDocumentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#UnsupportedDocumentException', name: 'UnsupportedDocumentException', traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAdapterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#UpdateAdapterRequest', name: 'UpdateAdapterRequest')
    UpdateAdapterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#UpdateAdapterResponse', name: 'UpdateAdapterResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    ValueType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.textract#ValueType', name: 'ValueType')
    Warning = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.textract#Warning', name: 'Warning')
    Warnings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.textract#Warnings', name: 'Warnings')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    AccessDeniedException.type = Types::AccessDeniedException
    Adapter.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the adapter resource.</p>", "smithy.api#required" => {}}))
    Adapter.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterPages, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>Pages is a parameter that the user inputs to specify which pages to apply an adapter to. The following is a \n         list of rules for using this parameter.</p>\n         <ul>\n            <li>\n               <p>If a page is not specified, it is set to <code>[\"1\"]</code> by default.</p>\n            </li>\n            <li>\n               <p>The following characters are allowed in the parameter's string: \n               <code>0 1 2 3 4 5 6 7 8 9 - *</code>. No whitespace is allowed.</p>\n            </li>\n            <li>\n               <p>When using * to indicate all pages, it must be the only element in the list.</p>\n            </li>\n            <li>\n               <p>You can use page intervals, such as <code>[\"1-3\", \"1-1\", \"4-*\"]</code>. Where <code>*</code> indicates last page of \n               document.</p>\n            </li>\n            <li>\n               <p>Specified pages must be greater than 0 and less than or equal to the number of pages in the document.</p>\n            </li>\n         </ul>"}))
    Adapter.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>A string that identifies the version of the adapter.</p>", "smithy.api#required" => {}}))
    Adapter.type = Types::Adapter
    AdapterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterOverview)
    AdapterOverview.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the adapter resource.</p>"}))
    AdapterOverview.add_member(:adapter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterName, location_name: 'AdapterName', traits: {"smithy.api#documentation" => "<p>A string naming the adapter resource.</p>"}))
    AdapterOverview.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that the adapter was created.</p>"}))
    AdapterOverview.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>The feature types that the adapter is operating on.</p>"}))
    AdapterOverview.type = Types::AdapterOverview
    AdapterPages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterPage)
    AdapterVersionDatasetConfig.add_member(:manifest_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'ManifestS3Object'))
    AdapterVersionDatasetConfig.type = Types::AdapterVersionDatasetConfig
    AdapterVersionEvaluationMetric.add_member(:baseline, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMetric, location_name: 'Baseline', traits: {"smithy.api#documentation" => "<p>The F1 score, precision, and recall metrics for the baseline model.</p>"}))
    AdapterVersionEvaluationMetric.add_member(:adapter_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluationMetric, location_name: 'AdapterVersion', traits: {"smithy.api#documentation" => "<p>The F1 score, precision, and recall metrics for the baseline model.</p>"}))
    AdapterVersionEvaluationMetric.add_member(:feature_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureType, location_name: 'FeatureType', traits: {"smithy.api#documentation" => "<p>Indicates the feature type being analyzed by a given adapter version.</p>"}))
    AdapterVersionEvaluationMetric.type = Types::AdapterVersionEvaluationMetric
    AdapterVersionEvaluationMetrics.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionEvaluationMetric)
    AdapterVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionOverview)
    AdapterVersionOverview.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the adapter associated with a given adapter version.</p>"}))
    AdapterVersionOverview.add_member(:adapter_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersion, location_name: 'AdapterVersion', traits: {"smithy.api#documentation" => "<p>An identified for a given adapter version.</p>"}))
    AdapterVersionOverview.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time that a given adapter version was created.</p>"}))
    AdapterVersionOverview.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>The feature types that the adapter version is operating on.</p>"}))
    AdapterVersionOverview.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Contains information on the status of a given adapter version.</p>"}))
    AdapterVersionOverview.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A message explaining the status of a given adapter vesion.</p>"}))
    AdapterVersionOverview.type = Types::AdapterVersionOverview
    AdapterVersionStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AdapterVersionStatus.add_member(:at_risk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AT_RISK', traits: {"smithy.api#enumValue" => "AT_RISK"}))
    AdapterVersionStatus.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    AdapterVersionStatus.add_member(:creation_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATION_ERROR', traits: {"smithy.api#enumValue" => "CREATION_ERROR"}))
    AdapterVersionStatus.add_member(:creation_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATION_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATION_IN_PROGRESS"}))
    Adapters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Adapter)
    AdaptersConfig.add_member(:adapters, Smithy::Schema::Shapes::ShapeRef.new(shape: Adapters, location_name: 'Adapters', traits: {"smithy.api#documentation" => "<p>A list of adapters to be used when analyzing the specified document.</p>", "smithy.api#required" => {}}))
    AdaptersConfig.type = Types::AdaptersConfig
    AnalyzeDocumentRequest.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS\n         CLI to call Amazon Textract operations, you can't pass image bytes. The document must be an\n         image in JPEG, PNG, PDF, or TIFF format.</p>\n         <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode\n         image bytes that are passed using the <code>Bytes</code> field. </p>", "smithy.api#required" => {}}))
    AnalyzeDocumentRequest.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>A list of the types of analysis to perform. Add TABLES to the list to return information\n         about the tables that are detected in the input document. Add FORMS to return detected form\n         data. Add SIGNATURES to return the locations of detected signatures. Add LAYOUT to the list\n         to return information about the layout of the document.  All lines and words detected in the document are included in the response (including\n         text that isn't related to the value of <code>FeatureTypes</code>). </p>", "smithy.api#required" => {}}))
    AnalyzeDocumentRequest.add_member(:human_loop_config, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopConfig, location_name: 'HumanLoopConfig', traits: {"smithy.api#documentation" => "<p>Sets the configuration for the human in the loop workflow for analyzing\n         documents.</p>"}))
    AnalyzeDocumentRequest.add_member(:queries_config, Smithy::Schema::Shapes::ShapeRef.new(shape: QueriesConfig, location_name: 'QueriesConfig', traits: {"smithy.api#documentation" => "<p>Contains Queries and the alias for those Queries, as determined by the input. </p>"}))
    AnalyzeDocumentRequest.add_member(:adapters_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AdaptersConfig, location_name: 'AdaptersConfig', traits: {"smithy.api#documentation" => "<p>Specifies the adapter to be used when analyzing a document.</p>"}))
    AnalyzeDocumentRequest.type = Types::AnalyzeDocumentRequest
    AnalyzeDocumentResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Metadata about the analyzed document. An example is the number of pages.</p>"}))
    AnalyzeDocumentResponse.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockList, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>The items that are detected and analyzed by <code>AnalyzeDocument</code>.</p>"}))
    AnalyzeDocumentResponse.add_member(:human_loop_activation_output, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationOutput, location_name: 'HumanLoopActivationOutput', traits: {"smithy.api#documentation" => "<p>Shows the results of the human in the loop evaluation.</p>"}))
    AnalyzeDocumentResponse.add_member(:analyze_document_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnalyzeDocumentModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the model used to analyze the document.</p>"}))
    AnalyzeDocumentResponse.type = Types::AnalyzeDocumentResponse
    AnalyzeExpenseRequest.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Document', traits: {"smithy.api#required" => {}}))
    AnalyzeExpenseRequest.type = Types::AnalyzeExpenseRequest
    AnalyzeExpenseResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata'))
    AnalyzeExpenseResponse.add_member(:expense_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseDocumentList, location_name: 'ExpenseDocuments', traits: {"smithy.api#documentation" => "<p>The expenses detected by Amazon Textract.</p>"}))
    AnalyzeExpenseResponse.type = Types::AnalyzeExpenseResponse
    AnalyzeIDDetections.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>Text of either the normalized field or value associated with it.</p>", "smithy.api#required" => {}}))
    AnalyzeIDDetections.add_member(:normalized_value, Smithy::Schema::Shapes::ShapeRef.new(shape: NormalizedValue, location_name: 'NormalizedValue', traits: {"smithy.api#documentation" => "<p>Only returned for dates, returns the type of value detected and the date\n         written in a more machine readable way.</p>"}))
    AnalyzeIDDetections.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence score of the detected text.</p>"}))
    AnalyzeIDDetections.type = Types::AnalyzeIDDetections
    AnalyzeIDRequest.add_member(:document_pages, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentPages, location_name: 'DocumentPages', traits: {"smithy.api#documentation" => "<p>The document being passed to AnalyzeID.</p>", "smithy.api#required" => {}}))
    AnalyzeIDRequest.type = Types::AnalyzeIDRequest
    AnalyzeIDResponse.add_member(:identity_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDocumentList, location_name: 'IdentityDocuments', traits: {"smithy.api#documentation" => "<p>The list of documents processed by AnalyzeID. Includes a number denoting their place in\n         the list and the response structure for the document.</p>"}))
    AnalyzeIDResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata'))
    AnalyzeIDResponse.add_member(:analyze_id_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnalyzeIDModelVersion', traits: {"smithy.api#documentation" => "<p>The version of the AnalyzeIdentity API being used to process documents.</p>"}))
    AnalyzeIDResponse.type = Types::AnalyzeIDResponse
    AutoUpdate.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoUpdate.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    BadDocumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadDocumentException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    BadDocumentException.type = Types::BadDocumentException
    Block.add_member(:block_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockType, location_name: 'BlockType', traits: {"smithy.api#documentation" => "<p>The type of text item that's recognized. In operations for text detection, the following\n         types are returned:</p>\n         <ul>\n            <li>\n               <p>\n                  <i>PAGE</i> - Contains a list of the LINE <code>Block</code> objects\n               that are detected on a document page.</p>\n            </li>\n            <li>\n               <p>\n                  <i>WORD</i> - A word detected on a document page. A word is one or\n               more ISO basic Latin script characters that aren't separated by spaces.</p>\n            </li>\n            <li>\n               <p>\n                  <i>LINE</i> - A string of space-delimited, contiguous words that are\n               detected on a document page.</p>\n            </li>\n         </ul>\n         <p>In text analysis operations, the following types are returned:</p>\n         <ul>\n            <li>\n               <p>\n                  <i>PAGE</i> - Contains a list of child <code>Block</code> objects\n               that are detected on a document page.</p>\n            </li>\n            <li>\n               <p>\n                  <i>KEY_VALUE_SET</i> - Stores the KEY and VALUE <code>Block</code>\n               objects for linked text that's detected on a document page. Use the\n                  <code>EntityType</code> field to determine if a KEY_VALUE_SET object is a KEY\n                  <code>Block</code> object or a VALUE <code>Block</code> object. </p>\n            </li>\n            <li>\n               <p>\n                  <i>WORD</i> - A word that's detected on a document page. A word is\n               one or more ISO basic Latin script characters that aren't separated by spaces.</p>\n            </li>\n            <li>\n               <p>\n                  <i>LINE</i> - A string of tab-delimited, contiguous words that are\n               detected on a document page.</p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE</i> - A table that's detected on a document page. A table\n               is grid-based information with two or more rows or columns, with a cell span of one\n               row and one column each. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_TITLE</i> - The title of a table. A title is typically a\n               line of text above or below a table, or embedded as the first row of a table. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_FOOTER</i> - The footer associated with a table. A footer\n               is typically a line or lines of text below a table or embedded as the last row of a\n               table. </p>\n            </li>\n            <li>\n               <p>\n                  <i>CELL</i> - A cell within a detected table. The cell is the parent\n               of the block that contains the text in the cell.</p>\n            </li>\n            <li>\n               <p>\n                  <i>MERGED_CELL</i>  - A cell in a table whose content spans more than\n               one row or column. The <code>Relationships</code> array for this cell contain data\n               from individual cells.</p>\n            </li>\n            <li>\n               <p>\n                  <i>SELECTION_ELEMENT</i> - A selection element such as an option\n               button (radio button) or a check box that's detected on a document page. Use the\n               value of <code>SelectionStatus</code> to determine the status of the selection\n               element.</p>\n            </li>\n            <li>\n               <p>\n                  <i>SIGNATURE</i> - The location and confidence score of a signature detected on a\n               document page. Can be returned as part of a Key-Value pair or a detected cell.</p>\n            </li>\n            <li>\n               <p>\n                  <i>QUERY</i> - A question asked during the call of AnalyzeDocument. Contains an\n               alias and an ID that attaches it to its answer.</p>\n            </li>\n            <li>\n               <p>\n                  <i>QUERY_RESULT</i> - A response to a question asked during the call\n               of analyze document. Comes with an alias and ID for ease of locating in a \n               response. Also contains location and confidence score.</p>\n            </li>\n         </ul>\n         <p>The following BlockTypes are only returned for Amazon Textract Layout.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>LAYOUT_TITLE</code> - The main title of the document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_HEADER</code> - Text located in the top margin of the document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_FOOTER</code> - Text located in the bottom margin of the document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_SECTION_HEADER</code> - The titles of sections within a document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_PAGE_NUMBER</code> - The page number of the documents.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_LIST</code> - Any information grouped together in list form. </p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_FIGURE</code> - Indicates the location of an image in a document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_TABLE</code> - Indicates the location of a table in the document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_KEY_VALUE</code> - Indicates the location of form key-values in a document.</p>\n            </li>\n            <li>\n               <p>\n                  <code>LAYOUT_TEXT</code> - Text that is present typically as a part of paragraphs in documents.</p>\n            </li>\n         </ul>"}))
    Block.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence score that Amazon Textract has in the accuracy of the recognized text and\n         the accuracy of the geometry points around the recognized text.</p>"}))
    Block.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The word or line of text that's recognized by Amazon Textract. </p>"}))
    Block.add_member(:text_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TextType, location_name: 'TextType', traits: {"smithy.api#documentation" => "<p>The kind of text that Amazon Textract has detected. Can check for handwritten text and\n         printed text.</p>"}))
    Block.add_member(:row_index, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'RowIndex', traits: {"smithy.api#documentation" => "<p>The row in which a table cell is located. The first row position is 1.\n            <code>RowIndex</code> isn't returned by <code>DetectDocumentText</code> and\n            <code>GetDocumentTextDetection</code>.</p>"}))
    Block.add_member(:column_index, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'ColumnIndex', traits: {"smithy.api#documentation" => "<p>The column in which a table cell appears. The first column position is 1.\n            <code>ColumnIndex</code> isn't returned by <code>DetectDocumentText</code> and\n            <code>GetDocumentTextDetection</code>.</p>"}))
    Block.add_member(:row_span, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'RowSpan', traits: {"smithy.api#documentation" => "<p>The number of rows that a table cell spans. <code>RowSpan</code> isn't returned by\n            <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>.</p>"}))
    Block.add_member(:column_span, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'ColumnSpan', traits: {"smithy.api#documentation" => "<p>The number of columns that a table cell spans. <code>ColumnSpan</code> isn't returned by\n            <code>DetectDocumentText</code> and <code>GetDocumentTextDetection</code>. </p>"}))
    Block.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry', traits: {"smithy.api#documentation" => "<p>The location of the recognized text on the image. It includes an axis-aligned, coarse\n         bounding box that surrounds the text, and a finer-grain polygon for more accurate spatial\n         information. </p>"}))
    Block.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier for the recognized text. The identifier is only unique for a single\n         operation. </p>"}))
    Block.add_member(:relationships, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipList, location_name: 'Relationships', traits: {"smithy.api#documentation" => "<p>A list of relationship objects that describe how blocks are related to each other. For\n         example, a LINE block object contains a CHILD relationship type with the WORD blocks that\n         make up the line of text. There aren't Relationship objects in the list for relationships\n         that don't exist, such as when the current block has no child blocks.</p>"}))
    Block.add_member(:entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EntityTypes, location_name: 'EntityTypes', traits: {"smithy.api#documentation" => "<p>The type of entity. </p>\n         <p>The following entity types can be returned by FORMS analysis:</p>\n         <ul>\n            <li>\n               <p>\n                  <i>KEY</i> - An identifier for a field on the document.</p>\n            </li>\n            <li>\n               <p>\n                  <i>VALUE</i> - The field text.</p>\n            </li>\n         </ul>\n         <p>The following entity types can be returned by TABLES analysis:</p>\n         <ul>\n            <li>\n               <p>\n                  <i>COLUMN_HEADER</i> - Identifies a cell that is a header of a column. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_TITLE</i> - Identifies a cell that is a title within the\n               table. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_SECTION_TITLE</i> - Identifies a cell that is a title of a\n               section within a table. A section title is a cell that typically spans an entire row\n               above a section. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_FOOTER</i> - Identifies a cell that is a footer of a table. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_SUMMARY</i> - Identifies a summary cell of a table. A\n               summary cell can be a row of a table or an additional, smaller table that contains\n               summary information for another table. </p>\n            </li>\n            <li>\n               <p>\n                  <i>STRUCTURED_TABLE </i> - Identifies a table with column headers\n               where the content of each row corresponds to the headers. </p>\n            </li>\n            <li>\n               <p>\n                  <i>SEMI_STRUCTURED_TABLE</i> - Identifies a non-structured table. </p>\n            </li>\n         </ul>\n         <p>\n            <code>EntityTypes</code> isn't returned by <code>DetectDocumentText</code> and\n            <code>GetDocumentTextDetection</code>.</p>"}))
    Block.add_member(:selection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectionStatus, location_name: 'SelectionStatus', traits: {"smithy.api#documentation" => "<p>The selection status of a selection element, such as an option button or check box.\n      </p>"}))
    Block.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>The page on which a block was detected. <code>Page</code> is returned by synchronous and\n         asynchronous operations. Page values greater than 1 are only returned for multipage\n         documents that are in PDF or TIFF format. A scanned image (JPEG/PNG) provided to an\n         asynchronous operation, even if it contains multiple document pages, is considered a\n         single-page document. This means that for scanned images the value of <code>Page</code> is\n         always 1. </p>"}))
    Block.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: Query, location_name: 'Query', traits: {"smithy.api#documentation" => "<p></p>"}))
    Block.type = Types::Block
    BlockList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Block)
    BlockType.add_member(:key_value_set, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY_VALUE_SET', traits: {"smithy.api#enumValue" => "KEY_VALUE_SET"}))
    BlockType.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAGE', traits: {"smithy.api#enumValue" => "PAGE"}))
    BlockType.add_member(:line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINE', traits: {"smithy.api#enumValue" => "LINE"}))
    BlockType.add_member(:word, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORD', traits: {"smithy.api#enumValue" => "WORD"}))
    BlockType.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE', traits: {"smithy.api#enumValue" => "TABLE"}))
    BlockType.add_member(:cell, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CELL', traits: {"smithy.api#enumValue" => "CELL"}))
    BlockType.add_member(:selection_element, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECTION_ELEMENT', traits: {"smithy.api#enumValue" => "SELECTION_ELEMENT"}))
    BlockType.add_member(:merged_cell, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGED_CELL', traits: {"smithy.api#enumValue" => "MERGED_CELL"}))
    BlockType.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TITLE', traits: {"smithy.api#enumValue" => "TITLE"}))
    BlockType.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY', traits: {"smithy.api#enumValue" => "QUERY"}))
    BlockType.add_member(:query_result, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERY_RESULT', traits: {"smithy.api#enumValue" => "QUERY_RESULT"}))
    BlockType.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNATURE', traits: {"smithy.api#enumValue" => "SIGNATURE"}))
    BlockType.add_member(:table_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_TITLE', traits: {"smithy.api#enumValue" => "TABLE_TITLE"}))
    BlockType.add_member(:table_footer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_FOOTER', traits: {"smithy.api#enumValue" => "TABLE_FOOTER"}))
    BlockType.add_member(:layout_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_TEXT', traits: {"smithy.api#enumValue" => "LAYOUT_TEXT"}))
    BlockType.add_member(:layout_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_TITLE', traits: {"smithy.api#enumValue" => "LAYOUT_TITLE"}))
    BlockType.add_member(:layout_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_HEADER', traits: {"smithy.api#enumValue" => "LAYOUT_HEADER"}))
    BlockType.add_member(:layout_footer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_FOOTER', traits: {"smithy.api#enumValue" => "LAYOUT_FOOTER"}))
    BlockType.add_member(:layout_section_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_SECTION_HEADER', traits: {"smithy.api#enumValue" => "LAYOUT_SECTION_HEADER"}))
    BlockType.add_member(:layout_page_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_PAGE_NUMBER', traits: {"smithy.api#enumValue" => "LAYOUT_PAGE_NUMBER"}))
    BlockType.add_member(:layout_list, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_LIST', traits: {"smithy.api#enumValue" => "LAYOUT_LIST"}))
    BlockType.add_member(:layout_figure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_FIGURE', traits: {"smithy.api#enumValue" => "LAYOUT_FIGURE"}))
    BlockType.add_member(:layout_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_TABLE', traits: {"smithy.api#enumValue" => "LAYOUT_TABLE"}))
    BlockType.add_member(:layout_key_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT_KEY_VALUE', traits: {"smithy.api#enumValue" => "LAYOUT_KEY_VALUE"}))
    BoundingBox.add_member(:width, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Width', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The width of the bounding box as a ratio of the overall document page\n         width.</p>"}))
    BoundingBox.add_member(:height, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Height', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The height of the bounding box as a ratio of the overall document page\n         height.</p>"}))
    BoundingBox.add_member(:left, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Left', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The left coordinate of the bounding box as a ratio of overall document page\n         width.</p>"}))
    BoundingBox.add_member(:top, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Top', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The top coordinate of the bounding box as a ratio of overall document page\n         height.</p>"}))
    BoundingBox.type = Types::BoundingBox
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ConflictException.type = Types::ConflictException
    ContentClassifier.add_member(:free_of_personally_identifiable_information, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION', traits: {"smithy.api#enumValue" => "FreeOfPersonallyIdentifiableInformation"}))
    ContentClassifier.add_member(:free_of_adult_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FREE_OF_ADULT_CONTENT', traits: {"smithy.api#enumValue" => "FreeOfAdultContent"}))
    ContentClassifiers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifier)
    CreateAdapterRequest.add_member(:adapter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterName, location_name: 'AdapterName', traits: {"smithy.api#documentation" => "<p>The name to be assigned to the adapter being created.</p>", "smithy.api#required" => {}}))
    CreateAdapterRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token is used to recognize the request. If the same token is used with multiple \n         CreateAdapter requests, the same session is returned. \n         This token is employed to avoid unintentionally creating the same session multiple times.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAdapterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to be assigned to the adapter being created.</p>"}))
    CreateAdapterRequest.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>The type of feature that the adapter is being trained on. Currrenly, supported feature\n         types are: <code>QUERIES</code>\n         </p>", "smithy.api#required" => {}}))
    CreateAdapterRequest.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoUpdate, location_name: 'AutoUpdate', traits: {"smithy.api#documentation" => "<p>Controls whether or not the adapter should automatically update.</p>"}))
    CreateAdapterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of tags to be added to the adapter.</p>"}))
    CreateAdapterRequest.type = Types::CreateAdapterRequest
    CreateAdapterResponse.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing the unique ID for the adapter that has been created.</p>"}))
    CreateAdapterResponse.type = Types::CreateAdapterResponse
    CreateAdapterVersionRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter that will receive a new version.</p>", "smithy.api#required" => {}}))
    CreateAdapterVersionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>Idempotent token is used to recognize the request. If the same token is used with multiple \n         CreateAdapterVersion requests, the same session is returned. \n         This token is employed to avoid unintentionally creating the same session multiple times.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAdapterVersionRequest.add_member(:dataset_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionDatasetConfig, location_name: 'DatasetConfig', traits: {"smithy.api#documentation" => "<p>Specifies a dataset used to train a new adapter version. Takes a ManifestS3Object as the\n         value.</p>", "smithy.api#required" => {}}))
    CreateAdapterVersionRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt your documents.</p>"}))
    CreateAdapterVersionRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#required" => {}}))
    CreateAdapterVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that you want to attach to the adapter version. </p>"}))
    CreateAdapterVersionRequest.type = Types::CreateAdapterVersionRequest
    CreateAdapterVersionResponse.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing the unique ID for the adapter that has received a new version.</p>"}))
    CreateAdapterVersionResponse.add_member(:adapter_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersion, location_name: 'AdapterVersion', traits: {"smithy.api#documentation" => "<p>A string describing the new version of the adapter.</p>"}))
    CreateAdapterVersionResponse.type = Types::CreateAdapterVersionResponse
    DeleteAdapterRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteAdapterRequest.type = Types::DeleteAdapterRequest
    DeleteAdapterResponse.type = Types::DeleteAdapterResponse
    DeleteAdapterVersionRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter version that will be deleted.</p>", "smithy.api#required" => {}}))
    DeleteAdapterVersionRequest.add_member(:adapter_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersion, location_name: 'AdapterVersion', traits: {"smithy.api#documentation" => "<p>Specifies the adapter version to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteAdapterVersionRequest.type = Types::DeleteAdapterVersionRequest
    DeleteAdapterVersionResponse.type = Types::DeleteAdapterVersionResponse
    DetectDocumentTextRequest.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: Document, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>The input document as base64-encoded bytes or an Amazon S3 object. If you use the AWS CLI\n         to call Amazon Textract operations, you can't pass image bytes. The document must be an image \n      in JPEG or PNG format.</p>\n         <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode\n         image bytes that are passed using the <code>Bytes</code> field. </p>", "smithy.api#required" => {}}))
    DetectDocumentTextRequest.type = Types::DetectDocumentTextRequest
    DetectDocumentTextResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Metadata about the document. It contains the number of pages that are detected in the\n         document.</p>"}))
    DetectDocumentTextResponse.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockList, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>An array of <code>Block</code> objects that contain the text that's detected in the\n         document.</p>"}))
    DetectDocumentTextResponse.add_member(:detect_document_text_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetectDocumentTextModelVersion', traits: {"smithy.api#documentation" => "<p></p>"}))
    DetectDocumentTextResponse.type = Types::DetectDocumentTextResponse
    DetectedSignature.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>The page a detected signature was found on.</p>"}))
    DetectedSignature.type = Types::DetectedSignature
    DetectedSignatureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedSignature)
    Document.add_member(:bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBlob, location_name: 'Bytes', traits: {"smithy.api#documentation" => "<p>A blob of base64-encoded document bytes. The maximum size of a document that's provided\n         in a blob of bytes is 5 MB. The document bytes must be in PNG or JPEG format.</p>\n         <p>If you're using an AWS SDK to call Amazon Textract, you might not need to base64-encode\n         image bytes passed using the <code>Bytes</code> field. </p>"}))
    Document.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object', traits: {"smithy.api#documentation" => "<p>Identifies an S3 object as the document source. The maximum size of a document that's\n         stored in an S3 bucket is 5 MB.</p>"}))
    Document.type = Types::Document
    DocumentGroup.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of document that Amazon Textract has detected. See <a href=\"https://docs.aws.amazon.com/textract/latest/dg/lending-response-objects.html\">Analyze Lending Response Objects</a> for a list of all types returned by Textract.</p>"}))
    DocumentGroup.add_member(:split_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: SplitDocumentList, location_name: 'SplitDocuments', traits: {"smithy.api#documentation" => "<p>An array that contains information about the pages of a document, defined by logical boundary.</p>"}))
    DocumentGroup.add_member(:detected_signatures, Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedSignatureList, location_name: 'DetectedSignatures', traits: {"smithy.api#documentation" => "<p>A list of the detected signatures found in a document group.</p>"}))
    DocumentGroup.add_member(:undetected_signatures, Smithy::Schema::Shapes::ShapeRef.new(shape: UndetectedSignatureList, location_name: 'UndetectedSignatures', traits: {"smithy.api#documentation" => "<p>A list of any expected signatures not found in a document group.</p>"}))
    DocumentGroup.type = Types::DocumentGroup
    DocumentGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentGroup)
    DocumentLocation.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'S3Object', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that contains the input document.</p>"}))
    DocumentLocation.type = Types::DocumentLocation
    DocumentMetadata.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>The number of pages that are detected in the document.</p>"}))
    DocumentMetadata.type = Types::DocumentMetadata
    DocumentPages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Document)
    DocumentTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    DocumentTooLargeException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    DocumentTooLargeException.type = Types::DocumentTooLargeException
    EntityType.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEY', traits: {"smithy.api#enumValue" => "KEY"}))
    EntityType.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALUE', traits: {"smithy.api#enumValue" => "VALUE"}))
    EntityType.add_member(:column_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLUMN_HEADER', traits: {"smithy.api#enumValue" => "COLUMN_HEADER"}))
    EntityType.add_member(:table_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_TITLE', traits: {"smithy.api#enumValue" => "TABLE_TITLE"}))
    EntityType.add_member(:table_footer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_FOOTER', traits: {"smithy.api#enumValue" => "TABLE_FOOTER"}))
    EntityType.add_member(:table_section_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_SECTION_TITLE', traits: {"smithy.api#enumValue" => "TABLE_SECTION_TITLE"}))
    EntityType.add_member(:table_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_SUMMARY', traits: {"smithy.api#enumValue" => "TABLE_SUMMARY"}))
    EntityType.add_member(:structured_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRUCTURED_TABLE', traits: {"smithy.api#enumValue" => "STRUCTURED_TABLE"}))
    EntityType.add_member(:semi_structured_table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEMI_STRUCTURED_TABLE', traits: {"smithy.api#enumValue" => "SEMI_STRUCTURED_TABLE"}))
    EntityTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntityType)
    EvaluationMetric.add_member(:f1_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'F1Score', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The F1 score for an adapter version.</p>"}))
    EvaluationMetric.add_member(:precision, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Precision', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Precision score for an adapter version.</p>"}))
    EvaluationMetric.add_member(:recall, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Recall', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The Recall score for an adapter version.</p>"}))
    EvaluationMetric.type = Types::EvaluationMetric
    ExpenseCurrency.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>Currency code for detected currency. the current supported codes are:</p>\n         <ul>\n            <li>\n               <p>USD</p>\n            </li>\n            <li>\n               <p>EUR</p>\n            </li>\n            <li>\n               <p>GBP</p>\n            </li>\n            <li>\n               <p>CAD</p>\n            </li>\n            <li>\n               <p>INR</p>\n            </li>\n            <li>\n               <p>JPY</p>\n            </li>\n            <li>\n               <p>CHF</p>\n            </li>\n            <li>\n               <p>AUD</p>\n            </li>\n            <li>\n               <p>CNY</p>\n            </li>\n            <li>\n               <p>BZR</p>\n            </li>\n            <li>\n               <p>SEK</p>\n            </li>\n            <li>\n               <p>HKD</p>\n            </li>\n         </ul>"}))
    ExpenseCurrency.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Percentage confideence in the detected currency.</p>"}))
    ExpenseCurrency.type = Types::ExpenseCurrency
    ExpenseDetection.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The word or line of text recognized by Amazon Textract</p>"}))
    ExpenseDetection.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry'))
    ExpenseDetection.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence in detection, as a percentage</p>"}))
    ExpenseDetection.type = Types::ExpenseDetection
    ExpenseDocument.add_member(:expense_index, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'ExpenseIndex', traits: {"smithy.api#documentation" => "<p>Denotes which invoice or receipt in the document the information is coming from. \n      First document will be 1, the second 2, and so on.</p>"}))
    ExpenseDocument.add_member(:summary_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseFieldList, location_name: 'SummaryFields', traits: {"smithy.api#documentation" => "<p>Any information found outside of a table by Amazon Textract.</p>"}))
    ExpenseDocument.add_member(:line_item_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemGroupList, location_name: 'LineItemGroups', traits: {"smithy.api#documentation" => "<p>Information detected on each table of a document, seperated into <code>LineItems</code>.</p>"}))
    ExpenseDocument.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockList, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>This is a block object, the same as reported when DetectDocumentText is run on a document.\n      It provides word level recognition of text.</p>"}))
    ExpenseDocument.type = Types::ExpenseDocument
    ExpenseDocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseDocument)
    ExpenseField.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The implied label of a detected element. Present alongside LabelDetection for explicit elements.</p>"}))
    ExpenseField.add_member(:label_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseDetection, location_name: 'LabelDetection', traits: {"smithy.api#documentation" => "<p>The explicitly stated label of a detected element.</p>"}))
    ExpenseField.add_member(:value_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseDetection, location_name: 'ValueDetection', traits: {"smithy.api#documentation" => "<p>The value of a detected element. Present in explicit and implicit elements.</p>"}))
    ExpenseField.add_member(:page_number, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'PageNumber', traits: {"smithy.api#documentation" => "<p>The page number the value was detected on.</p>"}))
    ExpenseField.add_member(:currency, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseCurrency, location_name: 'Currency', traits: {"smithy.api#documentation" => "<p>Shows the kind of currency, both the code and confidence associated with any monatary value\n         detected.</p>"}))
    ExpenseField.add_member(:group_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseGroupPropertyList, location_name: 'GroupProperties', traits: {"smithy.api#documentation" => "<p>Shows which group a response object belongs to, such as whether an address line\n         belongs to the vendor's address or the recipent's address.</p>"}))
    ExpenseField.type = Types::ExpenseField
    ExpenseFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseField)
    ExpenseGroupProperty.add_member(:types, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Types', traits: {"smithy.api#documentation" => "<p>Informs you on whether the expense group is a name or an address.</p>"}))
    ExpenseGroupProperty.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>Provides a group Id number, which will be the same for each in the group.</p>"}))
    ExpenseGroupProperty.type = Types::ExpenseGroupProperty
    ExpenseGroupPropertyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseGroupProperty)
    ExpenseType.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The word or line of text detected by Amazon Textract.</p>"}))
    ExpenseType.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence of accuracy, as a percentage.</p>"}))
    ExpenseType.type = Types::ExpenseType
    Extraction.add_member(:lending_document, Smithy::Schema::Shapes::ShapeRef.new(shape: LendingDocument, location_name: 'LendingDocument', traits: {"smithy.api#documentation" => "<p>Holds the structured data returned by AnalyzeDocument for lending documents.</p>"}))
    Extraction.add_member(:expense_document, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseDocument, location_name: 'ExpenseDocument'))
    Extraction.add_member(:identity_document, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDocument, location_name: 'IdentityDocument'))
    Extraction.type = Types::Extraction
    ExtractionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Extraction)
    FeatureType.add_member(:tables, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLES', traits: {"smithy.api#enumValue" => "TABLES"}))
    FeatureType.add_member(:forms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORMS', traits: {"smithy.api#enumValue" => "FORMS"}))
    FeatureType.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUERIES', traits: {"smithy.api#enumValue" => "QUERIES"}))
    FeatureType.add_member(:signatures, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGNATURES', traits: {"smithy.api#enumValue" => "SIGNATURES"}))
    FeatureType.add_member(:layout, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAYOUT', traits: {"smithy.api#enumValue" => "LAYOUT"}))
    FeatureTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureType)
    Geometry.add_member(:bounding_box, Smithy::Schema::Shapes::ShapeRef.new(shape: BoundingBox, location_name: 'BoundingBox', traits: {"smithy.api#documentation" => "<p>An axis-aligned coarse representation of the location of the recognized item on the\n         document page.</p>"}))
    Geometry.add_member(:polygon, Smithy::Schema::Shapes::ShapeRef.new(shape: Polygon, location_name: 'Polygon', traits: {"smithy.api#documentation" => "<p>Within the bounding box, a fine-grained polygon around the recognized item.</p>"}))
    Geometry.add_member(:rotation_angle, Smithy::Schema::Shapes::ShapeRef.new(shape: Angle, location_name: 'RotationAngle', traits: {"smithy.api#documentation" => "<p>Provides a numerical value corresponding to the rotation of the text.</p>"}))
    Geometry.type = Types::Geometry
    GetAdapterRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter.</p>", "smithy.api#required" => {}}))
    GetAdapterRequest.type = Types::GetAdapterRequest
    GetAdapterResponse.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string identifying the adapter that information has been retrieved for.</p>"}))
    GetAdapterResponse.add_member(:adapter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterName, location_name: 'AdapterName', traits: {"smithy.api#documentation" => "<p>The name of the requested adapter.</p>"}))
    GetAdapterResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time the requested adapter was created at.</p>"}))
    GetAdapterResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the requested adapter.</p>"}))
    GetAdapterResponse.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>List of the targeted feature types for the requested adapter.</p>"}))
    GetAdapterResponse.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoUpdate, location_name: 'AutoUpdate', traits: {"smithy.api#documentation" => "<p>Binary value indicating if the adapter is being automatically updated or not.</p>"}))
    GetAdapterResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) associated with the adapter that has been retrieved.</p>"}))
    GetAdapterResponse.type = Types::GetAdapterResponse
    GetAdapterVersionRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string specifying a unique ID for the adapter version you want to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetAdapterVersionRequest.add_member(:adapter_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersion, location_name: 'AdapterVersion', traits: {"smithy.api#documentation" => "<p>A string specifying the adapter version you want to retrieve information for.</p>", "smithy.api#required" => {}}))
    GetAdapterVersionRequest.type = Types::GetAdapterVersionRequest
    GetAdapterVersionResponse.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter version being retrieved.</p>"}))
    GetAdapterVersionResponse.add_member(:adapter_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersion, location_name: 'AdapterVersion', traits: {"smithy.api#documentation" => "<p>A string containing the adapter version that has been retrieved.</p>"}))
    GetAdapterVersionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The time that the adapter version was created.</p>"}))
    GetAdapterVersionResponse.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>List of the targeted feature types for the requested adapter version.</p>"}))
    GetAdapterVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the adapter version that has been requested.</p>"}))
    GetAdapterVersionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionStatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A message that describes the status of the requested adapter version.</p>"}))
    GetAdapterVersionResponse.add_member(:dataset_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionDatasetConfig, location_name: 'DatasetConfig', traits: {"smithy.api#documentation" => "<p>Specifies a dataset used to train a new adapter version. Takes a ManifestS3Objec as the\n         value.</p>"}))
    GetAdapterVersionResponse.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The identifier for your AWS Key Management Service key (AWS KMS key). Used to encrypt your documents.</p>"}))
    GetAdapterVersionResponse.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig'))
    GetAdapterVersionResponse.add_member(:evaluation_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionEvaluationMetrics, location_name: 'EvaluationMetrics', traits: {"smithy.api#documentation" => "<p>The evaluation metrics (F1 score, Precision, and Recall) for the requested version, \n         grouped by baseline metrics and adapter version.</p>"}))
    GetAdapterVersionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that are associated with the adapter version.</p>"}))
    GetAdapterVersionResponse.type = Types::GetAdapterVersionResponse
    GetDocumentAnalysisRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the text-detection job. The <code>JobId</code> is returned from\n            <code>StartDocumentAnalysis</code>. A <code>JobId</code> value is only valid for 7\n         days.</p>", "smithy.api#required" => {}}))
    GetDocumentAnalysisRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value that you\n         can specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results\n         is returned. The default value is 1,000.</p>"}))
    GetDocumentAnalysisRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more blocks to retrieve),\n         Amazon Textract returns a pagination token in the response. You can use this pagination\n         token to retrieve the next set of blocks.</p>"}))
    GetDocumentAnalysisRequest.type = Types::GetDocumentAnalysisRequest
    GetDocumentAnalysisResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Information about a document that Amazon Textract processed.\n            <code>DocumentMetadata</code> is returned in every page of paginated responses from an\n         Amazon Textract video operation.</p>"}))
    GetDocumentAnalysisResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the text detection job.</p>"}))
    GetDocumentAnalysisResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Textract returns this token. You can use this token\n         in the subsequent request to retrieve the next set of text detection results.</p>"}))
    GetDocumentAnalysisResponse.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockList, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>The results of the text-analysis operation.</p>"}))
    GetDocumentAnalysisResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>A list of warnings that occurred during the document-analysis operation.</p>"}))
    GetDocumentAnalysisResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Returns if the detection job could not be completed. Contains explanation for what error\n         occured.</p>"}))
    GetDocumentAnalysisResponse.add_member(:analyze_document_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnalyzeDocumentModelVersion', traits: {"smithy.api#documentation" => "<p></p>"}))
    GetDocumentAnalysisResponse.type = Types::GetDocumentAnalysisResponse
    GetDocumentTextDetectionRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from\n         <code>StartDocumentTextDetection</code>. A <code>JobId</code> value is only valid for 7 days.</p>", "smithy.api#required" => {}}))
    GetDocumentTextDetectionRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can\n         specify is 1,000. If you specify a value greater than 1,000, a maximum of 1,000 results is\n         returned. The default value is 1,000.</p>"}))
    GetDocumentTextDetectionRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination\n         token in the response. You can use this pagination token to retrieve the next set of blocks.</p>"}))
    GetDocumentTextDetectionRequest.type = Types::GetDocumentTextDetectionRequest
    GetDocumentTextDetectionResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is\n         returned in every page of paginated responses from an Amazon Textract video operation.</p>"}))
    GetDocumentTextDetectionResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the text detection job.</p>"}))
    GetDocumentTextDetectionResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Textract returns this token. You can use this token in\n         the subsequent request to retrieve the next set of text-detection results.</p>"}))
    GetDocumentTextDetectionResponse.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockList, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>The results of the text-detection operation.</p>"}))
    GetDocumentTextDetectionResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>A list of warnings that occurred during the text-detection operation for the\n         document.</p>"}))
    GetDocumentTextDetectionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>"}))
    GetDocumentTextDetectionResponse.add_member(:detect_document_text_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DetectDocumentTextModelVersion', traits: {"smithy.api#documentation" => "<p></p>"}))
    GetDocumentTextDetectionResponse.type = Types::GetDocumentTextDetectionResponse
    GetExpenseAnalysisRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from\n    <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>", "smithy.api#required" => {}}))
    GetExpenseAnalysisRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value you can\n   specify is 20. If you specify a value greater than 20, a maximum of 20 results is\n   returned. The default value is 20.</p>"}))
    GetExpenseAnalysisRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete (because there are more blocks to retrieve), Amazon Textract returns a pagination\n   token in the response. You can use this pagination token to retrieve the next set of blocks.</p>"}))
    GetExpenseAnalysisRequest.type = Types::GetExpenseAnalysisRequest
    GetExpenseAnalysisResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata', traits: {"smithy.api#documentation" => "<p>Information about a document that Amazon Textract processed. <code>DocumentMetadata</code> is\n   returned in every page of paginated responses from an Amazon Textract operation.</p>"}))
    GetExpenseAnalysisResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the text detection job.</p>"}))
    GetExpenseAnalysisResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Textract returns this token. You can use this token in\n   the subsequent request to retrieve the next set of text-detection results.</p>"}))
    GetExpenseAnalysisResponse.add_member(:expense_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseDocumentList, location_name: 'ExpenseDocuments', traits: {"smithy.api#documentation" => "<p>The expenses detected by Amazon Textract.</p>"}))
    GetExpenseAnalysisResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>A list of warnings that occurred during the text-detection operation for the\n   document.</p>"}))
    GetExpenseAnalysisResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Returns if the detection job could not be completed. Contains explanation for what error occured. </p>"}))
    GetExpenseAnalysisResponse.add_member(:analyze_expense_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnalyzeExpenseModelVersion', traits: {"smithy.api#documentation" => "<p>The current model version of AnalyzeExpense.</p>"}))
    GetExpenseAnalysisResponse.type = Types::GetExpenseAnalysisResponse
    GetLendingAnalysisRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the lending or text-detection job. The <code>JobId</code> is\n            returned from <code>StartLendingAnalysis</code>. A <code>JobId</code> value is only\n            valid for 7 days.</p>", "smithy.api#required" => {}}))
    GetLendingAnalysisRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per paginated call. The largest value that you\n            can specify is 30. If you specify a value greater than 30, a maximum of 30 results is\n            returned. The default value is 30.</p>"}))
    GetLendingAnalysisRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous response was incomplete, Amazon Textract returns a pagination token in\n            the response. You can use this pagination token to retrieve the next set of lending\n            results.</p>"}))
    GetLendingAnalysisRequest.type = Types::GetLendingAnalysisRequest
    GetLendingAnalysisResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata'))
    GetLendingAnalysisResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p> The current status of the lending analysis job.</p>"}))
    GetLendingAnalysisResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response is truncated, Amazon Textract returns this token. \n            You can use this token in the subsequent request to retrieve the next set of lending results.</p>"}))
    GetLendingAnalysisResponse.add_member(:results, Smithy::Schema::Shapes::ShapeRef.new(shape: LendingResultList, location_name: 'Results', traits: {"smithy.api#documentation" => "<p> Holds the information returned by one of AmazonTextract's document analysis\n            operations for the pinstripe.</p>"}))
    GetLendingAnalysisResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p> A list of warnings that occurred during the lending analysis operation. </p>"}))
    GetLendingAnalysisResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>  Returns if the lending analysis job could not be completed. Contains explanation for\n            what error occurred. </p>"}))
    GetLendingAnalysisResponse.add_member(:analyze_lending_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnalyzeLendingModelVersion', traits: {"smithy.api#documentation" => "<p> The current model version of the Analyze Lending API.</p>"}))
    GetLendingAnalysisResponse.type = Types::GetLendingAnalysisResponse
    GetLendingAnalysisSummaryRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p> A unique identifier for the lending or text-detection job. The <code>JobId</code> is\n   returned from StartLendingAnalysis. A <code>JobId</code> value is only valid for 7 days.</p>", "smithy.api#required" => {}}))
    GetLendingAnalysisSummaryRequest.type = Types::GetLendingAnalysisSummaryRequest
    GetLendingAnalysisSummaryResponse.add_member(:document_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: 'DocumentMetadata'))
    GetLendingAnalysisSummaryResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p> The current status of the lending analysis job. </p>"}))
    GetLendingAnalysisSummaryResponse.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: LendingSummary, location_name: 'Summary', traits: {"smithy.api#documentation" => "<p> Contains summary information for documents grouped by type.</p>"}))
    GetLendingAnalysisSummaryResponse.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: 'Warnings', traits: {"smithy.api#documentation" => "<p>A list of warnings that occurred during the lending analysis operation.</p>"}))
    GetLendingAnalysisSummaryResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Returns if the lending analysis could not be completed. Contains explanation for what error\n   occurred.</p>"}))
    GetLendingAnalysisSummaryResponse.add_member(:analyze_lending_model_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AnalyzeLendingModelVersion', traits: {"smithy.api#documentation" => "<p>The current model version of the Analyze Lending API.</p>"}))
    GetLendingAnalysisSummaryResponse.type = Types::GetLendingAnalysisSummaryResponse
    HumanLoopActivationOutput.add_member(:human_loop_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: 'HumanLoopArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the HumanLoop created.</p>"}))
    HumanLoopActivationOutput.add_member(:human_loop_activation_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationReasons, location_name: 'HumanLoopActivationReasons', traits: {"smithy.api#documentation" => "<p>Shows if and why human review was needed.</p>"}))
    HumanLoopActivationOutput.add_member(:human_loop_activation_conditions_evaluation_results, Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonHumanLoopActivationConditionsEvaluationResults, location_name: 'HumanLoopActivationConditionsEvaluationResults', traits: {"smithy.api#documentation" => "<p>Shows the result of condition evaluations, including those conditions which activated a\n         human review.</p>"}))
    HumanLoopActivationOutput.type = Types::HumanLoopActivationOutput
    HumanLoopActivationReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopActivationReason)
    HumanLoopConfig.add_member(:human_loop_name, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: 'HumanLoopName', traits: {"smithy.api#documentation" => "<p>The name of the human workflow used for this image. This should be kept unique within a\n         region.</p>", "smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:flow_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: 'FlowDefinitionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the flow definition.</p>", "smithy.api#required" => {}}))
    HumanLoopConfig.add_member(:data_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: 'DataAttributes', traits: {"smithy.api#documentation" => "<p>Sets attributes of the input data.</p>"}))
    HumanLoopConfig.type = Types::HumanLoopConfig
    HumanLoopDataAttributes.add_member(:content_classifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: 'ContentClassifiers', traits: {"smithy.api#documentation" => "<p>Sets whether the input image is free of personally identifiable information or adult\n         content.</p>"}))
    HumanLoopDataAttributes.type = Types::HumanLoopDataAttributes
    HumanLoopQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>"}))
    HumanLoopQuotaExceededException.add_member(:quota_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuotaCode', traits: {"smithy.api#documentation" => "<p>The quota code.</p>"}))
    HumanLoopQuotaExceededException.add_member(:service_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceCode', traits: {"smithy.api#documentation" => "<p>The service code.</p>"}))
    HumanLoopQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    HumanLoopQuotaExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    HumanLoopQuotaExceededException.type = Types::HumanLoopQuotaExceededException
    IdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    IdempotentParameterMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    IdempotentParameterMismatchException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    IdentityDocument.add_member(:document_index, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'DocumentIndex', traits: {"smithy.api#documentation" => "<p>Denotes the placement of a document in the IdentityDocument list. The first document\n         is marked 1, the second 2 and so on.</p>"}))
    IdentityDocument.add_member(:identity_document_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDocumentFieldList, location_name: 'IdentityDocumentFields', traits: {"smithy.api#documentation" => "<p>The structure used to record information extracted from identity documents.\n         Contains both normalized field and value of the extracted text.</p>"}))
    IdentityDocument.add_member(:blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockList, location_name: 'Blocks', traits: {"smithy.api#documentation" => "<p>Individual word recognition, as returned by document detection.</p>"}))
    IdentityDocument.type = Types::IdentityDocument
    IdentityDocumentField.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeIDDetections, location_name: 'Type'))
    IdentityDocumentField.add_member(:value_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeIDDetections, location_name: 'ValueDetection'))
    IdentityDocumentField.type = Types::IdentityDocumentField
    IdentityDocumentFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDocumentField)
    IdentityDocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityDocument)
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InternalServerError.type = Types::InternalServerError
    InvalidJobIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidJobIdException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidJobIdException.type = Types::InvalidJobIdException
    InvalidKMSKeyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidKMSKeyException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidKMSKeyException.type = Types::InvalidKMSKeyException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidParameterException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidS3ObjectException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidS3ObjectException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    InvalidS3ObjectException.type = Types::InvalidS3ObjectException
    JobStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEEDED', traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:partial_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTIAL_SUCCESS', traits: {"smithy.api#enumValue" => "PARTIAL_SUCCESS"}))
    LendingDetection.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>The text extracted for a detected value in a lending document.</p>"}))
    LendingDetection.add_member(:selection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectionStatus, location_name: 'SelectionStatus', traits: {"smithy.api#documentation" => "<p>The selection status of a selection element, such as an option button or check box.</p>"}))
    LendingDetection.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry'))
    LendingDetection.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence level for the text of a detected value in a lending document.</p>"}))
    LendingDetection.type = Types::LendingDetection
    LendingDetectionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LendingDetection)
    LendingDocument.add_member(:lending_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: LendingFieldList, location_name: 'LendingFields', traits: {"smithy.api#documentation" => "<p>An array of LendingField objects.</p>"}))
    LendingDocument.add_member(:signature_detections, Smithy::Schema::Shapes::ShapeRef.new(shape: SignatureDetectionList, location_name: 'SignatureDetections', traits: {"smithy.api#documentation" => "<p>A list of signatures detected in a lending document.</p>"}))
    LendingDocument.type = Types::LendingDocument
    LendingField.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the lending document.</p>"}))
    LendingField.add_member(:key_detection, Smithy::Schema::Shapes::ShapeRef.new(shape: LendingDetection, location_name: 'KeyDetection'))
    LendingField.add_member(:value_detections, Smithy::Schema::Shapes::ShapeRef.new(shape: LendingDetectionList, location_name: 'ValueDetections', traits: {"smithy.api#documentation" => "<p>An array of LendingDetection objects.</p>"}))
    LendingField.type = Types::LendingField
    LendingFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LendingField)
    LendingResult.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>The page number for a page, with regard to whole submission.</p>"}))
    LendingResult.add_member(:page_classification, Smithy::Schema::Shapes::ShapeRef.new(shape: PageClassification, location_name: 'PageClassification', traits: {"smithy.api#documentation" => "<p>The classifier result for a given page.</p>"}))
    LendingResult.add_member(:extractions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExtractionList, location_name: 'Extractions', traits: {"smithy.api#documentation" => "<p>An array of Extraction to hold structured data. e.g. normalized key value pairs instead of raw OCR detections .</p>"}))
    LendingResult.type = Types::LendingResult
    LendingResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LendingResult)
    LendingSummary.add_member(:document_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentGroupList, location_name: 'DocumentGroups', traits: {"smithy.api#documentation" => "<p>Contains an array of all DocumentGroup objects.</p>"}))
    LendingSummary.add_member(:undetected_document_types, Smithy::Schema::Shapes::ShapeRef.new(shape: UndetectedDocumentTypeList, location_name: 'UndetectedDocumentTypes', traits: {"smithy.api#documentation" => "<p>UndetectedDocumentTypes.</p>"}))
    LendingSummary.type = Types::LendingSummary
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    LimitExceededException.type = Types::LimitExceededException
    LineItemFields.add_member(:line_item_expense_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpenseFieldList, location_name: 'LineItemExpenseFields', traits: {"smithy.api#documentation" => "<p>ExpenseFields used to show information from detected lines on a table.</p>"}))
    LineItemFields.type = Types::LineItemFields
    LineItemGroup.add_member(:line_item_group_index, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'LineItemGroupIndex', traits: {"smithy.api#documentation" => "<p>The number used to identify a specific table in a document. The first table encountered will have a LineItemGroupIndex of 1, the second 2, etc.</p>"}))
    LineItemGroup.add_member(:line_items, Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemList, location_name: 'LineItems', traits: {"smithy.api#documentation" => "<p>The breakdown of information on a particular line of a table. </p>"}))
    LineItemGroup.type = Types::LineItemGroup
    LineItemGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemGroup)
    LineItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LineItemFields)
    ListAdapterVersionsRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter to match for when listing adapter versions.</p>"}))
    ListAdapterVersionsRequest.add_member(:after_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AfterCreationTime', traits: {"smithy.api#documentation" => "<p>Specifies the lower bound for the ListAdapterVersions operation. \n         Ensures ListAdapterVersions returns only adapter versions created after the specified creation time.</p>"}))
    ListAdapterVersionsRequest.add_member(:before_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'BeforeCreationTime', traits: {"smithy.api#documentation" => "<p>Specifies the upper bound for the ListAdapterVersions operation. \n         Ensures ListAdapterVersions returns only adapter versions created after the specified creation time.</p>"}))
    ListAdapterVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return when listing adapter versions.</p>"}))
    ListAdapterVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return when listing adapter versions.</p>"}))
    ListAdapterVersionsRequest.type = Types::ListAdapterVersionsRequest
    ListAdapterVersionsResponse.add_member(:adapter_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterVersionList, location_name: 'AdapterVersions', traits: {"smithy.api#documentation" => "<p>Adapter versions that match the filtering criteria specified when calling ListAdapters.</p>"}))
    ListAdapterVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return when listing adapter versions.</p>"}))
    ListAdapterVersionsResponse.type = Types::ListAdapterVersionsResponse
    ListAdaptersRequest.add_member(:after_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AfterCreationTime', traits: {"smithy.api#documentation" => "<p>Specifies the lower bound for the ListAdapters operation. \n         Ensures ListAdapters returns only adapters created after the specified creation time.</p>"}))
    ListAdaptersRequest.add_member(:before_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'BeforeCreationTime', traits: {"smithy.api#documentation" => "<p>Specifies the upper bound for the ListAdapters operation. \n         Ensures ListAdapters returns only adapters created before the specified creation time.</p>"}))
    ListAdaptersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return when listing adapters.</p>"}))
    ListAdaptersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return when listing adapters.</p>"}))
    ListAdaptersRequest.type = Types::ListAdaptersRequest
    ListAdaptersResponse.add_member(:adapters, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterList, location_name: 'Adapters', traits: {"smithy.api#documentation" => "<p>A list of adapters that matches the filtering criteria specified when calling ListAdapters.</p>"}))
    ListAdaptersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Identifies the next page of results to return when listing adapters.</p>"}))
    ListAdaptersResponse.type = Types::ListAdaptersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that specifies the resource to list tags for.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that are part of the requested resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NormalizedValue.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the date, written as Year-Month-DayTHour:Minute:Second.</p>"}))
    NormalizedValue.add_member(:value_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueType, location_name: 'ValueType', traits: {"smithy.api#documentation" => "<p>The normalized type of the value detected. In this case, DATE.</p>"}))
    NormalizedValue.type = Types::NormalizedValue
    NotificationChannel.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SNSTopicArn, location_name: 'SNSTopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic that Amazon Textract posts the completion status to.</p>", "smithy.api#required" => {}}))
    NotificationChannel.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM role that gives Amazon Textract publishing permissions to the Amazon SNS topic. </p>", "smithy.api#required" => {}}))
    NotificationChannel.type = Types::NotificationChannel
    OutputConfig.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the bucket your output will go to.</p>", "smithy.api#required" => {}}))
    OutputConfig.add_member(:s3_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectName, location_name: 'S3Prefix', traits: {"smithy.api#documentation" => "<p>The prefix of the object key that the output will be saved to. When not enabled, the\n         prefix will be “textract_output\".</p>"}))
    OutputConfig.type = Types::OutputConfig
    PageClassification.add_member(:page_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionList, location_name: 'PageType', traits: {"smithy.api#documentation" => "<p>The class, or document type, assigned to a detected Page object. The class, or document type, \n         assigned to a detected Page object.</p>", "smithy.api#required" => {}}))
    PageClassification.add_member(:page_number, Smithy::Schema::Shapes::ShapeRef.new(shape: PredictionList, location_name: 'PageNumber', traits: {"smithy.api#documentation" => "<p> The page number the value was detected on, relative to Amazon Textract's starting position.</p>", "smithy.api#required" => {}}))
    PageClassification.type = Types::PageClassification
    PageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger)
    Pages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger)
    Point.add_member(:x, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'X', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The value of the X coordinate for a point on a <code>Polygon</code>.</p>"}))
    Point.add_member(:y, Smithy::Schema::Shapes::ShapeRef.new(shape: Float, location_name: 'Y', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The value of the Y coordinate for a point on a <code>Polygon</code>.</p>"}))
    Point.type = Types::Point
    Polygon.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Point)
    Prediction.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The predicted value of a detected object.</p>"}))
    Prediction.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>Amazon Textract's confidence in its predicted value.</p>"}))
    Prediction.type = Types::Prediction
    PredictionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Prediction)
    ProvisionedThroughputExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ProvisionedThroughputExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ProvisionedThroughputExceededException.type = Types::ProvisionedThroughputExceededException
    Queries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Query)
    QueriesConfig.add_member(:queries, Smithy::Schema::Shapes::ShapeRef.new(shape: Queries, location_name: 'Queries', traits: {"smithy.api#documentation" => "<p></p>", "smithy.api#required" => {}}))
    QueriesConfig.type = Types::QueriesConfig
    Query.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInput, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>Question that Amazon Textract will apply to the document. An example would be \"What is the customer's SSN?\"</p>", "smithy.api#required" => {}}))
    Query.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryInput, location_name: 'Alias', traits: {"smithy.api#documentation" => "<p>Alias attached to the query, for ease of location.</p>"}))
    Query.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPages, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>Pages is a parameter that the user inputs to specify which pages to apply a query to. The following is a \n         list of rules for using this parameter.</p>\n         <ul>\n            <li>\n               <p>If a page is not specified, it is set to <code>[\"1\"]</code> by default.</p>\n            </li>\n            <li>\n               <p>The following characters are allowed in the parameter's string: \n               <code>0 1 2 3 4 5 6 7 8 9 - *</code>. No whitespace is allowed.</p>\n            </li>\n            <li>\n               <p>When using * to indicate all pages, it must be the only element in the list.</p>\n            </li>\n            <li>\n               <p>You can use page intervals, such as <code>[“1-3”, “1-1”, “4-*”]</code>. Where <code>*</code> indicates last page of \n               document.</p>\n            </li>\n            <li>\n               <p>Specified pages must be greater than 0 and less than or equal to the number of pages in the document.</p>\n            </li>\n         </ul>"}))
    Query.type = Types::Query
    QueryPages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryPage)
    Relationship.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of relationship between the blocks in the IDs array and the current block. The\n         following list describes the relationship types that can be returned. </p>\n         <ul>\n            <li>\n               <p>\n                  <i>VALUE</i> - A list that contains the ID of the VALUE block that's associated with the\n               KEY of a key-value pair.</p>\n            </li>\n            <li>\n               <p>\n                  <i>CHILD</i> - A list of IDs that identify blocks found within the\n               current block object. For example, WORD blocks have a CHILD relationship to the LINE\n               block type.</p>\n            </li>\n            <li>\n               <p>\n                  <i>MERGED_CELL</i> - A list of IDs that identify each of the\n               MERGED_CELL block types in a table.</p>\n            </li>\n            <li>\n               <p>\n                  <i>ANSWER</i> - A list that contains the ID of the QUERY_RESULT\n               block that’s associated with the corresponding QUERY block. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE</i> - A list of IDs that identify associated TABLE block\n               types. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_TITLE</i> - A list that contains the ID for the TABLE_TITLE\n               block type in a table. </p>\n            </li>\n            <li>\n               <p>\n                  <i>TABLE_FOOTER</i> - A list of IDs that identify the TABLE_FOOTER\n               block types in a table. </p>\n            </li>\n         </ul>"}))
    Relationship.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'Ids', traits: {"smithy.api#documentation" => "<p>An\n         array of IDs for related blocks. You can get the type of the relationship from the\n            <code>Type</code> element.</p>"}))
    Relationship.type = Types::Relationship
    RelationshipList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Relationship)
    RelationshipType.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALUE', traits: {"smithy.api#enumValue" => "VALUE"}))
    RelationshipType.add_member(:child, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHILD', traits: {"smithy.api#enumValue" => "CHILD"}))
    RelationshipType.add_member(:complex_features, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLEX_FEATURES', traits: {"smithy.api#enumValue" => "COMPLEX_FEATURES"}))
    RelationshipType.add_member(:merged_cell, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MERGED_CELL', traits: {"smithy.api#enumValue" => "MERGED_CELL"}))
    RelationshipType.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TITLE', traits: {"smithy.api#enumValue" => "TITLE"}))
    RelationshipType.add_member(:answer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ANSWER', traits: {"smithy.api#enumValue" => "ANSWER"}))
    RelationshipType.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE', traits: {"smithy.api#enumValue" => "TABLE"}))
    RelationshipType.add_member(:table_title, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_TITLE', traits: {"smithy.api#enumValue" => "TABLE_TITLE"}))
    RelationshipType.add_member(:table_footer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TABLE_FOOTER', traits: {"smithy.api#enumValue" => "TABLE_FOOTER"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Object.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The name of the S3 bucket. Note that the # character is not valid in the file\n         name.</p>"}))
    S3Object.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The file name of the input document. Image files may be in PDF, TIFF, JPEG, or PNG format.</p>"}))
    S3Object.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>If the bucket has versioning enabled, you can specify the object version. </p>"}))
    S3Object.type = Types::S3Object
    SelectionStatus.add_member(:selected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SELECTED', traits: {"smithy.api#enumValue" => "SELECTED"}))
    SelectionStatus.add_member(:not_selected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_SELECTED', traits: {"smithy.api#enumValue" => "NOT_SELECTED"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceQuotaExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SignatureDetection.add_member(:confidence, Smithy::Schema::Shapes::ShapeRef.new(shape: Percent, location_name: 'Confidence', traits: {"smithy.api#documentation" => "<p>The confidence, from 0 to 100, in the predicted values for a detected signature.</p>"}))
    SignatureDetection.add_member(:geometry, Smithy::Schema::Shapes::ShapeRef.new(shape: Geometry, location_name: 'Geometry'))
    SignatureDetection.type = Types::SignatureDetection
    SignatureDetectionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SignatureDetection)
    SplitDocument.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Index', traits: {"smithy.api#documentation" => "<p>The index for a given document in a DocumentGroup of a specific Type.</p>"}))
    SplitDocument.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: PageList, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>An array of page numbers for a for a given document, ordered by logical boundary.</p>"}))
    SplitDocument.type = Types::SplitDocument
    SplitDocumentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SplitDocument)
    StartDocumentAnalysisRequest.add_member(:document_location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLocation, location_name: 'DocumentLocation', traits: {"smithy.api#documentation" => "<p>The location of the document to be processed.</p>", "smithy.api#required" => {}}))
    StartDocumentAnalysisRequest.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>A list of the types of analysis to perform. Add TABLES to the list to return information\n         about the tables that are detected in the input document. Add FORMS to return detected\n         form data. To perform both types of analysis, add TABLES\n         and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are\n         included in the response (including text that isn't related to the value of\n            <code>FeatureTypes</code>). </p>", "smithy.api#required" => {}}))
    StartDocumentAnalysisRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The idempotent token that you use to identify the start request. If you use the same\n         token with multiple <code>StartDocumentAnalysis</code> requests, the same\n            <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same\n         job from being accidentally started more than once. For more information, see\n         <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\">Calling Amazon Textract Asynchronous Operations</a>.</p>"}))
    StartDocumentAnalysisRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier that you specify that's included in the completion notification published\n         to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of\n         document that the completion notification corresponds to (such as a tax form or a\n         receipt).</p>"}))
    StartDocumentAnalysisRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the\n         operation to. </p>"}))
    StartDocumentAnalysisRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save\n         the results internally to be accessed by the GetDocumentAnalysis operation.</p>"}))
    StartDocumentAnalysisRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key used to encrypt the inference results. This can be \n         in either Key ID or Key Alias format. When a KMS key is provided, the \n         KMS key will be used for server-side encryption of the objects in the \n         customer bucket. When this parameter is not enabled, the result will \n         be encrypted server side,using SSE-S3.</p>"}))
    StartDocumentAnalysisRequest.add_member(:queries_config, Smithy::Schema::Shapes::ShapeRef.new(shape: QueriesConfig, location_name: 'QueriesConfig'))
    StartDocumentAnalysisRequest.add_member(:adapters_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AdaptersConfig, location_name: 'AdaptersConfig', traits: {"smithy.api#documentation" => "<p>Specifies the adapter to be used when analyzing a document.</p>"}))
    StartDocumentAnalysisRequest.type = Types::StartDocumentAnalysisRequest
    StartDocumentAnalysisResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier for the document text detection job. Use <code>JobId</code> to identify\n         the job in a subsequent call to <code>GetDocumentAnalysis</code>. A <code>JobId</code> value \n         is only valid for 7 days.</p>"}))
    StartDocumentAnalysisResponse.type = Types::StartDocumentAnalysisResponse
    StartDocumentTextDetectionRequest.add_member(:document_location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLocation, location_name: 'DocumentLocation', traits: {"smithy.api#documentation" => "<p>The location of the document to be processed.</p>", "smithy.api#required" => {}}))
    StartDocumentTextDetectionRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The idempotent token that's used to identify the start request. If you use the same\n         token with multiple <code>StartDocumentTextDetection</code> requests, the same\n            <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same\n         job from being accidentally started more than once. For more information, see\n         <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\">Calling Amazon Textract Asynchronous Operations</a>.</p>"}))
    StartDocumentTextDetectionRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier that you specify that's included in the completion notification published\n         to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of\n         document that the completion notification corresponds to (such as a tax form or a\n         receipt).</p>"}))
    StartDocumentTextDetectionRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the\n         operation to. </p>"}))
    StartDocumentTextDetectionRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>Sets if the output will go to a customer defined bucket. By default Amazon Textract will\n         save the results internally to be accessed with the GetDocumentTextDetection operation.</p>"}))
    StartDocumentTextDetectionRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key used to encrypt the inference results. This can be \n         in either Key ID or Key Alias format. When a KMS key is provided, the \n         KMS key will be used for server-side encryption of the objects in the \n         customer bucket. When this parameter is not enabled, the result will \n         be encrypted server side,using SSE-S3.</p>"}))
    StartDocumentTextDetectionRequest.type = Types::StartDocumentTextDetectionRequest
    StartDocumentTextDetectionResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the text detection job for the document. Use <code>JobId</code> to\n         identify the job in a subsequent call to <code>GetDocumentTextDetection</code>.\n         A <code>JobId</code> value is only valid for 7 days.</p>"}))
    StartDocumentTextDetectionResponse.type = Types::StartDocumentTextDetectionResponse
    StartExpenseAnalysisRequest.add_member(:document_location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLocation, location_name: 'DocumentLocation', traits: {"smithy.api#documentation" => "<p>The location of the document to be processed.</p>", "smithy.api#required" => {}}))
    StartExpenseAnalysisRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The idempotent token that's used to identify the start request. If you use the same token with multiple <code>StartDocumentTextDetection</code> requests, the same <code>JobId</code> is returned. \n   Use <code>ClientRequestToken</code> to prevent the same job from being accidentally started more than once. \n   For more information, see <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-async.html\">Calling Amazon Textract Asynchronous Operations</a>\n         </p>"}))
    StartExpenseAnalysisRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier you specify that's included in the completion notification published\n   to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of\n   document that the completion notification corresponds to (such as a tax form or a\n   receipt).</p>"}))
    StartExpenseAnalysisRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the\n   operation to. </p>"}))
    StartExpenseAnalysisRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig', traits: {"smithy.api#documentation" => "<p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will\n   save the results internally to be accessed by the <code>GetExpenseAnalysis</code>\n   operation.</p>"}))
    StartExpenseAnalysisRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key used to encrypt the inference results. This can be \n   in either Key ID or Key Alias format. When a KMS key is provided, the \n   KMS key will be used for server-side encryption of the objects in the \n   customer bucket. When this parameter is not enabled, the result will \n   be encrypted server side,using SSE-S3.</p>"}))
    StartExpenseAnalysisRequest.type = Types::StartExpenseAnalysisRequest
    StartExpenseAnalysisResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the text detection job. The <code>JobId</code> is returned from\n    <code>StartExpenseAnalysis</code>. A <code>JobId</code> value is only valid for 7 days.</p>"}))
    StartExpenseAnalysisResponse.type = Types::StartExpenseAnalysisResponse
    StartLendingAnalysisRequest.add_member(:document_location, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentLocation, location_name: 'DocumentLocation', traits: {"smithy.api#required" => {}}))
    StartLendingAnalysisRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The idempotent token that you use to identify the start request. If you use the same token\n   with multiple <code>StartLendingAnalysis</code> requests, the same <code>JobId</code> is\n   returned. Use <code>ClientRequestToken</code> to prevent the same job from being accidentally\n   started more than once. For more information, see <a href=\"https://docs.aws.amazon.com/textract/latest/dg/api-sync.html\">Calling Amazon Textract Asynchronous Operations</a>.</p>"}))
    StartLendingAnalysisRequest.add_member(:job_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: JobTag, location_name: 'JobTag', traits: {"smithy.api#documentation" => "<p>An identifier that you specify to be included in the completion notification published to\n   the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of\n   document that the completion notification corresponds to (such as a tax form or a\n   receipt).</p>"}))
    StartLendingAnalysisRequest.add_member(:notification_channel, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationChannel, location_name: 'NotificationChannel'))
    StartLendingAnalysisRequest.add_member(:output_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputConfig, location_name: 'OutputConfig'))
    StartLendingAnalysisRequest.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KMSKeyId, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key used to encrypt the inference results. This can be in either Key ID or Key\n   Alias format. When a KMS key is provided, the KMS key will be used for server-side encryption of\n   the objects in the customer bucket. When this parameter is not enabled, the result will be\n   encrypted server side, using SSE-S3. </p>"}))
    StartLendingAnalysisRequest.type = Types::StartLendingAnalysisRequest
    StartLendingAnalysisResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the lending or text-detection job. The <code>JobId</code> is\n   returned from <code>StartLendingAnalysis</code>. A <code>JobId</code> value is only valid for 7\n   days.</p>"}))
    StartLendingAnalysisResponse.type = Types::StartLendingAnalysisResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that specifies the resource to be tagged.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of tags (key-value pairs) that you want to assign to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TextType.add_member(:handwriting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HANDWRITING', traits: {"smithy.api#enumValue" => "HANDWRITING"}))
    TextType.add_member(:printed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRINTED', traits: {"smithy.api#enumValue" => "PRINTED"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottlingException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ThrottlingException.type = Types::ThrottlingException
    UndetectedDocumentTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    UndetectedSignature.add_member(:page, Smithy::Schema::Shapes::ShapeRef.new(shape: UInteger, location_name: 'Page', traits: {"smithy.api#documentation" => "<p>The page where a signature was expected but not found.</p>"}))
    UndetectedSignature.type = Types::UndetectedSignature
    UndetectedSignatureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UndetectedSignature)
    UnsupportedDocumentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnsupportedDocumentException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    UnsupportedDocumentException.type = Types::UnsupportedDocumentException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) that specifies the resource to be untagged.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Specifies the tags to be removed from the resource specified by the ResourceARN.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAdapterRequest.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter that will be updated.</p>", "smithy.api#required" => {}}))
    UpdateAdapterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The new description to be applied to the adapter.</p>"}))
    UpdateAdapterRequest.add_member(:adapter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterName, location_name: 'AdapterName', traits: {"smithy.api#documentation" => "<p>The new name to be applied to the adapter.</p>"}))
    UpdateAdapterRequest.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoUpdate, location_name: 'AutoUpdate', traits: {"smithy.api#documentation" => "<p>The new auto-update status to be applied to the adapter.</p>"}))
    UpdateAdapterRequest.type = Types::UpdateAdapterRequest
    UpdateAdapterResponse.add_member(:adapter_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterId, location_name: 'AdapterId', traits: {"smithy.api#documentation" => "<p>A string containing a unique ID for the adapter that has been updated.</p>"}))
    UpdateAdapterResponse.add_member(:adapter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterName, location_name: 'AdapterName', traits: {"smithy.api#documentation" => "<p>A string containing the name of the adapter that has been updated.</p>"}))
    UpdateAdapterResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>An object specifying the creation time of the the adapter that has been updated.</p>"}))
    UpdateAdapterResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: AdapterDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A string containing the description of the adapter that has been updated.</p>"}))
    UpdateAdapterResponse.add_member(:feature_types, Smithy::Schema::Shapes::ShapeRef.new(shape: FeatureTypes, location_name: 'FeatureTypes', traits: {"smithy.api#documentation" => "<p>List of the targeted feature types for the updated adapter.</p>"}))
    UpdateAdapterResponse.add_member(:auto_update, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoUpdate, location_name: 'AutoUpdate', traits: {"smithy.api#documentation" => "<p>The auto-update status of the adapter that has been updated.</p>"}))
    UpdateAdapterResponse.type = Types::UpdateAdapterResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ValidationException.type = Types::ValidationException
    ValueType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATE', traits: {"smithy.api#enumValue" => "DATE"}))
    Warning.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code for the warning.</p>"}))
    Warning.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'Pages', traits: {"smithy.api#documentation" => "<p>A list of the pages that the warning applies to.</p>"}))
    Warning.type = Types::Warning
    Warnings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Warning)

    Textract = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.textract#Textract"
      service.name = "Textract"
      service.version = "2018-06-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Textract", "arnNamespace" => "textract", "cloudFormationName" => "Textract", "cloudTrailEventSource" => "textract.amazonaws.com", "endpointPrefix" => "textract"}, "aws.auth#sigv4" => {"name" => "textract"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Textract"}
      service.add_operation(:analyze_document, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#AnalyzeDocument"
        operation.name = "AnalyzeDocument"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeDocumentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeDocumentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:analyze_expense, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#AnalyzeExpense"
        operation.name = "AnalyzeExpense"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeExpenseRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeExpenseResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:analyze_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#AnalyzeID"
        operation.name = "AnalyzeID"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeIDRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzeIDResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:create_adapter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#CreateAdapter"
        operation.name = "CreateAdapter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdapterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdapterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_adapter_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#CreateAdapterVersion"
        operation.name = "CreateAdapterVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdapterVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAdapterVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_adapter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#DeleteAdapter"
        operation.name = "DeleteAdapter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdapterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdapterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_adapter_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#DeleteAdapterVersion"
        operation.name = "DeleteAdapterVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdapterVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAdapterVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:detect_document_text, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#DetectDocumentText"
        operation.name = "DetectDocumentText"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectDocumentTextRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectDocumentTextResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:get_adapter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetAdapter"
        operation.name = "GetAdapter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdapterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdapterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_adapter_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetAdapterVersion"
        operation.name = "GetAdapterVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdapterVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdapterVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_document_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetDocumentAnalysis"
        operation.name = "GetDocumentAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_document_text_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetDocumentTextDetection"
        operation.name = "GetDocumentTextDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentTextDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDocumentTextDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_expense_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetExpenseAnalysis"
        operation.name = "GetExpenseAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExpenseAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetExpenseAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_lending_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetLendingAnalysis"
        operation.name = "GetLendingAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLendingAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLendingAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:get_lending_analysis_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#GetLendingAnalysisSummary"
        operation.name = "GetLendingAnalysisSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLendingAnalysisSummaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLendingAnalysisSummaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidJobIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:list_adapter_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#ListAdapterVersions"
        operation.name = "ListAdapterVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdapterVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdapterVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdapterVersions.new
      end)
      service.add_operation(:list_adapters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#ListAdapters"
        operation.name = "ListAdapters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdaptersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAdaptersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAdapters.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_document_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartDocumentAnalysis"
        operation.name = "StartDocumentAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDocumentAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDocumentAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:start_document_text_detection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartDocumentTextDetection"
        operation.name = "StartDocumentTextDetection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDocumentTextDetectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDocumentTextDetectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:start_expense_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartExpenseAnalysis"
        operation.name = "StartExpenseAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExpenseAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartExpenseAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:start_lending_analysis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#StartLendingAnalysis"
        operation.name = "StartLendingAnalysis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLendingAnalysisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartLendingAnalysisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadDocumentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_adapter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.textract#UpdateAdapter"
        operation.name = "UpdateAdapter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAdapterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAdapterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
