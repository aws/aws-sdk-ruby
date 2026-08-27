# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalog
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#AcceptLanguage", name: "AcceptLanguage", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AcceptPortfolioShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AcceptPortfolioShareInput", name: "AcceptPortfolioShareInput")
    AcceptPortfolioShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AcceptPortfolioShareOutput", name: "AcceptPortfolioShareOutput")
    AccessLevelFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AccessLevelFilter", name: "AccessLevelFilter")
    AccessLevelFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#AccessLevelFilterKey", name: "AccessLevelFilterKey")
    AccessLevelFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#AccessLevelFilterValue", name: "AccessLevelFilterValue")
    AccessStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#AccessStatus", name: "AccessStatus")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#AccountIds", name: "AccountIds")
    AddTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#AddTags", name: "AddTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AllowedValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#AllowedValues", name: "AllowedValues")
    ApproximateCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#ApproximateCount", name: "ApproximateCount", traits: {"smithy.api#default" => 0})
    AssociateBudgetWithResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateBudgetWithResourceInput", name: "AssociateBudgetWithResourceInput")
    AssociateBudgetWithResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateBudgetWithResourceOutput", name: "AssociateBudgetWithResourceOutput")
    AssociatePrincipalWithPortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociatePrincipalWithPortfolioInput", name: "AssociatePrincipalWithPortfolioInput")
    AssociatePrincipalWithPortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociatePrincipalWithPortfolioOutput", name: "AssociatePrincipalWithPortfolioOutput")
    AssociateProductWithPortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateProductWithPortfolioInput", name: "AssociateProductWithPortfolioInput")
    AssociateProductWithPortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateProductWithPortfolioOutput", name: "AssociateProductWithPortfolioOutput")
    AssociateServiceActionWithProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateServiceActionWithProvisioningArtifactInput", name: "AssociateServiceActionWithProvisioningArtifactInput")
    AssociateServiceActionWithProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateServiceActionWithProvisioningArtifactOutput", name: "AssociateServiceActionWithProvisioningArtifactOutput")
    AssociateTagOptionWithResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateTagOptionWithResourceInput", name: "AssociateTagOptionWithResourceInput")
    AssociateTagOptionWithResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#AssociateTagOptionWithResourceOutput", name: "AssociateTagOptionWithResourceOutput")
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#AttributeValue", name: "AttributeValue")
    BatchAssociateServiceActionWithProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#BatchAssociateServiceActionWithProvisioningArtifactInput", name: "BatchAssociateServiceActionWithProvisioningArtifactInput")
    BatchAssociateServiceActionWithProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#BatchAssociateServiceActionWithProvisioningArtifactOutput", name: "BatchAssociateServiceActionWithProvisioningArtifactOutput")
    BatchDisassociateServiceActionFromProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#BatchDisassociateServiceActionFromProvisioningArtifactInput", name: "BatchDisassociateServiceActionFromProvisioningArtifactInput")
    BatchDisassociateServiceActionFromProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#BatchDisassociateServiceActionFromProvisioningArtifactOutput", name: "BatchDisassociateServiceActionFromProvisioningArtifactOutput")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BudgetDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#BudgetDetail", name: "BudgetDetail")
    BudgetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#BudgetName", name: "BudgetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Budgets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#Budgets", name: "Budgets")
    CausingEntity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#CausingEntity", name: "CausingEntity")
    ChangeAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ChangeAction", name: "ChangeAction")
    CloudWatchDashboard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CloudWatchDashboard", name: "CloudWatchDashboard")
    CloudWatchDashboardName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#CloudWatchDashboardName", name: "CloudWatchDashboardName")
    CloudWatchDashboards = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#CloudWatchDashboards", name: "CloudWatchDashboards")
    CodeStarConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#CodeStarConnectionArn", name: "CodeStarConnectionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9][-.a-z0-9]{0,62}:codestar-connections:([a-z0-9][-.a-z0-9]{0,62})?:([a-z0-9][-.a-z0-9]{0,62})?:[^/].{0,1023}$"})
    CodeStarParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CodeStarParameters", name: "CodeStarParameters")
    ConstraintDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ConstraintDescription", name: "ConstraintDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    ConstraintDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ConstraintDetail", name: "ConstraintDetail")
    ConstraintDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ConstraintDetails", name: "ConstraintDetails")
    ConstraintParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ConstraintParameters", name: "ConstraintParameters")
    ConstraintSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ConstraintSummaries", name: "ConstraintSummaries")
    ConstraintSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ConstraintSummary", name: "ConstraintSummary")
    ConstraintType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ConstraintType", name: "ConstraintType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    CopyOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#CopyOption", name: "CopyOption")
    CopyOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#CopyOptions", name: "CopyOptions")
    CopyProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CopyProductInput", name: "CopyProductInput")
    CopyProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CopyProductOutput", name: "CopyProductOutput")
    CopyProductStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#CopyProductStatus", name: "CopyProductStatus")
    CreateConstraintInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateConstraintInput", name: "CreateConstraintInput")
    CreateConstraintOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateConstraintOutput", name: "CreateConstraintOutput")
    CreatePortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreatePortfolioInput", name: "CreatePortfolioInput")
    CreatePortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreatePortfolioOutput", name: "CreatePortfolioOutput")
    CreatePortfolioShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreatePortfolioShareInput", name: "CreatePortfolioShareInput")
    CreatePortfolioShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreatePortfolioShareOutput", name: "CreatePortfolioShareOutput")
    CreateProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateProductInput", name: "CreateProductInput")
    CreateProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateProductOutput", name: "CreateProductOutput")
    CreateProvisionedProductPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateProvisionedProductPlanInput", name: "CreateProvisionedProductPlanInput")
    CreateProvisionedProductPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateProvisionedProductPlanOutput", name: "CreateProvisionedProductPlanOutput")
    CreateProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateProvisioningArtifactInput", name: "CreateProvisioningArtifactInput")
    CreateProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateProvisioningArtifactOutput", name: "CreateProvisioningArtifactOutput")
    CreateServiceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateServiceActionInput", name: "CreateServiceActionInput")
    CreateServiceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateServiceActionOutput", name: "CreateServiceActionOutput")
    CreateTagOptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateTagOptionInput", name: "CreateTagOptionInput")
    CreateTagOptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#CreateTagOptionOutput", name: "CreateTagOptionOutput")
    CreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#CreatedTime", name: "CreatedTime")
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#CreationTime", name: "CreationTime")
    DefaultValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#DefaultValue", name: "DefaultValue")
    DeleteConstraintInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteConstraintInput", name: "DeleteConstraintInput")
    DeleteConstraintOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteConstraintOutput", name: "DeleteConstraintOutput")
    DeletePortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeletePortfolioInput", name: "DeletePortfolioInput")
    DeletePortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeletePortfolioOutput", name: "DeletePortfolioOutput")
    DeletePortfolioShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeletePortfolioShareInput", name: "DeletePortfolioShareInput")
    DeletePortfolioShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeletePortfolioShareOutput", name: "DeletePortfolioShareOutput")
    DeleteProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteProductInput", name: "DeleteProductInput")
    DeleteProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteProductOutput", name: "DeleteProductOutput")
    DeleteProvisionedProductPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteProvisionedProductPlanInput", name: "DeleteProvisionedProductPlanInput")
    DeleteProvisionedProductPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteProvisionedProductPlanOutput", name: "DeleteProvisionedProductPlanOutput")
    DeleteProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteProvisioningArtifactInput", name: "DeleteProvisioningArtifactInput")
    DeleteProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteProvisioningArtifactOutput", name: "DeleteProvisioningArtifactOutput")
    DeleteServiceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteServiceActionInput", name: "DeleteServiceActionInput")
    DeleteServiceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteServiceActionOutput", name: "DeleteServiceActionOutput")
    DeleteTagOptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteTagOptionInput", name: "DeleteTagOptionInput")
    DeleteTagOptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DeleteTagOptionOutput", name: "DeleteTagOptionOutput")
    DescribeConstraintInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeConstraintInput", name: "DescribeConstraintInput")
    DescribeConstraintOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeConstraintOutput", name: "DescribeConstraintOutput")
    DescribeCopyProductStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeCopyProductStatusInput", name: "DescribeCopyProductStatusInput")
    DescribeCopyProductStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeCopyProductStatusOutput", name: "DescribeCopyProductStatusOutput")
    DescribePortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioInput", name: "DescribePortfolioInput")
    DescribePortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioOutput", name: "DescribePortfolioOutput")
    DescribePortfolioShareStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioShareStatusInput", name: "DescribePortfolioShareStatusInput")
    DescribePortfolioShareStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioShareStatusOutput", name: "DescribePortfolioShareStatusOutput")
    DescribePortfolioShareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioShareType", name: "DescribePortfolioShareType")
    DescribePortfolioSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioSharesInput", name: "DescribePortfolioSharesInput")
    DescribePortfolioSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribePortfolioSharesOutput", name: "DescribePortfolioSharesOutput")
    DescribeProductAsAdminInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProductAsAdminInput", name: "DescribeProductAsAdminInput")
    DescribeProductAsAdminOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProductAsAdminOutput", name: "DescribeProductAsAdminOutput")
    DescribeProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProductInput", name: "DescribeProductInput")
    DescribeProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProductOutput", name: "DescribeProductOutput")
    DescribeProductViewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProductViewInput", name: "DescribeProductViewInput")
    DescribeProductViewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProductViewOutput", name: "DescribeProductViewOutput")
    DescribeProvisionedProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisionedProductInput", name: "DescribeProvisionedProductInput")
    DescribeProvisionedProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisionedProductOutput", name: "DescribeProvisionedProductOutput")
    DescribeProvisionedProductPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisionedProductPlanInput", name: "DescribeProvisionedProductPlanInput")
    DescribeProvisionedProductPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisionedProductPlanOutput", name: "DescribeProvisionedProductPlanOutput")
    DescribeProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisioningArtifactInput", name: "DescribeProvisioningArtifactInput")
    DescribeProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisioningArtifactOutput", name: "DescribeProvisioningArtifactOutput")
    DescribeProvisioningParametersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisioningParametersInput", name: "DescribeProvisioningParametersInput")
    DescribeProvisioningParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeProvisioningParametersOutput", name: "DescribeProvisioningParametersOutput")
    DescribeRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeRecordInput", name: "DescribeRecordInput")
    DescribeRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeRecordOutput", name: "DescribeRecordOutput")
    DescribeServiceActionExecutionParametersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeServiceActionExecutionParametersInput", name: "DescribeServiceActionExecutionParametersInput")
    DescribeServiceActionExecutionParametersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeServiceActionExecutionParametersOutput", name: "DescribeServiceActionExecutionParametersOutput")
    DescribeServiceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeServiceActionInput", name: "DescribeServiceActionInput")
    DescribeServiceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeServiceActionOutput", name: "DescribeServiceActionOutput")
    DescribeTagOptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeTagOptionInput", name: "DescribeTagOptionInput")
    DescribeTagOptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DescribeTagOptionOutput", name: "DescribeTagOptionOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Description", name: "Description")
    DisableAWSOrganizationsAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisableAWSOrganizationsAccessInput", name: "DisableAWSOrganizationsAccessInput")
    DisableAWSOrganizationsAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisableAWSOrganizationsAccessOutput", name: "DisableAWSOrganizationsAccessOutput")
    DisableTemplateValidation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#DisableTemplateValidation", name: "DisableTemplateValidation", traits: {"smithy.api#default" => false})
    DisassociateBudgetFromResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateBudgetFromResourceInput", name: "DisassociateBudgetFromResourceInput")
    DisassociateBudgetFromResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateBudgetFromResourceOutput", name: "DisassociateBudgetFromResourceOutput")
    DisassociatePrincipalFromPortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociatePrincipalFromPortfolioInput", name: "DisassociatePrincipalFromPortfolioInput")
    DisassociatePrincipalFromPortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociatePrincipalFromPortfolioOutput", name: "DisassociatePrincipalFromPortfolioOutput")
    DisassociateProductFromPortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateProductFromPortfolioInput", name: "DisassociateProductFromPortfolioInput")
    DisassociateProductFromPortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateProductFromPortfolioOutput", name: "DisassociateProductFromPortfolioOutput")
    DisassociateServiceActionFromProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateServiceActionFromProvisioningArtifactInput", name: "DisassociateServiceActionFromProvisioningArtifactInput")
    DisassociateServiceActionFromProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateServiceActionFromProvisioningArtifactOutput", name: "DisassociateServiceActionFromProvisioningArtifactOutput")
    DisassociateTagOptionFromResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateTagOptionFromResourceInput", name: "DisassociateTagOptionFromResourceInput")
    DisassociateTagOptionFromResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DisassociateTagOptionFromResourceOutput", name: "DisassociateTagOptionFromResourceOutput")
    DuplicateResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#DuplicateResourceException", name: "DuplicateResourceException", traits: {"smithy.api#error" => "client"})
    EnableAWSOrganizationsAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#EnableAWSOrganizationsAccessInput", name: "EnableAWSOrganizationsAccessInput")
    EnableAWSOrganizationsAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#EnableAWSOrganizationsAccessOutput", name: "EnableAWSOrganizationsAccessOutput")
    EngineWorkflowFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#EngineWorkflowFailureReason", name: "EngineWorkflowFailureReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*$"})
    EngineWorkflowResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#EngineWorkflowResourceIdentifier", name: "EngineWorkflowResourceIdentifier")
    EngineWorkflowStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#EngineWorkflowStatus", name: "EngineWorkflowStatus")
    EngineWorkflowToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#EngineWorkflowToken", name: "EngineWorkflowToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 20000}, "smithy.api#pattern" => "^[0-9A-Za-z+\\/=]+$"})
    Error = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Error", name: "Error")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ErrorCode", name: "ErrorCode")
    ErrorDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ErrorDescription", name: "ErrorDescription")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    EvaluationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#EvaluationType", name: "EvaluationType")
    ExecuteProvisionedProductPlanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ExecuteProvisionedProductPlanInput", name: "ExecuteProvisionedProductPlanInput")
    ExecuteProvisionedProductPlanOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ExecuteProvisionedProductPlanOutput", name: "ExecuteProvisionedProductPlanOutput")
    ExecuteProvisionedProductServiceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ExecuteProvisionedProductServiceActionInput", name: "ExecuteProvisionedProductServiceActionInput")
    ExecuteProvisionedProductServiceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ExecuteProvisionedProductServiceActionOutput", name: "ExecuteProvisionedProductServiceActionOutput")
    ExecutionParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameter", name: "ExecutionParameter")
    ExecutionParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameterKey", name: "ExecutionParameterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ExecutionParameterMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameterMap", name: "ExecutionParameterMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ExecutionParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameterType", name: "ExecutionParameterType", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ExecutionParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameterValue", name: "ExecutionParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}})
    ExecutionParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameterValueList", name: "ExecutionParameterValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ExecutionParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ExecutionParameters", name: "ExecutionParameters")
    FailedServiceActionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#FailedServiceActionAssociation", name: "FailedServiceActionAssociation")
    FailedServiceActionAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#FailedServiceActionAssociations", name: "FailedServiceActionAssociations", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    GetAWSOrganizationsAccessStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#GetAWSOrganizationsAccessStatusInput", name: "GetAWSOrganizationsAccessStatusInput")
    GetAWSOrganizationsAccessStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#GetAWSOrganizationsAccessStatusOutput", name: "GetAWSOrganizationsAccessStatusOutput")
    GetProvisionedProductOutputsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#GetProvisionedProductOutputsInput", name: "GetProvisionedProductOutputsInput")
    GetProvisionedProductOutputsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#GetProvisionedProductOutputsOutput", name: "GetProvisionedProductOutputsOutput")
    HasDefaultPath = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#HasDefaultPath", name: "HasDefaultPath", traits: {"smithy.api#default" => false})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-]*$"})
    IdempotencyToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#IdempotencyToken", name: "IdempotencyToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    IgnoreErrors = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#IgnoreErrors", name: "IgnoreErrors", traits: {"smithy.api#default" => false})
    ImportAsProvisionedProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ImportAsProvisionedProductInput", name: "ImportAsProvisionedProductInput")
    ImportAsProvisionedProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ImportAsProvisionedProductOutput", name: "ImportAsProvisionedProductOutput")
    InstructionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#InstructionType", name: "InstructionType")
    InstructionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#InstructionValue", name: "InstructionValue")
    InvalidParametersException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#InvalidParametersException", name: "InvalidParametersException", traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#InvalidStateException", name: "InvalidStateException", traits: {"smithy.api#error" => "client"})
    LastRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#LastRequestId", name: "LastRequestId")
    LastSuccessfulSyncTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#LastSuccessfulSyncTime", name: "LastSuccessfulSyncTime")
    LastSync = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#LastSync", name: "LastSync")
    LastSyncStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#LastSyncStatus", name: "LastSyncStatus")
    LastSyncStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#LastSyncStatusMessage", name: "LastSyncStatusMessage")
    LastSyncTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#LastSyncTime", name: "LastSyncTime")
    LaunchPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#LaunchPath", name: "LaunchPath")
    LaunchPathSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#LaunchPathSummaries", name: "LaunchPathSummaries")
    LaunchPathSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#LaunchPathSummary", name: "LaunchPathSummary")
    LaunchPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#LaunchPaths", name: "LaunchPaths")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAcceptedPortfolioSharesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListAcceptedPortfolioSharesInput", name: "ListAcceptedPortfolioSharesInput")
    ListAcceptedPortfolioSharesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListAcceptedPortfolioSharesOutput", name: "ListAcceptedPortfolioSharesOutput")
    ListBudgetsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListBudgetsForResourceInput", name: "ListBudgetsForResourceInput")
    ListBudgetsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListBudgetsForResourceOutput", name: "ListBudgetsForResourceOutput")
    ListConstraintsForPortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListConstraintsForPortfolioInput", name: "ListConstraintsForPortfolioInput")
    ListConstraintsForPortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListConstraintsForPortfolioOutput", name: "ListConstraintsForPortfolioOutput")
    ListLaunchPathsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListLaunchPathsInput", name: "ListLaunchPathsInput")
    ListLaunchPathsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListLaunchPathsOutput", name: "ListLaunchPathsOutput")
    ListOrganizationPortfolioAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListOrganizationPortfolioAccessInput", name: "ListOrganizationPortfolioAccessInput")
    ListOrganizationPortfolioAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListOrganizationPortfolioAccessOutput", name: "ListOrganizationPortfolioAccessOutput")
    ListPortfolioAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPortfolioAccessInput", name: "ListPortfolioAccessInput")
    ListPortfolioAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPortfolioAccessOutput", name: "ListPortfolioAccessOutput")
    ListPortfoliosForProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPortfoliosForProductInput", name: "ListPortfoliosForProductInput")
    ListPortfoliosForProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPortfoliosForProductOutput", name: "ListPortfoliosForProductOutput")
    ListPortfoliosInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPortfoliosInput", name: "ListPortfoliosInput")
    ListPortfoliosOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPortfoliosOutput", name: "ListPortfoliosOutput")
    ListPrincipalsForPortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPrincipalsForPortfolioInput", name: "ListPrincipalsForPortfolioInput")
    ListPrincipalsForPortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListPrincipalsForPortfolioOutput", name: "ListPrincipalsForPortfolioOutput")
    ListProvisionedProductPlansInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListProvisionedProductPlansInput", name: "ListProvisionedProductPlansInput")
    ListProvisionedProductPlansOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListProvisionedProductPlansOutput", name: "ListProvisionedProductPlansOutput")
    ListProvisioningArtifactsForServiceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListProvisioningArtifactsForServiceActionInput", name: "ListProvisioningArtifactsForServiceActionInput")
    ListProvisioningArtifactsForServiceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListProvisioningArtifactsForServiceActionOutput", name: "ListProvisioningArtifactsForServiceActionOutput")
    ListProvisioningArtifactsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListProvisioningArtifactsInput", name: "ListProvisioningArtifactsInput")
    ListProvisioningArtifactsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListProvisioningArtifactsOutput", name: "ListProvisioningArtifactsOutput")
    ListRecordHistoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListRecordHistoryInput", name: "ListRecordHistoryInput")
    ListRecordHistoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListRecordHistoryOutput", name: "ListRecordHistoryOutput")
    ListRecordHistorySearchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListRecordHistorySearchFilter", name: "ListRecordHistorySearchFilter")
    ListResourcesForTagOptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListResourcesForTagOptionInput", name: "ListResourcesForTagOptionInput")
    ListResourcesForTagOptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListResourcesForTagOptionOutput", name: "ListResourcesForTagOptionOutput")
    ListServiceActionsForProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListServiceActionsForProvisioningArtifactInput", name: "ListServiceActionsForProvisioningArtifactInput")
    ListServiceActionsForProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListServiceActionsForProvisioningArtifactOutput", name: "ListServiceActionsForProvisioningArtifactOutput")
    ListServiceActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListServiceActionsInput", name: "ListServiceActionsInput")
    ListServiceActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListServiceActionsOutput", name: "ListServiceActionsOutput")
    ListStackInstancesForProvisionedProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListStackInstancesForProvisionedProductInput", name: "ListStackInstancesForProvisionedProductInput")
    ListStackInstancesForProvisionedProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListStackInstancesForProvisionedProductOutput", name: "ListStackInstancesForProvisionedProductOutput")
    ListTagOptionsFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListTagOptionsFilters", name: "ListTagOptionsFilters")
    ListTagOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListTagOptionsInput", name: "ListTagOptionsInput")
    ListTagOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ListTagOptionsOutput", name: "ListTagOptionsOutput")
    LogicalResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#LogicalResourceId", name: "LogicalResourceId")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Message", name: "Message")
    Namespaces = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#Namespaces", name: "Namespaces")
    NoEcho = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#NoEcho", name: "NoEcho", traits: {"smithy.api#default" => false})
    NotificationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#NotificationArn", name: "NotificationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    NotificationArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#NotificationArns", name: "NotificationArns", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    NotifyProvisionProductEngineWorkflowResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#NotifyProvisionProductEngineWorkflowResultInput", name: "NotifyProvisionProductEngineWorkflowResultInput")
    NotifyProvisionProductEngineWorkflowResultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#NotifyProvisionProductEngineWorkflowResultOutput", name: "NotifyProvisionProductEngineWorkflowResultOutput")
    NotifyTerminateProvisionedProductEngineWorkflowResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#NotifyTerminateProvisionedProductEngineWorkflowResultInput", name: "NotifyTerminateProvisionedProductEngineWorkflowResultInput")
    NotifyTerminateProvisionedProductEngineWorkflowResultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#NotifyTerminateProvisionedProductEngineWorkflowResultOutput", name: "NotifyTerminateProvisionedProductEngineWorkflowResultOutput")
    NotifyUpdateProvisionedProductEngineWorkflowResultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#NotifyUpdateProvisionedProductEngineWorkflowResultInput", name: "NotifyUpdateProvisionedProductEngineWorkflowResultInput")
    NotifyUpdateProvisionedProductEngineWorkflowResultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#NotifyUpdateProvisionedProductEngineWorkflowResultOutput", name: "NotifyUpdateProvisionedProductEngineWorkflowResultOutput")
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#NullableBoolean", name: "NullableBoolean")
    OperationNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#OperationNotSupportedException", name: "OperationNotSupportedException", traits: {"smithy.api#error" => "client"})
    OrganizationNode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#OrganizationNode", name: "OrganizationNode")
    OrganizationNodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#OrganizationNodeType", name: "OrganizationNodeType")
    OrganizationNodeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#OrganizationNodeValue", name: "OrganizationNodeValue", traits: {"smithy.api#pattern" => "^(^[0-9]{12}$)|(^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32})|(^o-[a-z0-9]{10,32}$)|(^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$)|(^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$)$"})
    OrganizationNodes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#OrganizationNodes", name: "OrganizationNodes")
    OutputDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#OutputDescription", name: "OutputDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    OutputKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#OutputKey", name: "OutputKey")
    OutputKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#OutputKeys", name: "OutputKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    OutputValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#OutputValue", name: "OutputValue")
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Owner", name: "Owner")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#PageSize", name: "PageSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 20}})
    PageSizeMax100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#PageSizeMax100", name: "PageSizeMax100", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PageToken", name: "PageToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2024}, "smithy.api#pattern" => "^[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*$"})
    ParameterConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ParameterConstraints", name: "ParameterConstraints")
    ParameterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ParameterKey", name: "ParameterKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ParameterType", name: "ParameterType")
    ParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ParameterValue", name: "ParameterValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    PhysicalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PhysicalId", name: "PhysicalId")
    PhysicalResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PhysicalResourceId", name: "PhysicalResourceId")
    PlanResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PlanResourceType", name: "PlanResourceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    PortfolioDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PortfolioDescription", name: "PortfolioDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    PortfolioDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#PortfolioDetail", name: "PortfolioDetail")
    PortfolioDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#PortfolioDetails", name: "PortfolioDetails")
    PortfolioDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PortfolioDisplayName", name: "PortfolioDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PortfolioName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PortfolioName", name: "PortfolioName")
    PortfolioShareDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#PortfolioShareDetail", name: "PortfolioShareDetail")
    PortfolioShareDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#PortfolioShareDetails", name: "PortfolioShareDetails")
    PortfolioShareType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#PortfolioShareType", name: "PortfolioShareType")
    Principal = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#Principal", name: "Principal")
    PrincipalARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PrincipalARN", name: "PrincipalARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    PrincipalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#PrincipalType", name: "PrincipalType")
    Principals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#Principals", name: "Principals")
    ProductArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductArn", name: "ProductArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ProductSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProductSource", name: "ProductSource")
    ProductType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProductType", name: "ProductType", traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewAggregationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductViewAggregationType", name: "ProductViewAggregationType")
    ProductViewAggregationValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProductViewAggregationValue", name: "ProductViewAggregationValue")
    ProductViewAggregationValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProductViewAggregationValues", name: "ProductViewAggregationValues")
    ProductViewAggregations = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ProductViewAggregations", name: "ProductViewAggregations")
    ProductViewDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProductViewDetail", name: "ProductViewDetail")
    ProductViewDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProductViewDetails", name: "ProductViewDetails")
    ProductViewDistributor = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductViewDistributor", name: "ProductViewDistributor")
    ProductViewFilterBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProductViewFilterBy", name: "ProductViewFilterBy")
    ProductViewFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductViewFilterValue", name: "ProductViewFilterValue")
    ProductViewFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProductViewFilterValues", name: "ProductViewFilterValues")
    ProductViewFilters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ProductViewFilters", name: "ProductViewFilters")
    ProductViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductViewName", name: "ProductViewName", traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductViewOwner", name: "ProductViewOwner", traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewShortDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProductViewShortDescription", name: "ProductViewShortDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    ProductViewSortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProductViewSortBy", name: "ProductViewSortBy")
    ProductViewSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProductViewSummaries", name: "ProductViewSummaries")
    ProductViewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProductViewSummary", name: "ProductViewSummary")
    PropertyKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#PropertyKey", name: "PropertyKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PropertyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PropertyName", name: "PropertyName")
    PropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#PropertyValue", name: "PropertyValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ProviderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProviderName", name: "ProviderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ProvisionProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisionProductInput", name: "ProvisionProductInput")
    ProvisionProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisionProductOutput", name: "ProvisionProductOutput")
    ProvisionedProductAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductAttribute", name: "ProvisionedProductAttribute")
    ProvisionedProductAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductAttributes", name: "ProvisionedProductAttributes")
    ProvisionedProductDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductDetail", name: "ProvisionedProductDetail")
    ProvisionedProductDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductDetails", name: "ProvisionedProductDetails")
    ProvisionedProductFilters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductFilters", name: "ProvisionedProductFilters")
    ProvisionedProductId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductId", name: "ProvisionedProductId")
    ProvisionedProductName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductName", name: "ProvisionedProductName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9._-]*$"})
    ProvisionedProductNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductNameOrArn", name: "ProvisionedProductNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9._-]{0,127}|arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$"})
    ProvisionedProductPlanDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductPlanDetails", name: "ProvisionedProductPlanDetails")
    ProvisionedProductPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductPlanName", name: "ProvisionedProductPlanName")
    ProvisionedProductPlanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductPlanStatus", name: "ProvisionedProductPlanStatus")
    ProvisionedProductPlanSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductPlanSummary", name: "ProvisionedProductPlanSummary")
    ProvisionedProductPlanType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductPlanType", name: "ProvisionedProductPlanType")
    ProvisionedProductPlans = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductPlans", name: "ProvisionedProductPlans")
    ProvisionedProductProperties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductProperties", name: "ProvisionedProductProperties", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProvisionedProductStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductStatus", name: "ProvisionedProductStatus")
    ProvisionedProductStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductStatusMessage", name: "ProvisionedProductStatusMessage")
    ProvisionedProductType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductType", name: "ProvisionedProductType")
    ProvisionedProductViewFilterBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductViewFilterBy", name: "ProvisionedProductViewFilterBy")
    ProvisionedProductViewFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductViewFilterValue", name: "ProvisionedProductViewFilterValue")
    ProvisionedProductViewFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisionedProductViewFilterValues", name: "ProvisionedProductViewFilterValues")
    ProvisioningArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifact", name: "ProvisioningArtifact")
    ProvisioningArtifactActive = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactActive", name: "ProvisioningArtifactActive")
    ProvisioningArtifactCreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactCreatedTime", name: "ProvisioningArtifactCreatedTime")
    ProvisioningArtifactDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactDescription", name: "ProvisioningArtifactDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    ProvisioningArtifactDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactDetail", name: "ProvisioningArtifactDetail")
    ProvisioningArtifactDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactDetails", name: "ProvisioningArtifactDetails")
    ProvisioningArtifactGuidance = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactGuidance", name: "ProvisioningArtifactGuidance")
    ProvisioningArtifactInfo = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactInfo", name: "ProvisioningArtifactInfo", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProvisioningArtifactInfoKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactInfoKey", name: "ProvisioningArtifactInfoKey")
    ProvisioningArtifactInfoValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactInfoValue", name: "ProvisioningArtifactInfoValue")
    ProvisioningArtifactName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactName", name: "ProvisioningArtifactName", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    ProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactOutput", name: "ProvisioningArtifactOutput")
    ProvisioningArtifactOutputKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactOutputKey", name: "ProvisioningArtifactOutputKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9]*$"})
    ProvisioningArtifactOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactOutputs", name: "ProvisioningArtifactOutputs", traits: {"smithy.api#length" => {"min" => 0, "max" => 60}})
    ProvisioningArtifactParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactParameter", name: "ProvisioningArtifactParameter")
    ProvisioningArtifactParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactParameters", name: "ProvisioningArtifactParameters")
    ProvisioningArtifactPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactPreferences", name: "ProvisioningArtifactPreferences")
    ProvisioningArtifactProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactProperties", name: "ProvisioningArtifactProperties")
    ProvisioningArtifactPropertyName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactPropertyName", name: "ProvisioningArtifactPropertyName")
    ProvisioningArtifactPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactPropertyValue", name: "ProvisioningArtifactPropertyValue")
    ProvisioningArtifactSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactSummaries", name: "ProvisioningArtifactSummaries")
    ProvisioningArtifactSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactSummary", name: "ProvisioningArtifactSummary")
    ProvisioningArtifactType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactType", name: "ProvisioningArtifactType")
    ProvisioningArtifactView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactView", name: "ProvisioningArtifactView")
    ProvisioningArtifactViews = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifactViews", name: "ProvisioningArtifactViews")
    ProvisioningArtifacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningArtifacts", name: "ProvisioningArtifacts")
    ProvisioningParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningParameter", name: "ProvisioningParameter")
    ProvisioningParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ProvisioningParameters", name: "ProvisioningParameters")
    ProvisioningPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ProvisioningPreferences", name: "ProvisioningPreferences")
    RecordDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#RecordDetail", name: "RecordDetail")
    RecordDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#RecordDetails", name: "RecordDetails")
    RecordError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#RecordError", name: "RecordError")
    RecordErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#RecordErrors", name: "RecordErrors")
    RecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#RecordOutput", name: "RecordOutput")
    RecordOutputs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#RecordOutputs", name: "RecordOutputs")
    RecordStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#RecordStatus", name: "RecordStatus")
    RecordTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#RecordTag", name: "RecordTag")
    RecordTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#RecordTagKey", name: "RecordTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    RecordTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#RecordTagValue", name: "RecordTagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"})
    RecordTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#RecordTags", name: "RecordTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    RecordType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#RecordType", name: "RecordType")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Region", name: "Region")
    RejectPortfolioShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#RejectPortfolioShareInput", name: "RejectPortfolioShareInput")
    RejectPortfolioShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#RejectPortfolioShareOutput", name: "RejectPortfolioShareOutput")
    Replacement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#Replacement", name: "Replacement")
    Repository = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#Repository", name: "Repository", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RepositoryArtifactPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#RepositoryArtifactPath", name: "RepositoryArtifactPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    RepositoryBranch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#RepositoryBranch", name: "RepositoryBranch", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    RequiresRecreation = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#RequiresRecreation", name: "RequiresRecreation")
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}})
    ResourceAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ResourceAttribute", name: "ResourceAttribute")
    ResourceChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ResourceChange", name: "ResourceChange")
    ResourceChangeDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ResourceChangeDetail", name: "ResourceChangeDetail")
    ResourceChangeDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ResourceChangeDetails", name: "ResourceChangeDetails")
    ResourceChanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ResourceChanges", name: "ResourceChanges")
    ResourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ResourceDetail", name: "ResourceDetail")
    ResourceDetailARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceDetailARN", name: "ResourceDetailARN")
    ResourceDetailCreatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#ResourceDetailCreatedTime", name: "ResourceDetailCreatedTime")
    ResourceDetailDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceDetailDescription", name: "ResourceDetailDescription")
    ResourceDetailId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceDetailId", name: "ResourceDetailId")
    ResourceDetailName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceDetailName", name: "ResourceDetailName")
    ResourceDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ResourceDetails", name: "ResourceDetails")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceId", name: "ResourceId")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceTargetDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ResourceTargetDefinition", name: "ResourceTargetDefinition")
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ResourceType", name: "ResourceType")
    RetainPhysicalResources = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#RetainPhysicalResources", name: "RetainPhysicalResources", traits: {"smithy.api#default" => false})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1224}, "smithy.api#pattern" => "^arn:[a-z0-9-\\.]{1,63}:iam::[a-z0-9-\\.]{0,63}:role\\/.{0,1023}$"})
    ScanProvisionedProductsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ScanProvisionedProductsInput", name: "ScanProvisionedProductsInput")
    ScanProvisionedProductsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ScanProvisionedProductsOutput", name: "ScanProvisionedProductsOutput")
    Scope = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#Scope", name: "Scope")
    SearchFilterKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SearchFilterKey", name: "SearchFilterKey")
    SearchFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SearchFilterValue", name: "SearchFilterValue")
    SearchProductsAsAdminInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SearchProductsAsAdminInput", name: "SearchProductsAsAdminInput")
    SearchProductsAsAdminOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SearchProductsAsAdminOutput", name: "SearchProductsAsAdminOutput")
    SearchProductsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SearchProductsInput", name: "SearchProductsInput")
    SearchProductsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SearchProductsOutput", name: "SearchProductsOutput")
    SearchProvisionedProductsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SearchProvisionedProductsInput", name: "SearchProvisionedProductsInput")
    SearchProvisionedProductsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SearchProvisionedProductsOutput", name: "SearchProvisionedProductsOutput")
    SearchProvisionedProductsPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#SearchProvisionedProductsPageSize", name: "SearchProvisionedProductsPageSize", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    ServiceActionAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ServiceActionAssociation", name: "ServiceActionAssociation")
    ServiceActionAssociationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ServiceActionAssociationErrorCode", name: "ServiceActionAssociationErrorCode")
    ServiceActionAssociationErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ServiceActionAssociationErrorMessage", name: "ServiceActionAssociationErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceActionAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ServiceActionAssociations", name: "ServiceActionAssociations", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ServiceActionDefinitionKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ServiceActionDefinitionKey", name: "ServiceActionDefinitionKey")
    ServiceActionDefinitionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#ServiceActionDefinitionMap", name: "ServiceActionDefinitionMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ServiceActionDefinitionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ServiceActionDefinitionType", name: "ServiceActionDefinitionType")
    ServiceActionDefinitionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ServiceActionDefinitionValue", name: "ServiceActionDefinitionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ServiceActionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ServiceActionDescription", name: "ServiceActionDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ServiceActionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ServiceActionDetail", name: "ServiceActionDetail")
    ServiceActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#ServiceActionName", name: "ServiceActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\-.]*$"})
    ServiceActionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ServiceActionSummaries", name: "ServiceActionSummaries")
    ServiceActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ServiceActionSummary", name: "ServiceActionSummary")
    ShareDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ShareDetails", name: "ShareDetails")
    ShareError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#ShareError", name: "ShareError")
    ShareErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#ShareErrors", name: "ShareErrors")
    ShareStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#ShareStatus", name: "ShareStatus")
    SortField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SortField", name: "SortField")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#SortOrder", name: "SortOrder")
    SourceConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SourceConnection", name: "SourceConnection")
    SourceConnectionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SourceConnectionDetail", name: "SourceConnectionDetail")
    SourceConnectionParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#SourceConnectionParameters", name: "SourceConnectionParameters")
    SourceProvisioningArtifactProperties = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#SourceProvisioningArtifactProperties", name: "SourceProvisioningArtifactProperties")
    SourceProvisioningArtifactPropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicecatalog#SourceProvisioningArtifactPropertiesMap", name: "SourceProvisioningArtifactPropertiesMap")
    SourceRevision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SourceRevision", name: "SourceRevision", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#SourceType", name: "SourceType")
    StackInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#StackInstance", name: "StackInstance")
    StackInstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#StackInstanceStatus", name: "StackInstanceStatus")
    StackInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#StackInstances", name: "StackInstances")
    StackSetAccounts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#StackSetAccounts", name: "StackSetAccounts")
    StackSetFailureToleranceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#StackSetFailureToleranceCount", name: "StackSetFailureToleranceCount", traits: {"smithy.api#range" => {"min" => 0}})
    StackSetFailureTolerancePercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#StackSetFailureTolerancePercentage", name: "StackSetFailureTolerancePercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    StackSetMaxConcurrencyCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#StackSetMaxConcurrencyCount", name: "StackSetMaxConcurrencyCount", traits: {"smithy.api#range" => {"min" => 1}})
    StackSetMaxConcurrencyPercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#StackSetMaxConcurrencyPercentage", name: "StackSetMaxConcurrencyPercentage", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    StackSetOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#StackSetOperationType", name: "StackSetOperationType")
    StackSetRegions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#StackSetRegions", name: "StackSetRegions")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicecatalog#Status", name: "Status")
    StatusDetail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#StatusDetail", name: "StatusDetail")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#StatusMessage", name: "StatusMessage", traits: {"smithy.api#pattern" => "^[\\u0009\\u000a\\u000d\\u0020-\\uD7FF\\uE000-\\uFFFD]*$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#String", name: "String")
    SuccessfulShares = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#SuccessfulShares", name: "SuccessfulShares")
    SupportDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SupportDescription", name: "SupportDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 8191}})
    SupportEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SupportEmail", name: "SupportEmail", traits: {"smithy.api#length" => {"min" => 0, "max" => 254}})
    SupportUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#SupportUrl", name: "SupportUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 2083}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#TagKeys", name: "TagKeys")
    TagOptionActive = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#TagOptionActive", name: "TagOptionActive")
    TagOptionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#TagOptionDetail", name: "TagOptionDetail")
    TagOptionDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#TagOptionDetails", name: "TagOptionDetails")
    TagOptionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#TagOptionId", name: "TagOptionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TagOptionKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#TagOptionKey", name: "TagOptionKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagOptionNotMigratedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#TagOptionNotMigratedException", name: "TagOptionNotMigratedException", traits: {"smithy.api#error" => "client"})
    TagOptionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#TagOptionSummaries", name: "TagOptionSummaries")
    TagOptionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#TagOptionSummary", name: "TagOptionSummary")
    TagOptionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#TagOptionValue", name: "TagOptionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagOptionValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#TagOptionValues", name: "TagOptionValues")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TerminateProvisionedProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#TerminateProvisionedProductInput", name: "TerminateProvisionedProductInput")
    TerminateProvisionedProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#TerminateProvisionedProductOutput", name: "TerminateProvisionedProductOutput")
    TotalResultsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicecatalog#TotalResultsCount", name: "TotalResultsCount", traits: {"smithy.api#default" => 0})
    UniqueTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#UniqueTagKey", name: "UniqueTagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$"})
    UniqueTagResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UniqueTagResourceIdentifier", name: "UniqueTagResourceIdentifier")
    UniqueTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#UniqueTagValue", name: "UniqueTagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@]*)$"})
    UpdateConstraintInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateConstraintInput", name: "UpdateConstraintInput")
    UpdateConstraintOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateConstraintOutput", name: "UpdateConstraintOutput")
    UpdatePortfolioInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdatePortfolioInput", name: "UpdatePortfolioInput")
    UpdatePortfolioOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdatePortfolioOutput", name: "UpdatePortfolioOutput")
    UpdatePortfolioShareInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdatePortfolioShareInput", name: "UpdatePortfolioShareInput")
    UpdatePortfolioShareOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdatePortfolioShareOutput", name: "UpdatePortfolioShareOutput")
    UpdateProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProductInput", name: "UpdateProductInput")
    UpdateProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProductOutput", name: "UpdateProductOutput")
    UpdateProvisionedProductInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisionedProductInput", name: "UpdateProvisionedProductInput")
    UpdateProvisionedProductOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisionedProductOutput", name: "UpdateProvisionedProductOutput")
    UpdateProvisionedProductPropertiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisionedProductPropertiesInput", name: "UpdateProvisionedProductPropertiesInput")
    UpdateProvisionedProductPropertiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisionedProductPropertiesOutput", name: "UpdateProvisionedProductPropertiesOutput")
    UpdateProvisioningArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisioningArtifactInput", name: "UpdateProvisioningArtifactInput")
    UpdateProvisioningArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisioningArtifactOutput", name: "UpdateProvisioningArtifactOutput")
    UpdateProvisioningParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisioningParameter", name: "UpdateProvisioningParameter")
    UpdateProvisioningParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisioningParameters", name: "UpdateProvisioningParameters")
    UpdateProvisioningPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateProvisioningPreferences", name: "UpdateProvisioningPreferences")
    UpdateServiceActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateServiceActionInput", name: "UpdateServiceActionInput")
    UpdateServiceActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateServiceActionOutput", name: "UpdateServiceActionOutput")
    UpdateTagOptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateTagOptionInput", name: "UpdateTagOptionInput")
    UpdateTagOptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UpdateTagOptionOutput", name: "UpdateTagOptionOutput")
    UpdatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicecatalog#UpdatedTime", name: "UpdatedTime")
    UsageInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicecatalog#UsageInstruction", name: "UsageInstruction")
    UsageInstructions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicecatalog#UsageInstructions", name: "UsageInstructions")
    UsePreviousValue = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#UsePreviousValue", name: "UsePreviousValue", traits: {"smithy.api#default" => false})
    UserArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#UserArn", name: "UserArn")
    UserArnSession = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicecatalog#UserArnSession", name: "UserArnSession")
    Verbose = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.servicecatalog#Verbose", name: "Verbose", traits: {"smithy.api#default" => false})

    AcceptPortfolioShareInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    AcceptPortfolioShareInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    AcceptPortfolioShareInput.add_member(:portfolio_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioShareType, name: "PortfolioShareType"))
    AcceptPortfolioShareInput.type = Types::AcceptPortfolioShareInput
    AcceptPortfolioShareOutput.type = Types::AcceptPortfolioShareOutput
    AccessLevelFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevelFilterKey, name: "Key"))
    AccessLevelFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevelFilterValue, name: "Value"))
    AccessLevelFilter.type = Types::AccessLevelFilter
    AccessLevelFilterKey.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "Account"}))
    AccessLevelFilterKey.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE", traits: {"smithy.api#enumValue" => "Role"}))
    AccessLevelFilterKey.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "User"}))
    AccessStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AccessStatus.add_member(:under_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDER_CHANGE", traits: {"smithy.api#enumValue" => "UNDER_CHANGE"}))
    AccessStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AccountIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    AddTags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    AllowedValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    AssociateBudgetWithResourceInput.add_member(:budget_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetName, name: "BudgetName", traits: {"smithy.api#required" => {}}))
    AssociateBudgetWithResourceInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AssociateBudgetWithResourceInput.type = Types::AssociateBudgetWithResourceInput
    AssociateBudgetWithResourceOutput.type = Types::AssociateBudgetWithResourceOutput
    AssociatePrincipalWithPortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    AssociatePrincipalWithPortfolioInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    AssociatePrincipalWithPortfolioInput.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalARN, name: "PrincipalARN", traits: {"smithy.api#required" => {}}))
    AssociatePrincipalWithPortfolioInput.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType", traits: {"smithy.api#required" => {}}))
    AssociatePrincipalWithPortfolioInput.type = Types::AssociatePrincipalWithPortfolioInput
    AssociatePrincipalWithPortfolioOutput.type = Types::AssociatePrincipalWithPortfolioOutput
    AssociateProductWithPortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    AssociateProductWithPortfolioInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    AssociateProductWithPortfolioInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    AssociateProductWithPortfolioInput.add_member(:source_portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourcePortfolioId"))
    AssociateProductWithPortfolioInput.type = Types::AssociateProductWithPortfolioInput
    AssociateProductWithPortfolioOutput.type = Types::AssociateProductWithPortfolioOutput
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId", traits: {"smithy.api#required" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    AssociateServiceActionWithProvisioningArtifactInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateServiceActionWithProvisioningArtifactInput.type = Types::AssociateServiceActionWithProvisioningArtifactInput
    AssociateServiceActionWithProvisioningArtifactOutput.type = Types::AssociateServiceActionWithProvisioningArtifactOutput
    AssociateTagOptionWithResourceInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    AssociateTagOptionWithResourceInput.add_member(:tag_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "TagOptionId", traits: {"smithy.api#required" => {}}))
    AssociateTagOptionWithResourceInput.type = Types::AssociateTagOptionWithResourceInput
    AssociateTagOptionWithResourceOutput.type = Types::AssociateTagOptionWithResourceOutput
    BatchAssociateServiceActionWithProvisioningArtifactInput.add_member(:service_action_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionAssociations, name: "ServiceActionAssociations", traits: {"smithy.api#required" => {}}))
    BatchAssociateServiceActionWithProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    BatchAssociateServiceActionWithProvisioningArtifactInput.type = Types::BatchAssociateServiceActionWithProvisioningArtifactInput
    BatchAssociateServiceActionWithProvisioningArtifactOutput.add_member(:failed_service_action_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedServiceActionAssociations, name: "FailedServiceActionAssociations"))
    BatchAssociateServiceActionWithProvisioningArtifactOutput.type = Types::BatchAssociateServiceActionWithProvisioningArtifactOutput
    BatchDisassociateServiceActionFromProvisioningArtifactInput.add_member(:service_action_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionAssociations, name: "ServiceActionAssociations", traits: {"smithy.api#required" => {}}))
    BatchDisassociateServiceActionFromProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    BatchDisassociateServiceActionFromProvisioningArtifactInput.type = Types::BatchDisassociateServiceActionFromProvisioningArtifactInput
    BatchDisassociateServiceActionFromProvisioningArtifactOutput.add_member(:failed_service_action_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedServiceActionAssociations, name: "FailedServiceActionAssociations"))
    BatchDisassociateServiceActionFromProvisioningArtifactOutput.type = Types::BatchDisassociateServiceActionFromProvisioningArtifactOutput
    BudgetDetail.add_member(:budget_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetName, name: "BudgetName"))
    BudgetDetail.type = Types::BudgetDetail
    Budgets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetDetail, name: "member")
    ChangeAction.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    ChangeAction.add_member(:modify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFY", traits: {"smithy.api#enumValue" => "MODIFY"}))
    ChangeAction.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "REMOVE"}))
    CloudWatchDashboard.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDashboardName, name: "Name"))
    CloudWatchDashboard.type = Types::CloudWatchDashboard
    CloudWatchDashboards.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDashboard, name: "member")
    CodeStarParameters.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeStarConnectionArn, name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    CodeStarParameters.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, name: "Repository", traits: {"smithy.api#required" => {}}))
    CodeStarParameters.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryBranch, name: "Branch", traits: {"smithy.api#required" => {}}))
    CodeStarParameters.add_member(:artifact_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryArtifactPath, name: "ArtifactPath", traits: {"smithy.api#required" => {}}))
    CodeStarParameters.type = Types::CodeStarParameters
    ConstraintDetail.add_member(:constraint_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ConstraintId"))
    ConstraintDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintType, name: "Type"))
    ConstraintDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDescription, name: "Description"))
    ConstraintDetail.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Owner"))
    ConstraintDetail.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ConstraintDetail.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId"))
    ConstraintDetail.type = Types::ConstraintDetail
    ConstraintDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDetail, name: "member")
    ConstraintSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintSummary, name: "member")
    ConstraintSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintType, name: "Type"))
    ConstraintSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDescription, name: "Description"))
    ConstraintSummary.type = Types::ConstraintSummary
    CopyOption.add_member(:copy_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CopyTags", traits: {"smithy.api#enumValue" => "CopyTags"}))
    CopyOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CopyOption, name: "member")
    CopyProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CopyProductInput.add_member(:source_product_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductArn, name: "SourceProductArn", traits: {"smithy.api#required" => {}}))
    CopyProductInput.add_member(:target_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "TargetProductId"))
    CopyProductInput.add_member(:target_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "TargetProductName"))
    CopyProductInput.add_member(:source_provisioning_artifact_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProvisioningArtifactProperties, name: "SourceProvisioningArtifactIdentifiers"))
    CopyProductInput.add_member(:copy_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyOptions, name: "CopyOptions"))
    CopyProductInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CopyProductInput.type = Types::CopyProductInput
    CopyProductOutput.add_member(:copy_product_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "CopyProductToken"))
    CopyProductOutput.type = Types::CopyProductOutput
    CopyProductStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    CopyProductStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CopyProductStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CreateConstraintInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreateConstraintInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintParameters, name: "Parameters", traits: {"smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintType, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateConstraintInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDescription, name: "Description"))
    CreateConstraintInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateConstraintInput.type = Types::CreateConstraintInput
    CreateConstraintOutput.add_member(:constraint_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDetail, name: "ConstraintDetail"))
    CreateConstraintOutput.add_member(:constraint_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintParameters, name: "ConstraintParameters"))
    CreateConstraintOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    CreateConstraintOutput.type = Types::CreateConstraintOutput
    CreatePortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreatePortfolioInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDisplayName, name: "DisplayName", traits: {"smithy.api#required" => {}}))
    CreatePortfolioInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDescription, name: "Description"))
    CreatePortfolioInput.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderName, name: "ProviderName", traits: {"smithy.api#required" => {}}))
    CreatePortfolioInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: AddTags, name: "Tags"))
    CreatePortfolioInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreatePortfolioInput.type = Types::CreatePortfolioInput
    CreatePortfolioOutput.add_member(:portfolio_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetail, name: "PortfolioDetail"))
    CreatePortfolioOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreatePortfolioOutput.type = Types::CreatePortfolioOutput
    CreatePortfolioShareInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreatePortfolioShareInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    CreatePortfolioShareInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    CreatePortfolioShareInput.add_member(:organization_node, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNode, name: "OrganizationNode"))
    CreatePortfolioShareInput.add_member(:share_tag_options, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ShareTagOptions", traits: {"smithy.api#default" => false}))
    CreatePortfolioShareInput.add_member(:share_principals, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SharePrincipals", traits: {"smithy.api#default" => false}))
    CreatePortfolioShareInput.type = Types::CreatePortfolioShareInput
    CreatePortfolioShareOutput.add_member(:portfolio_share_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioShareToken"))
    CreatePortfolioShareOutput.type = Types::CreatePortfolioShareOutput
    CreateProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreateProductInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateProductInput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewOwner, name: "Owner", traits: {"smithy.api#required" => {}}))
    CreateProductInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewShortDescription, name: "Description"))
    CreateProductInput.add_member(:distributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewOwner, name: "Distributor"))
    CreateProductInput.add_member(:support_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportDescription, name: "SupportDescription"))
    CreateProductInput.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportEmail, name: "SupportEmail"))
    CreateProductInput.add_member(:support_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportUrl, name: "SupportUrl"))
    CreateProductInput.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductType, name: "ProductType", traits: {"smithy.api#required" => {}}))
    CreateProductInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: AddTags, name: "Tags"))
    CreateProductInput.add_member(:provisioning_artifact_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactProperties, name: "ProvisioningArtifactParameters"))
    CreateProductInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProductInput.add_member(:source_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnection, name: "SourceConnection"))
    CreateProductInput.type = Types::CreateProductInput
    CreateProductOutput.add_member(:product_view_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewDetail, name: "ProductViewDetail"))
    CreateProductOutput.add_member(:provisioning_artifact_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDetail, name: "ProvisioningArtifactDetail"))
    CreateProductOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateProductOutput.type = Types::CreateProductOutput
    CreateProvisionedProductPlanInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreateProvisionedProductPlanInput.add_member(:plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanName, name: "PlanName", traits: {"smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:plan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanType, name: "PlanType", traits: {"smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:notification_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationArns, name: "NotificationArns"))
    CreateProvisionedProductPlanInput.add_member(:path_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PathId"))
    CreateProvisionedProductPlanInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionedProductName", traits: {"smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:provisioning_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProvisioningParameters, name: "ProvisioningParameters"))
    CreateProvisionedProductPlanInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProvisionedProductPlanInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateProvisionedProductPlanInput.type = Types::CreateProvisionedProductPlanInput
    CreateProvisionedProductPlanOutput.add_member(:plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanName, name: "PlanName"))
    CreateProvisionedProductPlanOutput.add_member(:plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PlanId"))
    CreateProvisionedProductPlanOutput.add_member(:provision_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionProductId"))
    CreateProvisionedProductPlanOutput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionedProductName"))
    CreateProvisionedProductPlanOutput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    CreateProvisionedProductPlanOutput.type = Types::CreateProvisionedProductPlanOutput
    CreateProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreateProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    CreateProvisioningArtifactInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactProperties, name: "Parameters", traits: {"smithy.api#required" => {}}))
    CreateProvisioningArtifactInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProvisioningArtifactInput.type = Types::CreateProvisioningArtifactInput
    CreateProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDetail, name: "ProvisioningArtifactDetail"))
    CreateProvisioningArtifactOutput.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfo, name: "Info"))
    CreateProvisioningArtifactOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    CreateProvisioningArtifactOutput.type = Types::CreateProvisioningArtifactOutput
    CreateServiceActionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateServiceActionInput.add_member(:definition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionType, name: "DefinitionType", traits: {"smithy.api#required" => {}}))
    CreateServiceActionInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionMap, name: "Definition", traits: {"smithy.api#required" => {}}))
    CreateServiceActionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDescription, name: "Description"))
    CreateServiceActionInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    CreateServiceActionInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateServiceActionInput.type = Types::CreateServiceActionInput
    CreateServiceActionOutput.add_member(:service_action_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDetail, name: "ServiceActionDetail"))
    CreateServiceActionOutput.type = Types::CreateServiceActionOutput
    CreateTagOptionInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionKey, name: "Key", traits: {"smithy.api#required" => {}}))
    CreateTagOptionInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    CreateTagOptionInput.type = Types::CreateTagOptionInput
    CreateTagOptionOutput.add_member(:tag_option_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetail, name: "TagOptionDetail"))
    CreateTagOptionOutput.type = Types::CreateTagOptionOutput
    DeleteConstraintInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeleteConstraintInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteConstraintInput.type = Types::DeleteConstraintInput
    DeleteConstraintOutput.type = Types::DeleteConstraintOutput
    DeletePortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeletePortfolioInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DeletePortfolioInput.type = Types::DeletePortfolioInput
    DeletePortfolioOutput.type = Types::DeletePortfolioOutput
    DeletePortfolioShareInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeletePortfolioShareInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    DeletePortfolioShareInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    DeletePortfolioShareInput.add_member(:organization_node, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNode, name: "OrganizationNode"))
    DeletePortfolioShareInput.type = Types::DeletePortfolioShareInput
    DeletePortfolioShareOutput.add_member(:portfolio_share_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioShareToken"))
    DeletePortfolioShareOutput.type = Types::DeletePortfolioShareOutput
    DeleteProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeleteProductInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteProductInput.type = Types::DeleteProductInput
    DeleteProductOutput.type = Types::DeleteProductOutput
    DeleteProvisionedProductPlanInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeleteProvisionedProductPlanInput.add_member(:plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PlanId", traits: {"smithy.api#required" => {}}))
    DeleteProvisionedProductPlanInput.add_member(:ignore_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoreErrors, name: "IgnoreErrors", traits: {"smithy.api#default" => false}))
    DeleteProvisionedProductPlanInput.type = Types::DeleteProvisionedProductPlanInput
    DeleteProvisionedProductPlanOutput.type = Types::DeleteProvisionedProductPlanOutput
    DeleteProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeleteProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    DeleteProvisioningArtifactInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    DeleteProvisioningArtifactInput.type = Types::DeleteProvisioningArtifactInput
    DeleteProvisioningArtifactOutput.type = Types::DeleteProvisioningArtifactOutput
    DeleteServiceActionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteServiceActionInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DeleteServiceActionInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DeleteServiceActionInput.type = Types::DeleteServiceActionInput
    DeleteServiceActionOutput.type = Types::DeleteServiceActionOutput
    DeleteTagOptionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteTagOptionInput.type = Types::DeleteTagOptionInput
    DeleteTagOptionOutput.type = Types::DeleteTagOptionOutput
    DescribeConstraintInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeConstraintInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeConstraintInput.type = Types::DescribeConstraintInput
    DescribeConstraintOutput.add_member(:constraint_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDetail, name: "ConstraintDetail"))
    DescribeConstraintOutput.add_member(:constraint_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintParameters, name: "ConstraintParameters"))
    DescribeConstraintOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeConstraintOutput.type = Types::DescribeConstraintOutput
    DescribeCopyProductStatusInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeCopyProductStatusInput.add_member(:copy_product_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "CopyProductToken", traits: {"smithy.api#required" => {}}))
    DescribeCopyProductStatusInput.type = Types::DescribeCopyProductStatusInput
    DescribeCopyProductStatusOutput.add_member(:copy_product_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyProductStatus, name: "CopyProductStatus"))
    DescribeCopyProductStatusOutput.add_member(:target_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "TargetProductId"))
    DescribeCopyProductStatusOutput.add_member(:status_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusDetail, name: "StatusDetail"))
    DescribeCopyProductStatusOutput.type = Types::DescribeCopyProductStatusOutput
    DescribePortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribePortfolioInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribePortfolioInput.type = Types::DescribePortfolioInput
    DescribePortfolioOutput.add_member(:portfolio_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetail, name: "PortfolioDetail"))
    DescribePortfolioOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DescribePortfolioOutput.add_member(:tag_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetails, name: "TagOptions"))
    DescribePortfolioOutput.add_member(:budgets, ::Smithy::Schema::Shapes::MemberShape.new(target: Budgets, name: "Budgets"))
    DescribePortfolioOutput.type = Types::DescribePortfolioOutput
    DescribePortfolioShareStatusInput.add_member(:portfolio_share_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioShareToken", traits: {"smithy.api#required" => {}}))
    DescribePortfolioShareStatusInput.type = Types::DescribePortfolioShareStatusInput
    DescribePortfolioShareStatusOutput.add_member(:portfolio_share_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioShareToken"))
    DescribePortfolioShareStatusOutput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId"))
    DescribePortfolioShareStatusOutput.add_member(:organization_node_value, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNodeValue, name: "OrganizationNodeValue"))
    DescribePortfolioShareStatusOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    DescribePortfolioShareStatusOutput.add_member(:share_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareDetails, name: "ShareDetails"))
    DescribePortfolioShareStatusOutput.type = Types::DescribePortfolioShareStatusOutput
    DescribePortfolioShareType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    DescribePortfolioShareType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    DescribePortfolioShareType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT", traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    DescribePortfolioShareType.add_member(:organization_member_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_MEMBER_ACCOUNT", traits: {"smithy.api#enumValue" => "ORGANIZATION_MEMBER_ACCOUNT"}))
    DescribePortfolioSharesInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    DescribePortfolioSharesInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribePortfolioShareType, name: "Type", traits: {"smithy.api#required" => {}}))
    DescribePortfolioSharesInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    DescribePortfolioSharesInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeMax100, name: "PageSize", traits: {"smithy.api#default" => 0}))
    DescribePortfolioSharesInput.type = Types::DescribePortfolioSharesInput
    DescribePortfolioSharesOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    DescribePortfolioSharesOutput.add_member(:portfolio_share_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioShareDetails, name: "PortfolioShareDetails"))
    DescribePortfolioSharesOutput.type = Types::DescribePortfolioSharesOutput
    DescribeProductAsAdminInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProductAsAdminInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    DescribeProductAsAdminInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "Name"))
    DescribeProductAsAdminInput.add_member(:source_portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourcePortfolioId"))
    DescribeProductAsAdminInput.type = Types::DescribeProductAsAdminInput
    DescribeProductAsAdminOutput.add_member(:product_view_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewDetail, name: "ProductViewDetail"))
    DescribeProductAsAdminOutput.add_member(:provisioning_artifact_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactSummaries, name: "ProvisioningArtifactSummaries"))
    DescribeProductAsAdminOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    DescribeProductAsAdminOutput.add_member(:tag_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetails, name: "TagOptions"))
    DescribeProductAsAdminOutput.add_member(:budgets, ::Smithy::Schema::Shapes::MemberShape.new(target: Budgets, name: "Budgets"))
    DescribeProductAsAdminOutput.type = Types::DescribeProductAsAdminOutput
    DescribeProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProductInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    DescribeProductInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "Name"))
    DescribeProductInput.type = Types::DescribeProductInput
    DescribeProductOutput.add_member(:product_view_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSummary, name: "ProductViewSummary"))
    DescribeProductOutput.add_member(:provisioning_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifacts, name: "ProvisioningArtifacts"))
    DescribeProductOutput.add_member(:budgets, ::Smithy::Schema::Shapes::MemberShape.new(target: Budgets, name: "Budgets"))
    DescribeProductOutput.add_member(:launch_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPaths, name: "LaunchPaths"))
    DescribeProductOutput.type = Types::DescribeProductOutput
    DescribeProductViewInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProductViewInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeProductViewInput.type = Types::DescribeProductViewInput
    DescribeProductViewOutput.add_member(:product_view_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSummary, name: "ProductViewSummary"))
    DescribeProductViewOutput.add_member(:provisioning_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifacts, name: "ProvisioningArtifacts"))
    DescribeProductViewOutput.type = Types::DescribeProductViewOutput
    DescribeProvisionedProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProvisionedProductInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    DescribeProvisionedProductInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "Name"))
    DescribeProvisionedProductInput.type = Types::DescribeProvisionedProductInput
    DescribeProvisionedProductOutput.add_member(:provisioned_product_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductDetail, name: "ProvisionedProductDetail"))
    DescribeProvisionedProductOutput.add_member(:cloud_watch_dashboards, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDashboards, name: "CloudWatchDashboards"))
    DescribeProvisionedProductOutput.type = Types::DescribeProvisionedProductOutput
    DescribeProvisionedProductPlanInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProvisionedProductPlanInput.add_member(:plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PlanId", traits: {"smithy.api#required" => {}}))
    DescribeProvisionedProductPlanInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    DescribeProvisionedProductPlanInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    DescribeProvisionedProductPlanInput.type = Types::DescribeProvisionedProductPlanInput
    DescribeProvisionedProductPlanOutput.add_member(:provisioned_product_plan_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanDetails, name: "ProvisionedProductPlanDetails"))
    DescribeProvisionedProductPlanOutput.add_member(:resource_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChanges, name: "ResourceChanges"))
    DescribeProvisionedProductPlanOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    DescribeProvisionedProductPlanOutput.type = Types::DescribeProvisionedProductPlanOutput
    DescribeProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProvisioningArtifactInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    DescribeProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    DescribeProvisioningArtifactInput.add_member(:provisioning_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "ProvisioningArtifactName"))
    DescribeProvisioningArtifactInput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "ProductName"))
    DescribeProvisioningArtifactInput.add_member(:verbose, ::Smithy::Schema::Shapes::MemberShape.new(target: Verbose, name: "Verbose", traits: {"smithy.api#default" => false}))
    DescribeProvisioningArtifactInput.add_member(:include_provisioning_artifact_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IncludeProvisioningArtifactParameters", traits: {"smithy.api#default" => false}))
    DescribeProvisioningArtifactInput.type = Types::DescribeProvisioningArtifactInput
    DescribeProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDetail, name: "ProvisioningArtifactDetail"))
    DescribeProvisioningArtifactOutput.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfo, name: "Info"))
    DescribeProvisioningArtifactOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    DescribeProvisioningArtifactOutput.add_member(:provisioning_artifact_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactParameters, name: "ProvisioningArtifactParameters"))
    DescribeProvisioningArtifactOutput.type = Types::DescribeProvisioningArtifactOutput
    DescribeProvisioningParametersInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeProvisioningParametersInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    DescribeProvisioningParametersInput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "ProductName"))
    DescribeProvisioningParametersInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    DescribeProvisioningParametersInput.add_member(:provisioning_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "ProvisioningArtifactName"))
    DescribeProvisioningParametersInput.add_member(:path_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PathId"))
    DescribeProvisioningParametersInput.add_member(:path_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDisplayName, name: "PathName"))
    DescribeProvisioningParametersInput.type = Types::DescribeProvisioningParametersInput
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactParameters, name: "ProvisioningArtifactParameters"))
    DescribeProvisioningParametersOutput.add_member(:constraint_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintSummaries, name: "ConstraintSummaries"))
    DescribeProvisioningParametersOutput.add_member(:usage_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageInstructions, name: "UsageInstructions"))
    DescribeProvisioningParametersOutput.add_member(:tag_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionSummaries, name: "TagOptions"))
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactPreferences, name: "ProvisioningArtifactPreferences"))
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactOutputs, name: "ProvisioningArtifactOutputs", traits: {"smithy.api#deprecated" => {"message" => "This property is deprecated and returns the Id and Description of the Provisioning Artifact. Use ProvisioningArtifactOutputKeys instead to get the Keys and Descriptions of the outputs."}}))
    DescribeProvisioningParametersOutput.add_member(:provisioning_artifact_output_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactOutputs, name: "ProvisioningArtifactOutputKeys"))
    DescribeProvisioningParametersOutput.type = Types::DescribeProvisioningParametersOutput
    DescribeRecordInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeRecordInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeRecordInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    DescribeRecordInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    DescribeRecordInput.type = Types::DescribeRecordInput
    DescribeRecordOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    DescribeRecordOutput.add_member(:record_outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordOutputs, name: "RecordOutputs"))
    DescribeRecordOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    DescribeRecordOutput.type = Types::DescribeRecordOutput
    DescribeServiceActionExecutionParametersInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId", traits: {"smithy.api#required" => {}}))
    DescribeServiceActionExecutionParametersInput.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId", traits: {"smithy.api#required" => {}}))
    DescribeServiceActionExecutionParametersInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeServiceActionExecutionParametersInput.type = Types::DescribeServiceActionExecutionParametersInput
    DescribeServiceActionExecutionParametersOutput.add_member(:service_action_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameters, name: "ServiceActionParameters"))
    DescribeServiceActionExecutionParametersOutput.type = Types::DescribeServiceActionExecutionParametersOutput
    DescribeServiceActionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DescribeServiceActionInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DescribeServiceActionInput.type = Types::DescribeServiceActionInput
    DescribeServiceActionOutput.add_member(:service_action_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDetail, name: "ServiceActionDetail"))
    DescribeServiceActionOutput.type = Types::DescribeServiceActionOutput
    DescribeTagOptionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DescribeTagOptionInput.type = Types::DescribeTagOptionInput
    DescribeTagOptionOutput.add_member(:tag_option_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetail, name: "TagOptionDetail"))
    DescribeTagOptionOutput.type = Types::DescribeTagOptionOutput
    DisableAWSOrganizationsAccessInput.type = Types::DisableAWSOrganizationsAccessInput
    DisableAWSOrganizationsAccessOutput.type = Types::DisableAWSOrganizationsAccessOutput
    DisassociateBudgetFromResourceInput.add_member(:budget_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BudgetName, name: "BudgetName", traits: {"smithy.api#required" => {}}))
    DisassociateBudgetFromResourceInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DisassociateBudgetFromResourceInput.type = Types::DisassociateBudgetFromResourceInput
    DisassociateBudgetFromResourceOutput.type = Types::DisassociateBudgetFromResourceOutput
    DisassociatePrincipalFromPortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DisassociatePrincipalFromPortfolioInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    DisassociatePrincipalFromPortfolioInput.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalARN, name: "PrincipalARN", traits: {"smithy.api#required" => {}}))
    DisassociatePrincipalFromPortfolioInput.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    DisassociatePrincipalFromPortfolioInput.type = Types::DisassociatePrincipalFromPortfolioInput
    DisassociatePrincipalFromPortfolioOutput.type = Types::DisassociatePrincipalFromPortfolioOutput
    DisassociateProductFromPortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DisassociateProductFromPortfolioInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    DisassociateProductFromPortfolioInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    DisassociateProductFromPortfolioInput.type = Types::DisassociateProductFromPortfolioInput
    DisassociateProductFromPortfolioOutput.type = Types::DisassociateProductFromPortfolioOutput
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId", traits: {"smithy.api#required" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    DisassociateServiceActionFromProvisioningArtifactInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisassociateServiceActionFromProvisioningArtifactInput.type = Types::DisassociateServiceActionFromProvisioningArtifactInput
    DisassociateServiceActionFromProvisioningArtifactOutput.type = Types::DisassociateServiceActionFromProvisioningArtifactOutput
    DisassociateTagOptionFromResourceInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId", traits: {"smithy.api#httpQuery" => "resourceId", "smithy.api#required" => {}}))
    DisassociateTagOptionFromResourceInput.add_member(:tag_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "TagOptionId", traits: {"smithy.api#httpQuery" => "tagOptionId", "smithy.api#required" => {}}))
    DisassociateTagOptionFromResourceInput.type = Types::DisassociateTagOptionFromResourceInput
    DisassociateTagOptionFromResourceOutput.type = Types::DisassociateTagOptionFromResourceOutput
    DuplicateResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DuplicateResourceException.type = Types::DuplicateResourceException
    EnableAWSOrganizationsAccessInput.type = Types::EnableAWSOrganizationsAccessInput
    EnableAWSOrganizationsAccessOutput.type = Types::EnableAWSOrganizationsAccessOutput
    EngineWorkflowResourceIdentifier.add_member(:unique_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueTagResourceIdentifier, name: "UniqueTag"))
    EngineWorkflowResourceIdentifier.type = Types::EngineWorkflowResourceIdentifier
    EngineWorkflowStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    EngineWorkflowStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EvaluationType.add_member(:static, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATIC", traits: {"smithy.api#enumValue" => "STATIC"}))
    EvaluationType.add_member(:dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMIC", traits: {"smithy.api#enumValue" => "DYNAMIC"}))
    ExecuteProvisionedProductPlanInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ExecuteProvisionedProductPlanInput.add_member(:plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PlanId", traits: {"smithy.api#required" => {}}))
    ExecuteProvisionedProductPlanInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ExecuteProvisionedProductPlanInput.type = Types::ExecuteProvisionedProductPlanInput
    ExecuteProvisionedProductPlanOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    ExecuteProvisionedProductPlanOutput.type = Types::ExecuteProvisionedProductPlanOutput
    ExecuteProvisionedProductServiceActionInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId", traits: {"smithy.api#required" => {}}))
    ExecuteProvisionedProductServiceActionInput.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId", traits: {"smithy.api#required" => {}}))
    ExecuteProvisionedProductServiceActionInput.add_member(:execute_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ExecuteToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ExecuteProvisionedProductServiceActionInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ExecuteProvisionedProductServiceActionInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterMap, name: "Parameters"))
    ExecuteProvisionedProductServiceActionInput.type = Types::ExecuteProvisionedProductServiceActionInput
    ExecuteProvisionedProductServiceActionOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    ExecuteProvisionedProductServiceActionOutput.type = Types::ExecuteProvisionedProductServiceActionOutput
    ExecutionParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterKey, name: "Name"))
    ExecutionParameter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterType, name: "Type"))
    ExecutionParameter.add_member(:default_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterValueList, name: "DefaultValues"))
    ExecutionParameter.type = Types::ExecutionParameter
    ExecutionParameterMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterKey, name: "key")
    ExecutionParameterMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterValueList, name: "value")
    ExecutionParameterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameterValue, name: "member")
    ExecutionParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionParameter, name: "member")
    FailedServiceActionAssociation.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId"))
    FailedServiceActionAssociation.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    FailedServiceActionAssociation.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    FailedServiceActionAssociation.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionAssociationErrorCode, name: "ErrorCode"))
    FailedServiceActionAssociation.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionAssociationErrorMessage, name: "ErrorMessage"))
    FailedServiceActionAssociation.type = Types::FailedServiceActionAssociation
    FailedServiceActionAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedServiceActionAssociation, name: "member")
    GetAWSOrganizationsAccessStatusInput.type = Types::GetAWSOrganizationsAccessStatusInput
    GetAWSOrganizationsAccessStatusOutput.add_member(:access_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessStatus, name: "AccessStatus"))
    GetAWSOrganizationsAccessStatusOutput.type = Types::GetAWSOrganizationsAccessStatusOutput
    GetProvisionedProductOutputsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    GetProvisionedProductOutputsInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId"))
    GetProvisionedProductOutputsInput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionedProductName"))
    GetProvisionedProductOutputsInput.add_member(:output_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputKeys, name: "OutputKeys"))
    GetProvisionedProductOutputsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    GetProvisionedProductOutputsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    GetProvisionedProductOutputsInput.type = Types::GetProvisionedProductOutputsInput
    GetProvisionedProductOutputsOutput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordOutputs, name: "Outputs"))
    GetProvisionedProductOutputsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    GetProvisionedProductOutputsOutput.type = Types::GetProvisionedProductOutputsOutput
    ImportAsProvisionedProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ImportAsProvisionedProductInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionedProductName", traits: {"smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:physical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalId, name: "PhysicalId", traits: {"smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportAsProvisionedProductInput.type = Types::ImportAsProvisionedProductInput
    ImportAsProvisionedProductOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    ImportAsProvisionedProductOutput.type = Types::ImportAsProvisionedProductOutput
    InvalidParametersException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidParametersException.type = Types::InvalidParametersException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidStateException.type = Types::InvalidStateException
    LastSync.add_member(:last_sync_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSyncTime, name: "LastSyncTime"))
    LastSync.add_member(:last_sync_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSyncStatus, name: "LastSyncStatus"))
    LastSync.add_member(:last_sync_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSyncStatusMessage, name: "LastSyncStatusMessage"))
    LastSync.add_member(:last_successful_sync_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSuccessfulSyncTime, name: "LastSuccessfulSyncTime"))
    LastSync.add_member(:last_successful_sync_provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "LastSuccessfulSyncProvisioningArtifactId"))
    LastSync.type = Types::LastSync
    LastSyncStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    LastSyncStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LaunchPath.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    LaunchPath.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioName, name: "Name"))
    LaunchPath.type = Types::LaunchPath
    LaunchPathSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPathSummary, name: "member")
    LaunchPathSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    LaunchPathSummary.add_member(:constraint_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintSummaries, name: "ConstraintSummaries"))
    LaunchPathSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    LaunchPathSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioName, name: "Name"))
    LaunchPathSummary.type = Types::LaunchPathSummary
    LaunchPaths.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPath, name: "member")
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAcceptedPortfolioSharesInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListAcceptedPortfolioSharesInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListAcceptedPortfolioSharesInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeMax100, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListAcceptedPortfolioSharesInput.add_member(:portfolio_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioShareType, name: "PortfolioShareType"))
    ListAcceptedPortfolioSharesInput.type = Types::ListAcceptedPortfolioSharesInput
    ListAcceptedPortfolioSharesOutput.add_member(:portfolio_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetails, name: "PortfolioDetails"))
    ListAcceptedPortfolioSharesOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListAcceptedPortfolioSharesOutput.type = Types::ListAcceptedPortfolioSharesOutput
    ListBudgetsForResourceInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListBudgetsForResourceInput.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ListBudgetsForResourceInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListBudgetsForResourceInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListBudgetsForResourceInput.type = Types::ListBudgetsForResourceInput
    ListBudgetsForResourceOutput.add_member(:budgets, ::Smithy::Schema::Shapes::MemberShape.new(target: Budgets, name: "Budgets"))
    ListBudgetsForResourceOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListBudgetsForResourceOutput.type = Types::ListBudgetsForResourceOutput
    ListConstraintsForPortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListConstraintsForPortfolioInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    ListConstraintsForPortfolioInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ListConstraintsForPortfolioInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListConstraintsForPortfolioInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListConstraintsForPortfolioInput.type = Types::ListConstraintsForPortfolioInput
    ListConstraintsForPortfolioOutput.add_member(:constraint_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDetails, name: "ConstraintDetails"))
    ListConstraintsForPortfolioOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListConstraintsForPortfolioOutput.type = Types::ListConstraintsForPortfolioOutput
    ListLaunchPathsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListLaunchPathsInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    ListLaunchPathsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListLaunchPathsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListLaunchPathsInput.type = Types::ListLaunchPathsInput
    ListLaunchPathsOutput.add_member(:launch_path_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPathSummaries, name: "LaunchPathSummaries"))
    ListLaunchPathsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListLaunchPathsOutput.type = Types::ListLaunchPathsOutput
    ListOrganizationPortfolioAccessInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListOrganizationPortfolioAccessInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    ListOrganizationPortfolioAccessInput.add_member(:organization_node_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNodeType, name: "OrganizationNodeType", traits: {"smithy.api#required" => {}}))
    ListOrganizationPortfolioAccessInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListOrganizationPortfolioAccessInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListOrganizationPortfolioAccessInput.type = Types::ListOrganizationPortfolioAccessInput
    ListOrganizationPortfolioAccessOutput.add_member(:organization_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNodes, name: "OrganizationNodes"))
    ListOrganizationPortfolioAccessOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListOrganizationPortfolioAccessOutput.type = Types::ListOrganizationPortfolioAccessOutput
    ListPortfolioAccessInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListPortfolioAccessInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    ListPortfolioAccessInput.add_member(:organization_parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "OrganizationParentId"))
    ListPortfolioAccessInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListPortfolioAccessInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeMax100, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListPortfolioAccessInput.type = Types::ListPortfolioAccessInput
    ListPortfolioAccessOutput.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIds, name: "AccountIds"))
    ListPortfolioAccessOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListPortfolioAccessOutput.type = Types::ListPortfolioAccessOutput
    ListPortfoliosForProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListPortfoliosForProductInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    ListPortfoliosForProductInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListPortfoliosForProductInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeMax100, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListPortfoliosForProductInput.type = Types::ListPortfoliosForProductInput
    ListPortfoliosForProductOutput.add_member(:portfolio_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetails, name: "PortfolioDetails"))
    ListPortfoliosForProductOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListPortfoliosForProductOutput.type = Types::ListPortfoliosForProductOutput
    ListPortfoliosInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListPortfoliosInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListPortfoliosInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeMax100, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListPortfoliosInput.type = Types::ListPortfoliosInput
    ListPortfoliosOutput.add_member(:portfolio_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetails, name: "PortfolioDetails"))
    ListPortfoliosOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListPortfoliosOutput.type = Types::ListPortfoliosOutput
    ListPrincipalsForPortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListPrincipalsForPortfolioInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    ListPrincipalsForPortfolioInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListPrincipalsForPortfolioInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListPrincipalsForPortfolioInput.type = Types::ListPrincipalsForPortfolioInput
    ListPrincipalsForPortfolioOutput.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: Principals, name: "Principals"))
    ListPrincipalsForPortfolioOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListPrincipalsForPortfolioOutput.type = Types::ListPrincipalsForPortfolioOutput
    ListProvisionedProductPlansInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListProvisionedProductPlansInput.add_member(:provision_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionProductId"))
    ListProvisionedProductPlansInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListProvisionedProductPlansInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListProvisionedProductPlansInput.add_member(:access_level_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevelFilter, name: "AccessLevelFilter"))
    ListProvisionedProductPlansInput.type = Types::ListProvisionedProductPlansInput
    ListProvisionedProductPlansOutput.add_member(:provisioned_product_plans, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlans, name: "ProvisionedProductPlans"))
    ListProvisionedProductPlansOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListProvisionedProductPlansOutput.type = Types::ListProvisionedProductPlansOutput
    ListProvisioningArtifactsForServiceActionInput.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId", traits: {"smithy.api#required" => {}}))
    ListProvisioningArtifactsForServiceActionInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListProvisioningArtifactsForServiceActionInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListProvisioningArtifactsForServiceActionInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListProvisioningArtifactsForServiceActionInput.type = Types::ListProvisioningArtifactsForServiceActionInput
    ListProvisioningArtifactsForServiceActionOutput.add_member(:provisioning_artifact_views, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactViews, name: "ProvisioningArtifactViews"))
    ListProvisioningArtifactsForServiceActionOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListProvisioningArtifactsForServiceActionOutput.type = Types::ListProvisioningArtifactsForServiceActionOutput
    ListProvisioningArtifactsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListProvisioningArtifactsInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    ListProvisioningArtifactsInput.type = Types::ListProvisioningArtifactsInput
    ListProvisioningArtifactsOutput.add_member(:provisioning_artifact_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDetails, name: "ProvisioningArtifactDetails"))
    ListProvisioningArtifactsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListProvisioningArtifactsOutput.type = Types::ListProvisioningArtifactsOutput
    ListRecordHistoryInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListRecordHistoryInput.add_member(:access_level_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevelFilter, name: "AccessLevelFilter"))
    ListRecordHistoryInput.add_member(:search_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecordHistorySearchFilter, name: "SearchFilter"))
    ListRecordHistoryInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListRecordHistoryInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListRecordHistoryInput.type = Types::ListRecordHistoryInput
    ListRecordHistoryOutput.add_member(:record_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetails, name: "RecordDetails"))
    ListRecordHistoryOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListRecordHistoryOutput.type = Types::ListRecordHistoryOutput
    ListRecordHistorySearchFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterKey, name: "Key"))
    ListRecordHistorySearchFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchFilterValue, name: "Value"))
    ListRecordHistorySearchFilter.type = Types::ListRecordHistorySearchFilter
    ListResourcesForTagOptionInput.add_member(:tag_option_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "TagOptionId", traits: {"smithy.api#httpQuery" => "tagOptionId", "smithy.api#required" => {}}))
    ListResourcesForTagOptionInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListResourcesForTagOptionInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "pageSize"}))
    ListResourcesForTagOptionInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken", traits: {"smithy.api#httpQuery" => "pageToken"}))
    ListResourcesForTagOptionInput.type = Types::ListResourcesForTagOptionInput
    ListResourcesForTagOptionOutput.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetails, name: "ResourceDetails"))
    ListResourcesForTagOptionOutput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListResourcesForTagOptionOutput.type = Types::ListResourcesForTagOptionOutput
    ListServiceActionsForProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListServiceActionsForProvisioningArtifactInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListServiceActionsForProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListServiceActionsForProvisioningArtifactInput.type = Types::ListServiceActionsForProvisioningArtifactInput
    ListServiceActionsForProvisioningArtifactOutput.add_member(:service_action_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionSummaries, name: "ServiceActionSummaries"))
    ListServiceActionsForProvisioningArtifactOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListServiceActionsForProvisioningArtifactOutput.type = Types::ListServiceActionsForProvisioningArtifactOutput
    ListServiceActionsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListServiceActionsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListServiceActionsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListServiceActionsInput.type = Types::ListServiceActionsInput
    ListServiceActionsOutput.add_member(:service_action_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionSummaries, name: "ServiceActionSummaries"))
    ListServiceActionsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListServiceActionsOutput.type = Types::ListServiceActionsOutput
    ListStackInstancesForProvisionedProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ListStackInstancesForProvisionedProductInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId", traits: {"smithy.api#required" => {}}))
    ListStackInstancesForProvisionedProductInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListStackInstancesForProvisionedProductInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListStackInstancesForProvisionedProductInput.type = Types::ListStackInstancesForProvisionedProductInput
    ListStackInstancesForProvisionedProductOutput.add_member(:stack_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstances, name: "StackInstances"))
    ListStackInstancesForProvisionedProductOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ListStackInstancesForProvisionedProductOutput.type = Types::ListStackInstancesForProvisionedProductOutput
    ListTagOptionsFilters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionKey, name: "Key"))
    ListTagOptionsFilters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionValue, name: "Value"))
    ListTagOptionsFilters.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionActive, name: "Active"))
    ListTagOptionsFilters.type = Types::ListTagOptionsFilters
    ListTagOptionsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagOptionsFilters, name: "Filters"))
    ListTagOptionsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ListTagOptionsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListTagOptionsInput.type = Types::ListTagOptionsInput
    ListTagOptionsOutput.add_member(:tag_option_details, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetails, name: "TagOptionDetails"))
    ListTagOptionsOutput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ListTagOptionsOutput.type = Types::ListTagOptionsOutput
    Namespaces.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    NotificationArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationArn, name: "member")
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:workflow_token, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowToken, name: "WorkflowToken", traits: {"smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RecordId", traits: {"smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowFailureReason, name: "FailureReason"))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowResourceIdentifier, name: "ResourceIdentifier"))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordOutputs, name: "Outputs"))
    NotifyProvisionProductEngineWorkflowResultInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    NotifyProvisionProductEngineWorkflowResultInput.type = Types::NotifyProvisionProductEngineWorkflowResultInput
    NotifyProvisionProductEngineWorkflowResultOutput.type = Types::NotifyProvisionProductEngineWorkflowResultOutput
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:workflow_token, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowToken, name: "WorkflowToken", traits: {"smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RecordId", traits: {"smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowFailureReason, name: "FailureReason"))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    NotifyTerminateProvisionedProductEngineWorkflowResultInput.type = Types::NotifyTerminateProvisionedProductEngineWorkflowResultInput
    NotifyTerminateProvisionedProductEngineWorkflowResultOutput.type = Types::NotifyTerminateProvisionedProductEngineWorkflowResultOutput
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:workflow_token, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowToken, name: "WorkflowToken", traits: {"smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RecordId", traits: {"smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineWorkflowFailureReason, name: "FailureReason"))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordOutputs, name: "Outputs"))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    NotifyUpdateProvisionedProductEngineWorkflowResultInput.type = Types::NotifyUpdateProvisionedProductEngineWorkflowResultInput
    NotifyUpdateProvisionedProductEngineWorkflowResultOutput.type = Types::NotifyUpdateProvisionedProductEngineWorkflowResultOutput
    OperationNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationNotSupportedException.type = Types::OperationNotSupportedException
    OrganizationNode.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNodeType, name: "Type"))
    OrganizationNode.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNodeValue, name: "Value"))
    OrganizationNode.type = Types::OrganizationNode
    OrganizationNodeType.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION", traits: {"smithy.api#enumValue" => "ORGANIZATION"}))
    OrganizationNodeType.add_member(:organizational_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATIONAL_UNIT", traits: {"smithy.api#enumValue" => "ORGANIZATIONAL_UNIT"}))
    OrganizationNodeType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    OrganizationNodes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNode, name: "member")
    OutputKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OutputKey, name: "member")
    ParameterConstraints.add_member(:allowed_values, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedValues, name: "AllowedValues"))
    ParameterConstraints.add_member(:allowed_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AllowedPattern"))
    ParameterConstraints.add_member(:constraint_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConstraintDescription"))
    ParameterConstraints.add_member(:max_length, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxLength"))
    ParameterConstraints.add_member(:min_length, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinLength"))
    ParameterConstraints.add_member(:max_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MaxValue"))
    ParameterConstraints.add_member(:min_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MinValue"))
    ParameterConstraints.type = Types::ParameterConstraints
    PortfolioDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    PortfolioDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ARN"))
    PortfolioDetail.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDisplayName, name: "DisplayName"))
    PortfolioDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDescription, name: "Description"))
    PortfolioDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreatedTime"))
    PortfolioDetail.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderName, name: "ProviderName"))
    PortfolioDetail.type = Types::PortfolioDetail
    PortfolioDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetail, name: "member")
    PortfolioShareDetail.add_member(:principal_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PrincipalId"))
    PortfolioShareDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribePortfolioShareType, name: "Type"))
    PortfolioShareDetail.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Accepted", traits: {"smithy.api#default" => false}))
    PortfolioShareDetail.add_member(:share_tag_options, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ShareTagOptions", traits: {"smithy.api#default" => false}))
    PortfolioShareDetail.add_member(:share_principals, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SharePrincipals", traits: {"smithy.api#default" => false}))
    PortfolioShareDetail.type = Types::PortfolioShareDetail
    PortfolioShareDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioShareDetail, name: "member")
    PortfolioShareType.add_member(:imported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    PortfolioShareType.add_member(:aws_servicecatalog, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SERVICECATALOG", traits: {"smithy.api#enumValue" => "AWS_SERVICECATALOG"}))
    PortfolioShareType.add_member(:aws_organizations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ORGANIZATIONS", traits: {"smithy.api#enumValue" => "AWS_ORGANIZATIONS"}))
    Principal.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalARN, name: "PrincipalARN"))
    Principal.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "PrincipalType"))
    Principal.type = Types::Principal
    PrincipalType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    PrincipalType.add_member(:iam_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_PATTERN", traits: {"smithy.api#enumValue" => "IAM_PATTERN"}))
    Principals.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "member")
    ProductSource.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    ProductType.add_member(:cloud_formation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_FORMATION_TEMPLATE", traits: {"smithy.api#enumValue" => "CLOUD_FORMATION_TEMPLATE"}))
    ProductType.add_member(:marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETPLACE", traits: {"smithy.api#enumValue" => "MARKETPLACE"}))
    ProductType.add_member(:terraform_open_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAFORM_OPEN_SOURCE", traits: {"smithy.api#enumValue" => "TERRAFORM_OPEN_SOURCE"}))
    ProductType.add_member(:terraform_cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAFORM_CLOUD", traits: {"smithy.api#enumValue" => "TERRAFORM_CLOUD"}))
    ProductType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    ProductViewAggregationValue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue, name: "Value"))
    ProductViewAggregationValue.add_member(:approximate_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ApproximateCount, name: "ApproximateCount", traits: {"smithy.api#default" => 0}))
    ProductViewAggregationValue.type = Types::ProductViewAggregationValue
    ProductViewAggregationValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewAggregationValue, name: "member")
    ProductViewAggregations.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewAggregationType, name: "key")
    ProductViewAggregations.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewAggregationValues, name: "value")
    ProductViewDetail.add_member(:product_view_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSummary, name: "ProductViewSummary"))
    ProductViewDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    ProductViewDetail.add_member(:product_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, name: "ProductARN"))
    ProductViewDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    ProductViewDetail.add_member(:source_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectionDetail, name: "SourceConnection"))
    ProductViewDetail.type = Types::ProductViewDetail
    ProductViewDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewDetail, name: "member")
    ProductViewFilterBy.add_member(:full_text_search, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FullTextSearch", traits: {"smithy.api#enumValue" => "FullTextSearch"}))
    ProductViewFilterBy.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Owner", traits: {"smithy.api#enumValue" => "Owner"}))
    ProductViewFilterBy.add_member(:product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ProductType", traits: {"smithy.api#enumValue" => "ProductType"}))
    ProductViewFilterBy.add_member(:source_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SourceProductId", traits: {"smithy.api#enumValue" => "SourceProductId"}))
    ProductViewFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewFilterValue, name: "member")
    ProductViewFilters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewFilterBy, name: "key")
    ProductViewFilters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewFilterValues, name: "value")
    ProductViewSortBy.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Title", traits: {"smithy.api#enumValue" => "Title"}))
    ProductViewSortBy.add_member(:version_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VersionCount", traits: {"smithy.api#enumValue" => "VersionCount"}))
    ProductViewSortBy.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreationDate", traits: {"smithy.api#enumValue" => "CreationDate"}))
    ProductViewSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSummary, name: "member")
    ProductViewSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ProductViewSummary.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ProductViewSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "Name"))
    ProductViewSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewOwner, name: "Owner"))
    ProductViewSummary.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewShortDescription, name: "ShortDescription"))
    ProductViewSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductType, name: "Type"))
    ProductViewSummary.add_member(:distributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewDistributor, name: "Distributor"))
    ProductViewSummary.add_member(:has_default_path, ::Smithy::Schema::Shapes::MemberShape.new(target: HasDefaultPath, name: "HasDefaultPath", traits: {"smithy.api#default" => false}))
    ProductViewSummary.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportEmail, name: "SupportEmail"))
    ProductViewSummary.add_member(:support_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportDescription, name: "SupportDescription"))
    ProductViewSummary.add_member(:support_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportUrl, name: "SupportUrl"))
    ProductViewSummary.type = Types::ProductViewSummary
    PropertyKey.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Owner", traits: {"smithy.api#enumValue" => "OWNER"}))
    PropertyKey.add_member(:launch_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LaunchRole", traits: {"smithy.api#enumValue" => "LAUNCH_ROLE"}))
    ProvisionProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ProvisionProductInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ProvisionProductInput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "ProductName"))
    ProvisionProductInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    ProvisionProductInput.add_member(:provisioning_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "ProvisioningArtifactName"))
    ProvisionProductInput.add_member(:path_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PathId"))
    ProvisionProductInput.add_member(:path_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDisplayName, name: "PathName"))
    ProvisionProductInput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionedProductName", traits: {"smithy.api#required" => {}}))
    ProvisionProductInput.add_member(:provisioning_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningParameters, name: "ProvisioningParameters"))
    ProvisionProductInput.add_member(:provisioning_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningPreferences, name: "ProvisioningPreferences"))
    ProvisionProductInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ProvisionProductInput.add_member(:notification_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationArns, name: "NotificationArns"))
    ProvisionProductInput.add_member(:provision_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "ProvisionToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ProvisionProductInput.type = Types::ProvisionProductInput
    ProvisionProductOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    ProvisionProductOutput.type = Types::ProvisionProductOutput
    ProvisionedProductAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductNameOrArn, name: "Name"))
    ProvisionedProductAttribute.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductNameOrArn, name: "Arn"))
    ProvisionedProductAttribute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductType, name: "Type"))
    ProvisionedProductAttribute.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ProvisionedProductAttribute.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductStatus, name: "Status"))
    ProvisionedProductAttribute.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductStatusMessage, name: "StatusMessage"))
    ProvisionedProductAttribute.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    ProvisionedProductAttribute.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken"))
    ProvisionedProductAttribute.add_member(:last_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "LastRecordId"))
    ProvisionedProductAttribute.add_member(:last_provisioning_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "LastProvisioningRecordId"))
    ProvisionedProductAttribute.add_member(:last_successful_provisioning_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "LastSuccessfulProvisioningRecordId"))
    ProvisionedProductAttribute.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ProvisionedProductAttribute.add_member(:physical_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalId, name: "PhysicalId"))
    ProvisionedProductAttribute.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ProvisionedProductAttribute.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "ProductName"))
    ProvisionedProductAttribute.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    ProvisionedProductAttribute.add_member(:provisioning_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "ProvisioningArtifactName"))
    ProvisionedProductAttribute.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: UserArn, name: "UserArn"))
    ProvisionedProductAttribute.add_member(:user_arn_session, ::Smithy::Schema::Shapes::MemberShape.new(target: UserArnSession, name: "UserArnSession"))
    ProvisionedProductAttribute.type = Types::ProvisionedProductAttribute
    ProvisionedProductAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductAttribute, name: "member")
    ProvisionedProductDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductNameOrArn, name: "Name"))
    ProvisionedProductDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductNameOrArn, name: "Arn"))
    ProvisionedProductDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductType, name: "Type"))
    ProvisionedProductDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductId, name: "Id"))
    ProvisionedProductDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductStatus, name: "Status"))
    ProvisionedProductDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductStatusMessage, name: "StatusMessage"))
    ProvisionedProductDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    ProvisionedProductDetail.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken"))
    ProvisionedProductDetail.add_member(:last_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LastRequestId, name: "LastRecordId"))
    ProvisionedProductDetail.add_member(:last_provisioning_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "LastProvisioningRecordId"))
    ProvisionedProductDetail.add_member(:last_successful_provisioning_record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "LastSuccessfulProvisioningRecordId"))
    ProvisionedProductDetail.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ProvisionedProductDetail.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    ProvisionedProductDetail.add_member(:launch_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "LaunchRoleArn"))
    ProvisionedProductDetail.type = Types::ProvisionedProductDetail
    ProvisionedProductDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductDetail, name: "member")
    ProvisionedProductFilters.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductViewFilterBy, name: "key")
    ProvisionedProductFilters.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductViewFilterValues, name: "value")
    ProvisionedProductPlanDetails.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    ProvisionedProductPlanDetails.add_member(:path_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PathId"))
    ProvisionedProductPlanDetails.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    ProvisionedProductPlanDetails.add_member(:plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanName, name: "PlanName"))
    ProvisionedProductPlanDetails.add_member(:plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PlanId"))
    ProvisionedProductPlanDetails.add_member(:provision_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionProductId"))
    ProvisionedProductPlanDetails.add_member(:provision_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionProductName"))
    ProvisionedProductPlanDetails.add_member(:plan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanType, name: "PlanType"))
    ProvisionedProductPlanDetails.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    ProvisionedProductPlanDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanStatus, name: "Status"))
    ProvisionedProductPlanDetails.add_member(:updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedTime, name: "UpdatedTime"))
    ProvisionedProductPlanDetails.add_member(:notification_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationArns, name: "NotificationArns"))
    ProvisionedProductPlanDetails.add_member(:provisioning_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProvisioningParameters, name: "ProvisioningParameters"))
    ProvisionedProductPlanDetails.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ProvisionedProductPlanDetails.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "StatusMessage"))
    ProvisionedProductPlanDetails.type = Types::ProvisionedProductPlanDetails
    ProvisionedProductPlanStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    ProvisionedProductPlanStatus.add_member(:create_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_SUCCESS", traits: {"smithy.api#enumValue" => "CREATE_SUCCESS"}))
    ProvisionedProductPlanStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ProvisionedProductPlanStatus.add_member(:execute_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "EXECUTE_IN_PROGRESS"}))
    ProvisionedProductPlanStatus.add_member(:execute_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_SUCCESS", traits: {"smithy.api#enumValue" => "EXECUTE_SUCCESS"}))
    ProvisionedProductPlanStatus.add_member(:execute_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTE_FAILED", traits: {"smithy.api#enumValue" => "EXECUTE_FAILED"}))
    ProvisionedProductPlanSummary.add_member(:plan_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanName, name: "PlanName"))
    ProvisionedProductPlanSummary.add_member(:plan_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PlanId"))
    ProvisionedProductPlanSummary.add_member(:provision_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionProductId"))
    ProvisionedProductPlanSummary.add_member(:provision_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionProductName"))
    ProvisionedProductPlanSummary.add_member(:plan_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanType, name: "PlanType"))
    ProvisionedProductPlanSummary.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    ProvisionedProductPlanSummary.type = Types::ProvisionedProductPlanSummary
    ProvisionedProductPlanType.add_member(:cloudformation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDFORMATION", traits: {"smithy.api#enumValue" => "CLOUDFORMATION"}))
    ProvisionedProductPlans.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductPlanSummary, name: "member")
    ProvisionedProductProperties.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyKey, name: "key")
    ProvisionedProductProperties.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyValue, name: "value")
    ProvisionedProductStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ProvisionedProductStatus.add_member(:under_change, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNDER_CHANGE", traits: {"smithy.api#enumValue" => "UNDER_CHANGE"}))
    ProvisionedProductStatus.add_member(:tainted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAINTED", traits: {"smithy.api#enumValue" => "TAINTED"}))
    ProvisionedProductStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ProvisionedProductStatus.add_member(:plan_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAN_IN_PROGRESS", traits: {"smithy.api#enumValue" => "PLAN_IN_PROGRESS"}))
    ProvisionedProductViewFilterBy.add_member(:search_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SearchQuery", traits: {"smithy.api#enumValue" => "SearchQuery"}))
    ProvisionedProductViewFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductViewFilterValue, name: "member")
    ProvisioningArtifact.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ProvisioningArtifact.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "Name"))
    ProvisioningArtifact.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDescription, name: "Description"))
    ProvisioningArtifact.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactCreatedTime, name: "CreatedTime"))
    ProvisioningArtifact.add_member(:guidance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactGuidance, name: "Guidance"))
    ProvisioningArtifact.type = Types::ProvisioningArtifact
    ProvisioningArtifactDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ProvisioningArtifactDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "Name"))
    ProvisioningArtifactDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "Description"))
    ProvisioningArtifactDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactType, name: "Type"))
    ProvisioningArtifactDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, name: "CreatedTime"))
    ProvisioningArtifactDetail.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactActive, name: "Active"))
    ProvisioningArtifactDetail.add_member(:guidance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactGuidance, name: "Guidance"))
    ProvisioningArtifactDetail.add_member(:source_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceRevision, name: "SourceRevision"))
    ProvisioningArtifactDetail.type = Types::ProvisioningArtifactDetail
    ProvisioningArtifactDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDetail, name: "member")
    ProvisioningArtifactGuidance.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ProvisioningArtifactGuidance.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ProvisioningArtifactInfo.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfoKey, name: "key")
    ProvisioningArtifactInfo.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfoValue, name: "value")
    ProvisioningArtifactOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactOutputKey, name: "Key"))
    ProvisioningArtifactOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDescription, name: "Description"))
    ProvisioningArtifactOutput.type = Types::ProvisioningArtifactOutput
    ProvisioningArtifactOutputs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactOutput, name: "member")
    ProvisioningArtifactParameter.add_member(:parameter_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "ParameterKey"))
    ProvisioningArtifactParameter.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultValue, name: "DefaultValue"))
    ProvisioningArtifactParameter.add_member(:parameter_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterType, name: "ParameterType"))
    ProvisioningArtifactParameter.add_member(:is_no_echo, ::Smithy::Schema::Shapes::MemberShape.new(target: NoEcho, name: "IsNoEcho", traits: {"smithy.api#default" => false}))
    ProvisioningArtifactParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    ProvisioningArtifactParameter.add_member(:parameter_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterConstraints, name: "ParameterConstraints"))
    ProvisioningArtifactParameter.type = Types::ProvisioningArtifactParameter
    ProvisioningArtifactParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactParameter, name: "member")
    ProvisioningArtifactPreferences.add_member(:stack_set_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetAccounts, name: "StackSetAccounts"))
    ProvisioningArtifactPreferences.add_member(:stack_set_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetRegions, name: "StackSetRegions"))
    ProvisioningArtifactPreferences.type = Types::ProvisioningArtifactPreferences
    ProvisioningArtifactProperties.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "Name"))
    ProvisioningArtifactProperties.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDescription, name: "Description"))
    ProvisioningArtifactProperties.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfo, name: "Info"))
    ProvisioningArtifactProperties.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactType, name: "Type"))
    ProvisioningArtifactProperties.add_member(:disable_template_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableTemplateValidation, name: "DisableTemplateValidation", traits: {"smithy.api#default" => false}))
    ProvisioningArtifactProperties.type = Types::ProvisioningArtifactProperties
    ProvisioningArtifactPropertyName.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Id", traits: {"smithy.api#enumValue" => "Id"}))
    ProvisioningArtifactSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactSummary, name: "member")
    ProvisioningArtifactSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ProvisioningArtifactSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "Name"))
    ProvisioningArtifactSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDescription, name: "Description"))
    ProvisioningArtifactSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactCreatedTime, name: "CreatedTime"))
    ProvisioningArtifactSummary.add_member(:provisioning_artifact_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfo, name: "ProvisioningArtifactMetadata"))
    ProvisioningArtifactSummary.type = Types::ProvisioningArtifactSummary
    ProvisioningArtifactType.add_member(:cloud_formation_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUD_FORMATION_TEMPLATE", traits: {"smithy.api#enumValue" => "CLOUD_FORMATION_TEMPLATE"}))
    ProvisioningArtifactType.add_member(:marketplace_ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETPLACE_AMI", traits: {"smithy.api#enumValue" => "MARKETPLACE_AMI"}))
    ProvisioningArtifactType.add_member(:marketplace_car, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETPLACE_CAR", traits: {"smithy.api#enumValue" => "MARKETPLACE_CAR"}))
    ProvisioningArtifactType.add_member(:terraform_open_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAFORM_OPEN_SOURCE", traits: {"smithy.api#enumValue" => "TERRAFORM_OPEN_SOURCE"}))
    ProvisioningArtifactType.add_member(:terraform_cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERRAFORM_CLOUD", traits: {"smithy.api#enumValue" => "TERRAFORM_CLOUD"}))
    ProvisioningArtifactType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    ProvisioningArtifactView.add_member(:product_view_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSummary, name: "ProductViewSummary"))
    ProvisioningArtifactView.add_member(:provisioning_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifact, name: "ProvisioningArtifact"))
    ProvisioningArtifactView.type = Types::ProvisioningArtifactView
    ProvisioningArtifactViews.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactView, name: "member")
    ProvisioningArtifacts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifact, name: "member")
    ProvisioningParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "Key"))
    ProvisioningParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "Value"))
    ProvisioningParameter.type = Types::ProvisioningParameter
    ProvisioningParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningParameter, name: "member")
    ProvisioningPreferences.add_member(:stack_set_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetAccounts, name: "StackSetAccounts"))
    ProvisioningPreferences.add_member(:stack_set_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetRegions, name: "StackSetRegions"))
    ProvisioningPreferences.add_member(:stack_set_failure_tolerance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetFailureToleranceCount, name: "StackSetFailureToleranceCount"))
    ProvisioningPreferences.add_member(:stack_set_failure_tolerance_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetFailureTolerancePercentage, name: "StackSetFailureTolerancePercentage"))
    ProvisioningPreferences.add_member(:stack_set_max_concurrency_count, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetMaxConcurrencyCount, name: "StackSetMaxConcurrencyCount"))
    ProvisioningPreferences.add_member(:stack_set_max_concurrency_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetMaxConcurrencyPercentage, name: "StackSetMaxConcurrencyPercentage"))
    ProvisioningPreferences.type = Types::ProvisioningPreferences
    RecordDetail.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RecordId"))
    RecordDetail.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductName, name: "ProvisionedProductName"))
    RecordDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordStatus, name: "Status"))
    RecordDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedTime, name: "CreatedTime"))
    RecordDetail.add_member(:updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedTime, name: "UpdatedTime"))
    RecordDetail.add_member(:provisioned_product_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductType, name: "ProvisionedProductType"))
    RecordDetail.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "RecordType"))
    RecordDetail.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId"))
    RecordDetail.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    RecordDetail.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    RecordDetail.add_member(:path_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PathId"))
    RecordDetail.add_member(:record_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordErrors, name: "RecordErrors"))
    RecordDetail.add_member(:record_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTags, name: "RecordTags"))
    RecordDetail.add_member(:launch_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "LaunchRoleArn"))
    RecordDetail.type = Types::RecordDetail
    RecordDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "member")
    RecordError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "Code"))
    RecordError.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDescription, name: "Description"))
    RecordError.type = Types::RecordError
    RecordErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecordError, name: "member")
    RecordOutput.add_member(:output_key, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputKey, name: "OutputKey"))
    RecordOutput.add_member(:output_value, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputValue, name: "OutputValue"))
    RecordOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    RecordOutput.type = Types::RecordOutput
    RecordOutputs.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecordOutput, name: "member")
    RecordStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    RecordStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    RecordStatus.add_member(:in_progress_in_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS_IN_ERROR", traits: {"smithy.api#enumValue" => "IN_PROGRESS_IN_ERROR"}))
    RecordStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    RecordStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RecordTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTagKey, name: "Key"))
    RecordTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTagValue, name: "Value"))
    RecordTag.type = Types::RecordTag
    RecordTags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTag, name: "member")
    RejectPortfolioShareInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    RejectPortfolioShareInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    RejectPortfolioShareInput.add_member(:portfolio_share_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioShareType, name: "PortfolioShareType"))
    RejectPortfolioShareInput.type = Types::RejectPortfolioShareInput
    RejectPortfolioShareOutput.type = Types::RejectPortfolioShareOutput
    Replacement.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "TRUE"}))
    Replacement.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "FALSE"}))
    Replacement.add_member(:conditional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONDITIONAL", traits: {"smithy.api#enumValue" => "CONDITIONAL"}))
    RequiresRecreation.add_member(:never, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEVER", traits: {"smithy.api#enumValue" => "NEVER"}))
    RequiresRecreation.add_member(:conditionally, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONDITIONALLY", traits: {"smithy.api#enumValue" => "CONDITIONALLY"}))
    RequiresRecreation.add_member(:always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS", traits: {"smithy.api#enumValue" => "ALWAYS"}))
    ResourceAttribute.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROPERTIES", traits: {"smithy.api#enumValue" => "PROPERTIES"}))
    ResourceAttribute.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA", traits: {"smithy.api#enumValue" => "METADATA"}))
    ResourceAttribute.add_member(:creationpolicy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATIONPOLICY", traits: {"smithy.api#enumValue" => "CREATIONPOLICY"}))
    ResourceAttribute.add_member(:updatepolicy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATEPOLICY", traits: {"smithy.api#enumValue" => "UPDATEPOLICY"}))
    ResourceAttribute.add_member(:deletionpolicy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETIONPOLICY", traits: {"smithy.api#enumValue" => "DELETIONPOLICY"}))
    ResourceAttribute.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ResourceChange.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeAction, name: "Action"))
    ResourceChange.add_member(:logical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LogicalResourceId, name: "LogicalResourceId"))
    ResourceChange.add_member(:physical_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PhysicalResourceId, name: "PhysicalResourceId"))
    ResourceChange.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlanResourceType, name: "ResourceType"))
    ResourceChange.add_member(:replacement, ::Smithy::Schema::Shapes::MemberShape.new(target: Replacement, name: "Replacement"))
    ResourceChange.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    ResourceChange.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChangeDetails, name: "Details"))
    ResourceChange.type = Types::ResourceChange
    ResourceChangeDetail.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTargetDefinition, name: "Target"))
    ResourceChangeDetail.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluationType, name: "Evaluation"))
    ResourceChangeDetail.add_member(:causing_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: CausingEntity, name: "CausingEntity"))
    ResourceChangeDetail.type = Types::ResourceChangeDetail
    ResourceChangeDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChangeDetail, name: "member")
    ResourceChanges.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceChange, name: "member")
    ResourceDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetailId, name: "Id"))
    ResourceDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetailARN, name: "ARN"))
    ResourceDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetailName, name: "Name"))
    ResourceDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetailDescription, name: "Description"))
    ResourceDetail.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetailCreatedTime, name: "CreatedTime"))
    ResourceDetail.type = Types::ResourceDetail
    ResourceDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDetail, name: "member")
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTargetDefinition.add_member(:attribute, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAttribute, name: "Attribute"))
    ResourceTargetDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PropertyName, name: "Name"))
    ResourceTargetDefinition.add_member(:requires_recreation, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiresRecreation, name: "RequiresRecreation"))
    ResourceTargetDefinition.type = Types::ResourceTargetDefinition
    ScanProvisionedProductsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    ScanProvisionedProductsInput.add_member(:access_level_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevelFilter, name: "AccessLevelFilter"))
    ScanProvisionedProductsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    ScanProvisionedProductsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    ScanProvisionedProductsInput.type = Types::ScanProvisionedProductsInput
    ScanProvisionedProductsOutput.add_member(:provisioned_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductDetails, name: "ProvisionedProducts"))
    ScanProvisionedProductsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    ScanProvisionedProductsOutput.type = Types::ScanProvisionedProductsOutput
    Scope.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceAttribute, name: "member")
    SearchProductsAsAdminInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    SearchProductsAsAdminInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId"))
    SearchProductsAsAdminInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewFilters, name: "Filters"))
    SearchProductsAsAdminInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSortBy, name: "SortBy"))
    SearchProductsAsAdminInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    SearchProductsAsAdminInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    SearchProductsAsAdminInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    SearchProductsAsAdminInput.add_member(:product_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductSource, name: "ProductSource"))
    SearchProductsAsAdminInput.type = Types::SearchProductsAsAdminInput
    SearchProductsAsAdminOutput.add_member(:product_view_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewDetails, name: "ProductViewDetails"))
    SearchProductsAsAdminOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    SearchProductsAsAdminOutput.type = Types::SearchProductsAsAdminOutput
    SearchProductsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    SearchProductsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewFilters, name: "Filters"))
    SearchProductsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSizeMax100, name: "PageSize", traits: {"smithy.api#default" => 0}))
    SearchProductsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSortBy, name: "SortBy"))
    SearchProductsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    SearchProductsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    SearchProductsInput.type = Types::SearchProductsInput
    SearchProductsOutput.add_member(:product_view_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewSummaries, name: "ProductViewSummaries"))
    SearchProductsOutput.add_member(:product_view_aggregations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewAggregations, name: "ProductViewAggregations"))
    SearchProductsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    SearchProductsOutput.type = Types::SearchProductsOutput
    SearchProvisionedProductsInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    SearchProvisionedProductsInput.add_member(:access_level_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLevelFilter, name: "AccessLevelFilter"))
    SearchProvisionedProductsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductFilters, name: "Filters"))
    SearchProvisionedProductsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortField, name: "SortBy"))
    SearchProvisionedProductsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    SearchProvisionedProductsInput.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchProvisionedProductsPageSize, name: "PageSize", traits: {"smithy.api#default" => 0}))
    SearchProvisionedProductsInput.add_member(:page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "PageToken"))
    SearchProvisionedProductsInput.type = Types::SearchProvisionedProductsInput
    SearchProvisionedProductsOutput.add_member(:provisioned_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductAttributes, name: "ProvisionedProducts"))
    SearchProvisionedProductsOutput.add_member(:total_results_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalResultsCount, name: "TotalResultsCount", traits: {"smithy.api#default" => 0}))
    SearchProvisionedProductsOutput.add_member(:next_page_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PageToken, name: "NextPageToken"))
    SearchProvisionedProductsOutput.type = Types::SearchProvisionedProductsOutput
    ServiceActionAssociation.add_member(:service_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ServiceActionId", traits: {"smithy.api#required" => {}}))
    ServiceActionAssociation.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    ServiceActionAssociation.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    ServiceActionAssociation.type = Types::ServiceActionAssociation
    ServiceActionAssociationErrorCode.add_member(:duplicate_resource_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DuplicateResourceException", traits: {"smithy.api#enumValue" => "DUPLICATE_RESOURCE"}))
    ServiceActionAssociationErrorCode.add_member(:internal_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InternalFailure", traits: {"smithy.api#enumValue" => "INTERNAL_FAILURE"}))
    ServiceActionAssociationErrorCode.add_member(:limit_exceeded_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LimitExceededException", traits: {"smithy.api#enumValue" => "LIMIT_EXCEEDED"}))
    ServiceActionAssociationErrorCode.add_member(:resource_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ResourceNotFoundException", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    ServiceActionAssociationErrorCode.add_member(:throttling_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ThrottlingException", traits: {"smithy.api#enumValue" => "THROTTLING"}))
    ServiceActionAssociationErrorCode.add_member(:invalid_parameter_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InvalidParameterException", traits: {"smithy.api#enumValue" => "INVALID_PARAMETER"}))
    ServiceActionAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionAssociation, name: "member")
    ServiceActionDefinitionKey.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Name", traits: {"smithy.api#enumValue" => "Name"}))
    ServiceActionDefinitionKey.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Version", traits: {"smithy.api#enumValue" => "Version"}))
    ServiceActionDefinitionKey.add_member(:assume_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AssumeRole", traits: {"smithy.api#enumValue" => "AssumeRole"}))
    ServiceActionDefinitionKey.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Parameters", traits: {"smithy.api#enumValue" => "Parameters"}))
    ServiceActionDefinitionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionKey, name: "key")
    ServiceActionDefinitionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionValue, name: "value")
    ServiceActionDefinitionType.add_member(:ssm_automation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SsmAutomation", traits: {"smithy.api#enumValue" => "SSM_AUTOMATION"}))
    ServiceActionDetail.add_member(:service_action_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionSummary, name: "ServiceActionSummary"))
    ServiceActionDetail.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionMap, name: "Definition"))
    ServiceActionDetail.type = Types::ServiceActionDetail
    ServiceActionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionSummary, name: "member")
    ServiceActionSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    ServiceActionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionName, name: "Name"))
    ServiceActionSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDescription, name: "Description"))
    ServiceActionSummary.add_member(:definition_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionType, name: "DefinitionType"))
    ServiceActionSummary.type = Types::ServiceActionSummary
    ShareDetails.add_member(:successful_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulShares, name: "SuccessfulShares"))
    ShareDetails.add_member(:share_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareErrors, name: "ShareErrors"))
    ShareDetails.type = Types::ShareDetails
    ShareError.add_member(:accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespaces, name: "Accounts"))
    ShareError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ShareError.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: Error, name: "Error"))
    ShareError.type = Types::ShareError
    ShareErrors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShareError, name: "member")
    ShareStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ShareStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ShareStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ShareStatus.add_member(:completed_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_WITH_ERRORS", traits: {"smithy.api#enumValue" => "COMPLETED_WITH_ERRORS"}))
    ShareStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SourceConnection.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "Type"))
    SourceConnection.add_member(:connection_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectionParameters, name: "ConnectionParameters", traits: {"smithy.api#required" => {}}))
    SourceConnection.type = Types::SourceConnection
    SourceConnectionDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "Type"))
    SourceConnectionDetail.add_member(:connection_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnectionParameters, name: "ConnectionParameters"))
    SourceConnectionDetail.add_member(:last_sync, ::Smithy::Schema::Shapes::MemberShape.new(target: LastSync, name: "LastSync"))
    SourceConnectionDetail.type = Types::SourceConnectionDetail
    SourceConnectionParameters.add_member(:code_star, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeStarParameters, name: "CodeStar"))
    SourceConnectionParameters.type = Types::SourceConnectionParameters
    SourceProvisioningArtifactProperties.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SourceProvisioningArtifactPropertiesMap, name: "member")
    SourceProvisioningArtifactPropertiesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactPropertyName, name: "key")
    SourceProvisioningArtifactPropertiesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactPropertyValue, name: "value")
    SourceType.add_member(:codestar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODESTAR", traits: {"smithy.api#enumValue" => "CODESTAR"}))
    StackInstance.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Account"))
    StackInstance.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "Region"))
    StackInstance.add_member(:stack_instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstanceStatus, name: "StackInstanceStatus"))
    StackInstance.type = Types::StackInstance
    StackInstanceStatus.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "CURRENT"}))
    StackInstanceStatus.add_member(:outdated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTDATED", traits: {"smithy.api#enumValue" => "OUTDATED"}))
    StackInstanceStatus.add_member(:inoperable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INOPERABLE", traits: {"smithy.api#enumValue" => "INOPERABLE"}))
    StackInstances.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StackInstance, name: "member")
    StackSetAccounts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    StackSetOperationType.add_member(:create, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE", traits: {"smithy.api#enumValue" => "CREATE"}))
    StackSetOperationType.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    StackSetOperationType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    StackSetRegions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member")
    Status.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    Status.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    Status.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SuccessfulShares.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeys.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagOptionDetail.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionKey, name: "Key"))
    TagOptionDetail.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionValue, name: "Value"))
    TagOptionDetail.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionActive, name: "Active"))
    TagOptionDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "Id"))
    TagOptionDetail.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    TagOptionDetail.type = Types::TagOptionDetail
    TagOptionDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetail, name: "member")
    TagOptionNotMigratedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TagOptionNotMigratedException.type = Types::TagOptionNotMigratedException
    TagOptionSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionSummary, name: "member")
    TagOptionSummary.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionKey, name: "Key"))
    TagOptionSummary.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionValues, name: "Values"))
    TagOptionSummary.type = Types::TagOptionSummary
    TagOptionValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionValue, name: "member")
    Tags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TerminateProvisionedProductInput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductNameOrArn, name: "ProvisionedProductName"))
    TerminateProvisionedProductInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId"))
    TerminateProvisionedProductInput.add_member(:terminate_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "TerminateToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    TerminateProvisionedProductInput.add_member(:ignore_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoreErrors, name: "IgnoreErrors", traits: {"smithy.api#default" => false}))
    TerminateProvisionedProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    TerminateProvisionedProductInput.add_member(:retain_physical_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: RetainPhysicalResources, name: "RetainPhysicalResources", traits: {"smithy.api#default" => false}))
    TerminateProvisionedProductInput.type = Types::TerminateProvisionedProductInput
    TerminateProvisionedProductOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    TerminateProvisionedProductOutput.type = Types::TerminateProvisionedProductOutput
    UniqueTagResourceIdentifier.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueTagKey, name: "Key"))
    UniqueTagResourceIdentifier.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueTagValue, name: "Value"))
    UniqueTagResourceIdentifier.type = Types::UniqueTagResourceIdentifier
    UpdateConstraintInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdateConstraintInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateConstraintInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDescription, name: "Description"))
    UpdateConstraintInput.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintParameters, name: "Parameters"))
    UpdateConstraintInput.type = Types::UpdateConstraintInput
    UpdateConstraintOutput.add_member(:constraint_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintDetail, name: "ConstraintDetail"))
    UpdateConstraintOutput.add_member(:constraint_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ConstraintParameters, name: "ConstraintParameters"))
    UpdateConstraintOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    UpdateConstraintOutput.type = Types::UpdateConstraintOutput
    UpdatePortfolioInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdatePortfolioInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdatePortfolioInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDisplayName, name: "DisplayName"))
    UpdatePortfolioInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDescription, name: "Description"))
    UpdatePortfolioInput.add_member(:provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderName, name: "ProviderName"))
    UpdatePortfolioInput.add_member(:add_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: AddTags, name: "AddTags"))
    UpdatePortfolioInput.add_member(:remove_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "RemoveTags"))
    UpdatePortfolioInput.type = Types::UpdatePortfolioInput
    UpdatePortfolioOutput.add_member(:portfolio_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDetail, name: "PortfolioDetail"))
    UpdatePortfolioOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    UpdatePortfolioOutput.type = Types::UpdatePortfolioOutput
    UpdatePortfolioShareInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdatePortfolioShareInput.add_member(:portfolio_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioId", traits: {"smithy.api#required" => {}}))
    UpdatePortfolioShareInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    UpdatePortfolioShareInput.add_member(:organization_node, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationNode, name: "OrganizationNode"))
    UpdatePortfolioShareInput.add_member(:share_tag_options, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "ShareTagOptions"))
    UpdatePortfolioShareInput.add_member(:share_principals, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "SharePrincipals"))
    UpdatePortfolioShareInput.type = Types::UpdatePortfolioShareInput
    UpdatePortfolioShareOutput.add_member(:portfolio_share_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PortfolioShareToken"))
    UpdatePortfolioShareOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, name: "Status"))
    UpdatePortfolioShareOutput.type = Types::UpdatePortfolioShareOutput
    UpdateProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdateProductInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateProductInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "Name"))
    UpdateProductInput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewOwner, name: "Owner"))
    UpdateProductInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewShortDescription, name: "Description"))
    UpdateProductInput.add_member(:distributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewOwner, name: "Distributor"))
    UpdateProductInput.add_member(:support_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportDescription, name: "SupportDescription"))
    UpdateProductInput.add_member(:support_email, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportEmail, name: "SupportEmail"))
    UpdateProductInput.add_member(:support_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportUrl, name: "SupportUrl"))
    UpdateProductInput.add_member(:add_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: AddTags, name: "AddTags"))
    UpdateProductInput.add_member(:remove_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "RemoveTags"))
    UpdateProductInput.add_member(:source_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceConnection, name: "SourceConnection"))
    UpdateProductInput.type = Types::UpdateProductInput
    UpdateProductOutput.add_member(:product_view_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewDetail, name: "ProductViewDetail"))
    UpdateProductOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    UpdateProductOutput.type = Types::UpdateProductOutput
    UpdateProvisionedProductInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdateProvisionedProductInput.add_member(:provisioned_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductNameOrArn, name: "ProvisionedProductName"))
    UpdateProvisionedProductInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId"))
    UpdateProvisionedProductInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId"))
    UpdateProvisionedProductInput.add_member(:product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductViewName, name: "ProductName"))
    UpdateProvisionedProductInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId"))
    UpdateProvisionedProductInput.add_member(:provisioning_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "ProvisioningArtifactName"))
    UpdateProvisionedProductInput.add_member(:path_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "PathId"))
    UpdateProvisionedProductInput.add_member(:path_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PortfolioDisplayName, name: "PathName"))
    UpdateProvisionedProductInput.add_member(:provisioning_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProvisioningParameters, name: "ProvisioningParameters"))
    UpdateProvisionedProductInput.add_member(:provisioning_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProvisioningPreferences, name: "ProvisioningPreferences"))
    UpdateProvisionedProductInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    UpdateProvisionedProductInput.add_member(:update_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "UpdateToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateProvisionedProductInput.type = Types::UpdateProvisionedProductInput
    UpdateProvisionedProductOutput.add_member(:record_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDetail, name: "RecordDetail"))
    UpdateProvisionedProductOutput.type = Types::UpdateProvisionedProductOutput
    UpdateProvisionedProductPropertiesInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdateProvisionedProductPropertiesInput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId", traits: {"smithy.api#required" => {}}))
    UpdateProvisionedProductPropertiesInput.add_member(:provisioned_product_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductProperties, name: "ProvisionedProductProperties", traits: {"smithy.api#required" => {}}))
    UpdateProvisionedProductPropertiesInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdempotencyToken, name: "IdempotencyToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateProvisionedProductPropertiesInput.type = Types::UpdateProvisionedProductPropertiesInput
    UpdateProvisionedProductPropertiesOutput.add_member(:provisioned_product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisionedProductId"))
    UpdateProvisionedProductPropertiesOutput.add_member(:provisioned_product_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedProductProperties, name: "ProvisionedProductProperties"))
    UpdateProvisionedProductPropertiesOutput.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RecordId"))
    UpdateProvisionedProductPropertiesOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordStatus, name: "Status"))
    UpdateProvisionedProductPropertiesOutput.type = Types::UpdateProvisionedProductPropertiesOutput
    UpdateProvisioningArtifactInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdateProvisioningArtifactInput.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProductId", traits: {"smithy.api#required" => {}}))
    UpdateProvisioningArtifactInput.add_member(:provisioning_artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "ProvisioningArtifactId", traits: {"smithy.api#required" => {}}))
    UpdateProvisioningArtifactInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactName, name: "Name"))
    UpdateProvisioningArtifactInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDescription, name: "Description"))
    UpdateProvisioningArtifactInput.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactActive, name: "Active"))
    UpdateProvisioningArtifactInput.add_member(:guidance, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactGuidance, name: "Guidance"))
    UpdateProvisioningArtifactInput.type = Types::UpdateProvisioningArtifactInput
    UpdateProvisioningArtifactOutput.add_member(:provisioning_artifact_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactDetail, name: "ProvisioningArtifactDetail"))
    UpdateProvisioningArtifactOutput.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisioningArtifactInfo, name: "Info"))
    UpdateProvisioningArtifactOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "Status"))
    UpdateProvisioningArtifactOutput.type = Types::UpdateProvisioningArtifactOutput
    UpdateProvisioningParameter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterKey, name: "Key"))
    UpdateProvisioningParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterValue, name: "Value"))
    UpdateProvisioningParameter.add_member(:use_previous_value, ::Smithy::Schema::Shapes::MemberShape.new(target: UsePreviousValue, name: "UsePreviousValue", traits: {"smithy.api#default" => false}))
    UpdateProvisioningParameter.type = Types::UpdateProvisioningParameter
    UpdateProvisioningParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateProvisioningParameter, name: "member")
    UpdateProvisioningPreferences.add_member(:stack_set_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetAccounts, name: "StackSetAccounts"))
    UpdateProvisioningPreferences.add_member(:stack_set_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetRegions, name: "StackSetRegions"))
    UpdateProvisioningPreferences.add_member(:stack_set_failure_tolerance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetFailureToleranceCount, name: "StackSetFailureToleranceCount"))
    UpdateProvisioningPreferences.add_member(:stack_set_failure_tolerance_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetFailureTolerancePercentage, name: "StackSetFailureTolerancePercentage"))
    UpdateProvisioningPreferences.add_member(:stack_set_max_concurrency_count, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetMaxConcurrencyCount, name: "StackSetMaxConcurrencyCount"))
    UpdateProvisioningPreferences.add_member(:stack_set_max_concurrency_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetMaxConcurrencyPercentage, name: "StackSetMaxConcurrencyPercentage"))
    UpdateProvisioningPreferences.add_member(:stack_set_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StackSetOperationType, name: "StackSetOperationType"))
    UpdateProvisioningPreferences.type = Types::UpdateProvisioningPreferences
    UpdateServiceActionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateServiceActionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionName, name: "Name"))
    UpdateServiceActionInput.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDefinitionMap, name: "Definition"))
    UpdateServiceActionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDescription, name: "Description"))
    UpdateServiceActionInput.add_member(:accept_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptLanguage, name: "AcceptLanguage"))
    UpdateServiceActionInput.type = Types::UpdateServiceActionInput
    UpdateServiceActionOutput.add_member(:service_action_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceActionDetail, name: "ServiceActionDetail"))
    UpdateServiceActionOutput.type = Types::UpdateServiceActionOutput
    UpdateTagOptionInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionId, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateTagOptionInput.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionValue, name: "Value"))
    UpdateTagOptionInput.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionActive, name: "Active"))
    UpdateTagOptionInput.type = Types::UpdateTagOptionInput
    UpdateTagOptionOutput.add_member(:tag_option_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: TagOptionDetail, name: "TagOptionDetail"))
    UpdateTagOptionOutput.type = Types::UpdateTagOptionOutput
    UsageInstruction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionType, name: "Type"))
    UsageInstruction.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: InstructionValue, name: "Value"))
    UsageInstruction.type = Types::UsageInstruction
    UsageInstructions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UsageInstruction, name: "member")

    AWS242ServiceCatalogService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicecatalog#AWS242ServiceCatalogService"
      service.name = "AWS242ServiceCatalogService"
      service.version = "2015-12-10"
      service.traits = {"aws.api#service" => {"sdkId" => "Service Catalog", "arnNamespace" => "servicecatalog", "cloudFormationName" => "ServiceCatalog", "cloudTrailEventSource" => "servicecatalog.amazonaws.com", "docId" => "servicecatalog-2015-12-10", "endpointPrefix" => "servicecatalog"}, "aws.auth#sigv4" => {"name" => "servicecatalog"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Service Catalog"}
      service.add_operation(:accept_portfolio_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AcceptPortfolioShare"
        operation.name = "AcceptPortfolioShare"
        operation.input = AcceptPortfolioShareInput
        operation.output = AcceptPortfolioShareOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_budget_with_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateBudgetWithResource"
        operation.name = "AssociateBudgetWithResource"
        operation.input = AssociateBudgetWithResourceInput
        operation.output = AssociateBudgetWithResourceOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_principal_with_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociatePrincipalWithPortfolio"
        operation.name = "AssociatePrincipalWithPortfolio"
        operation.input = AssociatePrincipalWithPortfolioInput
        operation.output = AssociatePrincipalWithPortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_product_with_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateProductWithPortfolio"
        operation.name = "AssociateProductWithPortfolio"
        operation.input = AssociateProductWithPortfolioInput
        operation.output = AssociateProductWithPortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_service_action_with_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateServiceActionWithProvisioningArtifact"
        operation.name = "AssociateServiceActionWithProvisioningArtifact"
        operation.input = AssociateServiceActionWithProvisioningArtifactInput
        operation.output = AssociateServiceActionWithProvisioningArtifactOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_tag_option_with_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#AssociateTagOptionWithResource"
        operation.name = "AssociateTagOptionWithResource"
        operation.input = AssociateTagOptionWithResourceInput
        operation.output = AssociateTagOptionWithResourceOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_service_action_with_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#BatchAssociateServiceActionWithProvisioningArtifact"
        operation.name = "BatchAssociateServiceActionWithProvisioningArtifact"
        operation.input = BatchAssociateServiceActionWithProvisioningArtifactInput
        operation.output = BatchAssociateServiceActionWithProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_service_action_from_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#BatchDisassociateServiceActionFromProvisioningArtifact"
        operation.name = "BatchDisassociateServiceActionFromProvisioningArtifact"
        operation.input = BatchDisassociateServiceActionFromProvisioningArtifactInput
        operation.output = BatchDisassociateServiceActionFromProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
      end)
      service.add_operation(:copy_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CopyProduct"
        operation.name = "CopyProduct"
        operation.input = CopyProductInput
        operation.output = CopyProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_constraint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateConstraint"
        operation.name = "CreateConstraint"
        operation.input = CreateConstraintInput
        operation.output = CreateConstraintOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreatePortfolio"
        operation.name = "CreatePortfolio"
        operation.input = CreatePortfolioInput
        operation.output = CreatePortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:create_portfolio_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreatePortfolioShare"
        operation.name = "CreatePortfolioShare"
        operation.input = CreatePortfolioShareInput
        operation.output = CreatePortfolioShareOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << LimitExceededException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateProduct"
        operation.name = "CreateProduct"
        operation.input = CreateProductInput
        operation.output = CreateProductOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:create_provisioned_product_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateProvisionedProductPlan"
        operation.name = "CreateProvisionedProductPlan"
        operation.input = CreateProvisionedProductPlanInput
        operation.output = CreateProvisionedProductPlanOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateProvisioningArtifact"
        operation.name = "CreateProvisioningArtifact"
        operation.input = CreateProvisioningArtifactInput
        operation.output = CreateProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_service_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateServiceAction"
        operation.name = "CreateServiceAction"
        operation.input = CreateServiceActionInput
        operation.output = CreateServiceActionOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_tag_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#CreateTagOption"
        operation.name = "CreateTagOption"
        operation.input = CreateTagOptionInput
        operation.output = CreateTagOptionOutput
        operation.errors << DuplicateResourceException
        operation.errors << LimitExceededException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:delete_constraint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteConstraint"
        operation.name = "DeleteConstraint"
        operation.input = DeleteConstraintInput
        operation.output = DeleteConstraintOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeletePortfolio"
        operation.name = "DeletePortfolio"
        operation.input = DeletePortfolioInput
        operation.output = DeletePortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:delete_portfolio_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeletePortfolioShare"
        operation.name = "DeletePortfolioShare"
        operation.input = DeletePortfolioShareInput
        operation.output = DeletePortfolioShareOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteProduct"
        operation.name = "DeleteProduct"
        operation.input = DeleteProductInput
        operation.output = DeleteProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:delete_provisioned_product_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteProvisionedProductPlan"
        operation.name = "DeleteProvisionedProductPlan"
        operation.input = DeleteProvisionedProductPlanInput
        operation.output = DeleteProvisionedProductPlanOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteProvisioningArtifact"
        operation.name = "DeleteProvisioningArtifact"
        operation.input = DeleteProvisioningArtifactInput
        operation.output = DeleteProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_service_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteServiceAction"
        operation.name = "DeleteServiceAction"
        operation.input = DeleteServiceActionInput
        operation.output = DeleteServiceActionOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_tag_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DeleteTagOption"
        operation.name = "DeleteTagOption"
        operation.input = DeleteTagOptionInput
        operation.output = DeleteTagOptionOutput
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:describe_constraint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeConstraint"
        operation.name = "DescribeConstraint"
        operation.input = DescribeConstraintInput
        operation.output = DescribeConstraintOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_copy_product_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeCopyProductStatus"
        operation.name = "DescribeCopyProductStatus"
        operation.input = DescribeCopyProductStatusInput
        operation.output = DescribeCopyProductStatusOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribePortfolio"
        operation.name = "DescribePortfolio"
        operation.input = DescribePortfolioInput
        operation.output = DescribePortfolioOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_portfolio_share_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribePortfolioShareStatus"
        operation.name = "DescribePortfolioShareStatus"
        operation.input = DescribePortfolioShareStatusInput
        operation.output = DescribePortfolioShareStatusOutput
        operation.errors << InvalidParametersException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_portfolio_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribePortfolioShares"
        operation.name = "DescribePortfolioShares"
        operation.input = DescribePortfolioSharesInput
        operation.output = DescribePortfolioSharesOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePortfolioShares.new
      end)
      service.add_operation(:describe_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProduct"
        operation.name = "DescribeProduct"
        operation.input = DescribeProductInput
        operation.output = DescribeProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_product_as_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProductAsAdmin"
        operation.name = "DescribeProductAsAdmin"
        operation.input = DescribeProductAsAdminInput
        operation.output = DescribeProductAsAdminOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_product_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProductView"
        operation.name = "DescribeProductView"
        operation.input = DescribeProductViewInput
        operation.output = DescribeProductViewOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioned_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisionedProduct"
        operation.name = "DescribeProvisionedProduct"
        operation.input = DescribeProvisionedProductInput
        operation.output = DescribeProvisionedProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioned_product_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisionedProductPlan"
        operation.name = "DescribeProvisionedProductPlan"
        operation.input = DescribeProvisionedProductPlanInput
        operation.output = DescribeProvisionedProductPlanOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisioningArtifact"
        operation.name = "DescribeProvisioningArtifact"
        operation.input = DescribeProvisioningArtifactInput
        operation.output = DescribeProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_provisioning_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeProvisioningParameters"
        operation.name = "DescribeProvisioningParameters"
        operation.input = DescribeProvisioningParametersInput
        operation.output = DescribeProvisioningParametersOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeRecord"
        operation.name = "DescribeRecord"
        operation.input = DescribeRecordInput
        operation.output = DescribeRecordOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_service_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeServiceAction"
        operation.name = "DescribeServiceAction"
        operation.input = DescribeServiceActionInput
        operation.output = DescribeServiceActionOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_service_action_execution_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeServiceActionExecutionParameters"
        operation.name = "DescribeServiceActionExecutionParameters"
        operation.input = DescribeServiceActionExecutionParametersInput
        operation.output = DescribeServiceActionExecutionParametersOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_tag_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DescribeTagOption"
        operation.name = "DescribeTagOption"
        operation.input = DescribeTagOptionInput
        operation.output = DescribeTagOptionOutput
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:disable_aws_organizations_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisableAWSOrganizationsAccess"
        operation.name = "DisableAWSOrganizationsAccess"
        operation.input = DisableAWSOrganizationsAccessInput
        operation.output = DisableAWSOrganizationsAccessOutput
        operation.errors << InvalidStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_budget_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateBudgetFromResource"
        operation.name = "DisassociateBudgetFromResource"
        operation.input = DisassociateBudgetFromResourceInput
        operation.output = DisassociateBudgetFromResourceOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_principal_from_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociatePrincipalFromPortfolio"
        operation.name = "DisassociatePrincipalFromPortfolio"
        operation.input = DisassociatePrincipalFromPortfolioInput
        operation.output = DisassociatePrincipalFromPortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_product_from_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateProductFromPortfolio"
        operation.name = "DisassociateProductFromPortfolio"
        operation.input = DisassociateProductFromPortfolioInput
        operation.output = DisassociateProductFromPortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_service_action_from_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateServiceActionFromProvisioningArtifact"
        operation.name = "DisassociateServiceActionFromProvisioningArtifact"
        operation.input = DisassociateServiceActionFromProvisioningArtifactInput
        operation.output = DisassociateServiceActionFromProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_tag_option_from_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#DisassociateTagOptionFromResource"
        operation.name = "DisassociateTagOptionFromResource"
        operation.input = DisassociateTagOptionFromResourceInput
        operation.output = DisassociateTagOptionFromResourceOutput
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:enable_aws_organizations_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#EnableAWSOrganizationsAccess"
        operation.name = "EnableAWSOrganizationsAccess"
        operation.input = EnableAWSOrganizationsAccessInput
        operation.output = EnableAWSOrganizationsAccessOutput
        operation.errors << InvalidStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:execute_provisioned_product_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ExecuteProvisionedProductPlan"
        operation.name = "ExecuteProvisionedProductPlan"
        operation.input = ExecuteProvisionedProductPlanInput
        operation.output = ExecuteProvisionedProductPlanOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:execute_provisioned_product_service_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ExecuteProvisionedProductServiceAction"
        operation.name = "ExecuteProvisionedProductServiceAction"
        operation.input = ExecuteProvisionedProductServiceActionInput
        operation.output = ExecuteProvisionedProductServiceActionOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_aws_organizations_access_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#GetAWSOrganizationsAccessStatus"
        operation.name = "GetAWSOrganizationsAccessStatus"
        operation.input = GetAWSOrganizationsAccessStatusInput
        operation.output = GetAWSOrganizationsAccessStatusOutput
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_provisioned_product_outputs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#GetProvisionedProductOutputs"
        operation.name = "GetProvisionedProductOutputs"
        operation.input = GetProvisionedProductOutputsInput
        operation.output = GetProvisionedProductOutputsOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::GetProvisionedProductOutputs.new
      end)
      service.add_operation(:import_as_provisioned_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ImportAsProvisionedProduct"
        operation.name = "ImportAsProvisionedProduct"
        operation.input = ImportAsProvisionedProductInput
        operation.output = ImportAsProvisionedProductOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_accepted_portfolio_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListAcceptedPortfolioShares"
        operation.name = "ListAcceptedPortfolioShares"
        operation.input = ListAcceptedPortfolioSharesInput
        operation.output = ListAcceptedPortfolioSharesOutput
        operation.errors << InvalidParametersException
        operation.errors << OperationNotSupportedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAcceptedPortfolioShares.new
      end)
      service.add_operation(:list_budgets_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListBudgetsForResource"
        operation.name = "ListBudgetsForResource"
        operation.input = ListBudgetsForResourceInput
        operation.output = ListBudgetsForResourceOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListBudgetsForResource.new
      end)
      service.add_operation(:list_constraints_for_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListConstraintsForPortfolio"
        operation.name = "ListConstraintsForPortfolio"
        operation.input = ListConstraintsForPortfolioInput
        operation.output = ListConstraintsForPortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListConstraintsForPortfolio.new
      end)
      service.add_operation(:list_launch_paths, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListLaunchPaths"
        operation.name = "ListLaunchPaths"
        operation.input = ListLaunchPathsInput
        operation.output = ListLaunchPathsOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLaunchPaths.new
      end)
      service.add_operation(:list_organization_portfolio_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListOrganizationPortfolioAccess"
        operation.name = "ListOrganizationPortfolioAccess"
        operation.input = ListOrganizationPortfolioAccessInput
        operation.output = ListOrganizationPortfolioAccessOutput
        operation.errors << InvalidParametersException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListOrganizationPortfolioAccess.new
      end)
      service.add_operation(:list_portfolio_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPortfolioAccess"
        operation.name = "ListPortfolioAccess"
        operation.input = ListPortfolioAccessInput
        operation.output = ListPortfolioAccessOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPortfolioAccess.new
      end)
      service.add_operation(:list_portfolios, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPortfolios"
        operation.name = "ListPortfolios"
        operation.input = ListPortfoliosInput
        operation.output = ListPortfoliosOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPortfolios.new
      end)
      service.add_operation(:list_portfolios_for_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPortfoliosForProduct"
        operation.name = "ListPortfoliosForProduct"
        operation.input = ListPortfoliosForProductInput
        operation.output = ListPortfoliosForProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPortfoliosForProduct.new
      end)
      service.add_operation(:list_principals_for_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListPrincipalsForPortfolio"
        operation.name = "ListPrincipalsForPortfolio"
        operation.input = ListPrincipalsForPortfolioInput
        operation.output = ListPrincipalsForPortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPrincipalsForPortfolio.new
      end)
      service.add_operation(:list_provisioned_product_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListProvisionedProductPlans"
        operation.name = "ListProvisionedProductPlans"
        operation.input = ListProvisionedProductPlansInput
        operation.output = ListProvisionedProductPlansOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_provisioning_artifacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListProvisioningArtifacts"
        operation.name = "ListProvisioningArtifacts"
        operation.input = ListProvisioningArtifactsInput
        operation.output = ListProvisioningArtifactsOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_provisioning_artifacts_for_service_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListProvisioningArtifactsForServiceAction"
        operation.name = "ListProvisioningArtifactsForServiceAction"
        operation.input = ListProvisioningArtifactsForServiceActionInput
        operation.output = ListProvisioningArtifactsForServiceActionOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProvisioningArtifactsForServiceAction.new
      end)
      service.add_operation(:list_record_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListRecordHistory"
        operation.name = "ListRecordHistory"
        operation.input = ListRecordHistoryInput
        operation.output = ListRecordHistoryOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
      end)
      service.add_operation(:list_resources_for_tag_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListResourcesForTagOption"
        operation.name = "ListResourcesForTagOption"
        operation.input = ListResourcesForTagOptionInput
        operation.output = ListResourcesForTagOptionOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListResourcesForTagOption.new
      end)
      service.add_operation(:list_service_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListServiceActions"
        operation.name = "ListServiceActions"
        operation.input = ListServiceActionsInput
        operation.output = ListServiceActionsOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceActions.new
      end)
      service.add_operation(:list_service_actions_for_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListServiceActionsForProvisioningArtifact"
        operation.name = "ListServiceActionsForProvisioningArtifact"
        operation.input = ListServiceActionsForProvisioningArtifactInput
        operation.output = ListServiceActionsForProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListServiceActionsForProvisioningArtifact.new
      end)
      service.add_operation(:list_stack_instances_for_provisioned_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListStackInstancesForProvisionedProduct"
        operation.name = "ListStackInstancesForProvisionedProduct"
        operation.input = ListStackInstancesForProvisionedProductInput
        operation.output = ListStackInstancesForProvisionedProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_tag_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ListTagOptions"
        operation.name = "ListTagOptions"
        operation.input = ListTagOptionsInput
        operation.output = ListTagOptionsOutput
        operation.errors << InvalidParametersException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagOptions.new
      end)
      service.add_operation(:notify_provision_product_engine_workflow_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#NotifyProvisionProductEngineWorkflowResult"
        operation.name = "NotifyProvisionProductEngineWorkflowResult"
        operation.input = NotifyProvisionProductEngineWorkflowResultInput
        operation.output = NotifyProvisionProductEngineWorkflowResultOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:notify_terminate_provisioned_product_engine_workflow_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#NotifyTerminateProvisionedProductEngineWorkflowResult"
        operation.name = "NotifyTerminateProvisionedProductEngineWorkflowResult"
        operation.input = NotifyTerminateProvisionedProductEngineWorkflowResultInput
        operation.output = NotifyTerminateProvisionedProductEngineWorkflowResultOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:notify_update_provisioned_product_engine_workflow_result, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#NotifyUpdateProvisionedProductEngineWorkflowResult"
        operation.name = "NotifyUpdateProvisionedProductEngineWorkflowResult"
        operation.input = NotifyUpdateProvisionedProductEngineWorkflowResultInput
        operation.output = NotifyUpdateProvisionedProductEngineWorkflowResultOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:provision_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ProvisionProduct"
        operation.name = "ProvisionProduct"
        operation.input = ProvisionProductInput
        operation.output = ProvisionProductOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:reject_portfolio_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#RejectPortfolioShare"
        operation.name = "RejectPortfolioShare"
        operation.input = RejectPortfolioShareInput
        operation.output = RejectPortfolioShareOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:scan_provisioned_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#ScanProvisionedProducts"
        operation.name = "ScanProvisionedProducts"
        operation.input = ScanProvisionedProductsInput
        operation.output = ScanProvisionedProductsOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
      end)
      service.add_operation(:search_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#SearchProducts"
        operation.name = "SearchProducts"
        operation.input = SearchProductsInput
        operation.output = SearchProductsOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
        operation[:paginator] = Paginators::SearchProducts.new
      end)
      service.add_operation(:search_products_as_admin, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#SearchProductsAsAdmin"
        operation.name = "SearchProductsAsAdmin"
        operation.input = SearchProductsAsAdminInput
        operation.output = SearchProductsAsAdminOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::SearchProductsAsAdmin.new
      end)
      service.add_operation(:search_provisioned_products, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#SearchProvisionedProducts"
        operation.name = "SearchProvisionedProducts"
        operation.input = SearchProvisionedProductsInput
        operation.output = SearchProvisionedProductsOutput
        operation.errors << InvalidParametersException
        operation.traits = {}
        operation[:paginator] = Paginators::SearchProvisionedProducts.new
      end)
      service.add_operation(:terminate_provisioned_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#TerminateProvisionedProduct"
        operation.name = "TerminateProvisionedProduct"
        operation.input = TerminateProvisionedProductInput
        operation.output = TerminateProvisionedProductOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_constraint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateConstraint"
        operation.name = "UpdateConstraint"
        operation.input = UpdateConstraintInput
        operation.output = UpdateConstraintOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_portfolio, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdatePortfolio"
        operation.name = "UpdatePortfolio"
        operation.input = UpdatePortfolioInput
        operation.output = UpdatePortfolioOutput
        operation.errors << InvalidParametersException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:update_portfolio_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdatePortfolioShare"
        operation.name = "UpdatePortfolioShare"
        operation.input = UpdatePortfolioShareInput
        operation.output = UpdatePortfolioShareOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << OperationNotSupportedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProduct"
        operation.name = "UpdateProduct"
        operation.input = UpdateProductInput
        operation.output = UpdateProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
      service.add_operation(:update_provisioned_product, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProvisionedProduct"
        operation.name = "UpdateProvisionedProduct"
        operation.input = UpdateProvisionedProductInput
        operation.output = UpdateProvisionedProductOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_provisioned_product_properties, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProvisionedProductProperties"
        operation.name = "UpdateProvisionedProductProperties"
        operation.input = UpdateProvisionedProductPropertiesInput
        operation.output = UpdateProvisionedProductPropertiesOutput
        operation.errors << InvalidParametersException
        operation.errors << InvalidStateException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_provisioning_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateProvisioningArtifact"
        operation.name = "UpdateProvisioningArtifact"
        operation.input = UpdateProvisioningArtifactInput
        operation.output = UpdateProvisioningArtifactOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_service_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateServiceAction"
        operation.name = "UpdateServiceAction"
        operation.input = UpdateServiceActionInput
        operation.output = UpdateServiceActionOutput
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_tag_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicecatalog#UpdateTagOption"
        operation.name = "UpdateTagOption"
        operation.input = UpdateTagOptionInput
        operation.output = UpdateTagOptionOutput
        operation.errors << DuplicateResourceException
        operation.errors << InvalidParametersException
        operation.errors << ResourceNotFoundException
        operation.errors << TagOptionNotMigratedException
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
