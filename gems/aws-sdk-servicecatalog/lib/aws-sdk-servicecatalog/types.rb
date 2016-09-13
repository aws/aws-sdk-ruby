# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module ServiceCatalog
    module Types

      # An administrator-specified constraint to apply when provisioning a
      # product.
      class ConstraintSummary < Aws::Structure.new(
        :type,
        :description)

        # @!attribute [rw] type
        #   The type of the constraint.
        #   @return [String]

        # @!attribute [rw] description
        #   The text description of the constraint.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeProductInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         id: "Id", # required
      #       }
      class DescribeProductInput < Aws::Structure.new(
        :accept_language,
        :id)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] id
        #   The `ProductId` of the product to describe.
        #   @return [String]

      end

      class DescribeProductOutput < Aws::Structure.new(
        :product_view_summary,
        :provisioning_artifacts)

        # @!attribute [rw] product_view_summary
        #   The summary metadata about the specified product.
        #   @return [Types::ProductViewSummary]

        # @!attribute [rw] provisioning_artifacts
        #   A list of provisioning artifact objects for the specified product.
        #   The `ProvisioningArtifacts` parameter represent the ways the
        #   specified product can be provisioned.
        #   @return [Array<Types::ProvisioningArtifact>]

      end

      # @note When making an API call, pass DescribeProductViewInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         id: "Id", # required
      #       }
      class DescribeProductViewInput < Aws::Structure.new(
        :accept_language,
        :id)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] id
        #   The `ProductViewId` of the product to describe.
        #   @return [String]

      end

      class DescribeProductViewOutput < Aws::Structure.new(
        :product_view_summary,
        :provisioning_artifacts)

        # @!attribute [rw] product_view_summary
        #   The summary metadata about the specified product.
        #   @return [Types::ProductViewSummary]

        # @!attribute [rw] provisioning_artifacts
        #   A list of provisioning artifact objects for the specified product.
        #   The `ProvisioningArtifacts` represent the ways in which the
        #   specified product can be provisioned.
        #   @return [Array<Types::ProvisioningArtifact>]

      end

      # @note When making an API call, pass DescribeProvisioningParametersInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         product_id: "Id", # required
      #         provisioning_artifact_id: "Id", # required
      #         path_id: "Id",
      #       }
      class DescribeProvisioningParametersInput < Aws::Structure.new(
        :accept_language,
        :product_id,
        :provisioning_artifact_id,
        :path_id)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] product_id
        #   The identifier of the product.
        #   @return [String]

        # @!attribute [rw] provisioning_artifact_id
        #   The provisioning artifact identifier for this product.
        #   @return [String]

        # @!attribute [rw] path_id
        #   The identifier of the path for this product\'s provisioning. This
        #   value is optional if the product has a default path, and is required
        #   if there is more than one path for the specified product.
        #   @return [String]

      end

      class DescribeProvisioningParametersOutput < Aws::Structure.new(
        :provisioning_artifact_parameters,
        :constraint_summaries,
        :usage_instructions)

        # @!attribute [rw] provisioning_artifact_parameters
        #   The list of parameters used to successfully provision the product.
        #   Each parameter includes a list of allowable values and additional
        #   metadata about each parameter.
        #   @return [Array<Types::ProvisioningArtifactParameter>]

        # @!attribute [rw] constraint_summaries
        #   The list of constraint summaries that apply to provisioning this
        #   product.
        #   @return [Array<Types::ConstraintSummary>]

        # @!attribute [rw] usage_instructions
        #   Any additional metadata specifically related to the provisioning of
        #   the product. For example, see the `Version` field of the
        #   CloudFormation template.
        #   @return [Array<Types::UsageInstruction>]

      end

      # @note When making an API call, pass DescribeRecordInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         id: "Id", # required
      #         page_token: "PageToken",
      #         page_size: 1,
      #       }
      class DescribeRecordInput < Aws::Structure.new(
        :accept_language,
        :id,
        :page_token,
        :page_size)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] id
        #   The record identifier of the ProvisionedProduct object for which to
        #   retrieve output information. This is the `RecordDetail.RecordId`
        #   obtained from the request operation\'s response.
        #   @return [String]

        # @!attribute [rw] page_token
        #   The page token of the first page retrieve. If null, this retrieves
        #   the first page of size `PageSize`.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The maximum number of items to return in the results. If more
        #   results exist than fit in the specified `PageSize`, the value of
        #   `NextPageToken` in the response is non-null.
        #   @return [Integer]

      end

      class DescribeRecordOutput < Aws::Structure.new(
        :record_detail,
        :record_outputs,
        :next_page_token)

        # @!attribute [rw] record_detail
        #   Detailed record information for the specified product.
        #   @return [Types::RecordDetail]

        # @!attribute [rw] record_outputs
        #   A list of outputs for the specified Product object created as the
        #   result of a request. For example, a CloudFormation-backed product
        #   that creates an S3 bucket would have an output for the S3 bucket
        #   URL.
        #   @return [Array<Types::RecordOutput>]

        # @!attribute [rw] next_page_token
        #   The page token to use to retrieve the next page of results for this
        #   operation. If there are no more pages, this value is null.
        #   @return [String]

      end

      # Summary information about a path for a user to have access to a
      # specified product.
      class LaunchPathSummary < Aws::Structure.new(
        :id,
        :constraint_summaries,
        :tags,
        :name)

        # @!attribute [rw] id
        #   The unique identifier of the product path.
        #   @return [String]

        # @!attribute [rw] constraint_summaries
        #   List of constraints on the portfolio-product relationship.
        #   @return [Array<Types::ConstraintSummary>]

        # @!attribute [rw] tags
        #   List of tags used by this launch path.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] name
        #   Corresponds to the name of the portfolio to which the user was
        #   assigned.
        #   @return [String]

      end

      # @note When making an API call, pass ListLaunchPathsInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         product_id: "Id", # required
      #         page_size: 1,
      #         page_token: "PageToken",
      #       }
      class ListLaunchPathsInput < Aws::Structure.new(
        :accept_language,
        :product_id,
        :page_size,
        :page_token)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] product_id
        #   Identifies the product for which to retrieve `LaunchPathSummaries`
        #   information.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The maximum number of items to return in the results. If more
        #   results exist than fit in the specified `PageSize`, the value of
        #   `NextPageToken` in the response is non-null.
        #   @return [Integer]

        # @!attribute [rw] page_token
        #   The page token of the first page retrieve. If null, this retrieves
        #   the first page of size `PageSize`.
        #   @return [String]

      end

      class ListLaunchPathsOutput < Aws::Structure.new(
        :launch_path_summaries,
        :next_page_token)

        # @!attribute [rw] launch_path_summaries
        #   List of launch path information summaries for the specified
        #   `PageToken`.
        #   @return [Array<Types::LaunchPathSummary>]

        # @!attribute [rw] next_page_token
        #   The page token to use to retrieve the next page of results for this
        #   operation. If there are no more pages, this value is null.
        #   @return [String]

      end

      # @note When making an API call, pass ListRecordHistoryInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         search_filter: {
      #           key: "SearchFilterKey",
      #           value: "SearchFilterValue",
      #         },
      #         page_size: 1,
      #         page_token: "PageToken",
      #       }
      class ListRecordHistoryInput < Aws::Structure.new(
        :accept_language,
        :search_filter,
        :page_size,
        :page_token)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] search_filter
        #   (Optional) The filter to limit search results.
        #   @return [Types::ListRecordHistorySearchFilter]

        # @!attribute [rw] page_size
        #   The maximum number of items to return in the results. If more
        #   results exist than fit in the specified `PageSize`, the value of
        #   `NextPageToken` in the response is non-null.
        #   @return [Integer]

        # @!attribute [rw] page_token
        #   The page token of the first page retrieve. If null, this retrieves
        #   the first page of size `PageSize`.
        #   @return [String]

      end

      class ListRecordHistoryOutput < Aws::Structure.new(
        :record_details,
        :next_page_token)

        # @!attribute [rw] record_details
        #   A list of record detail objects, listed in reverse chronological
        #   order.
        #   @return [Array<Types::RecordDetail>]

        # @!attribute [rw] next_page_token
        #   The page token to use to retrieve the next page of results for this
        #   operation. If there are no more pages, this value is null.
        #   @return [String]

      end

      # The search filter to limit results when listing request history
      # records.
      # @note When making an API call, pass ListRecordHistorySearchFilter
      #   data as a hash:
      #
      #       {
      #         key: "SearchFilterKey",
      #         value: "SearchFilterValue",
      #       }
      class ListRecordHistorySearchFilter < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The filter key.
        #   @return [String]

        # @!attribute [rw] value
        #   The filter value for `Key`.
        #   @return [String]

      end

      # The constraints that the administrator has put on the parameter.
      class ParameterConstraints < Aws::Structure.new(
        :allowed_values)

        # @!attribute [rw] allowed_values
        #   The values that the administrator has allowed for the parameter.
        #   @return [Array<String>]

      end

      # A single product view aggregation value/count pair, containing
      # metadata about each product to which the calling user has access.
      class ProductViewAggregationValue < Aws::Structure.new(
        :value,
        :approximate_count)

        # @!attribute [rw] value
        #   The value of the product view aggregation.
        #   @return [String]

        # @!attribute [rw] approximate_count
        #   An approximate count of the products that match the value.
        #   @return [Integer]

      end

      # The summary metadata about the specified product.
      class ProductViewSummary < Aws::Structure.new(
        :id,
        :product_id,
        :name,
        :owner,
        :short_description,
        :type,
        :distributor,
        :has_default_path,
        :support_email,
        :support_description,
        :support_url)

        # @!attribute [rw] id
        #   The product view identifier.
        #   @return [String]

        # @!attribute [rw] product_id
        #   The product identifier.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the product.
        #   @return [String]

        # @!attribute [rw] owner
        #   The owner of the product. Contact the product administrator for the
        #   significance of this value.
        #   @return [String]

        # @!attribute [rw] short_description
        #   Short description of the product.
        #   @return [String]

        # @!attribute [rw] type
        #   The product type. Contact the product administrator for the
        #   significance of this value.
        #   @return [String]

        # @!attribute [rw] distributor
        #   The distributor of the product. Contact the product administrator
        #   for the significance of this value.
        #   @return [String]

        # @!attribute [rw] has_default_path
        #   A value of `false` indicates that the product does not have a
        #   default path, while a value of `true` indicates that it does. If
        #   it\'s false, call ListLaunchPaths to disambiguate between paths. If
        #   true, ListLaunchPaths is not required, and the output of the
        #   ProductViewSummary operation can be used directly with
        #   DescribeProvisioningParameters.
        #   @return [Boolean]

        # @!attribute [rw] support_email
        #   The email contact information to obtain support for this Product.
        #   @return [String]

        # @!attribute [rw] support_description
        #   The description of the support for this Product.
        #   @return [String]

        # @!attribute [rw] support_url
        #   The URL information to obtain support for this Product.
        #   @return [String]

      end

      # @note When making an API call, pass ProvisionProductInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         product_id: "Id", # required
      #         provisioning_artifact_id: "Id", # required
      #         path_id: "Id",
      #         provisioned_product_name: "ProvisionedProductName", # required
      #         provisioning_parameters: [
      #           {
      #             key: "ParameterKey",
      #             value: "ParameterValue",
      #           },
      #         ],
      #         tags: [
      #           {
      #             key: "TagKey",
      #             value: "TagValue",
      #           },
      #         ],
      #         notification_arns: ["NotificationArn"],
      #         provision_token: "IdempotencyToken", # required
      #       }
      class ProvisionProductInput < Aws::Structure.new(
        :accept_language,
        :product_id,
        :provisioning_artifact_id,
        :path_id,
        :provisioned_product_name,
        :provisioning_parameters,
        :tags,
        :notification_arns,
        :provision_token)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] product_id
        #   The identifier of the product.
        #   @return [String]

        # @!attribute [rw] provisioning_artifact_id
        #   The provisioning artifact identifier for this product.
        #   @return [String]

        # @!attribute [rw] path_id
        #   The identifier of the path for this product\'s provisioning. This
        #   value is optional if the product has a default path, and is required
        #   if there is more than one path for the specified product.
        #   @return [String]

        # @!attribute [rw] provisioned_product_name
        #   A user-friendly name to identify the ProvisionedProduct object. This
        #   value must be unique for the AWS account and cannot be updated after
        #   the product is provisioned.
        #   @return [String]

        # @!attribute [rw] provisioning_parameters
        #   Parameters specified by the administrator that are required for
        #   provisioning the product.
        #   @return [Array<Types::ProvisioningParameter>]

        # @!attribute [rw] tags
        #   (Optional) A list of tags to use as provisioning options.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] notification_arns
        #   Passed to CloudFormation. The SNS topic ARNs to which to publish
        #   stack-related events.
        #   @return [Array<String>]

        # @!attribute [rw] provision_token
        #   An idempotency token that uniquely identifies the provisioning
        #   request.
        #   @return [String]

      end

      class ProvisionProductOutput < Aws::Structure.new(
        :record_detail)

        # @!attribute [rw] record_detail
        #   The detailed result of the ProvisionProduct request, containing the
        #   inputs made to that request, the current state of the request, a
        #   pointer to the ProvisionedProduct object of the request, and a list
        #   of any errors that the request encountered.
        #   @return [Types::RecordDetail]

      end

      # Detailed information about a ProvisionedProduct object.
      class ProvisionedProductDetail < Aws::Structure.new(
        :name,
        :arn,
        :type,
        :id,
        :status,
        :status_message,
        :created_time,
        :idempotency_token,
        :last_record_id)

        # @!attribute [rw] name
        #   The user-friendly name of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] arn
        #   The ARN associated with the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] type
        #   The type of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] id
        #   The identifier of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] status
        #   The current status of the ProvisionedProduct.
        #   @return [String]

        # @!attribute [rw] status_message
        #   The current status message of the ProvisionedProduct.
        #   @return [String]

        # @!attribute [rw] created_time
        #   The time the ProvisionedProduct was created.
        #   @return [Time]

        # @!attribute [rw] idempotency_token
        #   An idempotency token that uniquely identifies this
        #   ProvisionedProduct.
        #   @return [String]

        # @!attribute [rw] last_record_id
        #   The record identifier of the last request performed on this
        #   ProvisionedProduct object.
        #   @return [String]

      end

      # Contains information indicating the ways in which a product can be
      # provisioned.
      class ProvisioningArtifact < Aws::Structure.new(
        :id,
        :name,
        :description,
        :created_time)

        # @!attribute [rw] id
        #   The identifier for the artifact.
        #   @return [String]

        # @!attribute [rw] name
        #   The name of the artifact.
        #   @return [String]

        # @!attribute [rw] description
        #   The text description of the artifact.
        #   @return [String]

        # @!attribute [rw] created_time
        #   The time that the artifact was created by the Administrator.
        #   @return [Time]

      end

      # A parameter used to successfully provision the product. This value
      # includes a list of allowable values and additional metadata.
      class ProvisioningArtifactParameter < Aws::Structure.new(
        :parameter_key,
        :default_value,
        :parameter_type,
        :is_no_echo,
        :description,
        :parameter_constraints)

        # @!attribute [rw] parameter_key
        #   The parameter key.
        #   @return [String]

        # @!attribute [rw] default_value
        #   The default value for this parameter.
        #   @return [String]

        # @!attribute [rw] parameter_type
        #   The parameter type.
        #   @return [String]

        # @!attribute [rw] is_no_echo
        #   If this value is true, the value for this parameter is obfuscated
        #   from view when the parameter is retrieved. This parameter is used to
        #   hide sensitive information.
        #   @return [Boolean]

        # @!attribute [rw] description
        #   The text description of the parameter.
        #   @return [String]

        # @!attribute [rw] parameter_constraints
        #   The list of constraints that the administrator has put on the
        #   parameter.
        #   @return [Types::ParameterConstraints]

      end

      # The arameter key/value pairs used to provision a product.
      # @note When making an API call, pass ProvisioningParameter
      #   data as a hash:
      #
      #       {
      #         key: "ParameterKey",
      #         value: "ParameterValue",
      #       }
      class ProvisioningParameter < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The `ProvisioningArtifactParameter.ParameterKey` parameter from
        #   DescribeProvisioningParameters.
        #   @return [String]

        # @!attribute [rw] value
        #   The value to use for provisioning. Any constraints on this value can
        #   be found in `ProvisioningArtifactParameter` for `Key`.
        #   @return [String]

      end

      # The full details of a specific ProvisionedProduct object.
      class RecordDetail < Aws::Structure.new(
        :record_id,
        :provisioned_product_name,
        :status,
        :created_time,
        :updated_time,
        :provisioned_product_type,
        :record_type,
        :provisioned_product_id,
        :product_id,
        :provisioning_artifact_id,
        :path_id,
        :record_errors,
        :record_tags)

        # @!attribute [rw] record_id
        #   The identifier of the ProvisionedProduct object record.
        #   @return [String]

        # @!attribute [rw] provisioned_product_name
        #   The user-friendly name of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] created_time
        #   The time when the record for the ProvisionedProduct object was
        #   created.
        #   @return [Time]

        # @!attribute [rw] updated_time
        #   The time when the record for the ProvisionedProduct object was last
        #   updated.
        #   @return [Time]

        # @!attribute [rw] provisioned_product_type
        #   The type of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] record_type
        #   The record type for this record.
        #   @return [String]

        # @!attribute [rw] provisioned_product_id
        #   The identifier of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] product_id
        #   The identifier of the product.
        #   @return [String]

        # @!attribute [rw] provisioning_artifact_id
        #   The provisioning artifact identifier for this product.
        #   @return [String]

        # @!attribute [rw] path_id
        #   The identifier of the path for this product\'s provisioning.
        #   @return [String]

        # @!attribute [rw] record_errors
        #   A list of errors that occurred while processing the request.
        #   @return [Array<Types::RecordError>]

        # @!attribute [rw] record_tags
        #   List of tags associated with this record.
        #   @return [Array<Types::RecordTag>]

      end

      # The error code and description resulting from an operation.
      class RecordError < Aws::Structure.new(
        :code,
        :description)

        # @!attribute [rw] code
        #   The numeric value of the error.
        #   @return [String]

        # @!attribute [rw] description
        #   The text description of the error.
        #   @return [String]

      end

      # An output for the specified Product object created as the result of a
      # request. For example, a CloudFormation-backed product that creates an
      # S3 bucket would have an output for the S3 bucket URL.
      class RecordOutput < Aws::Structure.new(
        :output_key,
        :output_value,
        :description)

        # @!attribute [rw] output_key
        #   The output key.
        #   @return [String]

        # @!attribute [rw] output_value
        #   The output value.
        #   @return [String]

        # @!attribute [rw] description
        #   The text description of the output.
        #   @return [String]

      end

      # A tag associated with the record, stored as a key-value pair.
      class RecordTag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key for this tag.
        #   @return [String]

        # @!attribute [rw] value
        #   The value for this tag.
        #   @return [String]

      end

      # @note When making an API call, pass ScanProvisionedProductsInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         page_size: 1,
      #         page_token: "PageToken",
      #       }
      class ScanProvisionedProductsInput < Aws::Structure.new(
        :accept_language,
        :page_size,
        :page_token)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] page_size
        #   The maximum number of items to return in the results. If more
        #   results exist than fit in the specified `PageSize`, the value of
        #   `NextPageToken` in the response is non-null.
        #   @return [Integer]

        # @!attribute [rw] page_token
        #   The page token of the first page retrieve. If null, this retrieves
        #   the first page of size `PageSize`.
        #   @return [String]

      end

      class ScanProvisionedProductsOutput < Aws::Structure.new(
        :provisioned_products,
        :next_page_token)

        # @!attribute [rw] provisioned_products
        #   A list of ProvisionedProduct detail objects.
        #   @return [Array<Types::ProvisionedProductDetail>]

        # @!attribute [rw] next_page_token
        #   The page token to use to retrieve the next page of results for this
        #   operation. If there are no more pages, this value is null.
        #   @return [String]

      end

      # @note When making an API call, pass SearchProductsInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         filters: {
      #           "FullTextSearch" => ["ProductViewFilterValue"],
      #         },
      #         page_size: 1,
      #         sort_by: "Title", # accepts Title, VersionCount, CreationDate
      #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
      #         page_token: "PageToken",
      #       }
      class SearchProductsInput < Aws::Structure.new(
        :accept_language,
        :filters,
        :page_size,
        :sort_by,
        :sort_order,
        :page_token)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] filters
        #   (Optional) The list of filters with which to limit search results.
        #   If no search filters are specified, the output is all the products
        #   to which the calling user has access.
        #   @return [Hash<String,Array<String>>]

        # @!attribute [rw] page_size
        #   The maximum number of items to return in the results. If more
        #   results exist than fit in the specified `PageSize`, the value of
        #   `NextPageToken` in the response is non-null.
        #   @return [Integer]

        # @!attribute [rw] sort_by
        #   (Optional) The sort field specifier. If no value is specified,
        #   results are not sorted.
        #   @return [String]

        # @!attribute [rw] sort_order
        #   (Optional) The sort order specifier. If no value is specified,
        #   results are not sorted.
        #   @return [String]

        # @!attribute [rw] page_token
        #   The page token of the first page retrieve. If null, this retrieves
        #   the first page of size `PageSize`.
        #   @return [String]

      end

      class SearchProductsOutput < Aws::Structure.new(
        :product_view_summaries,
        :product_view_aggregations,
        :next_page_token)

        # @!attribute [rw] product_view_summaries
        #   A list of the product view summary objects.
        #   @return [Array<Types::ProductViewSummary>]

        # @!attribute [rw] product_view_aggregations
        #   A list of the product view aggregation value objects.
        #   @return [Hash<String,Array<Types::ProductViewAggregationValue>>]

        # @!attribute [rw] next_page_token
        #   The page token to use to retrieve the next page of results for this
        #   operation. If there are no more pages, this value is null.
        #   @return [String]

      end

      # Optional key/value pairs to associate with this provisioning. These
      # tags are propagated to the resources created in the provisioning.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey",
      #         value: "TagValue",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The `ProvisioningArtifactParameter.TagKey` parameter from
        #   DescribeProvisioningParameters.
        #   @return [String]

        # @!attribute [rw] value
        #   The esired value for this key.
        #   @return [String]

      end

      # @note When making an API call, pass TerminateProvisionedProductInput
      #   data as a hash:
      #
      #       {
      #         provisioned_product_name: "ProvisionedProductNameOrArn",
      #         provisioned_product_id: "Id",
      #         terminate_token: "IdempotencyToken", # required
      #         ignore_errors: false,
      #         accept_language: "AcceptLanguage",
      #       }
      class TerminateProvisionedProductInput < Aws::Structure.new(
        :provisioned_product_name,
        :provisioned_product_id,
        :terminate_token,
        :ignore_errors,
        :accept_language)

        # @!attribute [rw] provisioned_product_name
        #   The name of the ProvisionedProduct object to terminate. You must
        #   specify either `ProvisionedProductName` or `ProvisionedProductId`,
        #   but not both.
        #   @return [String]

        # @!attribute [rw] provisioned_product_id
        #   The identifier of the ProvisionedProduct object to terminate. You
        #   must specify either `ProvisionedProductName` or
        #   `ProvisionedProductId`, but not both.
        #   @return [String]

        # @!attribute [rw] terminate_token
        #   An idempotency token that uniquely identifies the termination
        #   request. This token is only valid during the termination process.
        #   After the ProvisionedProduct object is terminated, further requests
        #   to terminate the same ProvisionedProduct object always return
        #   **ResourceNotFound** regardless of the value of `TerminateToken`.
        #   @return [String]

        # @!attribute [rw] ignore_errors
        #   Optional Boolean parameter. If set to true, AWS Service Catalog
        #   stops managing the specified ProvisionedProduct object even if it
        #   cannot delete the underlying resources.
        #   @return [Boolean]

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

      end

      class TerminateProvisionedProductOutput < Aws::Structure.new(
        :record_detail)

        # @!attribute [rw] record_detail
        #   The detailed result of the TerminateProvisionedProduct request,
        #   containing the inputs made to that request, the current state of the
        #   request, a pointer to the ProvisionedProduct object that the request
        #   is modifying, and a list of any errors that the request encountered.
        #   @return [Types::RecordDetail]

      end

      # @note When making an API call, pass UpdateProvisionedProductInput
      #   data as a hash:
      #
      #       {
      #         accept_language: "AcceptLanguage",
      #         provisioned_product_name: "ProvisionedProductNameOrArn",
      #         provisioned_product_id: "Id",
      #         product_id: "Id",
      #         provisioning_artifact_id: "Id",
      #         path_id: "Id",
      #         provisioning_parameters: [
      #           {
      #             key: "ParameterKey",
      #             value: "ParameterValue",
      #             use_previous_value: false,
      #           },
      #         ],
      #         update_token: "IdempotencyToken", # required
      #       }
      class UpdateProvisionedProductInput < Aws::Structure.new(
        :accept_language,
        :provisioned_product_name,
        :provisioned_product_id,
        :product_id,
        :provisioning_artifact_id,
        :path_id,
        :provisioning_parameters,
        :update_token)

        # @!attribute [rw] accept_language
        #   Optional language code. Supported language codes are as follows:
        #
        #   \"en\" (English)
        #
        #   \"jp\" (Japanese)
        #
        #   \"zh\" (Chinese)
        #
        #   If no code is specified, \"en\" is used as the default.
        #   @return [String]

        # @!attribute [rw] provisioned_product_name
        #   The updated name of the ProvisionedProduct object . You must specify
        #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
        #   both.
        #   @return [String]

        # @!attribute [rw] provisioned_product_id
        #   The identifier of the ProvisionedProduct object to update. You must
        #   specify either `ProvisionedProductName` or `ProvisionedProductId`,
        #   but not both.
        #   @return [String]

        # @!attribute [rw] product_id
        #   The identifier of the ProvisionedProduct object.
        #   @return [String]

        # @!attribute [rw] provisioning_artifact_id
        #   The provisioning artifact identifier for this product.
        #   @return [String]

        # @!attribute [rw] path_id
        #   The identifier of the path to use in the updated ProvisionedProduct
        #   object. This value is optional if the product has a default path,
        #   and is required if there is more than one path for the specified
        #   product.
        #   @return [String]

        # @!attribute [rw] provisioning_parameters
        #   A list of `ProvisioningParameter` objects used to update the
        #   ProvisionedProduct object.
        #   @return [Array<Types::UpdateProvisioningParameter>]

        # @!attribute [rw] update_token
        #   The idempotency token that uniquely identifies the provisioning
        #   update request.
        #   @return [String]

      end

      class UpdateProvisionedProductOutput < Aws::Structure.new(
        :record_detail)

        # @!attribute [rw] record_detail
        #   The detailed result of the UpdateProvisionedProduct request,
        #   containing the inputs made to that request, the current state of the
        #   request, a pointer to the ProvisionedProduct object that the request
        #   is modifying, and a list of any errors that the request encountered.
        #   @return [Types::RecordDetail]

      end

      # The parameter key/value pair used to update a ProvisionedProduct
      # object. If `UsePreviousValue` is set to true, `Value` is ignored and
      # the value for `Key` is kept as previously set (current value).
      # @note When making an API call, pass UpdateProvisioningParameter
      #   data as a hash:
      #
      #       {
      #         key: "ParameterKey",
      #         value: "ParameterValue",
      #         use_previous_value: false,
      #       }
      class UpdateProvisioningParameter < Aws::Structure.new(
        :key,
        :value,
        :use_previous_value)

        # @!attribute [rw] key
        #   The `ProvisioningArtifactParameter.ParameterKey` parameter from
        #   DescribeProvisioningParameters.
        #   @return [String]

        # @!attribute [rw] value
        #   The value to use for updating the product provisioning. Any
        #   constraints on this value can be found in the
        #   `ProvisioningArtifactParameter` parameter for `Key`.
        #   @return [String]

        # @!attribute [rw] use_previous_value
        #   If true, uses the currently set value for `Key`, ignoring
        #   `UpdateProvisioningParameter.Value`.
        #   @return [Boolean]

      end

      # Additional information provided by the administrator.
      class UsageInstruction < Aws::Structure.new(
        :type,
        :value)

        # @!attribute [rw] type
        #   The usage instruction type for the value.
        #   @return [String]

        # @!attribute [rw] value
        #   The usage instruction value for this type.
        #   @return [String]

      end

    end
  end
end
