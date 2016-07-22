# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ServiceCatalog
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :servicecatalog

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @!group API Operations

      # Retrieves information about a specified product.
      #
      # This operation is functionally identical to DescribeProductView except
      # that it takes as input `ProductId` instead of `ProductViewId`.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [required, String] :id
      #   The `ProductId` of the product to describe.
      # @return [Types::DescribeProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeProductOutput#product_view_summary #ProductViewSummary} => Types::ProductViewSummary
      #   * {Types::DescribeProductOutput#provisioning_artifacts #ProvisioningArtifacts} => Array&lt;Types::ProvisioningArtifact&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_product({
      #     accept_language: "AcceptLanguage",
      #     id: "Id", # required
      #   })
      #
      # @example Response structure
      #   resp.product_view_summary.id #=> String
      #   resp.product_view_summary.product_id #=> String
      #   resp.product_view_summary.name #=> String
      #   resp.product_view_summary.owner #=> String
      #   resp.product_view_summary.short_description #=> String
      #   resp.product_view_summary.type #=> String
      #   resp.product_view_summary.distributor #=> String
      #   resp.product_view_summary.has_default_path #=> Boolean
      #   resp.product_view_summary.support_email #=> String
      #   resp.product_view_summary.support_description #=> String
      #   resp.product_view_summary.support_url #=> String
      #   resp.provisioning_artifacts #=> Array
      #   resp.provisioning_artifacts[0].id #=> String
      #   resp.provisioning_artifacts[0].name #=> String
      #   resp.provisioning_artifacts[0].description #=> String
      #   resp.provisioning_artifacts[0].created_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_product(params = {}, options = {})
        req = build_request(:describe_product, params)
        req.send_request(options)
      end

      # Retrieves information about a specified product.
      #
      # This operation is functionally identical to DescribeProduct except
      # that it takes as input `ProductViewId` instead of `ProductId`.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [required, String] :id
      #   The `ProductViewId` of the product to describe.
      # @return [Types::DescribeProductViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeProductViewOutput#product_view_summary #ProductViewSummary} => Types::ProductViewSummary
      #   * {Types::DescribeProductViewOutput#provisioning_artifacts #ProvisioningArtifacts} => Array&lt;Types::ProvisioningArtifact&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_product_view({
      #     accept_language: "AcceptLanguage",
      #     id: "Id", # required
      #   })
      #
      # @example Response structure
      #   resp.product_view_summary.id #=> String
      #   resp.product_view_summary.product_id #=> String
      #   resp.product_view_summary.name #=> String
      #   resp.product_view_summary.owner #=> String
      #   resp.product_view_summary.short_description #=> String
      #   resp.product_view_summary.type #=> String
      #   resp.product_view_summary.distributor #=> String
      #   resp.product_view_summary.has_default_path #=> Boolean
      #   resp.product_view_summary.support_email #=> String
      #   resp.product_view_summary.support_description #=> String
      #   resp.product_view_summary.support_url #=> String
      #   resp.provisioning_artifacts #=> Array
      #   resp.provisioning_artifacts[0].id #=> String
      #   resp.provisioning_artifacts[0].name #=> String
      #   resp.provisioning_artifacts[0].description #=> String
      #   resp.provisioning_artifacts[0].created_time #=> Time
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_product_view(params = {}, options = {})
        req = build_request(:describe_product_view, params)
        req.send_request(options)
      end

      # Provides information about parameters required to provision a
      # specified product in a specified manner. Use this operation to obtain
      # the list of `ProvisioningArtifactParameters` parameters available to
      # call the ProvisionProduct operation for the specified product.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [required, String] :product_id
      #   The identifier of the product.
      # @option params [required, String] :provisioning_artifact_id
      #   The provisioning artifact identifier for this product.
      # @option params [String] :path_id
      #   The identifier of the path for this product\'s provisioning. This
      #   value is optional if the product has a default path, and is required
      #   if there is more than one path for the specified product.
      # @return [Types::DescribeProvisioningParametersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_parameters #ProvisioningArtifactParameters} => Array&lt;Types::ProvisioningArtifactParameter&gt;
      #   * {Types::DescribeProvisioningParametersOutput#constraint_summaries #ConstraintSummaries} => Array&lt;Types::ConstraintSummary&gt;
      #   * {Types::DescribeProvisioningParametersOutput#usage_instructions #UsageInstructions} => Array&lt;Types::UsageInstruction&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_provisioning_parameters({
      #     accept_language: "AcceptLanguage",
      #     product_id: "Id", # required
      #     provisioning_artifact_id: "Id", # required
      #     path_id: "Id",
      #   })
      #
      # @example Response structure
      #   resp.provisioning_artifact_parameters #=> Array
      #   resp.provisioning_artifact_parameters[0].parameter_key #=> String
      #   resp.provisioning_artifact_parameters[0].default_value #=> String
      #   resp.provisioning_artifact_parameters[0].parameter_type #=> String
      #   resp.provisioning_artifact_parameters[0].is_no_echo #=> Boolean
      #   resp.provisioning_artifact_parameters[0].description #=> String
      #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values #=> Array
      #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values[0] #=> String
      #   resp.constraint_summaries #=> Array
      #   resp.constraint_summaries[0].type #=> String
      #   resp.constraint_summaries[0].description #=> String
      #   resp.usage_instructions #=> Array
      #   resp.usage_instructions[0].type #=> String
      #   resp.usage_instructions[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_provisioning_parameters(params = {}, options = {})
        req = build_request(:describe_provisioning_parameters, params)
        req.send_request(options)
      end

      # Retrieves a paginated list of the full details of a specific request.
      # Use this operation after calling a request operation
      # (ProvisionProduct, TerminateProvisionedProduct, or
      # UpdateProvisionedProduct).
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [required, String] :id
      #   The record identifier of the ProvisionedProduct object for which to
      #   retrieve output information. This is the `RecordDetail.RecordId`
      #   obtained from the request operation\'s response.
      # @option params [String] :page_token
      #   The page token of the first page retrieve. If null, this retrieves the
      #   first page of size `PageSize`.
      # @option params [Integer] :page_size
      #   The maximum number of items to return in the results. If more results
      #   exist than fit in the specified `PageSize`, the value of
      #   `NextPageToken` in the response is non-null.
      # @return [Types::DescribeRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeRecordOutput#record_detail #RecordDetail} => Types::RecordDetail
      #   * {Types::DescribeRecordOutput#record_outputs #RecordOutputs} => Array&lt;Types::RecordOutput&gt;
      #   * {Types::DescribeRecordOutput#next_page_token #NextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_record({
      #     accept_language: "AcceptLanguage",
      #     id: "Id", # required
      #     page_token: "PageToken",
      #     page_size: 1,
      #   })
      #
      # @example Response structure
      #   resp.record_detail.record_id #=> String
      #   resp.record_detail.provisioned_product_name #=> String
      #   resp.record_detail.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "ERROR"
      #   resp.record_detail.created_time #=> Time
      #   resp.record_detail.updated_time #=> Time
      #   resp.record_detail.provisioned_product_type #=> String
      #   resp.record_detail.record_type #=> String
      #   resp.record_detail.provisioned_product_id #=> String
      #   resp.record_detail.product_id #=> String
      #   resp.record_detail.provisioning_artifact_id #=> String
      #   resp.record_detail.path_id #=> String
      #   resp.record_detail.record_errors #=> Array
      #   resp.record_detail.record_errors[0].code #=> String
      #   resp.record_detail.record_errors[0].description #=> String
      #   resp.record_detail.record_tags #=> Array
      #   resp.record_detail.record_tags[0].key #=> String
      #   resp.record_detail.record_tags[0].value #=> String
      #   resp.record_outputs #=> Array
      #   resp.record_outputs[0].output_key #=> String
      #   resp.record_outputs[0].output_value #=> String
      #   resp.record_outputs[0].description #=> String
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def describe_record(params = {}, options = {})
        req = build_request(:describe_record, params)
        req.send_request(options)
      end

      # Returns a paginated list of all paths to a specified product. A path
      # is how the user has access to a specified product, and is necessary
      # when provisioning a product. A path also determines the constraints
      # put on the product.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [required, String] :product_id
      #   Identifies the product for which to retrieve `LaunchPathSummaries`
      #   information.
      # @option params [Integer] :page_size
      #   The maximum number of items to return in the results. If more results
      #   exist than fit in the specified `PageSize`, the value of
      #   `NextPageToken` in the response is non-null.
      # @option params [String] :page_token
      #   The page token of the first page retrieve. If null, this retrieves the
      #   first page of size `PageSize`.
      # @return [Types::ListLaunchPathsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListLaunchPathsOutput#launch_path_summaries #LaunchPathSummaries} => Array&lt;Types::LaunchPathSummary&gt;
      #   * {Types::ListLaunchPathsOutput#next_page_token #NextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_launch_paths({
      #     accept_language: "AcceptLanguage",
      #     product_id: "Id", # required
      #     page_size: 1,
      #     page_token: "PageToken",
      #   })
      #
      # @example Response structure
      #   resp.launch_path_summaries #=> Array
      #   resp.launch_path_summaries[0].id #=> String
      #   resp.launch_path_summaries[0].constraint_summaries #=> Array
      #   resp.launch_path_summaries[0].constraint_summaries[0].type #=> String
      #   resp.launch_path_summaries[0].constraint_summaries[0].description #=> String
      #   resp.launch_path_summaries[0].tags #=> Array
      #   resp.launch_path_summaries[0].tags[0].key #=> String
      #   resp.launch_path_summaries[0].tags[0].value #=> String
      #   resp.launch_path_summaries[0].name #=> String
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_launch_paths(params = {}, options = {})
        req = build_request(:list_launch_paths, params)
        req.send_request(options)
      end

      # Returns a paginated list of all performed requests, in the form of
      # RecordDetails objects that are filtered as specified.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [Types::ListRecordHistorySearchFilter] :search_filter
      #   (Optional) The filter to limit search results.
      # @option params [Integer] :page_size
      #   The maximum number of items to return in the results. If more results
      #   exist than fit in the specified `PageSize`, the value of
      #   `NextPageToken` in the response is non-null.
      # @option params [String] :page_token
      #   The page token of the first page retrieve. If null, this retrieves the
      #   first page of size `PageSize`.
      # @return [Types::ListRecordHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListRecordHistoryOutput#record_details #RecordDetails} => Array&lt;Types::RecordDetail&gt;
      #   * {Types::ListRecordHistoryOutput#next_page_token #NextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_record_history({
      #     accept_language: "AcceptLanguage",
      #     search_filter: {
      #       key: "SearchFilterKey",
      #       value: "SearchFilterValue",
      #     },
      #     page_size: 1,
      #     page_token: "PageToken",
      #   })
      #
      # @example Response structure
      #   resp.record_details #=> Array
      #   resp.record_details[0].record_id #=> String
      #   resp.record_details[0].provisioned_product_name #=> String
      #   resp.record_details[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "ERROR"
      #   resp.record_details[0].created_time #=> Time
      #   resp.record_details[0].updated_time #=> Time
      #   resp.record_details[0].provisioned_product_type #=> String
      #   resp.record_details[0].record_type #=> String
      #   resp.record_details[0].provisioned_product_id #=> String
      #   resp.record_details[0].product_id #=> String
      #   resp.record_details[0].provisioning_artifact_id #=> String
      #   resp.record_details[0].path_id #=> String
      #   resp.record_details[0].record_errors #=> Array
      #   resp.record_details[0].record_errors[0].code #=> String
      #   resp.record_details[0].record_errors[0].description #=> String
      #   resp.record_details[0].record_tags #=> Array
      #   resp.record_details[0].record_tags[0].key #=> String
      #   resp.record_details[0].record_tags[0].value #=> String
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_record_history(params = {}, options = {})
        req = build_request(:list_record_history, params)
        req.send_request(options)
      end

      # Requests a *Provision* of a specified product. A *ProvisionedProduct*
      # is a resourced instance for a product. For example, provisioning a
      # CloudFormation-template-backed product results in launching a
      # CloudFormation stack and all the underlying resources that come with
      # it.
      #
      # You can check the status of this request using the DescribeRecord
      # operation.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [required, String] :product_id
      #   The identifier of the product.
      # @option params [required, String] :provisioning_artifact_id
      #   The provisioning artifact identifier for this product.
      # @option params [String] :path_id
      #   The identifier of the path for this product\'s provisioning. This
      #   value is optional if the product has a default path, and is required
      #   if there is more than one path for the specified product.
      # @option params [required, String] :provisioned_product_name
      #   A user-friendly name to identify the ProvisionedProduct object. This
      #   value must be unique for the AWS account and cannot be updated after
      #   the product is provisioned.
      # @option params [Array<Types::ProvisioningParameter>] :provisioning_parameters
      #   Parameters specified by the administrator that are required for
      #   provisioning the product.
      # @option params [Array<Types::Tag>] :tags
      #   (Optional) A list of tags to use as provisioning options.
      # @option params [Array<String>] :notification_arns
      #   Passed to CloudFormation. The SNS topic ARNs to which to publish
      #   stack-related events.
      # @option params [required, String] :provision_token
      #   An idempotency token that uniquely identifies the provisioning
      #   request.
      # @return [Types::ProvisionProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ProvisionProductOutput#record_detail #RecordDetail} => Types::RecordDetail
      #
      # @example Request syntax with placeholder values
      #   resp = client.provision_product({
      #     accept_language: "AcceptLanguage",
      #     product_id: "Id", # required
      #     provisioning_artifact_id: "Id", # required
      #     path_id: "Id",
      #     provisioned_product_name: "ProvisionedProductName", # required
      #     provisioning_parameters: [
      #       {
      #         key: "ParameterKey",
      #         value: "ParameterValue",
      #       },
      #     ],
      #     tags: [
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       },
      #     ],
      #     notification_arns: ["NotificationArn"],
      #     provision_token: "IdempotencyToken", # required
      #   })
      #
      # @example Response structure
      #   resp.record_detail.record_id #=> String
      #   resp.record_detail.provisioned_product_name #=> String
      #   resp.record_detail.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "ERROR"
      #   resp.record_detail.created_time #=> Time
      #   resp.record_detail.updated_time #=> Time
      #   resp.record_detail.provisioned_product_type #=> String
      #   resp.record_detail.record_type #=> String
      #   resp.record_detail.provisioned_product_id #=> String
      #   resp.record_detail.product_id #=> String
      #   resp.record_detail.provisioning_artifact_id #=> String
      #   resp.record_detail.path_id #=> String
      #   resp.record_detail.record_errors #=> Array
      #   resp.record_detail.record_errors[0].code #=> String
      #   resp.record_detail.record_errors[0].description #=> String
      #   resp.record_detail.record_tags #=> Array
      #   resp.record_detail.record_tags[0].key #=> String
      #   resp.record_detail.record_tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def provision_product(params = {}, options = {})
        req = build_request(:provision_product, params)
        req.send_request(options)
      end

      # Returns a paginated list of all the ProvisionedProduct objects that
      # are currently available (not terminated).
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [Integer] :page_size
      #   The maximum number of items to return in the results. If more results
      #   exist than fit in the specified `PageSize`, the value of
      #   `NextPageToken` in the response is non-null.
      # @option params [String] :page_token
      #   The page token of the first page retrieve. If null, this retrieves the
      #   first page of size `PageSize`.
      # @return [Types::ScanProvisionedProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ScanProvisionedProductsOutput#provisioned_products #ProvisionedProducts} => Array&lt;Types::ProvisionedProductDetail&gt;
      #   * {Types::ScanProvisionedProductsOutput#next_page_token #NextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.scan_provisioned_products({
      #     accept_language: "AcceptLanguage",
      #     page_size: 1,
      #     page_token: "PageToken",
      #   })
      #
      # @example Response structure
      #   resp.provisioned_products #=> Array
      #   resp.provisioned_products[0].name #=> String
      #   resp.provisioned_products[0].arn #=> String
      #   resp.provisioned_products[0].type #=> String
      #   resp.provisioned_products[0].id #=> String
      #   resp.provisioned_products[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "ERROR"
      #   resp.provisioned_products[0].status_message #=> String
      #   resp.provisioned_products[0].created_time #=> Time
      #   resp.provisioned_products[0].idempotency_token #=> String
      #   resp.provisioned_products[0].last_record_id #=> String
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def scan_provisioned_products(params = {}, options = {})
        req = build_request(:scan_provisioned_products, params)
        req.send_request(options)
      end

      # Returns a paginated list all of the `Products` objects to which the
      # caller has access.
      #
      # The output of this operation can be used as input for other
      # operations, such as DescribeProductView.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [Hash<String,Array>] :filters
      #   (Optional) The list of filters with which to limit search results. If
      #   no search filters are specified, the output is all the products to
      #   which the calling user has access.
      # @option params [Integer] :page_size
      #   The maximum number of items to return in the results. If more results
      #   exist than fit in the specified `PageSize`, the value of
      #   `NextPageToken` in the response is non-null.
      # @option params [String] :sort_by
      #   (Optional) The sort field specifier. If no value is specified, results
      #   are not sorted.
      # @option params [String] :sort_order
      #   (Optional) The sort order specifier. If no value is specified, results
      #   are not sorted.
      # @option params [String] :page_token
      #   The page token of the first page retrieve. If null, this retrieves the
      #   first page of size `PageSize`.
      # @return [Types::SearchProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::SearchProductsOutput#product_view_summaries #ProductViewSummaries} => Array&lt;Types::ProductViewSummary&gt;
      #   * {Types::SearchProductsOutput#product_view_aggregations #ProductViewAggregations} => Hash&lt;String,Array&lt;Types::ProductViewAggregationValue&gt;&gt;
      #   * {Types::SearchProductsOutput#next_page_token #NextPageToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.search_products({
      #     accept_language: "AcceptLanguage",
      #     filters: {
      #       "FullTextSearch" => ["ProductViewFilterValue"],
      #     },
      #     page_size: 1,
      #     sort_by: "Title", # accepts Title, VersionCount, CreationDate
      #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
      #     page_token: "PageToken",
      #   })
      #
      # @example Response structure
      #   resp.product_view_summaries #=> Array
      #   resp.product_view_summaries[0].id #=> String
      #   resp.product_view_summaries[0].product_id #=> String
      #   resp.product_view_summaries[0].name #=> String
      #   resp.product_view_summaries[0].owner #=> String
      #   resp.product_view_summaries[0].short_description #=> String
      #   resp.product_view_summaries[0].type #=> String
      #   resp.product_view_summaries[0].distributor #=> String
      #   resp.product_view_summaries[0].has_default_path #=> Boolean
      #   resp.product_view_summaries[0].support_email #=> String
      #   resp.product_view_summaries[0].support_description #=> String
      #   resp.product_view_summaries[0].support_url #=> String
      #   resp.product_view_aggregations #=> Hash
      #   resp.product_view_aggregations["ProductViewAggregationType"] #=> Array
      #   resp.product_view_aggregations["ProductViewAggregationType"][0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
      #   resp.product_view_aggregations["ProductViewAggregationType"][0].approximate_count #=> Integer
      #   resp.next_page_token #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def search_products(params = {}, options = {})
        req = build_request(:search_products, params)
        req.send_request(options)
      end

      # Requests termination of an existing ProvisionedProduct object. If
      # there are `Tags` associated with the object, they are terminated when
      # the ProvisionedProduct object is terminated.
      #
      # This operation does not delete any records associated with the
      # ProvisionedProduct object.
      #
      # You can check the status of this request using the DescribeRecord
      # operation.
      # @option params [String] :provisioned_product_name
      #   The name of the ProvisionedProduct object to terminate. You must
      #   specify either `ProvisionedProductName` or `ProvisionedProductId`, but
      #   not both.
      # @option params [String] :provisioned_product_id
      #   The identifier of the ProvisionedProduct object to terminate. You must
      #   specify either `ProvisionedProductName` or `ProvisionedProductId`, but
      #   not both.
      # @option params [required, String] :terminate_token
      #   An idempotency token that uniquely identifies the termination request.
      #   This token is only valid during the termination process. After the
      #   ProvisionedProduct object is terminated, further requests to terminate
      #   the same ProvisionedProduct object always return **ResourceNotFound**
      #   regardless of the value of `TerminateToken`.
      # @option params [Boolean] :ignore_errors
      #   Optional Boolean parameter. If set to true, AWS Service Catalog stops
      #   managing the specified ProvisionedProduct object even if it cannot
      #   delete the underlying resources.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @return [Types::TerminateProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::TerminateProvisionedProductOutput#record_detail #RecordDetail} => Types::RecordDetail
      #
      # @example Request syntax with placeholder values
      #   resp = client.terminate_provisioned_product({
      #     provisioned_product_name: "ProvisionedProductNameOrArn",
      #     provisioned_product_id: "Id",
      #     terminate_token: "IdempotencyToken", # required
      #     ignore_errors: false,
      #     accept_language: "AcceptLanguage",
      #   })
      #
      # @example Response structure
      #   resp.record_detail.record_id #=> String
      #   resp.record_detail.provisioned_product_name #=> String
      #   resp.record_detail.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "ERROR"
      #   resp.record_detail.created_time #=> Time
      #   resp.record_detail.updated_time #=> Time
      #   resp.record_detail.provisioned_product_type #=> String
      #   resp.record_detail.record_type #=> String
      #   resp.record_detail.provisioned_product_id #=> String
      #   resp.record_detail.product_id #=> String
      #   resp.record_detail.provisioning_artifact_id #=> String
      #   resp.record_detail.path_id #=> String
      #   resp.record_detail.record_errors #=> Array
      #   resp.record_detail.record_errors[0].code #=> String
      #   resp.record_detail.record_errors[0].description #=> String
      #   resp.record_detail.record_tags #=> Array
      #   resp.record_detail.record_tags[0].key #=> String
      #   resp.record_detail.record_tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def terminate_provisioned_product(params = {}, options = {})
        req = build_request(:terminate_provisioned_product, params)
        req.send_request(options)
      end

      # Requests updates to the configuration of an existing
      # ProvisionedProduct object. If there are tags associated with the
      # object, they cannot be updated or added with this operation. Depending
      # on the specific updates requested, this operation may update with no
      # interruption, with some interruption, or replace the
      # ProvisionedProduct object entirely.
      #
      # You can check the status of this request using the DescribeRecord
      # operation.
      # @option params [String] :accept_language
      #   Optional language code. Supported language codes are as follows:
      #
      #   \"en\" (English)
      #
      #   \"jp\" (Japanese)
      #
      #   \"zh\" (Chinese)
      #
      #   If no code is specified, \"en\" is used as the default.
      # @option params [String] :provisioned_product_name
      #   The updated name of the ProvisionedProduct object . You must specify
      #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
      #   both.
      # @option params [String] :provisioned_product_id
      #   The identifier of the ProvisionedProduct object to update. You must
      #   specify either `ProvisionedProductName` or `ProvisionedProductId`, but
      #   not both.
      # @option params [String] :product_id
      #   The identifier of the ProvisionedProduct object.
      # @option params [String] :provisioning_artifact_id
      #   The provisioning artifact identifier for this product.
      # @option params [String] :path_id
      #   The identifier of the path to use in the updated ProvisionedProduct
      #   object. This value is optional if the product has a default path, and
      #   is required if there is more than one path for the specified product.
      # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
      #   A list of `ProvisioningParameter` objects used to update the
      #   ProvisionedProduct object.
      # @option params [required, String] :update_token
      #   The idempotency token that uniquely identifies the provisioning update
      #   request.
      # @return [Types::UpdateProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::UpdateProvisionedProductOutput#record_detail #RecordDetail} => Types::RecordDetail
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_provisioned_product({
      #     accept_language: "AcceptLanguage",
      #     provisioned_product_name: "ProvisionedProductNameOrArn",
      #     provisioned_product_id: "Id",
      #     product_id: "Id",
      #     provisioning_artifact_id: "Id",
      #     path_id: "Id",
      #     provisioning_parameters: [
      #       {
      #         key: "ParameterKey",
      #         value: "ParameterValue",
      #         use_previous_value: false,
      #       },
      #     ],
      #     update_token: "IdempotencyToken", # required
      #   })
      #
      # @example Response structure
      #   resp.record_detail.record_id #=> String
      #   resp.record_detail.provisioned_product_name #=> String
      #   resp.record_detail.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "ERROR"
      #   resp.record_detail.created_time #=> Time
      #   resp.record_detail.updated_time #=> Time
      #   resp.record_detail.provisioned_product_type #=> String
      #   resp.record_detail.record_type #=> String
      #   resp.record_detail.provisioned_product_id #=> String
      #   resp.record_detail.product_id #=> String
      #   resp.record_detail.provisioning_artifact_id #=> String
      #   resp.record_detail.path_id #=> String
      #   resp.record_detail.record_errors #=> Array
      #   resp.record_detail.record_errors[0].code #=> String
      #   resp.record_detail.record_errors[0].description #=> String
      #   resp.record_detail.record_tags #=> Array
      #   resp.record_detail.record_tags[0].key #=> String
      #   resp.record_detail.record_tags[0].value #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_provisioned_product(params = {}, options = {})
        req = build_request(:update_provisioned_product, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
