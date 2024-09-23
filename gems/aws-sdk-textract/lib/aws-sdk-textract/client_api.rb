# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Textract
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Adapter = Shapes::StructureShape.new(name: 'Adapter')
    AdapterDescription = Shapes::StringShape.new(name: 'AdapterDescription')
    AdapterId = Shapes::StringShape.new(name: 'AdapterId')
    AdapterList = Shapes::ListShape.new(name: 'AdapterList')
    AdapterName = Shapes::StringShape.new(name: 'AdapterName')
    AdapterOverview = Shapes::StructureShape.new(name: 'AdapterOverview')
    AdapterPage = Shapes::StringShape.new(name: 'AdapterPage')
    AdapterPages = Shapes::ListShape.new(name: 'AdapterPages')
    AdapterVersion = Shapes::StringShape.new(name: 'AdapterVersion')
    AdapterVersionDatasetConfig = Shapes::StructureShape.new(name: 'AdapterVersionDatasetConfig')
    AdapterVersionEvaluationMetric = Shapes::StructureShape.new(name: 'AdapterVersionEvaluationMetric')
    AdapterVersionEvaluationMetrics = Shapes::ListShape.new(name: 'AdapterVersionEvaluationMetrics')
    AdapterVersionList = Shapes::ListShape.new(name: 'AdapterVersionList')
    AdapterVersionOverview = Shapes::StructureShape.new(name: 'AdapterVersionOverview')
    AdapterVersionStatus = Shapes::StringShape.new(name: 'AdapterVersionStatus')
    AdapterVersionStatusMessage = Shapes::StringShape.new(name: 'AdapterVersionStatusMessage')
    Adapters = Shapes::ListShape.new(name: 'Adapters')
    AdaptersConfig = Shapes::StructureShape.new(name: 'AdaptersConfig')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AnalyzeDocumentRequest = Shapes::StructureShape.new(name: 'AnalyzeDocumentRequest')
    AnalyzeDocumentResponse = Shapes::StructureShape.new(name: 'AnalyzeDocumentResponse')
    AnalyzeExpenseRequest = Shapes::StructureShape.new(name: 'AnalyzeExpenseRequest')
    AnalyzeExpenseResponse = Shapes::StructureShape.new(name: 'AnalyzeExpenseResponse')
    AnalyzeIDDetections = Shapes::StructureShape.new(name: 'AnalyzeIDDetections')
    AnalyzeIDRequest = Shapes::StructureShape.new(name: 'AnalyzeIDRequest')
    AnalyzeIDResponse = Shapes::StructureShape.new(name: 'AnalyzeIDResponse')
    AutoUpdate = Shapes::StringShape.new(name: 'AutoUpdate')
    BadDocumentException = Shapes::StructureShape.new(name: 'BadDocumentException')
    Block = Shapes::StructureShape.new(name: 'Block')
    BlockList = Shapes::ListShape.new(name: 'BlockList')
    BlockType = Shapes::StringShape.new(name: 'BlockType')
    BoundingBox = Shapes::StructureShape.new(name: 'BoundingBox')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    CreateAdapterRequest = Shapes::StructureShape.new(name: 'CreateAdapterRequest')
    CreateAdapterResponse = Shapes::StructureShape.new(name: 'CreateAdapterResponse')
    CreateAdapterVersionRequest = Shapes::StructureShape.new(name: 'CreateAdapterVersionRequest')
    CreateAdapterVersionResponse = Shapes::StructureShape.new(name: 'CreateAdapterVersionResponse')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    DeleteAdapterRequest = Shapes::StructureShape.new(name: 'DeleteAdapterRequest')
    DeleteAdapterResponse = Shapes::StructureShape.new(name: 'DeleteAdapterResponse')
    DeleteAdapterVersionRequest = Shapes::StructureShape.new(name: 'DeleteAdapterVersionRequest')
    DeleteAdapterVersionResponse = Shapes::StructureShape.new(name: 'DeleteAdapterVersionResponse')
    DetectDocumentTextRequest = Shapes::StructureShape.new(name: 'DetectDocumentTextRequest')
    DetectDocumentTextResponse = Shapes::StructureShape.new(name: 'DetectDocumentTextResponse')
    DetectedSignature = Shapes::StructureShape.new(name: 'DetectedSignature')
    DetectedSignatureList = Shapes::ListShape.new(name: 'DetectedSignatureList')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentGroup = Shapes::StructureShape.new(name: 'DocumentGroup')
    DocumentGroupList = Shapes::ListShape.new(name: 'DocumentGroupList')
    DocumentLocation = Shapes::StructureShape.new(name: 'DocumentLocation')
    DocumentMetadata = Shapes::StructureShape.new(name: 'DocumentMetadata')
    DocumentPages = Shapes::ListShape.new(name: 'DocumentPages')
    DocumentTooLargeException = Shapes::StructureShape.new(name: 'DocumentTooLargeException')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypes = Shapes::ListShape.new(name: 'EntityTypes')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    EvaluationMetric = Shapes::StructureShape.new(name: 'EvaluationMetric')
    ExpenseCurrency = Shapes::StructureShape.new(name: 'ExpenseCurrency')
    ExpenseDetection = Shapes::StructureShape.new(name: 'ExpenseDetection')
    ExpenseDocument = Shapes::StructureShape.new(name: 'ExpenseDocument')
    ExpenseDocumentList = Shapes::ListShape.new(name: 'ExpenseDocumentList')
    ExpenseField = Shapes::StructureShape.new(name: 'ExpenseField')
    ExpenseFieldList = Shapes::ListShape.new(name: 'ExpenseFieldList')
    ExpenseGroupProperty = Shapes::StructureShape.new(name: 'ExpenseGroupProperty')
    ExpenseGroupPropertyList = Shapes::ListShape.new(name: 'ExpenseGroupPropertyList')
    ExpenseType = Shapes::StructureShape.new(name: 'ExpenseType')
    Extraction = Shapes::StructureShape.new(name: 'Extraction')
    ExtractionList = Shapes::ListShape.new(name: 'ExtractionList')
    FeatureType = Shapes::StringShape.new(name: 'FeatureType')
    FeatureTypes = Shapes::ListShape.new(name: 'FeatureTypes')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowDefinitionArn = Shapes::StringShape.new(name: 'FlowDefinitionArn')
    Geometry = Shapes::StructureShape.new(name: 'Geometry')
    GetAdapterRequest = Shapes::StructureShape.new(name: 'GetAdapterRequest')
    GetAdapterResponse = Shapes::StructureShape.new(name: 'GetAdapterResponse')
    GetAdapterVersionRequest = Shapes::StructureShape.new(name: 'GetAdapterVersionRequest')
    GetAdapterVersionResponse = Shapes::StructureShape.new(name: 'GetAdapterVersionResponse')
    GetDocumentAnalysisRequest = Shapes::StructureShape.new(name: 'GetDocumentAnalysisRequest')
    GetDocumentAnalysisResponse = Shapes::StructureShape.new(name: 'GetDocumentAnalysisResponse')
    GetDocumentTextDetectionRequest = Shapes::StructureShape.new(name: 'GetDocumentTextDetectionRequest')
    GetDocumentTextDetectionResponse = Shapes::StructureShape.new(name: 'GetDocumentTextDetectionResponse')
    GetExpenseAnalysisRequest = Shapes::StructureShape.new(name: 'GetExpenseAnalysisRequest')
    GetExpenseAnalysisResponse = Shapes::StructureShape.new(name: 'GetExpenseAnalysisResponse')
    GetLendingAnalysisRequest = Shapes::StructureShape.new(name: 'GetLendingAnalysisRequest')
    GetLendingAnalysisResponse = Shapes::StructureShape.new(name: 'GetLendingAnalysisResponse')
    GetLendingAnalysisSummaryRequest = Shapes::StructureShape.new(name: 'GetLendingAnalysisSummaryRequest')
    GetLendingAnalysisSummaryResponse = Shapes::StructureShape.new(name: 'GetLendingAnalysisSummaryResponse')
    HumanLoopActivationConditionsEvaluationResults = Shapes::StringShape.new(name: 'HumanLoopActivationConditionsEvaluationResults')
    HumanLoopActivationOutput = Shapes::StructureShape.new(name: 'HumanLoopActivationOutput')
    HumanLoopActivationReason = Shapes::StringShape.new(name: 'HumanLoopActivationReason')
    HumanLoopActivationReasons = Shapes::ListShape.new(name: 'HumanLoopActivationReasons')
    HumanLoopArn = Shapes::StringShape.new(name: 'HumanLoopArn')
    HumanLoopConfig = Shapes::StructureShape.new(name: 'HumanLoopConfig')
    HumanLoopDataAttributes = Shapes::StructureShape.new(name: 'HumanLoopDataAttributes')
    HumanLoopName = Shapes::StringShape.new(name: 'HumanLoopName')
    HumanLoopQuotaExceededException = Shapes::StructureShape.new(name: 'HumanLoopQuotaExceededException')
    IdList = Shapes::ListShape.new(name: 'IdList')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    IdentityDocument = Shapes::StructureShape.new(name: 'IdentityDocument')
    IdentityDocumentField = Shapes::StructureShape.new(name: 'IdentityDocumentField')
    IdentityDocumentFieldList = Shapes::ListShape.new(name: 'IdentityDocumentFieldList')
    IdentityDocumentList = Shapes::ListShape.new(name: 'IdentityDocumentList')
    ImageBlob = Shapes::BlobShape.new(name: 'ImageBlob')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidJobIdException = Shapes::StructureShape.new(name: 'InvalidJobIdException')
    InvalidKMSKeyException = Shapes::StructureShape.new(name: 'InvalidKMSKeyException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidS3ObjectException = Shapes::StructureShape.new(name: 'InvalidS3ObjectException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobTag = Shapes::StringShape.new(name: 'JobTag')
    KMSKeyId = Shapes::StringShape.new(name: 'KMSKeyId')
    LendingDetection = Shapes::StructureShape.new(name: 'LendingDetection')
    LendingDetectionList = Shapes::ListShape.new(name: 'LendingDetectionList')
    LendingDocument = Shapes::StructureShape.new(name: 'LendingDocument')
    LendingField = Shapes::StructureShape.new(name: 'LendingField')
    LendingFieldList = Shapes::ListShape.new(name: 'LendingFieldList')
    LendingResult = Shapes::StructureShape.new(name: 'LendingResult')
    LendingResultList = Shapes::ListShape.new(name: 'LendingResultList')
    LendingSummary = Shapes::StructureShape.new(name: 'LendingSummary')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LineItemFields = Shapes::StructureShape.new(name: 'LineItemFields')
    LineItemGroup = Shapes::StructureShape.new(name: 'LineItemGroup')
    LineItemGroupList = Shapes::ListShape.new(name: 'LineItemGroupList')
    LineItemList = Shapes::ListShape.new(name: 'LineItemList')
    ListAdapterVersionsRequest = Shapes::StructureShape.new(name: 'ListAdapterVersionsRequest')
    ListAdapterVersionsResponse = Shapes::StructureShape.new(name: 'ListAdapterVersionsResponse')
    ListAdaptersRequest = Shapes::StructureShape.new(name: 'ListAdaptersRequest')
    ListAdaptersResponse = Shapes::StructureShape.new(name: 'ListAdaptersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NormalizedValue = Shapes::StructureShape.new(name: 'NormalizedValue')
    NotificationChannel = Shapes::StructureShape.new(name: 'NotificationChannel')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    PageClassification = Shapes::StructureShape.new(name: 'PageClassification')
    PageList = Shapes::ListShape.new(name: 'PageList')
    Pages = Shapes::ListShape.new(name: 'Pages')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Percent = Shapes::FloatShape.new(name: 'Percent')
    Point = Shapes::StructureShape.new(name: 'Point')
    Polygon = Shapes::ListShape.new(name: 'Polygon')
    Prediction = Shapes::StructureShape.new(name: 'Prediction')
    PredictionList = Shapes::ListShape.new(name: 'PredictionList')
    ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
    Queries = Shapes::ListShape.new(name: 'Queries')
    QueriesConfig = Shapes::StructureShape.new(name: 'QueriesConfig')
    Query = Shapes::StructureShape.new(name: 'Query')
    QueryInput = Shapes::StringShape.new(name: 'QueryInput')
    QueryPage = Shapes::StringShape.new(name: 'QueryPage')
    QueryPages = Shapes::ListShape.new(name: 'QueryPages')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipList = Shapes::ListShape.new(name: 'RelationshipList')
    RelationshipType = Shapes::StringShape.new(name: 'RelationshipType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectName = Shapes::StringShape.new(name: 'S3ObjectName')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    SNSTopicArn = Shapes::StringShape.new(name: 'SNSTopicArn')
    SelectionStatus = Shapes::StringShape.new(name: 'SelectionStatus')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SignatureDetection = Shapes::StructureShape.new(name: 'SignatureDetection')
    SignatureDetectionList = Shapes::ListShape.new(name: 'SignatureDetectionList')
    SplitDocument = Shapes::StructureShape.new(name: 'SplitDocument')
    SplitDocumentList = Shapes::ListShape.new(name: 'SplitDocumentList')
    StartDocumentAnalysisRequest = Shapes::StructureShape.new(name: 'StartDocumentAnalysisRequest')
    StartDocumentAnalysisResponse = Shapes::StructureShape.new(name: 'StartDocumentAnalysisResponse')
    StartDocumentTextDetectionRequest = Shapes::StructureShape.new(name: 'StartDocumentTextDetectionRequest')
    StartDocumentTextDetectionResponse = Shapes::StructureShape.new(name: 'StartDocumentTextDetectionResponse')
    StartExpenseAnalysisRequest = Shapes::StructureShape.new(name: 'StartExpenseAnalysisRequest')
    StartExpenseAnalysisResponse = Shapes::StructureShape.new(name: 'StartExpenseAnalysisResponse')
    StartLendingAnalysisRequest = Shapes::StructureShape.new(name: 'StartLendingAnalysisRequest')
    StartLendingAnalysisResponse = Shapes::StructureShape.new(name: 'StartLendingAnalysisResponse')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TextType = Shapes::StringShape.new(name: 'TextType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UInteger = Shapes::IntegerShape.new(name: 'UInteger')
    UndetectedDocumentTypeList = Shapes::ListShape.new(name: 'UndetectedDocumentTypeList')
    UndetectedSignature = Shapes::StructureShape.new(name: 'UndetectedSignature')
    UndetectedSignatureList = Shapes::ListShape.new(name: 'UndetectedSignatureList')
    UnsupportedDocumentException = Shapes::StructureShape.new(name: 'UnsupportedDocumentException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAdapterRequest = Shapes::StructureShape.new(name: 'UpdateAdapterRequest')
    UpdateAdapterResponse = Shapes::StructureShape.new(name: 'UpdateAdapterResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueType = Shapes::StringShape.new(name: 'ValueType')
    Warning = Shapes::StructureShape.new(name: 'Warning')
    Warnings = Shapes::ListShape.new(name: 'Warnings')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    Adapter.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    Adapter.add_member(:pages, Shapes::ShapeRef.new(shape: AdapterPages, location_name: "Pages"))
    Adapter.add_member(:version, Shapes::ShapeRef.new(shape: AdapterVersion, required: true, location_name: "Version"))
    Adapter.struct_class = Types::Adapter

    AdapterList.member = Shapes::ShapeRef.new(shape: AdapterOverview)

    AdapterOverview.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    AdapterOverview.add_member(:adapter_name, Shapes::ShapeRef.new(shape: AdapterName, location_name: "AdapterName"))
    AdapterOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    AdapterOverview.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, location_name: "FeatureTypes"))
    AdapterOverview.struct_class = Types::AdapterOverview

    AdapterPages.member = Shapes::ShapeRef.new(shape: AdapterPage)

    AdapterVersionDatasetConfig.add_member(:manifest_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "ManifestS3Object"))
    AdapterVersionDatasetConfig.struct_class = Types::AdapterVersionDatasetConfig

    AdapterVersionEvaluationMetric.add_member(:baseline, Shapes::ShapeRef.new(shape: EvaluationMetric, location_name: "Baseline"))
    AdapterVersionEvaluationMetric.add_member(:adapter_version, Shapes::ShapeRef.new(shape: EvaluationMetric, location_name: "AdapterVersion"))
    AdapterVersionEvaluationMetric.add_member(:feature_type, Shapes::ShapeRef.new(shape: FeatureType, location_name: "FeatureType"))
    AdapterVersionEvaluationMetric.struct_class = Types::AdapterVersionEvaluationMetric

    AdapterVersionEvaluationMetrics.member = Shapes::ShapeRef.new(shape: AdapterVersionEvaluationMetric)

    AdapterVersionList.member = Shapes::ShapeRef.new(shape: AdapterVersionOverview)

    AdapterVersionOverview.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    AdapterVersionOverview.add_member(:adapter_version, Shapes::ShapeRef.new(shape: AdapterVersion, location_name: "AdapterVersion"))
    AdapterVersionOverview.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    AdapterVersionOverview.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, location_name: "FeatureTypes"))
    AdapterVersionOverview.add_member(:status, Shapes::ShapeRef.new(shape: AdapterVersionStatus, location_name: "Status"))
    AdapterVersionOverview.add_member(:status_message, Shapes::ShapeRef.new(shape: AdapterVersionStatusMessage, location_name: "StatusMessage"))
    AdapterVersionOverview.struct_class = Types::AdapterVersionOverview

    Adapters.member = Shapes::ShapeRef.new(shape: Adapter)

    AdaptersConfig.add_member(:adapters, Shapes::ShapeRef.new(shape: Adapters, required: true, location_name: "Adapters"))
    AdaptersConfig.struct_class = Types::AdaptersConfig

    AnalyzeDocumentRequest.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Document"))
    AnalyzeDocumentRequest.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, required: true, location_name: "FeatureTypes"))
    AnalyzeDocumentRequest.add_member(:human_loop_config, Shapes::ShapeRef.new(shape: HumanLoopConfig, location_name: "HumanLoopConfig"))
    AnalyzeDocumentRequest.add_member(:queries_config, Shapes::ShapeRef.new(shape: QueriesConfig, location_name: "QueriesConfig"))
    AnalyzeDocumentRequest.add_member(:adapters_config, Shapes::ShapeRef.new(shape: AdaptersConfig, location_name: "AdaptersConfig"))
    AnalyzeDocumentRequest.struct_class = Types::AnalyzeDocumentRequest

    AnalyzeDocumentResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    AnalyzeDocumentResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    AnalyzeDocumentResponse.add_member(:human_loop_activation_output, Shapes::ShapeRef.new(shape: HumanLoopActivationOutput, location_name: "HumanLoopActivationOutput"))
    AnalyzeDocumentResponse.add_member(:analyze_document_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeDocumentModelVersion"))
    AnalyzeDocumentResponse.struct_class = Types::AnalyzeDocumentResponse

    AnalyzeExpenseRequest.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Document"))
    AnalyzeExpenseRequest.struct_class = Types::AnalyzeExpenseRequest

    AnalyzeExpenseResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    AnalyzeExpenseResponse.add_member(:expense_documents, Shapes::ShapeRef.new(shape: ExpenseDocumentList, location_name: "ExpenseDocuments"))
    AnalyzeExpenseResponse.struct_class = Types::AnalyzeExpenseResponse

    AnalyzeIDDetections.add_member(:text, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Text"))
    AnalyzeIDDetections.add_member(:normalized_value, Shapes::ShapeRef.new(shape: NormalizedValue, location_name: "NormalizedValue"))
    AnalyzeIDDetections.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    AnalyzeIDDetections.struct_class = Types::AnalyzeIDDetections

    AnalyzeIDRequest.add_member(:document_pages, Shapes::ShapeRef.new(shape: DocumentPages, required: true, location_name: "DocumentPages"))
    AnalyzeIDRequest.struct_class = Types::AnalyzeIDRequest

    AnalyzeIDResponse.add_member(:identity_documents, Shapes::ShapeRef.new(shape: IdentityDocumentList, location_name: "IdentityDocuments"))
    AnalyzeIDResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    AnalyzeIDResponse.add_member(:analyze_id_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeIDModelVersion"))
    AnalyzeIDResponse.struct_class = Types::AnalyzeIDResponse

    BadDocumentException.struct_class = Types::BadDocumentException

    Block.add_member(:block_type, Shapes::ShapeRef.new(shape: BlockType, location_name: "BlockType"))
    Block.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Block.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    Block.add_member(:text_type, Shapes::ShapeRef.new(shape: TextType, location_name: "TextType"))
    Block.add_member(:row_index, Shapes::ShapeRef.new(shape: UInteger, location_name: "RowIndex"))
    Block.add_member(:column_index, Shapes::ShapeRef.new(shape: UInteger, location_name: "ColumnIndex"))
    Block.add_member(:row_span, Shapes::ShapeRef.new(shape: UInteger, location_name: "RowSpan"))
    Block.add_member(:column_span, Shapes::ShapeRef.new(shape: UInteger, location_name: "ColumnSpan"))
    Block.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    Block.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Id"))
    Block.add_member(:relationships, Shapes::ShapeRef.new(shape: RelationshipList, location_name: "Relationships"))
    Block.add_member(:entity_types, Shapes::ShapeRef.new(shape: EntityTypes, location_name: "EntityTypes"))
    Block.add_member(:selection_status, Shapes::ShapeRef.new(shape: SelectionStatus, location_name: "SelectionStatus"))
    Block.add_member(:page, Shapes::ShapeRef.new(shape: UInteger, location_name: "Page"))
    Block.add_member(:query, Shapes::ShapeRef.new(shape: Query, location_name: "Query"))
    Block.struct_class = Types::Block

    BlockList.member = Shapes::ShapeRef.new(shape: Block)

    BoundingBox.add_member(:width, Shapes::ShapeRef.new(shape: Float, location_name: "Width"))
    BoundingBox.add_member(:height, Shapes::ShapeRef.new(shape: Float, location_name: "Height"))
    BoundingBox.add_member(:left, Shapes::ShapeRef.new(shape: Float, location_name: "Left"))
    BoundingBox.add_member(:top, Shapes::ShapeRef.new(shape: Float, location_name: "Top"))
    BoundingBox.struct_class = Types::BoundingBox

    ConflictException.struct_class = Types::ConflictException

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    CreateAdapterRequest.add_member(:adapter_name, Shapes::ShapeRef.new(shape: AdapterName, required: true, location_name: "AdapterName"))
    CreateAdapterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAdapterRequest.add_member(:description, Shapes::ShapeRef.new(shape: AdapterDescription, location_name: "Description"))
    CreateAdapterRequest.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, required: true, location_name: "FeatureTypes"))
    CreateAdapterRequest.add_member(:auto_update, Shapes::ShapeRef.new(shape: AutoUpdate, location_name: "AutoUpdate"))
    CreateAdapterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAdapterRequest.struct_class = Types::CreateAdapterRequest

    CreateAdapterResponse.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    CreateAdapterResponse.struct_class = Types::CreateAdapterResponse

    CreateAdapterVersionRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    CreateAdapterVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateAdapterVersionRequest.add_member(:dataset_config, Shapes::ShapeRef.new(shape: AdapterVersionDatasetConfig, required: true, location_name: "DatasetConfig"))
    CreateAdapterVersionRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    CreateAdapterVersionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, required: true, location_name: "OutputConfig"))
    CreateAdapterVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateAdapterVersionRequest.struct_class = Types::CreateAdapterVersionRequest

    CreateAdapterVersionResponse.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    CreateAdapterVersionResponse.add_member(:adapter_version, Shapes::ShapeRef.new(shape: AdapterVersion, location_name: "AdapterVersion"))
    CreateAdapterVersionResponse.struct_class = Types::CreateAdapterVersionResponse

    DeleteAdapterRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    DeleteAdapterRequest.struct_class = Types::DeleteAdapterRequest

    DeleteAdapterResponse.struct_class = Types::DeleteAdapterResponse

    DeleteAdapterVersionRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    DeleteAdapterVersionRequest.add_member(:adapter_version, Shapes::ShapeRef.new(shape: AdapterVersion, required: true, location_name: "AdapterVersion"))
    DeleteAdapterVersionRequest.struct_class = Types::DeleteAdapterVersionRequest

    DeleteAdapterVersionResponse.struct_class = Types::DeleteAdapterVersionResponse

    DetectDocumentTextRequest.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Document"))
    DetectDocumentTextRequest.struct_class = Types::DetectDocumentTextRequest

    DetectDocumentTextResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    DetectDocumentTextResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    DetectDocumentTextResponse.add_member(:detect_document_text_model_version, Shapes::ShapeRef.new(shape: String, location_name: "DetectDocumentTextModelVersion"))
    DetectDocumentTextResponse.struct_class = Types::DetectDocumentTextResponse

    DetectedSignature.add_member(:page, Shapes::ShapeRef.new(shape: UInteger, location_name: "Page"))
    DetectedSignature.struct_class = Types::DetectedSignature

    DetectedSignatureList.member = Shapes::ShapeRef.new(shape: DetectedSignature)

    Document.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageBlob, location_name: "Bytes"))
    Document.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Document.struct_class = Types::Document

    DocumentGroup.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    DocumentGroup.add_member(:split_documents, Shapes::ShapeRef.new(shape: SplitDocumentList, location_name: "SplitDocuments"))
    DocumentGroup.add_member(:detected_signatures, Shapes::ShapeRef.new(shape: DetectedSignatureList, location_name: "DetectedSignatures"))
    DocumentGroup.add_member(:undetected_signatures, Shapes::ShapeRef.new(shape: UndetectedSignatureList, location_name: "UndetectedSignatures"))
    DocumentGroup.struct_class = Types::DocumentGroup

    DocumentGroupList.member = Shapes::ShapeRef.new(shape: DocumentGroup)

    DocumentLocation.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    DocumentLocation.struct_class = Types::DocumentLocation

    DocumentMetadata.add_member(:pages, Shapes::ShapeRef.new(shape: UInteger, location_name: "Pages"))
    DocumentMetadata.struct_class = Types::DocumentMetadata

    DocumentPages.member = Shapes::ShapeRef.new(shape: Document)

    DocumentTooLargeException.struct_class = Types::DocumentTooLargeException

    EntityTypes.member = Shapes::ShapeRef.new(shape: EntityType)

    EvaluationMetric.add_member(:f1_score, Shapes::ShapeRef.new(shape: Float, location_name: "F1Score"))
    EvaluationMetric.add_member(:precision, Shapes::ShapeRef.new(shape: Float, location_name: "Precision"))
    EvaluationMetric.add_member(:recall, Shapes::ShapeRef.new(shape: Float, location_name: "Recall"))
    EvaluationMetric.struct_class = Types::EvaluationMetric

    ExpenseCurrency.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ExpenseCurrency.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ExpenseCurrency.struct_class = Types::ExpenseCurrency

    ExpenseDetection.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    ExpenseDetection.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    ExpenseDetection.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ExpenseDetection.struct_class = Types::ExpenseDetection

    ExpenseDocument.add_member(:expense_index, Shapes::ShapeRef.new(shape: UInteger, location_name: "ExpenseIndex"))
    ExpenseDocument.add_member(:summary_fields, Shapes::ShapeRef.new(shape: ExpenseFieldList, location_name: "SummaryFields"))
    ExpenseDocument.add_member(:line_item_groups, Shapes::ShapeRef.new(shape: LineItemGroupList, location_name: "LineItemGroups"))
    ExpenseDocument.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    ExpenseDocument.struct_class = Types::ExpenseDocument

    ExpenseDocumentList.member = Shapes::ShapeRef.new(shape: ExpenseDocument)

    ExpenseField.add_member(:type, Shapes::ShapeRef.new(shape: ExpenseType, location_name: "Type"))
    ExpenseField.add_member(:label_detection, Shapes::ShapeRef.new(shape: ExpenseDetection, location_name: "LabelDetection"))
    ExpenseField.add_member(:value_detection, Shapes::ShapeRef.new(shape: ExpenseDetection, location_name: "ValueDetection"))
    ExpenseField.add_member(:page_number, Shapes::ShapeRef.new(shape: UInteger, location_name: "PageNumber"))
    ExpenseField.add_member(:currency, Shapes::ShapeRef.new(shape: ExpenseCurrency, location_name: "Currency"))
    ExpenseField.add_member(:group_properties, Shapes::ShapeRef.new(shape: ExpenseGroupPropertyList, location_name: "GroupProperties"))
    ExpenseField.struct_class = Types::ExpenseField

    ExpenseFieldList.member = Shapes::ShapeRef.new(shape: ExpenseField)

    ExpenseGroupProperty.add_member(:types, Shapes::ShapeRef.new(shape: StringList, location_name: "Types"))
    ExpenseGroupProperty.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    ExpenseGroupProperty.struct_class = Types::ExpenseGroupProperty

    ExpenseGroupPropertyList.member = Shapes::ShapeRef.new(shape: ExpenseGroupProperty)

    ExpenseType.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    ExpenseType.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    ExpenseType.struct_class = Types::ExpenseType

    Extraction.add_member(:lending_document, Shapes::ShapeRef.new(shape: LendingDocument, location_name: "LendingDocument"))
    Extraction.add_member(:expense_document, Shapes::ShapeRef.new(shape: ExpenseDocument, location_name: "ExpenseDocument"))
    Extraction.add_member(:identity_document, Shapes::ShapeRef.new(shape: IdentityDocument, location_name: "IdentityDocument"))
    Extraction.struct_class = Types::Extraction

    ExtractionList.member = Shapes::ShapeRef.new(shape: Extraction)

    FeatureTypes.member = Shapes::ShapeRef.new(shape: FeatureType)

    Geometry.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Geometry.add_member(:polygon, Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    Geometry.struct_class = Types::Geometry

    GetAdapterRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    GetAdapterRequest.struct_class = Types::GetAdapterRequest

    GetAdapterResponse.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    GetAdapterResponse.add_member(:adapter_name, Shapes::ShapeRef.new(shape: AdapterName, location_name: "AdapterName"))
    GetAdapterResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    GetAdapterResponse.add_member(:description, Shapes::ShapeRef.new(shape: AdapterDescription, location_name: "Description"))
    GetAdapterResponse.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, location_name: "FeatureTypes"))
    GetAdapterResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: AutoUpdate, location_name: "AutoUpdate"))
    GetAdapterResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetAdapterResponse.struct_class = Types::GetAdapterResponse

    GetAdapterVersionRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    GetAdapterVersionRequest.add_member(:adapter_version, Shapes::ShapeRef.new(shape: AdapterVersion, required: true, location_name: "AdapterVersion"))
    GetAdapterVersionRequest.struct_class = Types::GetAdapterVersionRequest

    GetAdapterVersionResponse.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    GetAdapterVersionResponse.add_member(:adapter_version, Shapes::ShapeRef.new(shape: AdapterVersion, location_name: "AdapterVersion"))
    GetAdapterVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    GetAdapterVersionResponse.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, location_name: "FeatureTypes"))
    GetAdapterVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: AdapterVersionStatus, location_name: "Status"))
    GetAdapterVersionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: AdapterVersionStatusMessage, location_name: "StatusMessage"))
    GetAdapterVersionResponse.add_member(:dataset_config, Shapes::ShapeRef.new(shape: AdapterVersionDatasetConfig, location_name: "DatasetConfig"))
    GetAdapterVersionResponse.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    GetAdapterVersionResponse.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    GetAdapterVersionResponse.add_member(:evaluation_metrics, Shapes::ShapeRef.new(shape: AdapterVersionEvaluationMetrics, location_name: "EvaluationMetrics"))
    GetAdapterVersionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetAdapterVersionResponse.struct_class = Types::GetAdapterVersionResponse

    GetDocumentAnalysisRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetDocumentAnalysisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetDocumentAnalysisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetDocumentAnalysisRequest.struct_class = Types::GetDocumentAnalysisRequest

    GetDocumentAnalysisResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    GetDocumentAnalysisResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetDocumentAnalysisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetDocumentAnalysisResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    GetDocumentAnalysisResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    GetDocumentAnalysisResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetDocumentAnalysisResponse.add_member(:analyze_document_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeDocumentModelVersion"))
    GetDocumentAnalysisResponse.struct_class = Types::GetDocumentAnalysisResponse

    GetDocumentTextDetectionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetDocumentTextDetectionRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetDocumentTextDetectionRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetDocumentTextDetectionRequest.struct_class = Types::GetDocumentTextDetectionRequest

    GetDocumentTextDetectionResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    GetDocumentTextDetectionResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetDocumentTextDetectionResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetDocumentTextDetectionResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    GetDocumentTextDetectionResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    GetDocumentTextDetectionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetDocumentTextDetectionResponse.add_member(:detect_document_text_model_version, Shapes::ShapeRef.new(shape: String, location_name: "DetectDocumentTextModelVersion"))
    GetDocumentTextDetectionResponse.struct_class = Types::GetDocumentTextDetectionResponse

    GetExpenseAnalysisRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetExpenseAnalysisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetExpenseAnalysisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetExpenseAnalysisRequest.struct_class = Types::GetExpenseAnalysisRequest

    GetExpenseAnalysisResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    GetExpenseAnalysisResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetExpenseAnalysisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetExpenseAnalysisResponse.add_member(:expense_documents, Shapes::ShapeRef.new(shape: ExpenseDocumentList, location_name: "ExpenseDocuments"))
    GetExpenseAnalysisResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    GetExpenseAnalysisResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetExpenseAnalysisResponse.add_member(:analyze_expense_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeExpenseModelVersion"))
    GetExpenseAnalysisResponse.struct_class = Types::GetExpenseAnalysisResponse

    GetLendingAnalysisRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetLendingAnalysisRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetLendingAnalysisRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLendingAnalysisRequest.struct_class = Types::GetLendingAnalysisRequest

    GetLendingAnalysisResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    GetLendingAnalysisResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetLendingAnalysisResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    GetLendingAnalysisResponse.add_member(:results, Shapes::ShapeRef.new(shape: LendingResultList, location_name: "Results"))
    GetLendingAnalysisResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    GetLendingAnalysisResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetLendingAnalysisResponse.add_member(:analyze_lending_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeLendingModelVersion"))
    GetLendingAnalysisResponse.struct_class = Types::GetLendingAnalysisResponse

    GetLendingAnalysisSummaryRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    GetLendingAnalysisSummaryRequest.struct_class = Types::GetLendingAnalysisSummaryRequest

    GetLendingAnalysisSummaryResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    GetLendingAnalysisSummaryResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "JobStatus"))
    GetLendingAnalysisSummaryResponse.add_member(:summary, Shapes::ShapeRef.new(shape: LendingSummary, location_name: "Summary"))
    GetLendingAnalysisSummaryResponse.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "Warnings"))
    GetLendingAnalysisSummaryResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    GetLendingAnalysisSummaryResponse.add_member(:analyze_lending_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeLendingModelVersion"))
    GetLendingAnalysisSummaryResponse.struct_class = Types::GetLendingAnalysisSummaryResponse

    HumanLoopActivationOutput.add_member(:human_loop_arn, Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: "HumanLoopArn"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_reasons, Shapes::ShapeRef.new(shape: HumanLoopActivationReasons, location_name: "HumanLoopActivationReasons"))
    HumanLoopActivationOutput.add_member(:human_loop_activation_conditions_evaluation_results, Shapes::ShapeRef.new(shape: HumanLoopActivationConditionsEvaluationResults, location_name: "HumanLoopActivationConditionsEvaluationResults", metadata: {"jsonvalue"=>true}))
    HumanLoopActivationOutput.struct_class = Types::HumanLoopActivationOutput

    HumanLoopActivationReasons.member = Shapes::ShapeRef.new(shape: HumanLoopActivationReason)

    HumanLoopConfig.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location_name: "HumanLoopName"))
    HumanLoopConfig.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    HumanLoopConfig.add_member(:data_attributes, Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: "DataAttributes"))
    HumanLoopConfig.struct_class = Types::HumanLoopConfig

    HumanLoopDataAttributes.add_member(:content_classifiers, Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: "ContentClassifiers"))
    HumanLoopDataAttributes.struct_class = Types::HumanLoopDataAttributes

    HumanLoopQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    HumanLoopQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "QuotaCode"))
    HumanLoopQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    HumanLoopQuotaExceededException.struct_class = Types::HumanLoopQuotaExceededException

    IdList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    IdentityDocument.add_member(:document_index, Shapes::ShapeRef.new(shape: UInteger, location_name: "DocumentIndex"))
    IdentityDocument.add_member(:identity_document_fields, Shapes::ShapeRef.new(shape: IdentityDocumentFieldList, location_name: "IdentityDocumentFields"))
    IdentityDocument.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    IdentityDocument.struct_class = Types::IdentityDocument

    IdentityDocumentField.add_member(:type, Shapes::ShapeRef.new(shape: AnalyzeIDDetections, location_name: "Type"))
    IdentityDocumentField.add_member(:value_detection, Shapes::ShapeRef.new(shape: AnalyzeIDDetections, location_name: "ValueDetection"))
    IdentityDocumentField.struct_class = Types::IdentityDocumentField

    IdentityDocumentFieldList.member = Shapes::ShapeRef.new(shape: IdentityDocumentField)

    IdentityDocumentList.member = Shapes::ShapeRef.new(shape: IdentityDocument)

    InternalServerError.struct_class = Types::InternalServerError

    InvalidJobIdException.struct_class = Types::InvalidJobIdException

    InvalidKMSKeyException.struct_class = Types::InvalidKMSKeyException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidS3ObjectException.struct_class = Types::InvalidS3ObjectException

    LendingDetection.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
    LendingDetection.add_member(:selection_status, Shapes::ShapeRef.new(shape: SelectionStatus, location_name: "SelectionStatus"))
    LendingDetection.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    LendingDetection.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    LendingDetection.struct_class = Types::LendingDetection

    LendingDetectionList.member = Shapes::ShapeRef.new(shape: LendingDetection)

    LendingDocument.add_member(:lending_fields, Shapes::ShapeRef.new(shape: LendingFieldList, location_name: "LendingFields"))
    LendingDocument.add_member(:signature_detections, Shapes::ShapeRef.new(shape: SignatureDetectionList, location_name: "SignatureDetections"))
    LendingDocument.struct_class = Types::LendingDocument

    LendingField.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    LendingField.add_member(:key_detection, Shapes::ShapeRef.new(shape: LendingDetection, location_name: "KeyDetection"))
    LendingField.add_member(:value_detections, Shapes::ShapeRef.new(shape: LendingDetectionList, location_name: "ValueDetections"))
    LendingField.struct_class = Types::LendingField

    LendingFieldList.member = Shapes::ShapeRef.new(shape: LendingField)

    LendingResult.add_member(:page, Shapes::ShapeRef.new(shape: UInteger, location_name: "Page"))
    LendingResult.add_member(:page_classification, Shapes::ShapeRef.new(shape: PageClassification, location_name: "PageClassification"))
    LendingResult.add_member(:extractions, Shapes::ShapeRef.new(shape: ExtractionList, location_name: "Extractions"))
    LendingResult.struct_class = Types::LendingResult

    LendingResultList.member = Shapes::ShapeRef.new(shape: LendingResult)

    LendingSummary.add_member(:document_groups, Shapes::ShapeRef.new(shape: DocumentGroupList, location_name: "DocumentGroups"))
    LendingSummary.add_member(:undetected_document_types, Shapes::ShapeRef.new(shape: UndetectedDocumentTypeList, location_name: "UndetectedDocumentTypes"))
    LendingSummary.struct_class = Types::LendingSummary

    LimitExceededException.struct_class = Types::LimitExceededException

    LineItemFields.add_member(:line_item_expense_fields, Shapes::ShapeRef.new(shape: ExpenseFieldList, location_name: "LineItemExpenseFields"))
    LineItemFields.struct_class = Types::LineItemFields

    LineItemGroup.add_member(:line_item_group_index, Shapes::ShapeRef.new(shape: UInteger, location_name: "LineItemGroupIndex"))
    LineItemGroup.add_member(:line_items, Shapes::ShapeRef.new(shape: LineItemList, location_name: "LineItems"))
    LineItemGroup.struct_class = Types::LineItemGroup

    LineItemGroupList.member = Shapes::ShapeRef.new(shape: LineItemGroup)

    LineItemList.member = Shapes::ShapeRef.new(shape: LineItemFields)

    ListAdapterVersionsRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    ListAdapterVersionsRequest.add_member(:after_creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "AfterCreationTime"))
    ListAdapterVersionsRequest.add_member(:before_creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "BeforeCreationTime"))
    ListAdapterVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAdapterVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdapterVersionsRequest.struct_class = Types::ListAdapterVersionsRequest

    ListAdapterVersionsResponse.add_member(:adapter_versions, Shapes::ShapeRef.new(shape: AdapterVersionList, location_name: "AdapterVersions"))
    ListAdapterVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdapterVersionsResponse.struct_class = Types::ListAdapterVersionsResponse

    ListAdaptersRequest.add_member(:after_creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "AfterCreationTime"))
    ListAdaptersRequest.add_member(:before_creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "BeforeCreationTime"))
    ListAdaptersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListAdaptersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdaptersRequest.struct_class = Types::ListAdaptersRequest

    ListAdaptersResponse.add_member(:adapters, Shapes::ShapeRef.new(shape: AdapterList, location_name: "Adapters"))
    ListAdaptersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAdaptersResponse.struct_class = Types::ListAdaptersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NormalizedValue.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    NormalizedValue.add_member(:value_type, Shapes::ShapeRef.new(shape: ValueType, location_name: "ValueType"))
    NormalizedValue.struct_class = Types::NormalizedValue

    NotificationChannel.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SNSTopicArn, required: true, location_name: "SNSTopicArn"))
    NotificationChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    NotificationChannel.struct_class = Types::NotificationChannel

    OutputConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    OutputConfig.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "S3Prefix"))
    OutputConfig.struct_class = Types::OutputConfig

    PageClassification.add_member(:page_type, Shapes::ShapeRef.new(shape: PredictionList, required: true, location_name: "PageType"))
    PageClassification.add_member(:page_number, Shapes::ShapeRef.new(shape: PredictionList, required: true, location_name: "PageNumber"))
    PageClassification.struct_class = Types::PageClassification

    PageList.member = Shapes::ShapeRef.new(shape: UInteger)

    Pages.member = Shapes::ShapeRef.new(shape: UInteger)

    Point.add_member(:x, Shapes::ShapeRef.new(shape: Float, location_name: "X"))
    Point.add_member(:y, Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
    Point.struct_class = Types::Point

    Polygon.member = Shapes::ShapeRef.new(shape: Point)

    Prediction.add_member(:value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Value"))
    Prediction.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Prediction.struct_class = Types::Prediction

    PredictionList.member = Shapes::ShapeRef.new(shape: Prediction)

    ProvisionedThroughputExceededException.struct_class = Types::ProvisionedThroughputExceededException

    Queries.member = Shapes::ShapeRef.new(shape: Query)

    QueriesConfig.add_member(:queries, Shapes::ShapeRef.new(shape: Queries, required: true, location_name: "Queries"))
    QueriesConfig.struct_class = Types::QueriesConfig

    Query.add_member(:text, Shapes::ShapeRef.new(shape: QueryInput, required: true, location_name: "Text"))
    Query.add_member(:alias, Shapes::ShapeRef.new(shape: QueryInput, location_name: "Alias"))
    Query.add_member(:pages, Shapes::ShapeRef.new(shape: QueryPages, location_name: "Pages"))
    Query.struct_class = Types::Query

    QueryPages.member = Shapes::ShapeRef.new(shape: QueryPage)

    Relationship.add_member(:type, Shapes::ShapeRef.new(shape: RelationshipType, location_name: "Type"))
    Relationship.add_member(:ids, Shapes::ShapeRef.new(shape: IdList, location_name: "Ids"))
    Relationship.struct_class = Types::Relationship

    RelationshipList.member = Shapes::ShapeRef.new(shape: Relationship)

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3Object.add_member(:name, Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "Name"))
    S3Object.add_member(:version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "Version"))
    S3Object.struct_class = Types::S3Object

    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SignatureDetection.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    SignatureDetection.add_member(:geometry, Shapes::ShapeRef.new(shape: Geometry, location_name: "Geometry"))
    SignatureDetection.struct_class = Types::SignatureDetection

    SignatureDetectionList.member = Shapes::ShapeRef.new(shape: SignatureDetection)

    SplitDocument.add_member(:index, Shapes::ShapeRef.new(shape: UInteger, location_name: "Index"))
    SplitDocument.add_member(:pages, Shapes::ShapeRef.new(shape: PageList, location_name: "Pages"))
    SplitDocument.struct_class = Types::SplitDocument

    SplitDocumentList.member = Shapes::ShapeRef.new(shape: SplitDocument)

    StartDocumentAnalysisRequest.add_member(:document_location, Shapes::ShapeRef.new(shape: DocumentLocation, required: true, location_name: "DocumentLocation"))
    StartDocumentAnalysisRequest.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, required: true, location_name: "FeatureTypes"))
    StartDocumentAnalysisRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartDocumentAnalysisRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartDocumentAnalysisRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartDocumentAnalysisRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    StartDocumentAnalysisRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    StartDocumentAnalysisRequest.add_member(:queries_config, Shapes::ShapeRef.new(shape: QueriesConfig, location_name: "QueriesConfig"))
    StartDocumentAnalysisRequest.add_member(:adapters_config, Shapes::ShapeRef.new(shape: AdaptersConfig, location_name: "AdaptersConfig"))
    StartDocumentAnalysisRequest.struct_class = Types::StartDocumentAnalysisRequest

    StartDocumentAnalysisResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDocumentAnalysisResponse.struct_class = Types::StartDocumentAnalysisResponse

    StartDocumentTextDetectionRequest.add_member(:document_location, Shapes::ShapeRef.new(shape: DocumentLocation, required: true, location_name: "DocumentLocation"))
    StartDocumentTextDetectionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartDocumentTextDetectionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartDocumentTextDetectionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartDocumentTextDetectionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    StartDocumentTextDetectionRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    StartDocumentTextDetectionRequest.struct_class = Types::StartDocumentTextDetectionRequest

    StartDocumentTextDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDocumentTextDetectionResponse.struct_class = Types::StartDocumentTextDetectionResponse

    StartExpenseAnalysisRequest.add_member(:document_location, Shapes::ShapeRef.new(shape: DocumentLocation, required: true, location_name: "DocumentLocation"))
    StartExpenseAnalysisRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartExpenseAnalysisRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartExpenseAnalysisRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartExpenseAnalysisRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    StartExpenseAnalysisRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    StartExpenseAnalysisRequest.struct_class = Types::StartExpenseAnalysisRequest

    StartExpenseAnalysisResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartExpenseAnalysisResponse.struct_class = Types::StartExpenseAnalysisResponse

    StartLendingAnalysisRequest.add_member(:document_location, Shapes::ShapeRef.new(shape: DocumentLocation, required: true, location_name: "DocumentLocation"))
    StartLendingAnalysisRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartLendingAnalysisRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartLendingAnalysisRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartLendingAnalysisRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    StartLendingAnalysisRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KMSKeyId, location_name: "KMSKeyId"))
    StartLendingAnalysisRequest.struct_class = Types::StartLendingAnalysisRequest

    StartLendingAnalysisResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartLendingAnalysisResponse.struct_class = Types::StartLendingAnalysisResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.struct_class = Types::ThrottlingException

    UndetectedDocumentTypeList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    UndetectedSignature.add_member(:page, Shapes::ShapeRef.new(shape: UInteger, location_name: "Page"))
    UndetectedSignature.struct_class = Types::UndetectedSignature

    UndetectedSignatureList.member = Shapes::ShapeRef.new(shape: UndetectedSignature)

    UnsupportedDocumentException.struct_class = Types::UnsupportedDocumentException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAdapterRequest.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, required: true, location_name: "AdapterId"))
    UpdateAdapterRequest.add_member(:description, Shapes::ShapeRef.new(shape: AdapterDescription, location_name: "Description"))
    UpdateAdapterRequest.add_member(:adapter_name, Shapes::ShapeRef.new(shape: AdapterName, location_name: "AdapterName"))
    UpdateAdapterRequest.add_member(:auto_update, Shapes::ShapeRef.new(shape: AutoUpdate, location_name: "AutoUpdate"))
    UpdateAdapterRequest.struct_class = Types::UpdateAdapterRequest

    UpdateAdapterResponse.add_member(:adapter_id, Shapes::ShapeRef.new(shape: AdapterId, location_name: "AdapterId"))
    UpdateAdapterResponse.add_member(:adapter_name, Shapes::ShapeRef.new(shape: AdapterName, location_name: "AdapterName"))
    UpdateAdapterResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    UpdateAdapterResponse.add_member(:description, Shapes::ShapeRef.new(shape: AdapterDescription, location_name: "Description"))
    UpdateAdapterResponse.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, location_name: "FeatureTypes"))
    UpdateAdapterResponse.add_member(:auto_update, Shapes::ShapeRef.new(shape: AutoUpdate, location_name: "AutoUpdate"))
    UpdateAdapterResponse.struct_class = Types::UpdateAdapterResponse

    ValidationException.struct_class = Types::ValidationException

    Warning.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    Warning.add_member(:pages, Shapes::ShapeRef.new(shape: Pages, location_name: "Pages"))
    Warning.struct_class = Types::Warning

    Warnings.member = Shapes::ShapeRef.new(shape: Warning)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-06-27"

      api.metadata = {
        "apiVersion" => "2018-06-27",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "textract",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Amazon Textract",
        "serviceId" => "Textract",
        "signatureVersion" => "v4",
        "targetPrefix" => "Textract",
        "uid" => "textract-2018-06-27",
      }

      api.add_operation(:analyze_document, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AnalyzeDocument"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AnalyzeDocumentRequest)
        o.output = Shapes::ShapeRef.new(shape: AnalyzeDocumentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: HumanLoopQuotaExceededException)
      end)

      api.add_operation(:analyze_expense, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AnalyzeExpense"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AnalyzeExpenseRequest)
        o.output = Shapes::ShapeRef.new(shape: AnalyzeExpenseResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:analyze_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AnalyzeID"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AnalyzeIDRequest)
        o.output = Shapes::ShapeRef.new(shape: AnalyzeIDResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_adapter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAdapter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAdapterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAdapterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_adapter_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAdapterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAdapterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAdapterVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_adapter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAdapter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAdapterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAdapterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_adapter_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAdapterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAdapterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAdapterVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:detect_document_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetectDocumentText"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetectDocumentTextRequest)
        o.output = Shapes::ShapeRef.new(shape: DetectDocumentTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_adapter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdapter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAdapterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdapterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_adapter_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdapterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAdapterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdapterVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_document_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocumentAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
      end)

      api.add_operation(:get_document_text_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDocumentTextDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDocumentTextDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDocumentTextDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
      end)

      api.add_operation(:get_expense_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetExpenseAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetExpenseAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: GetExpenseAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
      end)

      api.add_operation(:get_lending_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLendingAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLendingAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLendingAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
      end)

      api.add_operation(:get_lending_analysis_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLendingAnalysisSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLendingAnalysisSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLendingAnalysisSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidJobIdException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
      end)

      api.add_operation(:list_adapter_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAdapterVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAdapterVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAdapterVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_adapters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAdapters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAdaptersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAdaptersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_document_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDocumentAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDocumentAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDocumentAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_document_text_detection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDocumentTextDetection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDocumentTextDetectionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDocumentTextDetectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_expense_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartExpenseAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartExpenseAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartExpenseAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_lending_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartLendingAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartLendingAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartLendingAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidKMSKeyException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: DocumentTooLargeException)
        o.errors << Shapes::ShapeRef.new(shape: BadDocumentException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_adapter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAdapter"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAdapterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAdapterResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ProvisionedThroughputExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
