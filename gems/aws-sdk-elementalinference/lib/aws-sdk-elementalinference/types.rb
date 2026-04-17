# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElementalInference
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_name
    #   An identifier for the resource. If the resource is from an AWS
    #   service, this identifier must be the full ARN of that resource.
    #   Otherwise, the identifier is a name that you assign and that is
    #   appropriate for the application that owns the resource. This name
    #   must not resemble an ARN.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs to add to this feed. You must specify at least one
    #   output. You can later use the UpdateFeed action to change the list
    #   of outputs.
    #   @return [Array<Types::CreateOutput>]
    #
    # @!attribute [rw] dry_run
    #   Set to true if you want to do a dry run of the associate action.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeedRequest AWS API Documentation
    #
    class AssociateFeedRequest < Struct.new(
      :id,
      :associated_resource_name,
      :outputs,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The AWS ARN for this association.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   An ID for this response. It is unique in Elemental Inference for
    #   this AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/AssociateFeedResponse AWS API Documentation
    #
    class AssociateFeedResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of OutputConfig, used when the output in a feed is for the clip
    # feature.
    #
    # @!attribute [rw] callback_metadata
    #   The metadata that is the result of the clip request to Elemental
    #   Inference.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ClippingConfig AWS API Documentation
    #
    class ClippingConfig < Struct.new(
      :callback_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for this feed.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of outputs for this feed. Each output represents a specific
    #   Elemental Inference feature. For example, an output might represent
    #   the crop feature.
    #   @return [Array<Types::CreateOutput>]
    #
    # @!attribute [rw] tags
    #   If you want to include tags, add them now. You won't be able to add
    #   them later.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeedRequest AWS API Documentation
    #
    class CreateFeedRequest < Struct.new(
      :name,
      :outputs,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   A unique ARN that Elemental Inference assigns to the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you specified.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique ID that Elemental Inference assigns to the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   A unique ARN that Elemental Inference assigns to the feed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   Data endpoints that Elemental Inference assigns to the feed.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] status
    #   The current status of the feed. After creation of the feed has
    #   succeeded, the status will be AVAILABLE.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The association for this feed. When you create the feed, this
    #   property is empty. You must associate a resource with the feed using
    #   AssociateFeed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   Any tags that you included when you created the feed.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateFeedResponse AWS API Documentation
    #
    class CreateFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the AssociateFeed and the CreateFeed actions.
    #
    # @!attribute [rw] name
    #   A name for the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It is used in the
    #   CreateFeed and AssociateFeed actions. It identifies the action for
    #   Elemental Inference to perform. It also provides a repository for
    #   the results of that action. For example, CroppingConfig output will
    #   contain the metadata for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status to assign to the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CreateOutput AWS API Documentation
    #
    class CreateOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of OutputConfig, used when the output in a feed is for the crop
    # feature.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/CroppingConfig AWS API Documentation
    #
    class CroppingConfig < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedRequest AWS API Documentation
    #
    class DeleteFeedRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the deleted feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the deleted feed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the feed. When deletion of the feed has
    #   succeeded, the status will be DELETED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DeleteFeedResponse AWS API Documentation
    #
    class DeleteFeedResponse < Struct.new(
      :arn,
      :id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed where you want to release the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_resource_name
    #   The name of the resource currently associated with the feed'.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Set to true if you want to do a dry run of the disassociate action.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeedRequest AWS API Documentation
    #
    class DisassociateFeedRequest < Struct.new(
      :id,
      :associated_resource_name,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ID of the feed where you deleted the associated resource.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ARN of the resource that you deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/DisassociateFeedResponse AWS API Documentation
    #
    class DisassociateFeedResponse < Struct.new(
      :arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the resource that is associated with a
    # feed. It is used in the FeedSummary that is used in the response of a
    # ListFeeds action.
    #
    # @!attribute [rw] associated_resource_name
    #   The name of the associated resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FeedAssociation AWS API Documentation
    #
    class FeedAssociation < Struct.new(
      :associated_resource_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about a feed. It is used in the
    # ListFeeds action.
    #
    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the feed
    #   @return [String]
    #
    # @!attribute [rw] association
    #   The resource, if any, associated with the feed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] status
    #   The status of the feed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/FeedSummary AWS API Documentation
    #
    class FeedSummary < Struct.new(
      :arn,
      :id,
      :name,
      :association,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the feed to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedRequest AWS API Documentation
    #
    class GetFeedRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the feed being queried.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed being queried.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   The dataEndpoints of the feed being queried.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   An array of the outputs in the feed being queried.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] status
    #   The status of the feed being queried.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   Information about the resource, if any, associated with the feed
    #   being queried.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   A list of the tags, if any, for the feed being queried.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetFeedResponse AWS API Documentation
    #
    class GetFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the GetFeed action.
    #
    # @!attribute [rw] name
    #   The ARN of the output.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It is used in the GetFeed
    #   action. It identifies the action for Elemental Inference to perform.
    #   It also provides a repository for the results of that action. For
    #   example, CroppingConfig output will contain the metadata for the
    #   crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the output.
    #   @return [String]
    #
    # @!attribute [rw] from_association
    #   True means that the output was originally created in the feed by the
    #   AssociateFeed operation. False means it was created using CreateFeed
    #   or UpdateFeed. You will need this value if you use the UpdateFeed
    #   operation to modify the list of outputs in the feed.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/GetOutput AWS API Documentation
    #
    class GetOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description,
      :from_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. This is a temporary condition and
    # the request can be retried. If the problem persists, contact AWS
    # Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per API request.
    #
    #   For example, you submit a list request with MaxResults set at 5.
    #   Although 20 items match your request, the service returns no more
    #   than the first 5 items. (The service also returns a NextToken value
    #   that you can use to fetch the next batch of results.)
    #
    #   The service might return fewer results than the MaxResults value. If
    #   MaxResults is not included in the request, the service defaults to
    #   pagination with a maximum of 10 results per page.
    #
    #   Valid Range: Minimum value of 1. Maximum value of 1000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #
    #   For example, you submit a ListBridges request with MaxResults set at
    #   5. The service returns the first batch of results (up to 5) and a
    #   NextToken value. To see the next batch of results, you can submit
    #   the ListBridges request a second time and specify the NextToken
    #   value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeedsRequest AWS API Documentation
    #
    class ListFeedsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] feeds
    #   A list of feed summaries.
    #   @return [Array<Types::FeedSummary>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies the batch of results that you want to see.
    #   For example, you submit a list request with MaxResults set at 5. The
    #   service returns the first batch of results (up to 5) and a NextToken
    #   value. To see the next batch of results, you can submit the list
    #   request a second time and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListFeedsResponse AWS API Documentation
    #
    class ListFeedsResponse < Struct.new(
      :feeds,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose tags you want to query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of the tags that belong to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one typed output. It is used in the CreateOutput, GetOutput,
    # and Update Output structures.
    #
    # @note OutputConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OutputConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutputConfig corresponding to the set member.
    #
    # @!attribute [rw] cropping
    #   The output config type that applies to the cropping feature.
    #   @return [Types::CroppingConfig]
    #
    # @!attribute [rw] clipping
    #   The output config type that applies to the clipping feature.
    #   @return [Types::ClippingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :cropping,
      :clipping,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Cropping < OutputConfig; end
      class Clipping < OutputConfig; end
      class Unknown < OutputConfig; end
    end

    # The resource specified in the action doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it would exceed one or more service
    # quotas for your account. Review your service quotas and either delete
    # unused resources or request a quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource where you want to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling. Too many requests
    # have been made within a given time period. Reduce the frequency of
    # requests and use exponential backoff when retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/TooManyRequestException AWS API Documentation
    #
    class TooManyRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource where you want to delete one or more tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Required. You can specify the existing name (to leave it unchanged)
    #   or a new name.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed to update.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   Required. You can specify the existing array of outputs (to leave
    #   outputs unchanged) or you can specify a new array.
    #   @return [Array<Types::UpdateOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeedRequest AWS API Documentation
    #
    class UpdateFeedRequest < Struct.new(
      :name,
      :id,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the feed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated or original name of the feed.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the feed.
    #   @return [String]
    #
    # @!attribute [rw] data_endpoints
    #   The data endpoints of the feed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] outputs
    #   The array of outputs in the feed. You might have left this array
    #   unchanged, or you might have changed it.
    #   @return [Array<Types::GetOutput>]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] association
    #   True means that the output was originally created in the feed by the
    #   AssociateFeed operation. False means it was created using CreateFeed
    #   or UpdateFeed. You will need this value if you use the UpdateFeed
    #   operation to modify the list of outputs in the feed.
    #   @return [Types::FeedAssociation]
    #
    # @!attribute [rw] tags
    #   The name of the resource currently associated with the feed, if any.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateFeedResponse AWS API Documentation
    #
    class UpdateFeedResponse < Struct.new(
      :arn,
      :name,
      :id,
      :data_endpoints,
      :outputs,
      :status,
      :association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about one output in a feed. It is
    # used in the UpdateFeed action.
    #
    # @!attribute [rw] name
    #   The name start here
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   A typed property for an output in a feed. It is used in the
    #   UpdateFeed action. It identifies the action for Elemental Inference
    #   to perform. It also provides a repository for the results of that
    #   action. For example, CroppingConfig output will contain the metadata
    #   for the crop feature.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the output.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the output.
    #   @return [String]
    #
    # @!attribute [rw] from_association
    #   This property is set by the service when you add the output to the
    #   feed, and indicates how you added the output. True means that you
    #   used the AssociateFeed operation. False means that you used the
    #   CreateFeed or UpdateFeed operation. Use GetFeed to obtain the value.
    #   If the value is True, include this field here with a value of True.
    #   If the value is False, omit the field here.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/UpdateOutput AWS API Documentation
    #
    class UpdateOutput < Struct.new(
      :name,
      :output_config,
      :status,
      :description,
      :from_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service.
    # Check the error message for details about which parameter or field is
    # invalid and correct the request before retrying.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elementalinference-2018-11-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

