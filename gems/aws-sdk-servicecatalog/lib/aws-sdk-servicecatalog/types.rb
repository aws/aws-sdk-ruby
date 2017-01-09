# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceCatalog
  module Types

    # @note When making an API call, you may pass AcceptPortfolioShareInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    class AcceptPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id)
      include Aws::Structure
    end

    class AcceptPortfolioShareOutput < Aws::EmptyStructure; end

    # The access level to limit results.
    #
    # @note When making an API call, you may pass AccessLevelFilter
    #   data as a hash:
    #
    #       {
    #         key: "Account", # accepts Account, Role, User
    #         value: "AccessLevelFilterValue",
    #       }
    #
    # @!attribute [rw] key
    #   Specifies the access level.
    #
    #   `Account` allows results at the account level.
    #
    #   `Role` allows results based on the federated role of the specified
    #   user.
    #
    #   `User` allows results limited to the specified user.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the user to which the access level applies. A value of
    #   `Self` is currently supported.
    #   @return [String]
    #
    class AccessLevelFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociatePrincipalWithPortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         principal_arn: "PrincipalARN", # required
    #         principal_type: "IAM", # required, accepts IAM
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN representing the principal (IAM user, role, or group).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type. Must be `IAM`
    #   @return [String]
    #
    class AssociatePrincipalWithPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn,
      :principal_type)
      include Aws::Structure
    end

    class AssociatePrincipalWithPortfolioOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateProductWithPortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         portfolio_id: "Id", # required
    #         source_portfolio_id: "Id",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] source_portfolio_id
    #   The identifier of the source portfolio to use with this association.
    #   @return [String]
    #
    class AssociateProductWithPortfolioInput < Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id,
      :source_portfolio_id)
      include Aws::Structure
    end

    class AssociateProductWithPortfolioOutput < Aws::EmptyStructure; end

    # Detailed constraint information.
    #
    # @!attribute [rw] constraint_id
    #   The identifier of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the constraint.
    #   @return [String]
    #
    class ConstraintDetail < Struct.new(
      :constraint_id,
      :type,
      :description,
      :owner)
      include Aws::Structure
    end

    # An administrator-specified constraint to apply when provisioning a
    # product.
    #
    # @!attribute [rw] type
    #   The type of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the constraint.
    #   @return [String]
    #
    class ConstraintSummary < Struct.new(
      :type,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConstraintInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         product_id: "Id", # required
    #         parameters: "ConstraintParameters", # required
    #         type: "ConstraintType", # required
    #         description: "ConstraintDescription",
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The constraint parameters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that
    #   you also specify a different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateConstraintInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :product_id,
      :parameters,
      :type,
      :description,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] constraint_detail
    #   The resulting detailed constraint information.
    #   @return [Types::ConstraintDetail]
    #
    # @!attribute [rw] constraint_parameters
    #   The resulting constraint parameters.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    class CreateConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         display_name: "PortfolioDisplayName", # required
    #         description: "PortfolioDescription",
    #         provider_name: "ProviderName", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to use for display purposes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the portfolio provider.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the new portfolio.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that
    #   you also specify a different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreatePortfolioInput < Struct.new(
      :accept_language,
      :display_name,
      :description,
      :provider_name,
      :tags,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_detail
    #   The resulting detailed portfolio information.
    #   @return [Types::PortfolioDetail]
    #
    # @!attribute [rw] tags
    #   Tags successfully associated with the new portfolio.
    #   @return [Array<Types::Tag>]
    #
    class CreatePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePortfolioShareInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID with which to share the portfolio.
    #   @return [String]
    #
    class CreatePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id)
      include Aws::Structure
    end

    class CreatePortfolioShareOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         name: "ProductViewName", # required
    #         owner: "ProductViewOwner", # required
    #         description: "ProductViewShortDescription",
    #         distributor: "ProductViewOwner",
    #         support_description: "SupportDescription",
    #         support_email: "SupportEmail",
    #         support_url: "SupportUrl",
    #         product_type: "CLOUD_FORMATION_TEMPLATE", # required, accepts CLOUD_FORMATION_TEMPLATE
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         provisioning_artifact_parameters: { # required
    #           name: "ProvisioningArtifactName",
    #           description: "ProvisioningArtifactDescription",
    #           info: { # required
    #             "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #           },
    #           type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE
    #         },
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the product.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the product.
    #   @return [String]
    #
    # @!attribute [rw] distributor
    #   The distributor of the product.
    #   @return [String]
    #
    # @!attribute [rw] support_description
    #   Support information about the product.
    #   @return [String]
    #
    # @!attribute [rw] support_email
    #   Contact email for product support.
    #   @return [String]
    #
    # @!attribute [rw] support_url
    #   Contact URL for product support.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The type of the product to create.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the new product.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provisioning_artifact_parameters
    #   Parameters for the provisioning artifact.
    #   @return [Types::ProvisioningArtifactProperties]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that
    #   you also specify a different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateProductInput < Struct.new(
      :accept_language,
      :name,
      :owner,
      :description,
      :distributor,
      :support_description,
      :support_email,
      :support_url,
      :product_type,
      :tags,
      :provisioning_artifact_parameters,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_detail
    #   The resulting detailed product view information.
    #   @return [Types::ProductViewDetail]
    #
    # @!attribute [rw] provisioning_artifact_detail
    #   The resulting detailed provisioning artifact information.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] tags
    #   Tags successfully associated with the new product.
    #   @return [Array<Types::Tag>]
    #
    class CreateProductOutput < Struct.new(
      :product_view_detail,
      :provisioning_artifact_detail,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         parameters: { # required
    #           name: "ProvisioningArtifactName",
    #           description: "ProvisioningArtifactDescription",
    #           info: { # required
    #             "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #           },
    #           type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE
    #         },
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters to use when creating the new provisioning artifact.
    #   @return [Types::ProvisioningArtifactProperties]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that
    #   you also specify a different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class CreateProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :parameters,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_detail
    #   The resulting detailed provisioning artifact information.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] info
    #   Additional information about the provisioning artifact create
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    class CreateProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteConstraintInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the constraint to delete.
    #   @return [String]
    #
    class DeleteConstraintInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    class DeleteConstraintOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the portfolio for the delete request.
    #   @return [String]
    #
    class DeletePortfolioInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    class DeletePortfolioOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePortfolioShareInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID associated with the share to delete.
    #   @return [String]
    #
    class DeletePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id)
      include Aws::Structure
    end

    class DeletePortfolioShareOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the product for the delete request.
    #   @return [String]
    #
    class DeleteProductInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    class DeleteProductOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact for the delete request.
    #   @return [String]
    #
    class DeleteProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id)
      include Aws::Structure
    end

    class DeleteProvisioningArtifactOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeConstraintInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the constraint.
    #   @return [String]
    #
    class DescribeConstraintInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] constraint_detail
    #   Detailed constraint information.
    #   @return [Types::ConstraintDetail]
    #
    # @!attribute [rw] constraint_parameters
    #   The current parameters associated with the specified constraint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    class DescribeConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the portfolio for which to retrieve information.
    #   @return [String]
    #
    class DescribePortfolioInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_detail
    #   Detailed portfolio information.
    #   @return [Types::PortfolioDetail]
    #
    # @!attribute [rw] tags
    #   Tags associated with the portfolio.
    #   @return [Array<Types::Tag>]
    #
    class DescribePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductAsAdminInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the product for which to retrieve information.
    #   @return [String]
    #
    class DescribeProductAsAdminInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_detail
    #   Detailed product view information.
    #   @return [Types::ProductViewDetail]
    #
    # @!attribute [rw] tags
    #   Tags associated with the product.
    #   @return [Array<Types::Tag>]
    #
    class DescribeProductAsAdminOutput < Struct.new(
      :product_view_detail,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The `ProductId` of the product to describe.
    #   @return [String]
    #
    class DescribeProductInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_summary
    #   The summary metadata about the specified product.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] provisioning_artifacts
    #   A list of provisioning artifact objects for the specified product.
    #   The `ProvisioningArtifacts` parameter represent the ways the
    #   specified product can be provisioned.
    #   @return [Array<Types::ProvisioningArtifact>]
    #
    class DescribeProductOutput < Struct.new(
      :product_view_summary,
      :provisioning_artifacts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductViewInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The `ProductViewId` of the product to describe.
    #   @return [String]
    #
    class DescribeProductViewInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_summary
    #   The summary metadata about the specified product.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] provisioning_artifacts
    #   A list of provisioning artifact objects for the specified product.
    #   The `ProvisioningArtifacts` represent the ways in which the
    #   specified product can be provisioned.
    #   @return [Array<Types::ProvisioningArtifact>]
    #
    class DescribeProductViewOutput < Struct.new(
      :product_view_summary,
      :provisioning_artifacts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         provisioning_artifact_id: "Id", # required
    #         product_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    class DescribeProvisioningArtifactInput < Struct.new(
      :accept_language,
      :provisioning_artifact_id,
      :product_id)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_detail
    #   Detailed provisioning artifact information.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] info
    #   Additional information about the provisioning artifact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    class DescribeProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisioningParametersInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #         path_id: "Id",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The identifier of the path for this product's provisioning. This
    #   value is optional if the product has a default path, and is required
    #   if there is more than one path for the specified product.
    #   @return [String]
    #
    class DescribeProvisioningParametersInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :path_id)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_parameters
    #   The list of parameters used to successfully provision the product.
    #   Each parameter includes a list of allowable values and additional
    #   metadata about each parameter.
    #   @return [Array<Types::ProvisioningArtifactParameter>]
    #
    # @!attribute [rw] constraint_summaries
    #   The list of constraint summaries that apply to provisioning this
    #   product.
    #   @return [Array<Types::ConstraintSummary>]
    #
    # @!attribute [rw] usage_instructions
    #   Any additional metadata specifically related to the provisioning of
    #   the product. For example, see the `Version` field of the
    #   CloudFormation template.
    #   @return [Array<Types::UsageInstruction>]
    #
    class DescribeProvisioningParametersOutput < Struct.new(
      :provisioning_artifact_parameters,
      :constraint_summaries,
      :usage_instructions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecordInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #         page_token: "PageToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The record identifier of the ProvisionedProduct object for which to
    #   retrieve output information. This is the `RecordDetail.RecordId`
    #   obtained from the request operation's response.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    class DescribeRecordInput < Struct.new(
      :accept_language,
      :id,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   Detailed record information for the specified product.
    #   @return [Types::RecordDetail]
    #
    # @!attribute [rw] record_outputs
    #   A list of outputs for the specified Product object created as the
    #   result of a request. For example, a CloudFormation-backed product
    #   that creates an S3 bucket would have an output for the S3 bucket
    #   URL.
    #   @return [Array<Types::RecordOutput>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class DescribeRecordOutput < Struct.new(
      :record_detail,
      :record_outputs,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociatePrincipalFromPortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         principal_arn: "PrincipalARN", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] principal_arn
    #   The ARN representing the principal (IAM user, role, or group).
    #   @return [String]
    #
    class DisassociatePrincipalFromPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn)
      include Aws::Structure
    end

    class DisassociatePrincipalFromPortfolioOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateProductFromPortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         portfolio_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    class DisassociateProductFromPortfolioInput < Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id)
      include Aws::Structure
    end

    class DisassociateProductFromPortfolioOutput < Aws::EmptyStructure; end

    # Summary information about a path for a user to have access to a
    # specified product.
    #
    # @!attribute [rw] id
    #   The unique identifier of the product path.
    #   @return [String]
    #
    # @!attribute [rw] constraint_summaries
    #   List of constraints on the portfolio-product relationship.
    #   @return [Array<Types::ConstraintSummary>]
    #
    # @!attribute [rw] tags
    #   List of tags used by this launch path.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] name
    #   Corresponds to the name of the portfolio to which the user was
    #   assigned.
    #   @return [String]
    #
    class LaunchPathSummary < Struct.new(
      :id,
      :constraint_summaries,
      :tags,
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAcceptedPortfolioSharesInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         page_token: "PageToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    class ListAcceptedPortfolioSharesInput < Struct.new(
      :accept_language,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_details
    #   List of detailed portfolio information objects.
    #   @return [Array<Types::PortfolioDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListAcceptedPortfolioSharesOutput < Struct.new(
      :portfolio_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConstraintsForPortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         product_id: "Id",
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    class ListConstraintsForPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :product_id,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] constraint_details
    #   List of detailed constraint information objects.
    #   @return [Array<Types::ConstraintDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListConstraintsForPortfolioOutput < Struct.new(
      :constraint_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLaunchPathsInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.. Identifies the product for which to
    #   retrieve `LaunchPathSummaries` information.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    class ListLaunchPathsInput < Struct.new(
      :accept_language,
      :product_id,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] launch_path_summaries
    #   List of launch path information summaries for the specified
    #   `PageToken`.
    #   @return [Array<Types::LaunchPathSummary>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListLaunchPathsOutput < Struct.new(
      :launch_path_summaries,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPortfolioAccessInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    class ListPortfolioAccessInput < Struct.new(
      :accept_language,
      :portfolio_id)
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   List of account IDs associated with access to the portfolio.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListPortfolioAccessOutput < Struct.new(
      :account_ids,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPortfoliosForProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         page_token: "PageToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    class ListPortfoliosForProductInput < Struct.new(
      :accept_language,
      :product_id,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_details
    #   List of detailed portfolio information objects.
    #   @return [Array<Types::PortfolioDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListPortfoliosForProductOutput < Struct.new(
      :portfolio_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPortfoliosInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         page_token: "PageToken",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    class ListPortfoliosInput < Struct.new(
      :accept_language,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_details
    #   List of detailed portfolio information objects.
    #   @return [Array<Types::PortfolioDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListPortfoliosOutput < Struct.new(
      :portfolio_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPrincipalsForPortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    class ListPrincipalsForPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] principals
    #   The IAM principals (users or roles) associated with the portfolio.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListPrincipalsForPortfolioOutput < Struct.new(
      :principals,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisioningArtifactsInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    class ListProvisioningArtifactsInput < Struct.new(
      :accept_language,
      :product_id)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_details
    #   List of detailed provisioning artifact information objects.
    #   @return [Array<Types::ProvisioningArtifactDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListProvisioningArtifactsOutput < Struct.new(
      :provisioning_artifact_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecordHistoryInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         access_level_filter: {
    #           key: "Account", # accepts Account, Role, User
    #           value: "AccessLevelFilterValue",
    #         },
    #         search_filter: {
    #           key: "SearchFilterKey",
    #           value: "SearchFilterValue",
    #         },
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] access_level_filter
    #   The access level for obtaining results. If left unspecified, `User`
    #   level access is used.
    #   @return [Types::AccessLevelFilter]
    #
    # @!attribute [rw] search_filter
    #   The filter to limit search results.
    #   @return [Types::ListRecordHistorySearchFilter]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    class ListRecordHistoryInput < Struct.new(
      :accept_language,
      :access_level_filter,
      :search_filter,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] record_details
    #   A list of record detail objects, listed in reverse chronological
    #   order.
    #   @return [Array<Types::RecordDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ListRecordHistoryOutput < Struct.new(
      :record_details,
      :next_page_token)
      include Aws::Structure
    end

    # The search filter to limit results when listing request history
    # records.
    #
    # @note When making an API call, you may pass ListRecordHistorySearchFilter
    #   data as a hash:
    #
    #       {
    #         key: "SearchFilterKey",
    #         value: "SearchFilterValue",
    #       }
    #
    # @!attribute [rw] key
    #   The filter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value for `Key`.
    #   @return [String]
    #
    class ListRecordHistorySearchFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The constraints that the administrator has put on the parameter.
    #
    # @!attribute [rw] allowed_values
    #   The values that the administrator has allowed for the parameter.
    #   @return [Array<String>]
    #
    class ParameterConstraints < Struct.new(
      :allowed_values)
      include Aws::Structure
    end

    # Detailed portfolio information.
    #
    # @!attribute [rw] id
    #   The identifier for the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN assigned to the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to use for display purposes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] provider_name
    #   The name of the portfolio provider.
    #   @return [String]
    #
    class PortfolioDetail < Struct.new(
      :id,
      :arn,
      :display_name,
      :description,
      :created_time,
      :provider_name)
      include Aws::Structure
    end

    # A principal's ARN and type.
    #
    # @!attribute [rw] principal_arn
    #   The ARN representing the principal (IAM user, role, or group).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type. Must be `IAM`
    #   @return [String]
    #
    class Principal < Struct.new(
      :principal_arn,
      :principal_type)
      include Aws::Structure
    end

    # A single product view aggregation value/count pair, containing
    # metadata about each product to which the calling user has access.
    #
    # @!attribute [rw] value
    #   The value of the product view aggregation.
    #   @return [String]
    #
    # @!attribute [rw] approximate_count
    #   An approximate count of the products that match the value.
    #   @return [Integer]
    #
    class ProductViewAggregationValue < Struct.new(
      :value,
      :approximate_count)
      include Aws::Structure
    end

    # Detailed product view information.
    #
    # @!attribute [rw] product_view_summary
    #   The summary metadata about the specified product view.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] status
    #   Current status of the product.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN associated with the product.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    class ProductViewDetail < Struct.new(
      :product_view_summary,
      :status,
      :product_arn,
      :created_time)
      include Aws::Structure
    end

    # The summary metadata about the specified product.
    #
    # @!attribute [rw] id
    #   The product view identifier.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the product.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the product. Contact the product administrator for the
    #   significance of this value.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   Short description of the product.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The product type. Contact the product administrator for the
    #   significance of this value.
    #   @return [String]
    #
    # @!attribute [rw] distributor
    #   The distributor of the product. Contact the product administrator
    #   for the significance of this value.
    #   @return [String]
    #
    # @!attribute [rw] has_default_path
    #   A value of `false` indicates that the product does not have a
    #   default path, while a value of `true` indicates that it does. If
    #   it's false, call ListLaunchPaths to disambiguate between paths. If
    #   true, ListLaunchPaths is not required, and the output of the
    #   ProductViewSummary operation can be used directly with
    #   DescribeProvisioningParameters.
    #   @return [Boolean]
    #
    # @!attribute [rw] support_email
    #   The email contact information to obtain support for this Product.
    #   @return [String]
    #
    # @!attribute [rw] support_description
    #   The description of the support for this Product.
    #   @return [String]
    #
    # @!attribute [rw] support_url
    #   The URL information to obtain support for this Product.
    #   @return [String]
    #
    class ProductViewSummary < Struct.new(
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ProvisionProductInput
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
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         notification_arns: ["NotificationArn"],
    #         provision_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The identifier of the path for this product's provisioning. This
    #   value is optional if the product has a default path, and is required
    #   if there is more than one path for the specified product.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   A user-friendly name to identify the ProvisionedProduct object. This
    #   value must be unique for the AWS account and cannot be updated after
    #   the product is provisioned.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #   @return [Array<Types::ProvisioningParameter>]
    #
    # @!attribute [rw] tags
    #   A list of tags to use as provisioning options.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #   @return [Array<String>]
    #
    # @!attribute [rw] provision_token
    #   An idempotency token that uniquely identifies the provisioning
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class ProvisionProductInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :path_id,
      :provisioned_product_name,
      :provisioning_parameters,
      :tags,
      :notification_arns,
      :provision_token)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   The detailed result of the ProvisionProduct request, containing the
    #   inputs made to that request, the current state of the request, a
    #   pointer to the ProvisionedProduct object of the request, and a list
    #   of any errors that the request encountered.
    #   @return [Types::RecordDetail]
    #
    class ProvisionProductOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # Detailed information about a ProvisionedProduct object.
    #
    # @!attribute [rw] name
    #   The user-friendly name of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the ProvisionedProduct.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The current status message of the ProvisionedProduct.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that
    #   you also specify a different idempotency token for each request.
    #   @return [String]
    #
    # @!attribute [rw] last_record_id
    #   The record identifier of the last request performed on this
    #   ProvisionedProduct object.
    #   @return [String]
    #
    class ProvisionedProductDetail < Struct.new(
      :name,
      :arn,
      :type,
      :id,
      :status,
      :status_message,
      :created_time,
      :idempotency_token,
      :last_record_id)
      include Aws::Structure
    end

    # Contains information indicating the ways in which a product can be
    # provisioned.
    #
    # @!attribute [rw] id
    #   The identifier for the artifact.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    class ProvisioningArtifact < Struct.new(
      :id,
      :name,
      :description,
      :created_time)
      include Aws::Structure
    end

    # Detailed provisioning artifact information.
    #
    # @!attribute [rw] id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name assigned to the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    class ProvisioningArtifactDetail < Struct.new(
      :id,
      :name,
      :description,
      :type,
      :created_time)
      include Aws::Structure
    end

    # A parameter used to successfully provision the product. This value
    # includes a list of allowable values and additional metadata.
    #
    # @!attribute [rw] parameter_key
    #   The parameter key.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for this parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_type
    #   The parameter type.
    #   @return [String]
    #
    # @!attribute [rw] is_no_echo
    #   If this value is true, the value for this parameter is obfuscated
    #   from view when the parameter is retrieved. This parameter is used to
    #   hide sensitive information.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The text description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_constraints
    #   The list of constraints that the administrator has put on the
    #   parameter.
    #   @return [Types::ParameterConstraints]
    #
    class ProvisioningArtifactParameter < Struct.new(
      :parameter_key,
      :default_value,
      :parameter_type,
      :is_no_echo,
      :description,
      :parameter_constraints)
      include Aws::Structure
    end

    # Provisioning artifact properties.
    #
    # @note When making an API call, you may pass ProvisioningArtifactProperties
    #   data as a hash:
    #
    #       {
    #         name: "ProvisioningArtifactName",
    #         description: "ProvisioningArtifactDescription",
    #         info: { # required
    #           "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #         },
    #         type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE
    #       }
    #
    # @!attribute [rw] name
    #   The name assigned to the provisioning artifact properties.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the provisioning artifact properties.
    #   @return [String]
    #
    # @!attribute [rw] info
    #   Additional information about the provisioning artifact properties.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the provisioning artifact properties.
    #   @return [String]
    #
    class ProvisioningArtifactProperties < Struct.new(
      :name,
      :description,
      :info,
      :type)
      include Aws::Structure
    end

    # The arameter key/value pairs used to provision a product.
    #
    # @note When making an API call, you may pass ProvisioningParameter
    #   data as a hash:
    #
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #       }
    #
    # @!attribute [rw] key
    #   The `ProvisioningArtifactParameter.ParameterKey` parameter from
    #   DescribeProvisioningParameters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to use for provisioning. Any constraints on this value can
    #   be found in `ProvisioningArtifactParameter` for `Key`.
    #   @return [String]
    #
    class ProvisioningParameter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The full details of a specific ProvisionedProduct object.
    #
    # @!attribute [rw] record_id
    #   The identifier of the ProvisionedProduct object record.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   The user-friendly name of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   The time when the record for the ProvisionedProduct object was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_product_type
    #   The type of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The record type for this record.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The identifier of the path for this product's provisioning.
    #   @return [String]
    #
    # @!attribute [rw] record_errors
    #   A list of errors that occurred while processing the request.
    #   @return [Array<Types::RecordError>]
    #
    # @!attribute [rw] record_tags
    #   List of tags associated with this record.
    #   @return [Array<Types::RecordTag>]
    #
    class RecordDetail < Struct.new(
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
      include Aws::Structure
    end

    # The error code and description resulting from an operation.
    #
    # @!attribute [rw] code
    #   The numeric value of the error.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the error.
    #   @return [String]
    #
    class RecordError < Struct.new(
      :code,
      :description)
      include Aws::Structure
    end

    # An output for the specified Product object created as the result of a
    # request. For example, a CloudFormation-backed product that creates an
    # S3 bucket would have an output for the S3 bucket URL.
    #
    # @!attribute [rw] output_key
    #   The output key.
    #   @return [String]
    #
    # @!attribute [rw] output_value
    #   The output value.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the output.
    #   @return [String]
    #
    class RecordOutput < Struct.new(
      :output_key,
      :output_value,
      :description)
      include Aws::Structure
    end

    # A tag associated with the record, stored as a key-value pair.
    #
    # @!attribute [rw] key
    #   The key for this tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for this tag.
    #   @return [String]
    #
    class RecordTag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectPortfolioShareInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    class RejectPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id)
      include Aws::Structure
    end

    class RejectPortfolioShareOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ScanProvisionedProductsInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         access_level_filter: {
    #           key: "Account", # accepts Account, Role, User
    #           value: "AccessLevelFilterValue",
    #         },
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] access_level_filter
    #   The access level for obtaining results. If left unspecified, `User`
    #   level access is used.
    #   @return [Types::AccessLevelFilter]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    class ScanProvisionedProductsInput < Struct.new(
      :accept_language,
      :access_level_filter,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_products
    #   A list of ProvisionedProduct detail objects.
    #   @return [Array<Types::ProvisionedProductDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class ScanProvisionedProductsOutput < Struct.new(
      :provisioned_products,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchProductsAsAdminInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id",
    #         filters: {
    #           "FullTextSearch" => ["ProductViewFilterValue"],
    #         },
    #         sort_by: "Title", # accepts Title, VersionCount, CreationDate
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         page_token: "PageToken",
    #         page_size: 1,
    #         product_source: "ACCOUNT", # accepts ACCOUNT
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The list of filters with which to limit search results. If no search
    #   filters are specified, the output is all the products to which the
    #   administrator has access.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] sort_by
    #   The sort field specifier. If no value is specified, results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order specifier. If no value is specified, results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] product_source
    #   Access level of the source of the product.
    #   @return [String]
    #
    class SearchProductsAsAdminInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :filters,
      :sort_by,
      :sort_order,
      :page_token,
      :page_size,
      :product_source)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_details
    #   List of detailed product view information objects.
    #   @return [Array<Types::ProductViewDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class SearchProductsAsAdminOutput < Struct.new(
      :product_view_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchProductsInput
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
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The list of filters with which to limit search results. If no search
    #   filters are specified, the output is all the products to which the
    #   calling user has access.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return in the results. If more
    #   results exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   The sort field specifier. If no value is specified, results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order specifier. If no value is specified, results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    class SearchProductsInput < Struct.new(
      :accept_language,
      :filters,
      :page_size,
      :sort_by,
      :sort_order,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_summaries
    #   A list of the product view summary objects.
    #   @return [Array<Types::ProductViewSummary>]
    #
    # @!attribute [rw] product_view_aggregations
    #   A list of the product view aggregation value objects.
    #   @return [Hash<String,Array<Types::ProductViewAggregationValue>>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next page of results for this
    #   operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    class SearchProductsOutput < Struct.new(
      :product_view_summaries,
      :product_view_aggregations,
      :next_page_token)
      include Aws::Structure
    end

    # Key/value pairs to associate with this provisioning. These tags are
    # entirely discretionary and are propagated to the resources created in
    # the provisioning.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The `ProvisioningArtifactParameter.TagKey` parameter from
    #   DescribeProvisioningParameters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The esired value for this key.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TerminateProvisionedProductInput
    #   data as a hash:
    #
    #       {
    #         provisioned_product_name: "ProvisionedProductNameOrArn",
    #         provisioned_product_id: "Id",
    #         terminate_token: "IdempotencyToken", # required
    #         ignore_errors: false,
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] provisioned_product_name
    #   The name of the ProvisionedProduct object to terminate. You must
    #   specify either `ProvisionedProductName` or `ProvisionedProductId`,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the ProvisionedProduct object to terminate. You
    #   must specify either `ProvisionedProductName` or
    #   `ProvisionedProductId`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] terminate_token
    #   An idempotency token that uniquely identifies the termination
    #   request. This token is only valid during the termination process.
    #   After the ProvisionedProduct object is terminated, further requests
    #   to terminate the same ProvisionedProduct object always return
    #   **ResourceNotFound** regardless of the value of `TerminateToken`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ignore_errors
    #   If set to true, AWS Service Catalog stops managing the specified
    #   ProvisionedProduct object even if it cannot delete the underlying
    #   resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    class TerminateProvisionedProductInput < Struct.new(
      :provisioned_product_name,
      :provisioned_product_id,
      :terminate_token,
      :ignore_errors,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   The detailed result of the TerminateProvisionedProduct request,
    #   containing the inputs made to that request, the current state of the
    #   request, a pointer to the ProvisionedProduct object that the request
    #   is modifying, and a list of any errors that the request encountered.
    #   @return [Types::RecordDetail]
    #
    class TerminateProvisionedProductOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateConstraintInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #         description: "ConstraintDescription",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the constraint to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated text description of the constraint.
    #   @return [String]
    #
    class UpdateConstraintInput < Struct.new(
      :accept_language,
      :id,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] constraint_detail
    #   The resulting detailed constraint information.
    #   @return [Types::ConstraintDetail]
    #
    # @!attribute [rw] constraint_parameters
    #   The resulting updated constraint parameters.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    class UpdateConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePortfolioInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #         display_name: "PortfolioDisplayName",
    #         description: "PortfolioDescription",
    #         provider_name: "ProviderName",
    #         add_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         remove_tags: ["TagKey"],
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the portfolio for the update request.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to use for display purposes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated text description of the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The updated name of the portfolio provider.
    #   @return [String]
    #
    # @!attribute [rw] add_tags
    #   Tags to add to the existing list of tags associated with the
    #   portfolio.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] remove_tags
    #   Tags to remove from the existing list of tags associated with the
    #   portfolio.
    #   @return [Array<String>]
    #
    class UpdatePortfolioInput < Struct.new(
      :accept_language,
      :id,
      :display_name,
      :description,
      :provider_name,
      :add_tags,
      :remove_tags)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_detail
    #   The resulting detailed portfolio information.
    #   @return [Types::PortfolioDetail]
    #
    # @!attribute [rw] tags
    #   Tags associated with the portfolio.
    #   @return [Array<Types::Tag>]
    #
    class UpdatePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #         name: "ProductViewName",
    #         owner: "ProductViewOwner",
    #         description: "ProductViewShortDescription",
    #         distributor: "ProductViewOwner",
    #         support_description: "SupportDescription",
    #         support_email: "SupportEmail",
    #         support_url: "SupportUrl",
    #         add_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         remove_tags: ["TagKey"],
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the product for the update request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated product name.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The updated owner of the product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated text description of the product.
    #   @return [String]
    #
    # @!attribute [rw] distributor
    #   The updated distributor of the product.
    #   @return [String]
    #
    # @!attribute [rw] support_description
    #   The updated support description for the product.
    #   @return [String]
    #
    # @!attribute [rw] support_email
    #   The updated support email for the product.
    #   @return [String]
    #
    # @!attribute [rw] support_url
    #   The updated support URL for the product.
    #   @return [String]
    #
    # @!attribute [rw] add_tags
    #   Tags to add to the existing list of tags associated with the
    #   product.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] remove_tags
    #   Tags to remove from the existing list of tags associated with the
    #   product.
    #   @return [Array<String>]
    #
    class UpdateProductInput < Struct.new(
      :accept_language,
      :id,
      :name,
      :owner,
      :description,
      :distributor,
      :support_description,
      :support_email,
      :support_url,
      :add_tags,
      :remove_tags)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_detail
    #   The resulting detailed product view information.
    #   @return [Types::ProductViewDetail]
    #
    # @!attribute [rw] tags
    #   Tags associated with the product.
    #   @return [Array<Types::Tag>]
    #
    class UpdateProductOutput < Struct.new(
      :product_view_detail,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProvisionedProductInput
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
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   The updated name of the ProvisionedProduct object . You must specify
    #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
    #   both.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the ProvisionedProduct object to update. You must
    #   specify either `ProvisionedProductName` or `ProvisionedProductId`,
    #   but not both.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The identifier of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The identifier of the path to use in the updated ProvisionedProduct
    #   object. This value is optional if the product has a default path,
    #   and is required if there is more than one path for the specified
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_parameters
    #   A list of `ProvisioningParameter` objects used to update the
    #   ProvisionedProduct object.
    #   @return [Array<Types::UpdateProvisioningParameter>]
    #
    # @!attribute [rw] update_token
    #   The idempotency token that uniquely identifies the provisioning
    #   update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    class UpdateProvisionedProductInput < Struct.new(
      :accept_language,
      :provisioned_product_name,
      :provisioned_product_id,
      :product_id,
      :provisioning_artifact_id,
      :path_id,
      :provisioning_parameters,
      :update_token)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   The detailed result of the UpdateProvisionedProduct request,
    #   containing the inputs made to that request, the current state of the
    #   request, a pointer to the ProvisionedProduct object that the request
    #   is modifying, and a list of any errors that the request encountered.
    #   @return [Types::RecordDetail]
    #
    class UpdateProvisionedProductOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #         name: "ProvisioningArtifactName",
    #         description: "ProvisioningArtifactDescription",
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code to use for this operation. Supported language
    #   codes are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact for the update request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated text description of the provisioning artifact.
    #   @return [String]
    #
    class UpdateProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_detail
    #   The resulting detailed provisioning artifact information.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] info
    #   Additional information about the provisioning artifact update
    #   request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    class UpdateProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status)
      include Aws::Structure
    end

    # The parameter key/value pair used to update a ProvisionedProduct
    # object. If `UsePreviousValue` is set to true, `Value` is ignored and
    # the value for `Key` is kept as previously set (current value).
    #
    # @note When making an API call, you may pass UpdateProvisioningParameter
    #   data as a hash:
    #
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false,
    #       }
    #
    # @!attribute [rw] key
    #   The `ProvisioningArtifactParameter.ParameterKey` parameter from
    #   DescribeProvisioningParameters.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to use for updating the product provisioning. Any
    #   constraints on this value can be found in the
    #   `ProvisioningArtifactParameter` parameter for `Key`.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_value
    #   If true, uses the currently set value for `Key`, ignoring
    #   `UpdateProvisioningParameter.Value`.
    #   @return [Boolean]
    #
    class UpdateProvisioningParameter < Struct.new(
      :key,
      :value,
      :use_previous_value)
      include Aws::Structure
    end

    # Additional information provided by the administrator.
    #
    # @!attribute [rw] type
    #   The usage instruction type for the value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The usage instruction value for this type.
    #   @return [String]
    #
    class UsageInstruction < Struct.new(
      :type,
      :value)
      include Aws::Structure
    end

  end
end
