# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceExplorer2
  module Types

    # The credentials that you used to call this operation don't have the
    # minimum required permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view to set as the
    #   default for the Amazon Web Services Region and Amazon Web Services
    #   account in which you call this operation. The specified view must
    #   already exist in the called Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/AssociateDefaultViewInput AWS API Documentation
    #
    class AssociateDefaultViewInput < Struct.new(
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that the operation
    #   set as the default for queries made in the Amazon Web Services
    #   Region and Amazon Web Services account in which you called this
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/AssociateDefaultViewOutput AWS API Documentation
    #
    class AssociateDefaultViewOutput < Struct.new(
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of error messages for any views that Amazon Web Services
    # Resource Explorer couldn't retrieve details.
    #
    # @!attribute [rw] error_message
    #   The description of the error for the specified view.
    #   @return [String]
    #
    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view for which Resource
    #   Explorer failed to retrieve details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/BatchGetViewError AWS API Documentation
    #
    class BatchGetViewError < Struct.new(
      :error_message,
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arns
    #   A list of [Amazon resource names (ARNs)][1] that identify the views
    #   you want details for.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/BatchGetViewInput AWS API Documentation
    #
    class BatchGetViewInput < Struct.new(
      :view_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   If any of the specified ARNs result in an error, then this structure
    #   describes the error.
    #   @return [Array<Types::BatchGetViewError>]
    #
    # @!attribute [rw] views
    #   A structure with a list of objects with details for each of the
    #   specified views.
    #   @return [Array<Types::View>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/BatchGetViewOutput AWS API Documentation
    #
    class BatchGetViewOutput < Struct.new(
      :errors,
      :views)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because either you specified parameters that didn’t
    # match the original request, or you attempted to create a view with a
    # name that already exists in this Amazon Web Services Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   This value helps ensure idempotency. Resource Explorer uses this
    #   value to prevent the accidental creation of duplicate versions. We
    #   recommend that you generate a [UUID-type value][1] to ensure the
    #   uniqueness of your views.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The specified tags are attached only to the index created in this
    #   Amazon Web Services Region. The tags aren't attached to any of the
    #   resources listed in the index.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/CreateIndexInput AWS API Documentation
    #
    class CreateIndexInput < Struct.new(
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the new local index for the Region. You can reference
    #   this ARN in IAM permission policies to authorize the following
    #   operations: DeleteIndex \| GetIndex \| UpdateIndexType \| CreateView
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and timestamp when the index was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Indicates the current state of the index. You can check for changes
    #   to the state for asynchronous operations by calling the GetIndex
    #   operation.
    #
    #   <note markdown="1"> The state can remain in the `CREATING` or `UPDATING` state for
    #   several hours as Resource Explorer discovers the information about
    #   your resources and populates the index.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/CreateIndexOutput AWS API Documentation
    #
    class CreateIndexOutput < Struct.new(
      :arn,
      :created_at,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   This value helps ensure idempotency. Resource Explorer uses this
    #   value to prevent the accidental creation of duplicate versions. We
    #   recommend that you generate a [UUID-type value][1] to ensure the
    #   uniqueness of your views.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An array of strings that specify which resources are included in the
    #   results of queries made using this view. When you use this view in a
    #   Search operation, the filter string is combined with the search's
    #   `QueryString` parameter using a logical `AND` operator.
    #
    #   For information about the supported syntax, see [Search query
    #   reference for Resource Explorer][1] in the *Amazon Web Services
    #   Resource Explorer User Guide*.
    #
    #   This query string in the context of this operation supports only
    #   [filter prefixes][2] with optional [operators][3]. It doesn't
    #   support free-form text. For example, the string `region:us*
    #   service:ec2 -tag:stage=prod` includes all Amazon EC2 resources in
    #   any Amazon Web Services Region that begins with the letters `us` and
    #   is *not* tagged with a key `Stage` that has the value `prod`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html
    #   [2]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters
    #   [3]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators
    #   @return [Types::SearchFilter]
    #
    # @!attribute [rw] included_properties
    #   Specifies optional fields that you want included in search results
    #   from this view. It is a list of objects that each describe a field
    #   to include.
    #
    #   The default is an empty list, with no optional fields included in
    #   the results.
    #   @return [Array<Types::IncludedProperty>]
    #
    # @!attribute [rw] tags
    #   Tag key and value pairs that are attached to the view.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] view_name
    #   The name of the new view. This name appears in the list of views in
    #   Resource Explorer.
    #
    #   The name must be no more than 64 characters long, and can include
    #   letters, digits, and the dash (-) character. The name must be unique
    #   within its Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/CreateViewInput AWS API Documentation
    #
    class CreateViewInput < Struct.new(
      :client_token,
      :filters,
      :included_properties,
      :tags,
      :view_name)
      SENSITIVE = [:filters]
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   A structure that contains the details about the new view.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/CreateViewOutput AWS API Documentation
    #
    class CreateViewOutput < Struct.new(
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the index that you want to
    #   delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DeleteIndexInput AWS API Documentation
    #
    class DeleteIndexInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the index that you
    #   successfully started the deletion process.
    #
    #   <note markdown="1"> This operation is asynchronous. To check its status, call the
    #   GetIndex operation.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when you last updated this index.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Indicates the current state of the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DeleteIndexOutput AWS API Documentation
    #
    class DeleteIndexOutput < Struct.new(
      :arn,
      :last_updated_at,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you want to
    #   delete.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DeleteViewInput AWS API Documentation
    #
    class DeleteViewInput < Struct.new(
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you
    #   successfully deleted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/DeleteViewOutput AWS API Documentation
    #
    class DeleteViewOutput < Struct.new(
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that is the current
    #   default for the Amazon Web Services Region in which you called this
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetDefaultViewOutput AWS API Documentation
    #
    class GetDefaultViewOutput < Struct.new(
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the index.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the index was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the index was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] replicating_from
    #   This response value is present only if this index is
    #   `Type=AGGREGATOR`.
    #
    #   A list of the Amazon Web Services Regions that replicate their
    #   content to the index in this Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replicating_to
    #   This response value is present only if this index is `Type=LOCAL`.
    #
    #   The Amazon Web Services Region that contains the aggregator index,
    #   if one exists. If an aggregator index does exist then the Region in
    #   which you called this operation replicates its index information to
    #   the Region specified in this response value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The current state of the index in this Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag key and value pairs that are attached to the index.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the index in this Region. For information about the
    #   aggregator index and how it differs from a local index, see [Turning
    #   on cross-Region search by creating an aggregator index][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetIndexOutput AWS API Documentation
    #
    class GetIndexOutput < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :replicating_from,
      :replicating_to,
      :state,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you want
    #   information about.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetViewInput AWS API Documentation
    #
    class GetViewInput < Struct.new(
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tag key and value pairs that are attached to the view.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] view
    #   A structure that contains the details for the requested view.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/GetViewOutput AWS API Documentation
    #
    class GetViewOutput < Struct.new(
      :tags,
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an additional property that describes a resource,
    # that you can optionally include in the view. This lets you view that
    # property in search results, and filter your search results based on
    # the value of the property.
    #
    # @!attribute [rw] name
    #   The name of the property that is included in this view.
    #
    #   You can specify the following property names for this field:
    #
    #   * `Tags`
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/IncludedProperty AWS API Documentation
    #
    class IncludedProperty < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An index is the data store used by Amazon Web Services Resource
    # Explorer to hold information about your Amazon Web Services resources
    # that the service discovers. Creating an index in an Amazon Web
    # Services Region turns on Resource Explorer and lets it discover your
    # resources.
    #
    # By default, an index is *local*, meaning that it contains information
    # about resources in only the same Region as the index. However, you can
    # promote the index of one Region in the account by calling
    # UpdateIndexType to convert it into an aggregator index. The aggregator
    # index receives a replicated copy of the index information from all
    # other Regions where Resource Explorer is turned on. This allows search
    # operations in that Region to return results from all Regions in the
    # account.
    #
    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the index.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region in which the index exists.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of index. It can be one of the following values:
    #
    #   * **LOCAL** – The index contains information about resources from
    #     only the same Amazon Web Services Region.
    #
    #   * **AGGREGATOR** – Resource Explorer replicates copies of the
    #     indexed information about resources in all other Amazon Web
    #     Services Regions to the aggregator index. This lets search results
    #     in the Region with the aggregator index to include resources from
    #     all Regions in the account where Resource Explorer is turned on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/Index AWS API Documentation
    #
    class Index < Struct.new(
      :arn,
      :region,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because of internal service error. Try your request
    # again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   If specified, limits the response to only information about the
    #   index in the specified list of Amazon Web Services Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   If specified, limits the output to only indexes of the specified
    #   Type, either `LOCAL` or `AGGREGATOR`.
    #
    #   Use this option to discover the aggregator index for your account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListIndexesInput AWS API Documentation
    #
    class ListIndexesInput < Struct.new(
      :max_results,
      :next_token,
      :regions,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] indexes
    #   A structure that contains the details and status of each index.
    #   @return [Array<Types::Index>]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListIndexesOutput AWS API Documentation
    #
    class ListIndexesOutput < Struct.new(
      :indexes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListSupportedResourceTypesInput AWS API Documentation
    #
    class ListSupportedResourceTypesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The list of resource types supported by Resource Explorer.
    #   @return [Array<Types::SupportedResourceType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListSupportedResourceTypesOutput AWS API Documentation
    #
    class ListSupportedResourceTypesOutput < Struct.new(
      :next_token,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The [Amazon resource name (ARN)][1] of the view or index that you
    #   want to attach tags to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tag key and value pairs that you want to attach to the specified
    #   view or index.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListViewsInput AWS API Documentation
    #
    class ListViewsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @!attribute [rw] views
    #   The list of views available in the Amazon Web Services Region in
    #   which you called this operation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ListViewsOutput AWS API Documentation
    #
    class ListViewsOutput < Struct.new(
      :next_token,
      :views)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource in Amazon Web Services that Amazon Web Services Resource
    # Explorer has discovered, and for which it has stored information in
    # the index of the Amazon Web Services Region that contains the
    # resource.
    #
    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] last_reported_at
    #   The date and time that Resource Explorer last queried this resource
    #   and updated the index with the latest information about the
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] owning_account_id
    #   The Amazon Web Services account that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A structure with additional type-specific details about the
    #   resource. These properties can be added by turning on integration
    #   between Resource Explorer and other Amazon Web Services services.
    #   @return [Array<Types::ResourceProperty>]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region in which the resource was created and
    #   exists.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Service that owns the resource and is responsible for
    #   creating and updating it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :arn,
      :last_reported_at,
      :owning_account_id,
      :properties,
      :region,
      :resource_type,
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the number of results that match the query. At this
    # time, Amazon Web Services Resource Explorer doesn't count more than
    # 1,000 matches for any query. This structure provides information about
    # whether the query exceeded this limit.
    #
    # This field is included in every page when you paginate the results.
    #
    # @!attribute [rw] complete
    #   Indicates whether the `TotalResources` value represents an
    #   exhaustive count of search results.
    #
    #   * If `True`, it indicates that the search was exhaustive. Every
    #     resource that matches the query was counted.
    #
    #   * If `False`, then the search reached the limit of 1,000 matching
    #     results, and stopped counting.
    #   @return [Boolean]
    #
    # @!attribute [rw] total_resources
    #   The number of resources that match the search query. This value
    #   can't exceed 1,000. If there are more than 1,000 resources that
    #   match the query, then only 1,000 are counted and the `Complete`
    #   field is set to false. We recommend that you refine your query to
    #   return a smaller number of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ResourceCount AWS API Documentation
    #
    class ResourceCount < Struct.new(
      :complete,
      :total_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # You specified a resource that doesn't exist. Check the ID or ARN that
    # you used to identity the resource, and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a property of a resource.
    #
    # @!attribute [rw] data
    #   Details about this property. The content of this field is a JSON
    #   object that varies based on the resource type.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] last_reported_at
    #   The date and time that the information about this resource property
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of this property of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ResourceProperty AWS API Documentation
    #
    class ResourceProperty < Struct.new(
      :data,
      :last_reported_at,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A search filter defines which resources can be part of a search query
    # result set.
    #
    # @!attribute [rw] filter_string
    #   The string that contains the search keywords, prefixes, and
    #   operators to control the results that can be returned by a Search
    #   operation. For more details, see [Search query syntax][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/SearchFilter AWS API Documentation
    #
    class SearchFilter < Struct.new(
      :filter_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that you want included on each page of
    #   the response. If you do not include this parameter, it defaults to a
    #   value appropriate to the operation. If additional items exist beyond
    #   those included in the current response, the `NextToken` response
    #   element is present and has a value (is not null). Include that value
    #   as the `NextToken` request parameter in the next call to the
    #   operation to get the next part of the results.
    #
    #   <note markdown="1"> An API operation can return fewer results than the maximum even when
    #   there are more results available. You should check `NextToken` after
    #   every operation to ensure that you receive all of the results.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The parameter for receiving additional results if you receive a
    #   `NextToken` response in a previous request. A `NextToken` response
    #   indicates that more output is available. Set this parameter to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   A string that includes keywords and filters that specify the
    #   resources that you want to include in the results.
    #
    #   For the complete syntax supported by the `QueryString` parameter,
    #   see [Search query syntax reference for Resource Explorer][1].
    #
    #   The search is completely case insensitive. You can specify an empty
    #   string to return all results up to the limit of 1,000 total results.
    #
    #   <note markdown="1"> The operation can return only the first 1,000 results. If the
    #   resource you want is not included, then use a different value for
    #   `QueryString` to refine the results.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html
    #   @return [String]
    #
    # @!attribute [rw] view_arn
    #   Specifies the [Amazon resource name (ARN)][1] of the view to use for
    #   the query. If you don't specify a value for this parameter, then
    #   the operation automatically uses the default view for the Amazon Web
    #   Services Region in which you called this operation. If the Region
    #   either doesn't have a default view or if you don't have permission
    #   to use the default view, then the operation fails with a `401
    #   Unauthorized` exception.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/SearchInput AWS API Documentation
    #
    class SearchInput < Struct.new(
      :max_results,
      :next_token,
      :query_string,
      :view_arn)
      SENSITIVE = [:query_string]
      include Aws::Structure
    end

    # @!attribute [rw] count
    #   The number of resources that match the query.
    #   @return [Types::ResourceCount]
    #
    # @!attribute [rw] next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a subsequent call to the operation to get the next part
    #   of the output. You should repeat this until the `NextToken` response
    #   element comes back as `null`.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of structures that describe the resources that match the
    #   query.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that this operation
    #   used to perform the search.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/SearchOutput AWS API Documentation
    #
    class SearchOutput < Struct.new(
      :count,
      :next_token,
      :resources,
      :view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because it exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service quota that was exceeded by the request.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The current value for the quota that the request tried to exceed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a resource type supported by Amazon Web
    # Services Resource Explorer.
    #
    # @!attribute [rw] resource_type
    #   The unique identifier of the resource type.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The Amazon Web Service that is associated with the resource type.
    #   This is the primary service that lets you create and interact with
    #   resources of this type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/SupportedResourceType AWS API Documentation
    #
    class SupportedResourceType < Struct.new(
      :resource_type,
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key and value pairs that you want to attach to the
    #   specified view or index.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the view or index that you want to
    #   attach tags to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :tags,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The request failed because you exceeded a rate limit for this
    # operation. For more information, see [Quotas for Resource
    # Explorer][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/arexug/mainline/quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The principal making the request isn't permitted to perform the
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the view or index that you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys for the tags that you want to remove from the
    #   specified view or index.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the index that you want to
    #   update.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the index. To understand the difference between `LOCAL`
    #   and `AGGREGATOR`, see [Turning on cross-Region search][1] in the
    #   *Amazon Web Services Resource Explorer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UpdateIndexTypeInput AWS API Documentation
    #
    class UpdateIndexTypeInput < Struct.new(
      :arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [Amazon resource name (ARN)][1] of the index that you updated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The date and timestamp when the index was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   Indicates the state of the request to update the index. This
    #   operation is asynchronous. Call the GetIndex operation to check for
    #   changes.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies the type of the specified index after the operation
    #   completes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UpdateIndexTypeOutput AWS API Documentation
    #
    class UpdateIndexTypeOutput < Struct.new(
      :arn,
      :last_updated_at,
      :state,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An array of strings that specify which resources are included in the
    #   results of queries made using this view. When you use this view in a
    #   Search operation, the filter string is combined with the search's
    #   `QueryString` parameter using a logical `AND` operator.
    #
    #   For information about the supported syntax, see [Search query
    #   reference for Resource Explorer][1] in the *Amazon Web Services
    #   Resource Explorer User Guide*.
    #
    #   This query string in the context of this operation supports only
    #   [filter prefixes][2] with optional [operators][3]. It doesn't
    #   support free-form text. For example, the string `region:us*
    #   service:ec2 -tag:stage=prod` includes all Amazon EC2 resources in
    #   any Amazon Web Services Region that begins with the letters `us` and
    #   is *not* tagged with a key `Stage` that has the value `prod`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html
    #   [2]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters
    #   [3]: https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators
    #   @return [Types::SearchFilter]
    #
    # @!attribute [rw] included_properties
    #   Specifies optional fields that you want included in search results
    #   from this view. It is a list of objects that each describe a field
    #   to include.
    #
    #   The default is an empty list, with no optional fields included in
    #   the results.
    #   @return [Array<Types::IncludedProperty>]
    #
    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view that you want to
    #   modify.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UpdateViewInput AWS API Documentation
    #
    class UpdateViewInput < Struct.new(
      :filters,
      :included_properties,
      :view_arn)
      SENSITIVE = [:filters]
      include Aws::Structure
    end

    # @!attribute [rw] view
    #   Details about the view that you changed with this operation.
    #   @return [Types::View]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/UpdateViewOutput AWS API Documentation
    #
    class UpdateViewOutput < Struct.new(
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # You provided an invalid value for one of the operation's parameters.
    # Check the syntax for the operation, and try again.
    #
    # @!attribute [rw] field_list
    #   An array of the request fields that had validation errors.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that describes a request field with a validation error.
    #
    # @!attribute [rw] name
    #   The name of the request field that had a validation error.
    #   @return [String]
    #
    # @!attribute [rw] validation_issue
    #   The validation error caused by the request field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :validation_issue)
      SENSITIVE = []
      include Aws::Structure
    end

    # A view is a structure that defines a set of filters that provide a
    # view into the information in the Amazon Web Services Resource Explorer
    # index. The filters specify which information from the index is visible
    # to the users of the view. For example, you can specify filters that
    # include only resources that are tagged with the key "ENV" and the
    # value "DEVELOPMENT" in the results returned by this view. You could
    # also create a second view that includes only resources that are tagged
    # with "ENV" and "PRODUCTION".
    #
    # @!attribute [rw] filters
    #   An array of SearchFilter objects that specify which resources can be
    #   included in the results of queries made using this view.
    #   @return [Types::SearchFilter]
    #
    # @!attribute [rw] included_properties
    #   A structure that contains additional information about the view.
    #   @return [Array<Types::IncludedProperty>]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when this view was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] owner
    #   The Amazon Web Services account that owns this view.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   An [Amazon resource name (ARN)][1] of an Amazon Web Services
    #   account, an organization, or an organizational unit (OU) that
    #   specifies whether this view includes resources from only the
    #   specified Amazon Web Services account, all accounts in the specified
    #   organization, or all accounts in the specified OU.
    #
    #   If not specified, the value defaults to the Amazon Web Services
    #   account used to call this operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] view_arn
    #   The [Amazon resource name (ARN)][1] of the view.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28/View AWS API Documentation
    #
    class View < Struct.new(
      :filters,
      :included_properties,
      :last_updated_at,
      :owner,
      :scope,
      :view_arn)
      SENSITIVE = [:filters]
      include Aws::Structure
    end

  end
end
