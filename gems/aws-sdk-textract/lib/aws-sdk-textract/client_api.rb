# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Textract
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AnalyzeDocumentRequest = Shapes::StructureShape.new(name: 'AnalyzeDocumentRequest')
    AnalyzeDocumentResponse = Shapes::StructureShape.new(name: 'AnalyzeDocumentResponse')
    BadDocumentException = Shapes::StructureShape.new(name: 'BadDocumentException')
    Block = Shapes::StructureShape.new(name: 'Block')
    BlockList = Shapes::ListShape.new(name: 'BlockList')
    BlockType = Shapes::StringShape.new(name: 'BlockType')
    BoundingBox = Shapes::StructureShape.new(name: 'BoundingBox')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    DetectDocumentTextRequest = Shapes::StructureShape.new(name: 'DetectDocumentTextRequest')
    DetectDocumentTextResponse = Shapes::StructureShape.new(name: 'DetectDocumentTextResponse')
    Document = Shapes::StructureShape.new(name: 'Document')
    DocumentLocation = Shapes::StructureShape.new(name: 'DocumentLocation')
    DocumentMetadata = Shapes::StructureShape.new(name: 'DocumentMetadata')
    DocumentTooLargeException = Shapes::StructureShape.new(name: 'DocumentTooLargeException')
    EntityType = Shapes::StringShape.new(name: 'EntityType')
    EntityTypes = Shapes::ListShape.new(name: 'EntityTypes')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    FeatureType = Shapes::StringShape.new(name: 'FeatureType')
    FeatureTypes = Shapes::ListShape.new(name: 'FeatureTypes')
    Float = Shapes::FloatShape.new(name: 'Float')
    FlowDefinitionArn = Shapes::StringShape.new(name: 'FlowDefinitionArn')
    Geometry = Shapes::StructureShape.new(name: 'Geometry')
    GetDocumentAnalysisRequest = Shapes::StructureShape.new(name: 'GetDocumentAnalysisRequest')
    GetDocumentAnalysisResponse = Shapes::StructureShape.new(name: 'GetDocumentAnalysisResponse')
    GetDocumentTextDetectionRequest = Shapes::StructureShape.new(name: 'GetDocumentTextDetectionRequest')
    GetDocumentTextDetectionResponse = Shapes::StructureShape.new(name: 'GetDocumentTextDetectionResponse')
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
    ImageBlob = Shapes::BlobShape.new(name: 'ImageBlob')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidJobIdException = Shapes::StructureShape.new(name: 'InvalidJobIdException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidS3ObjectException = Shapes::StructureShape.new(name: 'InvalidS3ObjectException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobTag = Shapes::StringShape.new(name: 'JobTag')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotificationChannel = Shapes::StructureShape.new(name: 'NotificationChannel')
    OutputConfig = Shapes::StructureShape.new(name: 'OutputConfig')
    Pages = Shapes::ListShape.new(name: 'Pages')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Percent = Shapes::FloatShape.new(name: 'Percent')
    Point = Shapes::StructureShape.new(name: 'Point')
    Polygon = Shapes::ListShape.new(name: 'Polygon')
    ProvisionedThroughputExceededException = Shapes::StructureShape.new(name: 'ProvisionedThroughputExceededException')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipList = Shapes::ListShape.new(name: 'RelationshipList')
    RelationshipType = Shapes::StringShape.new(name: 'RelationshipType')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3ObjectName = Shapes::StringShape.new(name: 'S3ObjectName')
    S3ObjectVersion = Shapes::StringShape.new(name: 'S3ObjectVersion')
    SNSTopicArn = Shapes::StringShape.new(name: 'SNSTopicArn')
    SelectionStatus = Shapes::StringShape.new(name: 'SelectionStatus')
    StartDocumentAnalysisRequest = Shapes::StructureShape.new(name: 'StartDocumentAnalysisRequest')
    StartDocumentAnalysisResponse = Shapes::StructureShape.new(name: 'StartDocumentAnalysisResponse')
    StartDocumentTextDetectionRequest = Shapes::StructureShape.new(name: 'StartDocumentTextDetectionRequest')
    StartDocumentTextDetectionResponse = Shapes::StructureShape.new(name: 'StartDocumentTextDetectionResponse')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UInteger = Shapes::IntegerShape.new(name: 'UInteger')
    UnsupportedDocumentException = Shapes::StructureShape.new(name: 'UnsupportedDocumentException')
    Warning = Shapes::StructureShape.new(name: 'Warning')
    Warnings = Shapes::ListShape.new(name: 'Warnings')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AnalyzeDocumentRequest.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Document"))
    AnalyzeDocumentRequest.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, required: true, location_name: "FeatureTypes"))
    AnalyzeDocumentRequest.add_member(:human_loop_config, Shapes::ShapeRef.new(shape: HumanLoopConfig, location_name: "HumanLoopConfig"))
    AnalyzeDocumentRequest.struct_class = Types::AnalyzeDocumentRequest

    AnalyzeDocumentResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    AnalyzeDocumentResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    AnalyzeDocumentResponse.add_member(:human_loop_activation_output, Shapes::ShapeRef.new(shape: HumanLoopActivationOutput, location_name: "HumanLoopActivationOutput"))
    AnalyzeDocumentResponse.add_member(:analyze_document_model_version, Shapes::ShapeRef.new(shape: String, location_name: "AnalyzeDocumentModelVersion"))
    AnalyzeDocumentResponse.struct_class = Types::AnalyzeDocumentResponse

    BadDocumentException.struct_class = Types::BadDocumentException

    Block.add_member(:block_type, Shapes::ShapeRef.new(shape: BlockType, location_name: "BlockType"))
    Block.add_member(:confidence, Shapes::ShapeRef.new(shape: Percent, location_name: "Confidence"))
    Block.add_member(:text, Shapes::ShapeRef.new(shape: String, location_name: "Text"))
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
    Block.struct_class = Types::Block

    BlockList.member = Shapes::ShapeRef.new(shape: Block)

    BoundingBox.add_member(:width, Shapes::ShapeRef.new(shape: Float, location_name: "Width"))
    BoundingBox.add_member(:height, Shapes::ShapeRef.new(shape: Float, location_name: "Height"))
    BoundingBox.add_member(:left, Shapes::ShapeRef.new(shape: Float, location_name: "Left"))
    BoundingBox.add_member(:top, Shapes::ShapeRef.new(shape: Float, location_name: "Top"))
    BoundingBox.struct_class = Types::BoundingBox

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    DetectDocumentTextRequest.add_member(:document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "Document"))
    DetectDocumentTextRequest.struct_class = Types::DetectDocumentTextRequest

    DetectDocumentTextResponse.add_member(:document_metadata, Shapes::ShapeRef.new(shape: DocumentMetadata, location_name: "DocumentMetadata"))
    DetectDocumentTextResponse.add_member(:blocks, Shapes::ShapeRef.new(shape: BlockList, location_name: "Blocks"))
    DetectDocumentTextResponse.add_member(:detect_document_text_model_version, Shapes::ShapeRef.new(shape: String, location_name: "DetectDocumentTextModelVersion"))
    DetectDocumentTextResponse.struct_class = Types::DetectDocumentTextResponse

    Document.add_member(:bytes, Shapes::ShapeRef.new(shape: ImageBlob, location_name: "Bytes"))
    Document.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    Document.struct_class = Types::Document

    DocumentLocation.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "S3Object"))
    DocumentLocation.struct_class = Types::DocumentLocation

    DocumentMetadata.add_member(:pages, Shapes::ShapeRef.new(shape: UInteger, location_name: "Pages"))
    DocumentMetadata.struct_class = Types::DocumentMetadata

    DocumentTooLargeException.struct_class = Types::DocumentTooLargeException

    EntityTypes.member = Shapes::ShapeRef.new(shape: EntityType)

    FeatureTypes.member = Shapes::ShapeRef.new(shape: FeatureType)

    Geometry.add_member(:bounding_box, Shapes::ShapeRef.new(shape: BoundingBox, location_name: "BoundingBox"))
    Geometry.add_member(:polygon, Shapes::ShapeRef.new(shape: Polygon, location_name: "Polygon"))
    Geometry.struct_class = Types::Geometry

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

    InternalServerError.struct_class = Types::InternalServerError

    InvalidJobIdException.struct_class = Types::InvalidJobIdException

    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidS3ObjectException.struct_class = Types::InvalidS3ObjectException

    LimitExceededException.struct_class = Types::LimitExceededException

    NotificationChannel.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SNSTopicArn, required: true, location_name: "SNSTopicArn"))
    NotificationChannel.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    NotificationChannel.struct_class = Types::NotificationChannel

    OutputConfig.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    OutputConfig.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "S3Prefix"))
    OutputConfig.struct_class = Types::OutputConfig

    Pages.member = Shapes::ShapeRef.new(shape: UInteger)

    Point.add_member(:x, Shapes::ShapeRef.new(shape: Float, location_name: "X"))
    Point.add_member(:y, Shapes::ShapeRef.new(shape: Float, location_name: "Y"))
    Point.struct_class = Types::Point

    Polygon.member = Shapes::ShapeRef.new(shape: Point)

    ProvisionedThroughputExceededException.struct_class = Types::ProvisionedThroughputExceededException

    Relationship.add_member(:type, Shapes::ShapeRef.new(shape: RelationshipType, location_name: "Type"))
    Relationship.add_member(:ids, Shapes::ShapeRef.new(shape: IdList, location_name: "Ids"))
    Relationship.struct_class = Types::Relationship

    RelationshipList.member = Shapes::ShapeRef.new(shape: Relationship)

    S3Object.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "Bucket"))
    S3Object.add_member(:name, Shapes::ShapeRef.new(shape: S3ObjectName, location_name: "Name"))
    S3Object.add_member(:version, Shapes::ShapeRef.new(shape: S3ObjectVersion, location_name: "Version"))
    S3Object.struct_class = Types::S3Object

    StartDocumentAnalysisRequest.add_member(:document_location, Shapes::ShapeRef.new(shape: DocumentLocation, required: true, location_name: "DocumentLocation"))
    StartDocumentAnalysisRequest.add_member(:feature_types, Shapes::ShapeRef.new(shape: FeatureTypes, required: true, location_name: "FeatureTypes"))
    StartDocumentAnalysisRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartDocumentAnalysisRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartDocumentAnalysisRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartDocumentAnalysisRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    StartDocumentAnalysisRequest.struct_class = Types::StartDocumentAnalysisRequest

    StartDocumentAnalysisResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDocumentAnalysisResponse.struct_class = Types::StartDocumentAnalysisResponse

    StartDocumentTextDetectionRequest.add_member(:document_location, Shapes::ShapeRef.new(shape: DocumentLocation, required: true, location_name: "DocumentLocation"))
    StartDocumentTextDetectionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    StartDocumentTextDetectionRequest.add_member(:job_tag, Shapes::ShapeRef.new(shape: JobTag, location_name: "JobTag"))
    StartDocumentTextDetectionRequest.add_member(:notification_channel, Shapes::ShapeRef.new(shape: NotificationChannel, location_name: "NotificationChannel"))
    StartDocumentTextDetectionRequest.add_member(:output_config, Shapes::ShapeRef.new(shape: OutputConfig, location_name: "OutputConfig"))
    StartDocumentTextDetectionRequest.struct_class = Types::StartDocumentTextDetectionRequest

    StartDocumentTextDetectionResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    StartDocumentTextDetectionResponse.struct_class = Types::StartDocumentTextDetectionResponse

    ThrottlingException.struct_class = Types::ThrottlingException

    UnsupportedDocumentException.struct_class = Types::UnsupportedDocumentException

    Warning.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    Warning.add_member(:pages, Shapes::ShapeRef.new(shape: Pages, location_name: "Pages"))
    Warning.struct_class = Types::Warning

    Warnings.member = Shapes::ShapeRef.new(shape: Warning)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-06-27"

      api.metadata = {
        "apiVersion" => "2018-06-27",
        "endpointPrefix" => "textract",
        "jsonVersion" => "1.1",
        "protocol" => "json",
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
      end)

      api.add_operation(:start_document_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDocumentAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartDocumentAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDocumentAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3ObjectException)
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
    end

  end
end
