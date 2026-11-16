# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectContactLens
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Categories = Shapes::StructureShape.new(name: 'Categories')
    CategoriesAttributeAndCondition = Shapes::StructureShape.new(name: 'CategoriesAttributeAndCondition')
    CategoriesAttributeFilter = Shapes::StructureShape.new(name: 'CategoriesAttributeFilter')
    CategoriesAttributeOrConditionList = Shapes::ListShape.new(name: 'CategoriesAttributeOrConditionList')
    CategoryDetails = Shapes::StructureShape.new(name: 'CategoryDetails')
    CategoryName = Shapes::StringShape.new(name: 'CategoryName')
    CharacterOffset = Shapes::IntegerShape.new(name: 'CharacterOffset')
    CharacterOffsets = Shapes::StructureShape.new(name: 'CharacterOffsets')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    ExtractedInformation = Shapes::StructureShape.new(name: 'ExtractedInformation')
    ExtractedInformationContent = Shapes::StringShape.new(name: 'ExtractedInformationContent')
    ExtractedInformationFailureCode = Shapes::StringShape.new(name: 'ExtractedInformationFailureCode')
    ExtractedInformationValue = Shapes::StructureShape.new(name: 'ExtractedInformationValue')
    ExtractedInformationValues = Shapes::ListShape.new(name: 'ExtractedInformationValues')
    ExtractionDefinitionDisplayLabel = Shapes::StringShape.new(name: 'ExtractionDefinitionDisplayLabel')
    ExtractionDefinitionId = Shapes::StringShape.new(name: 'ExtractionDefinitionId')
    ExtractionDefinitionName = Shapes::StringShape.new(name: 'ExtractionDefinitionName')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IssueDetected = Shapes::StructureShape.new(name: 'IssueDetected')
    IssuesDetected = Shapes::ListShape.new(name: 'IssuesDetected')
    ListRealtimeContactAnalysisSegmentsRequest = Shapes::StructureShape.new(name: 'ListRealtimeContactAnalysisSegmentsRequest')
    ListRealtimeContactAnalysisSegmentsResponse = Shapes::StructureShape.new(name: 'ListRealtimeContactAnalysisSegmentsResponse')
    MatchedCategories = Shapes::ListShape.new(name: 'MatchedCategories')
    MatchedDetails = Shapes::MapShape.new(name: 'MatchedDetails')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OffsetMillis = Shapes::IntegerShape.new(name: 'OffsetMillis')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    PointOfInterest = Shapes::StructureShape.new(name: 'PointOfInterest')
    PointsOfInterest = Shapes::ListShape.new(name: 'PointsOfInterest')
    PostContactSummary = Shapes::StructureShape.new(name: 'PostContactSummary')
    PostContactSummaryContent = Shapes::StringShape.new(name: 'PostContactSummaryContent')
    PostContactSummaryFailureCode = Shapes::StringShape.new(name: 'PostContactSummaryFailureCode')
    PostContactSummaryStatus = Shapes::StringShape.new(name: 'PostContactSummaryStatus')
    RealTimeContactAnalysisSegmentsFilter = Shapes::StructureShape.new(name: 'RealTimeContactAnalysisSegmentsFilter')
    RealtimeContactAnalysisSegment = Shapes::StructureShape.new(name: 'RealtimeContactAnalysisSegment')
    RealtimeContactAnalysisSegments = Shapes::ListShape.new(name: 'RealtimeContactAnalysisSegments')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuleId = Shapes::StringShape.new(name: 'RuleId')
    SentimentValue = Shapes::StringShape.new(name: 'SentimentValue')
    TagAndConditionList = Shapes::ListShape.new(name: 'TagAndConditionList')
    TagComparisonType = Shapes::StringShape.new(name: 'TagComparisonType')
    TagCondition = Shapes::StructureShape.new(name: 'TagCondition')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptContent = Shapes::StringShape.new(name: 'TranscriptContent')
    TranscriptId = Shapes::StringShape.new(name: 'TranscriptId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Categories.add_member(:matched_categories, Shapes::ShapeRef.new(shape: MatchedCategories, required: true, location_name: "MatchedCategories"))
    Categories.add_member(:matched_details, Shapes::ShapeRef.new(shape: MatchedDetails, required: true, location_name: "MatchedDetails"))
    Categories.struct_class = Types::Categories

    CategoriesAttributeAndCondition.add_member(:tag_conditions, Shapes::ShapeRef.new(shape: TagAndConditionList, location_name: "TagConditions"))
    CategoriesAttributeAndCondition.struct_class = Types::CategoriesAttributeAndCondition

    CategoriesAttributeFilter.add_member(:or_conditions, Shapes::ShapeRef.new(shape: CategoriesAttributeOrConditionList, location_name: "OrConditions"))
    CategoriesAttributeFilter.add_member(:and_condition, Shapes::ShapeRef.new(shape: CategoriesAttributeAndCondition, location_name: "AndCondition"))
    CategoriesAttributeFilter.add_member(:tag_condition, Shapes::ShapeRef.new(shape: TagCondition, location_name: "TagCondition"))
    CategoriesAttributeFilter.struct_class = Types::CategoriesAttributeFilter

    CategoriesAttributeOrConditionList.member = Shapes::ShapeRef.new(shape: CategoriesAttributeAndCondition)

    CategoryDetails.add_member(:points_of_interest, Shapes::ShapeRef.new(shape: PointsOfInterest, required: true, location_name: "PointsOfInterest"))
    CategoryDetails.add_member(:rule_id, Shapes::ShapeRef.new(shape: RuleId, location_name: "RuleId"))
    CategoryDetails.struct_class = Types::CategoryDetails

    CharacterOffsets.add_member(:begin_offset_char, Shapes::ShapeRef.new(shape: CharacterOffset, required: true, location_name: "BeginOffsetChar"))
    CharacterOffsets.add_member(:end_offset_char, Shapes::ShapeRef.new(shape: CharacterOffset, required: true, location_name: "EndOffsetChar"))
    CharacterOffsets.struct_class = Types::CharacterOffsets

    ExtractedInformation.add_member(:extraction_definition_id, Shapes::ShapeRef.new(shape: ExtractionDefinitionId, required: true, location_name: "ExtractionDefinitionId"))
    ExtractedInformation.add_member(:extraction_definition_name, Shapes::ShapeRef.new(shape: ExtractionDefinitionName, required: true, location_name: "ExtractionDefinitionName"))
    ExtractedInformation.add_member(:extraction_definition_display_label, Shapes::ShapeRef.new(shape: ExtractionDefinitionDisplayLabel, location_name: "ExtractionDefinitionDisplayLabel"))
    ExtractedInformation.add_member(:extracted_values, Shapes::ShapeRef.new(shape: ExtractedInformationValues, location_name: "ExtractedValues"))
    ExtractedInformation.add_member(:failure_code, Shapes::ShapeRef.new(shape: ExtractedInformationFailureCode, location_name: "FailureCode"))
    ExtractedInformation.struct_class = Types::ExtractedInformation

    ExtractedInformationValue.add_member(:content, Shapes::ShapeRef.new(shape: ExtractedInformationContent, required: true, location_name: "Content"))
    ExtractedInformationValue.add_member(:points_of_interest, Shapes::ShapeRef.new(shape: PointsOfInterest, required: true, location_name: "PointsOfInterest"))
    ExtractedInformationValue.struct_class = Types::ExtractedInformationValue

    ExtractedInformationValues.member = Shapes::ShapeRef.new(shape: ExtractedInformationValue)

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    IssueDetected.add_member(:character_offsets, Shapes::ShapeRef.new(shape: CharacterOffsets, required: true, location_name: "CharacterOffsets"))
    IssueDetected.struct_class = Types::IssueDetected

    IssuesDetected.member = Shapes::ShapeRef.new(shape: IssueDetected)

    ListRealtimeContactAnalysisSegmentsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, required: true, location_name: "ContactId"))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRealtimeContactAnalysisSegmentsRequest.add_member(:list_filter, Shapes::ShapeRef.new(shape: RealTimeContactAnalysisSegmentsFilter, location_name: "ListFilter"))
    ListRealtimeContactAnalysisSegmentsRequest.struct_class = Types::ListRealtimeContactAnalysisSegmentsRequest

    ListRealtimeContactAnalysisSegmentsResponse.add_member(:segments, Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegments, required: true, location_name: "Segments"))
    ListRealtimeContactAnalysisSegmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRealtimeContactAnalysisSegmentsResponse.struct_class = Types::ListRealtimeContactAnalysisSegmentsResponse

    MatchedCategories.member = Shapes::ShapeRef.new(shape: CategoryName)

    MatchedDetails.key = Shapes::ShapeRef.new(shape: CategoryName)
    MatchedDetails.value = Shapes::ShapeRef.new(shape: CategoryDetails)

    PointOfInterest.add_member(:begin_offset_millis, Shapes::ShapeRef.new(shape: OffsetMillis, required: true, location_name: "BeginOffsetMillis"))
    PointOfInterest.add_member(:end_offset_millis, Shapes::ShapeRef.new(shape: OffsetMillis, required: true, location_name: "EndOffsetMillis"))
    PointOfInterest.struct_class = Types::PointOfInterest

    PointsOfInterest.member = Shapes::ShapeRef.new(shape: PointOfInterest)

    PostContactSummary.add_member(:content, Shapes::ShapeRef.new(shape: PostContactSummaryContent, location_name: "Content"))
    PostContactSummary.add_member(:status, Shapes::ShapeRef.new(shape: PostContactSummaryStatus, required: true, location_name: "Status"))
    PostContactSummary.add_member(:failure_code, Shapes::ShapeRef.new(shape: PostContactSummaryFailureCode, location_name: "FailureCode"))
    PostContactSummary.struct_class = Types::PostContactSummary

    RealTimeContactAnalysisSegmentsFilter.add_member(:categories_attribute_filter, Shapes::ShapeRef.new(shape: CategoriesAttributeFilter, location_name: "CategoriesAttributeFilter"))
    RealTimeContactAnalysisSegmentsFilter.struct_class = Types::RealTimeContactAnalysisSegmentsFilter

    RealtimeContactAnalysisSegment.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    RealtimeContactAnalysisSegment.add_member(:categories, Shapes::ShapeRef.new(shape: Categories, location_name: "Categories"))
    RealtimeContactAnalysisSegment.add_member(:post_contact_summary, Shapes::ShapeRef.new(shape: PostContactSummary, location_name: "PostContactSummary"))
    RealtimeContactAnalysisSegment.add_member(:extracted_information, Shapes::ShapeRef.new(shape: ExtractedInformation, location_name: "ExtractedInformation"))
    RealtimeContactAnalysisSegment.struct_class = Types::RealtimeContactAnalysisSegment

    RealtimeContactAnalysisSegments.member = Shapes::ShapeRef.new(shape: RealtimeContactAnalysisSegment)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TagAndConditionList.member = Shapes::ShapeRef.new(shape: TagCondition)

    TagCondition.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    TagCondition.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "TagValue"))
    TagCondition.add_member(:comparison_type, Shapes::ShapeRef.new(shape: TagComparisonType, location_name: "ComparisonType"))
    TagCondition.struct_class = Types::TagCondition

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Transcript.add_member(:id, Shapes::ShapeRef.new(shape: TranscriptId, required: true, location_name: "Id"))
    Transcript.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "ParticipantId"))
    Transcript.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, required: true, location_name: "ParticipantRole"))
    Transcript.add_member(:content, Shapes::ShapeRef.new(shape: TranscriptContent, required: true, location_name: "Content"))
    Transcript.add_member(:begin_offset_millis, Shapes::ShapeRef.new(shape: OffsetMillis, required: true, location_name: "BeginOffsetMillis"))
    Transcript.add_member(:end_offset_millis, Shapes::ShapeRef.new(shape: OffsetMillis, required: true, location_name: "EndOffsetMillis"))
    Transcript.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentValue, location_name: "Sentiment"))
    Transcript.add_member(:issues_detected, Shapes::ShapeRef.new(shape: IssuesDetected, location_name: "IssuesDetected"))
    Transcript.struct_class = Types::Transcript


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-21"

      api.metadata = {
        "apiVersion" => "2020-08-21",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "contact-lens",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Amazon Connect Contact Lens",
        "serviceFullName" => "Amazon Connect Contact Lens",
        "serviceId" => "Connect Contact Lens",
        "signatureVersion" => "v4",
        "signingName" => "connect",
        "uid" => "connect-contact-lens-2020-08-21",
      }

      api.add_operation(:list_realtime_contact_analysis_segments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRealtimeContactAnalysisSegments"
        o.http_method = "POST"
        o.http_request_uri = "/realtime-contact-analysis/analysis-segments"
        o.input = Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRealtimeContactAnalysisSegmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
