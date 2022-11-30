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

    # Provides information about the category rule that was matched.
    #
    # @!attribute [rw] points_of_interest
    #   The section of audio where the category rule was detected.
    #   @return [Array<Types::PointOfInterest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/CategoryDetails AWS API Documentation
    #
    class CategoryDetails < Struct.new(
      :points_of_interest)
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
    #   The maximimum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/ListRealtimeContactAnalysisSegmentsRequest AWS API Documentation
    #
    class ListRealtimeContactAnalysisSegmentsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token)
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

    # The section of the contact audio where that category rule was
    # detected.
    #
    # @!attribute [rw] begin_offset_millis
    #   The beginning offset in milliseconds where the category rule was
    #   detected.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset_millis
    #   The ending offset in milliseconds where the category rule was
    #   detected.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-contact-lens-2020-08-21/RealtimeContactAnalysisSegment AWS API Documentation
    #
    class RealtimeContactAnalysisSegment < Struct.new(
      :transcript,
      :categories)
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
    #   The identifier of the participant.
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
    #   The sentiment of the detected for this piece of transcript.
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
