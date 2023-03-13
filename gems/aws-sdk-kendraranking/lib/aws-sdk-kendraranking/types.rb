# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KendraRanking
  module Types

    # You don’t have sufficient access to perform this action. Please ensure
    # you have the required permission policies and user accounts and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets additional capacity units configured for your rescore execution
    # plan. A rescore execution plan is an Amazon Kendra Intelligent Ranking
    # resource used for provisioning the `Rescore` API. You can add and
    # remove capacity units to fit your usage requirements.
    #
    # @!attribute [rw] rescore_capacity_units
    #   The amount of extra capacity for your rescore execution plan.
    #
    #   A single extra capacity unit for a rescore execution plan provides
    #   0.01 rescore requests per second. You can add up to 1000 extra
    #   capacity units.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/CapacityUnitsConfiguration AWS API Documentation
    #
    class CapacityUnitsConfiguration < Struct.new(
      :rescore_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict occurred with the request. Please fix any inconsistencies
    # with your resources and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] capacity_units
    #   You can set additional capacity units to meet the needs of your
    #   rescore execution plan. You are given a single capacity unit by
    #   default. If you want to use the default capacity, you don't set
    #   additional capacity units. For more information on the default
    #   capacity and additional capacity units, see [Adjusting capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize your rescore
    #   execution plan. You can also use tags to help control access to the
    #   rescore execution plan. Tag keys and values can consist of Unicode
    #   letters, digits, white space, and any of the following symbols: \_ .
    #   \: / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create a rescore
    #   execution plan. Multiple calls to the
    #   `CreateRescoreExecutionPlanRequest` API with the same client token
    #   will create only one rescore execution plan.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/CreateRescoreExecutionPlanRequest AWS API Documentation
    #
    class CreateRescoreExecutionPlanRequest < Struct.new(
      :name,
      :description,
      :capacity_units,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/CreateRescoreExecutionPlanResponse AWS API Documentation
    #
    class CreateRescoreExecutionPlanResponse < Struct.new(
      :id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the rescore execution plan that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/DeleteRescoreExecutionPlanRequest AWS API Documentation
    #
    class DeleteRescoreExecutionPlanRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the rescore execution plan that you want to get
    #   information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/DescribeRescoreExecutionPlanRequest AWS API Documentation
    #
    class DescribeRescoreExecutionPlanRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] capacity_units
    #   The capacity units set for the rescore execution plan. A capacity of
    #   zero indicates that the rescore execution plan is using the default
    #   capacity. For more information on the default capacity and
    #   additional capacity units, see [Adjusting capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp of when the rescore execution plan was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp of when the rescore execution plan was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the rescore execution plan. When the value is
    #   `ACTIVE`, the rescore execution plan is ready for use. If the
    #   `Status` field value is `FAILED`, the `ErrorMessage` field contains
    #   a message that explains why.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a message that explains why.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/DescribeRescoreExecutionPlanResponse AWS API Documentation
    #
    class DescribeRescoreExecutionPlanResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :capacity_units,
      :created_at,
      :updated_at,
      :status,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a document from a search service such as OpenSearch
    # (self managed). Amazon Kendra Intelligent Ranking uses this
    # information to rank and score on.
    #
    # @!attribute [rw] id
    #   The identifier of the document from the search service.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The optional group identifier of the document from the search
    #   service. Documents with the same group identifier are grouped
    #   together and processed as one document within the service.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the search service's document.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body text of the search service's document.
    #   @return [String]
    #
    # @!attribute [rw] tokenized_title
    #   The title of the search service's document represented as a list of
    #   tokens or words. You must choose to provide `Title` or
    #   `TokenizedTitle`. You cannot provide both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tokenized_body
    #   The body text of the search service's document represented as a
    #   list of tokens or words. You must choose to provide `Body` or
    #   `TokenizedBody`. You cannot provide both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] original_score
    #   The original document score or rank from the search service. Amazon
    #   Kendra Intelligent Ranking gives the document a new score or rank
    #   based on its intelligent search algorithms.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/Document AWS API Documentation
    #
    class Document < Struct.new(
      :id,
      :group_id,
      :title,
      :body,
      :tokenized_title,
      :tokenized_body,
      :original_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue occurred with the internal server used for your Amazon Kendra
    # Intelligent Ranking service. Please wait a few minutes and try again,
    # or contact [Support][1] for help.
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra Intelligent Ranking
    #   returns a pagination token in the response. You can use this
    #   pagination token to retrieve the next set of rescore execution
    #   plans.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rescore execution plans to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ListRescoreExecutionPlansRequest AWS API Documentation
    #
    class ListRescoreExecutionPlansRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary_items
    #   An array of summary information for one or more rescore execution
    #   plans.
    #   @return [Array<Types::RescoreExecutionPlanSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Kendra Intelligent Ranking
    #   returns a pagination token in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ListRescoreExecutionPlansResponse AWS API Documentation
    #
    class ListRescoreExecutionPlansResponse < Struct.new(
      :summary_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request information for listing tags associated with a rescore
    # execution plan. A rescore execution plan is an Amazon Kendra
    # Intelligent Ranking resource used for provisioning the `Rescore` API.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan to get
    #   a list of tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response.
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the rescore execution plan.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a rescore execution plan. A rescore execution
    # plan is an Amazon Kendra Intelligent Ranking resource used for
    # provisioning the `Rescore` API.
    #
    # @!attribute [rw] name
    #   The name of the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the rescore execution plan was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the rescore execution plan was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the rescore execution plan. When the value is
    #   `ACTIVE`, the rescore execution plan is ready for use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/RescoreExecutionPlanSummary AWS API Documentation
    #
    class RescoreExecutionPlanSummary < Struct.new(
      :name,
      :id,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rescore_execution_plan_id
    #   The identifier of the rescore execution plan. A rescore execution
    #   plan is an Amazon Kendra Intelligent Ranking resource used for
    #   provisioning the `Rescore` API.
    #   @return [String]
    #
    # @!attribute [rw] search_query
    #   The input query from the search service.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   The list of documents for Amazon Kendra Intelligent Ranking to
    #   rescore or rank on.
    #   @return [Array<Types::Document>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/RescoreRequest AWS API Documentation
    #
    class RescoreRequest < Struct.new(
      :rescore_execution_plan_id,
      :search_query,
      :documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rescore_id
    #   The identifier associated with the scores that Amazon Kendra
    #   Intelligent Ranking gives to the results. Amazon Kendra Intelligent
    #   Ranking rescores or re-ranks the results for the search service.
    #   @return [String]
    #
    # @!attribute [rw] result_items
    #   A list of result items for documents with new relevancy scores. The
    #   results are in descending order.
    #   @return [Array<Types::RescoreResultItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/RescoreResult AWS API Documentation
    #
    class RescoreResult < Struct.new(
      :rescore_id,
      :result_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A result item for a document with a new relevancy score.
    #
    # @!attribute [rw] document_id
    #   The identifier of the document from the search service.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The relevancy score or rank that Amazon Kendra Intelligent Ranking
    #   gives to the result.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/RescoreResultItem AWS API Documentation
    #
    class RescoreResultItem < Struct.new(
      :document_id,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you want to use doesn't exist. Please check you have
    # provided the correct resource and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you want to use is unavailable. Please check you have
    # provided the correct resource information and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the set limits for your Amazon Kendra Intelligent
    # Ranking service. Please see [Quotas][1] for more information, or
    # contact [Support][2] to inquire about an increase of limits.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kendra/latest/dg/quotas.html
    # [2]: http://aws.amazon.com/contact-us/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that identifies or categorizes a rescore execution
    # plan. A rescore execution plan is an Amazon Kendra Intelligent Ranking
    # resource used for provisioning the `Rescore` API. You can also use a
    # tag to help control access to a rescore execution plan. A tag key and
    # value can consist of Unicode letters, digits, white space, and any of
    # the following symbols: \_ . : / = + - @.
    #
    # @!attribute [rw] key
    #   The key for the tag. Keys are not case sensitive and must be unique.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the tag. The value can be an empty string
    #   but it can't be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request information for tagging a rescore execution plan. A
    # rescore execution plan is an Amazon Kendra Intelligent Ranking
    # resource used for provisioning the `Rescore` API.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag keys to add to a rescore execution plan. If a tag
    #   already exists, the existing value is replaced with the new value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling. Please reduce the
    # number of requests and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request information to remove a tag from a rescore execution plan.
    # A rescore execution plan is an Amazon Kendra Intelligent Ranking
    # resource used for provisioning the `Rescore` API.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rescore execution plan to
    #   remove the tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the rescore execution plan. If a
    #   tag key does not exist on the resource, it is ignored.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the action is successful, the service sends back an HTTP 200
    # response with an empty HTTP body.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The identifier of the rescore execution plan that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A new name for the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new description for the rescore execution plan.
    #   @return [String]
    #
    # @!attribute [rw] capacity_units
    #   You can set additional capacity units to meet the needs of your
    #   rescore execution plan. You are given a single capacity unit by
    #   default. If you want to use the default capacity, you don't set
    #   additional capacity units. For more information on the default
    #   capacity and additional capacity units, see [Adjusting capacity][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html
    #   @return [Types::CapacityUnitsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/UpdateRescoreExecutionPlanRequest AWS API Documentation
    #
    class UpdateRescoreExecutionPlanRequest < Struct.new(
      :id,
      :name,
      :description,
      :capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints set by the Amazon Kendra
    # Intelligent Ranking service. Please provide the correct input and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kendra-ranking-2022-10-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
