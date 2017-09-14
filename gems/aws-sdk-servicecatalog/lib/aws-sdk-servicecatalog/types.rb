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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShareInput AWS API Documentation
    #
    class AcceptPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShareOutput AWS API Documentation
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AccessLevelFilter AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociatePrincipalWithPortfolioInput AWS API Documentation
    #
    class AssociatePrincipalWithPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn,
      :principal_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociatePrincipalWithPortfolioOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateProductWithPortfolioInput AWS API Documentation
    #
    class AssociateProductWithPortfolioInput < Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id,
      :source_portfolio_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateProductWithPortfolioOutput AWS API Documentation
    #
    class AssociateProductWithPortfolioOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateTagOptionWithResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tag_option_id: "TagOptionId", # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   The resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] tag_option_id
    #   The TagOption identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateTagOptionWithResourceInput AWS API Documentation
    #
    class AssociateTagOptionWithResourceInput < Struct.new(
      :resource_id,
      :tag_option_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateTagOptionWithResourceOutput AWS API Documentation
    #
    class AssociateTagOptionWithResourceOutput < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ConstraintDetail AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ConstraintSummary AWS API Documentation
    #
    class ConstraintSummary < Struct.new(
      :type,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         source_product_arn: "ProductArn", # required
    #         target_product_id: "Id",
    #         target_product_name: "ProductViewName",
    #         source_provisioning_artifact_identifiers: [
    #           {
    #             "Id" => "ProvisioningArtifactPropertyValue",
    #           },
    #         ],
    #         copy_options: ["CopyTags"], # accepts CopyTags
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] source_product_arn
    #   The Amazon Resource Name (ARN) of the source product.
    #   @return [String]
    #
    # @!attribute [rw] target_product_id
    #   The ID of the target product. By default, a new product is created.
    #   @return [String]
    #
    # @!attribute [rw] target_product_name
    #   A name for the target product. The default is the name of the source
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] source_provisioning_artifact_identifiers
    #   The IDs of the product versions to copy. By default, all
    #   provisioning artifacts are copied.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] copy_options
    #   The copy options. If the value is `CopyTags`, the tags from the
    #   source product are copied to the target product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can use the same
    #   input in multiple requests, provided that you also specify a
    #   different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CopyProductInput AWS API Documentation
    #
    class CopyProductInput < Struct.new(
      :accept_language,
      :source_product_arn,
      :target_product_id,
      :target_product_name,
      :source_provisioning_artifact_identifiers,
      :copy_options,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] copy_product_token
    #   A unique token to pass to `DescribeCopyProductStatus` to track the
    #   progress of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CopyProductOutput AWS API Documentation
    #
    class CopyProductOutput < Struct.new(
      :copy_product_token)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    #   The constraint parameters. Expected values vary depending on which
    #   **Type** is specified. For more information, see the Examples
    #   section.
    #
    #   For Type `LAUNCH`, the `RoleArn` property is required.
    #
    #   For Type `NOTIFICATION`, the `NotificationArns` property is
    #   required.
    #
    #   For Type `TEMPLATE`, the `Rules` property is required.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the constraint. Case-sensitive valid values are:
    #   `LAUNCH`, `NOTIFICATION`, or `TEMPLATE`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The text description of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A token to disambiguate duplicate requests. You can use the same
    #   input in multiple requests, provided that you also specify a
    #   different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateConstraintInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateConstraintOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    #   A token to disambiguate duplicate requests. You can use the same
    #   input in multiple requests, provided that you also specify a
    #   different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShareInput AWS API Documentation
    #
    class CreatePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShareOutput AWS API Documentation
    #
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
    #         product_type: "CLOUD_FORMATION_TEMPLATE", # required, accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE
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
    #           type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR
    #         },
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    #   A token to disambiguate duplicate requests. You can use the same
    #   input in multiple requests, provided that you also specify a
    #   different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProductOutput AWS API Documentation
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
    #           type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR
    #         },
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    #   A token to disambiguate duplicate requests. You can use the same
    #   input in multiple requests, provided that you also specify a
    #   different idempotency token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisioningArtifactInput AWS API Documentation
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
    #   Additional information about the creation request for the
    #   provisioning artifact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the current request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisioningArtifactOutput AWS API Documentation
    #
    class CreateProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTagOptionInput
    #   data as a hash:
    #
    #       {
    #         key: "TagOptionKey", # required
    #         value: "TagOptionValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The TagOption key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The TagOption value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateTagOptionInput AWS API Documentation
    #
    class CreateTagOptionInput < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @!attribute [rw] tag_option_detail
    #   The resulting detailed TagOption information.
    #   @return [Types::TagOptionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateTagOptionOutput AWS API Documentation
    #
    class CreateTagOptionOutput < Struct.new(
      :tag_option_detail)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the constraint to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteConstraintInput AWS API Documentation
    #
    class DeleteConstraintInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteConstraintOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the portfolio for the delete request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioInput AWS API Documentation
    #
    class DeletePortfolioInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShareInput AWS API Documentation
    #
    class DeletePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShareOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the product for the delete request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProductInput AWS API Documentation
    #
    class DeleteProductInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProductOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact for the delete request.
    #   This is sometimes referred to as the product version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisioningArtifactInput AWS API Documentation
    #
    class DeleteProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisioningArtifactOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the constraint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeConstraintInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeConstraintOutput AWS API Documentation
    #
    class DescribeConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCopyProductStatusInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         copy_product_token: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] copy_product_token
    #   The token returned from the call to `CopyProduct` that initiated the
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeCopyProductStatusInput AWS API Documentation
    #
    class DescribeCopyProductStatusInput < Struct.new(
      :accept_language,
      :copy_product_token)
      include Aws::Structure
    end

    # @!attribute [rw] copy_product_status
    #   The status of the copy product operation.
    #   @return [String]
    #
    # @!attribute [rw] target_product_id
    #   The ID of the copied product.
    #   @return [String]
    #
    # @!attribute [rw] status_detail
    #   The status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeCopyProductStatusOutput AWS API Documentation
    #
    class DescribeCopyProductStatusOutput < Struct.new(
      :copy_product_status,
      :target_product_id,
      :status_detail)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the portfolio for which to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioInput AWS API Documentation
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
    # @!attribute [rw] tag_options
    #   TagOptions associated with the portfolio.
    #   @return [Array<Types::TagOptionDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioOutput AWS API Documentation
    #
    class DescribePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags,
      :tag_options)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the product for which to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdminInput AWS API Documentation
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
    # @!attribute [rw] provisioning_artifact_summaries
    #   A list of provisioning artifact summaries for the product.
    #   @return [Array<Types::ProvisioningArtifactSummary>]
    #
    # @!attribute [rw] tags
    #   Tags associated with the product.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] tag_options
    #   List of TagOptions associated with the product.
    #   @return [Array<Types::TagOptionDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdminOutput AWS API Documentation
    #
    class DescribeProductAsAdminOutput < Struct.new(
      :product_view_detail,
      :provisioning_artifact_summaries,
      :tags,
      :tag_options)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The `ProductId` of the product to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The `ProductViewId` of the product to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductViewInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductViewOutput AWS API Documentation
    #
    class DescribeProductViewOutput < Struct.new(
      :product_view_summary,
      :provisioning_artifacts)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisionedProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id", # required
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The provisioned product identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductInput AWS API Documentation
    #
    class DescribeProvisionedProductInput < Struct.new(
      :accept_language,
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_product_detail
    #   Detailed provisioned product information.
    #   @return [Types::ProvisionedProductDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductOutput AWS API Documentation
    #
    class DescribeProvisionedProductOutput < Struct.new(
      :provisioned_product_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         provisioning_artifact_id: "Id", # required
    #         product_id: "Id", # required
    #         verbose: false,
    #       }
    #
    # @!attribute [rw] accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. This is sometimes
    #   referred to as the product version.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] verbose
    #   Enable a verbose level of details for the provisioning artifact.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningArtifactInput AWS API Documentation
    #
    class DescribeProvisioningArtifactInput < Struct.new(
      :accept_language,
      :provisioning_artifact_id,
      :product_id,
      :verbose)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningArtifactOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The identifier of the path for this product's provisioning. This
    #   value is optional if the product has a default path, and is required
    #   if there is more than one path for the specified product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParametersInput AWS API Documentation
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
    # @!attribute [rw] tag_options
    #   List of TagOptions associated with the provisioned provisioning
    #   parameters.
    #   @return [Array<Types::TagOptionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParametersOutput AWS API Documentation
    #
    class DescribeProvisioningParametersOutput < Struct.new(
      :provisioning_artifact_parameters,
      :constraint_summaries,
      :usage_instructions,
      :tag_options)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeRecordInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeRecordOutput AWS API Documentation
    #
    class DescribeRecordOutput < Struct.new(
      :record_detail,
      :record_outputs,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagOptionInput
    #   data as a hash:
    #
    #       {
    #         id: "TagOptionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the TagOption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOptionInput AWS API Documentation
    #
    class DescribeTagOptionInput < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] tag_option_detail
    #   The resulting detailed TagOption information.
    #   @return [Types::TagOptionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOptionOutput AWS API Documentation
    #
    class DescribeTagOptionOutput < Struct.new(
      :tag_option_detail)
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociatePrincipalFromPortfolioInput AWS API Documentation
    #
    class DisassociatePrincipalFromPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociatePrincipalFromPortfolioOutput AWS API Documentation
    #
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateProductFromPortfolioInput AWS API Documentation
    #
    class DisassociateProductFromPortfolioInput < Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateProductFromPortfolioOutput AWS API Documentation
    #
    class DisassociateProductFromPortfolioOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateTagOptionFromResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_id: "ResourceId", # required
    #         tag_option_id: "TagOptionId", # required
    #       }
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource from which to disassociate the TagOption.
    #   @return [String]
    #
    # @!attribute [rw] tag_option_id
    #   Identifier of the TagOption to disassociate from the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateTagOptionFromResourceInput AWS API Documentation
    #
    class DisassociateTagOptionFromResourceInput < Struct.new(
      :resource_id,
      :tag_option_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateTagOptionFromResourceOutput AWS API Documentation
    #
    class DisassociateTagOptionFromResourceOutput < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/LaunchPathSummary AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioSharesInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioSharesOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListConstraintsForPortfolioInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListConstraintsForPortfolioOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier. Identifies the product for which to retrieve
    #   `LaunchPathSummaries` information.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListLaunchPathsInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListLaunchPathsOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolioAccessInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolioAccessOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosForProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosForProductOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPrincipalsForPortfolioInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPrincipalsForPortfolioOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifactsInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifactsOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistoryInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistoryOutput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistorySearchFilter AWS API Documentation
    #
    class ListRecordHistorySearchFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourcesForTagOptionInput
    #   data as a hash:
    #
    #       {
    #         tag_option_id: "TagOptionId", # required
    #         resource_type: "ResourceType",
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] tag_option_id
    #   Identifier of the TagOption.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Resource type.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListResourcesForTagOptionInput AWS API Documentation
    #
    class ListResourcesForTagOptionInput < Struct.new(
      :tag_option_id,
      :resource_type,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] resource_details
    #   The resulting detailed resource information.
    #   @return [Array<Types::ResourceDetail>]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListResourcesForTagOptionOutput AWS API Documentation
    #
    class ListResourcesForTagOptionOutput < Struct.new(
      :resource_details,
      :page_token)
      include Aws::Structure
    end

    # The ListTagOptions filters.
    #
    # @note When making an API call, you may pass ListTagOptionsFilters
    #   data as a hash:
    #
    #       {
    #         key: "TagOptionKey",
    #         value: "TagOptionValue",
    #         active: false,
    #       }
    #
    # @!attribute [rw] key
    #   The ListTagOptionsFilters key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The ListTagOptionsFilters value.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The ListTagOptionsFilters active state.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptionsFilters AWS API Documentation
    #
    class ListTagOptionsFilters < Struct.new(
      :key,
      :value,
      :active)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagOptionsInput
    #   data as a hash:
    #
    #       {
    #         filters: {
    #           key: "TagOptionKey",
    #           value: "TagOptionValue",
    #           active: false,
    #         },
    #         page_size: 1,
    #         page_token: "PageToken",
    #       }
    #
    # @!attribute [rw] filters
    #   The list of filters with which to limit search results. If no search
    #   filters are specified, the output is all TagOptions.
    #   @return [Types::ListTagOptionsFilters]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptionsInput AWS API Documentation
    #
    class ListTagOptionsInput < Struct.new(
      :filters,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] tag_option_details
    #   The resulting detailed TagOption information.
    #   @return [Array<Types::TagOptionDetail>]
    #
    # @!attribute [rw] page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptionsOutput AWS API Documentation
    #
    class ListTagOptionsOutput < Struct.new(
      :tag_option_details,
      :page_token)
      include Aws::Structure
    end

    # The constraints that the administrator has put on the parameter.
    #
    # @!attribute [rw] allowed_values
    #   The values that the administrator has allowed for the parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ParameterConstraints AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/PortfolioDetail AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/Principal AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProductViewAggregationValue AWS API Documentation
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
    #
    #   `AVAILABLE` - Product is available for use.
    #
    #   `CREATING` - Creation of product started, not ready for use.
    #
    #   `FAILED` - Action on product failed.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProductViewDetail AWS API Documentation
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
    #   significance of this value. If this value is `MARKETPLACE`, the
    #   product was created by AWS Marketplace.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProductViewSummary AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionProductOutput AWS API Documentation
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
    #
    #   `AVAILABLE` - Stable state, ready to perform any operation. The most
    #   recent action request succeeded and completed.
    #
    #   `UNDER_CHANGE` - Transitive state, operations performed may or may
    #   not have valid results. Wait for an `AVAILABLE` status before
    #   performing operations.
    #
    #   `TAINTED` - Stable state, ready to perform any operation. The stack
    #   has completed the requested operation but is not exactly what was
    #   requested. For example, a request to update to a new version failed
    #   and the stack rolled back to the current version.
    #
    #   `ERROR` - Something unexpected happened such that the provisioned
    #   product exists but the stack is not running. For example,
    #   CloudFormation received an invalid parameter value and could not
    #   launch the stack.
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
    #   A token to disambiguate duplicate requests. You can use the same
    #   input in multiple requests, provided that you also specify a
    #   different idempotency token for each request.
    #   @return [String]
    #
    # @!attribute [rw] last_record_id
    #   The record identifier of the last request performed on this
    #   ProvisionedProduct object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionedProductDetail AWS API Documentation
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
    #   The identifier for the artifact. This is sometimes referred to as
    #   the product version.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifact AWS API Documentation
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
    #   The identifier of the provisioning artifact. This is sometimes
    #   referred to as the product version.
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
    #   The type of the provisioning artifact. The following provisioning
    #   artifact types are used by AWS Marketplace products:
    #
    #   `MARKETPLACE_AMI` - AMI products.
    #
    #   `MARKETPLACE_CAR` - CAR (Cluster and AWS Resources) products.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactDetail AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactParameter AWS API Documentation
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

    # Provisioning artifact properties. For example request JSON, see
    # CreateProvisioningArtifact.
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
    #         type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR
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
    #   When using this element in a request, you must specify
    #   `LoadTemplateFromURL`. For more information, see
    #   CreateProvisioningArtifact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the provisioning artifact properties. The following
    #   provisioning artifact property types are used by AWS Marketplace
    #   products:
    #
    #   `MARKETPLACE_AMI` - AMI products.
    #
    #   `MARKETPLACE_CAR` - CAR (Cluster and AWS Resources) products.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactProperties AWS API Documentation
    #
    class ProvisioningArtifactProperties < Struct.new(
      :name,
      :description,
      :info,
      :type)
      include Aws::Structure
    end

    # Stores summary information about a provisioning artifact.
    #
    # @!attribute [rw] id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC timestamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] provisioning_artifact_metadata
    #   The provisioning artifact metadata. This data is used with products
    #   created by AWS Marketplace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactSummary AWS API Documentation
    #
    class ProvisioningArtifactSummary < Struct.new(
      :id,
      :name,
      :description,
      :created_time,
      :provisioning_artifact_metadata)
      include Aws::Structure
    end

    # The parameter key-value pairs used to provision a product.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningParameter AWS API Documentation
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
    #
    #   `CREATED` - Request created but the operation has not yet started.
    #
    #   `IN_PROGRESS` - The requested operation is in-progress.
    #
    #   `IN_PROGRESS_IN_ERROR` - The provisioned product is under change but
    #   the requested operation failed and some remediation is occurring.
    #   For example, a rollback.
    #
    #   `SUCCEEDED` - The requested operation has successfully completed.
    #
    #   `FAILED` - The requested operation has completed but has failed.
    #   Investigate using the error messages returned.
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
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RecordDetail AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RecordError AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RecordOutput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RecordTag AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShareInput AWS API Documentation
    #
    class RejectPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShareOutput AWS API Documentation
    #
    class RejectPortfolioShareOutput < Aws::EmptyStructure; end

    # Detailed resource information.
    #
    # @!attribute [rw] id
    #   Identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Creation time of the resource.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ResourceDetail AWS API Documentation
    #
    class ResourceDetail < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :created_time)
      include Aws::Structure
    end

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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ScanProvisionedProductsInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ScanProvisionedProductsOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsAsAdminInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsAsAdminOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsOutput AWS API Documentation
    #
    class SearchProductsOutput < Struct.new(
      :product_view_summaries,
      :product_view_aggregations,
      :next_page_token)
      include Aws::Structure
    end

    # Key-value pairs to associate with this provisioning. These tags are
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
    #   The desired value for this key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The TagOption details.
    #
    # @!attribute [rw] key
    #   The TagOptionDetail key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The TagOptionDetail value.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The TagOptionDetail active state.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   The TagOptionDetail identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TagOptionDetail AWS API Documentation
    #
    class TagOptionDetail < Struct.new(
      :key,
      :value,
      :active,
      :id)
      include Aws::Structure
    end

    # The TagOption summary key-value pair.
    #
    # @!attribute [rw] key
    #   The TagOptionSummary key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The TagOptionSummary value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TagOptionSummary AWS API Documentation
    #
    class TagOptionSummary < Struct.new(
      :key,
      :values)
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
    #   The name of the ProvisionedProduct object to terminate. Specify
    #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
    #   both.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the ProvisionedProduct object to terminate.
    #   Specify either `ProvisionedProductName` or `ProvisionedProductId`,
    #   but not both.
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TerminateProvisionedProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TerminateProvisionedProductOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateConstraintInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateConstraintOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdatePortfolioInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdatePortfolioOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProductOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   The updated name of the ProvisionedProduct object. Specify either
    #   `ProvisionedProductName` or `ProvisionedProductId`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the ProvisionedProduct object to update. Specify
    #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
    #   both.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The identifier of the ProvisionedProduct object.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProductInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProductOutput AWS API Documentation
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
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact for the update request.
    #   This is sometimes referred to as the product version.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningArtifactInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningArtifactOutput AWS API Documentation
    #
    class UpdateProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status)
      include Aws::Structure
    end

    # The parameter key-value pair used to update a ProvisionedProduct
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningParameter AWS API Documentation
    #
    class UpdateProvisioningParameter < Struct.new(
      :key,
      :value,
      :use_previous_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTagOptionInput
    #   data as a hash:
    #
    #       {
    #         id: "TagOptionId", # required
    #         value: "TagOptionValue",
    #         active: false,
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the constraint to update.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The updated value.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The updated active state.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateTagOptionInput AWS API Documentation
    #
    class UpdateTagOptionInput < Struct.new(
      :id,
      :value,
      :active)
      include Aws::Structure
    end

    # @!attribute [rw] tag_option_detail
    #   The resulting detailed TagOption information.
    #   @return [Types::TagOptionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateTagOptionOutput AWS API Documentation
    #
    class UpdateTagOptionOutput < Struct.new(
      :tag_option_detail)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UsageInstruction AWS API Documentation
    #
    class UsageInstruction < Struct.new(
      :type,
      :value)
      include Aws::Structure
    end

  end
end
