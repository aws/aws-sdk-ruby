# frozen_string_literal: true

# This is generated code!

module Aws::ConnectContactLens
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Categories = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#Categories', name: 'Categories')
    CategoryDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#CategoryDetails', name: 'CategoryDetails')
    CategoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#CategoryName', name: 'CategoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    CharacterOffset = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcontactlens#CharacterOffset', name: 'CharacterOffset', traits: {"smithy.api#range" => {"min" => 0}})
    CharacterOffsets = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#CharacterOffsets', name: 'CharacterOffsets')
    ContactId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#ContactId', name: 'ContactId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    InstanceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#InstanceId', name: 'InstanceId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    InternalServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueDetected = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#IssueDetected', name: 'IssueDetected')
    IssuesDetected = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#IssuesDetected', name: 'IssuesDetected', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    ListRealtimeContactAnalysisSegmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ListRealtimeContactAnalysisSegmentsRequest', name: 'ListRealtimeContactAnalysisSegmentsRequest')
    ListRealtimeContactAnalysisSegmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ListRealtimeContactAnalysisSegmentsResponse', name: 'ListRealtimeContactAnalysisSegmentsResponse')
    MatchedCategories = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#MatchedCategories', name: 'MatchedCategories', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    MatchedDetails = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectcontactlens#MatchedDetails', name: 'MatchedDetails', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcontactlens#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#Message', name: 'Message')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 131070}, "smithy.api#pattern" => "\\S"})
    OffsetMillis = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectcontactlens#OffsetMillis', name: 'OffsetMillis', traits: {"smithy.api#range" => {"min" => 0}})
    ParticipantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#ParticipantId', name: 'ParticipantId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    ParticipantRole = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#ParticipantRole', name: 'ParticipantRole', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})
    PointOfInterest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#PointOfInterest', name: 'PointOfInterest')
    PointsOfInterest = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#PointsOfInterest', name: 'PointsOfInterest', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    PostContactSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummary', name: 'PostContactSummary')
    PostContactSummaryContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummaryContent', name: 'PostContactSummaryContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 1762}})
    PostContactSummaryFailureCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummaryFailureCode', name: 'PostContactSummaryFailureCode')
    PostContactSummaryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectcontactlens#PostContactSummaryStatus', name: 'PostContactSummaryStatus')
    RealtimeContactAnalysisSegment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#RealtimeContactAnalysisSegment', name: 'RealtimeContactAnalysisSegment')
    RealtimeContactAnalysisSegments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectcontactlens#RealtimeContactAnalysisSegments', name: 'RealtimeContactAnalysisSegments', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SentimentValue = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectcontactlens#SentimentValue', name: 'SentimentValue')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Transcript = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectcontactlens#Transcript', name: 'Transcript')
    TranscriptContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#TranscriptContent', name: 'TranscriptContent', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "\\S"})
    TranscriptId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectcontactlens#TranscriptId', name: 'TranscriptId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "\\S"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Categories.add_member(:matched_categories, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedCategories, location_name: 'MatchedCategories', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The category rules that have been matched in the analyzed segment.</p>", "smithy.api#required" => {}}))
    Categories.add_member(:matched_details, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchedDetails, location_name: 'MatchedDetails', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The category rule that was matched and when it occurred in the transcript.</p>", "smithy.api#required" => {}}))
    Categories.type = Types::Categories
    CategoryDetails.add_member(:points_of_interest, Smithy::Schema::Shapes::ShapeRef.new(shape: PointsOfInterest, location_name: 'PointsOfInterest', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The section of audio where the category rule was detected.</p>", "smithy.api#required" => {}}))
    CategoryDetails.type = Types::CategoryDetails
    CharacterOffsets.add_member(:begin_offset_char, Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterOffset, location_name: 'BeginOffsetChar', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The beginning of the issue.</p>", "smithy.api#required" => {}}))
    CharacterOffsets.add_member(:end_offset_char, Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterOffset, location_name: 'EndOffsetChar', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The end of the issue.</p>", "smithy.api#required" => {}}))
    CharacterOffsets.type = Types::CharacterOffsets
    InternalServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    InvalidRequestException.type = Types::InvalidRequestException
    IssueDetected.add_member(:character_offsets, Smithy::Schema::Shapes::ShapeRef.new(shape: CharacterOffsets, location_name: 'CharacterOffsets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The offset for when the issue was detected in the segment.</p>", "smithy.api#required" => {}}))
    IssueDetected.type = Types::IssueDetected
    IssuesDetected.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IssueDetected)
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: 'InstanceId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the Amazon Connect instance.</p>", "smithy.api#required" => {}}))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: 'ContactId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the contact.</p>", "smithy.api#required" => {}}))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return per page.</p>"}))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token for the next set of results. Use the value returned in the previous \nresponse in the next request to retrieve the next set of results.</p>"}))
    ListRealtimeContactAnalysisSegmentsRequest.type = Types::ListRealtimeContactAnalysisSegmentsRequest
    ListRealtimeContactAnalysisSegmentsResponse.add_member(:segments, Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegments, location_name: 'Segments', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An analyzed transcript or category.</p>", "smithy.api#required" => {}}))
    ListRealtimeContactAnalysisSegmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are additional results, this is the token for the next set of results. If response includes <code>nextToken</code> there are two possible\n            scenarios:</p>\n         <ul>\n            <li>\n               <p>There are more segments so another call is required to get them.</p>\n            </li>\n            <li>\n               <p>There are no more segments at this time, but more may be available later\n                    (real-time analysis is in progress) so the client should call the operation\n                    again to get new segments.</p>\n            </li>\n         </ul>\n         <p>If response does not include <code>nextToken</code>, the analysis is completed\n            (successfully or failed) and there are no more segments to retrieve.</p>"}))
    ListRealtimeContactAnalysisSegmentsResponse.type = Types::ListRealtimeContactAnalysisSegmentsResponse
    MatchedCategories.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName)
    MatchedDetails.key = Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryName)
    MatchedDetails.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CategoryDetails)
    PointOfInterest.add_member(:begin_offset_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'BeginOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The beginning offset in milliseconds where the category rule was detected.</p>", "smithy.api#required" => {}}))
    PointOfInterest.add_member(:end_offset_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'EndOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ending offset in milliseconds where the category rule was detected.</p>", "smithy.api#required" => {}}))
    PointOfInterest.type = Types::PointOfInterest
    PointsOfInterest.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PointOfInterest)
    PostContactSummary.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummaryContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the summary.</p>"}))
    PostContactSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummaryStatus, location_name: 'Status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Whether the summary was successfully COMPLETED or FAILED to be generated.</p>", "smithy.api#required" => {}}))
    PostContactSummary.add_member(:failure_code, Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummaryFailureCode, location_name: 'FailureCode', traits: {"smithy.api#documentation" => "<p>If the summary failed to be generated, one of the following failure codes\n            occurs:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>QUOTA_EXCEEDED</code>: The number of concurrent analytics jobs reached\n                    your service quota.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INSUFFICIENT_CONVERSATION_CONTENT</code>: The conversation needs to have\n                    at least one turn from both the participants in order to generate the\n                    summary.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED_SAFETY_GUIDELINES</code>: The generated summary cannot be\n                    provided because it failed to meet system safety guidelines.</p>\n            </li>\n            <li>\n               <p>\n                  <code>INVALID_ANALYSIS_CONFIGURATION</code>: This code occurs when, for\n                    example, you're using a \n                    <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#supported-languages-contact-lens\">language</a> \n                     that isn't supported by generative AI-powered post-contact summaries.\n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>INTERNAL_ERROR</code>: Internal system error.</p>\n            </li>\n         </ul>"}))
    PostContactSummary.type = Types::PostContactSummary
    PostContactSummaryFailureCode.add_member(:quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "QUOTA_EXCEEDED"}))
    PostContactSummaryFailureCode.add_member(:insufficient_conversation_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSUFFICIENT_CONVERSATION_CONTENT', traits: {"smithy.api#enumValue" => "INSUFFICIENT_CONVERSATION_CONTENT"}))
    PostContactSummaryFailureCode.add_member(:failed_safety_guidelines, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_SAFETY_GUIDELINES', traits: {"smithy.api#enumValue" => "FAILED_SAFETY_GUIDELINES"}))
    PostContactSummaryFailureCode.add_member(:invalid_analysis_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_ANALYSIS_CONFIGURATION', traits: {"smithy.api#enumValue" => "INVALID_ANALYSIS_CONFIGURATION"}))
    PostContactSummaryFailureCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    PostContactSummaryStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    PostContactSummaryStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    RealtimeContactAnalysisSegment.add_member(:transcript, Smithy::Schema::Shapes::ShapeRef.new(shape: Transcript, location_name: 'Transcript', traits: {"smithy.api#documentation" => "<p>The analyzed transcript.</p>"}))
    RealtimeContactAnalysisSegment.add_member(:categories, Smithy::Schema::Shapes::ShapeRef.new(shape: Categories, location_name: 'Categories', traits: {"smithy.api#documentation" => "<p>The matched category rules.</p>"}))
    RealtimeContactAnalysisSegment.add_member(:post_contact_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: PostContactSummary, location_name: 'PostContactSummary', traits: {"smithy.api#documentation" => "<p>Information about the post-contact summary.</p>"}))
    RealtimeContactAnalysisSegment.type = Types::RealtimeContactAnalysisSegment
    RealtimeContactAnalysisSegments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegment)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SentimentValue.add_member(:positive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POSITIVE', traits: {"smithy.api#enumValue" => "POSITIVE"}))
    SentimentValue.add_member(:neutral, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEUTRAL', traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    SentimentValue.add_member(:negative, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEGATIVE', traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Transcript.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptId, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the transcript.</p>", "smithy.api#required" => {}}))
    Transcript.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ParticipantId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the participant. Valid values are CUSTOMER or AGENT.</p>", "smithy.api#required" => {}}))
    Transcript.add_member(:participant_role, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The role of participant. For example, is it a customer, agent, or system.</p>", "smithy.api#required" => {}}))
    Transcript.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptContent, location_name: 'Content', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The content of the transcript.</p>", "smithy.api#required" => {}}))
    Transcript.add_member(:begin_offset_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'BeginOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The beginning offset in the contact for this transcript.</p>", "smithy.api#required" => {}}))
    Transcript.add_member(:end_offset_millis, Smithy::Schema::Shapes::ShapeRef.new(shape: OffsetMillis, location_name: 'EndOffsetMillis', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The end offset in the contact for this transcript.</p>", "smithy.api#required" => {}}))
    Transcript.add_member(:sentiment, Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentValue, location_name: 'Sentiment', traits: {"smithy.api#documentation" => "<p>The sentiment detected for this piece of transcript.</p>"}))
    Transcript.add_member(:issues_detected, Smithy::Schema::Shapes::ShapeRef.new(shape: IssuesDetected, location_name: 'IssuesDetected', traits: {"smithy.api#documentation" => "<p>List of positions where issues were detected on the transcript.</p>"}))
    Transcript.type = Types::Transcript

    AmazonConnectContactLens = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectcontactlens#AmazonConnectContactLens"
      service.name = "AmazonConnectContactLens"
      service.version = "2020-08-21"
      service.traits = {"aws.api#service" => {"sdkId" => "Connect Contact Lens", "arnNamespace" => "connect", "cloudFormationName" => "ConnectContactLens", "cloudTrailEventSource" => "connectcontactlens.amazonaws.com", "endpointPrefix" => "contact-lens"}, "aws.auth#sigv4" => {"name" => "connect"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Connect Contact Lens"}
      service.add_operation(:list_realtime_contact_analysis_segments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectcontactlens#ListRealtimeContactAnalysisSegments"
        operation.name = "ListRealtimeContactAnalysisSegments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/realtime-contact-analysis/analysis-segments", "code" => 200}}
        operation[:paginator] = Paginators::ListRealtimeContactAnalysisSegments.new
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
