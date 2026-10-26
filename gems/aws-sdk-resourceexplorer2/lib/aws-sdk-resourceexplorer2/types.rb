# frozen_string_literal: true

# This is generated code!

module Aws::ResourceExplorer2
  # This module contains the types returned by client operations.
  module Types

    # <p>The credentials that you used to call this operation don't have the minimum required permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view to set as the default for the Amazon Web Services Region and Amazon Web Services account in which you call this operation. The specified view must already exist in the called Region.</p>
    #   @return [String]
    class AssociateDefaultViewOperationInput < Struct.new(
      nil,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that the operation set as the default for queries made in the Amazon Web Services Region and Amazon Web Services account in which you called this operation.</p>
    #   @return [String]
    class AssociateDefaultViewOperationOutput < Struct.new(
      nil,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of error messages for any views that Amazon Web Services Resource Explorer couldn't retrieve details.</p>
    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view for which Resource Explorer failed to retrieve details.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The description of the error for the specified view.</p>
    #   @return [String]
    class BatchGetViewError < Struct.new(
      nil,
      :view_arn,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arns
    #   <p>A list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource names (ARNs)</a> that identify the views you want details for.</p>
    #   @return [Array<String>]
    class BatchGetViewOperationInput < Struct.new(
      nil,
      :view_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute views
    #   <p>A structure with a list of objects with details for each of the specified views.</p>
    #   @return [Array<Types::View>]
    # @!attribute errors
    #   <p>If any of the specified ARNs result in an error, then this structure describes the error.</p>
    #   @return [Array<Types::BatchGetViewError>]
    class BatchGetViewOperationOutput < Struct.new(
      nil,
      :views,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>If you attempted to create a view, then the request failed because either you specified parameters that didn’t match the original request, or you attempted to create a view with a name that already exists in this Amazon Web Services Region.</p> <p>If you attempted to create an index, then the request failed because either you specified parameters that didn't match the original request, or an index already exists in the current Amazon Web Services Region.</p> <p>If you attempted to update an index type to <code>AGGREGATOR</code>, then the request failed because you already have an <code>AGGREGATOR</code> index in a different Amazon Web Services Region.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>This value helps ensure idempotency. Resource Explorer uses this value to prevent the accidental creation of duplicate versions. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type value</a> to ensure the uniqueness of your index.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The specified tags are attached only to the index created in this Amazon Web Services Region. The tags aren't attached to any of the resources listed in the index.</p>
    #   @return [Hash<String, String>]
    class CreateIndexOperationInput < Struct.new(
      nil,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the new local index for the Region. You can reference this ARN in IAM permission policies to authorize the following operations: <a>DeleteIndex</a> | <a>GetIndex</a> | <a>UpdateIndexType</a> | <a>CreateView</a> </p>
    #   @return [String]
    # @!attribute state
    #   <p>Indicates the current state of the index. You can check for changes to the state for asynchronous operations by calling the <a>GetIndex</a> operation.</p> <note> <p>The state can remain in the <code>CREATING</code> or <code>UPDATING</code> state for several hours as Resource Explorer discovers the information about your resources and populates the index.</p> </note>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and timestamp when the index was created.</p>
    #   @return [Time]
    class CreateIndexOperationOutput < Struct.new(
      nil,
      :arn,
      :state,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute region_list
    #   <p>A list of Amazon Web Services Regions where Resource Explorer should be configured. Each Region in the list will have a user-owned index created.</p>
    #   @return [Array<String>]
    # @!attribute aggregator_regions
    #   <p>A list of Amazon Web Services Regions that should be configured as aggregator Regions. Aggregator Regions receive replicated index information from all other Regions where there is a user-owned index.</p>
    #   @return [Array<String>]
    # @!attribute view_name
    #   <p>The name for the view to be created as part of the Resource Explorer setup. The view name must be unique within the Amazon Web Services account and Region.</p>
    #   @return [String]
    class CreateResourceExplorerSetupInput < Struct.new(
      nil,
      :region_list,
      :aggregator_regions,
      :view_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier for the setup task. Use this ID with <code>GetResourceExplorerSetup</code> to monitor the progress of the configuration operation.</p>
    #   @return [String]
    class CreateResourceExplorerSetupOutput < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>This value helps ensure idempotency. Resource Explorer uses this value to prevent the accidental creation of duplicate versions. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type value</a> to ensure the uniqueness of your views.</p>
    #   @return [String]
    # @!attribute view_name
    #   <p>The name of the new view. This name appears in the list of views in Resource Explorer.</p> <p>The name must be no more than 64 characters long, and can include letters, digits, and the dash (-) character. The name must be unique within its Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute included_properties
    #   <p>Specifies optional fields that you want included in search results from this view. It is a list of objects that each describe a field to include.</p> <p>The default is an empty list, with no optional fields included in the results.</p>
    #   @return [Array<Types::IncludedProperty>]
    # @!attribute scope
    #   <p>The root ARN of the account, an organizational unit (OU), or an organization ARN. If left empty, the default is account.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>An array of strings that specify which resources are included in the results of queries made using this view. When you use this view in a <a>Search</a> operation, the filter string is combined with the search's <code>QueryString</code> parameter using a logical <code>AND</code> operator.</p> <p>For information about the supported syntax, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query reference for Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p> <important> <p>This query string in the context of this operation supports only <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters">filter prefixes</a> with optional <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators">operators</a>. It doesn't support free-form text. For example, the string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is <i>not</i> tagged with a key <code>Stage</code> that has the value <code>prod</code>.</p> </important>
    #   @return [Types::SearchFilter]
    # @!attribute tags
    #   <p>Tag key and value pairs that are attached to the view.</p>
    #   @return [Hash<String, String>]
    class CreateViewOperationInput < Struct.new(
      nil,
      :client_token,
      :view_name,
      :included_properties,
      :scope,
      :filters,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>A structure that contains the details about the new view.</p>
    #   @return [Types::View]
    class CreateViewOperationOutput < Struct.new(
      nil,
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index that you want to delete.</p>
    #   @return [String]
    class DeleteIndexOperationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index that you successfully started the deletion process.</p> <note> <p>This operation is asynchronous. To check its status, call the <a>GetIndex</a> operation.</p> </note>
    #   @return [String]
    # @!attribute state
    #   <p>Indicates the current state of the index. </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time when you last updated this index.</p>
    #   @return [Time]
    class DeleteIndexOperationOutput < Struct.new(
      nil,
      :arn,
      :state,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute region_list
    #   <p>A list of Amazon Web Services Regions from which to delete the Resource Explorer configuration. If not specified, the operation uses the <code>DeleteInAllRegions</code> parameter to determine scope.</p>
    #   @return [Array<String>]
    # @!attribute delete_in_all_regions
    #   <p>Specifies whether to delete Resource Explorer configuration from all Regions where it is currently enabled. If this parameter is set to <code>true</code>, a value for <code>RegionList</code> must not be provided. Otherwise, the operation fails with a <code>ValidationException</code> error.</p>
    #   @return [Boolean]
    class DeleteResourceExplorerSetupInput < Struct.new(
      nil,
      :region_list,
      :delete_in_all_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier for the deletion task. Use this ID with <code>GetResourceExplorerSetup</code> to monitor the progress of the deletion operation.</p>
    #   @return [String]
    class DeleteResourceExplorerSetupOutput < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you want to delete.</p>
    #   @return [String]
    class DeleteViewOperationInput < Struct.new(
      nil,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you successfully deleted.</p>
    #   @return [String]
    class DeleteViewOperationOutput < Struct.new(
      nil,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an error that occurred during a Resource Explorer setup operation.</p>
    # @!attribute code
    #   <p>The error code that identifies the type of error that occurred.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable description of the error that occurred.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute org_configuration
    #   <p>Details about the organization, and whether configuration is <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [Types::OrgConfiguration]
    class GetAccountLevelServiceConfigurationOutput < Struct.new(
      nil,
      :org_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that is the current default for the Amazon Web Services Region in which you called this operation.</p>
    #   @return [String]
    class GetDefaultViewOperationOutput < Struct.new(
      nil,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the index in this Region. For information about the aggregator index and how it differs from a local index, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html">Turning on cross-Region search by creating an aggregator index</a>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the index in this Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute replicating_from
    #   <p>This response value is present only if this index is <code>Type=AGGREGATOR</code>.</p> <p>A list of the Amazon Web Services Regions that replicate their content to the index in this Region.</p>
    #   @return [Array<String>]
    # @!attribute replicating_to
    #   <p>This response value is present only if this index is <code>Type=LOCAL</code>.</p> <p>The Amazon Web Services Region that contains the aggregator index, if one exists. If an aggregator index does exist then the Region in which you called this operation replicates its index information to the Region specified in this response value. </p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time when the index was originally created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time when the index was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tag key and value pairs that are attached to the index.</p>
    #   @return [Hash<String, String>]
    class GetIndexOperationOutput < Struct.new(
      nil,
      :arn,
      :type,
      :state,
      :replicating_from,
      :replicating_to,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_view_arn
    #   <p>The Amazon resource name (ARN) of the managed view.</p>
    #   @return [String]
    class GetManagedViewInput < Struct.new(
      nil,
      :managed_view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_view
    #   <p>Details about the specified managed view. </p>
    #   @return [Types::ManagedView]
    class GetManagedViewOutput < Struct.new(
      nil,
      :managed_view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The unique identifier of the setup task to retrieve status information for. This ID is returned by <code>CreateResourceExplorerSetup</code> or <code>DeleteResourceExplorerSetup</code> operations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Region status results to return in a single response. Valid values are between <code>1</code> and <code>100</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous <code>GetResourceExplorerSetup</code> response. Use this token to retrieve the next set of results.</p>
    #   @return [String]
    class GetResourceExplorerSetupInput < Struct.new(
      nil,
      :task_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>A list of Region status objects that describe the current state of Resource Explorer configuration in each Region.</p>
    #   @return [Array<Types::RegionStatus>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent <code>GetResourceExplorerSetup</code> request to retrieve the next set of results.</p>
    #   @return [String]
    class GetResourceExplorerSetupOutput < Struct.new(
      nil,
      :regions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Resource Explorer index in the current Region.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the index. Valid values are <code>LOCAL</code> (contains resources from the current Region only) or <code>AGGREGATOR</code> (contains replicated resource information from all Regions).</p>
    #   @return [String]
    class GetServiceIndexOutput < Struct.new(
      nil,
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_view_arn
    #   <p>The Amazon Resource Name (ARN) of the service view to retrieve details for.</p>
    #   @return [String]
    class GetServiceViewInput < Struct.new(
      nil,
      :service_view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>A <code>ServiceView</code> object that contains the details and configuration of the requested service view.</p>
    #   @return [Types::ServiceView]
    class GetServiceViewOutput < Struct.new(
      nil,
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you want information about.</p>
    #   @return [String]
    class GetViewOperationInput < Struct.new(
      nil,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>A structure that contains the details for the requested view.</p>
    #   @return [Types::View]
    # @!attribute tags
    #   <p>Tag key and value pairs that are attached to the view.</p>
    #   @return [Hash<String, String>]
    class GetViewOperationOutput < Struct.new(
      nil,
      :view,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an additional property that describes a resource, that you can optionally include in the view. This lets you view that property in search results, and filter your search results based on the value of the property.</p>
    # @!attribute name
    #   <p>The name of the property that is included in this view.</p> <p>You can specify the following property names for this field:</p> <ul> <li> <p> <code>tags</code> </p> </li> </ul>
    #   @return [String]
    class IncludedProperty < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An index is the data store used by Amazon Web Services Resource Explorer to hold information about your Amazon Web Services resources that the service discovers. Creating an index in an Amazon Web Services Region turns on Resource Explorer and lets it discover your resources.</p> <p>By default, an index is <i>local</i>, meaning that it contains information about resources in only the same Region as the index. However, you can promote the index of one Region in the account by calling <a>UpdateIndexType</a> to convert it into an aggregator index. The aggregator index receives a replicated copy of the index information from all other Regions where Resource Explorer is turned on. This allows search operations in that Region to return results from all Regions in the account.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region in which the index exists.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of index. It can be one of the following values:</p> <ul> <li> <p> <code>LOCAL</code> – The index contains information about resources from only the same Amazon Web Services Region.</p> </li> <li> <p> <code>AGGREGATOR</code> – Resource Explorer replicates copies of the indexed information about resources in all other Amazon Web Services Regions to the aggregator index. This lets search results in the Region with the aggregator index to include resources from all Regions in the account where Resource Explorer is turned on.</p> </li> </ul>
    #   @return [String]
    class Index < Struct.new(
      nil,
      :region,
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of a Resource Explorer index operation in a specific Region.</p>
    # @!attribute status
    #   <p>The current status of the index operation. Valid values are <code>SUCCEEDED</code>, <code>FAILED</code>, <code>IN_PROGRESS</code>, or <code>SKIPPED</code>.</p>
    #   @return [String]
    # @!attribute index
    #   <p>An index is the data store used by Amazon Web Services Resource Explorer to hold information about your Amazon Web Services resources that the service discovers. Creating an index in an Amazon Web Services Region turns on Resource Explorer and lets it discover your resources.</p> <p>By default, an index is <i>local</i>, meaning that it contains information about resources in only the same Region as the index. However, you can promote the index of one Region in the account by calling <a>UpdateIndexType</a> to convert it into an aggregator index. The aggregator index receives a replicated copy of the index information from all other Regions where Resource Explorer is turned on. This allows search operations in that Region to return results from all Regions in the account.</p>
    #   @return [Types::Index]
    # @!attribute error_details
    #   <p>Details about any error that occurred during the index operation.</p>
    #   @return [Types::ErrorDetails]
    class IndexStatus < Struct.new(
      nil,
      :status,
      :index,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because of internal service error. Try your request again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id_list
    #   <p>The account IDs will limit the output to only indexes from these accounts.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListIndexesForMembersInput < Struct.new(
      nil,
      :account_id_list,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute indexes
    #   <p>A structure that contains the details and status of each index.</p>
    #   @return [Array<Types::MemberIndex>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListIndexesForMembersOutput < Struct.new(
      nil,
      :indexes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>If specified, limits the output to only indexes of the specified Type, either <code>LOCAL</code> or <code>AGGREGATOR</code>.</p> <p>Use this option to discover the aggregator index for your account.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>If specified, limits the response to only information about the index in the specified list of Amazon Web Services Regions.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListIndexesOperationInput < Struct.new(
      nil,
      :type,
      :regions,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute indexes
    #   <p>A structure that contains the details and status of each index.</p>
    #   @return [Array<Types::Index>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListIndexesOperationOutput < Struct.new(
      nil,
      :indexes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute service_principal
    #   <p>Specifies a service principal name. If specified, then the operation only returns the managed views that are managed by the input service. </p>
    #   @return [String]
    class ListManagedViewsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :service_principal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute managed_views
    #   <p>The list of managed views available in the Amazon Web Services Region in which you called this operation. </p>
    #   @return [Array<String>]
    class ListManagedViewsOutput < Struct.new(
      nil,
      :next_token,
      :managed_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>An array of strings that specify which resources are included in the results of queries made using this view. When you use this view in a <a>Search</a> operation, the filter string is combined with the search's <code>QueryString</code> parameter using a logical <code>AND</code> operator.</p> <p>For information about the supported syntax, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query reference for Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p> <important> <p>This query string in the context of this operation supports only <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters">filter prefixes</a> with optional <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators">operators</a>. It doesn't support free-form text. For example, the string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is <i>not</i> tagged with a key <code>Stage</code> that has the value <code>prod</code>.</p> </important>
    #   @return [Types::SearchFilter]
    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    # @!attribute view_arn
    #   <p>Specifies the Amazon resource name (ARN) of the view to use for the query. If you don't specify a value for this parameter, then the operation automatically uses the default view for the Amazon Web Services Region in which you called this operation. If the Region either doesn't have a default view or if you don't have permission to use the default view, then the operation fails with a 401 Unauthorized exception.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p> <note> <p>The <code>ListResources</code> operation does not generate a <code>NextToken</code> if you set <code>MaxResults</code> to 1000. </p> </note>
    #   @return [String]
    class ListResourcesInput < Struct.new(
      nil,
      :filters,
      :max_results,
      :view_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>The list of structures that describe the resources that match the query. </p>
    #   @return [Array<Types::Resource>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute view_arn
    #   <p>The Amazon resource name (ARN) of the view that this operation used to perform the search. </p>
    #   @return [String]
    class ListResourcesOutput < Struct.new(
      nil,
      :resources,
      :next_token,
      :view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>A list of Amazon Web Services Regions to include in the search for indexes. If not specified, indexes from all Regions are returned.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of index results to return in a single response. Valid values are between <code>1</code> and <code>100</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous <code>ListServiceIndexes</code> response. Use this token to retrieve the next set of results.</p>
    #   @return [String]
    class ListServiceIndexesInput < Struct.new(
      nil,
      :regions,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute indexes
    #   <p>A list of <code>Index</code> objects that describe the Resource Explorer indexes found in the specified Regions.</p>
    #   @return [Array<Types::Index>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent <code>ListServiceIndexes</code> request to retrieve the next set of results.</p>
    #   @return [String]
    class ListServiceIndexesOutput < Struct.new(
      nil,
      :indexes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of service view results to return in a single response. Valid values are between <code>1</code> and <code>50</code>.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous <code>ListServiceViews</code> response. Use this token to retrieve the next set of results.</p>
    #   @return [String]
    class ListServiceViewsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent <code>ListServiceViews</code> request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute service_views
    #   <p>A list of Amazon Resource Names (ARNs) for the service views available in the current Amazon Web Services account.</p>
    #   @return [Array<String>]
    class ListServiceViewsOutput < Struct.new(
      nil,
      :next_token,
      :service_views,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of streaming access entries to return in the response. If there are more results available, the response includes a NextToken value that you can use in a subsequent call to get the next set of results. The value must be between 1 and 50. If you don't specify a value, the default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListStreamingAccessForServicesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_access_for_services
    #   <p>A list of Amazon Web Services services that have streaming access to your Resource Explorer data, including details about when the access was granted.</p>
    #   @return [Array<Types::StreamingAccessDetails>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListStreamingAccessForServicesOutput < Struct.new(
      nil,
      :streaming_access_for_services,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    class ListSupportedResourceTypesOperationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_types
    #   <p>The list of resource types supported by Resource Explorer.</p>
    #   @return [Array<Types::SupportedResourceType>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListSupportedResourceTypesOperationOutput < Struct.new(
      nil,
      :resource_types,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view or index that you want to attach tags to.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tag key and value pairs that you want to attach to the specified view or index.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOperationOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    class ListViewsOperationInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute views
    #   <p>The list of views available in the Amazon Web Services Region in which you called this operation.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class ListViewsOperationOutput < Struct.new(
      nil,
      :views,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon Web Services-managed view is how other Amazon Web Services services can access resource information indexed by Resource Explorer for your Amazon Web Services account or organization with your consent. For more information, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html">Managed views</a>. </p>
    # @!attribute managed_view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the managed view.</p>
    #   @return [String]
    # @!attribute managed_view_name
    #   <p>The name of the managed view. </p>
    #   @return [String]
    # @!attribute trusted_service
    #   <p>The service principal of the Amazon Web Services service that created and manages the managed view. </p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time when this managed view was last modified.</p>
    #   @return [Time]
    # @!attribute owner
    #   <p>The Amazon Web Services account that owns this managed view.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of an Amazon Web Services account or organization that specifies whether this managed view includes resources from only the specified Amazon Web Services account or all accounts in the specified organization. </p>
    #   @return [String]
    # @!attribute included_properties
    #   <p>A structure that contains additional information about the managed view.</p>
    #   @return [Array<Types::IncludedProperty>]
    # @!attribute filters
    #   <p>A search filter defines which resources can be part of a search query result set.</p>
    #   @return [Types::SearchFilter]
    # @!attribute resource_policy
    #   <p>The resource policy that defines access to the managed view. To learn more about this policy, review <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html">Managed views</a>.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the managed view. </p>
    #   @return [String]
    class ManagedView < Struct.new(
      nil,
      :managed_view_arn,
      :managed_view_name,
      :trusted_service,
      :last_updated_at,
      :owner,
      :scope,
      :included_properties,
      :filters,
      :resource_policy,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An index is the data store used by Amazon Web Services Resource Explorer to hold information about your Amazon Web Services resources that the service discovers. </p>
    # @!attribute account_id
    #   <p>The account ID for the index.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region in which the index exists.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of index. It can be one of the following values: </p> <ul> <li> <p> <code>LOCAL</code> – The index contains information about resources from only the same Amazon Web Services Region.</p> </li> <li> <p> <code>AGGREGATOR</code> – Resource Explorer replicates copies of the indexed information about resources in all other Amazon Web Services Regions to the aggregator index. This lets search results in the Region with the aggregator index to include resources from all Regions in the account where Resource Explorer is turned on.</p> </li> </ul>
    #   @return [String]
    class MemberIndex < Struct.new(
      nil,
      :account_id,
      :region,
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is a structure that contains the status of Amazon Web Services service access, and whether you have a valid service-linked role to enable multi-account search for your organization.</p>
    # @!attribute aws_service_access_status
    #   <p>This value displays whether your Amazon Web Services service access is <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute service_linked_role
    #   <p>This value shows whether or not you have a valid a service-linked role required to start the multi-account search feature.</p>
    #   @return [String]
    class OrgConfiguration < Struct.new(
      nil,
      :aws_service_access_status,
      :service_linked_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of Resource Explorer configuration in a specific Amazon Web Services Region.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region for which this status information applies.</p>
    #   @return [String]
    # @!attribute index
    #   <p>The status information for the Resource Explorer index in this Region.</p>
    #   @return [Types::IndexStatus]
    # @!attribute view
    #   <p>The status information for the Resource Explorer view in this Region.</p>
    #   @return [Types::ViewStatus]
    class RegionStatus < Struct.new(
      nil,
      :region,
      :index,
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource in Amazon Web Services that Amazon Web Services Resource Explorer has discovered, and for which it has stored information in the index of the Amazon Web Services Region that contains the resource.</p>
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the resource.</p>
    #   @return [String]
    # @!attribute owning_account_id
    #   <p>The Amazon Web Services account that owns the resource.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region in which the resource was created and exists.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The Amazon Web Services service that owns the resource and is responsible for creating and updating it.</p>
    #   @return [String]
    # @!attribute cfn_resource_type
    #   <p>The CloudFormation resource type identifier for the resource, such as <code>AWS::EC2::Instance</code> or <code>AWS::S3::Bucket</code>.</p>
    #   @return [String]
    # @!attribute last_reported_at
    #   <p>The date and time that Resource Explorer last queried this resource and updated the index with the latest information about the resource.</p>
    #   @return [Time]
    # @!attribute properties
    #   <p>A structure with additional type-specific details about the resource. These properties can be added by turning on integration between Resource Explorer and other Amazon Web Services services.</p>
    #   @return [Array<Types::ResourceProperty>]
    class Resource < Struct.new(
      nil,
      :arn,
      :owning_account_id,
      :region,
      :resource_type,
      :service,
      :cfn_resource_type,
      :last_reported_at,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the number of results that match the query. At this time, Amazon Web Services Resource Explorer doesn't count more than 1,000 matches for any query. This structure provides information about whether the query exceeded this limit.</p> <p>This field is included in every page when you paginate the results.</p>
    # @!attribute total_resources
    #   <p>The number of resources that match the search query. This value can't exceed 1,000. If there are more than 1,000 resources that match the query, then only 1,000 are counted and the <code>Complete</code> field is set to false. We recommend that you refine your query to return a smaller number of results.</p>
    #   @return [Integer]
    # @!attribute complete
    #   <p>Indicates whether the <code>TotalResources</code> value represents an exhaustive count of search results.</p> <ul> <li> <p>If <code>True</code>, it indicates that the search was exhaustive. Every resource that matches the query was counted.</p> </li> <li> <p>If <code>False</code>, then the search reached the limit of 1,000 matching results, and stopped counting.</p> </li> </ul>
    #   @return [Boolean]
    class ResourceCount < Struct.new(
      nil,
      :total_resources,
      :complete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You specified a resource that doesn't exist. Check the ID or ARN that you used to identity the resource, and try again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a property of a resource.</p>
    # @!attribute name
    #   <p>The name of this property of the resource.</p>
    #   @return [String]
    # @!attribute last_reported_at
    #   <p>The date and time that the information about this resource property was last updated.</p>
    #   @return [Time]
    # @!attribute data
    #   <p>Details about this property. The content of this field is a JSON object that varies based on the resource type.</p>
    #   @return [JSON]
    class ResourceProperty < Struct.new(
      nil,
      :name,
      :last_reported_at,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A search filter defines which resources can be part of a search query result set.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute filter_string
    #   <p>The string that contains the search keywords, prefixes, and operators to control the results that can be returned by a <a>Search</a> operation. For more details, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html">Search query syntax</a>.</p>
    #   @return [String]
    class SearchFilter < Struct.new(
      nil,
      :filter_string,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_string
    #   <p>A string that includes keywords and filters that specify the resources that you want to include in the results.</p> <p>For the complete syntax supported by the <code>QueryString</code> parameter, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query syntax reference for Resource Explorer</a>.</p> <p>The search is completely case insensitive. You can specify an empty string to return all results up to the limit of 1,000 total results.</p> <note> <p>The operation can return only the first 1,000 results. If the resource you want is not included, then use a different value for <code>QueryString</code> to refine the results.</p> </note>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value appropriate to the operation. If additional items exist beyond those included in the current response, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results.</p> <note> <p>An API operation can return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p> </note>
    #   @return [Integer]
    # @!attribute view_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view to use for the query. If you don't specify a value for this parameter, then the operation automatically uses the default view for the Amazon Web Services Region in which you called this operation. If the Region either doesn't have a default view or if you don't have permission to use the default view, then the operation fails with a <code>401 Unauthorized</code> exception.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    class SearchOperationInput < Struct.new(
      nil,
      :query_string,
      :max_results,
      :view_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>The list of structures that describe the resources that match the query.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. The pagination tokens expire after 24 hours.</p>
    #   @return [String]
    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that this operation used to perform the search.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of resources that match the query.</p>
    #   @return [Types::ResourceCount]
    class SearchOperationOutput < Struct.new(
      nil,
      :resources,
      :next_token,
      :view_arn,
      :count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the service-linked recorder paired with a service view.</p>
    # @!attribute service_principal
    #   <p>The service principal of the Amazon Web Services service that owns the service-linked recorder, such as <code>observabilityadmin.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute recorder_name
    #   <p>The name of the service-linked recorder, such as <code>AWSConfigurationRecorderForObservabilityAdmin</code>.</p>
    #   @return [String]
    # @!attribute recorder_type
    #   <p>The type of the recorder. Valid values are <code>AWS</code> and <code>THIRD_PARTY</code>.</p>
    #   @return [String]
    class ServiceLinkedRecorderInfo < Struct.new(
      nil,
      :service_principal,
      :recorder_name,
      :recorder_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because it exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute name
    #   <p>The name of the service quota that was exceeded by the request.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The current value for the quota that the request tried to exceed.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration and properties of a Resource Explorer service view.</p>
    # @!attribute service_view_arn
    #   <p>The Amazon Resource Name (ARN) of the service view.</p>
    #   @return [String]
    # @!attribute service_view_name
    #   <p>The name of the service view.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A search filter defines which resources can be part of a search query result set.</p>
    #   @return [Types::SearchFilter]
    # @!attribute included_properties
    #   <p>A list of additional resource properties that are included in this view for search and filtering purposes.</p>
    #   @return [Array<Types::IncludedProperty>]
    # @!attribute streaming_access_for_service
    #   <p>The Amazon Web Services service that has streaming access to this view's data.</p>
    #   @return [String]
    # @!attribute scope_type
    #   <p>The scope type of the service view, which determines what resources are included.</p>
    #   @return [String]
    # @!attribute service_linked_recorder
    #   <p>Information about the service-linked recorder associated with this service view. When a service view is paired with a service-linked recorder, Resource Explorer uses the recorder's resource type list to filter search results and streaming data.</p>
    #   @return [Types::ServiceLinkedRecorderInfo]
    class ServiceView < Struct.new(
      nil,
      :service_view_arn,
      :service_view_name,
      :filters,
      :included_properties,
      :streaming_access_for_service,
      :scope_type,
      :service_linked_recorder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an Amazon Web Services service that has been granted streaming access to your Resource Explorer data.</p>
    # @!attribute service_principal
    #   <p>The service principal of the Amazon Web Services service that has streaming access to your Resource Explorer data. A service principal is a unique identifier for an Amazon Web Services service.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when streaming access was granted to the Amazon Web Services service, in ISO 8601 format.</p>
    #   @return [Time]
    class StreamingAccessDetails < Struct.new(
      nil,
      :service_principal,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a resource type supported by Amazon Web Services Resource Explorer.</p>
    # @!attribute service
    #   <p>The Amazon Web Services service that is associated with the resource type. This is the primary service that lets you create and interact with resources of this type.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The unique identifier of the resource type.</p>
    #   @return [String]
    # @!attribute cfn_resource_types
    #   <p>The CloudFormation resource type identifiers for this resource type, such as <code>AWS::EC2::Instance</code>.</p>
    #   @return [Array<String>]
    class SupportedResourceType < Struct.new(
      nil,
      :service,
      :resource_type,
      :cfn_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the view or index that you want to attach tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key and value pairs that you want to attach to the specified view or index.</p>
    #   @return [Hash<String, String>]
    class TagResourceOperationInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because you exceeded a rate limit for this operation. For more information, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/quotas.html">Quotas for Resource Explorer</a>.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The principal making the request isn't permitted to perform the operation.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the view or index that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys for the tags that you want to remove from the specified view or index.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index that you want to update.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the index. To understand the difference between <code>LOCAL</code> and <code>AGGREGATOR</code>, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html">Turning on cross-Region search</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p>
    #   @return [String]
    class UpdateIndexTypeOperationInput < Struct.new(
      nil,
      :arn,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the index that you updated.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the type of the specified index after the operation completes.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Indicates the state of the request to update the index. This operation is asynchronous. Call the <a>GetIndex</a> operation to check for changes.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and timestamp when the index was last updated.</p>
    #   @return [Time]
    class UpdateIndexTypeOperationOutput < Struct.new(
      nil,
      :arn,
      :type,
      :state,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view that you want to modify.</p>
    #   @return [String]
    # @!attribute included_properties
    #   <p>Specifies optional fields that you want included in search results from this view. It is a list of objects that each describe a field to include.</p> <p>The default is an empty list, with no optional fields included in the results.</p>
    #   @return [Array<Types::IncludedProperty>]
    # @!attribute filters
    #   <p>An array of strings that specify which resources are included in the results of queries made using this view. When you use this view in a <a>Search</a> operation, the filter string is combined with the search's <code>QueryString</code> parameter using a logical <code>AND</code> operator.</p> <p>For information about the supported syntax, see <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html">Search query reference for Resource Explorer</a> in the <i>Amazon Web Services Resource Explorer User Guide</i>.</p> <important> <p>This query string in the context of this operation supports only <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-filters">filter prefixes</a> with optional <a href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/using-search-query-syntax.html#query-syntax-operators">operators</a>. It doesn't support free-form text. For example, the string <code>region:us* service:ec2 -tag:stage=prod</code> includes all Amazon EC2 resources in any Amazon Web Services Region that begins with the letters <code>us</code> and is <i>not</i> tagged with a key <code>Stage</code> that has the value <code>prod</code>.</p> </important>
    #   @return [Types::SearchFilter]
    class UpdateViewOperationInput < Struct.new(
      nil,
      :view_arn,
      :included_properties,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute view
    #   <p>Details about the view that you changed with this operation.</p>
    #   @return [Types::View]
    class UpdateViewOperationOutput < Struct.new(
      nil,
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You provided an invalid value for one of the operation's parameters. Check the syntax for the operation, and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute field_list
    #   <p>An array of the request fields that had validation errors.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that describes a request field with a validation error.</p>
    # @!attribute name
    #   <p>The name of the request field that had a validation error.</p>
    #   @return [String]
    # @!attribute validation_issue
    #   <p>The validation error caused by the request field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :validation_issue,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A view is a structure that defines a set of filters that provide a view into the information in the Amazon Web Services Resource Explorer index. The filters specify which information from the index is visible to the users of the view. For example, you can specify filters that include only resources that are tagged with the key "ENV" and the value "DEVELOPMENT" in the results returned by this view. You could also create a second view that includes only resources that are tagged with "ENV" and "PRODUCTION".</p>
    # @!attribute view_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of the view.</p>
    #   @return [String]
    # @!attribute view_name
    #   <p>The name of the view.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Amazon Web Services account that owns this view.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The date and time when this view was last modified.</p>
    #   @return [Time]
    # @!attribute scope
    #   <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon resource name (ARN)</a> of an Amazon Web Services account, an organization, or an organizational unit (OU) that specifies whether this view includes resources from only the specified Amazon Web Services account, all accounts in the specified organization, or all accounts in the specified OU.</p> <p>If not specified, the value defaults to the Amazon Web Services account used to call this operation.</p>
    #   @return [String]
    # @!attribute included_properties
    #   <p>A structure that contains additional information about the view.</p>
    #   @return [Array<Types::IncludedProperty>]
    # @!attribute filters
    #   <p>An array of <a>SearchFilter</a> objects that specify which resources can be included in the results of queries made using this view.</p>
    #   @return [Types::SearchFilter]
    class View < Struct.new(
      nil,
      :view_arn,
      :view_name,
      :owner,
      :last_updated_at,
      :scope,
      :included_properties,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the status of a Resource Explorer view operation in a specific Region.</p>
    # @!attribute status
    #   <p>The current status of the view operation. Valid values are <code>SUCCEEDED</code>, <code>FAILED</code>, <code>IN_PROGRESS</code>, or <code>SKIPPED</code>.</p>
    #   @return [String]
    # @!attribute view
    #   <p>A view is a structure that defines a set of filters that provide a view into the information in the Amazon Web Services Resource Explorer index. The filters specify which information from the index is visible to the users of the view. For example, you can specify filters that include only resources that are tagged with the key "ENV" and the value "DEVELOPMENT" in the results returned by this view. You could also create a second view that includes only resources that are tagged with "ENV" and "PRODUCTION".</p>
    #   @return [Types::View]
    # @!attribute error_details
    #   <p>Details about any error that occurred during the view operation.</p>
    #   @return [Types::ErrorDetails]
    class ViewStatus < Struct.new(
      nil,
      :status,
      :view,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
