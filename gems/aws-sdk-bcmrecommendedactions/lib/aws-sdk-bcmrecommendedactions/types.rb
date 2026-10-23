# frozen_string_literal: true

# This is generated code!

module Aws::BCMRecommendedActions
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a filter that returns a more specific list of recommended actions.</p>
    # @!attribute key
    #   <p>The category to filter on. Valid values are <code>FEATURE</code> for feature type, <code>SEVERITY</code> for severity level, and <code>TYPE</code> for recommendation type.</p>
    #   @return [String]
    # @!attribute match_option
    #   <p>Specifies how to apply the filter. Use <code>EQUALS</code> to include matching results or <code>NOT_EQUALS</code> to exclude matching results.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more values to match against the specified key.</p>
    #   @return [Array<String>]
    class ActionFilter < Struct.new(
      nil,
      :key,
      :match_option,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during the processing of your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The criteria that you want all returned recommended actions to match.</p>
    #   @return [Types::RequestFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #   @return [String]
    class ListRecommendedActionsRequest < Struct.new(
      nil,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommended_actions
    #   <p>The list of recommended actions that satisfy the filter criteria.</p>
    #   @return [Array<Types::RecommendedAction>]
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #   @return [String]
    class ListRecommendedActionsResponse < Struct.new(
      nil,
      :recommended_actions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a specific recommended action.</p>
    # @!attribute id
    #   <p>The ID for the recommended action.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of action you can take by adopting the recommended action.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account that the recommended action is for.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity associated with the recommended action.</p>
    #   @return [String]
    # @!attribute feature
    #   <p>The feature associated with the recommended action.</p>
    #   @return [String]
    # @!attribute context
    #   <p>Context that applies to the recommended action.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_steps
    #   <p>The possible next steps to execute the recommended action.</p>
    #   @return [Array<String>]
    # @!attribute last_updated_time_stamp
    #   <p>The time when the recommended action status was last updated.</p>
    #   @return [String]
    class RecommendedAction < Struct.new(
      nil,
      :id,
      :type,
      :account_id,
      :severity,
      :feature,
      :context,
      :next_steps,
      :last_updated_time_stamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables filtering of results based on specified action criteria. You can define multiple action filters to refine results using combinations of feature type, severity level, and recommendation type.</p>
    # @!attribute actions
    #   <p>A list of action filters that define criteria for filtering results. Each filter specifies a key, match option, and corresponding values to filter on.</p>
    #   @return [Array<Types::ActionFilter>]
    class RequestFilter < Struct.new(
      nil,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Provides a single, overarching explanation for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>Lists each problematic field and why it failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides specific details about why a particular field failed validation.</p>
    # @!attribute name
    #   <p>Provides the name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Provides a message explaining why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
