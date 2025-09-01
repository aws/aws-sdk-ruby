# frozen_string_literal: true

# This is generated code!

module Aws::ConnectContactLens
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the category rules that are used to automatically categorize contacts based
    #             on uttered keywords and phrases.</p>
    # @!attribute matched_categories
    #   <p>The category rules that have been matched in the analyzed segment.</p>
    #   @return [Array<String>]
    # @!attribute matched_details
    #   <p>The category rule that was matched and when it occurred in the transcript.</p>
    #   @return [Hash<String, Types::CategoryDetails>]
    class Categories < Struct.new(
      :matched_categories,
      :matched_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the category rule that was matched.</p>
    # @!attribute points_of_interest
    #   <p>The section of audio where the category rule was detected.</p>
    #   @return [Array<Types::PointOfInterest>]
    class CategoryDetails < Struct.new(
      :points_of_interest,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>For characters that were detected as issues, where they occur in the
    #             transcript.</p>
    # @!attribute begin_offset_char
    #   <p>The beginning of the issue.</p>
    #   @return [Integer]
    # @!attribute end_offset_char
    #   <p>The end of the issue.</p>
    #   @return [Integer]
    class CharacterOffsets < Struct.new(
      :begin_offset_char,
      :end_offset_char,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Request processing failed due to an error or failure with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Potential issues that are detected based on an artificial intelligence analysis of
    #             each turn in the conversation.</p>
    # @!attribute character_offsets
    #   <p>The offset for when the issue was detected in the segment.</p>
    #   @return [Types::CharacterOffsets]
    class IssueDetected < Struct.new(
      :character_offsets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #   @return [String]
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous 
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListRealtimeContactAnalysisSegmentsRequest < Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute segments
    #   <p>An analyzed transcript or category.</p>
    #   @return [Array<Types::RealtimeContactAnalysisSegment>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results. If response includes <code>nextToken</code> there are two possible
    #               scenarios:</p>
    #            <ul>
    #               <li>
    #                  <p>There are more segments so another call is required to get them.</p>
    #               </li>
    #               <li>
    #                  <p>There are no more segments at this time, but more may be available later
    #                       (real-time analysis is in progress) so the client should call the operation
    #                       again to get new segments.</p>
    #               </li>
    #            </ul>
    #            <p>If response does not include <code>nextToken</code>, the analysis is completed
    #               (successfully or failed) and there are no more segments to retrieve.</p>
    #   @return [String]
    class ListRealtimeContactAnalysisSegmentsResponse < Struct.new(
      :segments,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The section of the contact audio where that category rule was detected.</p>
    # @!attribute begin_offset_millis
    #   <p>The beginning offset in milliseconds where the category rule was detected.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The ending offset in milliseconds where the category rule was detected.</p>
    #   @return [Integer]
    class PointOfInterest < Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the post-contact summary.</p>
    # @!attribute content
    #   <p>The content of the summary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Whether the summary was successfully COMPLETED or FAILED to be generated.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>If the summary failed to be generated, one of the following failure codes
    #               occurs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>QUOTA_EXCEEDED</code>: The number of concurrent analytics jobs reached
    #                       your service quota.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INSUFFICIENT_CONVERSATION_CONTENT</code>: The conversation needs to have
    #                       at least one turn from both the participants in order to generate the
    #                       summary.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED_SAFETY_GUIDELINES</code>: The generated summary cannot be
    #                       provided because it failed to meet system safety guidelines.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID_ANALYSIS_CONFIGURATION</code>: This code occurs when, for
    #                       example, you're using a 
    #                       <a href="https://docs.aws.amazon.com/connect/latest/adminguide/supported-languages.html#supported-languages-contact-lens">language</a> 
    #                        that isn't supported by generative AI-powered post-contact summaries.
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INTERNAL_ERROR</code>: Internal system error.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PostContactSummary < Struct.new(
      :content,
      :status,
      :failure_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PostContactSummaryFailureCode
      QUOTA_EXCEEDED = 'QUOTA_EXCEEDED'
      INSUFFICIENT_CONVERSATION_CONTENT = 'INSUFFICIENT_CONVERSATION_CONTENT'
      FAILED_SAFETY_GUIDELINES = 'FAILED_SAFETY_GUIDELINES'
      INVALID_ANALYSIS_CONFIGURATION = 'INVALID_ANALYSIS_CONFIGURATION'
      INTERNAL_ERROR = 'INTERNAL_ERROR'
    end

    module PostContactSummaryStatus
      FAILED = 'FAILED'
      COMPLETED = 'COMPLETED'
    end

    # <p>An analyzed segment for a real-time analysis session.</p>
    # @!attribute transcript
    #   <p>The analyzed transcript.</p>
    #   @return [Types::Transcript]
    # @!attribute categories
    #   <p>The matched category rules.</p>
    #   @return [Types::Categories]
    # @!attribute post_contact_summary
    #   <p>Information about the post-contact summary.</p>
    #   @return [Types::PostContactSummary]
    class RealtimeContactAnalysisSegment < Struct.new(
      :transcript,
      :categories,
      :post_contact_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SentimentValue
      POSITIVE = 'POSITIVE'
      NEUTRAL = 'NEUTRAL'
      NEGATIVE = 'NEGATIVE'
    end

    # <p>The throttling limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of messages in the session.</p>
    # @!attribute id
    #   <p>The identifier of the transcript.</p>
    #   @return [String]
    # @!attribute participant_id
    #   <p>The identifier of the participant. Valid values are CUSTOMER or AGENT.</p>
    #   @return [String]
    # @!attribute participant_role
    #   <p>The role of participant. For example, is it a customer, agent, or system.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the transcript.</p>
    #   @return [String]
    # @!attribute begin_offset_millis
    #   <p>The beginning offset in the contact for this transcript.</p>
    #   @return [Integer]
    # @!attribute end_offset_millis
    #   <p>The end offset in the contact for this transcript.</p>
    #   @return [Integer]
    # @!attribute sentiment
    #   <p>The sentiment detected for this piece of transcript.</p>
    #   @return [String]
    # @!attribute issues_detected
    #   <p>List of positions where issues were detected on the transcript.</p>
    #   @return [Array<Types::IssueDetected>]
    class Transcript < Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :content,
      :begin_offset_millis,
      :end_offset_millis,
      :sentiment,
      :issues_detected,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
