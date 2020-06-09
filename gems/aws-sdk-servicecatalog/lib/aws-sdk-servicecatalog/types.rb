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
    #         portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG, AWS_ORGANIZATIONS
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
    # @!attribute [rw] portfolio_share_type
    #   The type of shared portfolios to accept. The default is to accept
    #   imported portfolios.
    #
    #   * `AWS_ORGANIZATIONS` - Accept portfolios shared by the master
    #     account of your organization.
    #
    #   * `IMPORTED` - Accept imported portfolios.
    #
    #   * `AWS_SERVICECATALOG` - Not supported. (Throws
    #     ResourceNotFoundException.)
    #
    #   For example, `aws servicecatalog accept-portfolio-share
    #   --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type
    #   AWS_ORGANIZATIONS`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShareInput AWS API Documentation
    #
    class AcceptPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :portfolio_share_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShareOutput AWS API Documentation
    #
    class AcceptPortfolioShareOutput < Aws::EmptyStructure; end

    # The access level to use to filter results.
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
    #   The access level.
    #
    #   * `Account` - Filter results based on the account.
    #
    #   * `Role` - Filter results based on the federated role of the
    #     specified user.
    #
    #   * `User` - Filter results based on the specified user.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The user to which the access level applies. The only supported value
    #   is `Self`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AccessLevelFilter AWS API Documentation
    #
    class AccessLevelFilter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateBudgetWithResourceInput
    #   data as a hash:
    #
    #       {
    #         budget_name: "BudgetName", # required
    #         resource_id: "Id", # required
    #       }
    #
    # @!attribute [rw] budget_name
    #   The name of the budget you want to associate.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource identifier. Either a portfolio-id or a product-id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateBudgetWithResourceInput AWS API Documentation
    #
    class AssociateBudgetWithResourceInput < Struct.new(
      :budget_name,
      :resource_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateBudgetWithResourceOutput AWS API Documentation
    #
    class AssociateBudgetWithResourceOutput < Aws::EmptyStructure; end

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
    #   The ARN of the principal (IAM user, role, or group).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type. The supported value is `IAM`.
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
    #   The identifier of the source portfolio.
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

    # @note When making an API call, you may pass AssociateServiceActionWithProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #         service_action_id: "Id", # required
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #   @return [String]
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateServiceActionWithProvisioningArtifactInput AWS API Documentation
    #
    class AssociateServiceActionWithProvisioningArtifactInput < Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :service_action_id,
      :accept_language)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateServiceActionWithProvisioningArtifactOutput AWS API Documentation
    #
    class AssociateServiceActionWithProvisioningArtifactOutput < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass BatchAssociateServiceActionWithProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         service_action_associations: [ # required
    #           {
    #             service_action_id: "Id", # required
    #             product_id: "Id", # required
    #             provisioning_artifact_id: "Id", # required
    #           },
    #         ],
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] service_action_associations
    #   One or more associations, each consisting of the Action ID, the
    #   Product ID, and the Provisioning Artifact ID.
    #   @return [Array<Types::ServiceActionAssociation>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BatchAssociateServiceActionWithProvisioningArtifactInput AWS API Documentation
    #
    class BatchAssociateServiceActionWithProvisioningArtifactInput < Struct.new(
      :service_action_associations,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] failed_service_action_associations
    #   An object that contains a list of errors, along with information to
    #   help you identify the self-service action.
    #   @return [Array<Types::FailedServiceActionAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BatchAssociateServiceActionWithProvisioningArtifactOutput AWS API Documentation
    #
    class BatchAssociateServiceActionWithProvisioningArtifactOutput < Struct.new(
      :failed_service_action_associations)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisassociateServiceActionFromProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         service_action_associations: [ # required
    #           {
    #             service_action_id: "Id", # required
    #             product_id: "Id", # required
    #             provisioning_artifact_id: "Id", # required
    #           },
    #         ],
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] service_action_associations
    #   One or more associations, each consisting of the Action ID, the
    #   Product ID, and the Provisioning Artifact ID.
    #   @return [Array<Types::ServiceActionAssociation>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BatchDisassociateServiceActionFromProvisioningArtifactInput AWS API Documentation
    #
    class BatchDisassociateServiceActionFromProvisioningArtifactInput < Struct.new(
      :service_action_associations,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] failed_service_action_associations
    #   An object that contains a list of errors, along with information to
    #   help you identify the self-service action.
    #   @return [Array<Types::FailedServiceActionAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BatchDisassociateServiceActionFromProvisioningArtifactOutput AWS API Documentation
    #
    class BatchDisassociateServiceActionFromProvisioningArtifactOutput < Struct.new(
      :failed_service_action_associations)
      include Aws::Structure
    end

    # Information about a budget.
    #
    # @!attribute [rw] budget_name
    #   Name of the associated budget.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/BudgetDetail AWS API Documentation
    #
    class BudgetDetail < Struct.new(
      :budget_name)
      include Aws::Structure
    end

    # Information about a CloudWatch dashboard.
    #
    # @!attribute [rw] name
    #   The name of the CloudWatch dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CloudWatchDashboard AWS API Documentation
    #
    class CloudWatchDashboard < Struct.new(
      :name)
      include Aws::Structure
    end

    # Information about a constraint.
    #
    # @!attribute [rw] constraint_id
    #   The identifier of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of constraint.
    #
    #   * `LAUNCH`
    #
    #   * `NOTIFICATION`
    #
    #   * STACKSET
    #
    #   * `TEMPLATE`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The identifier of the product the constraint applies to. Note that a
    #   constraint applies to a specific instance of a product within a
    #   certain portfolio.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The identifier of the portfolio the product resides in. The
    #   constraint applies only to the instance of the product that lives
    #   within this portfolio.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ConstraintDetail AWS API Documentation
    #
    class ConstraintDetail < Struct.new(
      :constraint_id,
      :type,
      :description,
      :owner,
      :product_id,
      :portfolio_id)
      include Aws::Structure
    end

    # Summary information about a constraint.
    #
    # @!attribute [rw] type
    #   The type of constraint.
    #
    #   * `LAUNCH`
    #
    #   * `NOTIFICATION`
    #
    #   * STACKSET
    #
    #   * `TEMPLATE`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the constraint.
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
    #   The identifier of the target product. By default, a new product is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] target_product_name
    #   A name for the target product. The default is the name of the source
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] source_provisioning_artifact_identifiers
    #   The identifiers of the provisioning artifacts (also known as
    #   versions) of the product to copy. By default, all provisioning
    #   artifacts are copied.
    #   @return [Array<Hash<String,String>>]
    #
    # @!attribute [rw] copy_options
    #   The copy options. If the value is `CopyTags`, the tags from the
    #   source product are copied to the target product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
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
    #   The token to use to track the progress of the operation.
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
    #   The constraint parameters, in JSON format. The syntax depends on the
    #   constraint type as follows:
    #
    #   LAUNCH
    #
    #   : You are required to specify either the `RoleArn` or the
    #     `LocalRoleName` but can't use both.
    #
    #     Specify the `RoleArn` property as follows:
    #
    #     `\{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"\}`
    #
    #     Specify the `LocalRoleName` property as follows:
    #
    #     `\{"LocalRoleName": "SCBasicLaunchRole"\}`
    #
    #     If you specify the `LocalRoleName` property, when an account uses
    #     the launch constraint, the IAM role with that name in the account
    #     will be used. This allows launch-role constraints to be
    #     account-agnostic so the administrator can create fewer resources
    #     per shared account.
    #
    #     <note markdown="1"> The given role name must exist in the account used to create the
    #     launch constraint and the account of the user who launches a
    #     product with this launch constraint.
    #
    #      </note>
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `LAUNCH` constraint on a
    #     product and portfolio.
    #
    #   NOTIFICATION
    #
    #   : Specify the `NotificationArns` property as follows:
    #
    #     `\{"NotificationArns" :
    #     ["arn:aws:sns:us-east-1:123456789012:Topic"]\}`
    #
    #   RESOURCE\_UPDATE
    #
    #   : Specify the `TagUpdatesOnProvisionedProduct` property as follows:
    #
    #     `\{"Version":"2.0","Properties":\{"TagUpdateOnProvisionedProduct":"String"\}\}`
    #
    #     The `TagUpdatesOnProvisionedProduct` property accepts a string
    #     value of `ALLOWED` or `NOT_ALLOWED`.
    #
    #   STACKSET
    #
    #   : Specify the `Parameters` property as follows:
    #
    #     `\{"Version": "String", "Properties": \{"AccountList": [ "String"
    #     ], "RegionList": [ "String" ], "AdminRole": "String",
    #     "ExecutionRole": "String"\}\}`
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `STACKSET` constraint on a
    #     product and portfolio.
    #
    #     Products with a `STACKSET` constraint will launch an AWS
    #     CloudFormation stack set.
    #
    #   TEMPLATE
    #
    #   : Specify the `Rules` property. For more information, see [Template
    #     Constraint Rules][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of constraint.
    #
    #   * `LAUNCH`
    #
    #   * `NOTIFICATION`
    #
    #   * `RESOURCE_UPDATE`
    #
    #   * `STACKSET`
    #
    #   * `TEMPLATE`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
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
    #   Information about the constraint.
    #   @return [Types::ConstraintDetail]
    #
    # @!attribute [rw] constraint_parameters
    #   The constraint parameters.
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
    #   The description of the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the portfolio provider.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
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
    #   Information about the portfolio.
    #   @return [Types::PortfolioDetail]
    #
    # @!attribute [rw] tags
    #   Information about the tags associated with the portfolio.
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
    #         account_id: "AccountId",
    #         organization_node: {
    #           type: "ORGANIZATION", # accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #           value: "OrganizationNodeValue",
    #         },
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
    #   The AWS account ID. For example, `123456789012`.
    #   @return [String]
    #
    # @!attribute [rw] organization_node
    #   The organization node to whom you are going to share. If
    #   `OrganizationNode` is passed in, `PortfolioShare` will be created
    #   for the node and its children (when applies), and a
    #   `PortfolioShareToken` will be returned in the output in order for
    #   the administrator to monitor the status of the `PortfolioShare`
    #   creation process.
    #   @return [Types::OrganizationNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShareInput AWS API Documentation
    #
    class CreatePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_share_token
    #   The portfolio share unique identifier. This will only be returned if
    #   portfolio is shared to an organization node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShareOutput AWS API Documentation
    #
    class CreatePortfolioShareOutput < Struct.new(
      :portfolio_share_token)
      include Aws::Structure
    end

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
    #           disable_template_validation: false,
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
    #   The description of the product.
    #   @return [String]
    #
    # @!attribute [rw] distributor
    #   The distributor of the product.
    #   @return [String]
    #
    # @!attribute [rw] support_description
    #   The support information about the product.
    #   @return [String]
    #
    # @!attribute [rw] support_email
    #   The contact email for product support.
    #   @return [String]
    #
    # @!attribute [rw] support_url
    #   The contact URL for product support.
    #   @return [String]
    #
    # @!attribute [rw] product_type
    #   The type of product.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] provisioning_artifact_parameters
    #   The configuration of the provisioning artifact.
    #   @return [Types::ProvisioningArtifactProperties]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
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
    #   Information about the product view.
    #   @return [Types::ProductViewDetail]
    #
    # @!attribute [rw] provisioning_artifact_detail
    #   Information about the provisioning artifact.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] tags
    #   Information about the tags associated with the product.
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

    # @note When making an API call, you may pass CreateProvisionedProductPlanInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         plan_name: "ProvisionedProductPlanName", # required
    #         plan_type: "CLOUDFORMATION", # required, accepts CLOUDFORMATION
    #         notification_arns: ["NotificationArn"],
    #         path_id: "Id",
    #         product_id: "Id", # required
    #         provisioned_product_name: "ProvisionedProductName", # required
    #         provisioning_artifact_id: "Id", # required
    #         provisioning_parameters: [
    #           {
    #             key: "ParameterKey",
    #             value: "ParameterValue",
    #             use_previous_value: false,
    #           },
    #         ],
    #         idempotency_token: "IdempotencyToken", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] plan_name
    #   The name of the plan.
    #   @return [String]
    #
    # @!attribute [rw] plan_type
    #   The plan type.
    #   @return [String]
    #
    # @!attribute [rw] notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #   @return [Array<String>]
    #
    # @!attribute [rw] path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more
    #   than one path. To list the paths for a product, use ListLaunchPaths.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   A user-friendly name for the provisioned product. This value must be
    #   unique for the AWS account and cannot be updated after the product
    #   is provisioned.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #   @return [Array<Types::UpdateProvisioningParameter>]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #
    #   If the plan is for an existing provisioned product, the product must
    #   have a `RESOURCE_UPDATE` constraint with
    #   `TagUpdatesOnProvisionedProduct` set to `ALLOWED` to allow tag
    #   updates.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisionedProductPlanInput AWS API Documentation
    #
    class CreateProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_name,
      :plan_type,
      :notification_arns,
      :path_id,
      :product_id,
      :provisioned_product_name,
      :provisioning_artifact_id,
      :provisioning_parameters,
      :idempotency_token,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] plan_name
    #   The name of the plan.
    #   @return [String]
    #
    # @!attribute [rw] plan_id
    #   The plan identifier.
    #   @return [String]
    #
    # @!attribute [rw] provision_product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   The user-friendly name of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisionedProductPlanOutput AWS API Documentation
    #
    class CreateProvisionedProductPlanOutput < Struct.new(
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provisioned_product_name,
      :provisioning_artifact_id)
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
    #           disable_template_validation: false,
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
    #   The configuration for the provisioning artifact.
    #   @return [Types::ProvisioningArtifactProperties]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
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
    #   Information about the provisioning artifact.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] info
    #   The URL of the CloudFormation template in Amazon S3, in JSON format.
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

    # @note When making an API call, you may pass CreateServiceActionInput
    #   data as a hash:
    #
    #       {
    #         name: "ServiceActionName", # required
    #         definition_type: "SSM_AUTOMATION", # required, accepts SSM_AUTOMATION
    #         definition: { # required
    #           "Name" => "ServiceActionDefinitionValue",
    #         },
    #         description: "ServiceActionDescription",
    #         accept_language: "AcceptLanguage",
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The self-service action name.
    #   @return [String]
    #
    # @!attribute [rw] definition_type
    #   The service action definition type. For example, `SSM_AUTOMATION`.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The self-service action definition. Can be one of the following:
    #
    #   Name
    #
    #   : The name of the AWS Systems Manager document (SSM document). For
    #     example, `AWS-RestartEC2Instance`.
    #
    #     If you are using a shared SSM document, you must provide the ARN
    #     instead of the name.
    #
    #   Version
    #
    #   : The AWS Systems Manager automation document version. For example,
    #     `"Version": "1"`
    #
    #   AssumeRole
    #
    #   : The Amazon Resource Name (ARN) of the role that performs the
    #     self-service actions on your behalf. For example, `"AssumeRole":
    #     "arn:aws:iam::12345678910:role/ActionRole"`.
    #
    #     To reuse the provisioned product launch role, set to
    #     `"AssumeRole": "LAUNCH_ROLE"`.
    #
    #   Parameters
    #
    #   : The list of parameters in JSON format.
    #
    #     For example: `[\{"Name":"InstanceId","Type":"TARGET"\}]`
    #     or `[\{"Name":"InstanceId","Type":"TEXT_VALUE"\}]`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The self-service action description.
    #   @return [String]
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
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateServiceActionInput AWS API Documentation
    #
    class CreateServiceActionInput < Struct.new(
      :name,
      :definition_type,
      :definition,
      :description,
      :accept_language,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] service_action_detail
    #   An object containing information about the self-service action.
    #   @return [Types::ServiceActionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateServiceActionOutput AWS API Documentation
    #
    class CreateServiceActionOutput < Struct.new(
      :service_action_detail)
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
    #   Information about the TagOption.
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
    #   The identifier of the constraint.
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
    #   The portfolio identifier.
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
    #         account_id: "AccountId",
    #         organization_node: {
    #           type: "ORGANIZATION", # accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #           value: "OrganizationNodeValue",
    #         },
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
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] organization_node
    #   The organization node to whom you are going to stop sharing.
    #   @return [Types::OrganizationNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShareInput AWS API Documentation
    #
    class DeletePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_share_token
    #   The portfolio share unique identifier. This will only be returned if
    #   delete is made to an organization node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShareOutput AWS API Documentation
    #
    class DeletePortfolioShareOutput < Struct.new(
      :portfolio_share_token)
      include Aws::Structure
    end

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
    #   The product identifier.
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

    # @note When making an API call, you may pass DeleteProvisionedProductPlanInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         plan_id: "Id", # required
    #         ignore_errors: false,
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
    # @!attribute [rw] plan_id
    #   The plan identifier.
    #   @return [String]
    #
    # @!attribute [rw] ignore_errors
    #   If set to true, AWS Service Catalog stops managing the specified
    #   provisioned product even if it cannot delete the underlying
    #   resources.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisionedProductPlanInput AWS API Documentation
    #
    class DeleteProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_id,
      :ignore_errors)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisionedProductPlanOutput AWS API Documentation
    #
    class DeleteProvisionedProductPlanOutput < Aws::EmptyStructure; end

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
    #   The identifier of the provisioning artifact.
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

    # @note When making an API call, you may pass DeleteServiceActionInput
    #   data as a hash:
    #
    #       {
    #         id: "Id", # required
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteServiceActionInput AWS API Documentation
    #
    class DeleteServiceActionInput < Struct.new(
      :id,
      :accept_language)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteServiceActionOutput AWS API Documentation
    #
    class DeleteServiceActionOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTagOptionInput
    #   data as a hash:
    #
    #       {
    #         id: "TagOptionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The TagOption identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteTagOptionInput AWS API Documentation
    #
    class DeleteTagOptionInput < Struct.new(
      :id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteTagOptionOutput AWS API Documentation
    #
    class DeleteTagOptionOutput < Aws::EmptyStructure; end

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
    #   Information about the constraint.
    #   @return [Types::ConstraintDetail]
    #
    # @!attribute [rw] constraint_parameters
    #   The constraint parameters.
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
    #   The token for the copy product operation. This token is returned by
    #   CopyProduct.
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
    #   The identifier of the copied product.
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
    #   The portfolio identifier.
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
    #   Information about the portfolio.
    #   @return [Types::PortfolioDetail]
    #
    # @!attribute [rw] tags
    #   Information about the tags associated with the portfolio.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] tag_options
    #   Information about the TagOptions associated with the portfolio.
    #   @return [Array<Types::TagOptionDetail>]
    #
    # @!attribute [rw] budgets
    #   Information about the associated budgets.
    #   @return [Array<Types::BudgetDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioOutput AWS API Documentation
    #
    class DescribePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags,
      :tag_options,
      :budgets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePortfolioShareStatusInput
    #   data as a hash:
    #
    #       {
    #         portfolio_share_token: "Id", # required
    #       }
    #
    # @!attribute [rw] portfolio_share_token
    #   The token for the portfolio share operation. This token is returned
    #   either by CreatePortfolioShare or by DeletePortfolioShare.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioShareStatusInput AWS API Documentation
    #
    class DescribePortfolioShareStatusInput < Struct.new(
      :portfolio_share_token)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_share_token
    #   The token for the portfolio share operation. For example,
    #   `share-6v24abcdefghi`.
    #   @return [String]
    #
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] organization_node_value
    #   Organization node identifier. It can be either account id,
    #   organizational unit id or organization id.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the portfolio share operation.
    #   @return [String]
    #
    # @!attribute [rw] share_details
    #   Information about the portfolio share operation.
    #   @return [Types::ShareDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolioShareStatusOutput AWS API Documentation
    #
    class DescribePortfolioShareStatusOutput < Struct.new(
      :portfolio_share_token,
      :portfolio_id,
      :organization_node_value,
      :status,
      :share_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductAsAdminInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id",
    #         name: "ProductViewName",
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
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The product name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdminInput AWS API Documentation
    #
    class DescribeProductAsAdminInput < Struct.new(
      :accept_language,
      :id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_detail
    #   Information about the product view.
    #   @return [Types::ProductViewDetail]
    #
    # @!attribute [rw] provisioning_artifact_summaries
    #   Information about the provisioning artifacts (also known as
    #   versions) for the specified product.
    #   @return [Array<Types::ProvisioningArtifactSummary>]
    #
    # @!attribute [rw] tags
    #   Information about the tags associated with the product.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] tag_options
    #   Information about the TagOptions associated with the product.
    #   @return [Array<Types::TagOptionDetail>]
    #
    # @!attribute [rw] budgets
    #   Information about the associated budgets.
    #   @return [Array<Types::BudgetDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdminOutput AWS API Documentation
    #
    class DescribeProductAsAdminOutput < Struct.new(
      :product_view_detail,
      :provisioning_artifact_summaries,
      :tags,
      :tag_options,
      :budgets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         id: "Id",
    #         name: "ProductViewName",
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
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The product name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductInput AWS API Documentation
    #
    class DescribeProductInput < Struct.new(
      :accept_language,
      :id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] product_view_summary
    #   Summary information about the product view.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] provisioning_artifacts
    #   Information about the provisioning artifacts for the specified
    #   product.
    #   @return [Array<Types::ProvisioningArtifact>]
    #
    # @!attribute [rw] budgets
    #   Information about the associated budgets.
    #   @return [Array<Types::BudgetDetail>]
    #
    # @!attribute [rw] launch_paths
    #   Information about the associated launch paths.
    #   @return [Array<Types::LaunchPath>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductOutput AWS API Documentation
    #
    class DescribeProductOutput < Struct.new(
      :product_view_summary,
      :provisioning_artifacts,
      :budgets,
      :launch_paths)
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
    #   The product view identifier.
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
    #   Summary information about the product.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] provisioning_artifacts
    #   Information about the provisioning artifacts for the product.
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
    #   Information about the provisioned product.
    #   @return [Types::ProvisionedProductDetail]
    #
    # @!attribute [rw] cloud_watch_dashboards
    #   Any CloudWatch dashboards that were created when provisioning the
    #   product.
    #   @return [Array<Types::CloudWatchDashboard>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductOutput AWS API Documentation
    #
    class DescribeProvisionedProductOutput < Struct.new(
      :provisioned_product_detail,
      :cloud_watch_dashboards)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisionedProductPlanInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         plan_id: "Id", # required
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
    # @!attribute [rw] plan_id
    #   The plan identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductPlanInput AWS API Documentation
    #
    class DescribeProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_id,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_product_plan_details
    #   Information about the plan.
    #   @return [Types::ProvisionedProductPlanDetails]
    #
    # @!attribute [rw] resource_changes
    #   Information about the resource changes that will occur when the plan
    #   is executed.
    #   @return [Array<Types::ResourceChange>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductPlanOutput AWS API Documentation
    #
    class DescribeProvisionedProductPlanOutput < Struct.new(
      :provisioned_product_plan_details,
      :resource_changes,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         provisioning_artifact_id: "Id",
    #         product_id: "Id",
    #         provisioning_artifact_name: "ProvisioningArtifactName",
    #         product_name: "ProductViewName",
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
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_name
    #   The provisioning artifact name.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The product name.
    #   @return [String]
    #
    # @!attribute [rw] verbose
    #   Indicates whether a verbose level of detail is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningArtifactInput AWS API Documentation
    #
    class DescribeProvisioningArtifactInput < Struct.new(
      :accept_language,
      :provisioning_artifact_id,
      :product_id,
      :provisioning_artifact_name,
      :product_name,
      :verbose)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_detail
    #   Information about the provisioning artifact.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] info
    #   The URL of the CloudFormation template in Amazon S3.
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
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more
    #   than one path. To list the paths for a product, use ListLaunchPaths.
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
    #   Information about the parameters used to provision the product.
    #   @return [Array<Types::ProvisioningArtifactParameter>]
    #
    # @!attribute [rw] constraint_summaries
    #   Information about the constraints used to provision the product.
    #   @return [Array<Types::ConstraintSummary>]
    #
    # @!attribute [rw] usage_instructions
    #   Any additional metadata specifically related to the provisioning of
    #   the product. For example, see the `Version` field of the
    #   CloudFormation template.
    #   @return [Array<Types::UsageInstruction>]
    #
    # @!attribute [rw] tag_options
    #   Information about the TagOptions associated with the resource.
    #   @return [Array<Types::TagOptionSummary>]
    #
    # @!attribute [rw] provisioning_artifact_preferences
    #   An object that contains information about preferences, such as
    #   regions and accounts, for the provisioning artifact.
    #   @return [Types::ProvisioningArtifactPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParametersOutput AWS API Documentation
    #
    class DescribeProvisioningParametersOutput < Struct.new(
      :provisioning_artifact_parameters,
      :constraint_summaries,
      :usage_instructions,
      :tag_options,
      :provisioning_artifact_preferences)
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
    #   The record identifier of the provisioned product. This identifier is
    #   returned by the request operation.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
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
    #   Information about the product.
    #   @return [Types::RecordDetail]
    #
    # @!attribute [rw] record_outputs
    #   Information about the product created as the result of a request.
    #   For example, the output for a CloudFormation-backed product that
    #   creates an S3 bucket would include the S3 bucket URL.
    #   @return [Array<Types::RecordOutput>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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

    # @note When making an API call, you may pass DescribeServiceActionExecutionParametersInput
    #   data as a hash:
    #
    #       {
    #         provisioned_product_id: "Id", # required
    #         service_action_id: "Id", # required
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeServiceActionExecutionParametersInput AWS API Documentation
    #
    class DescribeServiceActionExecutionParametersInput < Struct.new(
      :provisioned_product_id,
      :service_action_id,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] service_action_parameters
    #   The parameters of the self-service action.
    #   @return [Array<Types::ExecutionParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeServiceActionExecutionParametersOutput AWS API Documentation
    #
    class DescribeServiceActionExecutionParametersOutput < Struct.new(
      :service_action_parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeServiceActionInput
    #   data as a hash:
    #
    #       {
    #         id: "Id", # required
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] id
    #   The self-service action identifier.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeServiceActionInput AWS API Documentation
    #
    class DescribeServiceActionInput < Struct.new(
      :id,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] service_action_detail
    #   Detailed information about the self-service action.
    #   @return [Types::ServiceActionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeServiceActionOutput AWS API Documentation
    #
    class DescribeServiceActionOutput < Struct.new(
      :service_action_detail)
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
    #   The TagOption identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOptionInput AWS API Documentation
    #
    class DescribeTagOptionInput < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] tag_option_detail
    #   Information about the TagOption.
    #   @return [Types::TagOptionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOptionOutput AWS API Documentation
    #
    class DescribeTagOptionOutput < Struct.new(
      :tag_option_detail)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisableAWSOrganizationsAccessInput AWS API Documentation
    #
    class DisableAWSOrganizationsAccessInput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisableAWSOrganizationsAccessOutput AWS API Documentation
    #
    class DisableAWSOrganizationsAccessOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateBudgetFromResourceInput
    #   data as a hash:
    #
    #       {
    #         budget_name: "BudgetName", # required
    #         resource_id: "Id", # required
    #       }
    #
    # @!attribute [rw] budget_name
    #   The name of the budget you want to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource identifier you want to disassociate from. Either a
    #   portfolio-id or a product-id.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateBudgetFromResourceInput AWS API Documentation
    #
    class DisassociateBudgetFromResourceInput < Struct.new(
      :budget_name,
      :resource_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateBudgetFromResourceOutput AWS API Documentation
    #
    class DisassociateBudgetFromResourceOutput < Aws::EmptyStructure; end

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
    #   The ARN of the principal (IAM user, role, or group).
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

    # @note When making an API call, you may pass DisassociateServiceActionFromProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #         service_action_id: "Id", # required
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #   @return [String]
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateServiceActionFromProvisioningArtifactInput AWS API Documentation
    #
    class DisassociateServiceActionFromProvisioningArtifactInput < Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :service_action_id,
      :accept_language)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateServiceActionFromProvisioningArtifactOutput AWS API Documentation
    #
    class DisassociateServiceActionFromProvisioningArtifactOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateTagOptionFromResourceInput
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

    # The specified resource is a duplicate.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DuplicateResourceException AWS API Documentation
    #
    class DuplicateResourceException < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/EnableAWSOrganizationsAccessInput AWS API Documentation
    #
    class EnableAWSOrganizationsAccessInput < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/EnableAWSOrganizationsAccessOutput AWS API Documentation
    #
    class EnableAWSOrganizationsAccessOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ExecuteProvisionedProductPlanInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         plan_id: "Id", # required
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
    # @!attribute [rw] plan_id
    #   The plan identifier.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductPlanInput AWS API Documentation
    #
    class ExecuteProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_id,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   Information about the result of provisioning the product.
    #   @return [Types::RecordDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductPlanOutput AWS API Documentation
    #
    class ExecuteProvisionedProductPlanOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExecuteProvisionedProductServiceActionInput
    #   data as a hash:
    #
    #       {
    #         provisioned_product_id: "Id", # required
    #         service_action_id: "Id", # required
    #         execute_token: "IdempotencyToken", # required
    #         accept_language: "AcceptLanguage",
    #         parameters: {
    #           "ExecutionParameterKey" => ["ExecutionParameterValue"],
    #         },
    #       }
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
    #
    # @!attribute [rw] execute_token
    #   An idempotency token that uniquely identifies the execute request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
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
    # @!attribute [rw] parameters
    #   A map of all self-service action parameters and their values. If a
    #   provided parameter is of a special type, such as `TARGET`, the
    #   provided value will override the default value generated by AWS
    #   Service Catalog. If the parameters field is not provided, no
    #   additional parameters are passed and default values will be used for
    #   any special parameters such as `TARGET`.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductServiceActionInput AWS API Documentation
    #
    class ExecuteProvisionedProductServiceActionInput < Struct.new(
      :provisioned_product_id,
      :service_action_id,
      :execute_token,
      :accept_language,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   An object containing detailed information about the result of
    #   provisioning the product.
    #   @return [Types::RecordDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductServiceActionOutput AWS API Documentation
    #
    class ExecuteProvisionedProductServiceActionOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # Details of an execution parameter value that is passed to a
    # self-service action when executed on a provisioned product.
    #
    # @!attribute [rw] name
    #   The name of the execution parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The execution parameter type.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   The default values for the execution parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecutionParameter AWS API Documentation
    #
    class ExecutionParameter < Struct.new(
      :name,
      :type,
      :default_values)
      include Aws::Structure
    end

    # An object containing information about the error, along with
    # identifying information about the self-service action and its
    # associations.
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code. Valid values are listed below.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A text description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/FailedServiceActionAssociation AWS API Documentation
    #
    class FailedServiceActionAssociation < Struct.new(
      :service_action_id,
      :product_id,
      :provisioning_artifact_id,
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/GetAWSOrganizationsAccessStatusInput AWS API Documentation
    #
    class GetAWSOrganizationsAccessStatusInput < Aws::EmptyStructure; end

    # @!attribute [rw] access_status
    #   The status of the portfolio share feature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/GetAWSOrganizationsAccessStatusOutput AWS API Documentation
    #
    class GetAWSOrganizationsAccessStatusOutput < Struct.new(
      :access_status)
      include Aws::Structure
    end

    # One or more parameters provided to the operation are not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/InvalidParametersException AWS API Documentation
    #
    class InvalidParametersException < Aws::EmptyStructure; end

    # An attempt was made to modify a resource that is in a state that is
    # not valid. Check your resources to ensure that they are in valid
    # states before retrying the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Aws::EmptyStructure; end

    # A launch path object.
    #
    # @!attribute [rw] id
    #   The identifier of the launch path.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the launch path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/LaunchPath AWS API Documentation
    #
    class LaunchPath < Struct.new(
      :id,
      :name)
      include Aws::Structure
    end

    # Summary information about a product path for a user.
    #
    # @!attribute [rw] id
    #   The identifier of the product path.
    #   @return [String]
    #
    # @!attribute [rw] constraint_summaries
    #   The constraints on the portfolio-product relationship.
    #   @return [Array<Types::ConstraintSummary>]
    #
    # @!attribute [rw] tags
    #   The tags associated with this product path.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] name
    #   The name of the portfolio to which the user was assigned.
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

    # The current limits of the service would have been exceeded by this
    # operation. Decrease your resource use or increase your service limits
    # and retry the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ListAcceptedPortfolioSharesInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         page_token: "PageToken",
    #         page_size: 1,
    #         portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG, AWS_ORGANIZATIONS
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
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] portfolio_share_type
    #   The type of shared portfolios to list. The default is to list
    #   imported portfolios.
    #
    #   * `AWS_ORGANIZATIONS` - List portfolios shared by the master account
    #     of your organization
    #
    #   * `AWS_SERVICECATALOG` - List default portfolios
    #
    #   * `IMPORTED` - List imported portfolios
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioSharesInput AWS API Documentation
    #
    class ListAcceptedPortfolioSharesInput < Struct.new(
      :accept_language,
      :page_token,
      :page_size,
      :portfolio_share_type)
      include Aws::Structure
    end

    # @!attribute [rw] portfolio_details
    #   Information about the portfolios.
    #   @return [Array<Types::PortfolioDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioSharesOutput AWS API Documentation
    #
    class ListAcceptedPortfolioSharesOutput < Struct.new(
      :portfolio_details,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBudgetsForResourceInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         resource_id: "Id", # required
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
    # @!attribute [rw] resource_id
    #   The resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListBudgetsForResourceInput AWS API Documentation
    #
    class ListBudgetsForResourceInput < Struct.new(
      :accept_language,
      :resource_id,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] budgets
    #   Information about the associated budgets.
    #   @return [Array<Types::BudgetDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListBudgetsForResourceOutput AWS API Documentation
    #
    class ListBudgetsForResourceOutput < Struct.new(
      :budgets,
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
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   Information about the constraints.
    #   @return [Array<Types::ConstraintDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   Information about the launch path.
    #   @return [Array<Types::LaunchPathSummary>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListLaunchPathsOutput AWS API Documentation
    #
    class ListLaunchPathsOutput < Struct.new(
      :launch_path_summaries,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOrganizationPortfolioAccessInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         organization_node_type: "ORGANIZATION", # required, accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
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
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier. For example, `port-2abcdext3y5fk`.
    #   @return [String]
    #
    # @!attribute [rw] organization_node_type
    #   The organization node type that will be returned in the output.
    #
    #   * `ORGANIZATION` - Organization that has access to the portfolio.
    #
    #   * `ORGANIZATIONAL_UNIT` - Organizational unit that has access to the
    #     portfolio within your organization.
    #
    #   * `ACCOUNT` - Account that has access to the portfolio within your
    #     organization.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListOrganizationPortfolioAccessInput AWS API Documentation
    #
    class ListOrganizationPortfolioAccessInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :organization_node_type,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] organization_nodes
    #   Displays information about the organization nodes.
    #   @return [Array<Types::OrganizationNode>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListOrganizationPortfolioAccessOutput AWS API Documentation
    #
    class ListOrganizationPortfolioAccessOutput < Struct.new(
      :organization_nodes,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPortfolioAccessInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         portfolio_id: "Id", # required
    #         organization_parent_id: "Id",
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
    # @!attribute [rw] portfolio_id
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] organization_parent_id
    #   The ID of an organization node the portfolio is shared with. All
    #   children of this node with an inherited portfolio share will be
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolioAccessInput AWS API Documentation
    #
    class ListPortfolioAccessInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :organization_parent_id,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   Information about the AWS accounts with access to the portfolio.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
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
    #   Information about the portfolios.
    #   @return [Array<Types::PortfolioDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
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
    #   Information about the portfolios.
    #   @return [Array<Types::PortfolioDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPrincipalsForPortfolioOutput AWS API Documentation
    #
    class ListPrincipalsForPortfolioOutput < Struct.new(
      :principals,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisionedProductPlansInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         provision_product_id: "Id",
    #         page_size: 1,
    #         page_token: "PageToken",
    #         access_level_filter: {
    #           key: "Account", # accepts Account, Role, User
    #           value: "AccessLevelFilterValue",
    #         },
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
    # @!attribute [rw] provision_product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #   @return [Types::AccessLevelFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisionedProductPlansInput AWS API Documentation
    #
    class ListProvisionedProductPlansInput < Struct.new(
      :accept_language,
      :provision_product_id,
      :page_size,
      :page_token,
      :access_level_filter)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_product_plans
    #   Information about the plans.
    #   @return [Array<Types::ProvisionedProductPlanSummary>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisionedProductPlansOutput AWS API Documentation
    #
    class ListProvisionedProductPlansOutput < Struct.new(
      :provisioned_product_plans,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProvisioningArtifactsForServiceActionInput
    #   data as a hash:
    #
    #       {
    #         service_action_id: "Id", # required
    #         page_size: 1,
    #         page_token: "PageToken",
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifactsForServiceActionInput AWS API Documentation
    #
    class ListProvisioningArtifactsForServiceActionInput < Struct.new(
      :service_action_id,
      :page_size,
      :page_token,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_views
    #   An array of objects with information about product views and
    #   provisioning artifacts.
    #   @return [Array<Types::ProvisioningArtifactView>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifactsForServiceActionOutput AWS API Documentation
    #
    class ListProvisioningArtifactsForServiceActionOutput < Struct.new(
      :provisioning_artifact_views,
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
    #   Information about the provisioning artifacts.
    #   @return [Array<Types::ProvisioningArtifactDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The access level to use to obtain results. The default is `User`.
    #   @return [Types::AccessLevelFilter]
    #
    # @!attribute [rw] search_filter
    #   The search filter to scope the results.
    #   @return [Types::ListRecordHistorySearchFilter]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   The records, in reverse chronological order.
    #   @return [Array<Types::RecordDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistoryOutput AWS API Documentation
    #
    class ListRecordHistoryOutput < Struct.new(
      :record_details,
      :next_page_token)
      include Aws::Structure
    end

    # The search filter to use when listing history records.
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
    #
    #   * `product` - Filter results based on the specified product
    #     identifier.
    #
    #   * `provisionedproduct` - Filter results based on the provisioned
    #     product identifier.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The filter value.
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
    #   The TagOption identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #
    #   * `Portfolio`
    #
    #   * `Product`
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   Information about the resources.
    #   @return [Array<Types::ResourceDetail>]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListResourcesForTagOptionOutput AWS API Documentation
    #
    class ListResourcesForTagOptionOutput < Struct.new(
      :resource_details,
      :page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceActionsForProvisioningArtifactInput
    #   data as a hash:
    #
    #       {
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #         page_size: 1,
    #         page_token: "PageToken",
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListServiceActionsForProvisioningArtifactInput AWS API Documentation
    #
    class ListServiceActionsForProvisioningArtifactInput < Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :page_size,
      :page_token,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] service_action_summaries
    #   An object containing information about the self-service actions
    #   associated with the provisioning artifact.
    #   @return [Array<Types::ServiceActionSummary>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListServiceActionsForProvisioningArtifactOutput AWS API Documentation
    #
    class ListServiceActionsForProvisioningArtifactOutput < Struct.new(
      :service_action_summaries,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceActionsInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
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
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListServiceActionsInput AWS API Documentation
    #
    class ListServiceActionsInput < Struct.new(
      :accept_language,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] service_action_summaries
    #   An object containing information about the service actions
    #   associated with the provisioning artifact.
    #   @return [Array<Types::ServiceActionSummary>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListServiceActionsOutput AWS API Documentation
    #
    class ListServiceActionsOutput < Struct.new(
      :service_action_summaries,
      :next_page_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStackInstancesForProvisionedProductInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         provisioned_product_id: "Id", # required
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
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListStackInstancesForProvisionedProductInput AWS API Documentation
    #
    class ListStackInstancesForProvisionedProductInput < Struct.new(
      :accept_language,
      :provisioned_product_id,
      :page_token,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] stack_instances
    #   List of stack instances.
    #   @return [Array<Types::StackInstance>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListStackInstancesForProvisionedProductOutput AWS API Documentation
    #
    class ListStackInstancesForProvisionedProductOutput < Struct.new(
      :stack_instances,
      :next_page_token)
      include Aws::Structure
    end

    # Filters to use when listing TagOptions.
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
    #   The TagOption key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The TagOption value.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The active state.
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
    #   The search filters. If no search filters are specified, the output
    #   includes all TagOptions.
    #   @return [Types::ListTagOptionsFilters]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   Information about the TagOptions.
    #   @return [Array<Types::TagOptionDetail>]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptionsOutput AWS API Documentation
    #
    class ListTagOptionsOutput < Struct.new(
      :tag_option_details,
      :page_token)
      include Aws::Structure
    end

    # The operation is not supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/OperationNotSupportedException AWS API Documentation
    #
    class OperationNotSupportedException < Aws::EmptyStructure; end

    # Information about the organization node.
    #
    # @note When making an API call, you may pass OrganizationNode
    #   data as a hash:
    #
    #       {
    #         type: "ORGANIZATION", # accepts ORGANIZATION, ORGANIZATIONAL_UNIT, ACCOUNT
    #         value: "OrganizationNodeValue",
    #       }
    #
    # @!attribute [rw] type
    #   The organization node type.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The identifier of the organization node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/OrganizationNode AWS API Documentation
    #
    class OrganizationNode < Struct.new(
      :type,
      :value)
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

    # Information about a portfolio.
    #
    # @!attribute [rw] id
    #   The portfolio identifier.
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
    #   The description of the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
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

    # Information about a principal.
    #
    # @!attribute [rw] principal_arn
    #   The ARN of the principal (IAM user, role, or group).
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type. The supported value is `IAM`.
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

    # Information about a product view.
    #
    # @!attribute [rw] product_view_summary
    #   Summary information about the product view.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] status
    #   The status of the product.
    #
    #   * `AVAILABLE` - The product is ready for use.
    #
    #   * `CREATING` - Product creation has started; the product is not
    #     ready for use.
    #
    #   * `FAILED` - An action failed.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
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

    # Summary information about a product view.
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
    #   Indicates whether the product has a default path. If the product
    #   does not have a default path, call ListLaunchPaths to disambiguate
    #   between paths. Otherwise, ListLaunchPaths is not required, and the
    #   output of ProductViewSummary can be used directly with
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
    #         provisioning_preferences: {
    #           stack_set_accounts: ["AccountId"],
    #           stack_set_regions: ["Region"],
    #           stack_set_failure_tolerance_count: 1,
    #           stack_set_failure_tolerance_percentage: 1,
    #           stack_set_max_concurrency_count: 1,
    #           stack_set_max_concurrency_percentage: 1,
    #         },
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
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more
    #   than one path. To list the paths for a product, use ListLaunchPaths.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   A user-friendly name for the provisioned product. This value must be
    #   unique for the AWS account and cannot be updated after the product
    #   is provisioned.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #   @return [Array<Types::ProvisioningParameter>]
    #
    # @!attribute [rw] provisioning_preferences
    #   An object that contains information about the provisioning
    #   preferences for a stack set.
    #   @return [Types::ProvisioningPreferences]
    #
    # @!attribute [rw] tags
    #   One or more tags.
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
      :provisioning_preferences,
      :tags,
      :notification_arns,
      :provision_token)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   Information about the result of provisioning the product.
    #   @return [Types::RecordDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionProductOutput AWS API Documentation
    #
    class ProvisionProductOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # Information about a provisioned product.
    #
    # @!attribute [rw] name
    #   The user-friendly name of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of provisioned product. The supported values are
    #   `CFN_STACK` and `CFN_STACKSET`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the provisioned product.
    #
    #   * `AVAILABLE` - Stable state, ready to perform any operation. The
    #     most recent operation succeeded and completed.
    #
    #   * `UNDER_CHANGE` - Transitive state. Operations performed might not
    #     have valid results. Wait for an `AVAILABLE` status before
    #     performing operations.
    #
    #   * `TAINTED` - Stable state, ready to perform any operation. The
    #     stack has completed the requested operation but is not exactly
    #     what was requested. For example, a request to update to a new
    #     version failed and the stack rolled back to the current version.
    #
    #   * `ERROR` - An unexpected error occurred. The provisioned product
    #     exists but the stack is not running. For example, CloudFormation
    #     received a parameter value that was not valid and could not launch
    #     the stack.
    #
    #   * `PLAN_IN_PROGRESS` - Transitive state. The plan operations were
    #     performed to provision a new product, but resources have not yet
    #     been created. After reviewing the list of resources to be created,
    #     execute the plan. Wait for an `AVAILABLE` status before performing
    #     operations.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The current status message of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #   @return [String]
    #
    # @!attribute [rw] last_record_id
    #   The record identifier of the last request performed on this
    #   provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] physical_id
    #   The assigned identifier for the resource, such as an EC2 instance ID
    #   or an S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the IAM user.
    #   @return [String]
    #
    # @!attribute [rw] user_arn_session
    #   The ARN of the IAM user in the session. This ARN might contain a
    #   session ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionedProductAttribute AWS API Documentation
    #
    class ProvisionedProductAttribute < Struct.new(
      :name,
      :arn,
      :type,
      :id,
      :status,
      :status_message,
      :created_time,
      :idempotency_token,
      :last_record_id,
      :tags,
      :physical_id,
      :product_id,
      :provisioning_artifact_id,
      :user_arn,
      :user_arn_session)
      include Aws::Structure
    end

    # Information about a provisioned product.
    #
    # @!attribute [rw] name
    #   The user-friendly name of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of provisioned product. The supported values are
    #   `CFN_STACK` and `CFN_STACKSET`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the provisioned product.
    #
    #   * `AVAILABLE` - Stable state, ready to perform any operation. The
    #     most recent operation succeeded and completed.
    #
    #   * `UNDER_CHANGE` - Transitive state. Operations performed might not
    #     have valid results. Wait for an `AVAILABLE` status before
    #     performing operations.
    #
    #   * `TAINTED` - Stable state, ready to perform any operation. The
    #     stack has completed the requested operation but is not exactly
    #     what was requested. For example, a request to update to a new
    #     version failed and the stack rolled back to the current version.
    #
    #   * `ERROR` - An unexpected error occurred. The provisioned product
    #     exists but the stack is not running. For example, CloudFormation
    #     received a parameter value that was not valid and could not launch
    #     the stack.
    #
    #   * `PLAN_IN_PROGRESS` - Transitive state. The plan operations were
    #     performed to provision a new product, but resources have not yet
    #     been created. After reviewing the list of resources to be created,
    #     execute the plan. Wait for an `AVAILABLE` status before performing
    #     operations.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The current status message of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #   @return [String]
    #
    # @!attribute [rw] last_record_id
    #   The record identifier of the last request performed on this
    #   provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
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
      :last_record_id,
      :product_id,
      :provisioning_artifact_id)
      include Aws::Structure
    end

    # Information about a plan.
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more
    #   than one path. To list the paths for a product, use ListLaunchPaths.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] plan_name
    #   The name of the plan.
    #   @return [String]
    #
    # @!attribute [rw] plan_id
    #   The plan identifier.
    #   @return [String]
    #
    # @!attribute [rw] provision_product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provision_product_name
    #   The user-friendly name of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] plan_type
    #   The plan type.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] updated_time
    #   The time when the plan was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #   @return [Array<String>]
    #
    # @!attribute [rw] provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #   @return [Array<Types::UpdateProvisioningParameter>]
    #
    # @!attribute [rw] tags
    #   One or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] status_message
    #   The status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionedProductPlanDetails AWS API Documentation
    #
    class ProvisionedProductPlanDetails < Struct.new(
      :created_time,
      :path_id,
      :product_id,
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provision_product_name,
      :plan_type,
      :provisioning_artifact_id,
      :status,
      :updated_time,
      :notification_arns,
      :provisioning_parameters,
      :tags,
      :status_message)
      include Aws::Structure
    end

    # Summary information about a plan.
    #
    # @!attribute [rw] plan_name
    #   The name of the plan.
    #   @return [String]
    #
    # @!attribute [rw] plan_id
    #   The plan identifier.
    #   @return [String]
    #
    # @!attribute [rw] provision_product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provision_product_name
    #   The user-friendly name of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] plan_type
    #   The plan type.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionedProductPlanSummary AWS API Documentation
    #
    class ProvisionedProductPlanSummary < Struct.new(
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provision_product_name,
      :plan_type,
      :provisioning_artifact_id)
      include Aws::Structure
    end

    # Information about a provisioning artifact. A provisioning artifact is
    # also known as a product version.
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
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] guidance
    #   Information set by the administrator to provide guidance to end
    #   users about which provisioning artifacts to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifact AWS API Documentation
    #
    class ProvisioningArtifact < Struct.new(
      :id,
      :name,
      :description,
      :created_time,
      :guidance)
      include Aws::Structure
    end

    # Information about a provisioning artifact (also known as a version)
    # for a product.
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
    # @!attribute [rw] type
    #   The type of provisioning artifact.
    #
    #   * `CLOUD_FORMATION_TEMPLATE` - AWS CloudFormation template
    #
    #   * `MARKETPLACE_AMI` - AWS Marketplace AMI
    #
    #   * `MARKETPLACE_CAR` - AWS Marketplace Clusters and AWS Resources
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] active
    #   Indicates whether the product version is active.
    #   @return [Boolean]
    #
    # @!attribute [rw] guidance
    #   Information set by the administrator to provide guidance to end
    #   users about which provisioning artifacts to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactDetail AWS API Documentation
    #
    class ProvisioningArtifactDetail < Struct.new(
      :id,
      :name,
      :description,
      :type,
      :created_time,
      :active,
      :guidance)
      include Aws::Structure
    end

    # Information about a parameter used to provision a product.
    #
    # @!attribute [rw] parameter_key
    #   The parameter key.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value.
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
    #   The description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_constraints
    #   Constraints that the administrator has put on a parameter.
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

    # The user-defined preferences that will be applied during product
    # provisioning, unless overridden by `ProvisioningPreferences` or
    # `UpdateProvisioningPreferences`.
    #
    # For more information on maximum concurrent accounts and failure
    # tolerance, see [Stack set operation options][1] in the *AWS
    # CloudFormation User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options
    #
    # @!attribute [rw] stack_set_accounts
    #   One or more AWS accounts where stack instances are deployed from the
    #   stack set. These accounts can be scoped in
    #   `ProvisioningPreferences$StackSetAccounts` and
    #   `UpdateProvisioningPreferences$StackSetAccounts`.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_set_regions
    #   One or more AWS Regions where stack instances are deployed from the
    #   stack set. These regions can be scoped in
    #   `ProvisioningPreferences$StackSetRegions` and
    #   `UpdateProvisioningPreferences$StackSetRegions`.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactPreferences AWS API Documentation
    #
    class ProvisioningArtifactPreferences < Struct.new(
      :stack_set_accounts,
      :stack_set_regions)
      include Aws::Structure
    end

    # Information about a provisioning artifact (also known as a version)
    # for a product.
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
    #         disable_template_validation: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the provisioning artifact (for example, v1 v2beta). No
    #   spaces are allowed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the provisioning artifact, including how it
    #   differs from the previous provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] info
    #   The URL of the CloudFormation template in Amazon S3. Specify the URL
    #   in JSON format as follows:
    #
    #   `"LoadTemplateFromURL":
    #   "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."`
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of provisioning artifact.
    #
    #   * `CLOUD_FORMATION_TEMPLATE` - AWS CloudFormation template
    #
    #   * `MARKETPLACE_AMI` - AWS Marketplace AMI
    #
    #   * `MARKETPLACE_CAR` - AWS Marketplace Clusters and AWS Resources
    #   @return [String]
    #
    # @!attribute [rw] disable_template_validation
    #   If set to true, AWS Service Catalog stops validating the specified
    #   provisioning artifact even if it is invalid.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactProperties AWS API Documentation
    #
    class ProvisioningArtifactProperties < Struct.new(
      :name,
      :description,
      :info,
      :type,
      :disable_template_validation)
      include Aws::Structure
    end

    # Summary information about a provisioning artifact (also known as a
    # version) for a product.
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
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] provisioning_artifact_metadata
    #   The metadata for the provisioning artifact. This is used with AWS
    #   Marketplace products.
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

    # An object that contains summary information about a product view and a
    # provisioning artifact.
    #
    # @!attribute [rw] product_view_summary
    #   Summary information about a product view.
    #   @return [Types::ProductViewSummary]
    #
    # @!attribute [rw] provisioning_artifact
    #   Information about a provisioning artifact. A provisioning artifact
    #   is also known as a product version.
    #   @return [Types::ProvisioningArtifact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningArtifactView AWS API Documentation
    #
    class ProvisioningArtifactView < Struct.new(
      :product_view_summary,
      :provisioning_artifact)
      include Aws::Structure
    end

    # Information about a parameter used to provision a product.
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
    #   The parameter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningParameter AWS API Documentation
    #
    class ProvisioningParameter < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The user-defined preferences that will be applied when updating a
    # provisioned product. Not all preferences are applicable to all
    # provisioned product types.
    #
    # @note When making an API call, you may pass ProvisioningPreferences
    #   data as a hash:
    #
    #       {
    #         stack_set_accounts: ["AccountId"],
    #         stack_set_regions: ["Region"],
    #         stack_set_failure_tolerance_count: 1,
    #         stack_set_failure_tolerance_percentage: 1,
    #         stack_set_max_concurrency_count: 1,
    #         stack_set_max_concurrency_percentage: 1,
    #       }
    #
    # @!attribute [rw] stack_set_accounts
    #   One or more AWS accounts that will have access to the provisioned
    #   product.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   The AWS accounts specified should be within the list of accounts in
    #   the `STACKSET` constraint. To get the list of accounts in the
    #   `STACKSET` constraint, use the `DescribeProvisioningParameters`
    #   operation.
    #
    #   If no values are specified, the default value is all accounts from
    #   the `STACKSET` constraint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_set_regions
    #   One or more AWS Regions where the provisioned product will be
    #   available.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   The specified regions should be within the list of regions from the
    #   `STACKSET` constraint. To get the list of regions in the `STACKSET`
    #   constraint, use the `DescribeProvisioningParameters` operation.
    #
    #   If no values are specified, the default value is all regions from
    #   the `STACKSET` constraint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_set_failure_tolerance_count
    #   The number of accounts, per region, for which this operation can
    #   fail before AWS Service Catalog stops the operation in that region.
    #   If the operation is stopped in a region, AWS Service Catalog
    #   doesn't attempt the operation in any subsequent regions.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetFailureToleranceCount`
    #   or `StackSetFailureTolerancePercentage`, but not both.
    #
    #   The default value is `0` if no value is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_failure_tolerance_percentage
    #   The percentage of accounts, per region, for which this stack
    #   operation can fail before AWS Service Catalog stops the operation in
    #   that region. If the operation is stopped in a region, AWS Service
    #   Catalog doesn't attempt the operation in any subsequent regions.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, AWS Service Catalog rounds down to the next whole
    #   number.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetFailureToleranceCount`
    #   or `StackSetFailureTolerancePercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_max_concurrency_count
    #   The maximum number of accounts in which to perform this operation at
    #   one time. This is dependent on the value of
    #   `StackSetFailureToleranceCount`. `StackSetMaxConcurrentCount` is at
    #   most one more than the `StackSetFailureToleranceCount`.
    #
    #   Note that this setting lets you specify the maximum for operations.
    #   For large deployments, under certain circumstances the actual number
    #   of accounts acted upon concurrently may be lower due to service
    #   throttling.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetMaxConcurrentCount` or
    #   `StackSetMaxConcurrentPercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_max_concurrency_percentage
    #   The maximum percentage of accounts in which to perform this
    #   operation at one time.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, AWS Service Catalog rounds down to the next whole
    #   number. This is true except in cases where rounding down would
    #   result is zero. In this case, AWS Service Catalog sets the number as
    #   `1` instead.
    #
    #   Note that this setting lets you specify the maximum for operations.
    #   For large deployments, under certain circumstances the actual number
    #   of accounts acted upon concurrently may be lower due to service
    #   throttling.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetMaxConcurrentCount` or
    #   `StackSetMaxConcurrentPercentage`, but not both.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisioningPreferences AWS API Documentation
    #
    class ProvisioningPreferences < Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      :stack_set_failure_tolerance_count,
      :stack_set_failure_tolerance_percentage,
      :stack_set_max_concurrency_count,
      :stack_set_max_concurrency_percentage)
      include Aws::Structure
    end

    # Information about a request operation.
    #
    # @!attribute [rw] record_id
    #   The identifier of the record.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_name
    #   The user-friendly name of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the provisioned product.
    #
    #   * `CREATED` - The request was created but the operation has not
    #     started.
    #
    #   * `IN_PROGRESS` - The requested operation is in progress.
    #
    #   * `IN_PROGRESS_IN_ERROR` - The provisioned product is under change
    #     but the requested operation failed and some remediation is
    #     occurring. For example, a rollback.
    #
    #   * `SUCCEEDED` - The requested operation has successfully completed.
    #
    #   * `FAILED` - The requested operation has unsuccessfully completed.
    #     Investigate using the error messages returned.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The UTC time stamp of the creation time.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   The time when the record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_product_type
    #   The type of provisioned product. The supported values are
    #   `CFN_STACK` and `CFN_STACKSET`.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The record type.
    #
    #   * `PROVISION_PRODUCT`
    #
    #   * `UPDATE_PROVISIONED_PRODUCT`
    #
    #   * `TERMINATE_PROVISIONED_PRODUCT`
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The path identifier.
    #   @return [String]
    #
    # @!attribute [rw] record_errors
    #   The errors that occurred.
    #   @return [Array<Types::RecordError>]
    #
    # @!attribute [rw] record_tags
    #   One or more tags.
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
    #   The description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RecordError AWS API Documentation
    #
    class RecordError < Struct.new(
      :code,
      :description)
      include Aws::Structure
    end

    # The output for the product created as the result of a request. For
    # example, the output for a CloudFormation-backed product that creates
    # an S3 bucket would include the S3 bucket URL.
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
    #   The description of the output.
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

    # Information about a tag, which is a key-value pair.
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
    #         portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG, AWS_ORGANIZATIONS
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
    # @!attribute [rw] portfolio_share_type
    #   The type of shared portfolios to reject. The default is to reject
    #   imported portfolios.
    #
    #   * `AWS_ORGANIZATIONS` - Reject portfolios shared by the master
    #     account of your organization.
    #
    #   * `IMPORTED` - Reject imported portfolios.
    #
    #   * `AWS_SERVICECATALOG` - Not supported. (Throws
    #     ResourceNotFoundException.)
    #
    #   For example, `aws servicecatalog reject-portfolio-share
    #   --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type
    #   AWS_ORGANIZATIONS`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShareInput AWS API Documentation
    #
    class RejectPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :portfolio_share_type)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShareOutput AWS API Documentation
    #
    class RejectPortfolioShareOutput < Aws::EmptyStructure; end

    # Information about a resource change that will occur when a plan is
    # executed.
    #
    # @!attribute [rw] action
    #   The change action.
    #   @return [String]
    #
    # @!attribute [rw] logical_resource_id
    #   The ID of the resource, as defined in the CloudFormation template.
    #   @return [String]
    #
    # @!attribute [rw] physical_resource_id
    #   The ID of the resource, if it was already created.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] replacement
    #   If the change type is `Modify`, indicates whether the existing
    #   resource is deleted and replaced with a new one.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The change scope.
    #   @return [Array<String>]
    #
    # @!attribute [rw] details
    #   Information about the resource changes.
    #   @return [Array<Types::ResourceChangeDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ResourceChange AWS API Documentation
    #
    class ResourceChange < Struct.new(
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details)
      include Aws::Structure
    end

    # Information about a change to a resource attribute.
    #
    # @!attribute [rw] target
    #   Information about the resource attribute to be modified.
    #   @return [Types::ResourceTargetDefinition]
    #
    # @!attribute [rw] evaluation
    #   For static evaluations, the value of the resource attribute will
    #   change and the new value is known. For dynamic evaluations, the
    #   value might change, and any new value will be determined when the
    #   plan is updated.
    #   @return [String]
    #
    # @!attribute [rw] causing_entity
    #   The ID of the entity that caused the change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ResourceChangeDetail AWS API Documentation
    #
    class ResourceChangeDetail < Struct.new(
      :target,
      :evaluation,
      :causing_entity)
      include Aws::Structure
    end

    # Information about a resource.
    #
    # @!attribute [rw] id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The creation time of the resource.
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

    # A resource that is currently in use. Ensure that the resource is not
    # in use and retry the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Aws::EmptyStructure; end

    # The specified resource was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # Information about a change to a resource attribute.
    #
    # @!attribute [rw] attribute
    #   The attribute to be changed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   If the attribute is `Properties`, the value is the name of the
    #   property. Otherwise, the value is null.
    #   @return [String]
    #
    # @!attribute [rw] requires_recreation
    #   If the attribute is `Properties`, indicates whether a change to this
    #   property causes the resource to be re-created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ResourceTargetDefinition AWS API Documentation
    #
    class ResourceTargetDefinition < Struct.new(
      :attribute,
      :name,
      :requires_recreation)
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
    #   The access level to use to obtain results. The default is `User`.
    #   @return [Types::AccessLevelFilter]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   Information about the provisioned products.
    #   @return [Array<Types::ProvisionedProductDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The search filters. If no search filters are specified, the output
    #   includes all products to which the administrator has access.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] sort_by
    #   The sort field. If no value is specified, the results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. If no value is specified, the results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
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
    #   Information about the product views.
    #   @return [Array<Types::ProductViewDetail>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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
    #   The search filters. If no search filters are specified, the output
    #   includes all products to which the caller has access.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_by
    #   The sort field. If no value is specified, the results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. If no value is specified, the results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
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
    #   Information about the product views.
    #   @return [Array<Types::ProductViewSummary>]
    #
    # @!attribute [rw] product_view_aggregations
    #   The product view aggregations.
    #   @return [Hash<String,Array<Types::ProductViewAggregationValue>>]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
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

    # @note When making an API call, you may pass SearchProvisionedProductsInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         access_level_filter: {
    #           key: "Account", # accepts Account, Role, User
    #           value: "AccessLevelFilterValue",
    #         },
    #         filters: {
    #           "SearchQuery" => ["ProvisionedProductViewFilterValue"],
    #         },
    #         sort_by: "SortField",
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
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
    #   The access level to use to obtain results. The default is `User`.
    #   @return [Types::AccessLevelFilter]
    #
    # @!attribute [rw] filters
    #   The search filters.
    #
    #   When the key is `SearchQuery`, the searchable fields are `arn`,
    #   `createdTime`, `id`, `lastRecordId`, `idempotencyToken`, `name`,
    #   `physicalId`, `productId`, `provisioningArtifact`, `type`, `status`,
    #   `tags`, `userArn`, and `userArnSession`.
    #
    #   Example: `"SearchQuery":["status:AVAILABLE"]`
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] sort_by
    #   The sort field. If no value is specified, the results are not
    #   sorted. The valid values are `arn`, `id`, `name`, and
    #   `lastRecordId`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order. If no value is specified, the results are not
    #   sorted.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] page_token
    #   The page token for the next set of results. To retrieve the first
    #   set of results, use null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProvisionedProductsInput AWS API Documentation
    #
    class SearchProvisionedProductsInput < Struct.new(
      :accept_language,
      :access_level_filter,
      :filters,
      :sort_by,
      :sort_order,
      :page_size,
      :page_token)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_products
    #   Information about the provisioned products.
    #   @return [Array<Types::ProvisionedProductAttribute>]
    #
    # @!attribute [rw] total_results_count
    #   The number of provisioned products found.
    #   @return [Integer]
    #
    # @!attribute [rw] next_page_token
    #   The page token to use to retrieve the next set of results. If there
    #   are no additional results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProvisionedProductsOutput AWS API Documentation
    #
    class SearchProvisionedProductsOutput < Struct.new(
      :provisioned_products,
      :total_results_count,
      :next_page_token)
      include Aws::Structure
    end

    # A self-service action association consisting of the Action ID, the
    # Product ID, and the Provisioning Artifact ID.
    #
    # @note When making an API call, you may pass ServiceActionAssociation
    #   data as a hash:
    #
    #       {
    #         service_action_id: "Id", # required
    #         product_id: "Id", # required
    #         provisioning_artifact_id: "Id", # required
    #       }
    #
    # @!attribute [rw] service_action_id
    #   The self-service action identifier. For example,
    #   `act-fs7abcd89wxyz`.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The product identifier. For example, `prod-abcdzk7xy33qa`.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact. For example,
    #   `pa-4abcdjnxjj6ne`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ServiceActionAssociation AWS API Documentation
    #
    class ServiceActionAssociation < Struct.new(
      :service_action_id,
      :product_id,
      :provisioning_artifact_id)
      include Aws::Structure
    end

    # An object containing detailed information about the self-service
    # action.
    #
    # @!attribute [rw] service_action_summary
    #   Summary information about the self-service action.
    #   @return [Types::ServiceActionSummary]
    #
    # @!attribute [rw] definition
    #   A map that defines the self-service action.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ServiceActionDetail AWS API Documentation
    #
    class ServiceActionDetail < Struct.new(
      :service_action_summary,
      :definition)
      include Aws::Structure
    end

    # Detailed information about the self-service action.
    #
    # @!attribute [rw] id
    #   The self-service action identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The self-service action name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The self-service action description.
    #   @return [String]
    #
    # @!attribute [rw] definition_type
    #   The self-service action definition type. For example,
    #   `SSM_AUTOMATION`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ServiceActionSummary AWS API Documentation
    #
    class ServiceActionSummary < Struct.new(
      :id,
      :name,
      :description,
      :definition_type)
      include Aws::Structure
    end

    # Information about the portfolio share operation.
    #
    # @!attribute [rw] successful_shares
    #   List of accounts for whom the operation succeeded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] share_errors
    #   List of errors.
    #   @return [Array<Types::ShareError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ShareDetails AWS API Documentation
    #
    class ShareDetails < Struct.new(
      :successful_shares,
      :share_errors)
      include Aws::Structure
    end

    # Errors that occurred during the portfolio share operation.
    #
    # @!attribute [rw] accounts
    #   List of accounts impacted by the error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   Information about the error.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Error type that happened when processing the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ShareError AWS API Documentation
    #
    class ShareError < Struct.new(
      :accounts,
      :message,
      :error)
      include Aws::Structure
    end

    # An AWS CloudFormation stack, in a specific account and region, that's
    # part of a stack set operation. A stack instance is a reference to an
    # attempted or actual stack in a given account within a given region. A
    # stack instance can exist without a stack—for example, if the stack
    # couldn't be created for some reason. A stack instance is associated
    # with only one stack set. Each stack instance contains the ID of its
    # associated stack set, as well as the ID of the actual stack and the
    # stack status.
    #
    # @!attribute [rw] account
    #   The name of the AWS account that the stack instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The name of the AWS region that the stack instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] stack_instance_status
    #   The status of the stack instance, in terms of its synchronization
    #   with its associated stack set.
    #
    #   * `INOPERABLE`\: A `DeleteStackInstances` operation has failed and
    #     left the stack in an unstable state. Stacks in this state are
    #     excluded from further `UpdateStackSet` operations. You might need
    #     to perform a `DeleteStackInstances` operation, with `RetainStacks`
    #     set to true, to delete the stack instance, and then delete the
    #     stack manually.
    #
    #   * `OUTDATED`\: The stack isn't currently up to date with the stack
    #     set because either the associated stack failed during a
    #     `CreateStackSet` or `UpdateStackSet` operation, or the stack was
    #     part of a `CreateStackSet` or `UpdateStackSet` operation that
    #     failed or was stopped before the stack was created or updated.
    #
    #   * `CURRENT`\: The stack is currently up to date with the stack set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/StackInstance AWS API Documentation
    #
    class StackInstance < Struct.new(
      :account,
      :region,
      :stack_instance_status)
      include Aws::Structure
    end

    # Information about a tag. A tag is a key-value pair. Tags are
    # propagated to the resources created when provisioning a product.
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
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for this key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Information about a TagOption.
    #
    # @!attribute [rw] key
    #   The TagOption key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The TagOption value.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The TagOption active state.
    #   @return [Boolean]
    #
    # @!attribute [rw] id
    #   The TagOption identifier.
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

    # An operation requiring TagOptions failed because the TagOptions
    # migration process has not been performed for this account. Please use
    # the AWS console to perform the migration process before retrying the
    # operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TagOptionNotMigratedException AWS API Documentation
    #
    class TagOptionNotMigratedException < Aws::EmptyStructure; end

    # Summary information about a TagOption.
    #
    # @!attribute [rw] key
    #   The TagOption key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The TagOption value.
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
    #   The name of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #   @return [String]
    #
    # @!attribute [rw] terminate_token
    #   An idempotency token that uniquely identifies the termination
    #   request. This token is only valid during the termination process.
    #   After the provisioned product is terminated, subsequent requests to
    #   terminate the same provisioned product always return
    #   **ResourceNotFound**.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ignore_errors
    #   If set to true, AWS Service Catalog stops managing the specified
    #   provisioned product even if it cannot delete the underlying
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
    #   Information about the result of this request.
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
    #         parameters: "ConstraintParameters",
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
    # @!attribute [rw] description
    #   The updated description of the constraint.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The constraint parameters, in JSON format. The syntax depends on the
    #   constraint type as follows:
    #
    #   LAUNCH
    #
    #   : You are required to specify either the `RoleArn` or the
    #     `LocalRoleName` but can't use both.
    #
    #     Specify the `RoleArn` property as follows:
    #
    #     `\{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"\}`
    #
    #     Specify the `LocalRoleName` property as follows:
    #
    #     `\{"LocalRoleName": "SCBasicLaunchRole"\}`
    #
    #     If you specify the `LocalRoleName` property, when an account uses
    #     the launch constraint, the IAM role with that name in the account
    #     will be used. This allows launch-role constraints to be
    #     account-agnostic so the administrator can create fewer resources
    #     per shared account.
    #
    #     <note markdown="1"> The given role name must exist in the account used to create the
    #     launch constraint and the account of the user who launches a
    #     product with this launch constraint.
    #
    #      </note>
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `LAUNCH` constraint on a
    #     product and portfolio.
    #
    #   NOTIFICATION
    #
    #   : Specify the `NotificationArns` property as follows:
    #
    #     `\{"NotificationArns" :
    #     ["arn:aws:sns:us-east-1:123456789012:Topic"]\}`
    #
    #   RESOURCE\_UPDATE
    #
    #   : Specify the `TagUpdatesOnProvisionedProduct` property as follows:
    #
    #     `\{"Version":"2.0","Properties":\{"TagUpdateOnProvisionedProduct":"String"\}\}`
    #
    #     The `TagUpdatesOnProvisionedProduct` property accepts a string
    #     value of `ALLOWED` or `NOT_ALLOWED`.
    #
    #   STACKSET
    #
    #   : Specify the `Parameters` property as follows:
    #
    #     `\{"Version": "String", "Properties": \{"AccountList": [ "String"
    #     ], "RegionList": [ "String" ], "AdminRole": "String",
    #     "ExecutionRole": "String"\}\}`
    #
    #     You cannot have both a `LAUNCH` and a `STACKSET` constraint.
    #
    #     You also cannot have more than one `STACKSET` constraint on a
    #     product and portfolio.
    #
    #     Products with a `STACKSET` constraint will launch an AWS
    #     CloudFormation stack set.
    #
    #   TEMPLATE
    #
    #   : Specify the `Rules` property. For more information, see [Template
    #     Constraint Rules][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateConstraintInput AWS API Documentation
    #
    class UpdateConstraintInput < Struct.new(
      :accept_language,
      :id,
      :description,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] constraint_detail
    #   Information about the constraint.
    #   @return [Types::ConstraintDetail]
    #
    # @!attribute [rw] constraint_parameters
    #   The constraint parameters.
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
    #   The portfolio identifier.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name to use for display purposes.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the portfolio.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The updated name of the portfolio provider.
    #   @return [String]
    #
    # @!attribute [rw] add_tags
    #   The tags to add.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] remove_tags
    #   The tags to remove.
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
    #   Information about the portfolio.
    #   @return [Types::PortfolioDetail]
    #
    # @!attribute [rw] tags
    #   Information about the tags associated with the portfolio.
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
    #   The product identifier.
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
    #   The updated description of the product.
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
    #   The tags to add to the product.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] remove_tags
    #   The tags to remove from the product.
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
    #   Information about the product view.
    #   @return [Types::ProductViewDetail]
    #
    # @!attribute [rw] tags
    #   Information about the tags associated with the product.
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
    #         provisioning_preferences: {
    #           stack_set_accounts: ["AccountId"],
    #           stack_set_regions: ["Region"],
    #           stack_set_failure_tolerance_count: 1,
    #           stack_set_failure_tolerance_percentage: 1,
    #           stack_set_max_concurrency_count: 1,
    #           stack_set_max_concurrency_percentage: 1,
    #           stack_set_operation_type: "CREATE", # accepts CREATE, UPDATE, DELETE
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
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
    #   The name of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The identifier of the product.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] path_id
    #   The new path identifier. This value is optional if the product has a
    #   default path, and required if the product has more than one path.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_parameters
    #   The new parameters.
    #   @return [Array<Types::UpdateProvisioningParameter>]
    #
    # @!attribute [rw] provisioning_preferences
    #   An object that contains information about the provisioning
    #   preferences for a stack set.
    #   @return [Types::UpdateProvisioningPreferences]
    #
    # @!attribute [rw] tags
    #   One or more tags. Requires the product to have `RESOURCE_UPDATE`
    #   constraint with `TagUpdatesOnProvisionedProduct` set to `ALLOWED` to
    #   allow tag updates.
    #   @return [Array<Types::Tag>]
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
      :provisioning_preferences,
      :tags,
      :update_token)
      include Aws::Structure
    end

    # @!attribute [rw] record_detail
    #   Information about the result of the request.
    #   @return [Types::RecordDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProductOutput AWS API Documentation
    #
    class UpdateProvisionedProductOutput < Struct.new(
      :record_detail)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProvisionedProductPropertiesInput
    #   data as a hash:
    #
    #       {
    #         accept_language: "AcceptLanguage",
    #         provisioned_product_id: "Id", # required
    #         provisioned_product_properties: { # required
    #           "OWNER" => "PropertyValue",
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
    # @!attribute [rw] provisioned_product_id
    #   The identifier of the provisioned product.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_properties
    #   A map that contains the provisioned product properties to be
    #   updated.
    #
    #   The `OWNER` key accepts user ARNs and role ARNs. The owner is the
    #   user that is allowed to see, update, terminate, and execute service
    #   actions in the provisioned product.
    #
    #   The administrator can change the owner of a provisioned product to
    #   another IAM user within the same account. Both end user owners and
    #   administrators can see ownership history of the provisioned product
    #   using the `ListRecordHistory` API. The new owner can describe all
    #   past records for the provisioned product using the `DescribeRecord`
    #   API. The previous owner can no longer use `DescribeRecord`, but can
    #   still see the product's history from when he was an owner using
    #   `ListRecordHistory`.
    #
    #   If a provisioned product ownership is assigned to an end user, they
    #   can see and perform any action through the API or Service Catalog
    #   console such as update, terminate, and execute service actions. If
    #   an end user provisions a product and the owner is updated to someone
    #   else, they will no longer be able to see or perform any actions
    #   through API or the Service Catalog console on that provisioned
    #   product.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idempotency_token
    #   The idempotency token that uniquely identifies the provisioning
    #   product update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProductPropertiesInput AWS API Documentation
    #
    class UpdateProvisionedProductPropertiesInput < Struct.new(
      :accept_language,
      :provisioned_product_id,
      :provisioned_product_properties,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] provisioned_product_id
    #   The provisioned product identifier.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_product_properties
    #   A map that contains the properties updated.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] record_id
    #   The identifier of the record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProductPropertiesOutput AWS API Documentation
    #
    class UpdateProvisionedProductPropertiesOutput < Struct.new(
      :provisioned_product_id,
      :provisioned_product_properties,
      :record_id,
      :status)
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
    #         active: false,
    #         guidance: "DEFAULT", # accepts DEFAULT, DEPRECATED
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
    #   The identifier of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the provisioning artifact.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   Indicates whether the product version is active.
    #
    #   Inactive provisioning artifacts are invisible to end users. End
    #   users cannot launch or update a provisioned product from an inactive
    #   provisioning artifact.
    #   @return [Boolean]
    #
    # @!attribute [rw] guidance
    #   Information set by the administrator to provide guidance to end
    #   users about which provisioning artifacts to use.
    #
    #   The `DEFAULT` value indicates that the product version is active.
    #
    #   The administrator can set the guidance to `DEPRECATED` to inform
    #   users that the product version is deprecated. Users are able to make
    #   updates to a provisioned product of a deprecated version but cannot
    #   launch new provisioned products using a deprecated version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningArtifactInput AWS API Documentation
    #
    class UpdateProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :name,
      :description,
      :active,
      :guidance)
      include Aws::Structure
    end

    # @!attribute [rw] provisioning_artifact_detail
    #   Information about the provisioning artifact.
    #   @return [Types::ProvisioningArtifactDetail]
    #
    # @!attribute [rw] info
    #   The URL of the CloudFormation template in Amazon S3.
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

    # The parameter key-value pair used to update a provisioned product.
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
    #   The parameter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value.
    #   @return [String]
    #
    # @!attribute [rw] use_previous_value
    #   If set to true, `Value` is ignored and the previous parameter value
    #   is kept.
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

    # The user-defined preferences that will be applied when updating a
    # provisioned product. Not all preferences are applicable to all
    # provisioned product types.
    #
    # @note When making an API call, you may pass UpdateProvisioningPreferences
    #   data as a hash:
    #
    #       {
    #         stack_set_accounts: ["AccountId"],
    #         stack_set_regions: ["Region"],
    #         stack_set_failure_tolerance_count: 1,
    #         stack_set_failure_tolerance_percentage: 1,
    #         stack_set_max_concurrency_count: 1,
    #         stack_set_max_concurrency_percentage: 1,
    #         stack_set_operation_type: "CREATE", # accepts CREATE, UPDATE, DELETE
    #       }
    #
    # @!attribute [rw] stack_set_accounts
    #   One or more AWS accounts that will have access to the provisioned
    #   product.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   The AWS accounts specified should be within the list of accounts in
    #   the `STACKSET` constraint. To get the list of accounts in the
    #   `STACKSET` constraint, use the `DescribeProvisioningParameters`
    #   operation.
    #
    #   If no values are specified, the default value is all accounts from
    #   the `STACKSET` constraint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_set_regions
    #   One or more AWS Regions where the provisioned product will be
    #   available.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   The specified regions should be within the list of regions from the
    #   `STACKSET` constraint. To get the list of regions in the `STACKSET`
    #   constraint, use the `DescribeProvisioningParameters` operation.
    #
    #   If no values are specified, the default value is all regions from
    #   the `STACKSET` constraint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stack_set_failure_tolerance_count
    #   The number of accounts, per region, for which this operation can
    #   fail before AWS Service Catalog stops the operation in that region.
    #   If the operation is stopped in a region, AWS Service Catalog
    #   doesn't attempt the operation in any subsequent regions.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetFailureToleranceCount`
    #   or `StackSetFailureTolerancePercentage`, but not both.
    #
    #   The default value is `0` if no value is specified.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_failure_tolerance_percentage
    #   The percentage of accounts, per region, for which this stack
    #   operation can fail before AWS Service Catalog stops the operation in
    #   that region. If the operation is stopped in a region, AWS Service
    #   Catalog doesn't attempt the operation in any subsequent regions.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, AWS Service Catalog rounds down to the next whole
    #   number.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetFailureToleranceCount`
    #   or `StackSetFailureTolerancePercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_max_concurrency_count
    #   The maximum number of accounts in which to perform this operation at
    #   one time. This is dependent on the value of
    #   `StackSetFailureToleranceCount`. `StackSetMaxConcurrentCount` is at
    #   most one more than the `StackSetFailureToleranceCount`.
    #
    #   Note that this setting lets you specify the maximum for operations.
    #   For large deployments, under certain circumstances the actual number
    #   of accounts acted upon concurrently may be lower due to service
    #   throttling.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetMaxConcurrentCount` or
    #   `StackSetMaxConcurrentPercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_max_concurrency_percentage
    #   The maximum percentage of accounts in which to perform this
    #   operation at one time.
    #
    #   When calculating the number of accounts based on the specified
    #   percentage, AWS Service Catalog rounds down to the next whole
    #   number. This is true except in cases where rounding down would
    #   result is zero. In this case, AWS Service Catalog sets the number as
    #   `1` instead.
    #
    #   Note that this setting lets you specify the maximum for operations.
    #   For large deployments, under certain circumstances the actual number
    #   of accounts acted upon concurrently may be lower due to service
    #   throttling.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   Conditional: You must specify either `StackSetMaxConcurrentCount` or
    #   `StackSetMaxConcurrentPercentage`, but not both.
    #   @return [Integer]
    #
    # @!attribute [rw] stack_set_operation_type
    #   Determines what action AWS Service Catalog performs to a stack set
    #   or a stack instance represented by the provisioned product. The
    #   default value is `UPDATE` if nothing is specified.
    #
    #   Applicable only to a `CFN_STACKSET` provisioned product type.
    #
    #   CREATE
    #
    #   : Creates a new stack instance in the stack set represented by the
    #     provisioned product. In this case, only new stack instances are
    #     created based on accounts and regions; if new ProductId or
    #     ProvisioningArtifactID are passed, they will be ignored.
    #
    #   UPDATE
    #
    #   : Updates the stack set represented by the provisioned product and
    #     also its stack instances.
    #
    #   DELETE
    #
    #   : Deletes a stack instance in the stack set represented by the
    #     provisioned product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningPreferences AWS API Documentation
    #
    class UpdateProvisioningPreferences < Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      :stack_set_failure_tolerance_count,
      :stack_set_failure_tolerance_percentage,
      :stack_set_max_concurrency_count,
      :stack_set_max_concurrency_percentage,
      :stack_set_operation_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceActionInput
    #   data as a hash:
    #
    #       {
    #         id: "Id", # required
    #         name: "ServiceActionName",
    #         definition: {
    #           "Name" => "ServiceActionDefinitionValue",
    #         },
    #         description: "ServiceActionDescription",
    #         accept_language: "AcceptLanguage",
    #       }
    #
    # @!attribute [rw] id
    #   The self-service action identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The self-service action name.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   A map that defines the self-service action.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The self-service action description.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateServiceActionInput AWS API Documentation
    #
    class UpdateServiceActionInput < Struct.new(
      :id,
      :name,
      :definition,
      :description,
      :accept_language)
      include Aws::Structure
    end

    # @!attribute [rw] service_action_detail
    #   Detailed information about the self-service action.
    #   @return [Types::ServiceActionDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateServiceActionOutput AWS API Documentation
    #
    class UpdateServiceActionOutput < Struct.new(
      :service_action_detail)
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
    #   The TagOption identifier.
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
    #   Information about the TagOption.
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
