# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalog
  # This module contains the types returned by client operations.
  module Types

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute portfolio_share_type
    #   <p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Accept imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    #   @return [String]
    class AcceptPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :portfolio_share_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AcceptPortfolioShareOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The access level to use to filter results.</p>
    # @!attribute key
    #   <p>The access level.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Account</code> - Filter results based on the account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Role</code> - Filter results based on the federated role of the specified user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>User</code> - Filter results based on the specified user.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The user to which the access level applies. The only supported value is <code>self</code>.</p>
    #   @return [String]
    class AccessLevelFilter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute budget_name
    #   <p>The name of the budget you want to associate.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p> The resource identifier. Either a portfolio-id or a product-id.</p>
    #   @return [String]
    class AssociateBudgetWithResourceInput < Struct.new(
      :budget_name,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateBudgetWithResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the principal (user, role, or group). If the <code>PrincipalType</code> is <code>IAM</code>, the supported value is a 
    #            fully defined 
    #            <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM Amazon Resource Name (ARN)</a>. 
    #            If the <code>PrincipalType</code> is <code>IAM_PATTERN</code>, 
    #            the supported value is an <code>IAM</code> ARN <i>without an AccountID</i> in the following format:</p>
    #            <p>
    #               <i>arn:partition:iam:::resource-type/resource-id</i>
    #            </p>
    #            <p>The ARN resource-id can be either:</p>
    #            <ul>
    #               <li>
    #                  <p>A fully formed resource-id. For example, <i>arn:aws:iam:::role/resource-name</i> or 
    #               <i>arn:aws:iam:::role/resource-path/resource-name</i>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A wildcard ARN. The wildcard ARN accepts <code>IAM_PATTERN</code> values with a 
    #                  "*" or "?" in the resource-id segment of the ARN. For example <i>arn:partition:service:::resource-type/resource-path/resource-name</i>. 
    #                  The new symbols are exclusive to the <b>resource-path</b> and <b>resource-name</b> 
    #                  and cannot replace the <b>resource-type</b> or other 
    #               ARN values. </p>
    #                  <p>The ARN path and principal name allow unlimited wildcard characters.</p>
    #               </li>
    #            </ul>
    #            <p>Examples of an <b>acceptable</b> wildcard ARN:</p>
    #            <ul>
    #               <li>
    #                  <p>arn:aws:iam:::role/ResourceName_*</p>
    #               </li>
    #               <li>
    #                  <p>arn:aws:iam:::role/*/ResourceName_?</p>
    #               </li>
    #            </ul>
    #            <p>Examples of an <b>unacceptable</b> wildcard ARN:</p>
    #            <ul>
    #               <li>
    #                  <p>arn:aws:iam:::*/ResourceName</p>
    #               </li>
    #            </ul>
    #            <p>You can associate multiple <code>IAM_PATTERN</code>s even if the account has no principal 
    #            with that name. </p>
    #            <p>The "?" wildcard character matches zero or one of any character. This is similar to ".?" in regular 
    #                     regex context. The "*" wildcard character matches any number of any characters. 
    #                     This is similar to ".*" in regular regex context.</p>
    #            <p>In the IAM Principal ARN format (<i>arn:partition:iam:::resource-type/resource-path/resource-name</i>), 
    #            valid resource-type values include <b>user/</b>, <b>group/</b>, 
    #               or <b>role/</b>.  The "?" and "*" characters
    #                     are allowed only after the resource-type in the resource-id segment. 
    #                     You can use special characters anywhere within the resource-id. </p>
    #            <p>The "*" character also matches the "/" character, allowing paths to be formed <i>within</i> the 
    #                     resource-id. For example, <i>arn:aws:iam:::role/<b>*</b>/ResourceName_?</i> 
    #                     matches both <i>arn:aws:iam:::role/pathA/pathB/ResourceName_1</i> 
    #                     and 
    #                     <i>arn:aws:iam:::role/pathA/ResourceName_1</i>. </p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type. The supported value is <code>IAM</code> if you use a fully defined Amazon Resource Name 
    #            (ARN), or <code>IAM_PATTERN</code> if you use an ARN with no <code>accountID</code>, 
    #            with or without wildcard characters. </p>
    #   @return [String]
    class AssociatePrincipalWithPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn,
      :principal_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociatePrincipalWithPortfolioOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute source_portfolio_id
    #   <p>The identifier of the source portfolio.</p>
    #   @return [String]
    class AssociateProductWithPortfolioInput < Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id,
      :source_portfolio_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateProductWithPortfolioOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #   @return [String]
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>
    #   @return [String]
    class AssociateServiceActionWithProvisioningArtifactInput < Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :service_action_id,
      :accept_language,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateServiceActionWithProvisioningArtifactOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #   @return [String]
    # @!attribute tag_option_id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    class AssociateTagOptionWithResourceInput < Struct.new(
      :resource_id,
      :tag_option_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateTagOptionWithResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #   @return [Array<Types::ServiceActionAssociation>]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class BatchAssociateServiceActionWithProvisioningArtifactInput < Struct.new(
      :service_action_associations,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_service_action_associations
    #   <p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>
    #   @return [Array<Types::FailedServiceActionAssociation>]
    class BatchAssociateServiceActionWithProvisioningArtifactOutput < Struct.new(
      :failed_service_action_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #   @return [Array<Types::ServiceActionAssociation>]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class BatchDisassociateServiceActionFromProvisioningArtifactInput < Struct.new(
      :service_action_associations,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_service_action_associations
    #   <p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>
    #   @return [Array<Types::FailedServiceActionAssociation>]
    class BatchDisassociateServiceActionFromProvisioningArtifactOutput < Struct.new(
      :failed_service_action_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a budget.</p>
    # @!attribute budget_name
    #   <p>Name of the associated budget.</p>
    #   @return [String]
    class BudgetDetail < Struct.new(
      :budget_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a CloudWatch dashboard.</p>
    # @!attribute name
    #   <p>The name of the CloudWatch dashboard.</p>
    #   @return [String]
    class CloudWatchDashboard < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The subtype containing details about the Codestar connection <code>Type</code>. </p>
    # @!attribute connection_arn
    #   <p>The CodeStar ARN, which is the connection between Service Catalog and the external repository.</p>
    #   @return [String]
    # @!attribute repository
    #   <p>The specific repository where the product’s artifact-to-be-synced resides, formatted as 
    #            "Account/Repo." </p>
    #   @return [String]
    # @!attribute branch
    #   <p>The specific branch where the artifact resides. </p>
    #   @return [String]
    # @!attribute artifact_path
    #   <p>The absolute path wehre the artifact resides within the repo and branch, formatted as 
    #            "folder/file.json." </p>
    #   @return [String]
    class CodeStarParameters < Struct.new(
      :connection_arn,
      :repository,
      :branch,
      :artifact_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a constraint.</p>
    # @!attribute constraint_id
    #   <p>The identifier of the constraint.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>STACKSET</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the constraint.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the constraint.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The identifier of the product the constraint applies to. Note that a constraint applies to a specific instance of a product within a certain portfolio.</p>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.</p>
    #   @return [String]
    class ConstraintDetail < Struct.new(
      :constraint_id,
      :type,
      :description,
      :owner,
      :product_id,
      :portfolio_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a constraint.</p>
    # @!attribute type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>STACKSET</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the constraint.</p>
    #   @return [String]
    class ConstraintSummary < Struct.new(
      :type,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_product_arn
    #   <p>The Amazon Resource Name (ARN) of the source product.</p>
    #   @return [String]
    # @!attribute target_product_id
    #   <p>The identifier of the target product. By default, a new product is created.</p>
    #   @return [String]
    # @!attribute target_product_name
    #   <p>A name for the target product. The default is the name of the source product.</p>
    #   @return [String]
    # @!attribute source_provisioning_artifact_identifiers
    #   <p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy. 
    #            By default, all provisioning artifacts are copied.</p>
    #   @return [Array<Hash<String, String>>]
    # @!attribute copy_options
    #   <p>The copy options. If the value is <code>CopyTags</code>, the tags from the source
    #            product are copied to the target product.</p>
    #   @return [Array<String>]
    # @!attribute idempotency_token
    #   <p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request. </p>
    #   @return [String]
    class CopyProductInput < Struct.new(
      :accept_language,
      :source_product_arn,
      :target_product_id,
      :target_product_name,
      :source_provisioning_artifact_identifiers,
      :copy_options,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_product_token
    #   <p>The token to use to track the progress of the operation.</p>
    #   @return [String]
    class CopyProductOutput < Struct.new(
      :copy_product_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be 
    #                  account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STACKSET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the constraint.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    class CreateConstraintInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :product_id,
      :parameters,
      :type,
      :description,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute constraint_detail
    #   <p>Information about the constraint.</p>
    #   @return [Types::ConstraintDetail]
    # @!attribute constraint_parameters
    #   <p>The constraint parameters.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the current request.</p>
    #   @return [String]
    class CreateConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name to use for display purposes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the portfolio.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The name of the portfolio provider.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    class CreatePortfolioInput < Struct.new(
      :accept_language,
      :display_name,
      :description,
      :provider_name,
      :tags,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_detail
    #   <p>Information about the portfolio.</p>
    #   @return [Types::PortfolioDetail]
    # @!attribute tags
    #   <p>Information about the tags associated with the portfolio.</p>
    #   @return [Array<Types::Tag>]
    class CreatePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID. For example, <code>123456789012</code>.</p>
    #   @return [String]
    # @!attribute organization_node
    #   <p>The organization node to whom you are going to share. When you pass <code>OrganizationNode</code>, it creates <code>PortfolioShare</code> for all of the Amazon Web Services accounts that are associated to the <code>OrganizationNode</code>. 
    #         The output returns a <code>PortfolioShareToken</code>, which enables the administrator to monitor the status of the <code>PortfolioShare</code> creation process.</p>
    #   @return [Types::OrganizationNode]
    # @!attribute share_tag_options
    #   <p>Enables or disables <code>TagOptions </code> sharing when creating the portfolio share. If this flag is not 
    #            provided, TagOptions sharing is disabled.</p>
    #   @return [Boolean]
    # @!attribute share_principals
    #   <p>This parameter is only supported for portfolios with an <b>OrganizationalNode</b> 
    #         Type of <code>ORGANIZATION</code> or <code>ORGANIZATIONAL_UNIT</code>. </p>
    #            <p>Enables or disables <code>Principal</code> sharing when creating the portfolio share. If you do 
    #            <b>not</b> provide this flag, principal sharing is disabled. </p>
    #            <p>When you enable Principal Name Sharing for a portfolio share, the share recipient
    #            account end users with a principal that matches any of the associated IAM
    #            patterns can provision products from the portfolio. Once
    #            shared, the share recipient can view associations of <code>PrincipalType</code>: 
    #            <code>IAM_PATTERN</code> on their portfolio. You can create the principals in the recipient account before or 
    #            after creating the share. </p>
    #   @return [Boolean]
    class CreatePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node,
      :share_tag_options,
      :share_principals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The portfolio shares a unique identifier that only returns if the portfolio is shared to an organization node.</p>
    #   @return [String]
    class CreatePortfolioShareOutput < Struct.new(
      :portfolio_share_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the product.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the product.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the product.</p>
    #   @return [String]
    # @!attribute distributor
    #   <p>The distributor of the product.</p>
    #   @return [String]
    # @!attribute support_description
    #   <p>The support information about the product.</p>
    #   @return [String]
    # @!attribute support_email
    #   <p>The contact email for product support.</p>
    #   @return [String]
    # @!attribute support_url
    #   <p>The contact URL for product support.</p>
    #            <p>
    #               <code>^https?:\/\// </code>/ is the pattern used to validate SupportUrl.</p>
    #   @return [String]
    # @!attribute product_type
    #   <p>The type of product.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provisioning_artifact_parameters
    #   <p>The configuration of the provisioning artifact. </p>
    #   @return [Types::ProvisioningArtifactProperties]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    # @!attribute source_connection
    #   <p>Specifies connection details for the created product and syncs the product to the connection source
    #            artifact. This automatically manages the product's artifacts based on changes to the source.
    #            The <code>SourceConnection</code> parameter consists of the following sub-fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConnectionParamters</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::SourceConnection]
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
      :idempotency_token,
      :source_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_detail
    #   <p>Information about the product view.</p>
    #   @return [Types::ProductViewDetail]
    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact. </p>
    #   @return [Types::ProvisioningArtifactDetail]
    # @!attribute tags
    #   <p>Information about the tags associated with the product.</p>
    #   @return [Array<Types::Tag>]
    class CreateProductOutput < Struct.new(
      :product_view_detail,
      :provisioning_artifact_detail,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #   @return [String]
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #   @return [String]
    # @!attribute notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #   @return [Array<String>]
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the Amazon Web Services account and cannot be updated after the product is provisioned.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #   @return [Array<Types::UpdateProvisioningParameter>]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #            <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #   @return [String]
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #   @return [String]
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    class CreateProvisionedProductPlanOutput < Struct.new(
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provisioned_product_name,
      :provisioning_artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The configuration for the provisioning artifact.</p>
    #   @return [Types::ProvisioningArtifactProperties]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    class CreateProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :parameters,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact.</p>
    #   @return [Types::ProvisioningArtifactDetail]
    # @!attribute info
    #   <p>Specify the template source with one of the following options, but not both. Keys
    #            accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ].</p>
    #            <p>Use the URL of the CloudFormation template in Amazon S3 or GitHub in JSON format. </p>
    #            <p>
    #               <code>LoadTemplateFromURL</code>
    #            </p>
    #            <p>Use the URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.</p>
    #            <p>
    #               <code>ImportFromPhysicalId</code>
    #            </p>
    #            <p>Use the physical id of the resource that contains the template; currently supports CloudFormation stack ARN.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the current request.</p>
    #   @return [String]
    class CreateProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The self-service action name.</p>
    #   @return [String]
    # @!attribute definition_type
    #   <p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The self-service action definition. Can be one of the following:</p>
    #            <dl>
    #               <dt>Name</dt>
    #               <dd>
    #                  <p>The name of the Amazon Web Services Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>
    #                  <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>
    #               </dd>
    #               <dt>Version</dt>
    #               <dd>
    #                  <p>The Amazon Web Services Systems Manager automation document version. For example, <code>"Version": "1"</code>
    #                  </p>
    #               </dd>
    #               <dt>AssumeRole</dt>
    #               <dd>
    #                  <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p>
    #                  <p>To reuse the provisioned product launch role, set to <code>"AssumeRole": "LAUNCH_ROLE"</code>.</p>
    #               </dd>
    #               <dt>Parameters</dt>
    #               <dd>
    #                  <p>The list of parameters in JSON format.</p>
    #                  <p>For example: <code>[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]</code> or <code>[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]</code>.</p>
    #               </dd>
    #            </dl>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The self-service action description.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    class CreateServiceActionInput < Struct.new(
      :name,
      :definition_type,
      :definition,
      :description,
      :accept_language,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_detail
    #   <p>An object containing information about the self-service action.</p>
    #   @return [Types::ServiceActionDetail]
    class CreateServiceActionOutput < Struct.new(
      :service_action_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The TagOption key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The TagOption value.</p>
    #   @return [String]
    class CreateTagOptionInput < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_option_detail
    #   <p>Information about the TagOption.</p>
    #   @return [Types::TagOptionDetail]
    class CreateTagOptionOutput < Struct.new(
      :tag_option_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the constraint.</p>
    #   @return [String]
    class DeleteConstraintInput < Struct.new(
      :accept_language,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteConstraintOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    class DeletePortfolioInput < Struct.new(
      :accept_language,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePortfolioOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute organization_node
    #   <p>The organization node to whom you are going to stop sharing.</p>
    #   @return [Types::OrganizationNode]
    class DeletePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The portfolio share unique identifier. This will only be returned if delete is made to an organization node.</p>
    #   @return [String]
    class DeletePortfolioShareOutput < Struct.new(
      :portfolio_share_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The product identifier.</p>
    #   @return [String]
    class DeleteProductInput < Struct.new(
      :accept_language,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteProductOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #   @return [String]
    # @!attribute ignore_errors
    #   <p>If set to true, Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    #   @return [Boolean]
    class DeleteProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_id,
      :ignore_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteProvisionedProductPlanOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    class DeleteProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteProvisioningArtifactOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>
    #   @return [String]
    class DeleteServiceActionInput < Struct.new(
      :id,
      :accept_language,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteServiceActionOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    class DeleteTagOptionInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTagOptionOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the constraint.</p>
    #   @return [String]
    class DescribeConstraintInput < Struct.new(
      :accept_language,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute constraint_detail
    #   <p>Information about the constraint.</p>
    #   @return [Types::ConstraintDetail]
    # @!attribute constraint_parameters
    #   <p>The constraint parameters.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the current request.</p>
    #   @return [String]
    class DescribeConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_product_token
    #   <p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>
    #   @return [String]
    class DescribeCopyProductStatusInput < Struct.new(
      :accept_language,
      :copy_product_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_product_status
    #   <p>The status of the copy product operation.</p>
    #   @return [String]
    # @!attribute target_product_id
    #   <p>The identifier of the copied product.</p>
    #   @return [String]
    # @!attribute status_detail
    #   <p>The status message.</p>
    #   @return [String]
    class DescribeCopyProductStatusOutput < Struct.new(
      :copy_product_status,
      :target_product_id,
      :status_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    class DescribePortfolioInput < Struct.new(
      :accept_language,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_detail
    #   <p>Information about the portfolio.</p>
    #   @return [Types::PortfolioDetail]
    # @!attribute tags
    #   <p>Information about the tags associated with the portfolio.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute tag_options
    #   <p>Information about the TagOptions associated with the portfolio.</p>
    #   @return [Array<Types::TagOptionDetail>]
    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #   @return [Array<Types::BudgetDetail>]
    class DescribePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags,
      :tag_options,
      :budgets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>
    #   @return [String]
    class DescribePortfolioShareStatusInput < Struct.new(
      :portfolio_share_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The token for the portfolio share operation. For example, <code>share-6v24abcdefghi</code>.</p>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute organization_node_value
    #   <p>Organization node identifier. It can be either account id, organizational unit id or organization id.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the portfolio share operation.</p>
    #   @return [String]
    # @!attribute share_details
    #   <p>Information about the portfolio share operation.</p>
    #   @return [Types::ShareDetails]
    class DescribePortfolioShareStatusOutput < Struct.new(
      :portfolio_share_token,
      :portfolio_id,
      :organization_node_value,
      :status,
      :share_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_id
    #   <p>The unique identifier of the portfolio for which shares will be retrieved.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following:</p>
    #            <p>1. <code>ACCOUNT</code> - Represents an external account to account share.</p>
    #            <p>2. <code>ORGANIZATION</code> - Represents a share to an organization. This share is available to every account in the organization.</p>
    #            <p>3. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an organizational unit.</p>
    #            <p>4. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to an account in the organization.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class DescribePortfolioSharesInput < Struct.new(
      :portfolio_id,
      :type,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    # @!attribute portfolio_share_details
    #   <p>Summaries about each of the portfolio shares.</p>
    #   @return [Array<Types::PortfolioShareDetail>]
    class DescribePortfolioSharesOutput < Struct.new(
      :next_page_token,
      :portfolio_share_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The product name.</p>
    #   @return [String]
    # @!attribute source_portfolio_id
    #   <p>The unique identifier of the shared portfolio that the specified product is associated
    #            with.</p>
    #            <p>You can provide this parameter to retrieve the shared TagOptions associated with the
    #            product. If this parameter is provided and if TagOptions sharing is enabled in the
    #            portfolio share, the API returns both local and shared TagOptions associated with the
    #            product. Otherwise only local TagOptions will be returned. </p>
    #   @return [String]
    class DescribeProductAsAdminInput < Struct.new(
      :accept_language,
      :id,
      :name,
      :source_portfolio_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_detail
    #   <p>Information about the product view.</p>
    #   @return [Types::ProductViewDetail]
    # @!attribute provisioning_artifact_summaries
    #   <p>Information about the provisioning artifacts (also known as versions) for the specified product.</p>
    #   @return [Array<Types::ProvisioningArtifactSummary>]
    # @!attribute tags
    #   <p>Information about the tags associated with the product.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute tag_options
    #   <p>Information about the TagOptions associated with the product.</p>
    #   @return [Array<Types::TagOptionDetail>]
    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #   @return [Array<Types::BudgetDetail>]
    class DescribeProductAsAdminOutput < Struct.new(
      :product_view_detail,
      :provisioning_artifact_summaries,
      :tags,
      :tag_options,
      :budgets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The product name.</p>
    #   @return [String]
    class DescribeProductInput < Struct.new(
      :accept_language,
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_summary
    #   <p>Summary information about the product view.</p>
    #   @return [Types::ProductViewSummary]
    # @!attribute provisioning_artifacts
    #   <p>Information about the provisioning artifacts for the specified product.</p>
    #   @return [Array<Types::ProvisioningArtifact>]
    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #   @return [Array<Types::BudgetDetail>]
    # @!attribute launch_paths
    #   <p>Information about the associated launch paths.</p>
    #   @return [Array<Types::LaunchPath>]
    class DescribeProductOutput < Struct.new(
      :product_view_summary,
      :provisioning_artifacts,
      :budgets,
      :launch_paths,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The product view identifier.</p>
    #   @return [String]
    class DescribeProductViewInput < Struct.new(
      :accept_language,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_summary
    #   <p>Summary information about the product.</p>
    #   @return [Types::ProductViewSummary]
    # @!attribute provisioning_artifacts
    #   <p>Information about the provisioning artifacts for the product.</p>
    #   @return [Array<Types::ProvisioningArtifact>]
    class DescribeProductViewOutput < Struct.new(
      :product_view_summary,
      :provisioning_artifacts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # DescribeProvisionedProductAPI input structure.
    # 
    #         AcceptLanguage - [Optional]
    #         The language code for localization.
    # 
    #         Id - [Optional]
    #         The provisioned product identifier.
    # 
    #         Name - [Optional]
    #         Another provisioned product identifier. Customers must provide either Id or Name.
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The provisioned product identifier. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioned product. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    #   @return [String]
    class DescribeProvisionedProductInput < Struct.new(
      :accept_language,
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_detail
    #   <p>Information about the provisioned product.</p>
    #   @return [Types::ProvisionedProductDetail]
    # @!attribute cloud_watch_dashboards
    #   <p>Any CloudWatch dashboards that were created when provisioning the product.</p>
    #   @return [Array<Types::CloudWatchDashboard>]
    class DescribeProvisionedProductOutput < Struct.new(
      :provisioned_product_detail,
      :cloud_watch_dashboards,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class DescribeProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_id,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_plan_details
    #   <p>Information about the plan.</p>
    #   @return [Types::ProvisionedProductPlanDetails]
    # @!attribute resource_changes
    #   <p>Information about the resource changes that will occur when the plan is executed.</p>
    #   @return [Array<Types::ResourceChange>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class DescribeProvisionedProductPlanOutput < Struct.new(
      :provisioned_product_plan_details,
      :resource_changes,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_name
    #   <p>The provisioning artifact name.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The product name.</p>
    #   @return [String]
    # @!attribute verbose
    #   <p>Indicates whether a verbose level of detail is enabled.</p>
    #   @return [Boolean]
    # @!attribute include_provisioning_artifact_parameters
    #   <p>Indicates if the API call response does or does not include additional details about the provisioning parameters. </p>
    #   @return [Boolean]
    class DescribeProvisioningArtifactInput < Struct.new(
      :accept_language,
      :provisioning_artifact_id,
      :product_id,
      :provisioning_artifact_name,
      :product_name,
      :verbose,
      :include_provisioning_artifact_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact.</p>
    #   @return [Types::ProvisioningArtifactDetail]
    # @!attribute info
    #   <p>The URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the current request.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_parameters
    #   <p>Information about the parameters used to provision the product.  </p>
    #   @return [Array<Types::ProvisioningArtifactParameter>]
    class DescribeProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status,
      :provisioning_artifact_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier. You must provide the product name or ID, but not both.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #   @return [String]
    class DescribeProvisioningParametersInput < Struct.new(
      :accept_language,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :path_id,
      :path_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_artifact_parameters
    #   <p>Information about the parameters used to provision the product.</p>
    #   @return [Array<Types::ProvisioningArtifactParameter>]
    # @!attribute constraint_summaries
    #   <p>Information about the constraints used to provision the product.</p>
    #   @return [Array<Types::ConstraintSummary>]
    # @!attribute usage_instructions
    #   <p>Any additional metadata specifically related to the provisioning of the product. For
    #            example, see the <code>Version</code> field of the CloudFormation template.</p>
    #   @return [Array<Types::UsageInstruction>]
    # @!attribute tag_options
    #   <p>Information about the TagOptions associated with the resource.</p>
    #   @return [Array<Types::TagOptionSummary>]
    # @!attribute provisioning_artifact_preferences
    #   <p>An object that contains information about preferences, such as Regions and accounts, for the provisioning artifact.</p>
    #   @return [Types::ProvisioningArtifactPreferences]
    # @!attribute provisioning_artifact_outputs
    #   <p>The output of the provisioning artifact.</p>
    #   @deprecated
    #     This property is deprecated and returns the Id and Description of the Provisioning Artifact. Use ProvisioningArtifactOutputKeys instead to get the Keys and Descriptions of the outputs.
    #   @return [Array<Types::ProvisioningArtifactOutput>]
    # @!attribute provisioning_artifact_output_keys
    #   <p>A list of the keys and descriptions of the outputs. These outputs can be referenced from a provisioned product launched from this provisioning artifact.</p>
    #   @return [Array<Types::ProvisioningArtifactOutput>]
    class DescribeProvisioningParametersOutput < Struct.new(
      :provisioning_artifact_parameters,
      :constraint_summaries,
      :usage_instructions,
      :tag_options,
      :provisioning_artifact_preferences,
      :provisioning_artifact_outputs,
      :provisioning_artifact_output_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The record identifier of the provisioned product. This identifier is returned by the
    #            request operation.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class DescribeRecordInput < Struct.new(
      :accept_language,
      :id,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the product.</p>
    #   @return [Types::RecordDetail]
    # @!attribute record_outputs
    #   <p>Information about the product created as the result of a request. For example, the output for  
    #            a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
    #   @return [Array<Types::RecordOutput>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class DescribeRecordOutput < Struct.new(
      :record_detail,
      :record_outputs,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute service_action_id
    #   <p>The self-service action identifier.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeServiceActionExecutionParametersInput < Struct.new(
      :provisioned_product_id,
      :service_action_id,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_parameters
    #   <p>The parameters of the self-service action.</p>
    #   @return [Array<Types::ExecutionParameter>]
    class DescribeServiceActionExecutionParametersOutput < Struct.new(
      :service_action_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The self-service action identifier.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeServiceActionInput < Struct.new(
      :id,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_detail
    #   <p>Detailed information about the self-service action.</p>
    #   @return [Types::ServiceActionDetail]
    class DescribeServiceActionOutput < Struct.new(
      :service_action_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    class DescribeTagOptionInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_option_detail
    #   <p>Information about the TagOption.</p>
    #   @return [Types::TagOptionDetail]
    class DescribeTagOptionOutput < Struct.new(
      :tag_option_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableAWSOrganizationsAccessInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisableAWSOrganizationsAccessOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute budget_name
    #   <p>The name of the budget you want to disassociate.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>
    #   @return [String]
    class DisassociateBudgetFromResourceInput < Struct.new(
      :budget_name,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateBudgetFromResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute principal_arn
    #   <p>The ARN of the principal (user, role, or group). This field allows an ARN with no <code>accountID</code> with or without wildcard characters if 
    #            <code>PrincipalType</code> is <code>IAM_PATTERN</code>.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The supported value is <code>IAM</code> if you use a fully defined ARN, or <code>IAM_PATTERN</code>
    #            if you specify an <code>IAM</code> ARN with no AccountId, with or without wildcard characters. </p>
    #   @return [String]
    class DisassociatePrincipalFromPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn,
      :principal_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociatePrincipalFromPortfolioOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    class DisassociateProductFromPortfolioInput < Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateProductFromPortfolioOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #   @return [String]
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests from the same Amazon Web Services account use the same idempotency token, the same response is returned for each repeated request. </p>
    #   @return [String]
    class DisassociateServiceActionFromProvisioningArtifactInput < Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :service_action_id,
      :accept_language,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceActionFromProvisioningArtifactOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #   @return [String]
    # @!attribute tag_option_id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    class DisassociateTagOptionFromResourceInput < Struct.new(
      :resource_id,
      :tag_option_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateTagOptionFromResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is a duplicate.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateResourceException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableAWSOrganizationsAccessInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class EnableAWSOrganizationsAccessOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          The ID 
    #          for the provisioned product resources 
    #          that are part 
    #          of a resource group.
    #       </p>
    # @!attribute unique_tag
    #   <p>
    #            The unique key-value pair 
    #            for a tag 
    #            that identifies provisioned product resources.
    #         </p>
    #   @return [Types::UniqueTagResourceIdentifier]
    class EngineWorkflowResourceIdentifier < Struct.new(
      :unique_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    class ExecuteProvisionedProductPlanInput < Struct.new(
      :accept_language,
      :plan_id,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of provisioning the product.</p>
    #   @return [Types::RecordDetail]
    class ExecuteProvisionedProductPlanOutput < Struct.new(
      :record_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute execute_token
    #   <p>An idempotency token that uniquely identifies the execute request.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute parameters
    #   <p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will 
    #               override the default value generated by Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for 
    #               any special parameters such as <code>TARGET</code>.</p>
    #   @return [Hash<String, Array<String>>]
    class ExecuteProvisionedProductServiceActionInput < Struct.new(
      :provisioned_product_id,
      :service_action_id,
      :execute_token,
      :accept_language,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>An object containing detailed information about the result of provisioning the product.</p>
    #   @return [Types::RecordDetail]
    class ExecuteProvisionedProductServiceActionOutput < Struct.new(
      :record_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of an execution parameter value that is passed to a self-service action when executed on a provisioned product.</p>
    # @!attribute name
    #   <p>The name of the execution parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The execution parameter type.</p>
    #   @return [String]
    # @!attribute default_values
    #   <p>The default values for the execution parameter.</p>
    #   @return [Array<String>]
    class ExecutionParameter < Struct.new(
      :name,
      :type,
      :default_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing information about the error, along with identifying information about the self-service action and its associations.</p>
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code. Valid values are listed below.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A text description of the error.</p>
    #   @return [String]
    class FailedServiceActionAssociation < Struct.new(
      :service_action_id,
      :product_id,
      :provisioning_artifact_id,
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetAWSOrganizationsAccessStatusInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute access_status
    #   <p>The status of the portfolio share feature.</p>
    #   @return [String]
    class GetAWSOrganizationsAccessStatusOutput < Struct.new(
      :access_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product that you want the outputs from.</p>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>The name of the provisioned product that you want the outputs from.</p>
    #   @return [String]
    # @!attribute output_keys
    #   <p>The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.</p>
    #   @return [Array<String>]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class GetProvisionedProductOutputsInput < Struct.new(
      :accept_language,
      :provisioned_product_id,
      :provisioned_product_name,
      :output_keys,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute outputs
    #   <p>Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
    #         </p>
    #   @return [Array<Types::RecordOutput>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class GetProvisionedProductOutputsOutput < Struct.new(
      :outputs,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>The user-friendly name of the provisioned product. The value must be unique for the Amazon Web Services account. 
    #            The name cannot be updated after the product is provisioned. </p>
    #   @return [String]
    # @!attribute physical_id
    #   <p>The unique identifier of the resource to be imported. It only currently supports
    #            CloudFormation stack IDs.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    class ImportAsProvisionedProductInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :provisioned_product_name,
      :physical_id,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>Information about a request operation.</p>
    #   @return [Types::RecordDetail]
    class ImportAsProvisionedProductOutput < Struct.new(
      :record_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters provided to the operation are not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParametersException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An attempt was made to modify a resource that is in a state that is not valid. 
    #          Check your resources to ensure that they are in valid states before retrying the operation.</p>
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about the product's connection sync and contains the following sub-fields. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>LastSyncTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastSyncStatus</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastSyncStatusMessage</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastSuccessfulSyncTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LastSuccessfulSyncProvisioningArtifactID</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute last_sync_time
    #   <p>The time of the last attempted sync from the repository to the Service Catalog product. </p>
    #   @return [Time]
    # @!attribute last_sync_status
    #   <p>The current status of the sync. Responses include <code>SUCCEEDED</code> or <code>FAILED</code>. </p>
    #   @return [String]
    # @!attribute last_sync_status_message
    #   <p>The sync's status message. </p>
    #   @return [String]
    # @!attribute last_successful_sync_time
    #   <p>The time of the latest successful sync from the source repo artifact to the Service Catalog product.</p>
    #   @return [Time]
    # @!attribute last_successful_sync_provisioning_artifact_id
    #   <p>The ProvisioningArtifactID of the ProvisioningArtifact created from the latest successful sync. </p>
    #   @return [String]
    class LastSync < Struct.new(
      :last_sync_time,
      :last_sync_status,
      :last_sync_status_message,
      :last_successful_sync_time,
      :last_successful_sync_provisioning_artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A launch path object.</p>
    # @!attribute id
    #   <p>The identifier of the launch path.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the launch path.</p>
    #   @return [String]
    class LaunchPath < Struct.new(
      :id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a product path for a user.</p>
    # @!attribute id
    #   <p>The identifier of the product path.</p>
    #   @return [String]
    # @!attribute constraint_summaries
    #   <p>The constraints on the portfolio-product relationship.</p>
    #   @return [Array<Types::ConstraintSummary>]
    # @!attribute tags
    #   <p>The tags associated with this product path.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute name
    #   <p>The name of the portfolio that contains the product. </p>
    #   @return [String]
    class LaunchPathSummary < Struct.new(
      :id,
      :constraint_summaries,
      :tags,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current limits of the service would have been exceeded by this operation. Decrease your
    #          resource use or increase your service limits and retry the operation.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute portfolio_share_type
    #   <p>The type of shared portfolios to list. The default is to list imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - List portfolios accepted and shared via organizational sharing by the management account or delegated administrator of your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Deprecated type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - List imported portfolios that have been accepted and
    #                  shared through account-to-account sharing.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListAcceptedPortfolioSharesInput < Struct.new(
      :accept_language,
      :page_token,
      :page_size,
      :portfolio_share_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_details
    #   <p>Information about the portfolios.</p>
    #   @return [Array<Types::PortfolioDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListAcceptedPortfolioSharesOutput < Struct.new(
      :portfolio_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListBudgetsForResourceInput < Struct.new(
      :accept_language,
      :resource_id,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #   @return [Array<Types::BudgetDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListBudgetsForResourceOutput < Struct.new(
      :budgets,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListConstraintsForPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :product_id,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute constraint_details
    #   <p>Information about the constraints.</p>
    #   @return [Array<Types::ConstraintDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListConstraintsForPortfolioOutput < Struct.new(
      :constraint_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListLaunchPathsInput < Struct.new(
      :accept_language,
      :product_id,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute launch_path_summaries
    #   <p>Information about the launch path.</p>
    #   @return [Array<Types::LaunchPathSummary>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListLaunchPathsOutput < Struct.new(
      :launch_path_summaries,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>
    #   @return [String]
    # @!attribute organization_node_type
    #   <p>The organization node type that will be returned in the output.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class ListOrganizationPortfolioAccessInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :organization_node_type,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_nodes
    #   <p>Displays information about the organization nodes.</p>
    #   @return [Array<Types::OrganizationNode>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListOrganizationPortfolioAccessOutput < Struct.new(
      :organization_nodes,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute organization_parent_id
    #   <p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class ListPortfolioAccessInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :organization_parent_id,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>Information about the Amazon Web Services accounts with access to the portfolio.</p>
    #   @return [Array<String>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListPortfolioAccessOutput < Struct.new(
      :account_ids,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class ListPortfoliosForProductInput < Struct.new(
      :accept_language,
      :product_id,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_details
    #   <p>Information about the portfolios.</p>
    #   @return [Array<Types::PortfolioDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListPortfoliosForProductOutput < Struct.new(
      :portfolio_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class ListPortfoliosInput < Struct.new(
      :accept_language,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_details
    #   <p>Information about the portfolios.</p>
    #   @return [Array<Types::PortfolioDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListPortfoliosOutput < Struct.new(
      :portfolio_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListPrincipalsForPortfolioInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute principals
    #   <p>The <code>PrincipalARN</code>s and corresponding <code>PrincipalType</code>s associated with the portfolio.</p>
    #   @return [Array<Types::Principal>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListPrincipalsForPortfolioOutput < Struct.new(
      :principals,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #   @return [Types::AccessLevelFilter]
    class ListProvisionedProductPlansInput < Struct.new(
      :accept_language,
      :provision_product_id,
      :page_size,
      :page_token,
      :access_level_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_plans
    #   <p>Information about the plans.</p>
    #   @return [Array<Types::ProvisionedProductPlanSummary>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListProvisionedProductPlansOutput < Struct.new(
      :provisioned_product_plans,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListProvisioningArtifactsForServiceActionInput < Struct.new(
      :service_action_id,
      :page_size,
      :page_token,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_artifact_views
    #   <p>An array of objects with information about product views and provisioning artifacts.</p>
    #   @return [Array<Types::ProvisioningArtifactView>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListProvisioningArtifactsForServiceActionOutput < Struct.new(
      :provisioning_artifact_views,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    class ListProvisioningArtifactsInput < Struct.new(
      :accept_language,
      :product_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_artifact_details
    #   <p>Information about the provisioning artifacts.</p>
    #   @return [Array<Types::ProvisioningArtifactDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListProvisioningArtifactsOutput < Struct.new(
      :provisioning_artifact_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #   @return [Types::AccessLevelFilter]
    # @!attribute search_filter
    #   <p>The search filter to scope the results.</p>
    #   @return [Types::ListRecordHistorySearchFilter]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListRecordHistoryInput < Struct.new(
      :accept_language,
      :access_level_filter,
      :search_filter,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_details
    #   <p>The records, in reverse chronological order.</p>
    #   @return [Array<Types::RecordDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListRecordHistoryOutput < Struct.new(
      :record_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The search filter to use when listing history records.</p>
    # @!attribute key
    #   <p>The filter key.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>product</code> - Filter results based on the specified product identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>provisionedproduct</code> - Filter results based on the provisioned product identifier.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The filter value.</p>
    #   @return [String]
    class ListRecordHistorySearchFilter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_option_id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Portfolio</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Product</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListResourcesForTagOptionInput < Struct.new(
      :tag_option_id,
      :resource_type,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_details
    #   <p>Information about the resources.</p>
    #   @return [Array<Types::ResourceDetail>]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListResourcesForTagOptionOutput < Struct.new(
      :resource_details,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListServiceActionsForProvisioningArtifactInput < Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :page_size,
      :page_token,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_summaries
    #   <p>An object containing information about the self-service actions associated with the provisioning artifact.</p>
    #   @return [Array<Types::ServiceActionSummary>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListServiceActionsForProvisioningArtifactOutput < Struct.new(
      :service_action_summaries,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListServiceActionsInput < Struct.new(
      :accept_language,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_summaries
    #   <p>An object containing information about the service actions associated with the provisioning artifact.</p>
    #   @return [Array<Types::ServiceActionSummary>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListServiceActionsOutput < Struct.new(
      :service_action_summaries,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class ListStackInstancesForProvisionedProductInput < Struct.new(
      :accept_language,
      :provisioned_product_id,
      :page_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_instances
    #   <p>List of stack instances.</p>
    #   @return [Array<Types::StackInstance>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ListStackInstancesForProvisionedProductOutput < Struct.new(
      :stack_instances,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters to use when listing TagOptions.</p>
    # @!attribute key
    #   <p>The TagOption key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The TagOption value.</p>
    #   @return [String]
    # @!attribute active
    #   <p>The active state.</p>
    #   @return [Boolean]
    class ListTagOptionsFilters < Struct.new(
      :key,
      :value,
      :active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>
    #   @return [Types::ListTagOptionsFilters]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListTagOptionsInput < Struct.new(
      :filters,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_option_details
    #   <p>Information about the TagOptions.</p>
    #   @return [Array<Types::TagOptionDetail>]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ListTagOptionsOutput < Struct.new(
      :tag_option_details,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_token
    #   <p>
    #            The encrypted contents 
    #            of the provisioning engine execution payload 
    #            that Service Catalog sends 
    #            after the Terraform product provisioning workflow starts.
    #         </p>
    #   @return [String]
    # @!attribute record_id
    #   <p>
    #            The identifier 
    #            of the record.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #            The status 
    #            of the provisioning engine execution.
    #         </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>
    #            The reason 
    #            why the provisioning engine execution failed.
    #         </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>
    #            The ID 
    #            for the provisioned product resources 
    #            that are part 
    #            of a resource group.
    #         </p>
    #   @return [Types::EngineWorkflowResourceIdentifier]
    # @!attribute outputs
    #   <p>
    #            The output 
    #            of the provisioning engine execution.
    #         </p>
    #   @return [Array<Types::RecordOutput>]
    # @!attribute idempotency_token
    #   <p>
    #            The idempotency token 
    #            that identifies the provisioning engine execution.
    #         </p>
    #   @return [String]
    class NotifyProvisionProductEngineWorkflowResultInput < Struct.new(
      :workflow_token,
      :record_id,
      :status,
      :failure_reason,
      :resource_identifier,
      :outputs,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class NotifyProvisionProductEngineWorkflowResultOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_token
    #   <p>
    #            The encrypted contents 
    #            of the terminate engine execution payload 
    #            that Service Catalog sends 
    #            after the Terraform product terminate workflow starts.
    #         </p>
    #   @return [String]
    # @!attribute record_id
    #   <p>
    #            The identifier 
    #            of the record.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #            The status 
    #            of the terminate engine execution.
    #         </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>
    #            The reason 
    #            why the terminate engine execution failed.
    #         </p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>
    #            The idempotency token 
    #            that identifies the terminate engine execution.
    #         </p>
    #   @return [String]
    class NotifyTerminateProvisionedProductEngineWorkflowResultInput < Struct.new(
      :workflow_token,
      :record_id,
      :status,
      :failure_reason,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class NotifyTerminateProvisionedProductEngineWorkflowResultOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_token
    #   <p>
    #            The encrypted contents 
    #            of the update engine execution payload 
    #            that Service Catalog sends 
    #            after the Terraform product update workflow starts.
    #         </p>
    #   @return [String]
    # @!attribute record_id
    #   <p>
    #            The identifier 
    #            of the record.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #            The status 
    #            of the update engine execution.
    #         </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>
    #            The reason 
    #            why the update engine execution failed.
    #         </p>
    #   @return [String]
    # @!attribute outputs
    #   <p>
    #            The output 
    #            of the update engine execution.
    #         </p>
    #   @return [Array<Types::RecordOutput>]
    # @!attribute idempotency_token
    #   <p>
    #            The idempotency token 
    #            that identifies the update engine execution.
    #         </p>
    #   @return [String]
    class NotifyUpdateProvisionedProductEngineWorkflowResultInput < Struct.new(
      :workflow_token,
      :record_id,
      :status,
      :failure_reason,
      :outputs,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class NotifyUpdateProvisionedProductEngineWorkflowResultOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is not supported.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the organization node.</p>
    # @!attribute type
    #   <p>The organization node type.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The identifier of the organization node.</p>
    #   @return [String]
    class OrganizationNode < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The constraints that the administrator has put on the parameter.</p>
    # @!attribute allowed_values
    #   <p>The values that the administrator has allowed for the parameter.</p>
    #   @return [Array<String>]
    # @!attribute allowed_pattern
    #   <p>A regular expression that represents the patterns that allow for <code>String</code> types. The pattern must match the entire parameter value provided.</p>
    #   @return [String]
    # @!attribute constraint_description
    #   <p>A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of <code>[A-Za-z0-9]+</code> displays the following error message when the user specifies an invalid value:</p>
    #            <p>
    #               <code>Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+</code>
    #            </p>
    #            <p>By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message:</p>
    #            <p>
    #               <code>Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers.</code>
    #            </p>
    #   @return [String]
    # @!attribute max_length
    #   <p>An integer value that determines the largest number of characters you want to allow for <code>String</code> types. </p>
    #   @return [String]
    # @!attribute min_length
    #   <p>An integer value that determines the smallest number of characters you want to allow for <code>String</code> types.</p>
    #   @return [String]
    # @!attribute max_value
    #   <p>A numeric value that determines the largest numeric value you want to allow for <code>Number</code> types.</p>
    #   @return [String]
    # @!attribute min_value
    #   <p>A numeric value that determines the smallest numeric value you want to allow for <code>Number</code> types. </p>
    #   @return [String]
    class ParameterConstraints < Struct.new(
      :allowed_values,
      :allowed_pattern,
      :constraint_description,
      :max_length,
      :min_length,
      :max_value,
      :min_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a portfolio.</p>
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN assigned to the portfolio.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name to use for display purposes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the portfolio.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute provider_name
    #   <p>The name of the portfolio provider.</p>
    #   @return [String]
    class PortfolioDetail < Struct.new(
      :id,
      :arn,
      :display_name,
      :description,
      :created_time,
      :provider_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the portfolio share.</p>
    # @!attribute principal_id
    #   <p>The identifier of the recipient entity that received the portfolio share. 
    #            The recipient entity can be one of the following:</p>
    #            <p>1. An external account.</p>
    #            <p>2. An organziation member account.</p>
    #            <p>3. An organzational unit (OU).</p>
    #            <p>4. The organization itself. (This shares with every account in the organization).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the portfolio share.</p>
    #   @return [String]
    # @!attribute accepted
    #   <p>Indicates whether the shared portfolio is imported by the recipient account. If the recipient is in an organization node, the share is automatically imported, and the field is always set to true.</p>
    #   @return [Boolean]
    # @!attribute share_tag_options
    #   <p>Indicates whether TagOptions sharing is enabled or disabled for the portfolio share.</p>
    #   @return [Boolean]
    # @!attribute share_principals
    #   <p>Indicates if <code>Principal</code> sharing is enabled or disabled for the portfolio share. </p>
    #   @return [Boolean]
    class PortfolioShareDetail < Struct.new(
      :principal_id,
      :type,
      :accepted,
      :share_tag_options,
      :share_principals,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:accepted] = false unless options.key?(:accepted)
        options[:share_tag_options] = false unless options.key?(:share_tag_options)
        options[:share_principals] = false unless options.key?(:share_principals)
        super
      end
    end

    # <p>Information about a principal.</p>
    # @!attribute principal_arn
    #   <p>The ARN of the principal (user, role, or group). This field allows for an ARN with no <code>accountID</code>, with or without wildcard characters if the
    #         <code>PrincipalType</code> is an <code>IAM_PATTERN</code>. </p>
    #            <p>For more information, review <a href="https://docs.aws.amazon.com/cli/latest/reference/servicecatalog/associate-principal-with-portfolio.html#options">associate-principal-with-portfolio</a> 
    #         in the Amazon Web Services CLI Command Reference. </p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type. The supported value is <code>IAM</code> if you use a fully defined ARN, or
    #            <code>IAM_PATTERN</code> if you use an ARN with no <code>accountID</code>, with or without wildcard characters. </p>
    #   @return [String]
    class Principal < Struct.new(
      :principal_arn,
      :principal_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A single product view aggregation value/count pair, containing metadata about each
    #          product to which the calling user has access.</p>
    # @!attribute value
    #   <p>The value of the product view aggregation.</p>
    #   @return [String]
    # @!attribute approximate_count
    #   <p>An approximate count of the products that match the value.</p>
    #   @return [Integer]
    class ProductViewAggregationValue < Struct.new(
      :value,
      :approximate_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:approximate_count] = 0 unless options.key?(:approximate_count)
        super
      end
    end

    # <p>Information about a product view.</p>
    # @!attribute product_view_summary
    #   <p>Summary information about the product view.</p>
    #   @return [Types::ProductViewSummary]
    # @!attribute status
    #   <p>The status of the product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The product is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Product creation has started; the product is not ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - An action failed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_arn
    #   <p>The ARN of the product.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute source_connection
    #   <p>A top level <code>ProductViewDetail</code> response containing details about the product’s connection.
    #            Service Catalog returns this field for the <code>CreateProduct</code>, <code>UpdateProduct</code>, 
    #            <code>DescribeProductAsAdmin</code>, and <code>SearchProductAsAdmin</code> APIs. 
    #            This response contains the same fields as the <code>ConnectionParameters</code> request, with the 
    #            addition of the <code>LastSync</code> response.</p>
    #   @return [Types::SourceConnectionDetail]
    class ProductViewDetail < Struct.new(
      :product_view_summary,
      :status,
      :product_arn,
      :created_time,
      :source_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a product view.</p>
    # @!attribute id
    #   <p>The product view identifier.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the product.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the product. Contact the product administrator for the significance of
    #            this value.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>Short description of the product.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The product type. Contact the product administrator for the significance of this
    #            value. If this value is <code>MARKETPLACE</code>, the product was created by Amazon Web Services Marketplace.</p>
    #   @return [String]
    # @!attribute distributor
    #   <p>The distributor of the product. Contact the product administrator for the
    #            significance of this value.</p>
    #   @return [String]
    # @!attribute has_default_path
    #   <p>Indicates whether the product has a default path.
    #            If the product does not have a default path, call <a>ListLaunchPaths</a> 
    #            to disambiguate between paths. Otherwise, <a>ListLaunchPaths</a> is not 
    #            required, and the output of <a>ProductViewSummary</a> can be used directly with 
    #            <a>DescribeProvisioningParameters</a>.</p>
    #   @return [Boolean]
    # @!attribute support_email
    #   <p>The email contact information to obtain support for this Product.</p>
    #   @return [String]
    # @!attribute support_description
    #   <p>The description of the support for this Product.</p>
    #   @return [String]
    # @!attribute support_url
    #   <p>The URL information to obtain support for this Product.</p>
    #   @return [String]
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
      :support_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_default_path] = false unless options.key?(:has_default_path)
        super
      end
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the Amazon Web Services account and cannot be updated after the product is provisioned.</p>
    #   @return [String]
    # @!attribute provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #   @return [Array<Types::ProvisioningParameter>]
    # @!attribute provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    #   @return [Types::ProvisioningPreferences]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #   @return [Array<String>]
    # @!attribute provision_token
    #   <p>An idempotency token that uniquely identifies the provisioning request.</p>
    #   @return [String]
    class ProvisionProductInput < Struct.new(
      :accept_language,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :path_id,
      :path_name,
      :provisioned_product_name,
      :provisioning_parameters,
      :provisioning_preferences,
      :tags,
      :notification_arns,
      :provision_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of provisioning the product.</p>
    #   @return [Types::RecordDetail]
    class ProvisionProductOutput < Struct.new(
      :record_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a provisioned product.</p>
    # @!attribute name
    #   <p>The user-friendly name of the provisioned product.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the provisioned product.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of provisioned product. 
    #            The supported values are <code>CFN_STACK</code>, <code>CFN_STACKSET</code>, <code>TERRAFORM_OPEN_SOURCE</code>, 
    #            <code>TERRAFORM_CLOUD</code>, and <code>EXTERNAL</code>.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the provisioned product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most
    #                  recent operation succeeded and completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.
    #                  Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has
    #                  completed the requested operation but is not exactly what was requested. For example, a
    #                  request to update to a new version failed and the stack rolled back to the current version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. 
    #                  For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,
    #                   but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>The current status message of the provisioned product.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    # @!attribute last_record_id
    #   <p>The record identifier of the last request performed on this provisioned product.</p>
    #   @return [String]
    # @!attribute last_provisioning_record_id
    #   <p>The record identifier of the last request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_successful_provisioning_record_id
    #   <p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute physical_id
    #   <p>The assigned identifier for the resource, such as an EC2 instance ID or an S3 bucket name.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The name of the product.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    # @!attribute user_arn_session
    #   <p>The ARN of the user in the session. This ARN might contain a session ID.</p>
    #   @return [String]
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
      :last_provisioning_record_id,
      :last_successful_provisioning_record_id,
      :tags,
      :physical_id,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :user_arn,
      :user_arn_session,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a provisioned product.</p>
    # @!attribute name
    #   <p>The user-friendly name of the provisioned product.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the provisioned product.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of provisioned product. 
    #            The supported values are <code>CFN_STACK</code>, <code>CFN_STACKSET</code>, <code>TERRAFORM_OPEN_SOURCE</code>, 
    #            <code>TERRAFORM_CLOUD</code>, and <code>EXTERNAL</code>.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the provisioned product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most
    #                  recent operation succeeded and completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.
    #                  Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has
    #                  completed the requested operation but is not exactly what was requested. For example, a
    #                  request to update to a new version failed and the stack rolled back to the current version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. 
    #                  For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,
    #                  but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>The current status message of the provisioned product.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #   @return [String]
    # @!attribute last_record_id
    #   <p>The record identifier of the last request performed on this provisioned product.</p>
    #   @return [String]
    # @!attribute last_provisioning_record_id
    #   <p>The record identifier of the last request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_successful_provisioning_record_id
    #   <p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #   @return [String]
    # @!attribute launch_role_arn
    #   <p>The ARN of the launch role associated with the provisioned product.</p>
    #   @return [String]
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
      :last_provisioning_record_id,
      :last_successful_provisioning_record_id,
      :product_id,
      :provisioning_artifact_id,
      :launch_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a plan.</p>
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product 
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #   @return [String]
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #   @return [String]
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provision_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #   @return [String]
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    # @!attribute updated_time
    #   <p>The UTC time stamp when the plan was last updated.</p>
    #   @return [Time]
    # @!attribute notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #   @return [Array<String>]
    # @!attribute provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #   @return [Array<Types::UpdateProvisioningParameter>]
    # @!attribute tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute status_message
    #   <p>The status message.</p>
    #   @return [String]
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
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a plan.</p>
    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #   @return [String]
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #   @return [String]
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provision_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #   @return [String]
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    class ProvisionedProductPlanSummary < Struct.new(
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provision_product_name,
      :plan_type,
      :provisioning_artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
    # @!attribute id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #   @return [String]
    class ProvisioningArtifact < Struct.new(
      :id,
      :name,
      :description,
      :created_time,
      :guidance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a provisioning artifact (also known as a version) for a product.</p>
    # @!attribute id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of provisioning artifact.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUD_FORMATION_TEMPLATE</code> - CloudFormation template</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERRAFORM_OPEN_SOURCE</code> - Terraform Open Source configuration file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERRAFORM_CLOUD</code> - Terraform Cloud configuration file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXTERNAL</code> - External configuration file</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute active
    #   <p>Indicates whether the product version is active.</p>
    #   @return [Boolean]
    # @!attribute guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #   @return [String]
    # @!attribute source_revision
    #   <p>Specifies the revision of the external artifact that was used to automatically sync the Service Catalog product 
    #            and create the provisioning artifact. Service Catalog includes this response parameter as a high level 
    #            field to the existing <code>ProvisioningArtifactDetail</code> type, which is returned as part of the
    #            response for <code>CreateProduct</code>, <code>UpdateProduct</code>, <code>DescribeProductAsAdmin</code>, 
    #            <code>DescribeProvisioningArtifact</code>, <code>ListProvisioningArtifact</code>, 
    #            and <code>UpdateProvisioningArticat</code> APIs. </p>
    #            <p>This field only exists for Repo-Synced products. </p>
    #   @return [String]
    class ProvisioningArtifactDetail < Struct.new(
      :id,
      :name,
      :description,
      :type,
      :created_time,
      :active,
      :guidance,
      :source_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provisioning artifact output.</p>
    # @!attribute key
    #   <p>The provisioning artifact output key.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the provisioning artifact output key.</p>
    #   @return [String]
    class ProvisioningArtifactOutput < Struct.new(
      :key,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a parameter used to provision a product.</p>
    # @!attribute parameter_key
    #   <p>The parameter key.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value.</p>
    #   @return [String]
    # @!attribute parameter_type
    #   <p>The parameter type.</p>
    #   @return [String]
    # @!attribute is_no_echo
    #   <p>If this value is true, the value for this parameter is obfuscated from view when the
    #            parameter is retrieved. This parameter is used to hide sensitive information.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_constraints
    #   <p>Constraints that the administrator has put on a parameter.</p>
    #   @return [Types::ParameterConstraints]
    class ProvisioningArtifactParameter < Struct.new(
      :parameter_key,
      :default_value,
      :parameter_type,
      :is_no_echo,
      :description,
      :parameter_constraints,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_no_echo] = false unless options.key?(:is_no_echo)
        super
      end
    end

    # <p>The user-defined preferences that will be applied during product provisioning, unless overridden by <code>ProvisioningPreferences</code> or <code>UpdateProvisioningPreferences</code>.</p>
    #          <p>For more information on maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a> in the <i>CloudFormation User Guide</i>.</p>
    # @!attribute stack_set_accounts
    #   <p>One or more Amazon Web Services accounts where stack instances are deployed from the stack set. These accounts can be scoped in <code>ProvisioningPreferences$StackSetAccounts</code> and <code>UpdateProvisioningPreferences$StackSetAccounts</code>.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #   @return [Array<String>]
    # @!attribute stack_set_regions
    #   <p>One or more Amazon Web Services Regions where stack instances are deployed from the stack set. These Regions can be scoped in <code>ProvisioningPreferences$StackSetRegions</code> and <code>UpdateProvisioningPreferences$StackSetRegions</code>.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #   @return [Array<String>]
    class ProvisioningArtifactPreferences < Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a provisioning artifact (also known as a version) for a product.</p>
    # @!attribute name
    #   <p>The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning artifact, including how it differs from the previous provisioning artifact.</p>
    #   @return [String]
    # @!attribute info
    #   <p>Specify the template source with one of the following options, but not both.
    #            Keys accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ]</p>
    #            <p>The URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.
    #          Specify the URL in JSON format as follows:</p>
    #            <p>
    #               <code>"LoadTemplateFromURL": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."</code>
    #            </p>
    #            <p>
    #               <code>ImportFromPhysicalId</code>: The physical id of the resource that contains the
    #            template. Currently only supports CloudFormation stack arn. Specify the physical id in JSON
    #            format as follows: <code>ImportFromPhysicalId: “arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]</code>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The type of provisioning artifact.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUD_FORMATION_TEMPLATE</code> - CloudFormation template</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERRAFORM_OPEN_SOURCE</code> - Terraform Open Source configuration file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERRAFORM_CLOUD</code> - Terraform Cloud configuration file</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXTERNAL</code> - External configuration file</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute disable_template_validation
    #   <p>If set to true, Service Catalog stops validating the specified provisioning artifact even if it is invalid. </p>
    #            <p>Service Catalog does not support template validation for the <code>TERRAFORM_OS</code> product type. </p>
    #   @return [Boolean]
    class ProvisioningArtifactProperties < Struct.new(
      :name,
      :description,
      :info,
      :type,
      :disable_template_validation,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_template_validation] = false unless options.key?(:disable_template_validation)
        super
      end
    end

    # <p>Summary information about a provisioning artifact (also known as a version) for a product.</p>
    # @!attribute id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute provisioning_artifact_metadata
    #   <p>The metadata for the provisioning artifact. This is used with Amazon Web Services Marketplace products.</p>
    #   @return [Hash<String, String>]
    class ProvisioningArtifactSummary < Struct.new(
      :id,
      :name,
      :description,
      :created_time,
      :provisioning_artifact_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains summary information about a product view and a provisioning artifact.</p>
    # @!attribute product_view_summary
    #   <p>Summary information about a product view.</p>
    #   @return [Types::ProductViewSummary]
    # @!attribute provisioning_artifact
    #   <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
    #   @return [Types::ProvisioningArtifact]
    class ProvisioningArtifactView < Struct.new(
      :product_view_summary,
      :provisioning_artifact,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a parameter used to provision a product.</p>
    # @!attribute key
    #   <p>The parameter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The parameter value.</p>
    #   @return [String]
    class ProvisioningParameter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user-defined preferences that will be applied when updating a provisioned
    #          product. Not all preferences are applicable to all provisioned product type</p>
    #          <p>One or more Amazon Web Services accounts that will have access to the provisioned product.</p>
    #          <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #          <p>The Amazon Web Services accounts specified should be within the list of accounts in the
    #             <code>STACKSET</code> constraint. To get the list of accounts in the
    #             <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code>
    #          operation.</p>
    #          <p>If no values are specified, the default value is all accounts from the
    #             <code>STACKSET</code> constraint.</p>
    # @!attribute stack_set_accounts
    #   <p>One or more Amazon Web Services accounts where the provisioned product will be available.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The specified accounts should be within the list of accounts from the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all acounts from the <code>STACKSET</code> constraint.</p>
    #   @return [Array<String>]
    # @!attribute stack_set_regions
    #   <p>One or more Amazon Web Services Regions where the provisioned product will be available.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The specified Regions should be within the list of Regions from the <code>STACKSET</code> constraint. To get the list of Regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all Regions from the <code>STACKSET</code> constraint.</p>
    #   @return [Array<String>]
    # @!attribute stack_set_failure_tolerance_count
    #   <p>The number of accounts, per Region, for which this operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #            <p>The default value is <code>0</code> if no value is specified.</p>
    #   @return [Integer]
    # @!attribute stack_set_failure_tolerance_percentage
    #   <p>The percentage of accounts, per Region, for which this stack operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #   @return [Integer]
    # @!attribute stack_set_max_concurrency_count
    #   <p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #   @return [Integer]
    # @!attribute stack_set_max_concurrency_percentage
    #   <p>The maximum percentage of accounts in which to perform this operation at one time.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, Service Catalog sets the number as <code>1</code> instead.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #   @return [Integer]
    class ProvisioningPreferences < Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      :stack_set_failure_tolerance_count,
      :stack_set_failure_tolerance_percentage,
      :stack_set_max_concurrency_count,
      :stack_set_max_concurrency_percentage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a request operation.</p>
    # @!attribute record_id
    #   <p>The identifier of the record.</p>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the provisioned product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The request was created but the operation has not started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The requested operation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the
    #               requested operation failed and some remediation is occurring. For example, a rollback.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The requested operation has successfully completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The requested operation has unsuccessfully completed.
    #               Investigate using the error messages returned.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #   @return [Time]
    # @!attribute updated_time
    #   <p>The time when the record was last updated.</p>
    #   @return [Time]
    # @!attribute provisioned_product_type
    #   <p>The type of provisioned product. The supported values are <code>CFN_STACK</code>, <code>CFN_STACKSET</code>, 
    #            <code>TERRAFORM_OPEN_SOURCE</code>, <code>TERRAFORM_CLOUD</code>, and <code>EXTERNAL</code>.</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>The record type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISION_PRODUCT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_PROVISIONED_PRODUCT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE_PROVISIONED_PRODUCT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute path_id
    #   <p>The path identifier.</p>
    #   @return [String]
    # @!attribute record_errors
    #   <p>The errors that occurred.</p>
    #   @return [Array<Types::RecordError>]
    # @!attribute record_tags
    #   <p>One or more tags.</p>
    #   @return [Array<Types::RecordTag>]
    # @!attribute launch_role_arn
    #   <p>The ARN of the launch role associated with the provisioned product.</p>
    #   @return [String]
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
      :record_tags,
      :launch_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The error code and description resulting from an operation.</p>
    # @!attribute code
    #   <p>The numeric value of the error.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the error.</p>
    #   @return [String]
    class RecordError < Struct.new(
      :code,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the product created as the result of a request. For example, the output for
    #          a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
    # @!attribute output_key
    #   <p>The output key.</p>
    #   @return [String]
    # @!attribute output_value
    #   <p>The output value.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the output.</p>
    #   @return [String]
    class RecordOutput < Struct.new(
      :output_key,
      :output_value,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tag, which is a key-value pair.</p>
    # @!attribute key
    #   <p>The key for this tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for this tag.</p>
    #   @return [String]
    class RecordTag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute portfolio_share_type
    #   <p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Reject imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    #   @return [String]
    class RejectPortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :portfolio_share_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RejectPortfolioShareOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a resource change that will occur when a plan is executed.</p>
    # @!attribute action
    #   <p>The change action.</p>
    #   @return [String]
    # @!attribute logical_resource_id
    #   <p>The ID of the resource, as defined in the CloudFormation template.</p>
    #   @return [String]
    # @!attribute physical_resource_id
    #   <p>The ID of the resource, if it was already created.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute replacement
    #   <p>If the change type is <code>Modify</code>, indicates whether the existing resource
    #            is deleted and replaced with a new one.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The change scope.</p>
    #   @return [Array<String>]
    # @!attribute details
    #   <p>Information about the resource changes.</p>
    #   @return [Array<Types::ResourceChangeDetail>]
    class ResourceChange < Struct.new(
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a change to a resource attribute.</p>
    # @!attribute target
    #   <p>Information about the resource attribute to be modified.</p>
    #   @return [Types::ResourceTargetDefinition]
    # @!attribute evaluation
    #   <p>For static evaluations, the value of the resource attribute will change and the new value is known.
    #            For dynamic evaluations, the value might change, and any new value will be determined when the plan is updated.</p>
    #   @return [String]
    # @!attribute causing_entity
    #   <p>The ID of the entity that caused the change.</p>
    #   @return [String]
    class ResourceChangeDetail < Struct.new(
      :target,
      :evaluation,
      :causing_entity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a resource.</p>
    # @!attribute id
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The creation time of the resource.</p>
    #   @return [Time]
    class ResourceDetail < Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that is currently in use. Ensure that the resource is not in use and retry the operation.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a change to a resource attribute.</p>
    # @!attribute attribute
    #   <p>The attribute to be changed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>If the attribute is <code>Properties</code>, the value is the name of the property. 
    #            Otherwise, the value is null.</p>
    #   @return [String]
    # @!attribute requires_recreation
    #   <p>If the attribute is <code>Properties</code>, indicates whether a change to this property
    #            causes the resource to be re-created.</p>
    #   @return [String]
    class ResourceTargetDefinition < Struct.new(
      :attribute,
      :name,
      :requires_recreation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #   @return [Types::AccessLevelFilter]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class ScanProvisionedProductsInput < Struct.new(
      :accept_language,
      :access_level_filter,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_products
    #   <p>Information about the provisioned products.</p>
    #   @return [Array<Types::ProvisionedProductDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class ScanProvisionedProductsOutput < Struct.new(
      :provisioned_products,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The search filters. If no search filters are specified, the output includes all products 
    #            to which the administrator has access.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute product_source
    #   <p>Access level of the source of the product.</p>
    #   @return [String]
    class SearchProductsAsAdminInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :filters,
      :sort_by,
      :sort_order,
      :page_token,
      :page_size,
      :product_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_details
    #   <p>Information about the product views.</p>
    #   @return [Array<Types::ProductViewDetail>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class SearchProductsAsAdminOutput < Struct.new(
      :product_view_details,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>The search filters. If no search filters are specified, the output includes
    #            all products to which the caller has access.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #   @return [String]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class SearchProductsInput < Struct.new(
      :accept_language,
      :filters,
      :page_size,
      :sort_by,
      :sort_order,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_summaries
    #   <p>Information about the product views.</p>
    #   @return [Array<Types::ProductViewSummary>]
    # @!attribute product_view_aggregations
    #   <p>The product view aggregations.</p>
    #   @return [Hash<String, Array<Types::ProductViewAggregationValue>>]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class SearchProductsOutput < Struct.new(
      :product_view_summaries,
      :product_view_aggregations,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is
    #            <code>Account</code>.</p>
    #   @return [Types::AccessLevelFilter]
    # @!attribute filters
    #   <p>The search filters.</p>
    #            <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>, 
    #            <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>,
    #            <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>, 
    #            <code>provisioningArtifactId</code>, <code>type</code>, <code>status</code>,
    #            <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>, 
    #            <code>productName</code>, and <code>provisioningArtifactName</code>.</p>
    #            <p>Example: <code>"SearchQuery":["status:AVAILABLE"]</code>
    #            </p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>, 
    #            and <code>lastRecordId</code>.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #   @return [String]
    class SearchProvisionedProductsInput < Struct.new(
      :accept_language,
      :access_level_filter,
      :filters,
      :sort_by,
      :sort_order,
      :page_size,
      :page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_products
    #   <p>Information about the provisioned products.</p>
    #   @return [Array<Types::ProvisionedProductAttribute>]
    # @!attribute total_results_count
    #   <p>The number of provisioned products found.</p>
    #   @return [Integer]
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #   @return [String]
    class SearchProvisionedProductsOutput < Struct.new(
      :provisioned_products,
      :total_results_count,
      :next_page_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_results_count] = 0 unless options.key?(:total_results_count)
        super
      end
    end

    # <p>A self-service action association consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #   @return [String]
    class ServiceActionAssociation < Struct.new(
      :service_action_id,
      :product_id,
      :provisioning_artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing detailed information about the self-service action.</p>
    # @!attribute service_action_summary
    #   <p>Summary information about the self-service action.</p>
    #   @return [Types::ServiceActionSummary]
    # @!attribute definition
    #   <p>A map that defines the self-service action.</p>
    #   @return [Hash<String, String>]
    class ServiceActionDetail < Struct.new(
      :service_action_summary,
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the self-service action.</p>
    # @!attribute id
    #   <p>The self-service action identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The self-service action name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The self-service action description.</p>
    #   @return [String]
    # @!attribute definition_type
    #   <p>The self-service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    #   @return [String]
    class ServiceActionSummary < Struct.new(
      :id,
      :name,
      :description,
      :definition_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the portfolio share operation.</p>
    # @!attribute successful_shares
    #   <p>List of accounts for whom the operation succeeded.</p>
    #   @return [Array<String>]
    # @!attribute share_errors
    #   <p>List of errors.</p>
    #   @return [Array<Types::ShareError>]
    class ShareDetails < Struct.new(
      :successful_shares,
      :share_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Errors that occurred during the portfolio share operation.</p>
    # @!attribute accounts
    #   <p>List of accounts impacted by the error.</p>
    #   @return [Array<String>]
    # @!attribute message
    #   <p>Information about the error.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Error type that happened when processing the operation.</p>
    #   @return [String]
    class ShareError < Struct.new(
      :accounts,
      :message,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A top level <code>ProductViewDetail</code> response containing details about the product’s connection.
    #          Service Catalog returns this field for the <code>CreateProduct</code>, <code>UpdateProduct</code>, 
    #          <code>DescribeProductAsAdmin</code>, and <code>SearchProductAsAdmin</code> APIs. 
    #          This response contains the same fields as the <code>ConnectionParameters</code> request, with the 
    #          addition of the <code>LastSync</code> response.</p>
    # @!attribute type
    #   <p>The only supported <code>SourceConnection</code> type is Codestar. </p>
    #   @return [String]
    # @!attribute connection_parameters
    #   <p>The connection details based on the connection <code>Type</code>. </p>
    #   @return [Types::SourceConnectionParameters]
    class SourceConnection < Struct.new(
      :type,
      :connection_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about the configured <code>SourceConnection</code>. </p>
    # @!attribute type
    #   <p>The only supported <code>SourceConnection</code> type is Codestar.</p>
    #   @return [String]
    # @!attribute connection_parameters
    #   <p>The connection details based on the connection <code>Type</code>.</p>
    #   @return [Types::SourceConnectionParameters]
    # @!attribute last_sync
    #   <p>Provides details about the product's connection sync and contains the following sub-fields. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LastSyncTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LastSyncStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LastSyncStatusMessage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LastSuccessfulSyncTime</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LastSuccessfulSyncProvisioningArtifactID</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::LastSync]
    class SourceConnectionDetail < Struct.new(
      :type,
      :connection_parameters,
      :last_sync,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides connection details.</p>
    # @!attribute code_star
    #   <p>Provides <code>ConnectionType</code> details.</p>
    #   @return [Types::CodeStarParameters]
    class SourceConnectionParameters < Struct.new(
      :code_star,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An CloudFormation stack, in a specific account and Region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given Region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status. </p>
    # @!attribute account
    #   <p>The name of the Amazon Web Services account that the stack instance is associated with.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region that the stack instance is associated with.</p>
    #   @return [String]
    # @!attribute stack_instance_status
    #   <p>The status of the stack instance, in terms of its synchronization with its associated stack set. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to true, to delete the stack instance, and then delete the stack manually. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because either            
    #               the associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation,           
    #               or the stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CURRENT</code>: The stack is currently up to date with the stack set.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StackInstance < Struct.new(
      :account,
      :region,
      :stack_instance_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tag. A tag is a key-value pair. Tags are propagated
    #          to the resources created when provisioning a product.</p>
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for this key.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a TagOption.</p>
    # @!attribute key
    #   <p>The TagOption key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The TagOption value.</p>
    #   @return [String]
    # @!attribute active
    #   <p>The TagOption active state.</p>
    #   @return [Boolean]
    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The Amazon Web Services account Id of the owner account that created the TagOption.</p>
    #   @return [String]
    class TagOptionDetail < Struct.new(
      :key,
      :value,
      :active,
      :id,
      :owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation requiring TagOptions failed because the TagOptions migration process has
    #          not been performed for this account. Use the Amazon Web Services Management Console to perform the migration
    #          process before retrying the operation.</p>
    # @!attribute message
    #   @return [String]
    class TagOptionNotMigratedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a TagOption.</p>
    # @!attribute key
    #   <p>The TagOption key.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The TagOption value.</p>
    #   @return [Array<String>]
    class TagOptionSummary < Struct.new(
      :key,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #   @return [String]
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #   @return [String]
    # @!attribute terminate_token
    #   <p>An idempotency token that uniquely identifies the termination request. This token is
    #            only valid during the termination process. After the provisioned product is terminated,
    #            subsequent requests to terminate the same provisioned product always return
    #            <b>ResourceNotFound</b>.</p>
    #   @return [String]
    # @!attribute ignore_errors
    #   <p>If set to true, Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    #   @return [Boolean]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute retain_physical_resources
    #   <p>When this boolean parameter is set to true, the <code>TerminateProvisionedProduct</code> API deletes
    #            the Service Catalog provisioned product. However, it does not remove the CloudFormation
    #            stack, stack set, or the underlying resources of the deleted provisioned product. The
    #            default value is false.</p>
    #   @return [Boolean]
    class TerminateProvisionedProductInput < Struct.new(
      :provisioned_product_name,
      :provisioned_product_id,
      :terminate_token,
      :ignore_errors,
      :accept_language,
      :retain_physical_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of this request.</p>
    #   @return [Types::RecordDetail]
    class TerminateProvisionedProductOutput < Struct.new(
      :record_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          The unique key-value pair 
    #          for a tag 
    #          that identifies provisioned product resources.
    #       </p>
    # @!attribute key
    #   <p>
    #            A unique key 
    #            that's attached 
    #            to a resource.
    #         </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #            A unique value 
    #            that's attached 
    #            to a resource.
    #         </p>
    #   @return [String]
    class UniqueTagResourceIdentifier < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the constraint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the constraint.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be 
    #                     account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class UpdateConstraintInput < Struct.new(
      :accept_language,
      :id,
      :description,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute constraint_detail
    #   <p>Information about the constraint.</p>
    #   @return [Types::ConstraintDetail]
    # @!attribute constraint_parameters
    #   <p>The constraint parameters.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the current request.</p>
    #   @return [String]
    class UpdateConstraintOutput < Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name to use for display purposes.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the portfolio.</p>
    #   @return [String]
    # @!attribute provider_name
    #   <p>The updated name of the portfolio provider.</p>
    #   @return [String]
    # @!attribute add_tags
    #   <p>The tags to add.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute remove_tags
    #   <p>The tags to remove.</p>
    #   @return [Array<String>]
    class UpdatePortfolioInput < Struct.new(
      :accept_language,
      :id,
      :display_name,
      :description,
      :provider_name,
      :add_tags,
      :remove_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_detail
    #   <p>Information about the portfolio.</p>
    #   @return [Types::PortfolioDetail]
    # @!attribute tags
    #   <p>Information about the tags associated with the portfolio.</p>
    #   @return [Array<Types::Tag>]
    class UpdatePortfolioOutput < Struct.new(
      :portfolio_detail,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute portfolio_id
    #   <p>The unique identifier of the portfolio for which the share will be updated.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account Id of the recipient account. This field is required when updating an external account to account type share.</p>
    #   @return [String]
    # @!attribute organization_node
    #   <p>Information about the organization node.</p>
    #   @return [Types::OrganizationNode]
    # @!attribute share_tag_options
    #   <p>Enables or disables <code>TagOptions</code> sharing for the portfolio share. If this field is not provided, the current state of 
    #            TagOptions sharing on the portfolio share will not be modified.</p>
    #   @return [Boolean]
    # @!attribute share_principals
    #   <p>A flag to enables or disables <code>Principals</code> sharing in the portfolio. If this field is not provided,
    #            the current state of the <code>Principals</code> sharing on the portfolio share will not be modified. </p>
    #   @return [Boolean]
    class UpdatePortfolioShareInput < Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node,
      :share_tag_options,
      :share_principals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The token that tracks the status of the <code>UpdatePortfolioShare</code> operation for external account to account or  organizational type sharing.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of <code>UpdatePortfolioShare</code> operation.
    #            You can also obtain the operation status using <code>DescribePortfolioShareStatus</code> API. 
    #         </p>
    #   @return [String]
    class UpdatePortfolioShareOutput < Struct.new(
      :portfolio_share_token,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated product name.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The updated owner of the product.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the product.</p>
    #   @return [String]
    # @!attribute distributor
    #   <p>The updated distributor of the product.</p>
    #   @return [String]
    # @!attribute support_description
    #   <p>The updated support description for the product.</p>
    #   @return [String]
    # @!attribute support_email
    #   <p>The updated support email for the product.</p>
    #   @return [String]
    # @!attribute support_url
    #   <p>The updated support URL for the product.</p>
    #   @return [String]
    # @!attribute add_tags
    #   <p>The tags to add to the product.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute remove_tags
    #   <p>The tags to remove from the product.</p>
    #   @return [Array<String>]
    # @!attribute source_connection
    #   <p>Specifies connection details for the updated product and syncs the product to the connection source
    #            artifact. This automatically manages the product's artifacts based on changes to the source.
    #            The <code>SourceConnection</code> parameter consists of the following sub-fields.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConnectionParamters</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::SourceConnection]
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
      :remove_tags,
      :source_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute product_view_detail
    #   <p>Information about the product view.</p>
    #   @return [Types::ProductViewDetail]
    # @!attribute tags
    #   <p>Information about the tags associated with the product.</p>
    #   @return [Array<Types::Tag>]
    class UpdateProductOutput < Struct.new(
      :product_view_detail,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #   @return [String]
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute product_id
    #   <p>The identifier of the product. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute path_id
    #   <p>The path identifier. This value is optional if the product 
    #            has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #   @return [String]
    # @!attribute provisioning_parameters
    #   <p>The new parameters.</p>
    #   @return [Array<Types::UpdateProvisioningParameter>]
    # @!attribute provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    #   @return [Types::UpdateProvisioningPreferences]
    # @!attribute tags
    #   <p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute update_token
    #   <p>The idempotency token that uniquely identifies the provisioning update request.</p>
    #   @return [String]
    class UpdateProvisionedProductInput < Struct.new(
      :accept_language,
      :provisioned_product_name,
      :provisioned_product_id,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :path_id,
      :path_name,
      :provisioning_parameters,
      :provisioning_preferences,
      :tags,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of the request.</p>
    #   @return [Types::RecordDetail]
    class UpdateProvisionedProductOutput < Struct.new(
      :record_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #   @return [String]
    # @!attribute provisioned_product_properties
    #   <p>A map that contains the provisioned product properties to be updated.</p>
    #            <p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows an
    #            administrator to call <code>UpdateProvisionedProductProperties</code> to update the launch
    #            role that is associated with a provisioned product. This role is used when an end user
    #            calls a provisioning operation such as <code>UpdateProvisionedProduct</code>,
    #               <code>TerminateProvisionedProduct</code>, or
    #               <code>ExecuteProvisionedProductServiceAction</code>. Only a role ARN is valid. A user ARN is invalid. </p>
    #            <p>The <code>OWNER</code> key accepts user ARNs, IAM role ARNs, and STS 
    #            assumed-role ARNs. The owner is the user that has permission to see, update, terminate, and 
    #            execute service actions in the provisioned product.</p>
    #            <p>The administrator can change the owner of a provisioned product to another IAM or STS entity within the 
    #            same account. Both end user owners and administrators can see ownership history of the provisioned 
    #            product using the <code>ListRecordHistory</code> API. The new owner can describe all past records 
    #            for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no 
    #            longer use <code>DescribeRecord</code>, but can still see the product's history from when he was 
    #            an owner using <code>ListRecordHistory</code>.</p>
    #            <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or 
    #            Service Catalog console such as update, terminate, and execute service actions. 
    #            If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through 
    #            API or the Service Catalog console on that provisioned product.</p>
    #   @return [Hash<String, String>]
    # @!attribute idempotency_token
    #   <p>The idempotency token that uniquely identifies the provisioning product update request.</p>
    #   @return [String]
    class UpdateProvisionedProductPropertiesInput < Struct.new(
      :accept_language,
      :provisioned_product_id,
      :provisioned_product_properties,
      :idempotency_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioned_product_id
    #   <p>The provisioned product identifier.</p>
    #   @return [String]
    # @!attribute provisioned_product_properties
    #   <p>A map that contains the properties updated.</p>
    #   @return [Hash<String, String>]
    # @!attribute record_id
    #   <p>The identifier of the record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class UpdateProvisionedProductPropertiesOutput < Struct.new(
      :provisioned_product_id,
      :provisioned_product_properties,
      :record_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #   @return [String]
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the provisioning artifact.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Indicates whether the product version is active.</p>
    #            <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>
    #   @return [Boolean]
    # @!attribute guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #            <p>The <code>DEFAULT</code> value indicates that the product version is active.</p>
    #            <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform
    #             users that the product version is deprecated. Users are able to make updates to a provisioned product 
    #             of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>
    #   @return [String]
    class UpdateProvisioningArtifactInput < Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :name,
      :description,
      :active,
      :guidance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact.</p>
    #   @return [Types::ProvisioningArtifactDetail]
    # @!attribute info
    #   <p>The URL of the CloudFormation template in Amazon S3 or GitHub in JSON format.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the current request.</p>
    #   @return [String]
    class UpdateProvisioningArtifactOutput < Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The parameter key-value pair used to update a provisioned product.</p>
    # @!attribute key
    #   <p>The parameter key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The parameter value.</p>
    #   @return [String]
    # @!attribute use_previous_value
    #   <p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>
    #   @return [Boolean]
    class UpdateProvisioningParameter < Struct.new(
      :key,
      :value,
      :use_previous_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:use_previous_value] = false unless options.key?(:use_previous_value)
        super
      end
    end

    # <p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>
    # @!attribute stack_set_accounts
    #   <p>One or more Amazon Web Services accounts that will have access to the provisioned product.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The Amazon Web Services accounts specified should be within the list of accounts in the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all accounts from the <code>STACKSET</code> constraint.</p>
    #   @return [Array<String>]
    # @!attribute stack_set_regions
    #   <p>One or more Amazon Web Services Regions where the provisioned product will be available.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The specified Regions should be within the list of Regions from the <code>STACKSET</code> constraint. To get the list of Regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all Regions from the <code>STACKSET</code> constraint.</p>
    #   @return [Array<String>]
    # @!attribute stack_set_failure_tolerance_count
    #   <p>The number of accounts, per Region, for which this operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #            <p>The default value is <code>0</code> if no value is specified.</p>
    #   @return [Integer]
    # @!attribute stack_set_failure_tolerance_percentage
    #   <p>The percentage of accounts, per Region, for which this stack operation can fail before Service Catalog stops the operation in that Region. If the operation is stopped in a Region, Service Catalog doesn't attempt the operation in any subsequent Regions.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #   @return [Integer]
    # @!attribute stack_set_max_concurrency_count
    #   <p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #   @return [Integer]
    # @!attribute stack_set_max_concurrency_percentage
    #   <p>The maximum percentage of accounts in which to perform this operation at one time.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, Service Catalog sets the number as <code>1</code> instead.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #   @return [Integer]
    # @!attribute stack_set_operation_type
    #   <p>Determines what action Service Catalog performs to a stack set or a stack instance represented by the provisioned product. The default value is <code>UPDATE</code> if nothing is specified.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <dl>
    #               <dt>CREATE</dt>
    #               <dd>
    #                  <p>Creates a new stack instance in the stack set represented by the provisioned product. In this case, only new stack instances are created based on accounts and Regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.</p>
    #               </dd>
    #               <dt>UPDATE</dt>
    #               <dd>
    #                  <p>Updates the stack set represented by the provisioned product and also its stack instances.</p>
    #               </dd>
    #               <dt>DELETE</dt>
    #               <dd>
    #                  <p>Deletes a stack instance in the stack set represented by the provisioned product.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class UpdateProvisioningPreferences < Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      :stack_set_failure_tolerance_count,
      :stack_set_failure_tolerance_percentage,
      :stack_set_max_concurrency_count,
      :stack_set_max_concurrency_percentage,
      :stack_set_operation_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The self-service action identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The self-service action name.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>A map that defines the self-service action.</p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The self-service action description.</p>
    #   @return [String]
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class UpdateServiceActionInput < Struct.new(
      :id,
      :name,
      :definition,
      :description,
      :accept_language,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_action_detail
    #   <p>Detailed information about the self-service action.</p>
    #   @return [Types::ServiceActionDetail]
    class UpdateServiceActionOutput < Struct.new(
      :service_action_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The updated value.</p>
    #   @return [String]
    # @!attribute active
    #   <p>The updated active state.</p>
    #   @return [Boolean]
    class UpdateTagOptionInput < Struct.new(
      :id,
      :value,
      :active,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_option_detail
    #   <p>Information about the TagOption.</p>
    #   @return [Types::TagOptionDetail]
    class UpdateTagOptionOutput < Struct.new(
      :tag_option_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional information provided by the administrator.</p>
    # @!attribute type
    #   <p>The usage instruction type for the value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The usage instruction value for this type.</p>
    #   @return [String]
    class UsageInstruction < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
