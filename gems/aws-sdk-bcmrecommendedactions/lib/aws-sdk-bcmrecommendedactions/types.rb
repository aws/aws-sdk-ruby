# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BCMRecommendedActions
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a filter that returns a more specific list of recommended
    # actions.
    #
    # @!attribute [rw] key
    #   The category to filter on. Valid values are `FEATURE` for feature
    #   type, `SEVERITY` for severity level, and `TYPE` for recommendation
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] match_option
    #   Specifies how to apply the filter. Use `EQUALS` to include matching
    #   results or `NOT_EQUALS` to exclude matching results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more values to match against the specified key.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/ActionFilter AWS API Documentation
    #
    class ActionFilter < Struct.new(
      :key,
      :match_option,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The criteria that you want all returned recommended actions to
    #   match.
    #   @return [Types::RequestFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/ListRecommendedActionsRequest AWS API Documentation
    #
    class ListRecommendedActionsRequest < Struct.new(
      :filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommended_actions
    #   The list of recommended actions that satisfy the filter criteria.
    #   @return [Array<Types::RecommendedAction>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that indicates the next set of results that you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/ListRecommendedActionsResponse AWS API Documentation
    #
    class ListRecommendedActionsResponse < Struct.new(
      :recommended_actions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a specific recommended action.
    #
    # @!attribute [rw] id
    #   The ID for the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of action you can take by adopting the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account that the recommended action is for.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity associated with the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] feature
    #   The feature associated with the recommended action.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Context that applies to the recommended action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_steps
    #   The possible next steps to execute the recommended action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time when the recommended action status was last updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/RecommendedAction AWS API Documentation
    #
    class RecommendedAction < Struct.new(
      :id,
      :type,
      :account_id,
      :severity,
      :feature,
      :context,
      :next_steps,
      :last_updated_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables filtering of results based on specified action criteria. You
    # can define multiple action filters to refine results using
    # combinations of feature type, severity level, and recommendation type.
    #
    # @!attribute [rw] actions
    #   A list of action filters that define criteria for filtering results.
    #   Each filter specifies a key, match option, and corresponding values
    #   to filter on.
    #   @return [Array<Types::ActionFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/RequestFilter AWS API Documentation
    #
    class RequestFilter < Struct.new(
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Provides a single, overarching explanation for the validation
    #   failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   Lists each problematic field and why it failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides specific details about why a particular field failed
    # validation.
    #
    # @!attribute [rw] name
    #   Provides the name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Provides a message explaining why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-recommended-actions-2024-11-14/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

