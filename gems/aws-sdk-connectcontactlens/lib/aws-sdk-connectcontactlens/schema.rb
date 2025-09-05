# frozen_string_literal: true

# This is generated code!

module Aws::ConnectContactLens
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Categories = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#Categories', name: 'Categories')
    CategoryDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#CategoryDetails', name: 'CategoryDetails')
    CategoryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#CategoryName', name: 'CategoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    CharacterOffset = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcontactlens#CharacterOffset', name: 'CharacterOffset', traits: {"smithy.api#range" => {"min" => 0}})
    CharacterOffsets = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#CharacterOffsets', name: 'CharacterOffsets')
    ContactId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#ContactId', name: 'ContactId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueDetected = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#IssueDetected', name: 'IssueDetected')
    IssuesDetected = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#IssuesDetected', name: 'IssuesDetected', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ListRealtimeContactAnalysisSegmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ListRealtimeContactAnalysisSegmentsRequest', name: 'ListRealtimeContactAnalysisSegmentsRequest')
    ListRealtimeContactAnalysisSegmentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ListRealtimeContactAnalysisSegmentsResponse', name: 'ListRealtimeContactAnalysisSegmentsResponse')
    MatchedCategories = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#MatchedCategories', name: 'MatchedCategories', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    MatchedDetails = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcontactlens#MatchedDetails', name: 'MatchedDetails', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcontactlens#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#Message', name: 'Message')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 131070}, "smithy.api#pattern" => "\\S"})
    OffsetMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcontactlens#OffsetMillis', name: 'OffsetMillis', traits: {"smithy.api#range" => {"min" => 0}})
    ParticipantId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#ParticipantId', name: 'ParticipantId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    ParticipantRole = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#ParticipantRole', name: 'ParticipantRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    PointOfInterest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#PointOfInterest', name: 'PointOfInterest')
    PointsOfInterest = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#PointsOfInterest', name: 'PointsOfInterest', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    PostContactSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummary', name: 'PostContactSummary')
    PostContactSummaryContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummaryContent', name: 'PostContactSummaryContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 1762}})
    PostContactSummaryFailureCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummaryFailureCode', name: 'PostContactSummaryFailureCode')
    PostContactSummaryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummaryStatus', name: 'PostContactSummaryStatus')
    RealtimeContactAnalysisSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#RealtimeContactAnalysisSegment', name: 'RealtimeContactAnalysisSegment')
    RealtimeContactAnalysisSegments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#RealtimeContactAnalysisSegments', name: 'RealtimeContactAnalysisSegments', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SentimentValue = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectcontactlens#SentimentValue', name: 'SentimentValue')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Transcript = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#Transcript', name: 'Transcript')
    TranscriptContent = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#TranscriptContent', name: 'TranscriptContent', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "\\S"})
    TranscriptId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#TranscriptId', name: 'TranscriptId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Categories.add_member(:matched_categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedCategories, location_name: 'MatchedCategories', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Categories.add_member(:matched_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedDetails, location_name: 'MatchedDetails', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Categories.type = Types::Categories
    CategoryDetails.add_member(:points_of_interest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointsOfInterest, location_name: 'PointsOfInterest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CategoryDetails.type = Types::CategoryDetails
    CharacterOffsets.add_member(:begin_offset_char, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterOffset, location_name: 'BeginOffsetChar', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CharacterOffsets.add_member(:end_offset_char, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterOffset, location_name: 'EndOffsetChar', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CharacterOffsets.type = Types::CharacterOffsets
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    IssueDetected.add_member(:character_offsets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterOffsets, location_name: 'CharacterOffsets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IssueDetected.type = Types::IssueDetected
    IssuesDetected.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueDetected)
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'InstanceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: 'ContactId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRealtimeContactAnalysisSegmentsRequest.type = Types::ListRealtimeContactAnalysisSegmentsRequest
    ListRealtimeContactAnalysisSegmentsResponse.add_member(:segments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegments, location_name: 'Segments', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListRealtimeContactAnalysisSegmentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListRealtimeContactAnalysisSegmentsResponse.type = Types::ListRealtimeContactAnalysisSegmentsResponse
    MatchedCategories.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName)
    MatchedDetails.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName)
    MatchedDetails.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryDetails)
    PointOfInterest.add_member(:begin_offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'BeginOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PointOfInterest.add_member(:end_offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'EndOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PointOfInterest.type = Types::PointOfInterest
    PointsOfInterest.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PointOfInterest)
    PostContactSummary.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummaryContent, location_name: 'Content'))
    PostContactSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummaryStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PostContactSummary.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummaryFailureCode, location_name: 'FailureCode'))
    PostContactSummary.type = Types::PostContactSummary
    PostContactSummaryFailureCode.add_member(:quota_exceeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    PostContactSummaryFailureCode.add_member(:insufficient_conversation_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_CONVERSATION_CONTENT', traits: {"smithy.api#enumValue" => "INSUFFICIENT_CONVERSATION_CONTENT"}))
    PostContactSummaryFailureCode.add_member(:failed_safety_guidelines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_SAFETY_GUIDELINES', traits: {"smithy.api#enumValue" => "FAILED_SAFETY_GUIDELINES"}))
    PostContactSummaryFailureCode.add_member(:invalid_analysis_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ANALYSIS_CONFIGURATION', traits: {"smithy.api#enumValue" => "INVALID_ANALYSIS_CONFIGURATION"}))
    PostContactSummaryFailureCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    PostContactSummaryStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PostContactSummaryStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RealtimeContactAnalysisSegment.add_member(:transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Transcript, location_name: 'Transcript'))
    RealtimeContactAnalysisSegment.add_member(:categories, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Categories, location_name: 'Categories'))
    RealtimeContactAnalysisSegment.add_member(:post_contact_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummary, location_name: 'PostContactSummary'))
    RealtimeContactAnalysisSegment.type = Types::RealtimeContactAnalysisSegment
    RealtimeContactAnalysisSegments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegment)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SentimentValue.add_member(:positive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSITIVE', traits: {"smithy.api#enumValue" => "POSITIVE"}))
    SentimentValue.add_member(:neutral, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEUTRAL', traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    SentimentValue.add_member(:negative, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATIVE', traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Transcript.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptId, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Transcript.add_member(:participant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ParticipantId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Transcript.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Transcript.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptContent, location_name: 'Content', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Transcript.add_member(:begin_offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'BeginOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Transcript.add_member(:end_offset_millis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'EndOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Transcript.add_member(:sentiment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentValue, location_name: 'Sentiment'))
    Transcript.add_member(:issues_detected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssuesDetected, location_name: 'IssuesDetected'))
    Transcript.type = Types::Transcript

    AmazonConnectContactLens = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectcontactlens#AmazonConnectContactLens"
      service.name = "AmazonConnectContactLens"
      service.version = "2020-08-21"
      service.traits = {"aws.api#service" => {"sdkId" => "Connect Contact Lens", "arnNamespace" => "connect", "cloudFormationName" => "ConnectContactLens", "cloudTrailEventSource" => "connectcontactlens.amazonaws.com", "endpointPrefix" => "contact-lens"}, "aws.auth#sigv4" => {"name" => "connect"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Connect Contact Lens"}
      service.add_operation(:list_realtime_contact_analysis_segments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcontactlens#ListRealtimeContactAnalysisSegments"
        operation.name = "ListRealtimeContactAnalysisSegments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/realtime-contact-analysis/analysis-segments", "code" => 200}}
        operation[:paginator] = Paginators::ListRealtimeContactAnalysisSegments.new
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
