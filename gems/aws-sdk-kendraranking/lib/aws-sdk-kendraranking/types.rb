# frozen_string_literal: true

# This is generated code!

module Aws::KendraRanking
  # This module contains the types returned by client operations.
  module Types

    # <p>You don’t have sufficient access to perform this action. 
    #             Please ensure you have the required permission policies 
    #             and user accounts and try again.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sets additional capacity units configured for your 
    #             rescore execution plan. A rescore execution plan is an 
    #             Amazon Kendra Intelligent Ranking resource used for 
    #             provisioning the <code>Rescore</code> API. You can add and 
    #             remove capacity units to fit your usage requirements.</p>
    # @!attribute rescore_capacity_units
    #   <p>The amount of extra capacity for your rescore execution 
    #               plan.</p>
    #            <p>A single extra capacity unit for a rescore execution 
    #               plan provides 0.01 rescore requests per second. You can add 
    #               up to 1000 extra capacity units.</p>
    #   @return [Integer]
    class CapacityUnitsConfiguration < Struct.new(
      :rescore_capacity_units,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict occurred with the request. Please fix any 
    #             inconsistencies with your resources and try again.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the rescore execution plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the rescore execution plan.</p>
    #   @return [String]
    # @!attribute capacity_units
    #   <p>You can set additional capacity units to meet the 
    #               needs of your rescore execution plan. You are given a single 
    #               capacity unit by default. If you want to use the default 
    #               capacity, you don't set additional capacity units. For more 
    #               information on the default capacity and additional capacity 
    #               units, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting 
    #                   capacity</a>.</p>
    #   @return [Types::CapacityUnitsConfiguration]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize your 
    #               rescore execution plan. You can also use tags to help control 
    #               access to the rescore execution plan. Tag keys and values can 
    #               consist of Unicode letters, digits, white space, and any of 
    #               the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create 
    #               a rescore execution plan. Multiple calls to the 
    #               <code>CreateRescoreExecutionPlanRequest</code> API with the 
    #               same client token will create only one rescore execution plan.</p>
    #   @return [String]
    class CreateRescoreExecutionPlanRequest < Struct.new(
      :name,
      :description,
      :capacity_units,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the rescore execution plan.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rescore 
    #               execution plan.</p>
    #   @return [String]
    class CreateRescoreExecutionPlanResponse < Struct.new(
      :id,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the rescore execution plan that you 
    #               want to delete.</p>
    #   @return [String]
    class DeleteRescoreExecutionPlanRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the rescore execution plan that you want 
    #               to get information on.</p>
    #   @return [String]
    class DescribeRescoreExecutionPlanRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the rescore execution plan.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the rescore execution plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the rescore execution plan.</p>
    #   @return [String]
    # @!attribute capacity_units
    #   <p>The capacity units set for the rescore execution plan. 
    #               A capacity of zero indicates that the rescore execution 
    #               plan is using the default capacity. For more information on the 
    #               default capacity and additional capacity units, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting 
    #                   capacity</a>.</p>
    #   @return [Types::CapacityUnitsConfiguration]
    # @!attribute created_at
    #   <p>The Unix timestamp of when the rescore execution plan was 
    #               created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp of when the rescore execution plan was 
    #               last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the rescore execution plan. When the 
    #               value is <code>ACTIVE</code>, the rescore execution plan is 
    #               ready for use. If the <code>Status</code> field value is 
    #               <code>FAILED</code>, the <code>ErrorMessage</code> field 
    #               contains a message that explains why.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>When the <code>Status</code> field value is 
    #               <code>FAILED</code>, the <code>ErrorMessage</code> field 
    #               contains a message that explains why.</p>
    #   @return [String]
    class DescribeRescoreExecutionPlanResponse < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :capacity_units,
      :created_at,
      :updated_at,
      :status,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a document from a search service such 
    #             as OpenSearch (self managed). Amazon Kendra Intelligent 
    #             Ranking uses this information to rank and score on.</p>
    # @!attribute id
    #   <p>The identifier of the document from the search service.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The optional group identifier of the document from the search 
    #               service. Documents with the same group identifier are grouped 
    #               together and processed as one document within the service.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the search service's document.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The body text of the search service's document.</p>
    #   @return [String]
    # @!attribute tokenized_title
    #   <p>The title of the search service's document represented as 
    #               a list of tokens or words. You must choose to provide 
    #               <code>Title</code> or <code>TokenizedTitle</code>. You cannot
    #               provide both.</p>
    #   @return [Array<String>]
    # @!attribute tokenized_body
    #   <p>The body text of the search service's document represented 
    #               as a list of tokens or words. You must choose to provide 
    #               <code>Body</code> or <code>TokenizedBody</code>. You cannot 
    #               provide both.</p>
    #   @return [Array<String>]
    # @!attribute original_score
    #   <p>The original document score or rank from the search service. 
    #               Amazon Kendra Intelligent Ranking gives the document a new 
    #               score or rank based on its intelligent search algorithms.</p>
    #   @return [Float]
    class Document < Struct.new(
      :id,
      :group_id,
      :title,
      :body,
      :tokenized_title,
      :tokenized_body,
      :original_score,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An issue occurred with the internal server used for 
    #             your Amazon Kendra Intelligent Ranking service. 
    #             Please wait a few minutes and try again, or contact 
    #             <a href="http://aws.amazon.com/contact-us/">Support</a> 
    #             for help.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra Intelligent 
    #               Ranking returns a pagination token in the response. You can use 
    #               this pagination token to retrieve the next set of rescore 
    #               execution plans.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of rescore execution plans to return.</p>
    #   @return [Integer]
    class ListRescoreExecutionPlansRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary_items
    #   <p>An array of summary information for one or more rescore 
    #               execution plans.</p>
    #   @return [Array<Types::RescoreExecutionPlanSummary>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Kendra Intelligent 
    #               Ranking returns a pagination token in the response.</p>
    #   @return [String]
    class ListRescoreExecutionPlansResponse < Struct.new(
      :summary_items,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request information for listing tags associated with 
    #             a rescore execution plan. A rescore execution plan is an 
    #             Amazon Kendra Intelligent Ranking resource used for 
    #             provisioning the <code>Rescore</code> API.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan to get a list of tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If the action is successful, the service sends back an 
    #             HTTP 200 response.</p>
    # @!attribute tags
    #   <p>A list of tags associated with the rescore execution 
    #               plan.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for a rescore execution plan. A rescore 
    #             execution plan is an Amazon Kendra Intelligent Ranking 
    #             resource used for provisioning the <code>Rescore</code> API.</p>
    # @!attribute name
    #   <p>The name of the rescore execution plan.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the rescore execution plan.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the rescore execution plan 
    #               was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the rescore execution plan 
    #               was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the rescore execution plan. When 
    #               the value is <code>ACTIVE</code>, the rescore execution 
    #               plan is ready for use.</p>
    #   @return [String]
    class RescoreExecutionPlanSummary < Struct.new(
      :name,
      :id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rescore_execution_plan_id
    #   <p>The identifier of the rescore execution plan. A rescore 
    #               execution plan is an Amazon Kendra Intelligent Ranking 
    #               resource used for provisioning the <code>Rescore</code> API.</p>
    #   @return [String]
    # @!attribute search_query
    #   <p>The input query from the search service.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>The list of documents for Amazon Kendra Intelligent 
    #               Ranking to rescore or rank on.</p>
    #   @return [Array<Types::Document>]
    class RescoreRequest < Struct.new(
      :rescore_execution_plan_id,
      :search_query,
      :documents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rescore_id
    #   <p>The identifier associated with the scores that 
    #               Amazon Kendra Intelligent Ranking gives to the 
    #               results. Amazon Kendra Intelligent Ranking 
    #               rescores or re-ranks the results for the search service.</p>
    #   @return [String]
    # @!attribute result_items
    #   <p>A list of result items for documents with new relevancy 
    #               scores. The results are in descending order.</p>
    #   @return [Array<Types::RescoreResultItem>]
    class RescoreResult < Struct.new(
      :rescore_id,
      :result_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A result item for a document with a new relevancy score.</p>
    # @!attribute document_id
    #   <p>The identifier of the document from the search service.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The relevancy score or rank that Amazon Kendra 
    #               Intelligent Ranking gives to the result.</p>
    #   @return [Float]
    class RescoreResultItem < Struct.new(
      :document_id,
      :score,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource you want to use doesn't exist. Please 
    #             check you have provided the correct resource and try 
    #             again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource you want to use is unavailable. Please 
    #             check you have provided the correct resource 
    #             information and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the set limits for your 
    #             Amazon Kendra Intelligent Ranking service. Please 
    #             see <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a> 
    #             for more information, or contact <a href="http://aws.amazon.com/contact-us/">Support</a> to inquire about 
    #             an increase of limits.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair that identifies or categorizes a rescore 
    #             execution plan. A rescore execution plan is an 
    #             Amazon Kendra Intelligent Ranking resource used for 
    #             provisioning the <code>Rescore</code> API. You can also use 
    #             a tag to help control access to a rescore execution plan. 
    #             A tag key and value can consist of Unicode letters, digits, 
    #             white space, and any of the following symbols: _ . : / = + - @.</p>
    # @!attribute key
    #   <p>The key for the tag. Keys are not case sensitive and must 
    #               be unique.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with the tag. The value can be an 
    #               empty string but it can't be null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request information for tagging a rescore execution 
    #             plan. A rescore execution plan is an Amazon Kendra 
    #             Intelligent Ranking resource used for provisioning the 
    #             <code>Rescore</code> API.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag keys to add to a rescore execution plan. 
    #               If a tag already exists, the existing value is replaced 
    #               with the new value.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If the action is successful, the service sends back an 
    #             HTTP 200 response with an empty HTTP body.</p>
    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. 
    #             Please reduce the number of requests and try again.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request information to remove a tag from a rescore 
    #             execution plan. A rescore execution plan is an 
    #             Amazon Kendra Intelligent Ranking resource used for
    #             provisioning the <code>Rescore</code> API.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rescore execution 
    #               plan to remove the tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the rescore execution 
    #               plan. If a tag key does not exist on the resource, it is 
    #               ignored.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If the action is successful, the service sends back an 
    #             HTTP 200 response with an empty HTTP body.</p>
    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the rescore execution plan that you want 
    #               to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A new name for the rescore execution plan.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the rescore execution plan.</p>
    #   @return [String]
    # @!attribute capacity_units
    #   <p>You can set additional capacity units to meet the needs 
    #               of your rescore execution plan. You are given a single capacity 
    #               unit by default. If you want to use the default capacity, you 
    #               don't set additional capacity units. For more information on the
    #               default capacity and additional capacity units, see 
    #               <a href="https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html">Adjusting capacity</a>.</p>
    #   @return [Types::CapacityUnitsConfiguration]
    class UpdateRescoreExecutionPlanRequest < Struct.new(
      :id,
      :name,
      :description,
      :capacity_units,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints set by 
    #             the Amazon Kendra Intelligent Ranking service. 
    #             Please provide the correct input and try again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
