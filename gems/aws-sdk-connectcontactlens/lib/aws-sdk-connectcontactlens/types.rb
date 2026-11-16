# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectContactLens
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the category rules that are used to automatically categorize
    # contacts based on uttered keywords and phrases.
    #
    # @!attribute [rw] matched_categories
    #   The category rules that have been matched in the analyzed segment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] matched_details
    #   The category rule that was matched and when it occurred in the
    #   transcript.
    #   @return [Hash<String,Types::CategoryDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/Categories AWS API Documentation
    #
    class Categories < Struct.new(
      :matched_categories,
      :matched_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of tag conditions that the filter evaluates together using AND
    # logic. A category segment matches only when the tags on its rule
    # satisfy every tag condition in the list.
    #
    # @!attribute [rw] tag_conditions
    #   A list of tag conditions. All of the tag conditions must be met for
    #   the condition to match.
    #   @return [Array<Types::TagCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/CategoriesAttributeAndCondition AWS API Documentation
    #
    class CategoriesAttributeAndCondition < Struct.new(
      :tag_conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that matches category segments based on the tags assigned to
    # the rules that create the categories. Provide exactly one of
    # `OrConditions`, `AndCondition`, or `TagCondition`.
    #
    # @!attribute [rw] or_conditions
    #   A list of conditions that the filter evaluates using OR logic. A
    #   category segment matches when at least one of the conditions in the
    #   list is met.
    #   @return [Array<Types::CategoriesAttributeAndCondition>]
    #
    # @!attribute [rw] and_condition
    #   A condition that the filter evaluates using AND logic. A category
    #   segment matches only when all of the tag conditions in the condition
    #   are met.
    #   @return [Types::CategoriesAttributeAndCondition]
    #
    # @!attribute [rw] tag_condition
    #   A single tag condition that a category segment must match. The
    #   category's rule must have the specified tag.
    #   @return [Types::TagCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/CategoriesAttributeFilter AWS API Documentation
    #
    class CategoriesAttributeFilter < Struct.new(
      :or_conditions,
      :and_condition,
      :tag_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the category rule that was matched.
    #
    # @!attribute [rw] points_of_interest
    #   The section of audio where the category rule was detected.
    #   @return [Array<Types::PointOfInterest>]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the rule that created the matched category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/CategoryDetails AWS API Documentation
    #
    class CategoryDetails < Struct.new(
      :points_of_interest,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # For characters that were detected as issues, where they occur in the
    # transcript.
    #
    # @!attribute [rw] begin_offset_char
    #   The beginning of the issue.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_char
    #   The end of the issue.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/CharacterOffsets AWS API Documentation
    #
    class CharacterOffsets < Struct.new(
      :begin_offset_char,
      :end_offset_char)
      SENSITIVE = []
      include Aws::Structure
    end

    # Segment containing information extracted from the conversation. Each
    # segment represents the results for a single extraction definition.
    #
    # @!attribute [rw] extraction_definition_id
    #   The identifier of the extraction definition that produced this
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] extraction_definition_name
    #   The name of the extraction definition that produced this result.
    #   @return [String]
    #
    # @!attribute [rw] extraction_definition_display_label
    #   The display label of the extraction definition that produced this
    #   result.
    #   @return [String]
    #
    # @!attribute [rw] extracted_values
    #   The list of values extracted from the conversation for this
    #   extraction definition. This field is empty when a `FailureCode` is
    #   present.
    #   @return [Array<Types::ExtractedInformationValue>]
    #
    # @!attribute [rw] failure_code
    #   If the information failed to be extracted, one of the following
    #   failure codes occurs:
    #
    #   * `QUOTA_EXCEEDED`: The number of concurrent analytics jobs reached
    #     your service quota.
    #
    #   * `INSUFFICIENT_CONVERSATION_CONTENT`: Information extraction
    #     requires a conversation with at least one turn from each
    #     participant.
    #
    #   * `FAILED_SAFETY_GUIDELINES`: The extracted information cannot be
    #     provided because it failed to meet system safety guidelines.
    #
    #   * `INTERNAL_ERROR`: Internal system error.
    #
    #   * `MAX_PACKAGE_FEATURE_ONLY`: Information extraction is only
    #     available in Amazon Connect Customer instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ExtractedInformation AWS API Documentation
    #
    class ExtractedInformation < Struct.new(
      :extraction_definition_id,
      :extraction_definition_name,
      :extraction_definition_display_label,
      :extracted_values,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # An individual value extracted from the conversation, including its
    # content and the locations where it was found.
    #
    # @!attribute [rw] content
    #   The text content of the extracted value.
    #   @return [String]
    #
    # @!attribute [rw] points_of_interest
    #   The sections in the conversation that indicate where the extracted
    #   value was found.
    #   @return [Array<Types::PointOfInterest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ExtractedInformationValue AWS API Documentation
    #
    class ExtractedInformationValue < Struct.new(
      :content,
      :points_of_interest)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request processing failed due to an error or failure with the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Potential issues that are detected based on an artificial intelligence
    # analysis of each turn in the conversation.
    #
    # @!attribute [rw] character_offsets
    #   The offset for when the issue was detected in the segment.
    #   @return [Types::CharacterOffsets]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/IssueDetected AWS API Documentation
    #
    class IssueDetected < Struct.new(
      :character_offsets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The identifier of the Amazon Connect instance.
    #   @return [String]
    #
    # @!attribute [rw] contact_id
    #   The identifier of the contact.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] list_filter
    #   A filter that limits the category segments returned by the
    #   operation. When provided, use `CategoriesAttributeFilter` to return
    #   only the category segments whose rules have tags that match the
    #   filter. This enforces tag-based access control on the categories
    #   that the caller can view.
    #   @return [Types::RealTimeContactAnalysisSegmentsFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ListRealtimeContactAnalysisSegmentsRequest AWS API Documentation
    #
    class ListRealtimeContactAnalysisSegmentsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token,
      :list_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] segments
    #   An analyzed transcript or category.
    #   @return [Array<Types::RealtimeContactAnalysisSegment>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results. If response includes `nextToken` there are two possible
    #   scenarios:
    #
    #   * There are more segments so another call is required to get them.
    #
    #   * There are no more segments at this time, but more may be available
    #     later (real-time analysis is in progress) so the client should
    #     call the operation again to get new segments.
    #
    #   If response does not include `nextToken`, the analysis is completed
    #   (successfully or failed) and there are no more segments to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ListRealtimeContactAnalysisSegmentsResponse AWS API Documentation
    #
    class ListRealtimeContactAnalysisSegmentsResponse < Struct.new(
      :segments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The section of the contact audio where a match was detected.
    #
    # @!attribute [rw] begin_offset_millis
    #   The beginning offset (in milliseconds) where the match was detected.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The ending offset (in milliseconds) where the match was detected.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/PointOfInterest AWS API Documentation
    #
    class PointOfInterest < Struct.new(
      :begin_offset_millis,
      :end_offset_millis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the post-contact summary.
    #
    # @!attribute [rw] content
    #   The content of the summary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Whether the summary was successfully COMPLETED or FAILED to be
    #   generated.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   If the summary failed to be generated, one of the following failure
    #   codes occurs:
    #
    #   * `QUOTA_EXCEEDED`: The number of concurrent analytics jobs reached
    #     your service quota.
    #
    #   * `INSUFFICIENT_CONVERSATION_CONTENT`: The conversation needs to
    #     have at least one turn from both the participants in order to
    #     generate the summary.
    #
    #   * `FAILED_SAFETY_GUIDELINES`: The generated summary cannot be
    #     provided because it failed to meet system safety guidelines.
    #
    #   * `INVALID_ANALYSIS_CONFIGURATION`: This code occurs when, for
    #     example, you're using a [language][1] that isn't supported by
    #     generative AI-powered post-contact summaries.
    #
    #   * `INTERNAL_ERROR`: Internal system error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#supported-languages-contact-lens
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/PostContactSummary AWS API Documentation
    #
    class PostContactSummary < Struct.new(
      :content,
      :status,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that restricts the segments returned by
    # `ListRealtimeContactAnalysisSegments`. It supports filtering category
    # segments by the tags on the rules that create them, which enforces
    # tag-based access control on the categories a caller can view.
    #
    # @!attribute [rw] categories_attribute_filter
    #   A filter applied to category segments based on the tags of the rules
    #   that create the matched categories.
    #   @return [Types::CategoriesAttributeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/RealTimeContactAnalysisSegmentsFilter AWS API Documentation
    #
    class RealTimeContactAnalysisSegmentsFilter < Struct.new(
      :categories_attribute_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # An analyzed segment for a real-time analysis session.
    #
    # @!attribute [rw] transcript
    #   The analyzed transcript.
    #   @return [Types::Transcript]
    #
    # @!attribute [rw] categories
    #   The matched category rules.
    #   @return [Types::Categories]
    #
    # @!attribute [rw] post_contact_summary
    #   Information about the post-contact summary.
    #   @return [Types::PostContactSummary]
    #
    # @!attribute [rw] extracted_information
    #   The extracted information from the conversation.
    #   @return [Types::ExtractedInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/RealtimeContactAnalysisSegment AWS API Documentation
    #
    class RealtimeContactAnalysisSegment < Struct.new(
      :transcript,
      :categories,
      :post_contact_summary,
      :extracted_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag condition that consists of a tag key, a tag value, and a
    # comparison operator.
    #
    # @!attribute [rw] tag_key
    #   The tag key in the tag condition.
    #   @return [String]
    #
    # @!attribute [rw] tag_value
    #   The tag value in the tag condition.
    #   @return [String]
    #
    # @!attribute [rw] comparison_type
    #   The comparison operator for the tag condition. Valid values:
    #   `EQUALS` \| `NOT_EQUALS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/TagCondition AWS API Documentation
    #
    class TagCondition < Struct.new(
      :tag_key,
      :tag_value,
      :comparison_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The throttling limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of messages in the session.
    #
    # @!attribute [rw] id
    #   The identifier of the transcript.
    #   @return [String]
    #
    # @!attribute [rw] participant_id
    #   The identifier of the participant. Valid values are CUSTOMER or
    #   AGENT.
    #   @return [String]
    #
    # @!attribute [rw] participant_role
    #   The role of participant. For example, is it a customer, agent, or
    #   system.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the transcript.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset_millis
    #   The beginning offset in the contact for this transcript.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The end offset in the contact for this transcript.
    #   @return [Integer]
    #
    # @!attribute [rw] sentiment
    #   The sentiment detected for this piece of transcript.
    #   @return [String]
    #
    # @!attribute [rw] issues_detected
    #   List of positions where issues were detected on the transcript.
    #   @return [Array<Types::IssueDetected>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/Transcript AWS API Documentation
    #
    class Transcript < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :content,
      :begin_offset_millis,
      :end_offset_millis,
      :sentiment,
      :issues_detected)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

